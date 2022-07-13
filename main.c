#include <stdio.h>
#include "MultiTimer.h"
#include "stateMachine.h"
#include "unix_tick.h"


#define SWITCH_CHANNEL_TIME     300
#define CONVERT_TIME            400
MultiTimer timer1;
MultiTimer timer3;

/* Types of events */
enum eventType {
    Event_Time,
};

struct stateMachine vol_sample_sm;


void exampleTimer1Callback(MultiTimer *timer, void *userData) {
    printf("[%012ld] Timer:%p callback-> %s.\r\n", PlatformTicksGetFunc(), timer, (char *) userData);
    MultiTimerStart(timer, 1000, exampleTimer1Callback, userData);

}

void exampleTimer3Callback(MultiTimer *timer, void *userData) {
    printf("[%012ld] fm.\n", PlatformTicksGetFunc());


    stateM_handleEvent(&vol_sample_sm,
                       &(struct event) {Event_Time, (void *) userData}
    );

    MultiTimerStart(timer, 1, exampleTimer3Callback, userData);
}





/* Forward declaration of states so that they can be defined in an logical
 * order: */
static struct state vol_sample, select_channel, start_convert, get_ad, print_value;

/* All the following states (apart from the error state) are children of this
 * group state. This way, any unrecognised character will be handled by this
 * state's transition, eliminating the need for adding the same transition to
 * all the children states. */


static void goto_select_channel(void *stateData, struct event *event) {
    printf("switch channel ok\n");
}

static struct state vol_sample = {
        .parentState = NULL,
        /* The entry state is defined in order to demontrate that the 'reset'
         * transtition, going to this group state, will be 'redirected' to the
         * 'idle' state (the transition could of course go directly to the 'idle'
         * state): */
        .entryState = &select_channel,
        .transitions = (struct transition[]) {
                {Event_Time, NULL, NULL, &goto_select_channel, &select_channel,},
        },
        .numTransitions = 1,
        .data = 0,

        .entryAction = NULL,
        .exitAction = NULL,
};


static uint64_t pre_sc_time;

static bool is_switch_ok(void *condition, struct event *event) {
    if (event->type != Event_Time) {
        return false;
    }
    return (event->data - (uint64_t) condition) > pre_sc_time;
}

static void select_channel_start(void *stateData, struct event *event) {
    printf("select channel\n");
    pre_sc_time = event->data;
}

static void select_channel_end(void *stateData, struct event *event) {
    printf("switch channel ok\n");
}

static struct state select_channel = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]) {
                {Event_Time, SWITCH_CHANNEL_TIME, &is_switch_ok, NULL,
                 &start_convert},
        },
        .numTransitions = 1,
        .data = NULL,
        .entryAction = &select_channel_start,
        .exitAction = &select_channel_end,
};


static uint64_t pre_cvt_time;

static bool is_cvt_sat(void *condition, struct event *event) {
    if (event->type != Event_Time) {
        return false;
    }
    return (event->data - (uint64_t) condition) > pre_cvt_time;

}

static void convert_start(void *stateData, struct event *event) {
    printf("start convert\n");
    pre_cvt_time = event->data;
}

static void convert_end(void *stateData, struct event *event) {
    printf("convert ok\n");
}

static struct state start_convert = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]) {
                {Event_Time, CONVERT_TIME, &is_cvt_sat, NULL,
                 &get_ad},
        },
        .numTransitions = 1,
        .data = NULL,
        .entryAction = &convert_start,
        .exitAction = &convert_start,
};


static void get_ad_start(void *stateData, struct event *event) {
    printf("start get ad\n");
}

static void get_ad_end(void *stateData, struct event *event) {
    printf("get ad ok\n");
}

static struct state get_ad = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]) {
                {Event_Time, NULL, NULL,
                 NULL, &print_value}
        },
        .numTransitions = 1,
        .data = 0,
        .entryAction = &get_ad_start,
        .exitAction = &get_ad_end,
};


static void print_value_start(void *stateData, struct event *event) {
    printf("print ad start\n");
}

static void print_value_end(void *stateData, struct event *event) {
    printf("print ad ok\n");
}

static struct state print_value = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]) {
                {Event_Time, NULL, NULL,
                 NULL, &select_channel}
        },
        .numTransitions = 1,
        .data = NULL,
        .entryAction = &print_value_start,
        .exitAction = &print_value_end,
};


static void printErrMsg(void *stateData, struct event *event) {
    printf("in the err state\n");
}

static struct state errorState = {
        .entryAction = &printErrMsg
};

int main() {

    stateM_init(&vol_sample_sm, &select_channel, &errorState);

    MultiTimerInstall(PlatformTicksGetFunc);

    MultiTimerStart(&timer1, 1000, exampleTimer1Callback, "hello world");
    MultiTimerStart(&timer3, 1, exampleTimer3Callback, PlatformTicksGetFunc());


    while (1) {
        MultiTimerYield();

    }

}

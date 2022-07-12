#include <stdio.h>
#include "MultiTimer.h"
#include "stateMachine.h"
#include "unix_tick.h"

MultiTimer timer1;
MultiTimer timer3;

void exampleTimer1Callback(MultiTimer* timer, void *userData)
{
    printf("[%012ld] Timer:%p callback-> %s.\r\n", PlatformTicksGetFunc(), timer, (char*)userData);
    MultiTimerStart(timer, 1000, exampleTimer1Callback, userData);

}
void exampleTimer3Callback(MultiTimer* timer, void *userData)
{
    printf("[%012ld] fm.\n", PlatformTicksGetFunc());
    MultiTimerStart(timer, 1, exampleTimer3Callback, userData);
}


/* Forward declaration of states so that they can be defined in an logical
 * order: */
static struct state vol_sample, select_channel, start_convert, get_ad, print_value;

/* All the following states (apart from the error state) are children of this
 * group state. This way, any unrecognised character will be handled by this
 * state's transition, eliminating the need for adding the same transition to
 * all the children states. */
static struct state vol_sample = {
        .parentState = NULL,
        /* The entry state is defined in order to demontrate that the 'reset'
         * transtition, going to this group state, will be 'redirected' to the
         * 'idle' state (the transition could of course go directly to the 'idle'
         * state): */
        .entryState = &select_channel,
        .transitions = (struct transition[]){
                { Event_keyboard, (void *)(intptr_t)'!', &compareKeyboardChar,
                                              &printReset, &select_channel, },
                { Event_keyboard, NULL, NULL, &printUnrecognisedChar, &select_channel, },
        },
        .numTransitions = 2,
        .data = 0,

        .entryAction = &printEnterMsg,
        .exitAction = &printExitMsg,
};

static bool sc_flag;
static uint64_t sc_pre_time;

static struct state select_channel = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]){
                { Event_keyboard, (void *)(intptr_t)'h', &compareKeyboardChar, NULL,
                  &start_convert },
                { Event_keyboard, (void *)(intptr_t)'h', &compareKeyboardChar, NULL,
                        &start_convert },
        },
        .numTransitions = 1,
        .data = 30,
        .entryAction = &printEnterMsg,
        .exitAction = &printExitMsg,
};

static struct state start_convert = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]){
                { Event_keyboard, (void *)(intptr_t)'a', &compareKeyboardChar, NULL,
                        &print_value },
                { Event_keyboard, (void *)(intptr_t)'i', &compareKeyboardChar, NULL,
                        &get_ad },
        },
        .numTransitions = 2,
        .data = 30,
        .entryAction = &printRecognisedChar,
        .exitAction = &printExitMsg,
};

static struct state get_ad = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]){
                { Event_keyboard, (void *)(intptr_t)'\n', &compareKeyboardChar,
                  &printHiMsg, &select_channel }
        },
        .numTransitions = 1,
        .data = 0,
        .entryAction = &printRecognisedChar,
        .exitAction = &printExitMsg,
};

static struct state print_value = {
        .parentState = &vol_sample,
        .entryState = NULL,
        .transitions = (struct transition[]){
                { Event_keyboard, (void *)(intptr_t)'\n', &compareKeyboardChar,
                  &printHaMsg, &select_channel }
        },
        .numTransitions = 1,
        .data = 0,
        .entryAction = &printRecognisedChar,
        .exitAction = &printExitMsg
};

static struct state errorState = {
        .entryAction = &printErrMsg
};













int main() {

    struct stateMachine vol_sample_sm;
    stateM_init(&vol_sample_sm, &select_channel, &errorState );




    MultiTimerInstall(PlatformTicksGetFunc);

    MultiTimerStart(&timer1, 1000, exampleTimer1Callback, "hello world");
    MultiTimerStart(&timer3, 1, exampleTimer3Callback, &timer3);




    while (1) {
        MultiTimerYield();

    }

}

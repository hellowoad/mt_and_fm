#include <stdio.h>
#include "MultiTimer.h"
#include "stateMachine.h"
#include "unix_tick.h"
#include <stdio.h>
#include <stdint.h>
/* Types of events */
enum eventType {
    Event_Time,
    Event_Modbus_data,
};
struct event_data{
    int len;
    uint8_t buff[128];
};
//uint8_t read_buff[128];
FILE *fp;
struct stateMachine sm_modbusCommunicate;
struct state parse_frame, err_state;
bool is_full_frame(void *condition, struct event *e){
    struct event_data *ed = e->data;
    if(ed->len > 0){
        ed->buff[ed->len] = '\0';
        printf("%s\n", ed->buff);
    }


   return false;
}
struct transition to_parse_modbusFrame = {
        .eventType = Event_Modbus_data,
        .action = NULL,
        .condition = NULL,
        .guard = is_full_frame,
        .nextState = &parse_frame,
};
struct state check_buff_state = {
        .parentState = NULL,
        .entryState = NULL,
        .entryAction = NULL,
        .exitAction = NULL,
        .transitions = &to_parse_modbusFrame,
        .numTransitions = sizeof check_buff_state.transitions,
};

void task1(MultiTimer *mt, void *data){
    printf("task1...............\n");
    struct event e;
    struct event_data ed;
    e.type = Event_Modbus_data;
    rewind(fp);
    ed.len = fread(ed.buff, sizeof(uint8_t), sizeof ed.buff, fp);
    if(ed.len > 0){
        printf("get string\n");
    }
    e.data = &ed;
    stateM_handleEvent(&sm_modbusCommunicate, &e);
    MultiTimerStart(mt, 1000, task1, NULL);
}



int main() {

    MultiTimerInstall(PlatformTicksGetFunc);
    MultiTimer t1;
    MultiTimerStart(&t1, 1000, task1, NULL);
    fp =  fopen("/Users/hewo/modbus_pip", "r");
    stateM_init(&sm_modbusCommunicate, &check_buff_state, &err_state);
    while (1) {
        MultiTimerYield();

    }




}


































//
// Created by HUAsu on 2022/8/4.
//
#include <stdio.h>
#include <stateMachine.h>
#include <time.h>

struct stateMachine sm;
struct state s, s1, s2;
enum event_type{DEFAULT_EVENT_TYPE, TimeEvent};
struct teststuct{
    int i;
    char j;
};
struct event e1= {TimeEvent, 0}, e2;



bool more_than_100(void *condition, struct event *event);
struct transition st2 = {DEFAULT_EVENT_TYPE, 3, NULL, NULL, &s1};
struct transition st1 = {DEFAULT_EVENT_TYPE, NULL,};
struct state s = {NULL, &s1, NULL, 1, NULL, NULL, NULL};
//struct state s1 = {&s,,};
int main(void){


//    stateM_init(&sm,)

    while(1){
        stateM_handleEvent(&sm, )
    }


}



//
// Created by HUAsu on 2022/8/4.
//
#include "test_mt.h"
#include "MultiTimer.h"
#include "unix_tick.h"
#include <stdio.h>
#include "delay.h"
void task1(MultiTimer *t, void *data){
    printf("in task11111111111\n");

    MultiTimerStart(t, 100, task1, NULL);
}
void task2(MultiTimer *t, void *data){

    printf("in task2222222222222\n");
    delay(500);
    MultiTimerStart(t, 1000, task2, NULL);
}
int main(void){

   MultiTimer t1;
   MultiTimer t2;
    MultiTimerInstall(PlatformTicksGetFunc);
    MultiTimerStart(&t1, 100, task1, NULL);
    MultiTimerStart(&t2, 1000, task2, NULL);
    printf("init over\n");
    while(1){
//        delay(1000);
//        printf("hello\n");
        MultiTimerYield();
    }





}
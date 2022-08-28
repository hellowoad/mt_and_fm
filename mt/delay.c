//
// Created by hellowoad on 2022/8/28.
//

#include "delay.h"

#include "unix_tick.h"

void delay(uint64_t wait){
    uint64_t  now = PlatformTicksGetFunc();

    while(PlatformTicksGetFunc() - now < wait){

    }


   return;

}


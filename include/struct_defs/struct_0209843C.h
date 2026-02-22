#ifndef POKEPLATINUM_STRUCT_0209843C_H
#define POKEPLATINUM_STRUCT_0209843C_H

#include "struct_defs/struct_0203E2FC.h"

#include "applications/naming_screen.h"

typedef struct {
    int state;
    BOOL nicknameMon;
    NamingScreenArgs *nameScreenArgs;
    EggHatchArgs args;
} EggHatchApp;

#endif // POKEPLATINUM_STRUCT_0209843C_H

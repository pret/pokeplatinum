#ifndef POKEPLATINUM_STRUCT_OV80_021D2E94_H
#define POKEPLATINUM_STRUCT_OV80_021D2E94_H

#include "overlay080/struct_ov80_021D2A08.h"

typedef int (*TownMapAppFunc)(TownMapAppData *);

typedef struct {
    TownMapAppFunc initResources;
    TownMapAppFunc displayGraphics;
    TownMapAppFunc fadeScreensAppEnter;
    TownMapAppFunc fadeScreensAppExit;
    TownMapAppFunc handleInput;
    TownMapAppFunc updateGraphics;
    TownMapAppFunc updateSprites;
    TownMapAppFunc cleanup;
    TownMapAppFunc vBlankCB;
} TownMapAppFunctionSet;

#endif // POKEPLATINUM_STRUCT_OV80_021D2E94_H

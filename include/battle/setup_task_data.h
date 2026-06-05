#ifndef POKEPLATINUM_BATTLE_UI_SETUP_TASK_DATA_H
#define POKEPLATINUM_BATTLE_UI_SETUP_TASK_DATA_H

#include "struct_decls/battle_system.h"

#include "battle_anim/struct_ov12_02237F98_decl.h"
#include "battle_anim/struct_ov12_02238004_decl.h"

typedef struct UISetupTaskData {
    BattleSystem *battleSys;
    UnkStruct_ov12_02237F98 *animContext;
    UnkStruct_ov12_02238004 *animObjects[3];
    u8 step;
    u8 frameCount;
    u8 fadeStep;
    u8 unused;
} UISetupTaskData;

#endif // POKEPLATINUM_BATTLE_UI_SETUP_TASK_DATA_H

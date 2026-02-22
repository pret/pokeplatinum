#ifndef POKEPLATINUM_STRUCT_BATTLER_DATA_H
#define POKEPLATINUM_STRUCT_BATTLER_DATA_H

#include "battle/healthbar.h"
#include "battle/struct_ov16_0226C378.h"
#include "battle_anim/struct_ball_rotation_decl.h"
#include "battle_anim/struct_ov12_02223764.h"

#include "bg_window.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sys_task_manager.h"

typedef struct BattlerDataSysTaskFuncs {
    SysTaskFunc setCommandSelection;
    SysTaskFunc showMoveSelectMenu;
    SysTaskFunc showTargetSelectMenu;
    SysTaskFunc showBagMenu;
    SysTaskFunc showPartyMenu;
    SysTaskFunc showYesNoMenu;
} BattlerDataSysTaskFuncs;

#define DATA_BUF_SIZE 256

typedef struct BattlerData {
    BattlerDataSysTaskFuncs taskFuncs;
    ManagedSprite *managedSprite;
    PokemonSprite *monSpriteBackup;
    PokemonSprite *monSprite;
    Window *unused_24;
    Healthbar healthbar;
    UnkStruct_ov16_0226C378 unk_7B;
    BallRotation *ballRotation;
    UnkStruct_ov12_02223764 *unk_88;
    void *unused_8C;
    u8 data[DATA_BUF_SIZE];
    u8 battler;
    u8 battlerType;
    u8 bootState;
    u8 unk_193;
    SysTask *sysTask;
    u16 degrees;
    int unk_19C;
    NARC *narc;
    u8 unk_1A4;
    u8 unused_1A5[3];
} BattlerData;

#endif // POKEPLATINUM_STRUCT_BATTLER_DATA_H

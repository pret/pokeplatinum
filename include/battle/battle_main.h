#ifndef POKEPLATINUM_BATTLE_BATTLE_MAIN_H
#define POKEPLATINUM_BATTLE_BATTLE_MAIN_H

#include "struct_decls/battle_system.h"

#include "field_battle_data_transfer.h"
#include "overlay_manager.h"
#include "party.h"
#include "string_gf.h"

typedef struct TrainerIntroData {
    FieldBattleDTO *dto;
    Party *party[MAX_BATTLERS];
    String *trainerNames[MAX_BATTLERS];
    enum HeapID heapID;
    u8 mode;
    u8 playerSide;
    u8 battleResult;
    u8 isDone;
    u8 recordingType;
} TrainerIntroData;

BOOL Battle_Main(ApplicationManager *appMan, int *state);
void BattleSystem_EnterSubMenu(BattleSystem *battleSys);
void BattleSystem_FreeGraphics(BattleSystem *battleSys);
void BattleSystem_ExitSubMenu(BattleSystem *battleSys);
void BattleSystem_HideBattleScreen(BattleSystem *battleSys);
void BattleSystem_SetupBattleScreen(BattleSystem *battleSys);
void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags);

#endif // POKEPLATINUM_BATTLE_BATTLE_MAIN_H

#ifndef POKEPLATINUM_FIELD_OVERWORLD_STATE_H
#define POKEPLATINUM_FIELD_OVERWORLD_STATE_H

#include "struct_defs/player_data.h"

#include "field/field_system_decl.h"

#include "location.h"
#include "map_object.h"
#include "overworld_map_history.h"
#include "savedata.h"

typedef struct FieldOverworldState {
    Location player;
    Location entrance;
    Location previous;
    Location special;
    Location exit;
    u16 bgm;
    u16 weather;
    u16 blackOutWarpId;
    u8 cameraType;
    OverworldMapHistory mapHistory;
    PlayerData playerData;
    u16 poisonSteps;
    u16 safariSteps;
    u16 safariBalls;
    u8 padding_9A[6];
} FieldOverworldState;

typedef struct FieldOverworldSave {
    MapObjectSave unk_00[64];
} FieldOverworldSave;

int FieldOverworldState_Size(void);
int FieldOverworldSave_Size(void);
void FieldOverworldSave_Init(FieldOverworldSave *fieldSave);
void FieldOverworldState_Init(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetPlayerLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetEntranceLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetPrevLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetExitLocation(FieldOverworldState *fieldState);
Location *FieldOverworldState_GetSpecialLocation(FieldOverworldState *fieldState);
void FieldOverworldState_SetSpecialLocation(FieldOverworldState *fieldState, Location *location);
u16 *FieldOverworldState_GetSpecialBGM(FieldOverworldState *fieldState);
u16 FieldOverworldState_GetWeather(const FieldOverworldState *fieldState);
void FieldOverworldState_SetWeather(FieldOverworldState *fieldState, u16 weather);
u16 FieldOverworldState_GetBlackOutWarpId(const FieldOverworldState *fieldState);
void FieldOverworldState_SetBlackOutWarpId(FieldOverworldState *fieldState, u16 warpId);
OverworldMapHistory *FieldOverworldState_GetMapHistory(FieldOverworldState *fieldState);
int FieldOverworldState_GetCameraType(const FieldOverworldState *fieldState);
void FieldOverworldState_SetCameraType(FieldOverworldState *fieldState, int type);
PlayerData *FieldOverworldState_GetPlayerData(FieldOverworldState *fieldState);
u16 *FieldOverworldState_GetSafariBallCount(FieldOverworldState *fieldState);
u16 *FieldOverworldState_GetSafariStepCount(FieldOverworldState *fieldState);
u16 *FieldOverworldState_GetPoisonStepCount(FieldOverworldState *fieldState);
FieldOverworldState *SaveData_GetFieldOverworldState(SaveData *saveData);
FieldOverworldSave *SaveData_GetFieldOverworldSave(SaveData *saveData);
void FieldSystem_SaveObjects(FieldSystem *fieldSystem);
void FieldSystem_LoadObjects(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_FIELD_OVERWORLD_STATE_H

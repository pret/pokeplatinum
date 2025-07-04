#include "field_overworld_state.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"

#include "location.h"
#include "map_object.h"
#include "overworld_map_history.h"
#include "player_avatar.h"
#include "savedata.h"
#include "unk_0203A7D8.h"

typedef struct FieldOverworldState {
    Location player;
    Location entrance;
    Location previous;
    Location special;
    Location exit;
    u16 bgm;
    u16 weather;
    u16 warpId;
    u8 cameraType;
    OverworldMapHistory mapHistory;
    PlayerData playerData;
    u16 poisonSteps;
    u16 safariSteps;
    u16 safariBalls;
    u8 padding_9A[6];
} FieldOverworldState;

typedef struct UnkStruct_0203A79C_t {
    MapObjectSave unk_00[64];
} FieldOverworldSave;

int FieldOverworldState_Size(void)
{
    return sizeof(FieldOverworldState);
}

int FieldOverworldSave_Size(void)
{
    return sizeof(FieldOverworldSave);
}

void FieldOverworldSave_Init(FieldOverworldSave *fieldSave)
{
    MI_CpuClear32(fieldSave, sizeof(FieldOverworldSave));
}

void FieldOverworldState_Init(FieldOverworldState *fieldState)
{
    memset(fieldState, 0, sizeof(FieldOverworldState));

    OverworldMapHistory_Clear(&fieldState->mapHistory);
    PlayerData_Init(&fieldState->playerData);

    fieldState->warpId = sub_0203A7EC();
}

Location *FieldOverworldState_GetPlayerLocation(FieldOverworldState *fieldState)
{
    return &fieldState->player;
}

Location *FieldOverworldState_GetEntranceLocation(FieldOverworldState *fieldState)
{
    return &fieldState->entrance;
}

Location *FieldOverworldState_GetPrevLocation(FieldOverworldState *fieldState)
{
    return &fieldState->previous;
}

Location *FieldOverworldState_GetExitLocation(FieldOverworldState *fieldState)
{
    return &fieldState->exit;
}

Location *FieldOverworldState_GetSpecialLocation(FieldOverworldState *fieldState)
{
    return &fieldState->special;
}

void FieldOverworldState_SetSpecialLocation(FieldOverworldState *fieldState, Location *location)
{
    fieldState->special = *location;
    return;
}

u16 *FieldOverworldState_GetSpecialBGM(FieldOverworldState *fieldState)
{
    return &fieldState->bgm;
}

u16 FieldOverworldState_GetWeather(const FieldOverworldState *fieldState)
{
    return fieldState->weather;
}

void FieldOverworldState_SetWeather(FieldOverworldState *fieldState, u16 weather)
{
    fieldState->weather = weather;
}

u16 FieldOverworldState_GetWarpId(const FieldOverworldState *fieldState)
{
    return fieldState->warpId;
}

void FieldOverworldState_SetWarpId(FieldOverworldState *fieldState, u16 warpId)
{
    fieldState->warpId = warpId;
}

OverworldMapHistory *FieldOverworldState_GetMapHistory(FieldOverworldState *fieldState)
{
    return &fieldState->mapHistory;
}

int FieldOverworldState_GetCameraType(const FieldOverworldState *fieldState)
{
    return fieldState->cameraType;
}

void FieldOverworldState_SetCameraType(FieldOverworldState *fieldState, int type)
{
    fieldState->cameraType = type;
}

PlayerData *FieldOverworldState_GetPlayerData(FieldOverworldState *fieldState)
{
    return &fieldState->playerData;
}

u16 *FieldOverworldState_GetSafariBallCount(FieldOverworldState *fieldState)
{
    return &fieldState->safariBalls;
}

u16 *FieldOverworldState_GetSafariStepCount(FieldOverworldState *fieldState)
{
    return &fieldState->safariSteps;
}

u16 *FieldOverworldState_GetPoisonStepCount(FieldOverworldState *fieldState)
{
    return &fieldState->poisonSteps;
}

FieldOverworldState *SaveData_GetFieldOverworldState(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FIELD_PLAYER_STATE);
}

FieldOverworldSave *SaveData_GetFieldOverworldSave(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FIELD_OVERWORLD_STATE);
}

void FieldSystem_SaveObjects(FieldSystem *fieldSystem)
{
    MapObjectSave *mapObjSave = ((FieldOverworldSave *)SaveData_GetFieldOverworldSave(fieldSystem->saveData))->unk_00;
    MapObjectMan_SaveAll(fieldSystem, fieldSystem->mapObjMan, mapObjSave, 64);
}

void FieldSystem_LoadObjects(FieldSystem *fieldSystem)
{
    MapObjectSave *mapObjSave = ((FieldOverworldSave *)SaveData_GetFieldOverworldSave(fieldSystem->saveData))->unk_00;
    MapObjectMan_LoadAllObjects(fieldSystem->mapObjMan, mapObjSave, 64);
}

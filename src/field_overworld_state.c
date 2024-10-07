#include "field_overworld_state.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/struct_02061D3C.h"

#include "field/field_system.h"

#include "map_object.h"
#include "player_avatar.h"
#include "savedata.h"
#include "unk_0203A7D8.h"
#include "unk_020556C4.h"

typedef struct UnkStruct_0203A790_t {
    Location unk_00;
    Location entrance;
    Location previous;
    Location special;
    Location unk_50;
    u16 unk_64;
    u16 weather;
    u16 warpId;
    u8 cameraType;
    UnkStruct_020556C4 unk_6C;
    PlayerData playerData;
    u16 unk_94;
    u16 unk_96;
    u16 unk_98;
    u16 unk_9A;
    u16 unk_9C;
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

void FieldOverworldSave_Init(FieldOverworldSave *fieldState)
{
    MI_CpuClear32(fieldState, sizeof(FieldOverworldSave));
}

void FieldOverworldState_Init(FieldOverworldState *fieldState)
{
    memset(fieldState, 0, sizeof(FieldOverworldState));

    sub_020556C4(&fieldState->unk_6C);
    PlayerData_Init(&fieldState->playerData);

    fieldState->warpId = sub_0203A7EC();
}

Location *sub_0203A720(FieldOverworldState *fieldState)
{
    return &fieldState->unk_00;
}

Location *FieldOverworldState_GetEntranceLocation(FieldOverworldState *fieldState)
{
    return &fieldState->entrance;
}

Location *FieldOverworldState_GetPrevLocation(FieldOverworldState *fieldState)
{
    return &fieldState->previous;
}

Location *sub_0203A72C(FieldOverworldState *fieldState)
{
    return &fieldState->unk_50;
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

u16 *sub_0203A748(FieldOverworldState *fieldState)
{
    return &fieldState->unk_64;
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

UnkStruct_020556C4 *sub_0203A76C(FieldOverworldState *fieldState)
{
    return &fieldState->unk_6C;
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

u16 *sub_0203A784(FieldOverworldState *fieldState)
{
    return &fieldState->unk_98;
}

u16 *sub_0203A788(FieldOverworldState *fieldState)
{
    return &fieldState->unk_96;
}

u16 *sub_0203A78C(FieldOverworldState *fieldState)
{
    return &fieldState->unk_94;
}

FieldOverworldState *SaveData_GetFieldOverworldState(SaveData *saveData)
{
    FieldOverworldState *fieldState = SaveData_SaveTable(saveData, 6);
    return fieldState;
}

FieldOverworldSave *SaveData_GetFieldOverworldSave(SaveData *saveData)
{
    FieldOverworldSave *fieldSave = SaveData_SaveTable(saveData, 11);
    return fieldSave;
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

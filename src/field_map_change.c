#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "core_sys.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "overlay005/struct_ov5_021D432C_decl.h"

#include "struct_defs/struct_0203A55C.h"
#include "field/field_system.h"
#include "struct_defs/struct_02049FA8.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/struct_020EC3A8.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_0200A9DC.h"
#include "message.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "strbuf.h"
#include "savedata.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "savedata_misc.h"
#include "unk_02027F50.h"
#include "unk_0202854C.h"
#include "journal.h"
#include "communication_system.h"
#include "unk_02039C80.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "field_overworld_state.h"
#include "unk_0203A7D8.h"
#include "unk_0203A944.h"
#include "field_system.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "vars_flags.h"
#include "unk_020508D4.h"
#include "field_map_change.h"
#include "unk_02054BD0.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205CA94.h"
#include "unk_0205D8CC.h"
#include "player_avatar.h"
#include "map_object.h"
#include "pokeradar.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_02070428.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021E135C.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02247100.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224B05C.h"

#include "consts/map.h"
#include "constants/overworld_weather.h"

FS_EXTERN_OVERLAY(overlay23);

typedef struct {
    int unk_00;
    Location unk_04;
    UnkStruct_ov5_021D432C * unk_18;
} UnkStruct_02053900;

typedef struct {
    int unk_00;
    Location unk_04;
} UnkStruct_02053A80;

typedef struct {
    int unk_00;
    SysTask * unk_04;
    Location unk_08;
    UnkStruct_ov5_021D432C * unk_1C;
} UnkStruct_02053AB4;

typedef struct {
    BOOL unk_00;
    Location unk_04;
} UnkStruct_02053718;

typedef struct {
    int unk_00;
    int unk_04;
    SysTask * unk_08;
    Location unk_0C;
} UnkStruct_02053CD4;

typedef struct {
    int unk_00;
    BOOL unk_04;
    Location unk_08;
} UnkStruct_02053E98;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    BOOL unk_18;
    u16 unk_1C;
    void * unk_20;
    Window unk_24;
    Strbuf* unk_34;
    u8 unk_38;
    UIControlData * unk_3C;
} UnkStruct_02053FAC;

typedef struct {
    int unk_00;
    BOOL unk_04;
    Location unk_08;
} UnkStruct_02054538;

static BOOL FieldTask_ChangeMap(TaskManager * taskMan);
static BOOL FieldTask_LoadNewGameSpawn(TaskManager * taskMan);
static void FieldMapChange_SetNewLocation(FieldSystem * fieldSystem, const Location * param1);
static void sub_020533CC(FieldSystem * fieldSystem);
static void sub_02053468(FieldSystem * fieldSystem);
static void FieldMapChange_CreatePlayerObject(FieldSystem * fieldSystem);
static void sub_02053374(FieldSystem * fieldSystem);
static void sub_020534BC(FieldSystem * fieldSystem);
static BOOL sub_02053B44(TaskManager * taskMan);
static void sub_02053BD4(TaskManager * taskMan);
static BOOL sub_02053BE4(TaskManager * taskMan);
static void sub_02053C10(TaskManager * taskMan);
static BOOL sub_02053C28(TaskManager * taskMan);
static void sub_02053C70(TaskManager * taskMan);
static BOOL sub_02053CB4(TaskManager * taskMan);
static BOOL sub_02053D0C(TaskManager * taskMan);
static void sub_02053DB4(TaskManager * taskMan);
static BOOL sub_02053DC4(TaskManager * taskMan);
static void sub_02053DF0(TaskManager * taskMan);
static BOOL sub_02053E08(TaskManager * taskMan);
static void sub_02053E5C(TaskManager * taskMan);
static BOOL sub_0205444C(TaskManager * taskMan, int param1);

static const UnkStruct_020EC3A8 Unk_020EC3A8[] = {
    {0x1, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0xC4000},
    {0x2, 0x1, 0x1, 0x1, 0x1, 0x0, 0x10, 0xC4000},
    {0x3, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0xC4000},
    {0x4, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0xC4000},
    {0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0xA0000}
};

static const UnkStruct_ov61_0222C884 Unk_020EC3A0 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void sub_020530C8 (FieldSystem * fieldSystem)
{
    BOOL inBattleTower;

    switch (fieldSystem->location->mapId) {
    case MAP_HEADER_BATTLE_TOWER:
    case MAP_HEADER_BATTLE_TOWER_ELEVATOR:
    case MAP_HEADER_BATTLE_TOWER_CORRIDOR:
    case MAP_HEADER_BATTLE_TOWER_CORRIDOR_MULTI:
    case MAP_HEADER_BATTLE_TOWER_BATTLE_ROOM:
    case MAP_HEADER_BATTLE_TOWER_MULTI_BATTLE_ROOM:
    case MAP_HEADER_BATTLE_TOWER_BATTLE_SALON:
        inBattleTower = TRUE;
        break;
    default:
        inBattleTower = FALSE;
    }

    if (!inBattleTower && fieldSystem->unk_70 == 4) {
        fieldSystem->unk_70 = 0;
    }

    if (inBattleTower) {
        fieldSystem->unk_70 = 4;
    }
}

static void FieldMapChange_SetNewLocation (FieldSystem * fieldSystem, const Location * nextLocation)
{
    FieldOverworldState * fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location * location = FieldOverworldState_GetPrevLocation(fieldState);

    if (nextLocation != NULL) {
        *location = *fieldSystem->location;
        *(fieldSystem->location) = *nextLocation;
    }

    FieldSystem_LoadMapData(fieldSystem, fieldSystem->location->mapId);

    if (fieldSystem->location->unk_04 != -1) {
        const WarpEvent * v2 = sub_0203A450(fieldSystem, fieldSystem->location->unk_04);

        fieldSystem->location->x = v2->x;
        fieldSystem->location->z = v2->z;

        if (v2->destWarpID == 0x100) {
            Location * v3, * entrance;

            v3 = sub_0203A730(fieldState);
            entrance = FieldOverworldState_GetEntranceLocation(fieldState);
            *v3 = *entrance;
        }
    }
}

void sub_020531A0 (FieldSystem * fieldSystem)
{
    GF_ASSERT(fieldSystem->unk_70 < 5);
    gCoreSys.unk_65 = fieldSystem->unk_74->unk_00_12;
}

void FieldMapChange_UpdateGameData (FieldSystem * fieldSystem, BOOL noWarp)
{
    int mapId = fieldSystem->location->mapId;
    FieldOverworldState * fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    Sound_ClearSpecialBGM(fieldSystem);
    FieldSystem_ClearLocalFlags(fieldSystem);

    if (!noWarp) {
        FieldSystem_InitFlagsWarp(fieldSystem);
    } else {
        FieldSystem_InitFlagsOnMapChange(fieldSystem);
    }

    VsSeeker_Reset(SaveData_GetVarsFlags(fieldSystem->saveData));

    if (!noWarp) {
        sub_020559DC(fieldSystem);
    }

    if (!noWarp) {
        sub_02027F50(sub_02027860(fieldSystem->saveData));
    }
    
    VarsFlags * varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 weather = FieldSystem_GetWeather(fieldSystem, mapId);

    if ((weather == OVERWORLD_WEATHER_FOG && Overworld_IsDefogActive(varsFlags) == TRUE) || (weather == OVERWORLD_WEATHER_DARK_FLASH && Overworld_IsFlashActive(varsFlags) == TRUE)) {
        weather = OVERWORLD_WEATHER_CLEAR;
    }

    FieldOverworldState_SetWeather(fieldState, weather);

    if (noWarp) {
        int cam1 = FieldOverworldState_GetCameraType(fieldState);
        int cam2 = MapHeader_GetCameraType(mapId);

        GF_ASSERT(cam1 == cam2);
    } else {
        FieldOverworldState_SetCameraType(fieldState, MapHeader_GetCameraType(mapId));
    }

    if (!noWarp) {
        u16 warpId = sub_0203A858(mapId);

        if (warpId != 0) {
            FieldOverworldState_SetWarpId(fieldState, warpId);
        }
    }

    sub_0203F5C0(fieldSystem, 2);

    fieldSystem->unk_78.unk_00 = 0;
    fieldSystem->unk_78.unk_02 = 0;
}

void FieldMapChange_UpdateGameDataDistortionWorld (FieldSystem * fieldSystem, BOOL param1)
{
    int mapId = fieldSystem->location->mapId;
    FieldOverworldState * fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    Sound_ClearSpecialBGM(fieldSystem);
    FieldSystem_ClearLocalFlags(fieldSystem);

    if (!param1) {
        FieldSystem_InitFlagsWarp(fieldSystem);
    } else {
        FieldSystem_InitFlagsOnMapChange(fieldSystem);
    }

    VsSeeker_Reset(SaveData_GetVarsFlags(fieldSystem->saveData));

    if (!param1) {
        sub_020559DC(fieldSystem);
    }

    if (!param1) {
        sub_02027F50(sub_02027860(fieldSystem->saveData));
    }

    if (!param1) {
        u16 v2 = sub_0203A858(mapId);

        if (v2 != 0) {
            FieldOverworldState_SetWarpId(fieldState, v2);
        }
    }

    fieldSystem->unk_78.unk_00 = 0;
    fieldSystem->unk_78.unk_02 = 0;
}

static void FieldMapChange_CreateObjects (FieldSystem * fieldSystem)
{
    int gender;
    FieldOverworldState * fieldState;
    PlayerData * playerData;

    fieldSystem->mapObjMan = MapObjectMan_New(fieldSystem, 64, 5);

    gender = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));
    fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    playerData = FieldOverworldState_GetPlayerData(fieldState);

    fieldSystem->playerAvatar = PlayerAvatar_Init(fieldSystem->mapObjMan, fieldSystem->location->x, fieldSystem->location->z, fieldSystem->location->unk_10, playerData->unk_04, gender, 0, playerData);

    sub_0203A418(fieldSystem);
    MapObjectMan_StopAllMovement(fieldSystem->mapObjMan);
}

static void FieldMapChange_DeleteObjects (FieldSystem * fieldSystem)
{
    Player_Delete(fieldSystem->playerAvatar);
    MapObjectMan_DeleteAll(fieldSystem->mapObjMan);
    MapObjectMan_Delete(fieldSystem->mapObjMan);
}

static void FieldMapChange_LoadObjects (FieldSystem * fieldSystem)
{
    fieldSystem->mapObjMan = MapObjectMan_New(fieldSystem, 64, 5);
    FieldSystem_LoadObjects(fieldSystem);

    FieldOverworldState * fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    PlayerData * playerData = FieldOverworldState_GetPlayerData(fieldState);
    int v2 = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));

    fieldSystem->playerAvatar = sub_0205E820(fieldSystem->mapObjMan, playerData, v2);

    MapObjectMan_StopAllMovement(fieldSystem->mapObjMan);
}

static void sub_020533CC (FieldSystem * fieldSystem)
{
    sub_020530C8(fieldSystem);
    GF_ASSERT(fieldSystem->unk_5C == NULL);
    sub_02039DC0(fieldSystem->location->mapId, fieldSystem->unk_2C);

    if (sub_0206B1F0(SaveData_GetVarsFlags(fieldSystem->saveData), 3)) {
        sub_02039FE0(fieldSystem->unk_2C); //reveal Seabreak Path if Oak's Letter has been used
    }

    if (!sub_0206B1F0(SaveData_GetVarsFlags(fieldSystem->saveData), 2)) {
        sub_02039F8C(fieldSystem->unk_2C);
    }

    GF_ASSERT(fieldSystem->unk_70 < 5);

    fieldSystem->unk_74 = &Unk_020EC3A8[fieldSystem->unk_70];
    fieldSystem->unk_60 = fieldSystem->unk_74->unk_00_4;
    fieldSystem->unk_18 = fieldSystem->unk_74->unk_00_0;

    sub_02054F44(&fieldSystem->unk_5C, fieldSystem->unk_74->unk_00_8);

    if (fieldSystem->unk_74->unk_00_16) {
        sub_02054BD0(fieldSystem, fieldSystem->unk_74->unk_00_24);
    }
}

static void sub_02053468 (FieldSystem * fieldSystem)
{
    GF_ASSERT(fieldSystem->unk_5C != NULL);

    fieldSystem->unk_5C = NULL;
    fieldSystem->unk_18 = 5;

    if (fieldSystem->unk_74->unk_00_16) {
        sub_02054BF8(fieldSystem);
    }

    fieldSystem->unk_74 = NULL;
}

void sub_02053494 (FieldSystem * fieldSystem)
{
    if (fieldSystem->unk_9C != NULL) {
        void * v0;

        v0 = sub_0202BC58(fieldSystem->location->mapId, 11);
        sub_0202B758(fieldSystem->unk_9C, v0, 0);
    }
}

static void sub_020534BC (FieldSystem * fieldSystem)
{
    if (fieldSystem->unk_9C != NULL) {
        FieldOverworldState * v0 = SaveData_GetFieldOverworldState(fieldSystem->saveData);
        Location * location = sub_0203A730(v0);
        void * v2 = sub_0202BC58(location->mapId, 11);
        sub_0202B758(fieldSystem->unk_9C, v2, 0);
    }
}

static void Location_SetToPlayerLocation (Location * location, const FieldSystem * fieldSystem)
{
    Location_Set(location, fieldSystem->location->mapId, -1, Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), 1);
}

static BOOL FieldSystem_IsSaveInUnionRoom (const FieldSystem * fieldSystem)
{
    return MapHeader_IsPokemonCenter2F(fieldSystem->location->mapId)
           && fieldSystem->location->x == 7
           && fieldSystem->location->z == 6;
}

static void FieldSystem_SetLocationToUnionRoomExit (FieldSystem * fieldSystem)
{
    Location * v0 = sub_0203A730(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    VarsFlags * varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    Location_Set(v0, fieldSystem->location->mapId, -1, 8, 2, 1);
}

static BOOL FieldTask_LoadNewGameSpawn (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    int * state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        FieldMapChange_SetNewLocation(fieldSystem, fieldSystem->location);
        sub_020533CC(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        FieldMapChange_CreateObjects(fieldSystem);
        (*state)++;
        break;
    case 1:
        FieldTask_StartFadeIn(taskMan);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

void FieldSystem_SetLoadNewGameSpawnTask (FieldSystem * fieldSystem)
{
    fieldSystem->unk_70 = 0;
    FieldSystem_InitNewGameState(fieldSystem);
    FieldTask_Set(fieldSystem, FieldTask_LoadNewGameSpawn, NULL);
}

static BOOL FieldTask_LoadSavedGameMap (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    VarsFlags * varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    int * state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        sub_0202878C(fieldSystem->saveData);

        if (Journal_CheckOpenOnContinue(SaveData_GetJournal(fieldSystem->saveData), inline_020535E8(varsFlags))) {
            sub_0203D30C(fieldSystem, NULL);
            (*state) = 4;
            break;
        }
    case 1:
        fieldSystem->unk_9C = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), inline_020535E8(varsFlags));

        if (CommClub_IsAvailable(varsFlags)) {
            FieldOverworldState * fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

            if (FieldSystem_IsSaveInUnionRoom(fieldSystem)) {
                FieldSystem_SetLocationToUnionRoomExit(fieldSystem);
            }

            CommClub_ResetAvailable(varsFlags);
            FieldMapChange_SetNewLocation(fieldSystem, sub_0203A730(fieldState));
            sub_020533CC(fieldSystem);
            FieldMapChange_UpdateGameData(fieldSystem, 0);
            FieldMapChange_CreateObjects(fieldSystem);
        } else {
            FieldMapChange_SetNewLocation(fieldSystem, NULL);
            sub_020533CC(fieldSystem);
            sub_020559DC(fieldSystem);
            FieldMapChange_LoadObjects(fieldSystem);
        }

        sub_02053494(fieldSystem);
        sub_020705CC(fieldSystem);
        (*state) = 2;
        break;
    case 2:
        FieldTask_StartFadeIn(taskMan);
        (*state) = 3;
        break;
    case 3:
        return TRUE;
    case 4:
        if (!(sub_020509B4(fieldSystem))) {
            (*state) = 1;
        }
        break;
    }

    return FALSE;
}

void FieldSystem_SetLoadSavedGameMapTask (FieldSystem * fieldSystem)
{
    fieldSystem->unk_70 = 0;
    FieldTask_Set(fieldSystem, FieldTask_LoadSavedGameMap, NULL);
}

static BOOL FieldTask_LoadMapFromError (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053718 * v1 = TaskManager_Environment(taskMan);
    VarsFlags * v2 = SaveData_GetVarsFlags(fieldSystem->saveData);
    int * state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0202878C(fieldSystem->saveData);
        fieldSystem->unk_9C = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), inline_020535E8(v2));
        (*state)++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &v1->unk_04);
        sub_020533CC(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        FieldMapChange_CreateObjects(fieldSystem);
        sub_020534BC(fieldSystem);
        (*state)++;
        break;
    case 2:
        fieldSystem->unk_7C = sub_0205B33C(fieldSystem);
        fieldSystem->unk_80 = sub_0205C22C(fieldSystem->unk_7C);
        sub_02055868(taskMan);
        (*state)++;
        break;
    case 3:
        v1->unk_00 = 0;
        ov5_021E15A8(fieldSystem, 0, &v1->unk_00);
        (*state)++;
        break;
    case 4:
        if (v1->unk_00) {
            (*state)++;
        }
        break;
    case 5:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void FieldSystem_StartLoadMapFromErrorTask (FieldSystem * fieldSystem)
{
    UnkStruct_02053718 * v1;

    if (!MapHeader_IsUnionRoom(fieldSystem->location->mapId)) {
        if (FieldSystem_IsSaveInUnionRoom(fieldSystem)) {
            VarsFlags * varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

            FieldSystem_SetLocationToUnionRoomExit(fieldSystem);
            sub_0206AD9C(varsFlags);
        } else {
            FieldSystem_SetLoadSavedGameMapTask(fieldSystem);
            return;
        }
    }

    v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053718));
    v1->unk_00 = 0;

    Location_Set(&v1->unk_04, 466, -1, 8, 14, 0);
    fieldSystem->unk_70 = 2;
    FieldTask_Set(fieldSystem, FieldTask_LoadMapFromError, v1);
}

static BOOL FieldTask_ChangeMap (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053900 * v1 = TaskManager_Environment(taskMan);
    Location * location = &v1->unk_04;

    switch (v1->unk_00) {
    case 0:
        Sound_PlayEffect(1539);
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        sub_02055974(taskMan);
        (v1->unk_00)++;
        break;
    case 1:
        sub_020539A0(taskMan, &v1->unk_04);
        (v1->unk_00)++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        FieldTask_StartFadeIn(taskMan);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return TRUE;
    }

    return FALSE;
}

void FieldSystem_StartChangeMapTask (TaskManager * taskMan, const Location * nextLocation)
{
    UnkStruct_02053900 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053900));

    v0->unk_00 = 0;
    v0->unk_04 = *nextLocation;

    FieldTask_Start(taskMan, FieldTask_ChangeMap, v0);
}

static BOOL FieldTask_ChangeMapSub (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053A80 * v2 = TaskManager_Environment(taskMan);

    switch (v2->unk_00) {
    case 0:
        FieldMapChange_DeleteObjects(fieldSystem);
        sub_02053468(fieldSystem);
        (v2->unk_00)++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &v2->unk_04);
        sub_020533CC(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        RadarChain_Clear(fieldSystem->chain);
        (v2->unk_00)++;
        break;
    case 2:
        FieldMapChange_CreateObjects(fieldSystem);
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

void sub_020539A0 (TaskManager * taskMan, const Location * param1)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053A80 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053A80));

    if (sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    v1->unk_00 = 0;
    v1->unk_04 = *param1;

    FieldTask_Start(taskMan, FieldTask_ChangeMapSub, v1);
}

void sub_020539E8 (TaskManager * taskMan, int param1, int param2, int param3, int param4, int param5)
{
    Location location;

    Location_Set(&location, param1, param2, param3, param4, param5);
    sub_020539A0(taskMan, &location);
}

static BOOL FieldTask_ChangeMapFull (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053A80 * v1 = TaskManager_Environment(taskMan);
    Location * v2 = &v1->unk_04;

    switch (v1->unk_00) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v2->mapId);
        sub_02055820(taskMan);
        (v1->unk_00)++;
        break;
    case 1:
        sub_020539A0(taskMan, &v1->unk_04);
        (v1->unk_00)++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v2->mapId);
        sub_02055868(taskMan);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02053A80 (TaskManager * taskMan, int mapId, int param2, int x, int z, int param5)
{
    UnkStruct_02053A80 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053A80));

    v0->unk_00 = 0;

    Location_Set(&v0->unk_04, mapId, param2, x, z, param5);
    FieldTask_Start(taskMan, FieldTask_ChangeMapFull, v0);
}

void sub_02053AB4 (FieldSystem * fieldSystem, int param1, int param2, int param3, int param4, int param5)
{
    Location location;

    Location_Set(&location, param1, param2, param3, param4, param5);

    UnkStruct_02053AB4 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053AB4));

    v1->unk_00 = 0;
    v1->unk_04 = NULL;
    v1->unk_08 = location;

    FieldTask_Set(fieldSystem, sub_02053B44, v1);
}

void sub_02053AFC (TaskManager * taskMan, int param1, int param2, int param3, int param4, int param5)
{
    Location location;

    Location_Set(&location, param1, param2, param3, param4, param5);

    UnkStruct_02053AB4 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053AB4));

    v1->unk_00 = 0;
    v1->unk_04 = NULL;
    v1->unk_08 = location;

    FieldTask_Change(taskMan, sub_02053B44, v1);
}

static BOOL sub_02053B44 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053AB4 * v1 = TaskManager_Environment(taskMan);
    Location * v2 = &v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v2->mapId);
        sub_02053BD4(taskMan);
        (v1->unk_00)++;
        break;
    case 1:
        PlayerAvatar_SetPlayerState(fieldSystem->playerAvatar, 0x0);
        sub_020539A0(taskMan, &v1->unk_08);
        (v1->unk_00)++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v2->mapId);
        sub_0207056C(fieldSystem);
        sub_02053C10(taskMan);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static void sub_02053BD4 (TaskManager * taskMan)
{
    FieldTask_Start(taskMan, sub_02053BE4, NULL);
}

static BOOL sub_02053BE4 (TaskManager * taskMan)
{
    int * state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        sub_02055820(taskMan);
        (*state)++;
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void sub_02053C10 (TaskManager * taskMan)
{
    UnkStruct_02053AB4 * v0 = TaskManager_Environment(taskMan);
    FieldTask_Start(taskMan, sub_02053C28, v0);
}

static BOOL sub_02053C28 (TaskManager * taskMan)
{
    int * v0 = FieldTask_GetState(taskMan);
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);

    switch (*v0) {
    case 0:
        sub_02055868(taskMan);
        (*v0)++;
        break;
    case 1:
        ov5_021DDAA4(fieldSystem);
        sub_02053C70(taskMan);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void sub_02053C70 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053AB4 * v1 = TaskManager_Environment(taskMan);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    v1->unk_04 = ov6_02245CCC(fieldSystem, PlayerAvatar_Gender(fieldSystem->playerAvatar));
    FieldTask_Start(taskMan, sub_02053CB4, v1);
}

static BOOL sub_02053CB4 (TaskManager * taskMan)
{
    UnkStruct_02053AB4 * v0 = TaskManager_Environment(taskMan);

    if (ov6_02245CF0(v0->unk_04) == 1) {
        ov6_02245CFC(v0->unk_04);
        return 1;
    }

    return 0;
}

void sub_02053CD4 (TaskManager * taskMan, const Location * param1, u32 param2)
{
    UnkStruct_02053CD4 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053CD4));

    v0->unk_00 = 0;
    v0->unk_04 = param2;
    v0->unk_08 = NULL;
    v0->unk_0C = *param1;

    FieldTask_Change(taskMan, sub_02053D0C, v0);
}

static BOOL sub_02053D0C (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053CD4 * v1 = TaskManager_Environment(taskMan);
    Location * v2 = &v1->unk_0C;

    switch (v1->unk_00) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v2->mapId);
        sub_02053DB4(taskMan);
        (v1->unk_00)++;
        break;
    case 1:
        PlayerAvatar_SetPlayerState(fieldSystem->playerAvatar, 0x0);
        sub_020539A0(taskMan, &v1->unk_0C);
        (v1->unk_00)++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v2->mapId);

        if (v1->unk_04 == 2) {
            sub_02070588(fieldSystem);
        } else if ((v1->unk_04 == 0) || (v1->unk_04 == 1)) {
            sub_020705A4(fieldSystem);
        } else {
            GF_ASSERT(FALSE);
        }

        sub_02053DF0(taskMan);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static void sub_02053DB4 (TaskManager * taskMan)
{
    FieldTask_Start(taskMan, sub_02053DC4, NULL);
}

static BOOL sub_02053DC4 (TaskManager * taskMan)
{
    int * v0 = FieldTask_GetState(taskMan);

    switch (*v0) {
    case 0:
        sub_02055820(taskMan);
        (*v0)++;
        break;
    case 1:
        return 1;
    }

    return 0;
}

static void sub_02053DF0 (TaskManager * taskMan)
{
    UnkStruct_02053CD4 * v0 = TaskManager_Environment(taskMan);
    FieldTask_Start(taskMan, sub_02053E08, v0);
}

static BOOL sub_02053E08 (TaskManager * taskMan)
{
    int * v0 = FieldTask_GetState(taskMan);
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053CD4 * v2 = TaskManager_Environment(taskMan);

    switch (*v0) {
    case 0:
        sub_02055868(taskMan);
        (*v0)++;
        break;
    case 1:
        ov5_021DDAA4(fieldSystem);
        sub_02053E5C(taskMan);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void sub_02053E5C (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053CD4 * v1 = TaskManager_Environment(taskMan);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        void * v2 = ov6_022472C8(fieldSystem, 4, v1->unk_04);
        FieldTask_Start(taskMan, ov6_022472E8, v2);
    }
}

static BOOL sub_02053E98 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053E98 * v1 = TaskManager_Environment(taskMan);
    Location * v2 = &v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        ov5_021E15A8(fieldSystem, 1, &v1->unk_04);
        v1->unk_00++;
        break;
    case 1:
        if (v1->unk_04) {
            Sound_TryFadeInBGM(fieldSystem, v2->mapId);
            sub_02055820(taskMan);
            v1->unk_00++;
        }
        break;
    case 2:
        sub_020539A0(taskMan, &v1->unk_08);
        v1->unk_00++;
        break;
    case 3:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v2->mapId);
        sub_02055868(taskMan);
        v1->unk_00++;
        break;
    case 4:
        v1->unk_04 = 0;
        ov5_021E15A8(fieldSystem, 0, &v1->unk_04);
        v1->unk_00++;
        break;
    case 5:
        if (v1->unk_04) {
            v1->unk_00++;
        }
        break;
    case 6:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02053F58 (FieldSystem * fieldSystem, int param1, int param2)
{
    Location v0;
    UnkStruct_02053E98 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053E98));

    MI_CpuClear8(v1, sizeof(UnkStruct_02053E98));

    Location_Set(&v0, param1, param2, 0, 0, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    v1->unk_08 = v0;
    FieldTask_Set(fieldSystem, sub_02053E98, v1);
}

void * sub_02053FAC (FieldSystem * fieldSystem)
{
    UnkStruct_02053FAC * v0;
    Location * v1 = sub_0203A730(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053FAC));
    v0->unk_00 = 0;
    v0->unk_04 = 0;

    if (fieldSystem->unk_70 == 1) {
        v0->unk_08 = v1->mapId;
        v0->unk_0C = -1;
        v0->unk_10 = v1->x;
        v0->unk_14 = v1->z;
    } else {
        Location_SetToPlayerLocation(v1, fieldSystem);
        v0->unk_08 = 2;
        v0->unk_0C = -1;

        {
            int v2, v3;
            int v4, v5;

            v4 = (v1->x / 32) - 1;
            v5 = (v1->z / 32) - 6;

            GF_ASSERT(v4 >= 0);
            GF_ASSERT(v5 >= 0);

            if (v4 % 2 == 0) {
                v2 = 8;
            } else {
                v2 = 23;
            }

            if (v5 % 2 == 0) {
                v3 = 8;
            } else {
                v3 = 23;
            }

            v4 = (v4 / 2) + 1;
            v5 = (v5 / 2) + 2 + 1;
            v0->unk_10 = v4 * 32 + v2;
            v0->unk_14 = v5 * 32 + v3;
        }
    }

    return v0;
}

void sub_02054064 (FieldSystem * fieldSystem)
{
    UnkStruct_02053FAC * v0 = sub_02053FAC(fieldSystem);

    if (v0 == NULL) {
        return;
    }

    FieldTask_Set(fieldSystem, sub_02054428(fieldSystem), v0);
}

BOOL sub_02054084 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053FAC * v1 = TaskManager_Environment(taskMan);

    switch (v1->unk_00) {
    case 0:
        MessageLoader * v2 = MessageLoader_Init(1, 26, 221, 11);

        v1->unk_34 = MessageLoader_GetNewStrbuf(v2, 124);
        MessageLoader_Free(v2);

        FieldMessage_AddWindow(fieldSystem->unk_08, &v1->unk_24, 3);
        FieldMessage_DrawWindow(&v1->unk_24, SaveData_Options(fieldSystem->saveData));
        v1->unk_38 = FieldMessage_Print(&v1->unk_24, v1->unk_34, SaveData_Options(fieldSystem->saveData), 1);
        v1->unk_00 = 1;
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(v1->unk_38) == 1) {
            Strbuf_Free(v1->unk_34);
            sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 11);
            v1->unk_3C = sub_02002100(fieldSystem->unk_08, &Unk_020EC3A0, 1024 - (18 + 12) - 9, 11, 11);
            v1->unk_00 = 2;
        }
        break;
    case 2:
        switch (sub_02002114(v1->unk_3C, 11)) {
        case 0:
            sub_0200E084(&v1->unk_24, 0);
            BGL_DeleteWindow(&v1->unk_24);
            v1->unk_00 = 3;
            break;
        case 0xfffffffe:
            sub_0200E084(&v1->unk_24, 0);
            BGL_DeleteWindow(&v1->unk_24);
            v1->unk_00 = 5;
        }
        break;
    case 3:
        if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
            sub_0203E8E0(taskMan, 2034, NULL, NULL);
        } else {
            sub_020287E0(fieldSystem->saveData);
            v1->unk_20 = ov5_021E1F98(fieldSystem, 11, 3);
            ov5_021E1F04(v1->unk_20);
            v1->unk_1C = 0;
            sub_0203E8E0(taskMan, 2005, NULL, &v1->unk_1C);
        }

        v1->unk_00 = 4;
        break;
    case 4:
        if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
            v1->unk_00 = 5;
        } else {
            ov5_021E1F7C(v1->unk_20);
            ov5_021E1FF4(v1->unk_20);

            if (v1->unk_1C == 0) {
                v1->unk_00 = 5;
            } else {
                v1->unk_00 = 6;
            }
        }
        break;
    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        Heap_FreeToHeap(v1);
        return 1;
    case 6:
        sub_0200564C(0, 30);
        (v1->unk_00)++;
        break;
    case 7:
        if (sub_0205444C(taskMan, 0)) {
            (v1->unk_00)++;
        }
        break;
    case 8:
        sub_02055820(taskMan);
        (v1->unk_00)++;
        break;
    case 9:
        fieldSystem->unk_70 = 1;
        Overlay_LoadByID(FS_OVERLAY_ID(overlay23), 2);
        ov23_022499E8(fieldSystem);
        sub_020539E8(taskMan, v1->unk_08, -1, v1->unk_10, v1->unk_14, 1);
        (v1->unk_00)++;
        break;
    case 10:
        if (Sound_CheckFade() != 0) {
            break;
        }

        sub_02004234(0);
        Sound_ClearSpecialBGM(fieldSystem);
        sub_02055868(taskMan);
        (v1->unk_00)++;
        break;
    case 11:
        if (sub_0205444C(taskMan, 1)) {
            ov23_02249A2C();
            fieldSystem->unk_6C = ov23_02249404(fieldSystem);
            sub_0200AAE0(30, 0, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 2);
            (v1->unk_00)++;
        }
        break;
    case 12:
        if (sub_0200AC1C(2)) {
            ov23_0224DBF4(1);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

BOOL sub_0205430C (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053FAC * v1 = TaskManager_Environment(taskMan);
    int v2 = 0;

    switch (v1->unk_00) {
    case 0:
        ov23_0224DBF4(0);
        ov23_02249A5C();
        ov23_0224942C(fieldSystem->unk_6C);
        sub_0200AAE0(30, -16, 0, GX_BLEND_PLANEMASK_BG0, 2);
        v1->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            if ((fieldSystem->unk_6C == NULL) && !CommSys_IsInitialized()) {
                sub_0200564C(0, 30);
                v1->unk_00++;
            }
        }
        break;
    case 2:
        if (sub_0205444C(taskMan, 2)) {
            (v1->unk_00)++;
        }
        break;
    case 3:
        sub_02055820(taskMan);
        (v1->unk_00)++;
        break;
    case 4:
        fieldSystem->unk_70 = 0;
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay23));
        sub_020539E8(taskMan, v1->unk_08, -1, v1->unk_10, v1->unk_14, 1);
        (v1->unk_00)++;
        break;
    case 5:
        if (Sound_CheckFade() != 0) {
            break;
        }

        sub_02004234(0);
        Sound_ClearSpecialBGM(fieldSystem);
        sub_02055868(taskMan);
        (v1->unk_00)++;
        break;
    case 6:
        if (sub_0205444C(taskMan, 3)) {
            (v1->unk_00)++;
        }
        break;
    case 7:
        Heap_FreeToHeap(v1);
        return 1;
        break;
    }

    return 0;
}

FieldTask sub_02054428 (const FieldSystem * fieldSystem)
{
    if (fieldSystem->unk_70 == 0) {
        return sub_02054084;
    } else if (fieldSystem->unk_70 == 1) {
        return sub_0205430C;
    } else {
        GF_ASSERT(0);
        return NULL;
    }
}

static BOOL sub_0205444C (TaskManager * taskMan, int param1)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053FAC * v1 = TaskManager_Environment(taskMan);
    BOOL v2 = 0;

    switch (v1->unk_04) {
    case 0:
        v1->unk_18 = 0;
        sub_0205CFDC(fieldSystem, param1, &v1->unk_18);
        v1->unk_04++;
        break;
    case 1:
        if (v1->unk_18) {
            v1->unk_04 = 0;
            v2 = 1;
        }
        break;
    }

    return v2;
}

static BOOL sub_02054494 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053A80 * v1 = TaskManager_Environment(taskMan);

    switch (v1->unk_00) {
    case 0:
        FieldMapChange_DeleteObjects(fieldSystem);
        (v1->unk_00)++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &v1->unk_04);
        sub_0203F5C0(fieldSystem, 2);
        (v1->unk_00)++;
        break;
    case 2:
        FieldMapChange_CreateObjects(fieldSystem);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_020544F0 (TaskManager * taskMan, const Location * param1)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053A80 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053A80));

    if (sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    v1->unk_00 = 0;
    v1->unk_04 = *param1;

    FieldTask_Start(taskMan, sub_02054494, v1);
}

static BOOL sub_02054538 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02054538 * v1 = TaskManager_Environment(taskMan);
    int * v2 = FieldTask_GetState(taskMan);
    Location * v3 = &v1->unk_08;

    switch (*v2) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v3->mapId);
        ov5_021E15A8(fieldSystem, 1, &v1->unk_04);
        (*v2)++;
        break;
    case 1:
        if (v1->unk_04) {
            sub_02055820(taskMan);
            (*v2)++;
        }
        break;
    case 2:
        sub_020539A0(taskMan, &v1->unk_08);
        (*v2)++;
        break;
    case 3:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v3->mapId);
        sub_02055868(taskMan);
        (*v2)++;
        break;
    case 4:
        sub_020558F0(taskMan);
        (*v2)++;
        break;
    case 5:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_020545EC (FieldSystem * fieldSystem)
{
    Location * v0 = sub_0203A730(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    UnkStruct_02054538 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02054538));

    MI_CpuClear8(v1, sizeof(UnkStruct_02054538));

    v1->unk_08 = *v0;
    sub_0205B388(fieldSystem);
    sub_0205C2E0(fieldSystem->unk_80);
    fieldSystem->unk_70 = 0;

    FieldTask_Set(fieldSystem, sub_02054538, v1);
    fieldSystem->unk_7C = NULL;
}

static BOOL sub_02054648 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02054538 * v1 = TaskManager_Environment(taskMan);
    int * state = FieldTask_GetState(taskMan);
    Location * v3 = &v1->unk_08;

    switch (*state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v3->mapId);
        sub_020558AC(taskMan);
        (*state)++;
        break;
    case 1:
        sub_02055820(taskMan);
        (*state)++;
        break;
    case 2:
        sub_020539A0(taskMan, &v1->unk_08);
        (*state)++;
        break;
    case 3:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v3->mapId);
        sub_02055868(taskMan);
        (*state)++;
        break;
    case 4:
        v1->unk_04 = 0;
        ov5_021E15A8(fieldSystem, 0, &v1->unk_04);
        (*state)++;
        break;
    case 5:
        if (v1->unk_04) {
            (*state)++;
        }
        break;
    case 6:
        Heap_FreeToHeap(v1);
        return TRUE;
    }

    return FALSE;
}

void sub_02054708 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    Location * v1 = sub_0203A730(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    UnkStruct_02054538 * v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02054538));

    MI_CpuClear8(v2, sizeof(UnkStruct_02054538));
    Location_SetToPlayerLocation(v1, fieldSystem);

    Location_Set(&v2->unk_08, 466, -1, 8, 14, 0);

    fieldSystem->unk_7C = sub_0205B33C(fieldSystem);
    fieldSystem->unk_80 = sub_0205C22C(fieldSystem->unk_7C);
    fieldSystem->unk_70 = 2;

    FieldTask_Start(taskMan, sub_02054648, v2);
}

static BOOL sub_02054778 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    UnkStruct_02053900 * v1 = TaskManager_Environment(taskMan);
    Location * v2 = &v1->unk_04;

    switch (v1->unk_00) {
    case 0:
        Sound_PlayEffect(1539);
        Sound_TryFadeInBGM(fieldSystem, v2->mapId);
        sub_02055974(taskMan);
        (v1->unk_00)++;
        break;
    case 1:
        sub_020539A0(taskMan, &v1->unk_04);
        (v1->unk_00)++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v2->mapId);
        sub_02055868(taskMan);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02054800 (TaskManager * taskMan, int param1, int param2, int param3, int param4, int param5)
{
    Location v0;
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    Location * v2 = sub_0203A730(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    Location_SetToPlayerLocation(v2, fieldSystem);

    fieldSystem->unk_70 = 3;

    UnkStruct_02053900 * v3 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053900));

    Location_Set(&v0, param1, param2, param3, param4, param5);

    v3->unk_00 = 0;
    v3->unk_04 = v0;

    FieldTask_Start(taskMan, sub_02054778, v3);
}

void sub_02054864 (TaskManager * taskMan)
{
    FieldSystem * fieldSystem = TaskManager_FieldSystem(taskMan);
    Location * v1 = sub_0203A730(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    fieldSystem->unk_70 = 0;
    FieldSystem_StartChangeMapTask(fieldSystem->unk_10, v1);
}

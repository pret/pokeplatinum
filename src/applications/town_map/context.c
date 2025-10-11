#include <nitro.h>
#include <string.h>

#include "generated/first_arrival_to_zones.h"
#include "generated/town_map_description_flag_types.h"

#include "struct_decls/struct_0203A790_decl.h"

#include "applications/town_map/main.h"
#include "field/field_system.h"

#include "field_overworld_state.h"
#include "field_system.h"
#include "heap.h"
#include "location.h"
#include "map_header.h"
#include "map_matrix.h"
#include "overworld_map_history.h"
#include "player_avatar.h"
#include "save_player.h"
#include "script_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "vars_flags.h"

typedef struct TownMapDescriptionFlags {
    u8 areaDescriptionFlagType;
    u8 areaDescriptionFlag;
    u8 landmarkDescriptionFlagType;
    u8 landmarkDescriptionFlag;
} TownMapDescriptionFlags;

typedef struct TownMapDistWorldMapOffset {
    int mapHeader;
    int x;
    int y;
    int z;
} TownMapDistWorldMapOffset;

static void PerformTownMapDescriptionsChecks(FieldSystem *fieldSystem, TownMapContext *ctx, const char *flagsFilePath);

static const TownMapDistWorldMapOffset sDistWorldMapOffsets[10] = {
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_1F, .x = 21, .y = 288, .z = 10 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B1F, .x = 0, .y = 256, .z = 35 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B2F, .x = 15, .y = 224, .z = 0 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B3F, .x = 47, .y = 192, .z = 21 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B4F, .x = 57, .y = 160, .z = 34 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B5F, .x = 57, .y = 128, .z = 34 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B6F, .x = 56, .y = 114, .z = 38 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_B7F, .x = 74, .y = 64, .z = 32 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, .x = 0, .y = 0, .z = 0 },
    { .mapHeader = MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM, .x = 70, .y = 64, .z = 30 }
};

static const u8 sTownMapFlyLocationUnlockFlags[NUM_FLY_LOCATIONS] = {
    FIRST_ARRIVAL_TWINLEAF_TOWN,
    FIRST_ARRIVAL_SANDGEM_TOWN,
    FIRST_ARRIVAL_FLOAROMA_TOWN,
    FIRST_ARRIVAL_SOLACEON_TOWN,
    FIRST_ARRIVAL_CELESTIC_TOWN,
    FIRST_ARRIVAL_SURVIVAL_AREA,
    FIRST_ARRIVAL_RESORT_AREA,
    FIRST_ARRIVAL_JUBILIFE_CITY,
    FIRST_ARRIVAL_CANALAVE_CITY,
    FIRST_ARRIVAL_OREBURGH_CITY,
    FIRST_ARRIVAL_ETERNA_CITY,
    FIRST_ARRIVAL_HEARTHOME_CITY,
    FIRST_ARRIVAL_PASTORIA_CITY,
    FIRST_ARRIVAL_VEILSTONE_CITY,
    FIRST_ARRIVAL_SUNYSHORE_CITY,
    FIRST_ARRIVAL_SNOWPOINT_CITY,
    FIRST_ARRIVAL_FIGHT_AREA,
    FIRST_ARRIVAL_POKE_PARK_FRONT_GATE,
    FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD,
    FIRST_ARRIVAL_POKEMON_LEAGUE,
};

void TownMapContext_Init(FieldSystem *fieldSystem, TownMapContext *ctx, enum TownMapMode townMapMode)
{
    // forward declarations required for matching
    TrainerInfo *trainerInfo;
    int i = 0, locHistIdx = 0;
    int playerX, playerZ, currentMap;
    OverworldMapHistory *mapHistory;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *exitLocation = FieldOverworldState_GetExitLocation(fieldState);

    memset(ctx, 0, sizeof(TownMapContext));

    playerX = Player_GetXPos(fieldSystem->playerAvatar);
    playerZ = Player_GetZPos(fieldSystem->playerAvatar);

    int j = NELEMS(sDistWorldMapOffsets) - 1;
    Location *playerLocation = FieldOverworldState_GetPlayerLocation(fieldState);

    currentMap = playerLocation->mapId;

    while (j >= 0) {
        if (currentMap == sDistWorldMapOffsets[j].mapHeader) {
            playerX -= sDistWorldMapOffsets[j].x;
            playerZ -= sDistWorldMapOffsets[j].z;
            break;
        }

        j--;
    }

    currentMap = MapMatrix_GetMapHeaderIDAtCoords(fieldSystem->mapMatrix, playerX / MAP_TILES_COUNT_X, playerZ / MAP_TILES_COUNT_Z);

    if (MapHeader_IsOnMainMatrix(currentMap)) {
        ctx->playerX = playerX;
        ctx->playerZ = playerZ;
    } else {
        ctx->playerX = exitLocation->x;
        ctx->playerZ = exitLocation->z;
    }

    trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
    ctx->trainerGender = TrainerInfo_Gender(trainerInfo);
    mapHistory = FieldOverworldState_GetMapHistory(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    // Ignore the last entry, which should be the player's current location
    locHistIdx = (mapHistory->historyPointer - 2 + OVERWORLD_MAP_HISTORY_LENGTH) % OVERWORLD_MAP_HISTORY_LENGTH;

    for (i = 0; i < TOWN_MAP_HISTORY_LENGTH; i++) {
        ctx->locationHistory[i].x = mapHistory->items[locHistIdx].mapX;
        ctx->locationHistory[i].z = mapHistory->items[locHistIdx].mapZ;
        ctx->locationHistory[i].isSet = mapHistory->items[locHistIdx].isSet;

        if (mapHistory->items[locHistIdx].faceDirection > 3) {
            ctx->locationHistory[i].faceDirection = 3 + 1;
        } else {
            ctx->locationHistory[i].faceDirection = mapHistory->items[locHistIdx].faceDirection;
        }

        locHistIdx = (locHistIdx - 1 + OVERWORLD_MAP_HISTORY_LENGTH) % OVERWORLD_MAP_HISTORY_LENGTH;
    }

    for (i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        if (SystemVars_CheckHiddenLocation(varsFlags, i)) {
            ctx->unlockedHiddenLocations |= (1 << i);
        }
    }

    for (i = 0; i < NUM_FLY_LOCATIONS; i++) {
        ctx->unlockedFlyLocations[i] = SystemFlag_HandleFirstArrivalToZone(varsFlags, HANDLE_FLAG_CHECK, sTownMapFlyLocationUnlockFlags[i]);
    }

    PerformTownMapDescriptionsChecks(fieldSystem, ctx, "data/tmap_flags.dat");

    ctx->townMapMode = townMapMode;
}

static void PerformTownMapDescriptionsChecks(FieldSystem *fieldSystem, TownMapContext *ctx, const char *flagsFilePath)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    FSFile flagsFile;
    FS_InitFile(&flagsFile);

    if (!FS_OpenFile(&flagsFile, flagsFilePath)) {
        GF_ASSERT(FALSE);
        return;
    }

    int numFlags;
    int readLength = FS_ReadFile(&flagsFile, &numFlags, sizeof(int));
    GF_ASSERT(readLength >= 0);

    TownMapDescriptionFlags *descFlags = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(TownMapDescriptionFlags));
    MI_CpuClear8(descFlags, sizeof(TownMapDescriptionFlags));

    ctx->numDescChecks = numFlags;

    for (int i = 0; i < numFlags; i++) {
        TownMapLocationDescCheckResults *checksResult = &(ctx->descCheckResults[i]);
        readLength = FS_ReadFile(&flagsFile, descFlags, sizeof(TownMapDescriptionFlags));

        switch (descFlags->areaDescriptionFlagType) {
        case TOWN_MAP_DESC_FLAG_FIRST_ARRIVAL:
            checksResult->areaDescCheckResult = SystemFlag_HandleFirstArrivalToZone(varsFlags, HANDLE_FLAG_CHECK, descFlags->areaDescriptionFlag);
            checksResult->areaDescHasCheck = TRUE;
            break;
        case TOWN_MAP_DESC_FLAG_GENERAL:
            checksResult->areaDescCheckResult = FieldSystem_CheckFlag(fieldSystem, descFlags->areaDescriptionFlag);
            checksResult->areaDescHasCheck = TRUE;
            break;
        }

        switch (descFlags->landmarkDescriptionFlagType) {
        case TOWN_MAP_DESC_FLAG_FIRST_ARRIVAL:
            checksResult->landmarkCheckResult = SystemFlag_HandleFirstArrivalToZone(varsFlags, HANDLE_FLAG_CHECK, descFlags->landmarkDescriptionFlag);
            checksResult->landmarkDescHasCheck = TRUE;
            break;
        case TOWN_MAP_DESC_FLAG_GENERAL:
            checksResult->landmarkCheckResult = FieldSystem_CheckFlag(fieldSystem, descFlags->landmarkDescriptionFlag);
            checksResult->landmarkDescHasCheck = TRUE;
            break;
        }
    }

    FS_CloseFile(&flagsFile);
    Heap_Free(descFlags);
}

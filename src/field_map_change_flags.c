#include "field_map_change_flags.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/player_data.h"
#include "struct_defs/special_encounter.h"

#include "field/field_system.h"

#include "generated/map_headers.h"

#include "field_overworld_state.h"
#include "inlines.h"
#include "journal.h"
#include "location.h"
#include "map_header.h"
#include "overworld_map_history.h"
#include "player_avatar.h"
#include "roaming_pokemon.h"
#include "save_player.h"
#include "spawn_locations.h"
#include "special_encounter.h"
#include "system_flags.h"
#include "system_vars.h"
#include "vars_flags.h"

static BOOL CreateFlyLocationJournalEvent(FieldSystem *fieldSystem);
static BOOL CreateMapTransitionJournalEvent(FieldSystem *fieldSystem);

void FieldSystem_SetTemporaryMapChange(FieldSystem *fieldSystem, BOOL temporaryMapChange)
{
    fieldSystem->temporaryMapChange = temporaryMapChange;
}

void FieldSystem_InitFlagsOnMapChange(FieldSystem *fieldSystem)
{
    CreateFlyLocationJournalEvent(fieldSystem);
    SystemFlag_HandleForceBikingInGate(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);

    SystemFlag_HandleStrengthActive(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);

    TryUnlockFlyLocationByMap(fieldSystem, fieldSystem->location->mapId);
    SpecialEncounter_SetFluteFactor(SaveData_GetSpecialEncounters(fieldSystem->saveData), FLUTE_FACTOR_NONE);

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == FALSE) {
        SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);
        RoamingPokemon_UpdatePlayerRecentRoutes(speEnc, fieldSystem->location->mapId);
        RoamingPokemon_MoveAllLocations(speEnc);
    }
}

void FieldSystem_InitFlagsWarp(FieldSystem *fieldSystem)
{
    if (fieldSystem->temporaryMapChange == TRUE) {
        return;
    }

    if (CreateFlyLocationJournalEvent(fieldSystem) == FALSE) {
        CreateMapTransitionJournalEvent(fieldSystem);
    }

    SystemFlag_HandleForceBikingInGate(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);
    SystemFlag_CheckOnCyclingRoad(SaveData_GetVarsFlags(fieldSystem->saveData));

    SystemFlag_HandleStrengthActive(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);

    TryUnlockFlyLocationByMap(fieldSystem, fieldSystem->location->mapId);
    SpecialEncounter_SetFluteFactor(SaveData_GetSpecialEncounters(fieldSystem->saveData), FLUTE_FACTOR_NONE);

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;

    {
        SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);
        RoamingPokemon_UpdatePlayerRecentRoutes(speEnc, fieldSystem->location->mapId);
    }

    if (!MapHeader_IsCave(fieldSystem->location->mapId)) {
        VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

        SystemFlag_ClearFlashActive(varsFlags);
        SystemFlag_ClearDefogActive(varsFlags);
    }

    {
        PlayerData *playerData = FieldOverworldState_GetPlayerData(SaveData_GetFieldOverworldState(fieldSystem->saveData));

        if (playerData->playerState == PLAYER_AVATAR_CYCLING && MapHeader_IsBikeAllowed(fieldSystem->location->mapId) == FALSE) {
            playerData->playerState = PLAYER_AVATAR_WALKING;
        } else if (playerData->playerState == PLAYER_AVATAR_SURFING) {
            playerData->playerState = PLAYER_AVATAR_WALKING;
        }
    }

    if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId)) {
        OverworldMapHistory *mapHistory = FieldOverworldState_GetMapHistory(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        OverworldMapHistory_PushViaWarp(mapHistory, fieldSystem->location->x, fieldSystem->location->z);
    }
}

void FieldSystem_SetFlyFlags(FieldSystem *fieldSystem)
{
    SystemFlag_ClearSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
    RoamingPokemon_RandomizeAllLocations(SaveData_GetSpecialEncounters(fieldSystem->saveData));
}

void FieldSystem_SetTeleportFlags(FieldSystem *fieldSystem)
{
    SystemFlag_ClearSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
    RoamingPokemon_RandomizeAllLocations(SaveData_GetSpecialEncounters(fieldSystem->saveData));
}

void FieldSystem_SetEscapeFlags(FieldSystem *fieldSystem)
{
    SystemFlag_ClearSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
}

void FieldSystem_ClearPartnerTrainer(FieldSystem *fieldSystem)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    SystemFlag_ClearHasPartner(varsFlags);
    SystemVars_SetPartnerTrainerID(varsFlags, 0);
}

void FieldSystem_RandomizeRoamingPokemonLocations(FieldSystem *fieldSystem)
{
    RoamingPokemon_RandomizeAllLocations(SaveData_GetSpecialEncounters(fieldSystem->saveData));
}

static BOOL CreateFlyLocationJournalEvent(FieldSystem *fieldSystem)
{
    enum MapHeaderID flyLocation = GetMapFlyWarpId(fieldSystem->location->mapId);

    if (flyLocation != MAP_HEADER_EVERYWHERE && CheckFlyLocationUnlocked(fieldSystem, flyLocation) == FALSE) {
        JournalEntry_CreateAndSaveEventArrivedInLocation(fieldSystem->journalEntry, fieldSystem->location->mapId, HEAP_ID_FIELD3);
        return TRUE;
    }

    return FALSE;
}

static BOOL CreateMapTransitionJournalEvent(FieldSystem *fieldSystem)
{
    Location *location = FieldOverworldState_GetPrevLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    if (location->mapId != fieldSystem->location->mapId) {
        JournalEntry_CreateAndSaveEventMapTransition(SaveData_GetTrainerInfo(fieldSystem->saveData), fieldSystem->journalEntry, fieldSystem->location->mapId, location->mapId, HEAP_ID_FIELD3);
        return TRUE;
    }

    return FALSE;
}

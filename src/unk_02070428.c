#include "unk_02070428.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"

#include "field_overworld_state.h"
#include "inlines.h"
#include "journal.h"
#include "location.h"
#include "map_header.h"
#include "player_avatar.h"
#include "roaming_pokemon.h"
#include "save_player.h"
#include "special_encounter.h"
#include "system_flags.h"
#include "unk_0203A7D8.h"
#include "unk_020556C4.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

static BOOL sub_020705DC(FieldSystem *fieldSystem);
static BOOL sub_02070610(FieldSystem *fieldSystem);

void sub_02070428(FieldSystem *fieldSystem, BOOL param1)
{
    fieldSystem->unk_B8 = param1;
}

void FieldSystem_InitFlagsOnMapChange(FieldSystem *fieldSystem)
{
    sub_020705DC(fieldSystem);
    SystemFlag_HandleForceBikingInGate(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);

    SystemFlag_HandleStrengthActive(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);

    sub_0203A8E8(fieldSystem, fieldSystem->location->mapId);
    SpecialEncounter_SetFluteFactor(SaveData_GetSpecialEncounters(fieldSystem->saveData), FLUTE_FACTOR_NONE);

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;

    if (!SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        SpecialEncounter *v0;

        v0 = SaveData_GetSpecialEncounters(fieldSystem->saveData);
        RoamingPokemon_UpdatePlayerRecentRoutes(v0, fieldSystem->location->mapId);
        RoamingPokemon_MoveAllLocations(v0);
    }
}

void FieldSystem_InitFlagsWarp(FieldSystem *fieldSystem)
{
    if (fieldSystem->unk_B8 == 1) {
        return;
    }

    if (sub_020705DC(fieldSystem) == 0) {
        sub_02070610(fieldSystem);
    }

    SystemFlag_HandleForceBikingInGate(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);
    SystemFlag_CheckOnCyclingRoad(SaveData_GetVarsFlags(fieldSystem->saveData));

    SystemFlag_HandleStrengthActive(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CLEAR);

    sub_0203A8E8(fieldSystem, fieldSystem->location->mapId);
    SpecialEncounter_SetFluteFactor(SaveData_GetSpecialEncounters(fieldSystem->saveData), FLUTE_FACTOR_NONE);

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;

    {
        SpecialEncounter *v0;

        v0 = SaveData_GetSpecialEncounters(fieldSystem->saveData);
        RoamingPokemon_UpdatePlayerRecentRoutes(v0, fieldSystem->location->mapId);
    }

    if (!MapHeader_IsCave(fieldSystem->location->mapId)) {
        VarsFlags *v1 = SaveData_GetVarsFlags(fieldSystem->saveData);

        SystemFlag_ClearFlashActive(v1);
        SystemFlag_ClearDefogActive(v1);
    }

    {
        PlayerData *v2 = FieldOverworldState_GetPlayerData(SaveData_GetFieldOverworldState(fieldSystem->saveData));

        if ((v2->form == PLAYER_AVATAR_BIKING) && (MapHeader_IsBikeAllowed(fieldSystem->location->mapId) == 0)) {
            v2->form = PLAYER_AVATAR_WALKING;
        } else if (v2->form == PLAYER_AVATAR_SURFING) {
            v2->form = PLAYER_AVATAR_WALKING;
        }
    }

    if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId)) {
        UnkStruct_020556C4 *v3;

        v3 = sub_0203A76C(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        sub_020556E8(v3, fieldSystem->location->x, fieldSystem->location->z);
    }
}

void sub_0207056C(FieldSystem *fieldSystem)
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

void sub_020705B4(FieldSystem *fieldSystem)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(fieldSystem->saveData);

    SystemFlag_ClearHasPartner(v0);
    sub_0206B024(v0, 0);
}

void sub_020705CC(FieldSystem *fieldSystem)
{
    RoamingPokemon_RandomizeAllLocations(SaveData_GetSpecialEncounters(fieldSystem->saveData));
}

static BOOL sub_020705DC(FieldSystem *fieldSystem)
{
    int v0 = sub_0203A87C(fieldSystem->location->mapId);

    if (v0 != 0 && sub_0203A920(fieldSystem, v0) == 0) {
        JournalEntry_CreateAndSaveEventArrivedInLocation(fieldSystem->journalEntry, fieldSystem->location->mapId, HEAP_ID_FIELD_TASK);
        return TRUE;
    }

    return FALSE;
}

static BOOL sub_02070610(FieldSystem *fieldSystem)
{
    Location *location = FieldOverworldState_GetPrevLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    if (location->mapId != fieldSystem->location->mapId) {
        JournalEntry_CreateAndSaveEventMapTransition(SaveData_GetTrainerInfo(fieldSystem->saveData), fieldSystem->journalEntry, fieldSystem->location->mapId, location->mapId, HEAP_ID_FIELD_TASK);
        return TRUE;
    }

    return FALSE;
}

#include "unk_02070428.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"

#include "field_overworld_state.h"
#include "inlines.h"
#include "journal.h"
#include "map_header.h"
#include "roaming_pokemon.h"
#include "save_player.h"
#include "unk_0202D7A8.h"
#include "unk_0203A7D8.h"
#include "unk_020556C4.h"
#include "unk_0206A8DC.h"
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
    sub_0206AF1C(SaveData_GetVarsFlags(fieldSystem->saveData), 0);

    inline_0204E650_1(SaveData_GetVarsFlags(fieldSystem->saveData));

    sub_0203A8E8(fieldSystem, fieldSystem->location->mapId);
    sub_0202D9EC(sub_0202D834(fieldSystem->saveData), 0);

    fieldSystem->unk_78.unk_00 = 0;

    if (!sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        UnkStruct_0202D7B0 *v0;

        v0 = sub_0202D834(fieldSystem->saveData);
        sub_0206C404(v0, fieldSystem->location->mapId);
        sub_0206C37C(v0);
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

    sub_0206AF1C(SaveData_GetVarsFlags(fieldSystem->saveData), 0);
    sub_0206AE9C(SaveData_GetVarsFlags(fieldSystem->saveData));

    inline_0204E650_1(SaveData_GetVarsFlags(fieldSystem->saveData));

    sub_0203A8E8(fieldSystem, fieldSystem->location->mapId);
    sub_0202D9EC(sub_0202D834(fieldSystem->saveData), 0);

    fieldSystem->unk_78.unk_00 = 0;

    {
        UnkStruct_0202D7B0 *v0;

        v0 = sub_0202D834(fieldSystem->saveData);
        sub_0206C404(v0, fieldSystem->location->mapId);
    }

    if (!MapHeader_IsCave(fieldSystem->location->mapId)) {
        VarsFlags *v1 = SaveData_GetVarsFlags(fieldSystem->saveData);

        sub_0206AECC(v1);
        sub_0206AEFC(v1);
    }

    {
        PlayerData *v2 = FieldOverworldState_GetPlayerData(SaveData_GetFieldOverworldState(fieldSystem->saveData));

        if ((v2->unk_04 == 0x1) && (MapHeader_IsBikeAllowed(fieldSystem->location->mapId) == 0)) {
            v2->unk_04 = 0x0;
        } else if (v2->unk_04 == 0x2) {
            v2->unk_04 = 0x0;
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
    sub_0206AE4C(SaveData_GetVarsFlags(fieldSystem->saveData));
    sub_0206C354(sub_0202D834(fieldSystem->saveData));
}

void FieldSystem_SetTeleportFlags(FieldSystem *fieldSystem)
{
    sub_0206AE4C(SaveData_GetVarsFlags(fieldSystem->saveData));
    sub_0206C354(sub_0202D834(fieldSystem->saveData));
}

void FieldSystem_SetEscapeFlags(FieldSystem *fieldSystem)
{
    sub_0206AE4C(SaveData_GetVarsFlags(fieldSystem->saveData));
}

void sub_020705B4(FieldSystem *fieldSystem)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(fieldSystem->saveData);

    sub_0206A974(v0);
    sub_0206B024(v0, 0);
}

void sub_020705CC(FieldSystem *fieldSystem)
{
    sub_0206C354(sub_0202D834(fieldSystem->saveData));
}

static BOOL sub_020705DC(FieldSystem *fieldSystem)
{
    int v0 = sub_0203A87C(fieldSystem->location->mapId);

    if ((v0 != 0) && (sub_0203A920(fieldSystem, v0) == 0)) {
        sub_0202C704(fieldSystem->journal, fieldSystem->location->mapId, 32);
        return TRUE;
    }

    return FALSE;
}

static BOOL sub_02070610(FieldSystem *fieldSystem)
{
    Location *location = FieldOverworldState_GetPrevLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    if (location->mapId != fieldSystem->location->mapId) {
        sub_0202C5C4(SaveData_GetTrainerInfo(fieldSystem->saveData), fieldSystem->journal, fieldSystem->location->mapId, location->mapId, 32);
        return TRUE;
    }

    return FALSE;
}

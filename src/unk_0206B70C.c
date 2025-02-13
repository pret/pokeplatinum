#include "unk_0206B70C.h"

#include <nitro.h>
#include <string.h>

#include "constants/savedata/vars_flags.h"

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/union_0206B878.h"

#include "field/field_system.h"

#include "field_overworld_state.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "location.h"
#include "map_header.h"
#include "map_matrix.h"
#include "player_avatar.h"
#include "save_player.h"
#include "script_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_0206B878;

static void sub_0206B878(FieldSystem *fieldSystem, UnkStruct_0203D8AC *param1, const char *param2);

static const int Unk_020EFA98[10][4] = {
    { 0x23D, 0x15, 0x120, 0xA },
    { 0x23E, 0x0, 0x100, 0x23 },
    { 0x23F, 0xF, 0xE0, 0x0 },
    { 0x240, 0x2F, 0xC0, 0x15 },
    { 0x241, 0x39, 0xA0, 0x22 },
    { 0x243, 0x39, 0x80, 0x22 },
    { 0x244, 0x38, 0x72, 0x26 },
    { 0x245, 0x4A, 0x40, 0x20 },
    { 0x246, 0x0, 0x0, 0x0 },
    { 0x247, 0x46, 0x40, 0x1E }
};

static const u8 Unk_020EFA84[20] = {
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

void sub_0206B70C(FieldSystem *fieldSystem, UnkStruct_0203D8AC *param1, int param2)
{
    TrainerInfo *v0;
    int v1 = 0, v2 = 0, v3 = 0;
    int x, z, v6;
    UnkStruct_020556C4 *v7;
    VarsFlags *v8 = SaveData_GetVarsFlags(fieldSystem->saveData);
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *v10 = FieldOverworldState_GetExitLocation(fieldState);

    memset(param1, 0, sizeof(UnkStruct_0203D8AC));

    x = Player_GetXPos(fieldSystem->playerAvatar);
    z = Player_GetZPos(fieldSystem->playerAvatar);

    int v11 = 9;
    Location *location = FieldOverworldState_GetPlayerLocation(fieldState);

    v6 = location->mapId;

    while (v11 >= 0) {
        if (v6 == Unk_020EFA98[v11][0]) {
            x -= Unk_020EFA98[v11][1];
            z -= Unk_020EFA98[v11][3];
            break;
        }

        v11--;
    }

    v6 = MapMatrix_GetMapHeaderIDAtCoords(fieldSystem->mapMatrix, x / 32, z / 32);

    if (MapHeader_IsOnMainMatrix(v6)) {
        param1->unk_00 = x;
        param1->unk_04 = z;
    } else {
        param1->unk_00 = v10->x;
        param1->unk_04 = v10->z;
    }

    v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
    param1->unk_0C = TrainerInfo_Gender(v0);
    v7 = sub_0203A76C(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    v2 = (v7->unk_00 - 2 + 6) % 6;

    for (v1 = 0; v1 < 5; v1++) {
        param1->unk_20[v1].unk_00 = v7->unk_06[v2].unk_00;
        param1->unk_20[v1].unk_04 = v7->unk_06[v2].unk_01;
        param1->unk_20[v1].unk_0A = v7->unk_06[v2].unk_03;

        if (v7->unk_06[v2].unk_02 > 3) {
            param1->unk_20[v1].unk_08 = 3 + 1;
        } else {
            param1->unk_20[v1].unk_08 = v7->unk_06[v2].unk_02;
        }

        v2 = (v2 - 1 + 6) % 6;

        if (param1->unk_20[v1].unk_0A) {
            v3++;
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (VarFlags_HiddenLocationsUnlocked(v8, v1)) {
            param1->unk_13C |= (0x1 << v1);
        }
    }

    for (v1 = 0; v1 < 20; v1++) {
        param1->unk_124[v1] = SystemFlag_HandleFirstArrivalToZone(v8, HANDLE_FLAG_CHECK, Unk_020EFA84[v1]);
    }

    sub_0206B878(fieldSystem, param1, "data/tmap_flags.dat");

    param1->unk_139 = param2;
}

static void sub_0206B878(FieldSystem *fieldSystem, UnkStruct_0203D8AC *param1, const char *param2)
{
    FSFile v0;
    int v1, i;
    int v3;
    UnkStruct_0206B878 *v4;
    UnkUnion_0206B878 *v5;
    VarsFlags *v6 = SaveData_GetVarsFlags(fieldSystem->saveData);

    FS_InitFile(&v0);

    if (!FS_OpenFile(&v0, param2)) {
        GF_ASSERT(0);
        return;
    }

    v1 = FS_ReadFile(&v0, &v3, 4);
    GF_ASSERT(v1 >= 0);

    v4 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0206B878));
    MI_CpuClear8(v4, sizeof(UnkStruct_0206B878));

    param1->unk_13A = v3;

    for (i = 0; i < v3; i++) {
        v5 = &(param1->unk_5C[i]);
        v1 = FS_ReadFile(&v0, v4, sizeof(UnkStruct_0206B878));

        switch (v4->unk_00) {
        case 1:
            v5->val1_2 = SystemFlag_HandleFirstArrivalToZone(v6, HANDLE_FLAG_CHECK, v4->unk_01);
            v5->val1_0 = 1;
            break;
        case 2:
            v5->val1_2 = FieldSystem_CheckFlag(fieldSystem, v4->unk_01);
            v5->val1_0 = 1;
            break;
        }

        switch (v4->unk_02) {
        case 1:
            v5->val1_6 = SystemFlag_HandleFirstArrivalToZone(v6, HANDLE_FLAG_CHECK, v4->unk_03);
            v5->val1_4 = 1;
            break;
        case 2:
            v5->val1_6 = FieldSystem_CheckFlag(fieldSystem, v4->unk_03);
            v5->val1_4 = 1;
            break;
        }
    }

    (void)FS_CloseFile(&v0);
    Heap_FreeToHeap(v4);
}

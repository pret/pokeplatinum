#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "struct_defs/special_encounter.h"

#include "overlay025/poketch_system.h"
#include "overlay047/ov47_02256634.h"
#include "overlay047/struct_ov47_02256634_1.h"
#include "overlay047/struct_ov47_02256634_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "inlines.h"
#include "poketch.h"
#include "special_encounter.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov47_02256634_1 unk_04;
    UnkStruct_ov47_02256634 *unk_70;
    PoketchSystem *poketchSys;
    Poketch *poketch;
    Roamer *unk_7C[6];
    u8 unk_94[6];
    u8 unk_9A;
} UnkStruct_ov47_0225621C;

// This is the Marking Map

static void NitroStaticInit(void);

static BOOL ov47_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov47_0225621C(UnkStruct_ov47_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov47_0225634C(UnkStruct_ov47_0225621C *param0);
static void ov47_02256384(SysTask *param0, void *param1);
static void ov47_022563B8(void *param0);
static void ov47_022563C0(UnkStruct_ov47_0225621C *param0, u32 param1);
static BOOL ov47_022563D4(UnkStruct_ov47_0225621C *param0);
static BOOL ov47_02256414(UnkStruct_ov47_0225621C *param0);
static BOOL ov47_022564A8(UnkStruct_ov47_0225621C *param0);
static BOOL ov47_02256500(UnkStruct_ov47_0225621C *param0);
static void ov47_02256534(UnkStruct_ov47_0225621C *param0, int param1);
static BOOL ov47_02256584(UnkStruct_ov47_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov47_022561D4, ov47_022563B8);
}

static BOOL ov47_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov47_0225621C *v0 = (UnkStruct_ov47_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov47_0225621C));

    if (v0 != NULL) {
        if (ov47_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov47_02256384, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov47_0225621C(UnkStruct_ov47_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    int v0;

    param0->poketch = PoketchSystem_GetPoketchData(poketchSys);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_04.unk_0C[v0].unk_03 = 1;
        param0->unk_04.unk_0C[v0].unk_02 = v0;

        Poketch_MapMarkerPos(param0->poketch, v0, &(param0->unk_04.unk_0C[v0].unk_00), &(param0->unk_04.unk_0C[v0].unk_01));

        param0->unk_04.unk_0C[v0].unk_00 += 16;
        param0->unk_04.unk_0C[v0].unk_01 += 16;
        param0->unk_04.unk_0C[v0].unk_03 = 0;
        param0->unk_94[v0] = v0;
    }

    param0->unk_04.unk_24 = 0;
    param0->unk_04.unk_28 = 0;
    param0->unk_04.unk_08 = 0;

    {
        VarsFlags *v1 = SaveData_GetVarsFlags(PoketchSystem_GetSaveData(poketchSys));

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_04.unk_2C[v0] = VarFlags_HiddenLocationsUnlocked(v1, v0);
        }
    }

    {
        SpecialEncounter *v2 = SaveData_GetSpecialEncounters(PoketchSystem_GetSaveData(poketchSys));

        for (v0 = 0; v0 < 6; v0++) {
            param0->unk_7C[v0] = SpecialEncounter_GetRoamer(v2, v0);
            param0->unk_04.unk_3C[v0].unk_00 = Roamer_GetData(param0->unk_7C[v0], ROAMER_DATA_ACTIVE);
            param0->unk_9A = 0;
        }
    }

    inline_ov47_0225621C(PoketchSystem_GetFieldSystem(poketchSys), &(param0->unk_04.unk_00), &(param0->unk_04.unk_04));

    if (ov47_02256634(&(param0->unk_70), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->poketchSys = poketchSys;
        return 1;
    }

    return 0;
}

static void ov47_0225634C(UnkStruct_ov47_0225621C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        Poketch_SetMapMarker(param0->poketch, v0, (param0->unk_04.unk_0C[v0].unk_00 - 16), (param0->unk_04.unk_0C[v0].unk_01 - 16));
    }

    ov47_02256670(param0->unk_70);
    Heap_FreeToHeap(param0);
}

static void ov47_02256384(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov47_0225621C *) = {
        ov47_022563D4,
        ov47_02256414,
        ov47_022564A8,
        ov47_02256500
    };

    UnkStruct_ov47_0225621C *v1 = (UnkStruct_ov47_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov47_0225634C(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov47_022563B8(void *param0)
{
    ((UnkStruct_ov47_0225621C *)param0)->unk_02 = 1;
}

static void ov47_022563C0(UnkStruct_ov47_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 3;
    }

    param0->unk_01 = 0;
}

static BOOL ov47_022563D4(UnkStruct_ov47_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov47_0225686C(param0->unk_70, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov47_02256890(param0->unk_70, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov47_022563C0(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov47_02256414(UnkStruct_ov47_0225621C *param0)
{
    u32 v0, v1;

    if (param0->unk_02) {
        ov47_022563C0(param0, 3);
        return 0;
    }

    param0->unk_04.unk_08 = ov47_02256584(param0);
    param0->unk_04.unk_28 = 0;

    if (PoketchSystem_GetDisplayTappedCoords(&v0, &v1)) {
        int v2, v3, v4, v5;

        for (v2 = 0; v2 < 6; v2++) {
            v3 = param0->unk_94[v2];
            v4 = (int)(param0->unk_04.unk_0C[v3].unk_00) - (int)v0;

            if ((v4 >= -8) && (v4 <= 8)) {
                v5 = (int)(param0->unk_04.unk_0C[v3].unk_01) - (int)(v1);

                if ((v5 >= -8) && (v5 <= 8)) {
                    ov47_02256534(param0, v3);
                    param0->unk_04.unk_0C[v3].unk_00 = v0;
                    param0->unk_04.unk_0C[v3].unk_01 = v1;
                    param0->unk_04.unk_0C[v3].unk_03 = 1;
                    param0->unk_04.unk_24 = v3;
                    param0->unk_04.unk_28 = 1;
                    ov47_022563C0(param0, 2);
                    break;
                }
            }
        }
    }

    return 0;
}

static BOOL ov47_022564A8(UnkStruct_ov47_0225621C *param0)
{
    u32 v0, v1;

    if (param0->unk_02) {
        ov47_022563C0(param0, 3);
        return 0;
    }

    param0->unk_04.unk_08 = ov47_02256584(param0);

    if (PoketchSystem_GetDisplayHeldCoords(&v0, &v1)) {
        param0->unk_04.unk_0C[param0->unk_04.unk_24].unk_00 = v0;
        param0->unk_04.unk_0C[param0->unk_04.unk_24].unk_01 = v1;
    } else {
        param0->unk_04.unk_0C[param0->unk_04.unk_24].unk_03 = 0;
        ov47_022563C0(param0, 1);
    }

    return 0;
}

static BOOL ov47_02256500(UnkStruct_ov47_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov47_0225686C(param0->unk_70, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov47_0225689C(param0->unk_70)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov47_02256534(UnkStruct_ov47_0225621C *param0, int param1)
{
    if (param0->unk_94[0] != param1) {
        int v0, v1;

        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_94[v0] == param1) {
                break;
            }
        }

        while (v0) {
            param0->unk_94[v0] = param0->unk_94[v0 - 1];
            v0--;
        }

        param0->unk_94[0] = param1;

        for (v0 = 0; v0 < 6; v0++) {
            v1 = param0->unk_94[v0];
            param0->unk_04.unk_0C[v1].unk_02 = v0;
        }
    }
}

static BOOL ov47_02256584(UnkStruct_ov47_0225621C *param0)
{
    BOOL v0 = 0;

    if (PoketchSystem_IsPlayerMoving(param0->poketchSys)) {
        int v1, v2;

        inline_ov47_0225621C(PoketchSystem_GetFieldSystem(param0->poketchSys), &v1, &v2);

        if ((v1 != param0->unk_04.unk_00) || (v2 != param0->unk_04.unk_04)) {
            param0->unk_04.unk_00 = v1;
            param0->unk_04.unk_04 = v2;
            v0 = 1;
        }

        if (++(param0->unk_9A) >= 5) {
            int v3;

            for (v3 = 0; v3 < 6; v3++) {
                if (param0->unk_04.unk_3C[v3].unk_00 == 0) {
                    param0->unk_04.unk_3C[v3].unk_00 = Roamer_GetData(param0->unk_7C[v3], ROAMER_DATA_ACTIVE);

                    if (param0->unk_04.unk_3C[v3].unk_00) {
                        v0 = 1;
                    }
                }

                if (param0->unk_04.unk_3C[v3].unk_00) {
                    param0->unk_04.unk_3C[v3].unk_04 = Roamer_GetData(param0->unk_7C[v3], ROAMER_DATA_MAP_ID);
                    v0 = 1;
                }
            }
        }
    }

    return v0;
}

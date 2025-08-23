#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_system.h"
#include "overlay048/ov48_0225650C.h"
#include "overlay048/struct_ov48_0225650C_1.h"
#include "overlay048/struct_ov48_0225650C_decl.h"

#include "berry_patches.h"
#include "bg_window.h"
#include "heap.h"
#include "inlines.h"
#include "savedata_misc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_vars.h"
#include "vars_flags.h"

static const struct {
    u8 unk_00;
    u8 unk_01;
} Unk_ov48_02256A38[] = {
    { 0x5, 0x14 },
    { 0x5, 0x14 },
    { 0x6, 0x14 },
    { 0x6, 0x14 },
    { 0x6, 0x13 },
    { 0x6, 0x13 },
    { 0x7, 0x11 },
    { 0x7, 0x11 },
    { 0x7, 0x11 },
    { 0x7, 0x11 },
    { 0x5, 0x12 },
    { 0x5, 0x12 },
    { 0x5, 0x12 },
    { 0x5, 0x12 },
    { 0x8, 0x10 },
    { 0x8, 0x10 },
    { 0x8, 0x10 },
    { 0x8, 0x10 },
    { 0x9, 0x13 },
    { 0x9, 0x13 },
    { 0x9, 0x15 },
    { 0x9, 0x15 },
    { 0x9, 0x16 },
    { 0x9, 0x16 },
    { 0x9, 0x16 },
    { 0x9, 0x16 },
    { 0xD, 0x16 },
    { 0xD, 0x16 },
    { 0xD, 0x16 },
    { 0xD, 0x16 },
    { 0x10, 0x16 },
    { 0x10, 0x16 },
    { 0x11, 0x15 },
    { 0x11, 0x15 },
    { 0x11, 0x14 },
    { 0x11, 0x14 },
    { 0x11, 0x14 },
    { 0x11, 0x14 },
    { 0x11, 0x13 },
    { 0x11, 0x13 },
    { 0x11, 0x13 },
    { 0x11, 0x13 },
    { 0xF, 0x10 },
    { 0xF, 0x10 },
    { 0xF, 0x10 },
    { 0xF, 0x10 },
    { 0xD, 0x10 },
    { 0xD, 0x10 },
    { 0xD, 0x10 },
    { 0xD, 0x10 },
    { 0xE, 0x18 },
    { 0xE, 0x18 },
    { 0xE, 0x19 },
    { 0xE, 0x19 },
    { 0x11, 0x1A },
    { 0x11, 0x1A },
    { 0x11, 0x1A },
    { 0x11, 0x1A },
    { 0x13, 0x19 },
    { 0x13, 0x19 },
    { 0x13, 0x19 },
    { 0x13, 0x19 },
    { 0x14, 0x19 },
    { 0x14, 0x19 },
    { 0x14, 0x19 },
    { 0x14, 0x19 },
    { 0x16, 0x14 },
    { 0x16, 0x14 },
    { 0x16, 0x14 },
    { 0x16, 0x14 },
    { 0x13, 0x12 },
    { 0x13, 0x12 },
    { 0x14, 0x12 },
    { 0x14, 0x12 },
    { 0x2, 0x17 },
    { 0x2, 0x17 },
    { 0x2, 0x17 },
    { 0x2, 0x17 },
    { 0x8, 0x1C },
    { 0x8, 0x1C },
    { 0x8, 0x1C },
    { 0x8, 0x1C },
    { 0x17, 0x18 },
    { 0x17, 0x18 },
    { 0x17, 0x18 },
    { 0x17, 0x18 },
    { 0x1C, 0x10 },
    { 0x1C, 0x10 },
    { 0x1C, 0x10 },
    { 0x1C, 0x10 },
    { 0x13, 0xD },
    { 0x14, 0xD },
    { 0x14, 0xD },
    { 0x14, 0xD },
    { 0x13, 0xA },
    { 0x13, 0xA },
    { 0x13, 0xA },
    { 0x13, 0xA },
    { 0x15, 0xA },
    { 0x15, 0xA },
    { 0x15, 0xA },
    { 0x15, 0xA },
    { 0x18, 0xC },
    { 0x18, 0xC },
    { 0x18, 0xC },
    { 0x18, 0xC },
    { 0x19, 0xD },
    { 0x19, 0xD },
    { 0x19, 0xD },
    { 0x19, 0xD },
    { 0x19, 0xE },
    { 0x19, 0xE },
    { 0x19, 0xE },
    { 0x19, 0xE },
    { 0x15, 0xD },
    { 0x15, 0xD },
    { 0x15, 0xD },
    { 0x15, 0xD }
};

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov48_0225650C_1 unk_04;
    UnkStruct_ov48_0225650C *unk_A8;
    PoketchSystem *poketchSys;
} UnkStruct_ov48_0225621C;

static void NitroStaticInit(void);

static BOOL ov48_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov48_0225621C(UnkStruct_ov48_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov48_022562A8(UnkStruct_ov48_0225621C *param0);
static void ov48_022562BC(SysTask *param0, void *param1);
static void ov48_022562F0(void *param0);
static void ov48_022562F8(UnkStruct_ov48_0225621C *param0, u32 param1);
static BOOL ov48_0225630C(UnkStruct_ov48_0225621C *param0);
static BOOL ov48_02256358(UnkStruct_ov48_0225621C *param0);
static BOOL ov48_022563D0(UnkStruct_ov48_0225621C *param0);
static int ov48_02256408(UnkStruct_ov48_0225621C *param0);
static BOOL ov48_02256478(UnkStruct_ov48_0225621C *param0);
static void ov48_022564E0(UnkStruct_ov48_0225621C *param0, PoketchSystem *poketchSys);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov48_022561D4, ov48_022562F0);
}

static BOOL ov48_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov48_0225621C *v0 = (UnkStruct_ov48_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov48_0225621C));

    if (v0 != NULL) {
        if (ov48_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov48_022562BC, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_Free(v0);
    }

    return 0;
}

static BOOL ov48_0225621C(UnkStruct_ov48_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    param0->poketchSys = poketchSys;
    param0->unk_04.unk_08 = ov48_02256408(param0);

    inline_ov47_0225621C(PoketchSystem_GetFieldSystem(param0->poketchSys), &(param0->unk_04.unk_00), &(param0->unk_04.unk_04));

    ov48_022564E0(param0, poketchSys);

    if (ov48_0225650C(&(param0->unk_A8), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        return 1;
    }

    return 0;
}

static void ov48_022562A8(UnkStruct_ov48_0225621C *param0)
{
    ov48_0225654C(param0->unk_A8);
    Heap_Free(param0);
}

static void ov48_022562BC(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov48_0225621C *) = {
        ov48_0225630C,
        ov48_02256358,
        ov48_022563D0
    };

    UnkStruct_ov48_0225621C *v1 = (UnkStruct_ov48_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov48_022562A8(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov48_022562F0(void *param0)
{
    ((UnkStruct_ov48_0225621C *)param0)->unk_02 = 1;
}

static void ov48_022562F8(UnkStruct_ov48_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov48_0225630C(UnkStruct_ov48_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov48_02256558(param0->unk_A8, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov48_0225657C(param0->unk_A8, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov48_022562F8(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov48_02256358(UnkStruct_ov48_0225621C *param0)
{
    if (param0->unk_02) {
        ov48_022562F8(param0, 2);
        return 0;
    }

    param0->unk_04.unk_90 = ov48_02256478(param0);

    if (ov48_0225657C(param0->unk_A8, 2)) {
        u32 v0, v1;

        if (PoketchSystem_GetDisplayTappedCoords(&v0, &v1)) {
            if (((u32)(v0 - 16) < (u32)192) & ((u32)(v1 - 16) < (u32)192)) {
                param0->unk_04.unk_08 = ov48_02256408(param0);
                ov48_02256558(param0->unk_A8, 2);
            }
        }
    }

    return 0;
}

static BOOL ov48_022563D0(UnkStruct_ov48_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov48_02256558(param0->unk_A8, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov48_02256588(param0->unk_A8)) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov48_02256408(UnkStruct_ov48_0225621C *param0)
{
    BerryPatch *v0 = MiscSaveBlock_GetBerryPatches(PoketchSystem_GetSaveData(param0->poketchSys));
    int v1, v2;

    for (v1 = 0, v2 = 0; v1 < (NELEMS(Unk_ov48_02256A38)); v1++) {
        if ((BerryPatches_IsPatchGrowing(v0, v1) == 1) && (BerryPatches_GetPatchGrowthStage(v0, v1) == 5)) {
            param0->unk_04.unk_0C[v2].unk_00 = Unk_ov48_02256A38[v1].unk_00;
            param0->unk_04.unk_0C[v2].unk_01 = Unk_ov48_02256A38[v1].unk_01;

            while (((v1 + 1) < (NELEMS(Unk_ov48_02256A38))) && (param0->unk_04.unk_0C[v2].unk_00 == Unk_ov48_02256A38[v1 + 1].unk_00) && (param0->unk_04.unk_0C[v2].unk_01 == Unk_ov48_02256A38[v1 + 1].unk_01)) {
                v1++;
            }

            if (++v2 >= 64) {
                break;
            }
        }
    }

    return v2;
}

static BOOL ov48_02256478(UnkStruct_ov48_0225621C *param0)
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
    }

    return v0;
}

static void ov48_022564E0(UnkStruct_ov48_0225621C *param0, PoketchSystem *poketchSys)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(PoketchSystem_GetSaveData(poketchSys));
    int v1;

    for (v1 = 0; v1 < HIDDEN_LOCATION_MAX; v1++) {
        param0->unk_04.unk_94[v1] = SystemVars_CheckHiddenLocation(v0, v1);
    }
}

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "field/field_system_decl.h"
#include "overlay006/radar_chain_records.h"
#include "overlay053/ov53_02256420.h"
#include "overlay053/struct_ov53_02256420_1.h"
#include "overlay053/struct_ov53_02256420_decl.h"
#include "poketch/poketch_button.h"
#include "poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

// This is the Trainer Counter.

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov53_02256420_1 unk_04;
    UnkStruct_ov53_02256420 *unk_2C;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 unk_38;
    u32 unk_3C;
} UnkStruct_ov53_0225621C;

static void NitroStaticInit(void);

static BOOL ov53_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov53_0225621C(UnkStruct_ov53_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov53_022562B8(UnkStruct_ov53_0225621C *param0);
static void ov53_022562D0(SysTask *param0, void *param1);
static void ov53_0225630C(void *param0);
static void ov53_02256314(u32 param0, u32 param1, u32 param2, void *param3);
static void ov53_0225631C(UnkStruct_ov53_0225621C *param0, u32 param1);
static BOOL ov53_02256330(UnkStruct_ov53_0225621C *param0);
static BOOL ov53_02256370(UnkStruct_ov53_0225621C *param0);
static BOOL ov53_022563EC(UnkStruct_ov53_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov53_022561D4, ov53_0225630C);
}

static BOOL ov53_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov53_0225621C *v0 = (UnkStruct_ov53_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov53_0225621C));

    if (v0 != NULL) {
        if (ov53_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov53_022562D0, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov53_0225621C(UnkStruct_ov53_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        { (80 - (36 / 2)),
            (80 + (36 / 2)),
            (112 - (48 / 2)),
            (112 + (48 / 2)) },
        { (96 - (36 / 2)),
            (96 + (36 / 2)),
            (176 - (48 / 2)),
            (176 + (48 / 2)) },
        { (104 - (36 / 2)),
            (104 + (36 / 2)),
            (48 - (48 / 2)),
            (48 + (48 / 2)) }
    };
    FieldSystem *fieldSystem;
    int v2;

    fieldSystem = PoketchSystem_GetFieldSystem(poketchSys);
    param0->unk_04.unk_04 = RadarChainRecords_GetActiveChain(fieldSystem);

    if (param0->unk_04.unk_04) {
        param0->unk_04.unk_00 = GetRadarSpecies(fieldSystem);
    } else {
        param0->unk_04.unk_00 = 0;
    }

    for (v2 = 0; v2 < 3; v2++) {
        param0->unk_04.unk_14[v2] = RadarChainRecords_GetChainCount(fieldSystem, v2);
        param0->unk_04.unk_08[v2] = RadarChainRecords_GetSpecies(fieldSystem, v2);
    }

    param0->unk_04.unk_20 = RadarChainRecords_GetNumFilledSlots(fieldSystem);

    if (ov53_02256420(&(param0->unk_2C), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov53_02256314, param0, 8);
        param0->unk_38 = 0;
        param0->unk_3C = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov53_022562B8(UnkStruct_ov53_0225621C *param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
    ov53_02256454(param0->unk_2C);

    Heap_FreeToHeap(param0);
}

static void ov53_022562D0(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov53_0225621C *) = {
        ov53_02256330,
        ov53_02256370,
        ov53_022563EC
    };

    UnkStruct_ov53_0225621C *v1 = (UnkStruct_ov53_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov53_022562B8(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov53_0225630C(void *param0)
{
    ((UnkStruct_ov53_0225621C *)param0)->unk_02 = 1;
}

static void ov53_02256314(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov53_0225621C *v0 = (UnkStruct_ov53_0225621C *)param3;

    v0->unk_3C = param0;
    v0->unk_38 = param1;
}

static void ov53_0225631C(UnkStruct_ov53_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov53_02256330(UnkStruct_ov53_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov53_02256460(param0->unk_2C, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov53_02256484(param0->unk_2C, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov53_0225631C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov53_02256370(UnkStruct_ov53_0225621C *param0)
{
    if (param0->unk_02) {
        ov53_0225631C(param0, 2);
        return 0;
    }

    {
        FieldSystem *fieldSystem;
        int v1;

        fieldSystem = PoketchSystem_GetFieldSystem(param0->poketchSys);
        param0->unk_04.unk_04 = RadarChainRecords_GetActiveChain(fieldSystem);

        if (param0->unk_04.unk_04 == 0) {
            v1 = 0;
        } else {
            v1 = GetRadarSpecies(fieldSystem);
        }

        if (v1 != param0->unk_04.unk_00) {
            param0->unk_04.unk_00 = v1;
            ov53_02256460(param0->unk_2C, 2);
            return 0;
        }
    }

    if (ov53_02256484(param0->unk_2C, 3)) {
        if (param0->unk_38 == 1) {
            if (param0->unk_3C < param0->unk_04.unk_20) {
                int v2 = param0->unk_3C;

                if (param0->unk_04.unk_14[v2]) {
                    param0->unk_04.unk_24 = v2;
                    ov53_02256460(param0->unk_2C, 3);
                }
            }

            param0->unk_38 = 0;
        }
    }

    return 0;
}

static BOOL ov53_022563EC(UnkStruct_ov53_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov53_02256460(param0->unk_2C, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov53_02256490(param0->unk_2C)) {
            return 1;
        }
        break;
    }

    return 0;
}

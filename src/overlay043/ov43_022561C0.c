#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_button.h"
#include "overlay025/poketch_system.h"
#include "overlay043/ov43_02256544.h"
#include "overlay043/struct_ov43_02256544_1.h"
#include "overlay043/struct_ov43_02256544_decl.h"

#include "app_storage_buffer.h"
#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u32 unk_04;
    UnkStruct_ov43_02256544_1 unk_08;
    UnkStruct_ov43_02256544 *unk_14;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 unk_20;
} UnkStruct_ov43_0225621C;

static void NitroStaticInit(void);

static BOOL ov43_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov43_0225621C(UnkStruct_ov43_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov43_02256288(UnkStruct_ov43_02256544_1 *param0);
static void ov43_022562A8(UnkStruct_ov43_0225621C *param0);
static void ov43_022562CC(SysTask *param0, void *param1);
static void ov43_02256308(u32 param0, u32 param1, u32 param2, void *param3);
static void ov43_02256310(void *param0);
static void ov43_02256318(UnkStruct_ov43_0225621C *param0, u32 param1);
static BOOL ov43_0225632C(UnkStruct_ov43_0225621C *param0);
static BOOL ov43_0225636C(UnkStruct_ov43_0225621C *param0);
static BOOL ov43_02256478(UnkStruct_ov43_0225621C *param0);
static u32 ov43_022564AC(u32 param0, u32 param1, u32 param2);
static u32 ov43_022564EC(s32 param0, s32 param1, BOOL param2);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov43_022561D4, ov43_02256310);
}

static BOOL ov43_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov43_0225621C *v0 = (UnkStruct_ov43_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov43_0225621C));

    if (v0 != NULL) {
        if (ov43_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov43_022562CC, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov43_0225621C(UnkStruct_ov43_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        { 112, 144, 16, 40 },
        { 112, 144, 104, 128 },
        { 24, 56, 96, 120 },
        { 24, 56, 184, 208 },
        { 56, 88, 96, 120 },
        { 56, 88, 184, 208 }
    };

    param0->unk_04 = param3;

    if (AppStorageBuffer_Read32(param3, &(param0->unk_08), sizeof(param0->unk_08)) == 0) {
        ov43_02256288(&(param0->unk_08));
    }

    if (ov43_02256544(&(param0->unk_14), &(param0->unk_08), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov43_02256308, param0, 8);
        param0->unk_20 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov43_02256288(UnkStruct_ov43_02256544_1 *param0)
{
    param0->unk_00 = 0;
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0A = 18;
    param0->unk_04 = ov43_022564AC(param0->unk_06, param0->unk_08, param0->unk_0A);
}

static void ov43_022562A8(UnkStruct_ov43_0225621C *param0)
{
    AppStorageBuffer_Write32(param0->unk_04, &(param0->unk_08), sizeof(param0->unk_08));
    PoketchButtonManager_Free(param0->buttonManager);
    ov43_02256680(param0->unk_14);
    Heap_FreeToHeap(param0);
}

static void ov43_022562CC(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov43_0225621C *) = {
        ov43_0225632C,
        ov43_0225636C,
        ov43_02256478
    };

    UnkStruct_ov43_0225621C *v1 = (UnkStruct_ov43_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov43_022562A8(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov43_02256308(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov43_0225621C *v0 = (UnkStruct_ov43_0225621C *)param3;

    v0->unk_08.unk_00 = param0;
    v0->unk_20 = param1;
}

static void ov43_02256310(void *param0)
{
    ((UnkStruct_ov43_0225621C *)param0)->unk_02 = 1;
}

static void ov43_02256318(UnkStruct_ov43_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov43_0225632C(UnkStruct_ov43_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov43_022566B0(param0->unk_14, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov43_022566D4(param0->unk_14, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov43_02256318(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov43_0225636C(UnkStruct_ov43_0225621C *param0)
{
    if (param0->unk_02) {
        if (ov43_022566E0(param0->unk_14)) {
            ov43_02256318(param0, 2);
        }

        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (param0->unk_20 == 1) {
            ov43_022566B0(param0->unk_14, 2);
            param0->unk_01++;
        }
        break;
    case 1:
        if (param0->unk_20 == 2) {
            ov43_022566B0(param0->unk_14, 3);
            param0->unk_01 = 0;
            break;
        }

        if (param0->unk_20 == 3) {
            switch (param0->unk_08.unk_00) {
            case 0:
                param0->unk_08.unk_06 = ov43_022564EC(param0->unk_08.unk_06, -1, 0);
                break;
            case 1:
                param0->unk_08.unk_06 = ov43_022564EC(param0->unk_08.unk_06, 1, 0);
                break;
            case 2:
                param0->unk_08.unk_08 = ov43_022564EC(param0->unk_08.unk_08, -1, 0);
                break;
            case 3:
                param0->unk_08.unk_08 = ov43_022564EC(param0->unk_08.unk_08, 1, 0);
                break;
            case 4:
                param0->unk_08.unk_0A = ov43_022564EC(param0->unk_08.unk_0A, -1, 1);
                break;
            case 5:
                param0->unk_08.unk_0A = ov43_022564EC(param0->unk_08.unk_0A, 1, 1);
                break;
            }

            param0->unk_08.unk_04 = ov43_022564AC(param0->unk_08.unk_06, param0->unk_08.unk_08, param0->unk_08.unk_0A);
            ov43_022566B0(param0->unk_14, 3);
            ov43_022566B0(param0->unk_14, 4);
            param0->unk_01++;
            break;
        }
        break;
    case 2:
        if (ov43_022566E0(param0->unk_14)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov43_02256478(UnkStruct_ov43_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov43_022566B0(param0->unk_14, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov43_022566E0(param0->unk_14)) {
            return 1;
        }
        break;
    }

    return 0;
}

static u32 ov43_022564AC(u32 param0, u32 param1, u32 param2)
{
    static const s8 v0[][18] = {
        { 0, 0, 0, 0, 0, -1, 0, -10, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 1, 0, -1, -1, 0, 1, -1, -10, 1, 0, 0, 0, 0, 0, -1, 1, 0, 1 },
        { 0, 1, 0, 0, 0, -1, 1, 0, -1, 0, 0, 0, 1, -1, 0, 0, 0, 0 },
        { 0, 0, 0, -1, -1, -1, 0, -1, -10, 0, 0, 0, 1, 0, 0, 0, 0, 0 },
        { 0, 0, -10, 1, 0, 1, -1, 0, 1, 0, 1, 0, -1, 1, 0, 0, 0, 0 },
        { 0, -1, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, 0, 0, 0, 1, 0, 0 },
        { 0, -1, -1, -1, 0, 0, 0, -1, -1, 0, -1, 0, 1, 0, 1, 0, 0, 1 },
        { -10, 0, 0, 0, 0, 0, 0, 1, -1, 0, 0, 0, 0, 0, 1, 0, 0, -1 },
        { 0, 0, 0, 0, 0, 1, 0, 0, -1, 0, -1, -1, 0, -1, 0, 1, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, -1, 1, 0, 1, 0, -1, -1, 1, 0, 0, 1, -1, 0 },
        { 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, -1, -1, 0, 0, 0, -1, 0 },
        { 0, 0, -1, -1, 1, 1, -1, 0, -1, 0, -1, 1, -1, 0, 0, 0, -1, 0 },
        { 0, 0, 1, 0, -10, 0, 0, 0, 0, 0, 0, 1, -1, -1, 0, 0, -1, 0 },
        { 0, 1, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, -10 },
        { 0, 0, 1, 0, 1, 0, 0, 0, -1, 0, -1, -1, 1, 0, 0, -1, 1, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0 },
        { 0, -1, 0, 0, 0, 0, 0, 1, -1, 0, 0, 0, 0, 0, 1, 0, 0, -1 }
    };

    if ((v0[param0][param1] == -10) || ((param2 != 18) && (v0[param0][param2] == -10))) {
        return 0;
    } else {
        u32 v1 = 3;

        v1 += v0[param0][param1];

        if ((param2 != 18) && (param2 != param1)) {
            v1 += v0[param0][param2];
        }

        return v1;
    }
}

static u32 ov43_022564EC(s32 param0, s32 param1, BOOL param2)
{
    static const u8 v0[] = {
        0,
        10,
        11,
        13,
        12,
        15,
        1,
        3,
        4,
        2,
        14,
        6,
        5,
        7,
        16,
        17,
        8
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (v0[v1] == param0) {
            break;
        }
    }

    if (v1 == NELEMS(v0)) {
        return (param1 > 0) ? v0[0] : v0[(NELEMS(v0) - 1)];
    }

    v1 += param1;

    if (v1 >= (int)(NELEMS(v0))) {
        if (param2) {
            return 18;
        }

        v1 = 0;
    }

    if (v1 < 0) {
        if (param2) {
            return 18;
        }

        v1 = NELEMS(v0) - 1;
    }

    return v0[v1];
}

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "overlay027/ov27_0225680C.h"
#include "overlay027/struct_ov27_0225680C_1.h"
#include "overlay027/struct_ov27_0225680C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "unk_02022844.h"

typedef struct {
    BOOL unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u64 unk_14;
    u64 unk_1C;
} UnkStruct_ov27_0225621C_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06;
    u32 unk_08;
    u64 unk_0C;
    u64 unk_14;
    UnkStruct_ov27_0225680C_1 unk_1C;
    UnkStruct_ov27_0225621C_sub1 unk_38;
    PoketchButtonManager *buttonManager;
    UnkStruct_ov27_0225680C *unk_60;
    PoketchSystem *poketchSys;
} UnkStruct_ov27_0225621C;

static void NitroStaticInit(void);

static BOOL ov27_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov27_0225621C(UnkStruct_ov27_0225621C *param0, BgConfig *param1, u32 param2);
static void ov27_022562AC(UnkStruct_ov27_0225621C *param0);
static void ov27_022562FC(SysTask *param0, void *param1);
static void ov27_02256358(void *param0);
static void ov27_02256360(UnkStruct_ov27_0225621C *param0, u32 param1);
static BOOL ov27_0225637C(UnkStruct_ov27_0225621C *param0);
static BOOL ov27_022563CC(UnkStruct_ov27_0225621C *param0);
static BOOL ov27_0225644C(UnkStruct_ov27_0225621C *param0);
static BOOL ov27_022564D0(UnkStruct_ov27_0225621C *param0);
static BOOL ov27_02256534(UnkStruct_ov27_0225621C *param0);
static BOOL ov27_022565D0(UnkStruct_ov27_0225621C *param0);
static BOOL ov27_02256608(UnkStruct_ov27_0225621C *param0);
static void ov27_02256654(UnkStruct_ov27_0225621C *param0);
static void ov27_02256660(u32 param0, u32 param1, u32 param2, void *param3);
static void ov27_02256664(UnkStruct_ov27_0225621C *param0);
static void ov27_02256680(UnkStruct_ov27_0225621C *param0);
static void ov27_022566C4(UnkStruct_ov27_0225621C *param0);
static void ov27_022566D8(UnkStruct_ov27_0225621C *param0, UnkStruct_ov27_0225680C_1 *param1);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov27_022561D4, ov27_02256358);
}

static BOOL ov27_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov27_0225621C *v0 = (UnkStruct_ov27_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov27_0225621C));

    if (v0 != NULL) {
        if (ov27_0225621C(v0, param2, param3)) {
            v0->poketchSys = poketchSys;

            if (SysTask_Start(ov27_022562FC, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        } else {
            Heap_FreeToHeap(v0);
            v0 = NULL;
        }
    }

    return 0;
}

static BOOL ov27_0225621C(UnkStruct_ov27_0225621C *param0, BgConfig *param1, u32 param2)
{
    param0->unk_08 = param2;

    if (PoketchMemory_Read32(param2, &(param0->unk_38), sizeof(param0->unk_38))) {
        param0->unk_0C = param0->unk_38.unk_14;
        param0->unk_14 = param0->unk_38.unk_1C;
        param0->unk_1C.unk_14 = param0->unk_38.unk_04;
        param0->unk_1C.unk_10 = param0->unk_38.unk_08;
        param0->unk_1C.unk_0C = param0->unk_38.unk_0C;
        param0->unk_1C.unk_08 = param0->unk_38.unk_10;
        param0->unk_1C.unk_00 = param0->unk_38.unk_00;

        if (param0->unk_1C.unk_00) {
            param0->unk_1C.unk_18 = 2;
        } else {
            param0->unk_1C.unk_18 = 0;
        }
    } else {
        ov27_02256664(param0);
        param0->unk_1C.unk_18 = 0;
    }

    if (ov27_0225680C(&(param0->unk_60), &(param0->unk_1C), param1)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_03 = param0->unk_00;
        param0->unk_02 = 0;

        if (ov27_02256608(param0)) {
            return 1;
        }
    }

    return 0;
}

static void ov27_022562AC(UnkStruct_ov27_0225621C *param0)
{
    param0->unk_38.unk_14 = param0->unk_0C;
    param0->unk_38.unk_1C = param0->unk_14;
    param0->unk_38.unk_04 = param0->unk_1C.unk_14;
    param0->unk_38.unk_08 = param0->unk_1C.unk_10;
    param0->unk_38.unk_0C = param0->unk_1C.unk_0C;
    param0->unk_38.unk_10 = param0->unk_1C.unk_08;
    param0->unk_38.unk_00 = param0->unk_1C.unk_00;

    PoketchMemory_Write32(param0->unk_08, &(param0->unk_38), sizeof(param0->unk_38));

    ov27_02256654(param0);
    ov27_02256890(param0->unk_60);

    Heap_FreeToHeap(param0);
}

static void ov27_022562FC(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov27_0225621C *) = {
        ov27_0225637C,
        ov27_022563CC,
        ov27_0225644C,
        ov27_022564D0,
        ov27_02256534,
        ov27_022565D0
    };

    UnkStruct_ov27_0225621C *v1 = (UnkStruct_ov27_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v1->unk_02 && (v1->unk_00 != 5)) {
            ov27_02256360(v1, 5);
            v1->unk_02 = 0;
        }

        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);
        ov27_022566D8(v1, &(v1->unk_1C));

        if (v0[v1->unk_00](v1)) {
            ov27_022562AC(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov27_02256358(void *param0)
{
    ((UnkStruct_ov27_0225621C *)param0)->unk_02 = 1;
}

static void ov27_02256360(UnkStruct_ov27_0225621C *param0, u32 param1)
{
    param0->unk_03 = param0->unk_00;

    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 5;
        param0->unk_02 = 0;
    }

    param0->unk_01 = 0;
}

static BOOL ov27_0225637C(UnkStruct_ov27_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov27_022569C8(param0->unk_60, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov27_022569EC(param0->unk_60, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);

            if (param0->unk_1C.unk_00) {
                ov27_02256360(param0, 2);
            } else {
                ov27_02256360(param0, 1);
            }
        }
        break;
    }

    return 0;
}

static BOOL ov27_022563CC(UnkStruct_ov27_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        if (param0->unk_04 == 1) {
            param0->unk_1C.unk_18 = 1;
            ov27_022569C8(param0->unk_60, 1);
            param0->unk_01++;
        }
        break;
    case 1:
        switch (param0->unk_04) {
        case 2:
            param0->unk_1C.unk_18 = 0;
            ov27_022569C8(param0->unk_60, 1);
            param0->unk_01--;
            break;
        case 3:
            param0->unk_1C.unk_18 = 2;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256680(param0);
            ov27_02256360(param0, 2);
            break;
        case 5:
            param0->unk_1C.unk_18 = 3;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256360(param0, 3);
            break;
        }
        break;
    }

    return 0;
}

static BOOL ov27_0225644C(UnkStruct_ov27_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        if (param0->unk_04 == 1) {
            param0->unk_1C.unk_18 = 1;
            ov27_022566C4(param0);
            ov27_022569C8(param0->unk_60, 1);
            param0->unk_01++;
        }
        break;
    case 1:
        switch (param0->unk_04) {
        case 2:
            param0->unk_1C.unk_18 = 0;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256360(param0, 1);
            break;
        case 3:
            param0->unk_1C.unk_18 = 0;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256360(param0, 1);
            break;
        case 5:
            param0->unk_1C.unk_18 = 3;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256360(param0, 3);
            break;
        }
        break;
    }

    return 0;
}

static BOOL ov27_022564D0(UnkStruct_ov27_0225621C *param0)
{
    switch (param0->unk_04) {
    case 3:
        if (param0->unk_03 == 1) {
            ov27_02256680(param0);
            param0->unk_1C.unk_18 = 2;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256360(param0, 2);
            break;
        }
    case 2:
        param0->unk_1C.unk_18 = 0;
        ov27_022569C8(param0->unk_60, 1);
        ov27_02256360(param0, 1);
        break;
    case 6:
        param0->unk_1C.unk_18 = 4;
        ov27_022569C8(param0->unk_60, 1);
        ov27_02256360(param0, 4);
        break;
    }

    return 0;
}

static BOOL ov27_02256534(UnkStruct_ov27_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_06 = 0;
        param0->unk_01++;
    case 1:
        if (++(param0->unk_06) >= 90) {
            param0->unk_1C.unk_18 = 5;
            ov27_022569C8(param0->unk_60, 1);
            param0->unk_06 = 0;
            param0->unk_01++;
        }
        break;
    case 2:
        if (++(param0->unk_06) >= 60) {
            param0->unk_1C.unk_18 = 6;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256664(param0);
            param0->unk_06 = 0;
            param0->unk_01++;
        }
        break;
    case 3:
        if (ov27_022569EC(param0->unk_60, 1)) {
            param0->unk_1C.unk_18 = 0;
            ov27_022569C8(param0->unk_60, 1);
            ov27_02256360(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov27_022565D0(UnkStruct_ov27_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_1C.unk_18 = 7;
        ov27_022569C8(param0->unk_60, 3);
        param0->unk_01++;
        break;
    case 1:
        if (ov27_022569F8(param0->unk_60)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov27_02256608(UnkStruct_ov27_0225621C *param0)
{
    static const TouchScreenHitTable v0[] = {
        { TOUCHSCREEN_USE_CIRCLE, 112, 112, 39 },
    };

    param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov27_02256660, param0, HEAP_ID_POKETCH_APP);

    if (param0->buttonManager != NULL) {
        PoketchButtonManager_SetButtonTimer(param0->buttonManager, 0, 0, 15);
        PoketchButtonManager_SetButtonTimer(param0->buttonManager, 0, 1, 75);
        param0->unk_04 = 0;
        return 1;
    }

    return 0;
}

static void ov27_02256654(UnkStruct_ov27_0225621C *param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
}

static void ov27_02256660(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov27_0225621C *v0 = (UnkStruct_ov27_0225621C *)param3;
    v0->unk_04 = param1;
}

static void ov27_02256664(UnkStruct_ov27_0225621C *param0)
{
    param0->unk_1C.unk_00 = 0;
    param0->unk_1C.unk_04 = 1;
    param0->unk_1C.unk_08 = 0;
    param0->unk_1C.unk_0C = 0;
    param0->unk_1C.unk_10 = 0;
    param0->unk_1C.unk_14 = 0;
    param0->unk_0C = 0;
    param0->unk_14 = 0;
}

static void ov27_02256680(UnkStruct_ov27_0225621C *param0)
{
    if (param0->unk_0C) {
        param0->unk_0C += (sub_0202293C() - param0->unk_14);
    } else {
        param0->unk_0C = sub_0202293C();
    }

    param0->unk_1C.unk_00 = 1;
    param0->unk_1C.unk_04 = 0;
}

static void ov27_022566C4(UnkStruct_ov27_0225621C *param0)
{
    param0->unk_14 = sub_0202293C();
    param0->unk_1C.unk_00 = 0;
}

static void ov27_022566D8(UnkStruct_ov27_0225621C *param0, UnkStruct_ov27_0225680C_1 *param1)
{
    if (param1->unk_00) {
        u64 v0, v1, v2;

        v2 = sub_0202293C() - param0->unk_0C;

        CP_SetDiv64_32(sub_02022944(v2), 1000);

        v0 = CP_GetDivResult64();
        v1 = CP_GetDivRemainder64();

        CP_SetDiv64_32(v1, 10);
        param1->unk_08 = CP_GetDivResult32();

        CP_SetDiv64_32(v0, 60);

        v0 = CP_GetDivResult64();
        param1->unk_0C = CP_GetDivRemainder32();

        CP_SetDiv64_32(v0, 60);

        v0 = CP_GetDivResult64();
        param1->unk_10 = CP_GetDivRemainder32();

        if (v0 >= 24) {
            CP_SetDiv64_32(v0, 24);
            v0 = CP_GetDivRemainder32();
        }

        param1->unk_14 = (u32)v0;
    }
}

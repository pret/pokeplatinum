#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_system.h"
#include "overlay042/ov42_022563D4.h"
#include "overlay042/struct_ov42_022563D4_1.h"
#include "overlay042/struct_ov42_022563D4_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "math_util.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u32 unk_04;
    UnkStruct_ov42_022563D4_1 unk_08;
    UnkStruct_ov42_022563D4 *unk_0C;
    PoketchSystem *poketchSys;
} UnkStruct_ov42_0225621C;

static void NitroStaticInit(void);

static BOOL ov42_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov42_0225621C(UnkStruct_ov42_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov42_02256260(UnkStruct_ov42_0225621C *param0);
static void ov42_02256280(SysTask *param0, void *param1);
static void ov42_022562B4(void *param0);
static void ov42_022562BC(UnkStruct_ov42_0225621C *param0, u32 param1);
static BOOL ov42_022562D0(UnkStruct_ov42_0225621C *param0);
static BOOL ov42_02256310(UnkStruct_ov42_0225621C *param0);
static BOOL ov42_02256364(UnkStruct_ov42_0225621C *param0);
static BOOL ov42_02256398(void);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov42_022561D4, ov42_022562B4);
}

static BOOL ov42_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov42_0225621C *v0 = (UnkStruct_ov42_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov42_0225621C));

    if (v0 != NULL) {
        if (ov42_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov42_02256280, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov42_0225621C(UnkStruct_ov42_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    param0->unk_04 = param3;

    if (PoketchMemory_Read32(param3, &(param0->unk_08), sizeof(param0->unk_08)) == FALSE) {
        param0->unk_08.unk_00 = 1;
    }

    if (ov42_022563D4(&(param0->unk_0C), &(param0->unk_08), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->poketchSys = poketchSys;
        return 1;
    }

    return 0;
}

static void ov42_02256260(UnkStruct_ov42_0225621C *param0)
{
    PoketchMemory_Write32(param0->unk_04, &(param0->unk_08), sizeof(param0->unk_08));
    ov42_0225648C(param0->unk_0C);
    Heap_FreeToHeap(param0);
}

static void ov42_02256280(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov42_0225621C *) = {
        ov42_022562D0,
        ov42_02256310,
        ov42_02256364
    };

    UnkStruct_ov42_0225621C *v1 = (UnkStruct_ov42_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov42_02256260(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov42_022562B4(void *param0)
{
    ((UnkStruct_ov42_0225621C *)param0)->unk_02 = 1;
}

static void ov42_022562BC(UnkStruct_ov42_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov42_022562D0(UnkStruct_ov42_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov42_022564A0(param0->unk_0C, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov42_022564C4(param0->unk_0C, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov42_022562BC(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov42_02256310(UnkStruct_ov42_0225621C *param0)
{
    if (param0->unk_02) {
        ov42_022562BC(param0, 2);
    }

    switch (param0->unk_01) {
    case 0:

        if (ov42_02256398()) {
            param0->unk_08.unk_00 = MTRNG_Next() & 1;
            ov42_022564A0(param0->unk_0C, 2);
            param0->unk_01++;
        }
        break;
    case 1:
        if (ov42_022564C4(param0->unk_0C, 2)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov42_02256364(UnkStruct_ov42_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov42_022564A0(param0->unk_0C, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov42_022564D0(param0->unk_0C)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov42_02256398(void)
{
    u32 x, y;

    if (PoketchSystem_GetDisplayTappedCoords(&x, &y)) {
        x = (112 - x) * (112 - x);
        y = (144 - y) * (144 - y);

        if ((x + y) < (24 * 24)) {
            return 1;
        }
    }

    return 0;
}

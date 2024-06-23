#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"

#include "overlay025/poketch_system.h"
#include "overlay049/ov49_022563D4.h"
#include "overlay049/struct_ov49_022563D4_1.h"
#include "overlay049/struct_ov49_022563D4_decl.h"

#include "heap.h"
#include "poketch_data.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_ov49_022563D4_1 unk_04;
    UnkStruct_ov49_022563D4 *unk_08;
    PoketchSystem *poketchSys;
    PoketchData *poketchData;
} UnkStruct_ov49_0225621C;

static void NitroStaticInit(void);

static BOOL ov49_022561D4(void **param0, PoketchSystem *poketchSys, BGL *param2, u32 param3);
static BOOL ov49_0225621C(UnkStruct_ov49_0225621C *param0, PoketchSystem *poketchSys, BGL *param2, u32 param3);
static void ov49_02256258(UnkStruct_ov49_0225621C *param0);
static void ov49_0225626C(SysTask *param0, void *param1);
static void ov49_022562A0(void *param0);
static void ov49_022562A8(UnkStruct_ov49_0225621C *param0, u32 param1);
static BOOL ov49_022562BC(UnkStruct_ov49_0225621C *param0);
static BOOL ov49_022562FC(UnkStruct_ov49_0225621C *param0);
static BOOL ov49_02256348(UnkStruct_ov49_0225621C *param0);
static BOOL ov49_022563A0(UnkStruct_ov49_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov49_022561D4, ov49_022562A0);
}

static BOOL ov49_022561D4(void **param0, PoketchSystem *poketchSys, BGL *param2, u32 param3)
{
    UnkStruct_ov49_0225621C *v0 = (UnkStruct_ov49_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov49_0225621C));

    if (v0 != NULL) {
        if (ov49_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov49_0225626C, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov49_0225621C(UnkStruct_ov49_0225621C *param0, PoketchSystem *poketchSys, BGL *param2, u32 param3)
{
    param0->poketchData = PoketchSystem_GetPoketchData(poketchSys);
    param0->unk_04.unk_00 = PoketchData_CurrentScreenColor(param0->poketchData);
    param0->unk_03 = param0->unk_04.unk_00;

    if (ov49_022563D4(&(param0->unk_08), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->poketchSys = poketchSys;
        return 1;
    }

    return 0;
}

static void ov49_02256258(UnkStruct_ov49_0225621C *param0)
{
    ov49_02256480(param0->unk_08);
    Heap_FreeToHeap(param0);
}

static void ov49_0225626C(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov49_0225621C *) = {
        ov49_022562BC,
        ov49_022562FC,
        ov49_022563A0
    };

    UnkStruct_ov49_0225621C *v1 = (UnkStruct_ov49_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov49_02256258(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov49_022562A0(void *param0)
{
    ((UnkStruct_ov49_0225621C *)param0)->unk_02 = 1;
}

static void ov49_022562A8(UnkStruct_ov49_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov49_022562BC(UnkStruct_ov49_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov49_02256494(param0->unk_08, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov49_022564B8(param0->unk_08, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov49_022562A8(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov49_022562FC(UnkStruct_ov49_0225621C *param0)
{
    if (param0->unk_02) {
        ov49_022562A8(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (ov49_02256348(param0)) {
            ov49_02256494(param0->unk_08, 2);
            param0->unk_01++;
        }
        break;
    case 1:
        if (ov49_022564B8(param0->unk_08, 2)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov49_02256348(UnkStruct_ov49_0225621C *param0)
{
    if (ov25_0225450C(param0->poketchSys) == 0) {
        u32 v0, v1;

        if (TouchScreen_GetHoldState(&v0, &v1)) {
            if ((136 <= v1) && (v1 < 160) && (48 <= v0) && (v0 < 184)) {
                u32 v2 = (v0 - 48) / 16;

                if (v2 >= 8) {
                    v2 = 8 - 1;
                }

                if (v2 != param0->unk_03) {
                    param0->unk_04.unk_00 = v2;
                    param0->unk_03 = v2;
                    PoketchData_SetScreenColor(param0->poketchData, v2);
                    return 1;
                }
            }
        }
    }

    return 0;
}

static BOOL ov49_022563A0(UnkStruct_ov49_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov49_02256494(param0->unk_08, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov49_022564C4(param0->unk_08)) {
            return 1;
        }
        break;
    }

    return 0;
}

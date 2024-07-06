#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0203F478.h"

#include "overlay025/poketch_system.h"
#include "overlay034/ov34_02256540.h"
#include "overlay034/struct_ov34_02256540_1.h"
#include "overlay034/struct_ov34_02256540_decl.h"

#include "heap.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov34_02256540_1 unk_04;
    UnkStruct_ov34_02256540 *unk_48;
    PoketchSystem *poketchSys;
    UnkStruct_0203F478 *unk_50;
} UnkStruct_ov34_0225621C;

static void NitroStaticInit(void);

static BOOL ov34_022561D4(void **param0, PoketchSystem *poketchSys, BGL *param2, u32 param3);
static BOOL ov34_0225621C(UnkStruct_ov34_0225621C *param0, PoketchSystem *poketchSys, BGL *param2, u32 param3);
static void ov34_02256244(UnkStruct_ov34_0225621C *param0);
static void ov34_02256260(SysTask *param0, void *param1);
static void ov34_02256294(void *param0);
static void ov34_0225629C(UnkStruct_ov34_0225621C *param0, u32 param1);
static BOOL ov34_022562B0(UnkStruct_ov34_0225621C *param0);
static BOOL ov34_022562F0(UnkStruct_ov34_0225621C *param0);
static BOOL ov34_022563E4(UnkStruct_ov34_0225621C *param0, u32 *param1, u32 *param2);
static void ov34_02256428(UnkStruct_ov34_0225621C *param0, int param1, int param2);
static void ov34_022564F0(int param0, int param1, int *param2, int *param3);
static BOOL ov34_0225650C(UnkStruct_ov34_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov34_022561D4, ov34_02256294);
}

static BOOL ov34_022561D4(void **param0, PoketchSystem *poketchSys, BGL *param2, u32 param3)
{
    UnkStruct_ov34_0225621C *v0 = (UnkStruct_ov34_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov34_0225621C));

    if (v0 != NULL) {
        if (ov34_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov34_02256260, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov34_0225621C(UnkStruct_ov34_0225621C *param0, PoketchSystem *poketchSys, BGL *param2, u32 param3)
{
    if (ov34_02256540(&(param0->unk_48), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_50 = NULL;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov34_02256244(UnkStruct_ov34_0225621C *param0)
{
    if (param0->unk_50) {
        Heap_FreeToHeap(param0->unk_50);
    }

    ov34_02256604(param0->unk_48);
    Heap_FreeToHeap(param0);
}

static void ov34_02256260(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov34_0225621C *) = {
        ov34_022562B0,
        ov34_022562F0,
        ov34_0225650C
    };

    UnkStruct_ov34_0225621C *v1 = (UnkStruct_ov34_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov34_02256244(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov34_02256294(void *param0)
{
    ((UnkStruct_ov34_0225621C *)param0)->unk_02 = 1;
}

static void ov34_0225629C(UnkStruct_ov34_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov34_022562B0(UnkStruct_ov34_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov34_02256640(param0->unk_48, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov34_02256664(param0->unk_48, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov34_0225629C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov34_022562F0(UnkStruct_ov34_0225621C *param0)
{
    u32 v0, v1;

    if (param0->unk_02) {
        ov34_02256A0C(param0->unk_48);
        ov34_0225629C(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (ov34_022563E4(param0, &v0, &v1)) {
            ov34_02256428(param0, v0, v1);
            PoketchSystem_PlaySoundEffect(1640);
            ov34_02256640(param0->unk_48, 2);
            param0->unk_01 = 1;
        }
        break;
    case 1:
        if (ov34_02256664(param0->unk_48, 2)) {
            param0->unk_01 = 0;
            break;
        }

        if ((PoketchSystem_IsPlayerMoving(param0->poketchSys) == 1) || (ov25_0225450C(param0->poketchSys))) {
            ov34_02256A0C(param0->unk_48);
            param0->unk_01 = 2;
            break;
        }

        if (ov34_022563E4(param0, &v0, &v1)) {
            ov34_02256428(param0, v0, v1);
            ov34_02256A0C(param0->unk_48);
            param0->unk_01 = 3;
            break;
        }
        break;
    case 2:
        if (ov34_02256664(param0->unk_48, 2)) {
            param0->unk_01 = 0;
        }
        break;
    case 3:
        if (ov34_02256664(param0->unk_48, 2)) {
            PoketchSystem_PlaySoundEffect(1640);
            ov34_02256640(param0->unk_48, 2);
            param0->unk_01 = 1;
        }
        break;
    }

    return 0;
}

static BOOL ov34_022563E4(UnkStruct_ov34_0225621C *param0, u32 *param1, u32 *param2)
{
    if (ov25_0225450C(param0->poketchSys) == 0) {
        if (TouchScreen_GetTapState(param1, param2)) {
            if (((u32)((*param1) - 24) < (u32)(200 - 24)) & ((u32)((*param2) - 24) < (u32)(168 - 24))) {
                return 1;
            }
        }
    }

    return 0;
}

static void ov34_02256428(UnkStruct_ov34_0225621C *param0, int param1, int param2)
{
    static const fx32 v0[] = {
        8 << FX32_SHIFT,
        24 << FX32_SHIFT,
        48 << FX32_SHIFT,
    };
    UnkStruct_0203F478 *v1 = sub_0203F478(PoketchSystem_GetFieldSystem(param0->poketchSys), 8);
    UnkStruct_ov34_02256540_1 *v2 = &(param0->unk_04);

    v2->unk_08 = 0;
    v2->unk_00 = param1;
    v2->unk_04 = param2;
    v2->unk_0C = 0;

    if (v1) {
        int v3, v4;
        int v5;
        fx32 v6;

        for (v5 = 0; v1[v5].unk_04 != 0xff; v5++) {
            ov34_022564F0(v1[v5].unk_00, v1[v5].unk_02, &v3, &v4);
            v6 = FX_Sqrt(((v3 - param1) * (v3 - param1) + (v4 - param2) * (v4 - param2)) << FX32_SHIFT);

            if (v6 <= v0[v1[v5].unk_04]) {
                if (v2->unk_0C < 8) {
                    v2->unk_10[v2->unk_0C].unk_00 = v3;
                    v2->unk_10[v2->unk_0C].unk_02 = v4;
                    v2->unk_10[v2->unk_0C].unk_04 = v1[v5].unk_04;
                    v2->unk_0C++;
                    v2->unk_08 = 2;
                }
            } else if (v6 <= v0[(NELEMS(v0) - 1)]) {
                if (v2->unk_08 == 0) {
                    v2->unk_08 = 1;
                }
            }
        }

        Heap_FreeToHeap(v1);
    }
}

static void ov34_022564F0(int param0, int param1, int *param2, int *param3)
{
    fx32 v0, v1;
    fx32 v2, v3;

    param0 -= 7;
    param1 -= 7;

    *param2 = 112 + (param0 * 11);
    *param3 = 101 + (param1 * 11);
}

static BOOL ov34_0225650C(UnkStruct_ov34_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov34_02256640(param0->unk_48, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov34_02256670(param0->unk_48)) {
            return 1;
        }
        break;
    }

    return 0;
}

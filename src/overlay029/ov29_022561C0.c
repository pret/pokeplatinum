#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "overlay029/ov29_022566C8.h"
#include "overlay029/struct_ov29_022566C8_1.h"
#include "overlay029/struct_ov29_022566C8_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u32 unk_04;
    UnkStruct_ov29_022566C8_1 unk_08;
    UnkStruct_ov29_022566C8 *unk_16F4;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
} UnkStruct_ov29_0225621C;

static void NitroStaticInit(void);

static BOOL ov29_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov29_0225621C(UnkStruct_ov29_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov29_02256288(UnkStruct_ov29_0225621C *param0);
static void ov29_022562AC(SysTask *param0, void *param1);
static void ov29_022562F4(u32 param0, u32 param1, u32 param2, void *param3);
static void ov29_02256324(void *param0);
static void ov29_0225632C(UnkStruct_ov29_0225621C *param0, u32 param1);
static BOOL ov29_02256340(UnkStruct_ov29_0225621C *param0);
static BOOL ov29_0225638C(UnkStruct_ov29_0225621C *param0);
static BOOL ov29_02256404(UnkStruct_ov29_0225621C *param0);
static BOOL ov29_02256460(UnkStruct_ov29_0225621C *param0);
static void ov29_022564F4(UnkStruct_ov29_0225621C *param0, u32 param1, u32 param2, u32 param3, u32 param4);
static BOOL ov29_0225668C(UnkStruct_ov29_0225621C *param0);

static const TouchScreenHitTable Unk_ov29_02256B3C[] = {
    { 0x18, 0x58, 0xB4, 0xCC },
    { 0x68, 0xA8, 0xB4, 0xCC }
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov29_022561D4, ov29_02256324);
}

static BOOL ov29_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov29_0225621C *v0 = (UnkStruct_ov29_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov29_0225621C));

    if (v0 != NULL) {
        if (ov29_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov29_022562AC, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov29_0225621C(UnkStruct_ov29_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    memset(param0->unk_08.unk_0C, 0, sizeof(u8) * (78 * 75));

    param0->unk_08.unk_16E8 = param3;
    param0->unk_08.unk_00 = 1;

    if (ov29_022566C8(&(param0->unk_16F4), &(param0->unk_08), param2)) {
        int v0, v1;

        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_03 = 0;
        param0->buttonManager = PoketchButtonManager_New(Unk_ov29_02256B3C, NELEMS(Unk_ov29_02256B3C), ov29_022562F4, param0, 8);
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov29_02256288(UnkStruct_ov29_0225621C *param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
    ov29_02256770(param0->unk_16F4);
    Heap_FreeToHeap(param0);
}

static void ov29_022562AC(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov29_0225621C *) = {
        ov29_02256340,
        ov29_0225638C,
        ov29_0225668C
    };

    UnkStruct_ov29_0225621C *v1 = (UnkStruct_ov29_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov29_02256288(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov29_022562F4(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov29_0225621C *v0 = (UnkStruct_ov29_0225621C *)param3;

    if (param2 == 1) {
        if (((v0->unk_08.unk_00 == 1) && (param0 == 0)) || ((v0->unk_08.unk_00 == 0) && (param0 == 1))) {
            v0->unk_08.unk_00 ^= 1;
            ov29_022567B4(v0->unk_16F4, 1);
        }
    }
}

static void ov29_02256324(void *param0)
{
    ((UnkStruct_ov29_0225621C *)param0)->unk_02 = 1;
}

static void ov29_0225632C(UnkStruct_ov29_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov29_02256340(UnkStruct_ov29_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov29_022567B4(param0->unk_16F4, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov29_022567D8(param0->unk_16F4, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov29_0225632C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov29_0225638C(UnkStruct_ov29_0225621C *param0)
{
    if (param0->unk_02) {
        ov29_0225632C(param0, 2);
    }

    switch (param0->unk_01) {
    case 0:
        if (PoketechSystem_IsRunningTask(param0->poketchSys)) {
            break;
        }

        if (param0->unk_03) {
            u32 v0, v1;

            v0 = param0->unk_08.unk_04;
            v1 = param0->unk_08.unk_08;

            if (ov29_02256460(param0)) {
                ov29_022564F4(param0, v0, v1, param0->unk_08.unk_04, param0->unk_08.unk_08);
            } else {
                param0->unk_03 = 0;
            }
        } else {
            if (ov29_02256404(param0)) {
                ov29_022567B4(param0->unk_16F4, 3);
                param0->unk_03 = 1;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov29_02256404(UnkStruct_ov29_0225621C *param0)
{
    u32 v0, v1;

    if (PoketchSystem_GetDisplayHeldCoords(&v0, &v1)) {
        if (((u32)(v0 - 16) < (u32)(172 - 16)) & ((u32)(v1 - 16) < (u32)(166 - 16))) {
            v0 = (v0 - 16) >> 1;
            v1 = (v1 - 16) >> 1;

            param0->unk_08.unk_0C[v0][v1] = param0->unk_08.unk_00;
            param0->unk_08.unk_04 = v0;
            param0->unk_08.unk_08 = v1;

            return 1;
        }
    }

    return 0;
}

static BOOL ov29_02256460(UnkStruct_ov29_0225621C *param0)
{
    u32 v0, v1;

    if (PoketchSystem_GetDisplayHeldCoords(&v0, &v1)) {
        if (((u32)(v0 - 16) < (u32)(172 - 16)) & ((u32)(v1 - 16) < (u32)(166 - 16))) {
            v0 = (v0 - 16) >> 1;
            v1 = (v1 - 16) >> 1;

            param0->unk_08.unk_04 = v0;
            param0->unk_08.unk_08 = v1;

            return 1;
        }
    }

    return 0;
}

static void ov29_022564AC(UnkStruct_ov29_0225621C *param0, u32 param1, u32 param2)
{
    int v0, v1, v2, v3, v4, v5;

    v2 = param1 - ((8 / 2) / 2);

    if (v2 < 0) {
        v2 = 0;
    }

    v3 = param2 - ((8 / 2) / 2);

    if (v3 < 0) {
        v3 = 0;
    }

    v4 = param1 + ((8 / 2) / 2);

    if (v4 >= 78) {
        v4 = 78;
    }

    v5 = param2 + ((8 / 2) / 2);

    if (v5 >= 75) {
        v5 = 75;
    }

    for (v0 = v2; v0 < v4; v0++) {
        for (v1 = v3; v1 < v5; v1++) {
            param0->unk_08.unk_0C[v0][v1] = 0;
        }
    }
}

static void ov29_022564F4(UnkStruct_ov29_0225621C *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    u32 v0, v1, v2, v3;
    fx32 v4, v5;

    if ((param2 == param4) && (param1 == param3)) {
        return;
    }

    v0 = (param3 > param1) ? (param3 - param1) : (param1 - param3);
    v1 = (param4 > param2) ? (param4 - param2) : (param2 - param4);

    if (v0 > v1) {
        v2 = (param3 > param1) ? 1 : -1;

        if (v0) {
            v5 = ((param4 - param2) * FX32_ONE);
            v5 /= (s32)(v0);
        } else {
            v5 = 0;
        }

        v4 = (param2 << FX32_SHIFT) + v5;
        param1 += v2;

        while (param1 != param3) {
            v3 = v4 >> FX32_SHIFT;

            if ((param1 < 78) && (v3 < 75)) {
                if ((param0->unk_08.unk_00 == 0) || (param0->unk_08.unk_0C[param1][v3] != param0->unk_08.unk_00)) {
                    if (param0->unk_08.unk_00 == 0) {
                        ov29_022564AC(param0, param1, v3);
                    }

                    param0->unk_08.unk_0C[param1][v3] = param0->unk_08.unk_00;
                    param0->unk_08.unk_04 = param1;
                    param0->unk_08.unk_08 = v3;

                    ov29_022567B4(param0->unk_16F4, 3);
                }
            }

            param1 += v2;
            v4 += v5;
        }
    } else {
        v2 = (param4 > param2) ? 1 : -1;

        if (v1) {
            v5 = (param3 - param1) * FX32_ONE;
            v5 /= (s32)v1;
        } else {
            v5 = 0;
        }

        v4 = (param1 << FX32_SHIFT) + v5;
        param2 += v2;

        while (param2 != param4) {
            v3 = v4 >> FX32_SHIFT;

            if ((param2 < 75) && (v3 < 78)) {
                if ((param0->unk_08.unk_00 == 0) || (param0->unk_08.unk_0C[v3][param2] != param0->unk_08.unk_00)) {
                    if (param0->unk_08.unk_00 == 0) {
                        ov29_022564AC(param0, v3, param2);
                    }

                    param0->unk_08.unk_0C[v3][param2] = param0->unk_08.unk_00;
                    param0->unk_08.unk_04 = v3;
                    param0->unk_08.unk_08 = param2;

                    ov29_022567B4(param0->unk_16F4, 3);
                }
            }

            param2 += v2;
            v4 += v5;
        }
    }

    if ((param4 < 75) && (param3 < 78)) {
        if (param0->unk_08.unk_00 == 0) {
            ov29_022564AC(param0, param3, param4);
        }

        param0->unk_08.unk_04 = param3;
        param0->unk_08.unk_08 = param4;

        ov29_022567B4(param0->unk_16F4, 3);
    }
}

static BOOL ov29_0225668C(UnkStruct_ov29_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov29_022567B4(param0->unk_16F4, 5);
        param0->unk_01++;
        break;
    case 1:
        if (ov29_022567E4(param0->unk_16F4)) {
            return 1;
        }
        break;
    }

    return 0;
}

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "overlay041/ov41_022567B0.h"
#include "overlay041/struct_ov41_022567B0_1.h"
#include "overlay041/struct_ov41_022567B0_decl.h"

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
    UnkStruct_ov41_022567B0_1 unk_04;
    UnkStruct_ov41_022567B0 *unk_5B7C;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 unk_5B88;
    u32 unk_5B8C;
} UnkStruct_ov41_02256220;

static void NitroStaticInit(void);

static BOOL ov41_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov41_02256220(UnkStruct_ov41_02256220 *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov41_02256294(UnkStruct_ov41_02256220 *param0);
static void ov41_022562B8(SysTask *param0, void *param1);
static void ov41_02256300(u32 param0, u32 param1, u32 param2, void *param3);
static void ov41_02256310(void *param0);
static void ov41_02256318(UnkStruct_ov41_02256220 *param0, u32 param1);
static BOOL ov41_0225632C(UnkStruct_ov41_02256220 *param0);
static BOOL ov41_02256378(UnkStruct_ov41_02256220 *param0);
static BOOL ov41_02256564(UnkStruct_ov41_02256220 *param0);
static BOOL ov41_022565C4(UnkStruct_ov41_02256220 *param0);
static void ov41_02256610(UnkStruct_ov41_02256220 *param0, u32 param1, u32 param2, u32 param3, u32 param4);
static BOOL ov41_02256754(UnkStruct_ov41_02256220 *param0);
static void ov41_02256790(UnkStruct_ov41_022567B0_1 *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov41_022561D4, ov41_02256310);
}

static BOOL ov41_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov41_02256220 *v0 = (UnkStruct_ov41_02256220 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov41_02256220));

    if (v0 != NULL) {
        if (ov41_02256220(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov41_022562B8, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_Free(v0);
    }

    return 0;
}

static BOOL ov41_02256220(UnkStruct_ov41_02256220 *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        { 34, 66, 167, 207 },
        { 80, 112, 167, 207 },
        { 126, 158, 167, 207 }
    };

    param0->unk_04.unk_08 = param3;
    param0->unk_04.unk_5B74 = 0;
    param0->unk_04.unk_5B75 = 1;
    param0->unk_04.unk_5B76 = 0;

    if (ov41_022567B0(&(param0->unk_5B7C), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_03 = 0;

        ov41_02256790(&param0->unk_04);

        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov41_02256300, param0, HEAP_ID_POKETCH_APP);
        param0->unk_5B88 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov41_02256294(UnkStruct_ov41_02256220 *param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
    ov41_022567F8(param0->unk_5B7C);
    Heap_Free(param0);
}

static void ov41_022562B8(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov41_02256220 *) = {
        ov41_0225632C,
        ov41_02256378,
        ov41_02256754
    };

    UnkStruct_ov41_02256220 *v1 = (UnkStruct_ov41_02256220 *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov41_02256294(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov41_02256300(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov41_02256220 *v0 = (UnkStruct_ov41_02256220 *)param3;

    v0->unk_5B88 = param1;
    v0->unk_5B8C = param0;
}

static void ov41_02256310(void *param0)
{
    ((UnkStruct_ov41_02256220 *)param0)->unk_02 = 1;
}

static void ov41_02256318(UnkStruct_ov41_02256220 *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov41_0225632C(UnkStruct_ov41_02256220 *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov41_0225688C(param0->unk_5B7C, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov41_022568B0(param0->unk_5B7C, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov41_02256318(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov41_02256378(UnkStruct_ov41_02256220 *param0)
{
    if (param0->unk_02) {
        ov41_02256318(param0, 2);
    }

    switch (param0->unk_01) {
    case 0:
        if (PoketechSystem_IsRunningTask(param0->poketchSys)) {
            break;
        }

        if (param0->unk_5B88 == 1) {
            switch (param0->unk_5B8C) {
            case 0:
                param0->unk_04.unk_5B74 = 1;
                param0->unk_04.unk_5B75 = 0;
                param0->unk_04.unk_5B76 = 1;
                ov41_0225688C(param0->unk_5B7C, 5);
                ov41_0225688C(param0->unk_5B7C, 7);
                PoketchSystem_PlaySoundEffect(1635);
                param0->unk_01 = 1;
                break;
            case 1:
                PoketchSystem_PlaySoundEffect(1646);
                break;
            case 2:
                param0->unk_04.unk_5B76 = 1;
                ov41_0225688C(param0->unk_5B7C, 5);
                PoketchSystem_PlaySoundEffect(1635);
                param0->unk_01 = 3;
                break;
            }

            param0->unk_5B88 = 0;
            break;
        }

        if (param0->unk_03) {
            u32 v0, v1;

            v0 = param0->unk_04.unk_00;
            v1 = param0->unk_04.unk_04;

            if (ov41_022565C4(param0)) {
                ov41_02256610(param0, v0, v1, param0->unk_04.unk_00, param0->unk_04.unk_04);
            } else {
                param0->unk_03 = 0;
            }
        } else {
            if (ov41_02256564(param0)) {
                ov41_0225688C(param0->unk_5B7C, 3);
                param0->unk_03 = 1;
            }
        }
        break;
    case 1:
        if (param0->unk_5B88 == 1) {
            switch (param0->unk_5B8C) {
            case 2:
            case 0:
                PoketchSystem_PlaySoundEffect(1646);
                break;
            case 1:
                param0->unk_04.unk_5B74 = 1;
                param0->unk_04.unk_5B75 = 1;
                param0->unk_04.unk_5B76 = 1;
                ov41_0225688C(param0->unk_5B7C, 5);
                ov41_0225688C(param0->unk_5B7C, 8);
                PoketchSystem_PlaySoundEffect(1635);
                param0->unk_01 = 2;
                break;
            }

            param0->unk_5B88 = 0;
            break;
        }
        break;
    case 2:
        if (ov41_022568B0(param0->unk_5B7C, 8)) {
            param0->unk_04.unk_5B74 = 0;
            param0->unk_04.unk_5B75 = 1;
            param0->unk_04.unk_5B76 = 0;
            ov41_0225688C(param0->unk_5B7C, 5);
            param0->unk_01 = 0;
        }
        break;
    case 3:
        if (param0->unk_5B88 == 2) {
            param0->unk_04.unk_5B76 = 0;
            ov41_0225688C(param0->unk_5B7C, 5);
            param0->unk_01 = 0;
            break;
        }

        if (param0->unk_5B88 == 3) {
            param0->unk_04.unk_5B76 = 0;
            ov41_02256790(&param0->unk_04);
            ov41_0225688C(param0->unk_5B7C, 5);
            ov41_0225688C(param0->unk_5B7C, 6);
            param0->unk_01 = 0;
            break;
        }
        break;
    }

    return 0;
}

static BOOL ov41_02256564(UnkStruct_ov41_02256220 *param0)
{
    u32 v0, v1;

    if (PoketchSystem_GetDisplayHeldCoords(&v0, &v1)) {
        if (((u32)(v0 - 16) < (u32)(171 - 16)) & ((u32)(v1 - 16) < (u32)(165 - 16))) {
            v0 = (v0 - 16) >> 1;
            v1 = (v1 - 16) >> 1;

            if (param0->unk_04.unk_0C[v0][v1] == 0) {
                param0->unk_04.unk_0C[v0][v1] = 1;
                param0->unk_04.unk_00 = v0;
                param0->unk_04.unk_04 = v1;
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov41_022565C4(UnkStruct_ov41_02256220 *param0)
{
    u32 v0, v1;

    if (PoketchSystem_GetDisplayHeldCoords(&v0, &v1)) {
        if (((u32)(v0 - 16) < (u32)(171 - 16)) & ((u32)(v1 - 16) < (u32)(165 - 16))) {
            v0 = (v0 - 16) >> 1;
            v1 = (v1 - 16) >> 1;

            param0->unk_04.unk_00 = v0;
            param0->unk_04.unk_04 = v1;

            return 1;
        }
    }

    return 0;
}

static void ov41_02256610(UnkStruct_ov41_02256220 *param0, u32 param1, u32 param2, u32 param3, u32 param4)
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

            if ((param1 < 156) && (v3 < 150)) {
                if (param0->unk_04.unk_0C[param1][v3] == 0) {
                    param0->unk_04.unk_0C[param1][v3] = 0;
                    param0->unk_04.unk_00 = param1;
                    param0->unk_04.unk_04 = v3;
                    ov41_0225688C(param0->unk_5B7C, 3);
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

            if ((param2 < 150) && (v3 < 156)) {
                if (param0->unk_04.unk_0C[v3][param2] == 0) {
                    param0->unk_04.unk_0C[v3][param2] = 1;
                    param0->unk_04.unk_00 = v3;
                    param0->unk_04.unk_04 = param2;
                    ov41_0225688C(param0->unk_5B7C, 3);
                }
            }

            param2 += v2;
            v4 += v5;
        }
    }

    if ((param4 < 150) && (param3 < 156)) {
        param0->unk_04.unk_00 = param3;
        param0->unk_04.unk_04 = param4;
        ov41_0225688C(param0->unk_5B7C, 3);
    }
}

static BOOL ov41_02256754(UnkStruct_ov41_02256220 *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov41_0225688C(param0->unk_5B7C, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov41_022568BC(param0->unk_5B7C)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov41_02256790(UnkStruct_ov41_022567B0_1 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 156; v0++) {
        for (v1 = 0; v1 < 150; v1++) {
            param0->unk_0C[v0][v1] = 0;
        }
    }
}

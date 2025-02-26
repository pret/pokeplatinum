#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_button.h"
#include "overlay025/poketch_system.h"
#include "overlay035/ov35_02256410.h"
#include "overlay035/struct_ov35_02256410_1.h"
#include "overlay035/struct_ov35_02256410_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u32 unk_04;
    UnkStruct_ov35_02256410_1 unk_08;
    UnkStruct_ov35_02256410 *unk_10;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 unk_1C;
} UnkStruct_ov35_0225621C;

static void NitroStaticInit(void);

static BOOL ov35_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov35_0225621C(UnkStruct_ov35_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov35_02256284(u32 param0, u32 param1, u32 param2, void *param3);
static void ov35_0225628C(UnkStruct_ov35_0225621C *param0);
static void ov35_022562B0(SysTask *param0, void *param1);
static void ov35_022562EC(void *param0);
static void ov35_022562F4(UnkStruct_ov35_0225621C *param0, u32 param1);
static BOOL ov35_02256308(UnkStruct_ov35_0225621C *param0);
static BOOL ov35_02256348(UnkStruct_ov35_0225621C *param0);
static BOOL ov35_022563DC(UnkStruct_ov35_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov35_022561D4, ov35_022562EC);
}

static BOOL ov35_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov35_0225621C *v0 = (UnkStruct_ov35_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov35_0225621C));

    if (v0 != NULL) {
        if (ov35_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov35_022562B0, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov35_0225621C(UnkStruct_ov35_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        { 128 - (56 / 2),
            128 + (56 / 2),
            114 - (64 / 2),
            114 + (64 / 2) },
    };

    param0->unk_08.unk_04 = 1;

    if (PoketchMemory_Read32(param3, (u8 *)(&(param0->unk_08.unk_00)), sizeof(u32)) == FALSE) {
        param0->unk_08.unk_00 = 0;
    }

    param0->unk_04 = param3;

    if (ov35_02256410(&(param0->unk_10), &(param0->unk_08), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov35_02256284, param0, 8);
        param0->unk_1C = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov35_02256284(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov35_0225621C *v0 = (UnkStruct_ov35_0225621C *)param3;

    if (param0 == 0) {
        v0->unk_1C = param1;
    }
}

static void ov35_0225628C(UnkStruct_ov35_0225621C *param0)
{
    PoketchMemory_Write32(param0->unk_04, (u8 *)(&(param0->unk_08.unk_00)), sizeof(u32));
    PoketchButtonManager_Free(param0->buttonManager);
    ov35_0225644C(param0->unk_10);
    Heap_FreeToHeap(param0);
}

static void ov35_022562B0(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov35_0225621C *) = {
        ov35_02256308, ov35_02256348, ov35_022563DC
    };

    UnkStruct_ov35_0225621C *v1 = (UnkStruct_ov35_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov35_0225628C(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov35_022562EC(void *param0)
{
    ((UnkStruct_ov35_0225621C *)param0)->unk_02 = 1;
}

static void ov35_022562F4(UnkStruct_ov35_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov35_02256308(UnkStruct_ov35_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov35_02256548(param0->unk_10, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov35_0225656C(param0->unk_10, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov35_022562F4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov35_02256348(UnkStruct_ov35_0225621C *param0)
{
    UnkStruct_ov35_02256410_1 *v0 = &(param0->unk_08);

    if (param0->unk_02) {
        ov35_022562F4(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (param0->unk_1C == 1) {
            v0->unk_04 = 0;
            ov35_02256548(param0->unk_10, 2);
            param0->unk_1C = 0;
            param0->unk_01++;
        }
        break;
    case 1:
        if (param0->unk_1C == 2) {
            v0->unk_04 = 1;
            ov35_02256548(param0->unk_10, 2);
            param0->unk_1C = 0;
            param0->unk_01 = 0;
            break;
        }

        if (param0->unk_1C == 3) {
            v0->unk_04 = 1;

            if (++(v0->unk_00) > 9999) {
                v0->unk_00 = 0;
            }

            ov35_02256548(param0->unk_10, 2);
            ov35_02256548(param0->unk_10, 3);
            param0->unk_1C = 0;
            param0->unk_01 = 0;
            break;
        }
        break;
    }

    return 0;
}

static BOOL ov35_022563DC(UnkStruct_ov35_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov35_02256548(param0->unk_10, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov35_02256578(param0->unk_10)) {
            return 1;
        }
        break;
    }

    return 0;
}

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "overlay037/ov37_022563D4.h"
#include "overlay037/struct_ov37_022563D4_1.h"
#include "overlay037/struct_ov37_022563D4_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov37_022563D4_1 unk_04;
    UnkStruct_ov37_022563D4 *unk_08;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 unk_14;
    u32 unk_18;
} UnkStruct_ov37_0225621C;

static void NitroStaticInit(void);

static BOOL ov37_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov37_0225621C(UnkStruct_ov37_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov37_02256280(UnkStruct_ov37_0225621C *param0);
static void ov37_02256298(u32 param0, u32 param1, u32 param2, void *param3);
static void ov37_022562A0(SysTask *param0, void *param1);
static void ov37_022562DC(void *param0);
static void ov37_022562E4(UnkStruct_ov37_0225621C *param0, u32 param1);
static BOOL ov37_022562F8(UnkStruct_ov37_0225621C *param0);
static BOOL ov37_02256338(UnkStruct_ov37_0225621C *param0);
static BOOL ov37_022563A0(UnkStruct_ov37_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov37_022561D4, ov37_022562DC);
}

static BOOL ov37_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov37_0225621C *v0 = (UnkStruct_ov37_0225621C *)Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov37_0225621C));

    if (v0 != NULL) {
        if (ov37_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov37_022562A0, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_Free(v0);
    }

    return 0;
}

static BOOL ov37_0225621C(UnkStruct_ov37_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        { 72, 104, 92, 132 },
        { 104, 136, 92, 132 },
    };
    PMBackLightSwitch v1;

    PM_GetBackLight(NULL, &v1);
    param0->unk_04.unk_00 = (v1 == PM_BACKLIGHT_ON);

    if (ov37_022563D4(&(param0->unk_08), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov37_02256298, param0, HEAP_ID_POKETCH_APP);
        param0->unk_14 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov37_02256280(UnkStruct_ov37_0225621C *param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
    ov37_02256410(param0->unk_08);
    Heap_Free(param0);
}

static void ov37_02256298(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov37_0225621C *v0 = (UnkStruct_ov37_0225621C *)param3;

    v0->unk_18 = param0;
    v0->unk_14 = param1;
}

static void ov37_022562A0(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov37_0225621C *) = {
        ov37_022562F8,
        ov37_02256338,
        ov37_022563A0
    };

    UnkStruct_ov37_0225621C *v1 = (UnkStruct_ov37_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        PoketechSystem_UpdateButtonManager(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov37_02256280(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov37_022562DC(void *param0)
{
    ((UnkStruct_ov37_0225621C *)param0)->unk_02 = 1;
}

static void ov37_022562E4(UnkStruct_ov37_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov37_022562F8(UnkStruct_ov37_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov37_02256488(param0->unk_08, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov37_022564AC(param0->unk_08, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov37_022562E4(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov37_02256338(UnkStruct_ov37_0225621C *param0)
{
    UnkStruct_ov37_022563D4_1 *v0 = &(param0->unk_04);

    if (param0->unk_02) {
        ov37_022562E4(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (param0->unk_14 == 1) {
            if (((param0->unk_18 == 0) && (param0->unk_04.unk_00 == 0)) || ((param0->unk_18 == 1) && (param0->unk_04.unk_00 == 1))) {
                param0->unk_04.unk_00 ^= 1;
                ov37_02256488(param0->unk_08, 2);
            }

            param0->unk_01++;
            break;
        }
        break;
    case 1:
        if (ov37_022564AC(param0->unk_08, 2)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov37_022563A0(UnkStruct_ov37_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov37_02256488(param0->unk_08, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov37_022564B8(param0->unk_08)) {
            return 1;
        }
        break;
    }

    return 0;
}

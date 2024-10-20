#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_button.h"
#include "overlay025/poketch_system.h"
#include "overlay030/ov30_022563EC.h"
#include "overlay030/struct_ov30_022563EC_1.h"
#include "overlay030/struct_ov30_022563EC_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u32 unk_08;
    u32 unk_0C;
    PoketchButtonManager *buttonManager;
    UnkStruct_ov30_022563EC_1 unk_14;
    UnkStruct_ov30_022563EC *unk_24;
    PoketchSystem *poketchSys;
} UnkStruct_ov30_0225621C;

static void NitroStaticInit(void);

static BOOL ov30_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov30_0225621C(UnkStruct_ov30_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov30_02256298(UnkStruct_ov30_0225621C *param0);
static void ov30_022562B0(SysTask *param0, void *param1);
static void ov30_022562EC(void *param0);
static void ov30_022562F4(u32 param0, u32 param1, u32 param2, void *param3);
static void ov30_02256310(UnkStruct_ov30_0225621C *param0, u32 param1);
static BOOL ov30_02256324(UnkStruct_ov30_0225621C *param0);
static BOOL ov30_02256364(UnkStruct_ov30_0225621C *param0);
static BOOL ov30_022563B8(UnkStruct_ov30_0225621C *param0);

static const TouchScreenHitTable Unk_ov30_02256678[] = {
    { 0x10, 0xAF, 0x10, 0xCF }
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov30_022561D4, ov30_022562EC);
}

static BOOL ov30_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov30_0225621C *v0 = (UnkStruct_ov30_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov30_0225621C));

    if (v0 != NULL) {
        if (ov30_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov30_022562B0, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov30_0225621C(UnkStruct_ov30_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    if (ov30_022563EC(&(param0->unk_24), &(param0->unk_14), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_03 = 1;
        param0->unk_06 = 0;
        param0->unk_14.unk_0C = 0;

        GetCurrentTime(&(param0->unk_14.unk_00));

        if (param0->unk_14.unk_00.hour >= 24) {
            param0->unk_14.unk_00.hour %= 24;
        }

        if (param0->unk_14.unk_00.minute >= 60) {
            param0->unk_14.unk_00.hour %= 60;
        }

        param0->unk_05 = param0->unk_14.unk_00.minute;
        param0->buttonManager = PoketchButtonManager_New(Unk_ov30_02256678, NELEMS(Unk_ov30_02256678), ov30_022562F4, param0, 8);

        if (param0->buttonManager == NULL) {
            return 0;
        }

        param0->poketchSys = poketchSys;
        return 1;
    }

    return 0;
}

static void ov30_02256298(UnkStruct_ov30_0225621C *param0)
{
    ov30_02256444(param0->unk_24);
    PoketchButtonManager_Free(param0->buttonManager);
    Heap_FreeToHeap(param0);
}

static void ov30_022562B0(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov30_0225621C *) = {
        ov30_02256324,
        ov30_02256364,
        ov30_022563B8
    };

    UnkStruct_ov30_0225621C *v1 = (UnkStruct_ov30_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov30_02256298(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov30_022562EC(void *param0)
{
    ((UnkStruct_ov30_0225621C *)param0)->unk_02 = 1;
}

static void ov30_022562F4(u32 param0, u32 param1, u32 param2, void *param3)
{
    UnkStruct_ov30_0225621C *v0 = (UnkStruct_ov30_0225621C *)param3;

    switch (param2) {
    case 1:
        v0->unk_14.unk_0C = 1;
        v0->unk_06 = 1;
        break;
    case 0:
        v0->unk_14.unk_0C = 0;
        v0->unk_06 = 1;
        break;
    }
}

static void ov30_02256310(UnkStruct_ov30_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov30_02256324(UnkStruct_ov30_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov30_02256464(param0->unk_24, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov30_02256488(param0->unk_24, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov30_02256310(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov30_02256364(UnkStruct_ov30_0225621C *param0)
{
    if (param0->unk_02) {
        ov30_02256310(param0, 2);
        return 0;
    }

    if (param0->unk_06) {
        param0->unk_06 = 0;
        ov30_02256464(param0->unk_24, 2);
    }

    if (ov30_02256488(param0->unk_24, 1)) {
        param0->unk_05 = param0->unk_14.unk_00.minute;
        GetCurrentTime(&(param0->unk_14.unk_00));

        if (param0->unk_05 != param0->unk_14.unk_00.minute) {
            ov30_02256464(param0->unk_24, 1);
        }
    }

    return 0;
}

static BOOL ov30_022563B8(UnkStruct_ov30_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov30_02256464(param0->unk_24, 3);
        param0->unk_01++;
        break;
    case 1:
        if (ov30_02256494(param0->unk_24)) {
            return 1;
        }

        break;
    }

    return 0;
}

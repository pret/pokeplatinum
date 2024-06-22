#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "sys_task_manager.h"
#include "overlay025/poketch_system.h"
#include "overlay025/poketch_button.h"
#include "overlay026/struct_ov26_02256404_decl.h"

#include "touch_screen.h"
#include "overlay026/struct_ov26_02256404_1.h"

#include "sys_task.h"
#include "rtc.h"
#include "heap.h"
#include "overlay026/ov26_02256404.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u32 unk_08;
    u32 unk_0C;
    PoketchButtonManager *buttonManager;
    UnkStruct_ov26_02256404_1 unk_14;
    UnkStruct_ov26_02256404 * unk_24;
    PoketchSystem *poketchSys;
} UnkStruct_ov26_0225621C;

static void NitroStaticInit(void);

static BOOL ov26_022561D4(void ** param0, PoketchSystem *poketchSys, BGL * param2, u32 param3);
static BOOL ov26_0225621C(UnkStruct_ov26_0225621C * param0, PoketchSystem *poketchSys, BGL * param2, u32 param3);
static void ov26_022562A4(UnkStruct_ov26_0225621C * param0);
static void ov26_022562BC(SysTask * param0, void * param1);
static void ov26_022562F8(void * param0);
static void ov26_02256300(u32 param0, u32 param1, u32 param2, void * param3);
static void ov26_0225631C(UnkStruct_ov26_0225621C * param0, u32 param1);
static BOOL ov26_02256330(UnkStruct_ov26_0225621C * param0);
static BOOL ov26_02256370(UnkStruct_ov26_0225621C * param0);
static BOOL ov26_022563D0(UnkStruct_ov26_0225621C * param0);

static const TouchScreenHitTable Unk_ov26_02256718[] = {
    {0x10, 0xAF, 0x10, 0xCF}
};

static void NitroStaticInit (void)
{
    PoketchSystem_SetAppFunctions(ov26_022561D4, ov26_022562F8);
}

static BOOL ov26_022561D4 (void ** param0, PoketchSystem *poketchSys, BGL * param2, u32 param3)
{
    UnkStruct_ov26_0225621C * v0 = (UnkStruct_ov26_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov26_0225621C));

    if (v0 != NULL) {
        if (ov26_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov26_022562BC, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov26_0225621C (UnkStruct_ov26_0225621C * param0, PoketchSystem *poketchSys, BGL * param2, u32 param3)
{
    if (ov26_02256404(&(param0->unk_24), &(param0->unk_14), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_03 = 1;
        param0->unk_07 = 0;
        param0->unk_14.unk_0C = 0;

        GetCurrentTime(&(param0->unk_14.unk_00));

        if (param0->unk_14.unk_00.hour >= 24) {
            param0->unk_14.unk_00.hour %= 24;
        }

        if (param0->unk_14.unk_00.minute >= 60) {
            param0->unk_14.unk_00.hour %= 60;
            param0->unk_14.unk_00.minute %= 60;
        }

        param0->unk_06 = param0->unk_14.unk_00.minute;
        param0->unk_05 = param0->unk_14.unk_00.hour;
        param0->buttonManager = PoketchButtonManager_New(Unk_ov26_02256718, NELEMS(Unk_ov26_02256718), ov26_02256300, param0, 8);

        if (param0->buttonManager == NULL) {
            return 0;
        }

        param0->poketchSys = poketchSys;
        return 1;
    }

    return 0;
}

static void ov26_022562A4 (UnkStruct_ov26_0225621C * param0)
{
    ov26_0225649C(param0->unk_24);
    PoketchButtonManager_Free(param0->buttonManager);
    Heap_FreeToHeap(param0);
}

static void ov26_022562BC (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov26_0225621C *) = {
        ov26_02256330, ov26_02256370, ov26_022563D0,
    };

    UnkStruct_ov26_0225621C * v1 = (UnkStruct_ov26_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov26_022562A4(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov26_022562F8 (void * param0)
{
    ((UnkStruct_ov26_0225621C *)param0)->unk_02 = 1;
}

static void ov26_02256300 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov26_0225621C * v0 = (UnkStruct_ov26_0225621C *)param3;

    switch (param2) {
    case 1:
        v0->unk_14.unk_0C = 1;
        v0->unk_07 = 1;
        break;
    case 0:
        v0->unk_14.unk_0C = 0;
        v0->unk_07 = 1;
        break;
    }
}

static void ov26_0225631C (UnkStruct_ov26_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov26_02256330 (UnkStruct_ov26_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov26_022564A8(param0->unk_24, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov26_022564CC(param0->unk_24, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov26_0225631C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov26_02256370 (UnkStruct_ov26_0225621C * param0)
{
    if (param0->unk_02) {
        ov26_0225631C(param0, 2);
        return 0;
    }

    if (param0->unk_07) {
        param0->unk_07 = 0;
        ov26_022564A8(param0->unk_24, 2);
    }

    if (ov26_022564CC(param0->unk_24, 1)) {
        param0->unk_06 = param0->unk_14.unk_00.minute;
        param0->unk_05 = param0->unk_14.unk_00.hour;
        GetCurrentTime(&(param0->unk_14.unk_00));

        if ((param0->unk_06 != param0->unk_14.unk_00.minute) || (param0->unk_05 != param0->unk_14.unk_00.hour)) {
            ov26_022564A8(param0->unk_24, 1);
        }
    }

    return 0;
}

static BOOL ov26_022563D0 (UnkStruct_ov26_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov26_022564A8(param0->unk_24, 3);
        param0->unk_01++;
        break;

    case 1:
        if (ov26_022564D8(param0->unk_24)) {
            return 1;
        }

        break;
    }

    return 0;
}

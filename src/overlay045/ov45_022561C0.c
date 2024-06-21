#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/poketch_system.h"
#include "overlay025/poketch_button.h"
#include "overlay045/struct_ov45_022566EC_decl.h"

#include "touch_screen.h"
#include "overlay045/struct_ov45_022566EC_1.h"

#include "unk_0200D9E8.h"
#include "rtc.h"
#include "heap.h"
#include "poketch_data.h"
#include "overlay045/ov45_022566EC.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov45_022566EC_1 unk_03;
    UnkStruct_ov45_022566EC * unk_08;
    PoketchSystem *poketchSys;
    PoketchData *poketchData;
    PoketchButtonManager *buttonManager;
    u32 unk_18;
    u32 unk_1C;
    RTCTime unk_20;
    BOOL unk_2C;
    BOOL unk_30;
} UnkStruct_ov45_022561D4;

static void NitroStaticInit(void);

static BOOL ov45_022561D4(void ** param0, PoketchSystem *poketchSys, BGL * param2, u32 param3);
static BOOL ov45_0225621C(UnkStruct_ov45_022561D4 * param0, PoketchSystem *poketchSys, BGL * param2, u32 param3);
static void ov45_022562C0(UnkStruct_ov45_022566EC_1 * param0);
static void ov45_022562F8(UnkStruct_ov45_022561D4 * param0);
static void ov45_02256310(u32 param0, u32 param1, u32 param2, void * param3);
static void ov45_02256318(SysTask * param0, void * param1);
static void ov45_02256354(void * param0);
static void ov45_0225635C(UnkStruct_ov45_022561D4 * param0, u32 param1);
static BOOL ov45_02256370(UnkStruct_ov45_022561D4 * param0);
static BOOL ov45_022563C0(UnkStruct_ov45_022561D4 * param0);
static BOOL ov45_022564D0(UnkStruct_ov45_022561D4 * param0);
static BOOL ov45_0225659C(UnkStruct_ov45_022561D4 * param0);
static BOOL ov45_02256664(UnkStruct_ov45_022561D4 * param0);
static void ov45_02256668(UnkStruct_ov45_022561D4 * param0);
static BOOL ov45_02256680(UnkStruct_ov45_022561D4 * param0, u32 * param1, u32 * param2);
static BOOL ov45_02256698(UnkStruct_ov45_022561D4 * param0);
static BOOL ov45_022566CC(UnkStruct_ov45_022566EC_1 * param0);

static void NitroStaticInit (void)
{
    PoketchSystem_SetAppFunctions(ov45_022561D4, ov45_02256354);
}

static BOOL ov45_022561D4 (void ** param0, PoketchSystem *poketchSys, BGL * param2, u32 param3)
{
    UnkStruct_ov45_022561D4 * v0 = (UnkStruct_ov45_022561D4 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov45_022561D4));

    if (v0 != NULL) {
        if (ov45_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov45_02256318, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov45_0225621C (UnkStruct_ov45_022561D4 * param0, PoketchSystem *poketchSys, BGL * param2, u32 param3)
{
    static const TouchScreenHitTable v0[] = {
        {72, 104, 176, 208, },
        {104, 136, 176, 208, },
        {112, 128, 64, 80, },
        {160, 176, 64, 80, },
        {112, 128, 112, 128, },
        {160, 176, 112, 128, }
    };
    u32 v1, v2;

    param0->poketchData = PoketchSystem_GetPoketchData(poketchSys);
    param0->unk_03.unk_00 = PoketchData_IsAlarmSet(param0->poketchData);

    PoketchData_AlarmTime(param0->poketchData, &v1, &v2);

    param0->unk_03.unk_03 = v1;
    param0->unk_03.unk_04 = v2;

    ov45_022562C0(&param0->unk_03);

    if (ov45_022566EC(&(param0->unk_08), &(param0->unk_03), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ov45_02256310, param0, 8);
        param0->unk_1C = 0;

        PoketchButtonManager_SetRepeatTime(param0->buttonManager, 2, 4);
        PoketchButtonManager_SetRepeatTime(param0->buttonManager, 3, 4);
        PoketchButtonManager_SetRepeatTime(param0->buttonManager, 4, 4);
        PoketchButtonManager_SetRepeatTime(param0->buttonManager, 5, 4);

        param0->unk_2C = 0;
        param0->unk_30 = 0;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov45_022562C0 (UnkStruct_ov45_022566EC_1 * param0)
{
    RTCTime v0;

    GetCurrentTime(&v0);

    if (v0.hour >= 24) {
        v0.hour %= 24;
    }

    if (v0.minute >= 60) {
        v0.hour %= 60;
    }

    param0->unk_01 = v0.hour;
    param0->unk_02 = v0.minute;
}

static void ov45_022562F8 (UnkStruct_ov45_022561D4 * param0)
{
    PoketchButtonManager_Free(param0->buttonManager);
    ov45_02256728(param0->unk_08);

    Heap_FreeToHeap(param0);
}

static void ov45_02256310 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov45_022561D4 * v0 = param3;

    v0->unk_18 = param0;
    v0->unk_1C = param1;
}

static void ov45_02256318 (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov45_022561D4 *) = {
        ov45_02256370,
        ov45_022563C0,
        ov45_022564D0,
        ov45_0225659C,
        ov45_02256698
    };

    UnkStruct_ov45_022561D4 * v1 = (UnkStruct_ov45_022561D4 *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->poketchSys, v1->buttonManager);

        if (v0[v1->unk_00](v1)) {
            ov45_022562F8(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov45_02256354 (void * param0)
{
    ((UnkStruct_ov45_022561D4 *)param0)->unk_02 = 1;
}

static void ov45_0225635C (UnkStruct_ov45_022561D4 * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 4;
    }

    param0->unk_01 = 0;
}

static BOOL ov45_02256370 (UnkStruct_ov45_022561D4 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov45_02256918(param0->unk_08, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov45_0225693C(param0->unk_08, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);

            if (param0->unk_03.unk_00) {
                ov45_0225635C(param0, 2);
            } else {
                ov45_0225635C(param0, 1);
            }
        }
        break;
    }

    return 0;
}

static BOOL ov45_022563C0 (UnkStruct_ov45_022561D4 * param0)
{
    if (param0->unk_02) {
        ov45_0225635C(param0, 4);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if ((param0->unk_1C == 1) && (param0->unk_18 == 0)) {
            param0->unk_03.unk_00 = 1;
            ov45_022562C0(&param0->unk_03);
            PoketchData_SetAlarm(param0->poketchData, 1, param0->unk_03.unk_03, param0->unk_03.unk_04);
            ov45_02256918(param0->unk_08, 2);
            param0->unk_1C = 0;
            param0->unk_01++;
            break;
        }

        if ((param0->unk_1C == 1) && (param0->unk_18 == 1)) {
            param0->unk_1C = 0;
            PoketchSystem_PlaySoundEffect(1646);
            break;
        }

        if ((param0->unk_1C == 1) || (param0->unk_1C == 7)) {
            switch (param0->unk_18) {
            case 2:
                if (++(param0->unk_03.unk_03) > 23) {
                    param0->unk_03.unk_03 = 0;
                }
                break;
            case 3:
                if (--(param0->unk_03.unk_03) < 0) {
                    param0->unk_03.unk_03 = 23;
                }
                break;
            case 4:
                if (++(param0->unk_03.unk_04) > 59) {
                    param0->unk_03.unk_04 = 0;
                }
                break;
            case 5:
                if (--(param0->unk_03.unk_04) < 0) {
                    param0->unk_03.unk_04 = 59;
                }
                break;
            }

            param0->unk_1C = 0;
            ov45_02256918(param0->unk_08, 4);
            break;
        }
        break;
    case 1:
        if (ov45_0225693C(param0->unk_08, 2)) {
            ov45_0225635C(param0, 2);
        }
        break;
    }

    return 0;
}

static BOOL ov45_022564D0 (UnkStruct_ov45_022561D4 * param0)
{
    if (param0->unk_02) {
        ov45_0225635C(param0, 4);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (ov45_022566CC(&(param0->unk_03))) {
            ov45_0225635C(param0, 3);
            return 0;
        }

        if ((param0->unk_1C == 1) && (param0->unk_18 == 1)) {
            param0->unk_03.unk_00 = 0;
            ov45_02256918(param0->unk_08, 3);
            param0->unk_1C = 0;
            ov45_0225635C(param0, 1);
            break;
        }

        if ((param0->unk_1C == 1) && (param0->unk_18 == 0)) {
            PoketchSystem_PlaySoundEffect(1646);
            break;
        }

        if (ov45_02256664(param0) == 0) {
            ov45_02256668(param0);
        }

        {
            u32 v0, v1;

            if (ov45_02256680(param0, &v0, &v1)) {
                if (v1 != param0->unk_03.unk_02) {
                    param0->unk_03.unk_02 = v1;
                    param0->unk_03.unk_01 = v0;
                    ov45_02256918(param0->unk_08, 4);
                    param0->unk_01++;
                    break;
                }
            }
        }
        break;
        break;
    case 1:
        if (ov45_0225693C(param0->unk_08, 4)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov45_0225659C (UnkStruct_ov45_022561D4 * param0)
{
    if (param0->unk_02) {
        ov45_0225635C(param0, 4);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        ov45_02256918(param0->unk_08, 5);
        param0->unk_01++;
        break;
    case 1:
        if (ov45_022566CC(&(param0->unk_03)) == 0) {
            ov45_02256C90(param0->unk_08);
            ov45_02256918(param0->unk_08, 2);
            ov45_0225635C(param0, 2);
            return 0;
        }

        if ((param0->unk_1C == 1) && (param0->unk_18 == 1)) {
            param0->unk_03.unk_00 = 0;
            ov45_02256C90(param0->unk_08);
            ov45_02256918(param0->unk_08, 3);
            param0->unk_1C = 0;
            ov45_0225635C(param0, 1);
            return 0;
        }

        if (ov45_02256664(param0) == 0) {
            ov45_02256668(param0);
        }

        {
            u32 v0, v1;

            if (ov45_02256680(param0, &v0, &v1)) {
                if (v1 != param0->unk_03.unk_02) {
                    param0->unk_03.unk_02 = v1;
                    param0->unk_03.unk_01 = v0;
                    ov45_02256918(param0->unk_08, 4);
                }
            }
        }
        break;
    }

    return 0;
}

static BOOL ov45_02256664 (UnkStruct_ov45_022561D4 * param0)
{
    return param0->unk_2C;
}

static void ov45_02256668 (UnkStruct_ov45_022561D4 * param0)
{
    if (param0->unk_2C == 0) {
        GetCurrentTime(&(param0->unk_20));
        param0->unk_30 = 1;
    }
}

static BOOL ov45_02256680 (UnkStruct_ov45_022561D4 * param0, u32 * param1, u32 * param2)
{
    if (param0->unk_30) {
        *param1 = param0->unk_20.hour;
        *param2 = param0->unk_20.minute;
        return 1;
    }

    return 0;
}

static BOOL ov45_02256698 (UnkStruct_ov45_022561D4 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov45_02256918(param0->unk_08, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov45_02256948(param0->unk_08)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov45_022566CC (UnkStruct_ov45_022566EC_1 * param0)
{
    return (param0->unk_01 == param0->unk_03) && (param0->unk_02 == param0->unk_04);
}

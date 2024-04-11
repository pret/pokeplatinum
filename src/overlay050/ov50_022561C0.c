#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02255B34_decl.h"
#include "overlay050/struct_ov50_02256510_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay050/struct_ov50_02256510_1.h"

#include "unk_0200D9E8.h"
#include "rtc.h"
#include "heap.h"
#include "poketch_data.h"
#include "overlay025/ov25_02255ACC.h"
#include "overlay050/ov50_02256510.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov50_02256510_1 unk_04;
    UnkStruct_ov50_02256510 * unk_90;
    PoketchSystem * unk_94;
    PoketchData * unk_98;
    UnkStruct_ov25_02255B34 * unk_9C;
    u32 unk_A0;
    u32 unk_A4;
    u32 unk_A8;
    u32 unk_AC;
} UnkStruct_ov50_022561D4;

static void NitroStaticInit(void);

static BOOL ov50_022561D4(void ** param0, PoketchSystem * param1, BGL * param2, u32 param3);
static BOOL ov50_0225621C(UnkStruct_ov50_022561D4 * param0, PoketchSystem * param1, BGL * param2, u32 param3);
static void ov50_022562AC(UnkStruct_ov50_02256510_1 * param0, UnkStruct_ov50_022561D4 * param1, const RTCDate * param2);
static void ov50_02256340(UnkStruct_ov50_022561D4 * param0);
static void ov50_02256360(u32 param0, u32 param1, u32 param2, void * param3);
static void ov50_0225636C(SysTask * param0, void * param1);
static void ov50_022563B0(void * param0);
static void ov50_022563B8(UnkStruct_ov50_022561D4 * param0, u32 param1);
static BOOL ov50_022563CC(UnkStruct_ov50_022561D4 * param0);
static BOOL ov50_02256418(UnkStruct_ov50_022561D4 * param0);
static BOOL ov50_022564D8(UnkStruct_ov50_022561D4 * param0);

static void NitroStaticInit (void)
{
    ov25_02254238(ov50_022561D4, ov50_022563B0);
}

static BOOL ov50_022561D4 (void ** param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    UnkStruct_ov50_022561D4 * v0 = (UnkStruct_ov50_022561D4 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov50_022561D4));

    if (v0 != NULL) {
        if (ov50_0225621C(v0, param1, param2, param3)) {
            if (SysTask_Start(ov50_0225636C, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov50_0225621C (UnkStruct_ov50_022561D4 * param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    static const UnkUnion_020225E0 v0[] = {
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 0) * 8), ((4 + 3 * 0 + 2) * 8)},
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 1) * 8), ((4 + 3 * 1 + 2) * 8)},
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 2) * 8), ((4 + 3 * 2 + 2) * 8)},
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 3) * 8), ((4 + 3 * 3 + 2) * 8)},
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 4) * 8), ((4 + 3 * 4 + 2) * 8)},
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 5) * 8), ((4 + 3 * 5 + 2) * 8)},
        {((5 + 3 * 0) * 8), ((5 + 3 * 0 + 2) * 8), ((4 + 3 * 6) * 8), ((4 + 3 * 6 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 0) * 8), ((4 + 3 * 0 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 1) * 8), ((4 + 3 * 1 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 2) * 8), ((4 + 3 * 2 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 3) * 8), ((4 + 3 * 3 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 4) * 8), ((4 + 3 * 4 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 5) * 8), ((4 + 3 * 5 + 2) * 8)},
        {((5 + 3 * 1) * 8), ((5 + 3 * 1 + 2) * 8), ((4 + 3 * 6) * 8), ((4 + 3 * 6 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 0) * 8), ((4 + 3 * 0 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 1) * 8), ((4 + 3 * 1 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 2) * 8), ((4 + 3 * 2 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 3) * 8), ((4 + 3 * 3 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 4) * 8), ((4 + 3 * 4 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 5) * 8), ((4 + 3 * 5 + 2) * 8)},
        {((5 + 3 * 2) * 8), ((5 + 3 * 2 + 2) * 8), ((4 + 3 * 6) * 8), ((4 + 3 * 6 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 0) * 8), ((4 + 3 * 0 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 1) * 8), ((4 + 3 * 1 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 2) * 8), ((4 + 3 * 2 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 3) * 8), ((4 + 3 * 3 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 4) * 8), ((4 + 3 * 4 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 5) * 8), ((4 + 3 * 5 + 2) * 8)},
        {((5 + 3 * 3) * 8), ((5 + 3 * 3 + 2) * 8), ((4 + 3 * 6) * 8), ((4 + 3 * 6 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 0) * 8), ((4 + 3 * 0 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 1) * 8), ((4 + 3 * 1 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 2) * 8), ((4 + 3 * 2 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 3) * 8), ((4 + 3 * 3 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 4) * 8), ((4 + 3 * 4 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 5) * 8), ((4 + 3 * 5 + 2) * 8)},
        {((5 + 3 * 4) * 8), ((5 + 3 * 4 + 2) * 8), ((4 + 3 * 6) * 8), ((4 + 3 * 6 + 2) * 8)},
        {((5 + 3 * 5) * 8), ((5 + 3 * 5 + 2) * 8), ((4 + 3 * 0) * 8), ((4 + 3 * 0 + 2) * 8)},
        {((5 + 3 * 5) * 8), ((5 + 3 * 5 + 2) * 8), ((4 + 3 * 1) * 8), ((4 + 3 * 1 + 2) * 8)}
    };
    RTCDate v1;

    GetCurrentDate(&v1);
    param0->unk_98 = PoketchSystem_PoketchData(param1);
    ov50_022562AC(&(param0->unk_04), param0, &v1);

    param0->unk_A8 = param0->unk_04.unk_0C[0].unk_02;
    param0->unk_AC = param0->unk_A8 + (param0->unk_04.unk_04 - 1);

    if (ov50_02256510(&(param0->unk_90), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_9C = ov25_02255ACC(v0, NELEMS(v0), ov50_02256360, param0, 8);
        param0->unk_A0 = 0;
        param0->unk_94 = param1;

        return 1;
    }

    return 0;
}

static void ov50_022562AC (UnkStruct_ov50_02256510_1 * param0, UnkStruct_ov50_022561D4 * param1, const RTCDate * param2)
{
    static const u8 v0[12] = {
        31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31,
    };
    u32 v1, v2;

    param0->unk_00 = param2->month;
    param0->unk_08 = param2->day;
    param0->unk_04 = v0[param0->unk_00 - 1];

    if (param0->unk_00 == 2) {
        if (((param2->year % 400) == 0) || ((param2->year % 100) != 0) && ((param2->year % 4) == 0)) {
            param0->unk_04 = 29;
        }
    }

    v2 = param2->week + (7 - ((param2->day - 1) % 7));

    if (v2 >= RTC_WEEK_MAX) {
        v2 %= RTC_WEEK_MAX;
    }

    for (v1 = 0; v1 < (param0->unk_04); v1++) {
        param0->unk_0C[v1].unk_00 = v1 + 1;
        param0->unk_0C[v1].unk_03 = PoketchData_CalendarMarked(param1->unk_98, param0->unk_00, v1 + 1);
        param0->unk_0C[v1].unk_02 = v2 + v1;
    }
}

static void ov50_02256340 (UnkStruct_ov50_022561D4 * param0)
{
    ov25_02255B34(param0->unk_9C);
    ov50_0225654C(param0->unk_90);

    Heap_FreeToHeap(param0);
}

static void ov50_02256360 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov50_022561D4 * v0 = (UnkStruct_ov50_022561D4 *)param3;

    v0->unk_A4 = param0;
    v0->unk_A0 = param1;
}

static void ov50_0225636C (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov50_022561D4 *) = {
        ov50_022563CC,
        ov50_02256418,
        ov50_022564D8
    };

    UnkStruct_ov50_022561D4 * v1 = (UnkStruct_ov50_022561D4 *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->unk_94, v1->unk_9C);

        if (v0[v1->unk_00](v1)) {
            ov50_02256340(v1);
            SysTask_Done(param0);
            ov25_02254260(v1->unk_94);
        }
    } else {
    }
}

static void ov50_022563B0 (void * param0)
{
    ((UnkStruct_ov50_022561D4 *)param0)->unk_02 = 1;
}

static void ov50_022563B8 (UnkStruct_ov50_022561D4 * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov50_022563CC (UnkStruct_ov50_022561D4 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov50_022565FC(param0->unk_90, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov50_02256620(param0->unk_90, 0)) {
            ov25_0225424C(param0->unk_94);
            ov50_022563B8(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov50_02256418 (UnkStruct_ov50_022561D4 * param0)
{
    if (param0->unk_02) {
        ov50_022563B8(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (param0->unk_A0 == 1) {
            param0->unk_A0 = 0;

            if ((param0->unk_A4 >= param0->unk_A8) && (param0->unk_A4 <= param0->unk_AC)) {
                int v0 = (param0->unk_A4 - param0->unk_A8);

                if (PoketchData_CalendarMarked(param0->unk_98, param0->unk_04.unk_00, v0 + 1)) {
                    PoketchData_ClearCalendarMark(param0->unk_98, param0->unk_04.unk_00, v0 + 1);
                } else {
                    PoketchData_SetCalendarMark(param0->unk_98, param0->unk_04.unk_00, v0 + 1);
                }

                param0->unk_04.unk_0C[v0].unk_03 ^= 1;
                param0->unk_04.unk_88 = v0;
                ov50_022565FC(param0->unk_90, 2);
                param0->unk_01++;
            }
        }
        break;
    case 1:
        if (ov50_02256620(param0->unk_90, 2)) {
            param0->unk_01 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov50_022564D8 (UnkStruct_ov50_022561D4 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov50_022565FC(param0->unk_90, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov50_0225662C(param0->unk_90)) {
            return 1;
        }
        break;
    }

    return 0;
}

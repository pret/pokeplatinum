#include "enums.h"

#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay025/struct_ov25_02255B34_decl.h"
#include "overlay046/struct_ov46_02256BCC_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay046/struct_ov46_02256BCC_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02022844.h"
#include "unk_02099D44.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02255ACC.h"
#include "overlay046/ov46_02256BCC.h"

typedef struct {
    UnkStruct_ov46_02256BCC_1 unk_00;
    BOOL unk_14[3];
    u64 unk_20;
    u64 unk_28;
    u64 unk_30;
    u64 unk_38;
    BOOL unk_40;
    int unk_44;
} UnkStruct_ov46_02256270;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u32 unk_04;
    UnkStruct_ov46_02256BCC * unk_08;
    UnkStruct_ov25_0225424C * unk_0C;
    UnkStruct_ov25_02255B34 * unk_10;
    u32 unk_14;
    u32 unk_18;
    u64 unk_1C;
    u64 unk_24;
    u64 unk_2C;
    u64 unk_34;
    u64 unk_3C;
    BOOL unk_44;
    UnkStruct_ov46_02256270 unk_48;
} UnkStruct_ov46_0225621C;

enum {
    UnkEnum_ov46_0225623C_00 = 0,
    UnkEnum_ov46_0225623C_01,
};

static void NitroStaticInit(void);

static BOOL ov46_022561D4(void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static void ov46_0225621C(UnkStruct_ov46_0225621C * param0);
static void ov46_0225623C(UnkStruct_ov46_0225621C * param0, u32 param1, BOOL param2);
static void ov46_02256258(UnkStruct_ov46_0225621C * param0, u32 param1, u32 param2);
static void ov46_02256270(UnkStruct_ov46_0225621C * param0, UnkStruct_ov46_02256270 * param1);
static void ov46_0225628C(UnkStruct_ov46_0225621C * param0);
static void ov46_022562D4(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_02256310(UnkStruct_ov46_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static void ov46_022563B8(UnkStruct_ov46_0225621C * param0);
static void ov46_022563D8(u32 param0, u32 param1, u32 param2, void * param3);
static void ov46_02256408(SysTask * param0, void * param1);
static void ov46_02256458(void * param0);
static void ov46_02256460(UnkStruct_ov46_0225621C * param0, u32 param1);
static BOOL ov46_022564D8(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_02256518(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_022566A0(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_0225678C(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_02256838(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_022568E0(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_02256998(UnkStruct_ov46_0225621C * param0);
static u64 ov46_022569CC(UnkStruct_ov46_0225621C * param0);
static void ov46_02256A3C(UnkStruct_ov46_0225621C * param0);
static void ov46_02256A50(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_02256A78(UnkStruct_ov46_0225621C * param0);
static BOOL ov46_02256A88(UnkStruct_ov46_0225621C * param0);
static void ov46_02256AF0(UnkStruct_ov46_0225621C * param0);
static void ov46_02256B10(UnkStruct_ov46_0225621C * param0, u64 param1);

static void NitroStaticInit (void)
{
    ov25_02254238(ov46_022561D4, ov46_02256458);
}

static BOOL ov46_022561D4 (void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    UnkStruct_ov46_0225621C * v0 = (UnkStruct_ov46_0225621C *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov46_0225621C));

    if (v0 != NULL) {
        if (ov46_02256310(v0, param1, param2, param3)) {
            if (SysTask_Start(ov46_02256408, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static void ov46_0225621C (UnkStruct_ov46_0225621C * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_48.unk_14[v0] = 1;
        param0->unk_48.unk_00.unk_04[v0] = UnkEnum_ov46_0225623C_00;
    }

    param0->unk_44 = 1;
}

static void ov46_0225623C (UnkStruct_ov46_0225621C * param0, u32 param1, BOOL param2)
{
    param0->unk_48.unk_14[param1] = param2;
    param0->unk_48.unk_00.unk_04[param1] = (param2) ? UnkEnum_ov46_0225623C_00 : UnkEnum_ov46_0225623C_01;
    param0->unk_44 = 1;
}

static void ov46_02256258 (UnkStruct_ov46_0225621C * param0, u32 param1, u32 param2)
{
    if (param0->unk_48.unk_14[param1]) {
        param0->unk_48.unk_00.unk_04[param1] = param2;
        param0->unk_44 = 1;
    }
}

static void ov46_02256270 (UnkStruct_ov46_0225621C * param0, UnkStruct_ov46_02256270 * param1)
{
    param1->unk_00.unk_10 = ov46_0225710C(param0->unk_08);
    sub_02099D54(param0->unk_04, param1, sizeof(UnkStruct_ov46_02256270));
}

static void ov46_0225628C (UnkStruct_ov46_0225621C * param0)
{
    if (sub_02099D7C(param0->unk_04, &param0->unk_48, sizeof(UnkStruct_ov46_02256270))) {
        if (param0->unk_48.unk_44 == 2) {
            ov46_02256A88(param0);

            if (ov46_02256A78(param0)) {
                param0->unk_48.unk_44 = 4;
                param0->unk_48.unk_00.unk_08 = 0;
                param0->unk_48.unk_00.unk_0C = 2;
            }
        }
    } else {
        ov46_022562D4(param0);
    }
}

static void ov46_022562D4 (UnkStruct_ov46_0225621C * param0)
{
    param0->unk_48.unk_44 = 1;
    param0->unk_48.unk_00.unk_00 = 0;
    param0->unk_48.unk_00.unk_01 = 0;
    param0->unk_48.unk_00.unk_02 = 0;
    param0->unk_48.unk_00.unk_03 = 0;
    param0->unk_48.unk_00.unk_08 = 1;
    param0->unk_48.unk_00.unk_0C = 0;
    param0->unk_48.unk_00.unk_10 = 0;

    ov46_0225621C(param0);
    ov46_0225623C(param0, 1, 0);
}

static BOOL ov46_02256310 (UnkStruct_ov46_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    static const UnkUnion_020225E0 v0[] = {
        {144, 176, 16, 80},
        {144, 176, 80, 144},
        {144, 176, 144, 208},
        {80, 96, 72, 88},
        {80, 96, 88, 104},
        {128, 144, 72, 88},
        {128, 144, 88, 104},
        {80, 96, 120, 136},
        {80, 96, 136, 152},
        {128, 144, 120, 136},
        {128, 144, 136, 152}
    };

    param0->unk_04 = param3;
    ov46_0225628C(param0);

    if (ov46_02256BCC(&(param0->unk_08), &(param0->unk_48.unk_00), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_03 = 0;
        param0->unk_10 = ov25_02255ACC(v0, NELEMS(v0), ov46_022563D8, param0, 8);
        param0->unk_18 = 0;

        ov25_02255C5C(param0->unk_10, 3, 4);
        ov25_02255C5C(param0->unk_10, 5, 4);
        ov25_02255C5C(param0->unk_10, 4, 4);
        ov25_02255C5C(param0->unk_10, 6, 4);
        ov25_02255C5C(param0->unk_10, 7, 4);
        ov25_02255C5C(param0->unk_10, 9, 4);
        ov25_02255C5C(param0->unk_10, 8, 4);
        ov25_02255C5C(param0->unk_10, 10, 4);

        param0->unk_0C = param1;
        return 1;
    }

    return 0;
}

static void ov46_022563B8 (UnkStruct_ov46_0225621C * param0)
{
    ov46_02256270(param0, &param0->unk_48);
    ov25_02255B34(param0->unk_10);
    ov46_02256C0C(param0->unk_08);

    Heap_FreeToHeap(param0);
}

static void ov46_022563D8 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov46_0225621C * v0 = param3;

    v0->unk_14 = param0;
    v0->unk_18 = param1;

    if (param0 < 3) {
        if (param1 == 1) {
            ov46_02256258(v0, param0, UnkEnum_ov46_0225623C_01);
        } else if ((param1 == 2) || (param1 == 3)) {
            ov46_02256258(v0, param0, UnkEnum_ov46_0225623C_00);
        }
    }
}

static void ov46_02256408 (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov46_0225621C *) = {
        ov46_022564D8,
        ov46_02256518,
        ov46_022566A0,
        ov46_0225678C,
        ov46_02256838,
        ov46_022568E0,
        ov46_02256998
    };

    UnkStruct_ov46_0225621C * v1 = (UnkStruct_ov46_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->unk_0C, v1->unk_10);

        if (v1->unk_44) {
            ov46_02256D24(v1->unk_08, 4);
            v1->unk_44 = 0;
        }

        if (v0[v1->unk_00](v1)) {
            ov46_022563B8(v1);
            sub_0200DA58(param0);
            ov25_02254260(v1->unk_0C);
        }
    } else {
    }
}

static void ov46_02256458 (void * param0)
{
    ((UnkStruct_ov46_0225621C *)param0)->unk_03 = 1;
}

static void ov46_02256460 (UnkStruct_ov46_0225621C * param0, u32 param1)
{
    u32 v0 = param0->unk_00;

    if (param0->unk_03) {
        param1 = 6;
    }

    param0->unk_00 = param1;

    if ((param1 != 0) && (param1 != 6)) {
        param0->unk_48.unk_44 = v0;
    }

    switch (param1) {
    case 1:
        param0->unk_48.unk_00.unk_08 = 1;
        param0->unk_48.unk_00.unk_0C = 0;
        break;
    case 2:
        param0->unk_48.unk_00.unk_08 = 0;
        param0->unk_48.unk_00.unk_0C = 1;
        break;
    case 3:
        param0->unk_48.unk_00.unk_08 = 0;
        param0->unk_48.unk_00.unk_0C = 1;
        break;
    case 4:
        param0->unk_48.unk_00.unk_08 = 0;
        param0->unk_48.unk_00.unk_0C = 2;
        break;
    case 5:
        param0->unk_48.unk_00.unk_08 = 0;
        param0->unk_48.unk_00.unk_0C = 3;
        break;
    case 6:
        param0->unk_48.unk_44 = v0;
        break;
    }

    param0->unk_01 = 0;
}

static BOOL ov46_022564D8 (UnkStruct_ov46_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov46_02256D24(param0->unk_08, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov46_02256D48(param0->unk_08, 0)) {
            ov25_0225424C(param0->unk_0C);
            ov46_02256460(param0, param0->unk_48.unk_44);
        }
        break;
    }

    return 0;
}

static BOOL ov46_02256518 (UnkStruct_ov46_0225621C * param0)
{
    if (param0->unk_03) {
        ov46_02256460(param0, 6);
        return 0;
    }

    if (ov46_02256D54(param0->unk_08) == 0) {
        return 0;
    }

    if ((param0->unk_18 == 1) && (param0->unk_14 <= 2)) {
        param0->unk_18 = 0;

        switch (param0->unk_14) {
        case 2:
            ov46_02256AF0(param0);
            ov46_02256D24(param0->unk_08, 5);
            ov25_02254424(1635);
            break;
        case 0:
            ov25_02254424(1635);

            if (ov46_022569CC(param0)) {
                ov46_0225623C(param0, 0, 0);
                ov46_0225623C(param0, 1, 1);
                ov46_02256D24(param0->unk_08, 3);
                ov46_02256460(param0, 2);
            }
            break;
        case 1:
            ov25_02254424(1646);
            break;
        }

        return 0;
    }

    if ((param0->unk_18 == 1) || (param0->unk_18 == 7)) {
        UnkStruct_ov46_02256BCC_1 * v0 = &(param0->unk_48.unk_00);

        switch (param0->unk_14) {
        case 3:
            if (++(v0->unk_00) > 9) {
                v0->unk_00 = 0;
            }
            break;
        case 4:
            if (++(v0->unk_01) > 9) {
                v0->unk_01 = 0;
            }
            break;
        case 5:
            if (--(v0->unk_00) < 0) {
                v0->unk_00 = 9;
            }
            break;
        case 6:
            if (--(v0->unk_01) < 0) {
                v0->unk_01 = 9;
            }
            break;
        case 7:
            if (++(v0->unk_02) > 5) {
                v0->unk_02 = 0;
            }
            break;
        case 8:
            if (++(v0->unk_03) > 9) {
                v0->unk_03 = 0;
            }
            break;
        case 9:
            if (--(v0->unk_02) < 0) {
                v0->unk_02 = 5;
            }
            break;
        case 10:
            if (--(v0->unk_03) < 0) {
                v0->unk_03 = 9;
            }
            break;
        }

        ov46_02256D24(param0->unk_08, 5);
        param0->unk_18 = 0;
    }

    return 0;
}

static BOOL ov46_022566A0 (UnkStruct_ov46_0225621C * param0)
{
    if (param0->unk_03) {
        ov46_02256460(param0, 6);
        return 0;
    }

    if (ov46_02256A88(param0)) {
        ov46_02256D24(param0->unk_08, 5);

        if (ov46_02256A78(param0)) {
            ov46_0225623C(param0, 0, 0);
            ov46_02256D24(param0->unk_08, 6);
            ov46_02256460(param0, 4);
            return 0;
        }
    }

    if (param0->unk_18 == 1) {
        param0->unk_18 = 0;

        switch (param0->unk_14) {
        case 0:
            ov25_02254424(1646);
            break;
        case 1:
            ov25_02254424(1635);
            ov46_0225623C(param0, 1, 0);
            ov46_0225623C(param0, 0, 1);
            ov46_02256A3C(param0);
            ov46_02256D24(param0->unk_08, 4);
            ov46_02256460(param0, 3);
            break;
        case 2:
            ov25_02254424(1635);
            ov46_0225623C(param0, 0, 1);
            ov46_0225623C(param0, 1, 0);
            ov46_02256AF0(param0);
            ov46_02256D24(param0->unk_08, 4);
            ov46_02256D24(param0->unk_08, 5);
            ov46_02256D24(param0->unk_08, 2);
            ov46_02256460(param0, 1);
            break;
        }
    }

    return 0;
}

static BOOL ov46_0225678C (UnkStruct_ov46_0225621C * param0)
{
    if (param0->unk_03) {
        ov46_02256460(param0, 6);
        return 0;
    }

    if (param0->unk_18 == 1) {
        param0->unk_18 = 0;

        switch (param0->unk_14) {
        case 0:
            ov25_02254424(1635);
            ov46_0225623C(param0, 1, 1);
            ov46_0225623C(param0, 0, 0);
            ov46_02256A50(param0);
            ov46_02256460(param0, 2);
            break;
        case 1:
            ov25_02254424(1646);
            break;
        case 2:
            ov25_02254424(1635);
            ov46_0225623C(param0, 0, 1);
            ov46_0225623C(param0, 1, 0);
            ov46_02256AF0(param0);
            ov46_02256D24(param0->unk_08, 4);
            ov46_02256D24(param0->unk_08, 5);
            ov46_02256D24(param0->unk_08, 2);
            ov46_02256460(param0, 1);
            break;
        }
    }

    return 0;
}

static BOOL ov46_02256838 (UnkStruct_ov46_0225621C * param0)
{
    if (param0->unk_03) {
        ov46_02256460(param0, 6);
        return 0;
    }

    if (param0->unk_18 == 1) {
        param0->unk_18 = 0;

        switch (param0->unk_14) {
        case 0:
            ov25_02254424(1646);
            break;
        case 1:
            ov25_02254424(1635);
            ov46_0225623C(param0, 0, 1);
            ov46_0225623C(param0, 1, 0);
            ov46_02256D24(param0->unk_08, 7);
            ov46_02256460(param0, 5);
            param0->unk_01++;
            break;
        case 2:
            ov25_02254424(1635);
            ov46_0225623C(param0, 0, 1);
            ov46_0225623C(param0, 1, 0);
            ov46_02256D24(param0->unk_08, 7);
            ov46_02256D24(param0->unk_08, 2);
            ov46_02256460(param0, 1);
            break;
        }
    }

    return 0;
}

static BOOL ov46_022568E0 (UnkStruct_ov46_0225621C * param0)
{
    if (param0->unk_03) {
        ov46_02256460(param0, 6);
        return 0;
    }

    if (param0->unk_18 == 1) {
        param0->unk_18 = 0;

        switch (param0->unk_14) {
        case 0:
            ov25_02254424(1635);
            ov46_0225623C(param0, 0, 0);
            ov46_0225623C(param0, 1, 1);
            ov46_02256D24(param0->unk_08, 6);
            ov46_02256460(param0, 4);
            break;
        case 1:
            ov25_02254424(1646);
            break;
        case 2:
            ov25_02254424(1635);
            ov46_0225623C(param0, 0, 1);
            ov46_0225623C(param0, 1, 0);
            ov46_02256AF0(param0);
            ov46_02256D24(param0->unk_08, 7);
            ov46_02256D24(param0->unk_08, 4);
            ov46_02256D24(param0->unk_08, 5);
            ov46_02256D24(param0->unk_08, 2);
            ov46_02256460(param0, 1);
            break;
        }
    }

    return 0;
}

static BOOL ov46_02256998 (UnkStruct_ov46_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov46_02256D24(param0->unk_08, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov46_02256D54(param0->unk_08)) {
            return 1;
        }
        break;
    }

    return 0;
}

static u64 ov46_022569CC (UnkStruct_ov46_0225621C * param0)
{
    UnkStruct_ov46_02256BCC_1 * v0 = &(param0->unk_48.unk_00);

    param0->unk_48.unk_20 = sub_0202293C();
    param0->unk_48.unk_28 = 0;
    param0->unk_48.unk_40 = 1;
    param0->unk_48.unk_30 = 0;
    param0->unk_48.unk_38 = (v0->unk_00 * 10 + v0->unk_01) * 60 + (v0->unk_02 * 10 + v0->unk_03);

    ov46_02256B10(param0, param0->unk_48.unk_38);

    return param0->unk_48.unk_38;
}

static void ov46_02256A3C (UnkStruct_ov46_0225621C * param0)
{
    param0->unk_48.unk_40 = 0;
    param0->unk_48.unk_28 = sub_0202293C();
}

static void ov46_02256A50 (UnkStruct_ov46_0225621C * param0)
{
    param0->unk_48.unk_20 += (sub_0202293C() - param0->unk_48.unk_28);
    param0->unk_48.unk_40 = 1;
}

static BOOL ov46_02256A78 (UnkStruct_ov46_0225621C * param0)
{
    return param0->unk_48.unk_40 == 0;
}

static BOOL ov46_02256A88 (UnkStruct_ov46_0225621C * param0)
{
    if (param0->unk_48.unk_40) {
        u64 v0 = sub_0202295C(sub_0202293C() - param0->unk_48.unk_20);

        if (v0 >= param0->unk_48.unk_38) {
            ov46_02256AF0(param0);
            return 1;
        } else if (v0 != param0->unk_48.unk_30) {
            ov46_02256B10(param0, (param0->unk_48.unk_38 - v0));
            param0->unk_48.unk_30 = v0;
            return 1;
        }

        return 0;
    }

    return 0;
}

static void ov46_02256AF0 (UnkStruct_ov46_0225621C * param0)
{
    param0->unk_48.unk_40 = 0;
    param0->unk_48.unk_00.unk_00 = 0;
    param0->unk_48.unk_00.unk_01 = 0;
    param0->unk_48.unk_00.unk_02 = 0;
    param0->unk_48.unk_00.unk_03 = 0;
}

static void ov46_02256B10 (UnkStruct_ov46_0225621C * param0, u64 param1)
{
    u32 v0, v1;

    CP_SetDiv64_32(param1, 60);

    v0 = CP_GetDivResult64();
    v1 = CP_GetDivRemainder64();

    CP_SetDiv32_32(v0, 10);

    param0->unk_48.unk_00.unk_00 = CP_GetDivResult32();
    param0->unk_48.unk_00.unk_01 = CP_GetDivRemainder32();

    CP_SetDiv32_32(v1, 10);

    param0->unk_48.unk_00.unk_02 = CP_GetDivResult32();
    param0->unk_48.unk_00.unk_03 = CP_GetDivRemainder32();
}

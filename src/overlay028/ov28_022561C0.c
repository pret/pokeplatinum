#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02026324_decl.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay025/struct_ov25_02255B34_decl.h"
#include "overlay028/struct_ov28_0225697C_decl.h"
#include "overlay028/struct_ov28_02256E9C_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay028/struct_ov28_0225697C_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0202631C.h"
#include "pokemon.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02255ACC.h"
#include "overlay028/ov28_0225697C.h"
#include "overlay028/ov28_02256E9C.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    u32 unk_08;
    UnkStruct_ov25_02255B34 * unk_0C;
    UnkStruct_ov25_0225424C * unk_10;
    UnkStruct_ov28_0225697C * unk_14;
    UnkStruct_ov28_0225697C_1 unk_18;
} UnkStruct_ov28_02256210;

static void NitroStaticInit(void);

static BOOL ov28_022561D4(void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static BOOL ov28_02256210(UnkStruct_ov28_02256210 * param0, u32 param1, UnkStruct_02018340 * param2);
static void ov28_02256298(UnkStruct_ov28_02256210 * param0);
static void ov28_022562CC(UnkStruct_0201CD38 * param0, void * param1);
static void ov28_02256324(void * param0);
static void ov28_0225632C(UnkStruct_ov28_02256210 * param0, u32 param1);
static void ov28_02256344(u32 param0, u32 param1, u32 param2, void * param3);
static BOOL ov28_02256374(UnkStruct_ov28_02256210 * param0);
static BOOL ov28_022563B4(UnkStruct_ov28_02256210 * param0);
static BOOL ov28_0225648C(UnkStruct_ov28_02256210 * param0);
static BOOL ov28_02256588(UnkStruct_ov28_02256210 * param0);
static BOOL ov28_022566A0(UnkStruct_ov28_02256210 * param0);
static BOOL ov28_022567A8(UnkStruct_ov28_02256210 * param0);
static void ov28_02256868(UnkStruct_ov28_02256210 * param0);
static BOOL ov28_02256888(UnkStruct_ov28_02256210 * param0, u32 param1);
static BOOL ov28_022568E0(UnkStruct_ov28_02256210 * param0);
static void ov28_02256914(UnkStruct_ov28_02256210 * param0, const UnkStruct_ov28_02256E9C * param1);

static const UnkUnion_020225E0 Unk_ov28_02257658[] = {
    {0x90, 0xAF, 0x20, 0x5F},
    {0x70, 0x8F, 0x20, 0x3F},
    {0x70, 0x8F, 0x40, 0x5F},
    {0x70, 0x8F, 0x60, 0x7F},
    {0x50, 0x6F, 0x20, 0x3F},
    {0x50, 0x6F, 0x40, 0x5F},
    {0x50, 0x6F, 0x60, 0x7F},
    {0x30, 0x4F, 0x20, 0x3F},
    {0x30, 0x4F, 0x40, 0x5F},
    {0x30, 0x4F, 0x60, 0x7F},
    {0x90, 0xAF, 0x60, 0x7F},
    {0x50, 0x6F, 0xA0, 0xBF},
    {0x50, 0x6F, 0x80, 0x9F},
    {0x70, 0x8F, 0x80, 0x9F},
    {0x70, 0x8F, 0xA0, 0xBF},
    {0x90, 0xAF, 0x80, 0xBF},
    {0x30, 0x4F, 0x80, 0xBF}
};

static void NitroStaticInit (void)
{
    ov25_02254238(ov28_022561D4, ov28_02256324);
}

static BOOL ov28_022561D4 (void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    UnkStruct_ov28_02256210 * v0 = (UnkStruct_ov28_02256210 *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov28_02256210));

    if (v0 != NULL) {
        if (ov28_02256210(v0, param3, param2)) {
            v0->unk_10 = param1;
            SysTask_Start(ov28_022562CC, v0, 1);
            *param0 = v0;

            return 1;
        }
    }

    return 0;
}

static BOOL ov28_02256210 (UnkStruct_ov28_02256210 * param0, u32 param1, UnkStruct_02018340 * param2)
{
    if (ov28_0225697C(&(param0->unk_14), &(param0->unk_18), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_03 = 0;
        param0->unk_02 = 0;
        param0->unk_04 = 0;
        param0->unk_06 = 17;
        param0->unk_08 = 0xffffffff;

        ov28_02256E9C(&param0->unk_18.unk_04, 10);
        ov28_02256E9C(&param0->unk_18.unk_08, 10);
        ov28_02256E9C(&param0->unk_18.unk_0C, 10);

        if ((param0->unk_18.unk_04 == NULL) || (param0->unk_18.unk_08 == NULL) || (param0->unk_18.unk_0C == NULL)) {
            return 0;
        }

        param0->unk_0C = ov25_02255ACC(Unk_ov28_02257658, NELEMS(Unk_ov28_02257658), ov28_02256344, param0, 8);

        if (param0->unk_0C == NULL) {
            return 0;
        }
    }

    return 1;
}

static void ov28_02256298 (UnkStruct_ov28_02256210 * param0)
{
    if (param0->unk_18.unk_04) {
        ov28_02256EC0(param0->unk_18.unk_04);
    }

    if (param0->unk_18.unk_08) {
        ov28_02256EC0(param0->unk_18.unk_08);
    }

    if (param0->unk_18.unk_0C) {
        ov28_02256EC0(param0->unk_18.unk_0C);
    }

    if (param0->unk_0C) {
        ov25_02255B34(param0->unk_0C);
    }

    ov28_022569AC(param0->unk_14);
}

static void ov28_022562CC (UnkStruct_0201CD38 * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov28_02256210 *) = {
        ov28_02256374,
        ov28_022563B4,
        ov28_0225648C,
        ov28_02256588,
        ov28_022566A0,
        ov28_022567A8,
        ov28_022568E0
    };

    UnkStruct_ov28_02256210 * v1 = (UnkStruct_ov28_02256210 *)param1;

    if (v1->unk_03) {
        ov28_0225632C(v1, 6);
        v1->unk_03 = 0;
    }

    if (v1->unk_00 < NELEMS(v0)) {
        v1->unk_06 = 17;
        ov25_02254518(v1->unk_10, v1->unk_0C);

        if (v0[v1->unk_00](v1)) {
            ov28_02256298(v1);
            Heap_FreeToHeap(v1);
            sub_0200DA58(param0);
            ov25_02254260(v1->unk_10);
        }
    } else {
    }
}

static void ov28_02256324 (void * param0)
{
    ((UnkStruct_ov28_02256210 *)param0)->unk_03 = 1;
}

static void ov28_0225632C (UnkStruct_ov28_02256210 * param0, u32 param1)
{
    if (param0->unk_03 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 6;
    }

    param0->unk_02 = param0->unk_00;
    param0->unk_01 = 0;
}

static void ov28_02256344 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov28_02256210 * v0 = (UnkStruct_ov28_02256210 *)param3;

    switch (param2) {
    case 0:
        v0->unk_18.unk_00 = param0;
        ov28_022569B8(v0->unk_14, 2);
        break;
    case 1:
        v0->unk_18.unk_00 = param0;
        ov28_022569B8(v0->unk_14, 1);
        break;
    }

    if (param1 == 3) {
        v0->unk_06 = param0;
    }
}

static BOOL ov28_02256374 (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov28_022569B8(param0->unk_14, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, 0)) {
            ov25_0225424C(param0->unk_10);
            ov28_0225632C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov28_022563B4 (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            break;
        case 10:
            param0->unk_04 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            param0->unk_18.unk_02 = param0->unk_06;
            param0->unk_04 = 0;
            param0->unk_08 = 8;
            param0->unk_02 = 2;
            break;
        case 15:
            ov28_02256914(param0, param0->unk_18.unk_04);
            ov28_02256EC8(param0->unk_18.unk_04);
            break;
        default:
            if (param0->unk_04) {
                if (ov28_022571B8(param0->unk_18.unk_04, param0->unk_06)) {
                    param0->unk_08 = 3;
                }
            } else {
                if (ov28_0225717C(param0->unk_18.unk_04, param0->unk_06)) {
                    param0->unk_08 = 3;
                }
            }
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_0225648C (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            param0->unk_02 = 1;
            break;
        case 10:
            ov28_02256EC8(param0->unk_18.unk_08);
            param0->unk_08 = 5;
            param0->unk_04 = 1;
            param0->unk_02 = 3;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            param0->unk_18.unk_02 = param0->unk_06;
            param0->unk_08 = 8;
            break;
        case 15:
            ov28_02256ED8(param0->unk_18.unk_08, param0->unk_18.unk_04);

            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                ov28_02256914(param0, param0->unk_18.unk_0C);
                param0->unk_08 = 6;
                param0->unk_02 = 4;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        default:
            ov28_02256EC8(param0->unk_18.unk_08);

            if (ov28_0225717C(param0->unk_18.unk_08, param0->unk_06)) {
                param0->unk_08 = 5;
                param0->unk_02 = 3;
            }
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_02256588 (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            param0->unk_02 = 1;
            break;
        case 10:
            param0->unk_04 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                param0->unk_18.unk_02 = param0->unk_06;
                param0->unk_04 = 0;
                ov28_02256ED8(param0->unk_18.unk_04, param0->unk_18.unk_0C);
                param0->unk_08 = 7;
                param0->unk_02 = 2;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        case 15:
            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                ov28_02256914(param0, param0->unk_18.unk_0C);
                param0->unk_08 = 6;
                param0->unk_04 = 0;
                param0->unk_02 = 4;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        default:
            if (param0->unk_04) {
                if (ov28_022571B8(param0->unk_18.unk_08, param0->unk_06)) {
                    param0->unk_08 = 5;
                }
            } else {
                if (ov28_0225717C(param0->unk_18.unk_08, param0->unk_06)) {
                    param0->unk_08 = 5;
                }
            }
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_022566A0 (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 4;
            param0->unk_02 = 1;
            break;
        case 10:
            ov28_02256868(param0);
            param0->unk_08 = 3;
            param0->unk_04 = 1;
            param0->unk_02 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
            param0->unk_18.unk_02 = param0->unk_06;
            param0->unk_08 = 8;
            param0->unk_04 = 0;
            ov28_02256ED8(param0->unk_18.unk_04, param0->unk_18.unk_0C);
            param0->unk_02 = 2;
            break;
        case 15:
            ov28_02256ED8(param0->unk_18.unk_04, param0->unk_18.unk_0C);

            if (ov28_02256888(param0, param0->unk_18.unk_02)) {
                ov28_02256914(param0, param0->unk_18.unk_0C);
                param0->unk_08 = 6;
                param0->unk_04 = 0;
            } else {
                param0->unk_08 = 9;
                param0->unk_02 = 5;
            }
            break;
        default:
            ov28_02256EC8(param0->unk_18.unk_04);

            if (ov28_0225717C(param0->unk_18.unk_04, param0->unk_06)) {
                param0->unk_08 = 3;
            }

            param0->unk_02 = 1;
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov28_022567A8 (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        param0->unk_08 = 0xffffffff;

        switch (param0->unk_06) {
        case 17:
            break;
        case 16:
            ov28_02256868(param0);
            param0->unk_08 = 3;
            param0->unk_02 = 1;
            break;
        case 10:
            ov28_02256868(param0);
            param0->unk_08 = 3;
            param0->unk_04 = 1;
            param0->unk_02 = 1;
            break;
        case 12:
        case 11:
        case 14:
        case 13:
        case 15:
            break;
        default:
            ov28_02256868(param0);

            if (ov28_0225717C(param0->unk_18.unk_04, param0->unk_06)) {
                param0->unk_08 = 3;
            }

            param0->unk_02 = 1;
            break;
        }

        if (param0->unk_08 != 0xffffffff) {
            ov28_022569B8(param0->unk_14, param0->unk_08);
            param0->unk_01++;
        } else if (param0->unk_02 != param0->unk_00) {
            ov28_0225632C(param0, param0->unk_02);
        }
        break;
    case 1:
        if (ov28_022569DC(param0->unk_14, param0->unk_08)) {
            if (param0->unk_02 != param0->unk_00) {
                ov28_0225632C(param0, param0->unk_02);
            } else {
                param0->unk_01 = 0;
            }
        }
        break;
    }

    return 0;
}

static void ov28_02256868 (UnkStruct_ov28_02256210 * param0)
{
    ov28_02256EC8(param0->unk_18.unk_04);
    ov28_02256EC8(param0->unk_18.unk_08);
    ov28_02256EC8(param0->unk_18.unk_0C);

    param0->unk_18.unk_02 = 17;
    param0->unk_04 = 0;
}

static BOOL ov28_02256888 (UnkStruct_ov28_02256210 * param0, u32 param1)
{
    BOOL v0 = 0;

    switch (param1) {
    case 12:
        ov28_02256EE8(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    case 11:
        ov28_02256F74(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    case 13:
        ov28_02257028(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    case 14:
        ov28_02257058(param0->unk_18.unk_04, param0->unk_18.unk_08, param0->unk_18.unk_0C);
        break;
    }

    return ov28_02257240(param0->unk_18.unk_0C, 10);
}

static BOOL ov28_022568E0 (UnkStruct_ov28_02256210 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov28_022569B8(param0->unk_14, 10);
        param0->unk_01++;
        break;
    case 1:
        if (ov28_022569E8(param0->unk_14)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov28_02256914 (UnkStruct_ov28_02256210 * param0, const UnkStruct_ov28_02256E9C * param1)
{
    s64 v0 = ov28_02257468(param1);

    if ((v0 > 0) && (v0 <= 493)) {
        UnkStruct_02026324 * v1;
        u16 v2;

        v1 = sub_02027560(ov25_02254544(param0->unk_10));

        if (sub_02027474(v1)) {
            v2 = v0;
        } else {
            v2 = sub_020775C4((u16)v0);
        }

        if (((v2 > 0) && (v2 <= 493)) && sub_02026FE8(v1, v2)) {
            ov25_02254444(v2, 0);
        }
    }
}

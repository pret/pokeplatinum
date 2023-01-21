#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02056B24_decl.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay025/struct_ov25_02255B34_decl.h"
#include "overlay054/struct_ov54_0225642C_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay054/struct_ov54_0225642C_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02056720.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02255ACC.h"
#include "overlay054/ov54_0225642C.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov54_0225642C_1 unk_04;
    UnkStruct_ov54_0225642C * unk_98;
    UnkStruct_ov25_0225424C * unk_9C;
    UnkStruct_ov25_02255B34 * unk_A0;
    u32 unk_A4;
    u32 unk_A8;
} UnkStruct_ov54_0225621C;

static void NitroStaticInit(void);

static BOOL ov54_022561D4(void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static BOOL ov54_0225621C(UnkStruct_ov54_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static void ov54_022562D4(UnkStruct_ov54_0225621C * param0);
static void ov54_022562F4(UnkStruct_0201CD38 * param0, void * param1);
static void ov54_02256338(void * param0);
static void ov54_02256340(u32 param0, u32 param1, u32 param2, void * param3);
static void ov54_0225634C(UnkStruct_ov54_0225621C * param0, u32 param1);
static BOOL ov54_02256360(UnkStruct_ov54_0225621C * param0);
static BOOL ov54_022563AC(UnkStruct_ov54_0225621C * param0);
static BOOL ov54_022563F4(UnkStruct_ov54_0225621C * param0);

static void NitroStaticInit (void)
{
    ov25_02254238(ov54_022561D4, ov54_02256338);
}

static BOOL ov54_022561D4 (void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    UnkStruct_ov54_0225621C * v0 = (UnkStruct_ov54_0225621C *)AllocFromHeap(8, sizeof(UnkStruct_ov54_0225621C));

    if (v0 != NULL) {
        if (ov54_0225621C(v0, param1, param2, param3)) {
            if (sub_0200D9E8(ov54_022562F4, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov54_0225621C (UnkStruct_ov54_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    static const UnkUnion_020225E0 v0[] = {
        {
            ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 3) - (48 / 2)),
            ((48 + 40 * 3) + (48 / 2))
        },
        {
            ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 2) - (48 / 2)),
            ((48 + 40 * 2) + (48 / 2))
        },
        {
            ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 1) - (48 / 2)),
            ((48 + 40 * 1) + (48 / 2))
        },
        {
            ((48 + 48 * 2) - (36 / 2)),
            ((48 + 48 * 2) + (36 / 2)),
            ((48 + 40 * 0) - (48 / 2)),
            ((48 + 40 * 0) + (48 / 2))
        },
        {
            ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 3) - (48 / 2)),
            ((48 + 40 * 3) + (48 / 2))
        },
        {
            ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 2) - (48 / 2)),
            ((48 + 40 * 2) + (48 / 2))
        },
        {
            ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 1) - (48 / 2)),
            ((48 + 40 * 1) + (48 / 2))
        },
        {
            ((48 + 48 * 1) - (36 / 2)),
            ((48 + 48 * 1) + (36 / 2)),
            ((48 + 40 * 0) - (48 / 2)),
            ((48 + 40 * 0) + (48 / 2))
        },
        {
            ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 3) - (48 / 2)),
            ((48 + 40 * 3) + (48 / 2))
        },
        {
            ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 2) - (48 / 2)),
            ((48 + 40 * 2) + (48 / 2))
        },
        {
            ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 1) - (48 / 2)),
            ((48 + 40 * 1) + (48 / 2))
        },
        {
            ((48 + 48 * 0) - (36 / 2)),
            ((48 + 48 * 0) + (36 / 2)),
            ((48 + 40 * 0) - (48 / 2)),
            ((48 + 40 * 0) + (48 / 2))
        }
    };
    UnkStruct_02056B24 * v1;
    int v2;

    v1 = ov25_02254540(param1);
    param0->unk_04.unk_90 = sub_02056AAC(v1);

    for (v2 = 0; v2 < param0->unk_04.unk_90; v2++) {
        sub_02056AC8(v1, v2, &(param0->unk_04.unk_00[v2].unk_00), &(param0->unk_04.unk_00[v2].unk_08));
        param0->unk_04.unk_00[v2].unk_04 = sub_02056AFC(v1, v2);
    }

    if (ov54_0225642C(&(param0->unk_98), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_A0 = ov25_02255ACC(v0, NELEMS(v0), ov54_02256340, param0, 8);
        param0->unk_A4 = 0;
        param0->unk_A8 = 0;
        param0->unk_9C = param1;

        return 1;
    }

    return 0;
}

static void ov54_022562D4 (UnkStruct_ov54_0225621C * param0)
{
    ov25_02255B34(param0->unk_A0);
    ov54_02256460(param0->unk_98);

    FreeToHeap(param0);
}

static void ov54_022562F4 (UnkStruct_0201CD38 * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov54_0225621C *) = {
        ov54_02256360,
        ov54_022563AC,
        ov54_022563F4
    };

    UnkStruct_ov54_0225621C * v1 = (UnkStruct_ov54_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        ov25_02254518(v1->unk_9C, v1->unk_A0);

        if (v0[v1->unk_00](v1)) {
            ov54_022562D4(v1);
            sub_0200DA58(param0);
            ov25_02254260(v1->unk_9C);
        }
    } else {
    }
}

static void ov54_02256338 (void * param0)
{
    ((UnkStruct_ov54_0225621C *)param0)->unk_02 = 1;
}

static void ov54_02256340 (u32 param0, u32 param1, u32 param2, void * param3)
{
    UnkStruct_ov54_0225621C * v0 = (UnkStruct_ov54_0225621C *)param3;

    v0->unk_A8 = param0;
    v0->unk_A4 = param1;
}

static void ov54_0225634C (UnkStruct_ov54_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov54_02256360 (UnkStruct_ov54_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov54_0225646C(param0->unk_98, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov54_02256490(param0->unk_98, 0)) {
            ov25_0225424C(param0->unk_9C);
            ov54_0225634C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov54_022563AC (UnkStruct_ov54_0225621C * param0)
{
    if (param0->unk_02) {
        ov54_0225634C(param0, 2);
        return 0;
    }

    if (param0->unk_A4 == 1) {
        int v0 = 12 - 1 - param0->unk_A8;

        if (v0 < param0->unk_04.unk_90) {
            ov25_02254444(param0->unk_04.unk_00[v0].unk_00, param0->unk_04.unk_00[v0].unk_04);
        }

        param0->unk_A4 = 0;
    }

    return 0;
}

static BOOL ov54_022563F4 (UnkStruct_ov54_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov54_0225646C(param0->unk_98, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov54_0225649C(param0->unk_98)) {
            return 1;
        }
        break;
    }

    return 0;
}

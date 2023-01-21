#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "inlines.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_02056B24_decl.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay047/struct_ov47_02256634_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0206C638.h"
#include "overlay047/struct_ov47_02256634_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0202D7A8.h"
#include "unk_020507CC.h"
#include "unk_02056720.h"
#include "unk_0206AFE0.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay047/ov47_02256634.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_ov47_02256634_1 unk_04;
    UnkStruct_ov47_02256634 * unk_70;
    UnkStruct_ov25_0225424C * unk_74;
    UnkStruct_02056B24 * unk_78;
    UnkStruct_0206C638 * unk_7C[6];
    u8 unk_94[6];
    u8 unk_9A;
} UnkStruct_ov47_0225621C;

static void NitroStaticInit(void);

static BOOL ov47_022561D4(void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static BOOL ov47_0225621C(UnkStruct_ov47_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3);
static void ov47_0225634C(UnkStruct_ov47_0225621C * param0);
static void ov47_02256384(UnkStruct_0201CD38 * param0, void * param1);
static void ov47_022563B8(void * param0);
static void ov47_022563C0(UnkStruct_ov47_0225621C * param0, u32 param1);
static BOOL ov47_022563D4(UnkStruct_ov47_0225621C * param0);
static BOOL ov47_02256414(UnkStruct_ov47_0225621C * param0);
static BOOL ov47_022564A8(UnkStruct_ov47_0225621C * param0);
static BOOL ov47_02256500(UnkStruct_ov47_0225621C * param0);
static void ov47_02256534(UnkStruct_ov47_0225621C * param0, int param1);
static BOOL ov47_02256584(UnkStruct_ov47_0225621C * param0);

static void NitroStaticInit (void)
{
    ov25_02254238(ov47_022561D4, ov47_022563B8);
}

static BOOL ov47_022561D4 (void ** param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    UnkStruct_ov47_0225621C * v0 = (UnkStruct_ov47_0225621C *)AllocFromHeap(8, sizeof(UnkStruct_ov47_0225621C));

    if (v0 != NULL) {
        if (ov47_0225621C(v0, param1, param2, param3)) {
            if (sub_0200D9E8(ov47_02256384, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov47_0225621C (UnkStruct_ov47_0225621C * param0, UnkStruct_ov25_0225424C * param1, UnkStruct_02018340 * param2, u32 param3)
{
    int v0;

    param0->unk_78 = ov25_02254540(param1);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_04.unk_0C[v0].unk_03 = 1;
        param0->unk_04.unk_0C[v0].unk_02 = v0;

        sub_020569E8(param0->unk_78, v0, &(param0->unk_04.unk_0C[v0].unk_00), &(param0->unk_04.unk_0C[v0].unk_01));

        param0->unk_04.unk_0C[v0].unk_00 += 16;
        param0->unk_04.unk_0C[v0].unk_01 += 16;
        param0->unk_04.unk_0C[v0].unk_03 = 0;
        param0->unk_94[v0] = v0;
    }

    param0->unk_04.unk_24 = 0;
    param0->unk_04.unk_28 = 0;
    param0->unk_04.unk_08 = 0;

    {
        UnkStruct_020507E4 * v1 = sub_020507E4(ov25_02254544(param1));

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_04.unk_2C[v0] = sub_0206B1F0(v1, v0);
        }
    }

    {
        UnkStruct_0202D7B0 * v2 = sub_0202D834(ov25_02254544(param1));

        for (v0 = 0; v0 < 6; v0++) {
            param0->unk_7C[v0] = sub_0202D924(v2, v0);
            param0->unk_04.unk_3C[v0].unk_00 = sub_0202D93C(param0->unk_7C[v0], 8);
            param0->unk_9A = 0;
        }
    }

    inline_ov47_0225621C(ov25_0225453C(param1), &(param0->unk_04.unk_00), &(param0->unk_04.unk_04));

    if (ov47_02256634(&(param0->unk_70), &(param0->unk_04), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_74 = param1;
        return 1;
    }

    return 0;
}

static void ov47_0225634C (UnkStruct_ov47_0225621C * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_020569C4(param0->unk_78, v0, (param0->unk_04.unk_0C[v0].unk_00 - 16), (param0->unk_04.unk_0C[v0].unk_01 - 16));
    }

    ov47_02256670(param0->unk_70);
    FreeToHeap(param0);
}

static void ov47_02256384 (UnkStruct_0201CD38 * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov47_0225621C *) = {
        ov47_022563D4,
        ov47_02256414,
        ov47_022564A8,
        ov47_02256500
    };

    UnkStruct_ov47_0225621C * v1 = (UnkStruct_ov47_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov47_0225634C(v1);
            sub_0200DA58(param0);
            ov25_02254260(v1->unk_74);
        }
    } else {
    }
}

static void ov47_022563B8 (void * param0)
{
    ((UnkStruct_ov47_0225621C *)param0)->unk_02 = 1;
}

static void ov47_022563C0 (UnkStruct_ov47_0225621C * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 3;
    }

    param0->unk_01 = 0;
}

static BOOL ov47_022563D4 (UnkStruct_ov47_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov47_0225686C(param0->unk_70, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov47_02256890(param0->unk_70, 0)) {
            ov25_0225424C(param0->unk_74);
            ov47_022563C0(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov47_02256414 (UnkStruct_ov47_0225621C * param0)
{
    u32 v0, v1;

    if (param0->unk_02) {
        ov47_022563C0(param0, 3);
        return 0;
    }

    param0->unk_04.unk_08 = ov47_02256584(param0);
    param0->unk_04.unk_28 = 0;

    if (ov25_022544BC(&v0, &v1)) {
        int v2, v3, v4, v5;

        for (v2 = 0; v2 < 6; v2++) {
            v3 = param0->unk_94[v2];
            v4 = (int)(param0->unk_04.unk_0C[v3].unk_00) - (int)v0;

            if ((v4 >= -8) && (v4 <= 8)) {
                v5 = (int)(param0->unk_04.unk_0C[v3].unk_01) - (int)(v1);

                if ((v5 >= -8) && (v5 <= 8)) {
                    ov47_02256534(param0, v3);
                    param0->unk_04.unk_0C[v3].unk_00 = v0;
                    param0->unk_04.unk_0C[v3].unk_01 = v1;
                    param0->unk_04.unk_0C[v3].unk_03 = 1;
                    param0->unk_04.unk_24 = v3;
                    param0->unk_04.unk_28 = 1;
                    ov47_022563C0(param0, 2);
                    break;
                }
            }
        }
    }

    return 0;
}

static BOOL ov47_022564A8 (UnkStruct_ov47_0225621C * param0)
{
    u32 v0, v1;

    if (param0->unk_02) {
        ov47_022563C0(param0, 3);
        return 0;
    }

    param0->unk_04.unk_08 = ov47_02256584(param0);

    if (ov25_0225446C(&v0, &v1)) {
        param0->unk_04.unk_0C[param0->unk_04.unk_24].unk_00 = v0;
        param0->unk_04.unk_0C[param0->unk_04.unk_24].unk_01 = v1;
    } else {
        param0->unk_04.unk_0C[param0->unk_04.unk_24].unk_03 = 0;
        ov47_022563C0(param0, 1);
    }

    return 0;
}

static BOOL ov47_02256500 (UnkStruct_ov47_0225621C * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov47_0225686C(param0->unk_70, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov47_0225689C(param0->unk_70)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov47_02256534 (UnkStruct_ov47_0225621C * param0, int param1)
{
    if (param0->unk_94[0] != param1) {
        int v0, v1;

        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_94[v0] == param1) {
                break;
            }
        }

        while (v0) {
            param0->unk_94[v0] = param0->unk_94[v0 - 1];
            v0--;
        }

        param0->unk_94[0] = param1;

        for (v0 = 0; v0 < 6; v0++) {
            v1 = param0->unk_94[v0];
            param0->unk_04.unk_0C[v1].unk_02 = v0;
        }
    }
}

static BOOL ov47_02256584 (UnkStruct_ov47_0225621C * param0)
{
    BOOL v0 = 0;

    if (ov25_02254534(param0->unk_74)) {
        int v1, v2;

        inline_ov47_0225621C(ov25_0225453C(param0->unk_74), &v1, &v2);

        if ((v1 != param0->unk_04.unk_00) || (v2 != param0->unk_04.unk_04)) {
            param0->unk_04.unk_00 = v1;
            param0->unk_04.unk_04 = v2;
            v0 = 1;
        }

        if (++(param0->unk_9A) >= 5) {
            int v3;

            for (v3 = 0; v3 < 6; v3++) {
                if (param0->unk_04.unk_3C[v3].unk_00 == 0) {
                    param0->unk_04.unk_3C[v3].unk_00 = sub_0202D93C(param0->unk_7C[v3], 8);

                    if (param0->unk_04.unk_3C[v3].unk_00) {
                        v0 = 1;
                    }
                }

                if (param0->unk_04.unk_3C[v3].unk_00) {
                    param0->unk_04.unk_3C[v3].unk_04 = sub_0202D93C(param0->unk_7C[v3], 1);
                    v0 = 1;
                }
            }
        }
    }

    return v0;
}

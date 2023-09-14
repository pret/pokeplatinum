#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "unk_02025E68.h"
#include "overlay005/struct_ov5_021E1608_decl.h"
#include "overlay005/struct_ov5_021E1890_decl.h"

#include "struct_defs/struct_0202D844.h"
#include "struct_defs/struct_0202D84C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02055130.h"

#include "narc.h"
#include "heap.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202D7A8.h"
#include "unk_02039C80.h"
#include "unk_02054D00.h"
#include "unk_0205E7D0.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021E779C.h"
#include "overlay005/ov5_021EFB0C.h"

typedef struct {
    u8 unk_00;
    BOOL unk_04;
} UnkStruct_ov5_021EFB30_sub1;

typedef struct UnkStruct_ov5_021EFB30_t {
    UnkStruct_ov5_021EFB30_sub1 unk_00[21];
    int unk_6C[21];
} UnkStruct_ov5_021EFB30;

static void ov5_021EFCF8(const BOOL param0, u8 * param1);
static void ov5_021EFD58(u8 * param0);
static void ov5_021EFE7C(UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021E1608 * param1, const int param2);
static u8 ov5_021EFF10(const int param0);
static const int ov5_021EFDAC(const u8 param0);
static const int ov5_021EFDC0(const u8 param0);
static const BOOL ov5_021EFE58(const int param0, u8 * param1);
static const BOOL ov5_021EFF34(const int param0);
static BOOL ov5_021EFF4C(const u32 param0, const u8 param1);

static const int Unk_ov5_021FF5B4[21] = {
    0x15B,
    0x15D,
    0x15E,
    0x161,
    0x162,
    0x164,
    0x16A,
    0x16B,
    0x16E,
    0x16F,
    0x173,
    0x175,
    0x17C,
    0x17E,
    0x184,
    0x188,
    0x18B,
    0xC8,
    0xCA,
    0xCC,
    0x100
};

static const int Unk_ov5_021FF5A8[] = {
    0x2,
    0x3,
    0x4
};

static const int dummy[] = {
    0x5,
    0x6,
    0x7
};

UnkStruct_ov5_021EFB30 * ov5_021EFB0C (void)
{
    u8 v0;
    UnkStruct_ov5_021EFB30 * v1;

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021EFB30));

    for (v0 = 0; v0 < 21; v0++) {
        v1->unk_00[v0].unk_00 = 0;
        v1->unk_00[v0].unk_04 = 0;
    }

    return v1;
}

void ov5_021EFB30 (UnkStruct_ov5_021EFB30 ** param0)
{
    Heap_FreeToHeap(*param0);
    *param0 = NULL;
}

BOOL ov5_021EFB40 (UnkStruct_0203CDB0 * param0, int * param1)
{
    UnkStruct_02055130 v0;
    int v1, v2;
    BOOL v3;
    int v4;

    *param1 = 2008;

    v1 = sub_0205EABC(param0->unk_3C);
    v2 = sub_0205EAC8(param0->unk_3C);
    v4 = sub_0205EA78(param0->unk_3C);

    if (v4 == 0) {
        sub_020550F4(v1, v2, 0, -1, 1, 1, &v0);
        v3 = sub_02055178(param0, 26, &v0, NULL);
    } else {
        v3 = 0;
    }

    return v3;
}

u16 ov5_021EFB94 (UnkStruct_0203CDB0 * param0)
{
    u8 v0;
    UnkStruct_0202D844 * v1;
    UnkStruct_0202D84C * v2;

    v0 = ov5_021EFF10(param0->unk_1C->unk_00);
    GF_ASSERT(v0 != 21);

    v1 = sub_0202D840(sub_0202D834(param0->unk_0C));
    v2 = sub_0202D84C(v0, v1);

    if (ov5_021EFF34(v2->unk_00)) {
        return 3;
    } else {
        if (v2->unk_00 != 0) {
            return 2;
        } else {
            return 1;
        }
    }
}

void ov5_021EFBDC (UnkStruct_0203CDB0 * param0)
{
    u8 v0;
    UnkStruct_0202D844 * v1;
    UnkStruct_0202D84C * v2;
    BOOL v3;

    v0 = ov5_021EFF10(param0->unk_1C->unk_00);
    GF_ASSERT(v0 != 21);

    v1 = sub_0202D840(sub_0202D834(param0->unk_0C));
    v2 = sub_0202D84C(v0, v1);

    v2->unk_00 = (24 * 60);

    {
        TrainerInfo * v4 = sub_02025E38(param0->unk_0C);
        v3 = ov5_021EFF4C(sub_02025F20(v4), v0);
    }

    if (sub_0202D844(v1) == v0) {
        if ((inline_020564D0(100)) < 90) {
            ov5_021EFD58(&v2->unk_04);
            v2->unk_07 = ov5_021EFDC0(v2->unk_06);
            return;
        }
    }

    {
        ov5_021EFCF8(v3, &v2->unk_06);

        if (v2->unk_06 != 0) {
            ov5_021EFD58(&v2->unk_04);

            v2->unk_05 = ov5_021EFDAC(v2->unk_06);
        } else {
            v2->unk_05 = 0;
            v2->unk_04 = 0;
            v2->unk_00 = 0;
        }

        v2->unk_07 = ov5_021EFDC0(v2->unk_06);
    }

    sub_0202D848(v0, v1);
}

void ov5_021EFC90 (UnkStruct_0203CDB0 * param0)
{
    u8 v0;

    v0 = ov5_021EFF10(param0->unk_1C->unk_00);
    GF_ASSERT(v0 != 21);

    if (param0->unk_A8->unk_00[v0].unk_04) {
        u8 v1;
        UnkStruct_ov5_021E1890 * v2;
        UnkStruct_ov5_021E1608 * v3;
        NNSG3dRenderObj * v4;

        v1 = ov5_021E9354(param0->unk_28);

        ov5_021E9340(v1, param0->unk_28, &v3);

        v2 = ov5_021E18CC(v3, 26);
        v4 = ov5_021E18BC(v2);

        if (v2 != NULL) {
            ov5_021D3D18(param0->unk_50, v4, 26, param0->unk_A8->unk_00[v0].unk_00);
        }

        param0->unk_A8->unk_00[v0].unk_04 = 0;
    }
}

static void ov5_021EFCF8 (const BOOL param0, u8 * param1)
{
    int v0;

    v0 = inline_020564D0(100);

    if (param0) {
        if (v0 < 1) {
            *param1 = 3;
        } else if (v0 < 10) {
            *param1 = 0;
        } else if (v0 < 30) {
            *param1 = 1;
        } else {
            *param1 = 2;
        }
    } else {
        if (v0 < 10) {
            *param1 = 0;
        } else if (v0 < 30) {
            *param1 = 2;
        } else {
            *param1 = 1;
        }
    }
}

static void ov5_021EFD58 (u8 * param0)
{
    int v0;

    v0 = inline_020564D0(100);

    if (v0 < 5) {
        *param0 = 5;
    } else if (v0 < 10) {
        *param0 = 4;
    } else if (v0 < 20) {
        *param0 = 3;
    } else if (v0 < 40) {
        *param0 = 2;
    } else if (v0 < 60) {
        *param0 = 1;
    } else {
        *param0 = 0;
    }
}

static const int ov5_021EFDAC (const u8 param0)
{
    int v0;

    if (param0 == 3) {
        v0 = 2;
    } else if (param0 == 2) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

static const int ov5_021EFDC0 (const u8 param0)
{
    int v0;
    int v1;

    v1 = inline_020564D0(100);

    if (param0 == 3) {
        if (v1 < 5) {
            v0 = 2;
        } else if (v1 < 6) {
            v0 = 1;
        } else if (v1 < 7) {
            v0 = 0;
        } else {
            v0 = 3;
        }
    } else if (param0 == 2) {
        if (v1 < 75) {
            v0 = 2;
        } else if (v1 < 95) {
            v0 = 1;
        } else if (v1 < 96) {
            v0 = 0;
        } else {
            v0 = 3;
        }
    } else if (param0 == 1) {
        if (v1 < 19) {
            v0 = 2;
        } else if (v1 < 79) {
            v0 = 1;
        } else if (v1 < 99) {
            v0 = 0;
        } else {
            v0 = 3;
        }
    } else {
        if (v1 < 1) {
            v0 = 2;
        } else if (v1 < 19) {
            v0 = 1;
        } else if (v1 < 99) {
            v0 = 0;
        } else {
            v0 = 3;
        }
    }

    return v0;
}

static const BOOL ov5_021EFE58 (const int param0, u8 * param1)
{
    u8 v0;
    BOOL v1;

    v1 = 1;

    if (param0 == 3) {
        *param1 = 2;
    } else if (param0 == 2) {
        *param1 = 1;
    } else if (param0 == 1) {
        *param1 = 0;
    } else {
        v1 = 0;
    }

    return v1;
}

static void ov5_021EFE7C (UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021E1608 * param1, const int param2)
{
    u16 v0;
    u8 v1;

    v0 = sub_02039E68(param0->unk_2C, param2);
    v1 = ov5_021EFF10(v0);

    if (v1 != 21) {
        UnkStruct_0202D844 * v2;
        UnkStruct_0202D84C * v3;
        UnkStruct_ov5_021E1890 * v4;

        v2 = sub_0202D840(sub_0202D834(param0->unk_0C));
        v3 = sub_0202D84C(v1, v2);

        if (ov5_021EFF34(v3->unk_00)) {
            BOOL v5;
            u8 v6;

            v5 = ov5_021EFE58(v3->unk_07, &v6);

            if (!v5) {
                return;
            }

            v4 = ov5_021E18CC(param1, 26);

            if (v4 != NULL) {
                NNSG3dRenderObj * v7;

                v7 = ov5_021E18BC(v4);

                ov5_021D3D18(param0->unk_50, v7, 26, param0->unk_A8->unk_00[v1].unk_00);

                param0->unk_A8->unk_00[v1].unk_00 = v6;
                param0->unk_A8->unk_00[v1].unk_04 = v5;

                ov5_021D3B24(26, v6, 1, v7, param0->unk_50);
            }
        }
    }
}

static u8 ov5_021EFF10 (const int param0)
{
    u8 v0;

    for (v0 = 0; v0 < 21; v0++) {
        if (param0 == Unk_ov5_021FF5B4[v0]) {
            return v0;
        }
    }

    return v0;
}

static const BOOL ov5_021EFF34 (const int param0)
{
    if ((0 < param0) && (param0 <= (18 * 60))) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov5_021EFF4C (const u32 param0, const u8 param1)
{
    u8 v0, v1;
    u8 v2[4];

    v2[0] = (param0 >> 24) & 0xff;
    v2[1] = (param0 >> 16) & 0xff;
    v2[2] = (param0 >> 8) & 0xff;
    v2[3] = param0 & 0xff;

    v2[0] %= 21;
    v2[1] %= 21;
    v2[2] %= 21;
    v2[3] %= 21;

    for (v0 = 1; v0 < 4; v0++) {
        for (v1 = 0; v1 < v0; v1++) {
            if (v2[v1] == v2[v0]) {
                v2[v0]++;

                if (v2[v0] >= 21) {
                    v2[v0] = 0;
                }
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param1 == v2[v0]) {
            return 1;
        }
    }

    return 0;
}

int ov5_021EFFE4 (UnkStruct_0203CDB0 * param0)
{
    u8 v0;

    v0 = ov5_021EFF10(param0->unk_1C->unk_00);
    GF_ASSERT(v0 != 21);

    {
        int * v1;
        int v2;
        UnkStruct_0202D844 * v3;
        UnkStruct_0202D84C * v4;

        v3 = sub_0202D840(sub_0202D834(param0->unk_0C));
        v4 = sub_0202D84C(v0, v3);

        if ((GAME_VERSION == 10) || (GAME_VERSION == 12)) {
            v1 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, Unk_ov5_021FF5A8[v4->unk_05], 4);
        } else {
            v1 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, dummy[v4->unk_05], 4);
        }

        v2 = v1[v4->unk_04];
        Heap_FreeToHeap(v1);

        return v2;
    }
}

void ov5_021F0030 (void * param0, const int param1, UnkStruct_ov5_021E1608 * const param2)
{
    UnkStruct_0203CDB0 * v0;
    u8 v1;

    if (param1 < 0) {
        return;
    }

    v0 = (UnkStruct_0203CDB0 *)param0;
    ov5_021EFE7C(v0, param2, param1);
}

void ov5_021F0040 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202D844 * v0;
    UnkStruct_0202D84C * v1;
    u8 v2;

    v2 = ov5_021EFF10(param0->unk_1C->unk_00);
    GF_ASSERT(v2 != 21);

    param0->unk_A8->unk_00[v2].unk_04 = 0;

    v0 = sub_0202D840(sub_0202D834(param0->unk_0C));
    v1 = sub_0202D84C(v2, v0);

    v1->unk_00 = 0;
}

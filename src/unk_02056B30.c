#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021D432C_decl.h"
#include "overlay005/struct_ov5_021D4E00_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_02049FA8.h"
#include "functypes/funcptr_020EC560.h"
#include "functypes/funcptr_020EC57C.h"

#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02020020.h"
#include "map_header.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_02056B30.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_020655F4.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021EF3A8.h"

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_02049FA8 unk_08;
    void * unk_1C;
    int unk_20;
} UnkStruct_02056BDC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u16 unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_02056B30;

static BOOL sub_02056B70(UnkStruct_020508D4 * param0);
static BOOL sub_02056CFC(UnkStruct_020508D4 * param0);
static BOOL sub_02056DE4(UnkStruct_020508D4 * param0);
static BOOL sub_02056E20(UnkStruct_020508D4 * param0);
static BOOL sub_02056EA4(UnkStruct_020508D4 * param0);
static BOOL sub_02056F1C(UnkStruct_020508D4 * param0);
static BOOL sub_02056FC0(UnkStruct_020508D4 * param0);
static BOOL sub_02057008(UnkStruct_020508D4 * param0);
static BOOL sub_02057050(UnkStruct_020508D4 * param0);
static BOOL sub_0205711C(UnkStruct_020508D4 * param0);
static BOOL sub_020571A0(UnkStruct_020508D4 * param0);
static BOOL sub_02057218(UnkStruct_020508D4 * param0);
static BOOL sub_020572B8(UnkStruct_020508D4 * param0);
static void sub_02057300(UnkStruct_0203CDB0 * param0);
static void sub_02057368(UnkStruct_0203CDB0 * param0);

static const UnkFuncPtr_020EC560 Unk_020EC560[7] = {
    sub_02056DE4,
    sub_02056E20,
    sub_02056EA4,
    sub_02056F1C,
    sub_02056FC0,
    sub_02057008,
    sub_02056DE4
};

static const UnkFuncPtr_020EC560 Unk_020EC544[7] = {
    sub_02057050,
    sub_0205711C,
    sub_020571A0,
    sub_02057218,
    sub_0205711C,
    sub_020572B8,
    sub_0205711C
};

static const UnkFuncPtr_020EC57C Unk_020EC57C[7] = {
    NULL,
    NULL,
    sub_02057300,
    sub_02057368,
    NULL,
    NULL,
    NULL
};

void sub_02056B30 (UnkStruct_020508D4 * param0, int param1, int param2, int param3, u16 param4, int param5, int param6, int param7)
{
    UnkStruct_02056B30 * v0 = AllocFromHeap(param7, sizeof(UnkStruct_02056B30));

    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = param3;
    v0->unk_10 = param4;
    v0->unk_14 = param5;
    v0->unk_18 = param6;
    v0->unk_1C = param7;
    v0->unk_00 = 0;

    sub_02050944(param0, sub_02056B70, v0);
}

static BOOL sub_02056B70 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056B30 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        ov5_021EF3FC(v0->unk_04->unk_1C);
        sub_0200F174(v1->unk_04, v1->unk_08, v1->unk_0C, v1->unk_10, v1->unk_14, v1->unk_18, v1->unk_1C);
        v1->unk_00++;
        break;
    case 1:
        if (sub_0200F2AC()) {
            ov5_021EF3DC(v0->unk_04->unk_1C);
            FreeToHeap(v1);
            return 1;
        }
    }

    return 0;
}

void sub_02056BDC (UnkStruct_0203CDB0 * param0, const int param1, const int param2, const int param3, const int param4, const int param5, const int param6)
{
    UnkStruct_02056BDC * v0 = AllocFromHeapAtEnd(11, sizeof(UnkStruct_02056BDC));

    v0->unk_00 = 0;
    v0->unk_04 = 0;

    inline_02049FA8(&v0->unk_08, param1, param2, param3, param4, param5);

    v0->unk_20 = param6;

    sub_02050904(param0, sub_02056CFC, v0);
}

void sub_02056C18 (UnkStruct_0203CDB0 * param0, const int param1, const int param2, const int param3, const int param4, const int param5)
{
    int v0;
    int v1;
    UnkStruct_02056BDC * v2 = AllocFromHeapAtEnd(11, sizeof(UnkStruct_02056BDC));

    v2->unk_00 = 0;
    v2->unk_04 = 0;

    inline_02049FA8(&v2->unk_08, param1, param2, param3, param4, param5);

    v0 = param0->unk_1C->unk_00;
    v1 = 0;

    if (MapHeader_IsCave(v0)) {
        if (MapHeader_IsCave(param1)) {
            v1 = 6;
        } else if (MapHeader_IsOutdoors(param1)) {
            v1 = 5;
        } else if (sub_0203A288(param1)) {
            v1 = 6;
        } else {
            GF_ASSERT(0);
        }
    } else if (MapHeader_IsOutdoors(v0)) {
        if (MapHeader_IsCave(param1)) {
            v1 = 4;
        } else if (sub_0203A288(param1)) {
            v1 = 6;
        } else {
            GF_ASSERT(0);
        }
    } else if (sub_0203A288(v0)) {
        if (MapHeader_IsOutdoors(param1)) {
            v1 = 0;
        } else if (sub_0203A288(param1)) {
            v1 = 6;
        } else if (MapHeader_IsCave(param1)) {
            v1 = 0;
        } else {
            GF_ASSERT(0);
        }
    } else {
        GF_ASSERT(0);
    }

    v2->unk_20 = v1;

    sub_02050904(param0, sub_02056CFC, v2);
}

static BOOL sub_02056CFC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        v1->unk_04 = 0;
        sub_02055644(v0, v2->unk_00);
        sub_02050944(param0, Unk_020EC560[v1->unk_20], v1);
        (v1->unk_00)++;
        break;
    case 1:
        sub_02055820(param0);
        (v1->unk_00)++;
        break;
    case 2:
        sub_020539A0(param0, &v1->unk_08);
        (v1->unk_00)++;
        break;
    case 3:
        sub_02055868(param0);
        (v1->unk_00)++;
        break;
    case 4:
        if (Unk_020EC57C[v1->unk_20] != NULL) {
            Unk_020EC57C[v1->unk_20](v0);
        }

        (v1->unk_00)++;
        break;
    case 5:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);
        ov5_021DDAA4(v0);

        v1->unk_04 = 0;
        sub_02050944(param0, Unk_020EC544[v1->unk_20], v1);
        (v1->unk_00)++;
        break;
    case 6:
        FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static BOOL sub_02056DE4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        sub_02005748(1539);

        sub_020558AC(param0);
        (v1->unk_04)++;
        break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_02056E20 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_ov5_021D432C * v2;

    switch (v1->unk_04) {
    case 0:
        v1->unk_1C = ov5_021D431C();
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;
        ov5_021D4334(sub_0205EABC(v0->unk_3C), sub_0205EAC8(v0->unk_3C), v2);
        (v1->unk_04)++;
        break;
    case 1:
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;

        if (ov5_021D433C(v0, v2)) {
            ov5_021D432C(v1->unk_1C);
            (v1->unk_04)++;
        }
        break;
    case 2:
        sub_020558AC(param0);
        (v1->unk_04)++;
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL sub_02056EA4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_ov5_021D432C * v2;

    switch (v1->unk_04) {
    case 0:
        v1->unk_1C = ov5_021D431C();
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;
        ov5_021D4334(sub_0205EABC(v0->unk_3C), sub_0205EAC8(v0->unk_3C), v2);
        (v1->unk_04)++;
        break;
    case 1:
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;

        if (ov5_021D4A24(v0, v2, sub_0205EA78(v0->unk_3C))) {
            ov5_021D432C(v1->unk_1C);
            (v1->unk_04)++;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static BOOL sub_02056F1C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_02061AB4 * v2;

    switch (v1->unk_04) {
    case 0:
    {
        int v3 = sub_0205EA78(v0->unk_3C);

        v2 = sub_0205EB3C(v0->unk_3C);

        if (v3 == 2) {
            sub_02065638(v2, 0xa);
        } else if (v3 == 3) {
            sub_02065638(v2, 0xb);
        } else {
            GF_ASSERT(FALSE);
        }
    }
        (v1->unk_04)++;
        break;
    case 1:
        v2 = sub_0205EB3C(v0->unk_3C);

        if (sub_02065684(v2) == 1) {
            sub_020656AC(v2);
            (v1->unk_04)++;
        }
        break;
    case 2:
        sub_02005748(1539);
        ov5_021D1744(0);
        (v1->unk_04)++;
        break;
    case 3:
        if (sub_0200F2AC()) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL sub_02056FC0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_02061AB4 * v2 = sub_0205EB3C(v0->unk_3C);

    switch (v1->unk_04) {
    case 0:
    {
        UnkStruct_ov5_021D4E00 * v3;

        v3 = ov5_021D4E00();
        sub_02050944(param0, ov5_021D4FA0, v3);
        v1->unk_04++;
    }
    break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_02057008 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_02061AB4 * v2 = sub_0205EB3C(v0->unk_3C);

    switch (v1->unk_04) {
    case 0:
    {
        UnkStruct_ov5_021D4E00 * v3;

        v3 = ov5_021D4E00();
        sub_02050944(param0, ov5_021D4F14, v3);
        v1->unk_04++;
    }
    break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_02057050 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_02056BDC * v2 = sub_02050A64(param0);
    UnkStruct_ov5_021D432C * v3;

    switch (v2->unk_04) {
    case 0:
    {
        u8 v4;
        UnkStruct_02061AB4 * v5 = sub_0205EB3C(v1->unk_3C);

        v4 = sub_02054F94(v1, sub_0205EABC(v1->unk_3C), sub_0205EAC8(v1->unk_3C));

        if (sub_0205DAEC(v4)) {
            sub_02062D64(v5, 1);
            (v2->unk_04) = 1;
        } else {
            UnkStruct_ov5_021D4E00 * v6;

            v6 = ov5_021D4E00();
            sub_02050944(param0, ov5_021D5020, v6);
            (v2->unk_04) = 3;
        }
    }
    break;
    case 1:
        v2->unk_1C = (UnkStruct_ov5_021D432C *)ov5_021D431C();
        v3 = (UnkStruct_ov5_021D432C *)v2->unk_1C;
        ov5_021D4334(sub_0205EABC(v1->unk_3C), sub_0205EAC8(v1->unk_3C), v3);
        (v2->unk_04)++;
        break;
    case 2:
        v3 = (UnkStruct_ov5_021D432C *)v2->unk_1C;

        if (ov5_021D453C(v1, v3)) {
            ov5_021D432C(v3);
            {
                UnkStruct_02061AB4 * v7 = sub_0205EB3C(v1->unk_3C);

                sub_02062D64(v7, 0);
            }
            return 1;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL sub_0205711C (UnkStruct_020508D4 * param0)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_02056BDC * v2 = sub_02050A64(param0);
    UnkStruct_ov5_021D432C * v3;

    switch (v2->unk_04) {
    case 0:
    {
        u8 v4;
        UnkStruct_02061AB4 * v5 = sub_0205EB3C(v1->unk_3C);

        v4 = sub_02054F94(v1, sub_0205EABC(v1->unk_3C), sub_0205EAC8(v1->unk_3C));

        if (sub_0205DAEC(v4)) {
            sub_02062D64(v5, 1);
            v2->unk_04 = 1;
            sub_02050924(param0, sub_02057050, v2);
        } else {
            UnkStruct_ov5_021D4E00 * v6;

            v6 = ov5_021D4E00();
            sub_02050944(param0, ov5_021D5150, v6);
            (v2->unk_04)++;
        }
    }
    break;
    case 1:
        return 1;
    }

    return 0;
}

static BOOL sub_020571A0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_ov5_021D432C * v2;

    switch (v1->unk_04) {
    case 0:
        v1->unk_1C = ov5_021D431C();
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;
        ov5_021D4334(sub_0205EABC(v0->unk_3C), sub_0205EAC8(v0->unk_3C), v2);
        (v1->unk_04)++;
        break;
    case 1:
        v2 = (UnkStruct_ov5_021D432C *)v1->unk_1C;

        if (ov5_021D4858(v0, v2, sub_0205EA78(v0->unk_3C))) {
            ov5_021D432C(v1->unk_1C);
            (v1->unk_04)++;
        }
        break;
    case 2:
        return 1;
    }

    return 0;
}

static BOOL sub_02057218 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_02061AB4 * v2;

    switch (v1->unk_04) {
    case 0:

        ov5_021D1744(1);
        v2 = sub_0205EB3C(v0->unk_3C);

        if (1) {
            int v3;

            v3 = sub_0205EA78(v0->unk_3C);

            if (v3 == 2) {
                sub_02065638(v2, 0xa);
            } else if (v3 == 3) {
                sub_02065638(v2, 0xb);
            } else {
                GF_ASSERT(FALSE);
            }
        } else {
            GF_ASSERT(FALSE);
        }

        (v1->unk_04)++;
        break;
    case 1:
        v2 = sub_0205EB3C(v0->unk_3C);

        if (sub_02065684(v2) == 1) {
            sub_020656AC(v2);
            (v1->unk_04)++;
        }
        break;
    case 2:
        if (sub_0200F2AC()) {
            (v1->unk_04)++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL sub_020572B8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02056BDC * v1 = sub_02050A64(param0);
    UnkStruct_02061AB4 * v2 = sub_0205EB3C(v0->unk_3C);

    switch (v1->unk_04) {
    case 0:
    {
        UnkStruct_ov5_021D4E00 * v3;

        v3 = ov5_021D4E00();
        sub_02050944(param0, ov5_021D4E10, v3);
        v1->unk_04++;
    }
    break;
    case 1:
        return 1;
    }

    return 0;
}

static void sub_02057300 (UnkStruct_0203CDB0 * param0)
{
    int v0;
    VecFx32 v1;

    v0 = sub_0205EA78(param0->unk_3C);
    sub_0205EAEC(param0->unk_3C, &v1);

    if (v0 == 3) {
        v1.x -= (FX32_ONE * 16);
    } else {
        v1.x += (FX32_ONE * 16);
    }

    v1.y = sub_02054FBC(param0, v1.y, v1.x, v1.z, NULL);

    sub_0205ECB8(param0->unk_3C, &v1, v0);
    sub_02020A5C(sub_0205EAFC(param0->unk_3C), param0->unk_24);
    sub_02020690(sub_0205EAFC(param0->unk_3C), param0->unk_24);
}

static void sub_02057368 (UnkStruct_0203CDB0 * param0)
{
    int v0, v1, v2;
    VecFx32 v3;
    u8 v4;

    v2 = sub_0205EA78(param0->unk_3C);
    sub_0205EAEC(param0->unk_3C, &v3);

    v0 = sub_0205EABC(param0->unk_3C);
    v1 = sub_0205EAC8(param0->unk_3C);
    v4 = sub_02054F94(param0, v0, v1);

    if (sub_0205DC44(v4)) {
        v3.x += (FX32_ONE * 16);
        v2 = 2;
    } else if (sub_0205DC50(v4)) {
        v3.x -= (FX32_ONE * 16);
        v2 = 3;
    } else {
        (void)0;
    }

    v3.y = sub_02054FBC(param0, v3.y, v3.x, v3.z, NULL);

    sub_0205ECB8(param0->unk_3C, &v3, v2);
    sub_02020A5C(sub_0205EAFC(param0->unk_3C), param0->unk_24);
    sub_02020690(sub_0205EAFC(param0->unk_3C), param0->unk_24);
}

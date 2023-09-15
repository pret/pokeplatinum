#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "data_021BF67C.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "overlay005/struct_ov5_021D432C_decl.h"

#include "struct_defs/struct_0203A55C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/struct_020EC3A8.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_0200A9DC.h"
#include "message.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "strbuf.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020277A4.h"
#include "unk_02027F50.h"
#include "unk_0202854C.h"
#include "unk_0202B604.h"
#include "unk_02034198.h"
#include "unk_02039C80.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "unk_0203A6DC.h"
#include "unk_0203A7D8.h"
#include "unk_0203A944.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_02054BD0.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205CA94.h"
#include "unk_0205D8CC.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_0206940C.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_02070428.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021E135C.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02247100.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224B05C.h"

FS_EXTERN_OVERLAY(overlay23);

typedef struct {
    int unk_00;
    UnkStruct_02049FA8 unk_04;
    UnkStruct_ov5_021D432C * unk_18;
} UnkStruct_02053900;

typedef struct {
    int unk_00;
    UnkStruct_02049FA8 unk_04;
} UnkStruct_02053A80;

typedef struct {
    int unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkStruct_02049FA8 unk_08;
    UnkStruct_ov5_021D432C * unk_1C;
} UnkStruct_02053AB4;

typedef struct {
    BOOL unk_00;
    UnkStruct_02049FA8 unk_04;
} UnkStruct_02053718;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_0201CD38 * unk_08;
    UnkStruct_02049FA8 unk_0C;
} UnkStruct_02053CD4;

typedef struct {
    int unk_00;
    BOOL unk_04;
    UnkStruct_02049FA8 unk_08;
} UnkStruct_02053E98;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    BOOL unk_18;
    u16 unk_1C;
    void * unk_20;
    UnkStruct_0205AA50 unk_24;
    Strbuf* unk_34;
    u8 unk_38;
    UnkStruct_02001AF4 * unk_3C;
} UnkStruct_02053FAC;

typedef struct {
    int unk_00;
    BOOL unk_04;
    UnkStruct_02049FA8 unk_08;
} UnkStruct_02054538;

static BOOL sub_02053878(UnkStruct_020508D4 * param0);
static BOOL sub_02053570(UnkStruct_020508D4 * param0);
static void sub_0205311C(UnkStruct_0203CDB0 * param0, const UnkStruct_02049FA8 * param1);
static void sub_020533CC(UnkStruct_0203CDB0 * param0);
static void sub_02053468(UnkStruct_0203CDB0 * param0);
static void sub_02053320(UnkStruct_0203CDB0 * param0);
static void sub_02053374(UnkStruct_0203CDB0 * param0);
static void sub_020534BC(UnkStruct_0203CDB0 * param0);
static BOOL sub_02053B44(UnkStruct_020508D4 * param0);
static void sub_02053BD4(UnkStruct_020508D4 * param0);
static BOOL sub_02053BE4(UnkStruct_020508D4 * param0);
static void sub_02053C10(UnkStruct_020508D4 * param0);
static BOOL sub_02053C28(UnkStruct_020508D4 * param0);
static void sub_02053C70(UnkStruct_020508D4 * param0);
static BOOL sub_02053CB4(UnkStruct_020508D4 * param0);
static BOOL sub_02053D0C(UnkStruct_020508D4 * param0);
static void sub_02053DB4(UnkStruct_020508D4 * param0);
static BOOL sub_02053DC4(UnkStruct_020508D4 * param0);
static void sub_02053DF0(UnkStruct_020508D4 * param0);
static BOOL sub_02053E08(UnkStruct_020508D4 * param0);
static void sub_02053E5C(UnkStruct_020508D4 * param0);
static BOOL sub_0205444C(UnkStruct_020508D4 * param0, int param1);

static const UnkStruct_020EC3A8 Unk_020EC3A8[] = {
    {0x1, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0xC4000},
    {0x2, 0x1, 0x1, 0x1, 0x1, 0x0, 0x10, 0xC4000},
    {0x3, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0xC4000},
    {0x4, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0xC4000},
    {0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0xA0000}
};

static const UnkStruct_ov61_0222C884 Unk_020EC3A0 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void sub_020530C8 (UnkStruct_0203CDB0 * param0)
{
    BOOL v0;

    switch (param0->unk_1C->unk_00) {
    case 326:
    case 327:
    case 328:
    case 329:
    case 330:
    case 331:
    case 493:
        v0 = 1;
        break;
    default:
        v0 = 0;
    }

    if (!v0 && (param0->unk_70 == 4)) {
        param0->unk_70 = 0;
    }

    if (v0) {
        param0->unk_70 = 4;
    }
}

static void sub_0205311C (UnkStruct_0203CDB0 * param0, const UnkStruct_02049FA8 * param1)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param0->unk_0C);
    UnkStruct_02049FA8 * v1 = sub_0203A728(v0);

    if (param1 != NULL) {
        *v1 = *param0->unk_1C;
        *(param0->unk_1C) = *param1;
    }

    sub_0203A3B0(param0, param0->unk_1C->unk_00);

    if (param0->unk_1C->unk_04 != -1) {
        const UnkStruct_0203A55C * v2;

        v2 = sub_0203A450(param0, param0->unk_1C->unk_04);

        param0->unk_1C->unk_08 = v2->unk_00;
        param0->unk_1C->unk_0C = v2->unk_02;

        if (v2->unk_06 == 0x100) {
            UnkStruct_02049FA8 * v3, * v4;

            v3 = sub_0203A730(v0);
            v4 = sub_0203A724(v0);
            *v3 = *v4;
        }
    }
}

void sub_020531A0 (UnkStruct_0203CDB0 * param0)
{
    GF_ASSERT(param0->unk_70 < 5);
    Unk_021BF67C.unk_65 = param0->unk_74->unk_00_12;
}

void sub_020531C0 (UnkStruct_0203CDB0 * param0, BOOL param1)
{
    int v0 = param0->unk_1C->unk_00;
    UnkStruct_0203A790 * v1 = sub_0203A790(param0->unk_0C);

    sub_02055414(param0);
    sub_0203F1C4(param0);

    if (!param1) {
        sub_02070494(param0);
    } else {
        sub_02070430(param0);
    }

    sub_0206B0D4(sub_020507E4(param0->unk_0C));

    if (!param1) {
        sub_020559DC(param0);
    }

    if (!param1) {
        sub_02027F50(sub_02027860(param0->unk_0C));
    }

    {
        UnkStruct_020507E4 * v2 = sub_020507E4(param0->unk_0C);
        u16 v3 = sub_0203A944(param0, v0);

        if (((v3 == 14) && (sub_0206AF0C(v2) == 1)) || ((v3 == 16) && (sub_0206AEDC(v2) == 1))) {
            v3 = 0;
        }

        sub_0203A754(v1, v3);
    }

    if (param1) {
        int v4 = sub_0203A770(v1);
        int v5 = MapHeader_GetCameraType(v0);

        GF_ASSERT(v4 == v5);
    } else {
        sub_0203A778(v1, MapHeader_GetCameraType(v0));
    }

    if (!param1) {
        u16 v6;

        v6 = sub_0203A858(v0);

        if (v6 != 0) {
            sub_0203A764(v1, v6);
        }
    }

    sub_0203F5C0(param0, 2);

    param0->unk_78.unk_00 = 0;
    param0->unk_78.unk_02 = 0;
}

void sub_020532A8 (UnkStruct_0203CDB0 * param0, BOOL param1)
{
    int v0 = param0->unk_1C->unk_00;
    UnkStruct_0203A790 * v1 = sub_0203A790(param0->unk_0C);

    sub_02055414(param0);
    sub_0203F1C4(param0);

    if (!param1) {
        sub_02070494(param0);
    } else {
        sub_02070430(param0);
    }

    sub_0206B0D4(sub_020507E4(param0->unk_0C));

    if (!param1) {
        sub_020559DC(param0);
    }

    if (!param1) {
        sub_02027F50(sub_02027860(param0->unk_0C));
    }

    if (!param1) {
        u16 v2;

        v2 = sub_0203A858(v0);

        if (v2 != 0) {
            sub_0203A764(v1, v2);
        }
    }

    param0->unk_78.unk_00 = 0;
    param0->unk_78.unk_02 = 0;
}

static void sub_02053320 (UnkStruct_0203CDB0 * param0)
{
    int v0;
    int v1;
    UnkStruct_0203A790 * v2;
    UnkStruct_0205EC34 * v3;

    param0->unk_38 = sub_02061804(param0, 64, 5);

    v0 = TrainerInfo_Gender(sub_02025E38(param0->unk_0C));
    v2 = sub_0203A790(param0->unk_0C);
    v3 = sub_0203A780(v2);

    param0->unk_3C = sub_0205E7D0(param0->unk_38, param0->unk_1C->unk_08, param0->unk_1C->unk_0C, param0->unk_1C->unk_10, v3->unk_04, v0, 0, v3);

    sub_0203A418(param0);
    sub_02062C30(param0->unk_38);
}

static void sub_02053374 (UnkStruct_0203CDB0 * param0)
{
    sub_0205E8E0(param0->unk_3C);
    sub_02061BBC(param0->unk_38);
    sub_02061830(param0->unk_38);
}

static void sub_0205338C (UnkStruct_0203CDB0 * param0)
{
    param0->unk_38 = sub_02061804(param0, 64, 5);
    sub_0203A7C0(param0);

    {
        UnkStruct_0203A790 * v0 = sub_0203A790(param0->unk_0C);
        UnkStruct_0205EC34 * v1 = sub_0203A780(v0);
        int v2 = TrainerInfo_Gender(sub_02025E38(param0->unk_0C));

        param0->unk_3C = sub_0205E820(param0->unk_38, v1, v2);
    }

    sub_02062C30(param0->unk_38);
}

static void sub_020533CC (UnkStruct_0203CDB0 * param0)
{
    sub_020530C8(param0);
    GF_ASSERT(param0->unk_5C == NULL);
    sub_02039DC0(param0->unk_1C->unk_00, param0->unk_2C);

    if (sub_0206B1F0(sub_020507E4(param0->unk_0C), 3)) {
        sub_02039FE0(param0->unk_2C);
    }

    if (!sub_0206B1F0(sub_020507E4(param0->unk_0C), 2)) {
        sub_02039F8C(param0->unk_2C);
    }

    GF_ASSERT(param0->unk_70 < 5);

    param0->unk_74 = &Unk_020EC3A8[param0->unk_70];
    param0->unk_60 = param0->unk_74->unk_00_4;
    param0->unk_18 = param0->unk_74->unk_00_0;

    sub_02054F44(&param0->unk_5C, param0->unk_74->unk_00_8);

    if (param0->unk_74->unk_00_16) {
        sub_02054BD0(param0, param0->unk_74->unk_00_24);
    }
}

static void sub_02053468 (UnkStruct_0203CDB0 * param0)
{
    GF_ASSERT(param0->unk_5C != NULL);

    param0->unk_5C = NULL;
    param0->unk_18 = 5;

    if (param0->unk_74->unk_00_16) {
        sub_02054BF8(param0);
    }

    param0->unk_74 = NULL;
}

void sub_02053494 (UnkStruct_0203CDB0 * param0)
{
    if (param0->unk_9C != NULL) {
        void * v0;

        v0 = sub_0202BC58(param0->unk_1C->unk_00, 11);
        sub_0202B758(param0->unk_9C, v0, 0);
    }
}

static void sub_020534BC (UnkStruct_0203CDB0 * param0)
{
    if (param0->unk_9C != NULL) {
        UnkStruct_0203A790 * v0 = sub_0203A790(param0->unk_0C);
        UnkStruct_02049FA8 * v1 = sub_0203A730(v0);
        void * v2 = sub_0202BC58(v1->unk_00, 11);
        sub_0202B758(param0->unk_9C, v2, 0);
    }
}

static void sub_020534EC (UnkStruct_02049FA8 * param0, const UnkStruct_0203CDB0 * param1)
{
    inline_02049FA8(param0, param1->unk_1C->unk_00, -1, sub_0205EABC(param1->unk_3C), sub_0205EAC8(param1->unk_3C), 1);
}

static BOOL sub_02053518 (const UnkStruct_0203CDB0 * param0)
{
    if (MapHeader_IsPokemonCenter2F(param0->unk_1C->unk_00)
        && (param0->unk_1C->unk_08 == 7) && (param0->unk_1C->unk_0C == 6)) {
        return 1;
    } else {
        return 0;
    }
}

static void sub_02053540 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02049FA8 * v0 = sub_0203A730(sub_0203A790(param0->unk_0C));
    UnkStruct_020507E4 * v1 = sub_020507E4(param0->unk_0C);

    inline_02049FA8(v0, param0->unk_1C->unk_00, -1, 8, 2, 1);
}

static BOOL sub_02053570 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    int * v1 = sub_02050A68(param0);

    switch (*v1) {
    case 0:
        sub_0205311C(v0, v0->unk_1C);
        sub_020533CC(v0);
        sub_020531C0(v0, 0);
        sub_02053320(v0);
        (*v1)++;
        break;
    case 1:
        sub_020559CC(param0);
        (*v1)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

void sub_020535CC (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020508D4 * v0;

    param0->unk_70 = 0;
    sub_0203F598(param0);
    v0 = sub_02050904(param0, sub_02053570, NULL);
}

static BOOL sub_020535E8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020507E4 * v1 = sub_020507E4(v0->unk_0C);
    int * v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_0202878C(v0->unk_0C);

        if (sub_0202B6A4(sub_0202B628(v0->unk_0C), inline_020535E8(v1))) {
            sub_0203D30C(v0, NULL);
            (*v2) = 4;
            break;
        }
    case 1:
        v0->unk_9C = sub_0202B634(sub_0202B628(v0->unk_0C), inline_020535E8(v1));

        if (sub_0206ADBC(v1)) {
            UnkStruct_0203A790 * v3 = sub_0203A790(v0->unk_0C);

            if (sub_02053518(v0)) {
                sub_02053540(v0);
            }

            sub_0206ADAC(v1);
            sub_0205311C(v0, sub_0203A730(v3));
            sub_020533CC(v0);
            sub_020531C0(v0, 0);
            sub_02053320(v0);
        } else {
            sub_0205311C(v0, NULL);
            sub_020533CC(v0);
            sub_020559DC(v0);
            sub_0205338C(v0);
        }

        sub_02053494(v0);
        sub_020705CC(v0);
        (*v2) = 2;
        break;
    case 2:
        sub_020559CC(param0);
        (*v2) = 3;
        break;
    case 3:
        return 1;
    case 4:
        if (!(sub_020509B4(v0))) {
            (*v2) = 1;
        }
        break;
    }

    return 0;
}

void sub_02053704 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020508D4 * v0;

    param0->unk_70 = 0;
    v0 = sub_02050904(param0, sub_020535E8, NULL);
}

static BOOL sub_02053718 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053718 * v1 = sub_02050A64(param0);
    UnkStruct_020507E4 * v2 = sub_020507E4(v0->unk_0C);
    int * v3 = sub_02050A68(param0);

    switch (*v3) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0202878C(v0->unk_0C);
        v0->unk_9C = sub_0202B634(sub_0202B628(v0->unk_0C), inline_020535E8(v2));
        (*v3)++;
        break;
    case 1:
        sub_0205311C(v0, &v1->unk_04);
        sub_020533CC(v0);
        sub_020531C0(v0, 0);
        sub_02053320(v0);
        sub_020534BC(v0);
        (*v3)++;
        break;
    case 2:
        v0->unk_7C = sub_0205B33C(v0);
        v0->unk_80 = sub_0205C22C(v0->unk_7C);
        sub_02055868(param0);
        (*v3)++;
        break;
    case 3:
        v1->unk_00 = 0;
        ov5_021E15A8(v0, 0, &v1->unk_00);
        (*v3)++;
        break;
    case 4:
        if (v1->unk_00) {
            (*v3)++;
        }
        break;
    case 5:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02053808 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020508D4 * v0;
    UnkStruct_02053718 * v1;

    if (MapHeader_IsUnionRoom(param0->unk_1C->unk_00)) {
        (void)0;
    } else if (sub_02053518(param0)) {
        UnkStruct_020507E4 * v2 = sub_020507E4(param0->unk_0C);

        sub_02053540(param0);
        sub_0206AD9C(v2);
    } else {
        sub_02053704(param0);
        return;
    }

    v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053718));
    v1->unk_00 = 0;

    inline_02049FA8(&v1->unk_04, 466, -1, 8, 14, 0);
    param0->unk_70 = 2;
    sub_02050904(param0, sub_02053718, v1);
}

static BOOL sub_02053878 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053900 * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_04;

    switch (v1->unk_00) {
    case 0:
        sub_02005748(1539);
        sub_02055644(v0, v2->unk_00);
        sub_02055974(param0);
        (v1->unk_00)++;
        break;
    case 1:
        sub_020539A0(param0, &v1->unk_04);
        (v1->unk_00)++;
        break;
    case 2:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);
        sub_020559CC(param0);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02053900 (UnkStruct_020508D4 * param0, const UnkStruct_02049FA8 * param1)
{
    UnkStruct_02053900 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053900));

    v0->unk_00 = 0;
    v0->unk_04 = *param1;

    sub_02050944(param0, sub_02053878, v0);
}

static BOOL sub_02053930 (UnkStruct_020508D4 * param0)
{
    u16 v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_02053A80 * v2 = sub_02050A64(param0);

    switch (v2->unk_00) {
    case 0:
        sub_02053374(v1);
        sub_02053468(v1);
        (v2->unk_00)++;
        break;
    case 1:
        sub_0205311C(v1, &v2->unk_04);
        sub_020533CC(v1);
        sub_020531C0(v1, 0);
        sub_02069434(v1->unk_94);
        (v2->unk_00)++;
        break;
    case 2:
        sub_02053320(v1);
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

void sub_020539A0 (UnkStruct_020508D4 * param0, const UnkStruct_02049FA8 * param1)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053A80 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053A80));

    if (sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    v1->unk_00 = 0;
    v1->unk_04 = *param1;

    sub_02050944(param0, sub_02053930, v1);
}

void sub_020539E8 (UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02049FA8 v0;

    inline_02049FA8(&v0, param1, param2, param3, param4, param5);
    sub_020539A0(param0, &v0);
}

static BOOL sub_02053A04 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053A80 * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_04;

    switch (v1->unk_00) {
    case 0:
        sub_02055644(v0, v2->unk_00);
        sub_02055820(param0);
        (v1->unk_00)++;
        break;
    case 1:
        sub_020539A0(param0, &v1->unk_04);
        (v1->unk_00)++;
        break;
    case 2:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);
        sub_02055868(param0);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02053A80 (UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02053A80 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053A80));

    v0->unk_00 = 0;

    inline_02049FA8(&v0->unk_04, param1, param2, param3, param4, param5);
    sub_02050944(param0, sub_02053A04, v0);
}

void sub_02053AB4 (UnkStruct_0203CDB0 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02049FA8 v0;

    inline_02049FA8(&v0, param1, param2, param3, param4, param5);

    {
        UnkStruct_02053AB4 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053AB4));

        v1->unk_00 = 0;
        v1->unk_04 = NULL;
        v1->unk_08 = v0;

        sub_02050904(param0, sub_02053B44, v1);
    }
}

void sub_02053AFC (UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02049FA8 v0;

    inline_02049FA8(&v0, param1, param2, param3, param4, param5);

    {
        UnkStruct_02053AB4 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053AB4));

        v1->unk_00 = 0;
        v1->unk_04 = NULL;
        v1->unk_08 = v0;

        sub_02050924(param0, sub_02053B44, v1);
    }
}

static BOOL sub_02053B44 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053AB4 * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        sub_02055644(v0, v2->unk_00);
        sub_02053BD4(param0);
        (v1->unk_00)++;
        break;
    case 1:
        sub_0205EB58(v0->unk_3C, 0x0);
        sub_020539A0(param0, &v1->unk_08);
        (v1->unk_00)++;
        break;
    case 2:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);
        sub_0207056C(v0);
        sub_02053C10(param0);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static void sub_02053BD4 (UnkStruct_020508D4 * param0)
{
    sub_02050944(param0, sub_02053BE4, NULL);
}

static BOOL sub_02053BE4 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);

    switch (*v0) {
    case 0:
        sub_02055820(param0);
        (*v0)++;
        break;
    case 1:
        return 1;
    }

    return 0;
}

static void sub_02053C10 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02053AB4 * v0 = sub_02050A64(param0);
    sub_02050944(param0, sub_02053C28, v0);
}

static BOOL sub_02053C28 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    switch (*v0) {
    case 0:
        sub_02055868(param0);
        (*v0)++;
        break;
    case 1:
        ov5_021DDAA4(v1);
        sub_02053C70(param0);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void sub_02053C70 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053AB4 * v1 = sub_02050A64(param0);

    if (!sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        v1->unk_04 = ov6_02245CCC(v0, sub_0205EB98(v0->unk_3C));
        sub_02050944(param0, sub_02053CB4, v1);
    }
}

static BOOL sub_02053CB4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02053AB4 * v0 = sub_02050A64(param0);

    if (ov6_02245CF0(v0->unk_04) == 1) {
        ov6_02245CFC(v0->unk_04);
        return 1;
    }

    return 0;
}

void sub_02053CD4 (UnkStruct_020508D4 * param0, const UnkStruct_02049FA8 * param1, u32 param2)
{
    UnkStruct_02053CD4 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053CD4));

    v0->unk_00 = 0;
    v0->unk_04 = param2;
    v0->unk_08 = NULL;
    v0->unk_0C = *param1;

    sub_02050924(param0, sub_02053D0C, v0);
}

static BOOL sub_02053D0C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053CD4 * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_0C;

    switch (v1->unk_00) {
    case 0:
        sub_02055644(v0, v2->unk_00);
        sub_02053DB4(param0);
        (v1->unk_00)++;
        break;
    case 1:
        sub_0205EB58(v0->unk_3C, 0x0);
        sub_020539A0(param0, &v1->unk_0C);
        (v1->unk_00)++;
        break;
    case 2:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);

        if (v1->unk_04 == 2) {
            sub_02070588(v0);
        } else if ((v1->unk_04 == 0) || (v1->unk_04 == 1)) {
            sub_020705A4(v0);
        } else {
            GF_ASSERT(FALSE);
        }

        sub_02053DF0(param0);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static void sub_02053DB4 (UnkStruct_020508D4 * param0)
{
    sub_02050944(param0, sub_02053DC4, NULL);
}

static BOOL sub_02053DC4 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);

    switch (*v0) {
    case 0:
        sub_02055820(param0);
        (*v0)++;
        break;
    case 1:
        return 1;
    }

    return 0;
}

static void sub_02053DF0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02053CD4 * v0 = sub_02050A64(param0);
    sub_02050944(param0, sub_02053E08, v0);
}

static BOOL sub_02053E08 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_02053CD4 * v2 = sub_02050A64(param0);

    switch (*v0) {
    case 0:
        sub_02055868(param0);
        (*v0)++;
        break;
    case 1:
        ov5_021DDAA4(v1);
        sub_02053E5C(param0);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

static void sub_02053E5C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053CD4 * v1 = sub_02050A64(param0);

    if (!sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        void * v2 = ov6_022472C8(v0, 4, v1->unk_04);
        sub_02050944(param0, ov6_022472E8, v2);
    }
}

static BOOL sub_02053E98 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053E98 * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        ov5_021E15A8(v0, 1, &v1->unk_04);
        v1->unk_00++;
        break;
    case 1:
        if (v1->unk_04) {
            sub_02055644(v0, v2->unk_00);
            sub_02055820(param0);
            v1->unk_00++;
        }
        break;
    case 2:
        sub_020539A0(param0, &v1->unk_08);
        v1->unk_00++;
        break;
    case 3:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);
        sub_02055868(param0);
        v1->unk_00++;
        break;
    case 4:
        v1->unk_04 = 0;
        ov5_021E15A8(v0, 0, &v1->unk_04);
        v1->unk_00++;
        break;
    case 5:
        if (v1->unk_04) {
            v1->unk_00++;
        }
        break;
    case 6:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02053F58 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    UnkStruct_02049FA8 v0;
    UnkStruct_02053E98 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053E98));

    MI_CpuClear8(v1, sizeof(UnkStruct_02053E98));

    inline_02049FA8(&v0, param1, param2, 0, 0, sub_0205EA78(param0->unk_3C));
    v1->unk_08 = v0;
    sub_02050904(param0, sub_02053E98, v1);
}

void * sub_02053FAC (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02053FAC * v0;
    UnkStruct_02049FA8 * v1 = sub_0203A730(sub_0203A790(param0->unk_0C));

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053FAC));
    v0->unk_00 = 0;
    v0->unk_04 = 0;

    if (param0->unk_70 == 1) {
        v0->unk_08 = v1->unk_00;
        v0->unk_0C = -1;
        v0->unk_10 = v1->unk_08;
        v0->unk_14 = v1->unk_0C;
    } else {
        sub_020534EC(v1, param0);
        v0->unk_08 = 2;
        v0->unk_0C = -1;

        {
            int v2, v3;
            int v4, v5;

            v4 = (v1->unk_08 / 32) - 1;
            v5 = (v1->unk_0C / 32) - 6;

            GF_ASSERT(v4 >= 0);
            GF_ASSERT(v5 >= 0);

            if (v4 % 2 == 0) {
                v2 = 8;
            } else {
                v2 = 23;
            }

            if (v5 % 2 == 0) {
                v3 = 8;
            } else {
                v3 = 23;
            }

            v4 = (v4 / 2) + 1;
            v5 = (v5 / 2) + 2 + 1;
            v0->unk_10 = v4 * 32 + v2;
            v0->unk_14 = v5 * 32 + v3;
        }
    }

    return v0;
}

void sub_02054064 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02053FAC * v0 = sub_02053FAC(param0);

    if (v0 == NULL) {
        return;
    }

    sub_02050904(param0, sub_02054428(param0), v0);
}

BOOL sub_02054084 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053FAC * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
    {
        MessageLoader * v2 = MessageLoader_Init(1, 26, 221, 11);

        v1->unk_34 = MessageLoader_GetNewStrbuf(v2, 124);
        MessageLoader_Free(v2);
    }
        sub_0205D8F4(v0->unk_08, &v1->unk_24, 3);
        sub_0205D944(&v1->unk_24, sub_02025E44(v0->unk_0C));
        v1->unk_38 = sub_0205D994(&v1->unk_24, v1->unk_34, sub_02025E44(v0->unk_0C), 1);
        v1->unk_00 = 1;
        break;
    case 1:
        if (sub_0205DA04(v1->unk_38) == 1) {
            Strbuf_Free(v1->unk_34);
            sub_0200DAA4(v0->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 11);
            v1->unk_3C = sub_02002100(v0->unk_08, &Unk_020EC3A0, 1024 - (18 + 12) - 9, 11, 11);
            v1->unk_00 = 2;
        }
        break;
    case 2:
        switch (sub_02002114(v1->unk_3C, 11)) {
        case 0:
            sub_0200E084(&v1->unk_24, 0);
            sub_0201A8FC(&v1->unk_24);
            v1->unk_00 = 3;
            break;
        case 0xfffffffe:
            sub_0200E084(&v1->unk_24, 0);
            sub_0201A8FC(&v1->unk_24);
            v1->unk_00 = 5;
        }
        break;
    case 3:
        if (sub_020247E0(v0->unk_0C)) {
            sub_0203E8E0(param0, 2034, NULL, NULL);
        } else {
            sub_020287E0(v0->unk_0C);
            v1->unk_20 = ov5_021E1F98(v0, 11, 3);
            ov5_021E1F04(v1->unk_20);
            v1->unk_1C = 0;
            sub_0203E8E0(param0, 2005, NULL, &v1->unk_1C);
        }

        v1->unk_00 = 4;
        break;
    case 4:
        if (sub_020247E0(v0->unk_0C)) {
            v1->unk_00 = 5;
        } else {
            ov5_021E1F7C(v1->unk_20);
            ov5_021E1FF4(v1->unk_20);

            if (v1->unk_1C == 0) {
                v1->unk_00 = 5;
            } else {
                v1->unk_00 = 6;
            }
        }
        break;
    case 5:
        sub_02062C78(v0->unk_38);
        Heap_FreeToHeap(v1);
        return 1;
    case 6:
        sub_0200564C(0, 30);
        (v1->unk_00)++;
        break;
    case 7:
        if (sub_0205444C(param0, 0)) {
            (v1->unk_00)++;
        }
        break;
    case 8:
        sub_02055820(param0);
        (v1->unk_00)++;
        break;
    case 9:
        v0->unk_70 = 1;
        Overlay_LoadByID(FS_OVERLAY_ID(overlay23), 2);
        ov23_022499E8(v0);
        sub_020539E8(param0, v1->unk_08, -1, v1->unk_10, v1->unk_14, 1);
        (v1->unk_00)++;
        break;
    case 10:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02004234(0);
        sub_02055414(v0);
        sub_02055868(param0);
        (v1->unk_00)++;
        break;
    case 11:
        if (sub_0205444C(param0, 1)) {
            ov23_02249A2C();
            v0->unk_6C = ov23_02249404(v0);
            sub_0200AAE0(30, 0, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 2);
            (v1->unk_00)++;
        }
        break;
    case 12:
        if (sub_0200AC1C(2)) {
            ov23_0224DBF4(1);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

BOOL sub_0205430C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053FAC * v1 = sub_02050A64(param0);
    int v2 = 0;

    switch (v1->unk_00) {
    case 0:
        ov23_0224DBF4(0);
        ov23_02249A5C();
        ov23_0224942C(v0->unk_6C);
        sub_0200AAE0(30, -16, 0, GX_BLEND_PLANEMASK_BG0, 2);
        v1->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            if ((v0->unk_6C == NULL) && !sub_02035E38()) {
                sub_0200564C(0, 30);
                v1->unk_00++;
            }
        }
        break;
    case 2:
        if (sub_0205444C(param0, 2)) {
            (v1->unk_00)++;
        }
        break;
    case 3:
        sub_02055820(param0);
        (v1->unk_00)++;
        break;
    case 4:
        v0->unk_70 = 0;
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay23));
        sub_020539E8(param0, v1->unk_08, -1, v1->unk_10, v1->unk_14, 1);
        (v1->unk_00)++;
        break;
    case 5:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02004234(0);
        sub_02055414(v0);
        sub_02055868(param0);
        (v1->unk_00)++;
        break;
    case 6:
        if (sub_0205444C(param0, 3)) {
            (v1->unk_00)++;
        }
        break;
    case 7:
        Heap_FreeToHeap(v1);
        return 1;
        break;
    }

    return 0;
}

UnkFuncPtr_02050904 sub_02054428 (const UnkStruct_0203CDB0 * param0)
{
    if (param0->unk_70 == 0) {
        return sub_02054084;
    } else if (param0->unk_70 == 1) {
        return sub_0205430C;
    } else {
        GF_ASSERT(0);
        return NULL;
    }
}

static BOOL sub_0205444C (UnkStruct_020508D4 * param0, int param1)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053FAC * v1 = sub_02050A64(param0);
    BOOL v2 = 0;

    switch (v1->unk_04) {
    case 0:
        v1->unk_18 = 0;
        sub_0205CFDC(v0, param1, &v1->unk_18);
        v1->unk_04++;
        break;
    case 1:
        if (v1->unk_18) {
            v1->unk_04 = 0;
            v2 = 1;
        }
        break;
    }

    return v2;
}

static BOOL sub_02054494 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053A80 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        sub_02053374(v0);
        (v1->unk_00)++;
        break;
    case 1:
        sub_0205311C(v0, &v1->unk_04);
        sub_0203F5C0(v0, 2);
        (v1->unk_00)++;
        break;
    case 2:
        sub_02053320(v0);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_020544F0 (UnkStruct_020508D4 * param0, const UnkStruct_02049FA8 * param1)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053A80 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053A80));

    if (sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    v1->unk_00 = 0;
    v1->unk_04 = *param1;

    sub_02050944(param0, sub_02054494, v1);
}

static BOOL sub_02054538 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02054538 * v1 = sub_02050A64(param0);
    int * v2 = sub_02050A68(param0);
    UnkStruct_02049FA8 * v3 = &v1->unk_08;

    switch (*v2) {
    case 0:

    {
        sub_02055644(v0, v3->unk_00);
    }
        ov5_021E15A8(v0, 1, &v1->unk_04);
        (*v2)++;
        break;
    case 1:
        if (v1->unk_04) {
            sub_02055820(param0);
            (*v2)++;
        }
        break;
    case 2:
        sub_020539A0(param0, &v1->unk_08);
        (*v2)++;
        break;
    case 3:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v3->unk_00);
        sub_02055868(param0);
        (*v2)++;
        break;
    case 4:
        sub_020558F0(param0);
        (*v2)++;
        break;
    case 5:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_020545EC (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02049FA8 * v0 = sub_0203A730(sub_0203A790(param0->unk_0C));
    UnkStruct_02054538 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02054538));

    MI_CpuClear8(v1, sizeof(UnkStruct_02054538));

    v1->unk_08 = *v0;
    sub_0205B388(param0);
    sub_0205C2E0(param0->unk_80);
    param0->unk_70 = 0;

    sub_02050904(param0, sub_02054538, v1);
    param0->unk_7C = NULL;
}

static BOOL sub_02054648 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02054538 * v1 = sub_02050A64(param0);
    int * v2 = sub_02050A68(param0);
    UnkStruct_02049FA8 * v3 = &v1->unk_08;

    switch (*v2) {
    case 0:
    {
        sub_02055644(v0, v3->unk_00);
    }
        sub_020558AC(param0);
        (*v2)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v2)++;
        break;
    case 2:
        sub_020539A0(param0, &v1->unk_08);
        (*v2)++;
        break;
    case 3:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v3->unk_00);
        sub_02055868(param0);
        (*v2)++;
        break;
    case 4:
        v1->unk_04 = 0;
        ov5_021E15A8(v0, 0, &v1->unk_04);
        (*v2)++;
        break;
    case 5:
        if (v1->unk_04) {
            (*v2)++;
        }
        break;
    case 6:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02054708 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02049FA8 * v1 = sub_0203A730(sub_0203A790(v0->unk_0C));
    UnkStruct_02054538 * v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02054538));

    MI_CpuClear8(v2, sizeof(UnkStruct_02054538));
    sub_020534EC(v1, v0);

    inline_02049FA8(&v2->unk_08, 466, -1, 8, 14, 0);

    v0->unk_7C = sub_0205B33C(v0);
    v0->unk_80 = sub_0205C22C(v0->unk_7C);
    v0->unk_70 = 2;

    sub_02050944(param0, sub_02054648, v2);
}

static BOOL sub_02054778 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02053900 * v1 = sub_02050A64(param0);
    UnkStruct_02049FA8 * v2 = &v1->unk_04;

    switch (v1->unk_00) {
    case 0:
        sub_02005748(1539);
        sub_02055644(v0, v2->unk_00);
        sub_02055974(param0);
        (v1->unk_00)++;
        break;
    case 1:
        sub_020539A0(param0, &v1->unk_04);
        (v1->unk_00)++;
        break;
    case 2:
        if (sub_02005684() != 0) {
            break;
        }

        sub_02055670(v0, v2->unk_00);
        sub_02055868(param0);
        (v1->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02054800 (UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02049FA8 v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_02049FA8 * v2 = sub_0203A730(sub_0203A790(v1->unk_0C));

    sub_020534EC(v2, v1);

    v1->unk_70 = 3;

    {
        UnkStruct_02053900 * v3 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02053900));

        inline_02049FA8(&v0, param1, param2, param3, param4, param5);

        v3->unk_00 = 0;
        v3->unk_04 = v0;

        sub_02050944(param0, sub_02054778, v3);
    }
}

void sub_02054864 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02049FA8 * v1 = sub_0203A730(sub_0203A790(v0->unk_0C));

    v0->unk_70 = 0;
    sub_02053900(v0->unk_10, v1);
}

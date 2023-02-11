#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_0206C638.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay006/struct_ov6_02242634.h"
#include "overlay006/struct_ov6_02242634_sub2.h"

#include "narc.h"
#include "unk_0201378C.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_0202D7A8.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "unk_0203A6DC.h"
#include "unk_0203CC84.h"
#include "unk_020507CC.h"
#include "unk_02050A74.h"
#include "unk_02051D8C.h"
#include "unk_02054884.h"
#include "unk_02054D00.h"
#include "unk_020559DC.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_0206940C.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206C33C.h"
#include "unk_02073C2C.h"
#include "unk_02079170.h"
#include "party.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02242F74.h"
#include "overlay006/ov6_02243218.h"
#include "overlay006/ov6_02246B74.h"
#include "overlay006/ov6_02247660.h"
#include "overlay006/ov6_022477B8.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    BOOL unk_08;
    BOOL unk_0C;
} UnkStruct_ov6_02241674;

typedef struct {
    int unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov6_0224222C;

typedef struct {
    u32 unk_00;
    BOOL unk_04;
    BOOL unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F[2];
    u8 unk_11;
} UnkStruct_ov6_022422D0;

typedef struct {
    int unk_00;
    const u8 * unk_04;
} UnkStruct_ov6_02248FF0;

static BOOL ov6_022417C8(UnkStruct_0203CDB0 * param0, const u32 param1, const u8 param2);
static u8 ov6_02241874(UnkStruct_0203CDB0 * param0, u8 param1, u8 * param2);
static BOOL ov6_022418B4(UnkStruct_0203CDB0 * param0, u32 param1);
static BOOL ov6_022418DC(UnkStruct_0203CDB0 * param0, u32 param1);
static BOOL ov6_0224222C(Pokemon * param0, const UnkStruct_ov6_022422D0 * param1, const UnkStruct_ov6_0224222C * param2, const u8 param3, const u8 param4, const u8 param5, u8 * param6);
static BOOL ov6_022422D0(const UnkStruct_ov6_022422D0 * param0, Pokemon * param1, const u8 param2);
static int ov6_0224214C(UnkStruct_0203CDB0 * param0);
static int ov6_02242158(UnkStruct_0203CDB0 * param0);
static int ov6_02242164(UnkStruct_0203CDB0 * param0, const int param1);
static BOOL ov6_02241674(UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_02242634 * param3, UnkStruct_ov6_0224222C * param4, const UnkStruct_ov6_022422D0 * param5, const UnkStruct_ov6_02241674 * param6);
static BOOL ov6_0224174C(UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4);
static BOOL ov6_02241790(UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4);
static BOOL ov6_022417AC(UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4, const int param5);
static BOOL ov6_02241DC4(Pokemon * param0, const int param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const u8 param4, const int param5, UnkStruct_ov6_02240D5C * param6);
static BOOL ov6_02241F7C(UnkStruct_0203CDB0 * param0, Pokemon * param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const int param4, UnkStruct_ov6_02240D5C * param5, const int param6, const int param7);
static BOOL ov6_02241F2C(const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const UnkStruct_ov6_022422D0 * param5, Pokemon * param6, UnkStruct_ov6_02240D5C * param7);
static u8 ov6_0224226C(const BOOL param0, const u8 param1, const UnkStruct_ov6_022422D0 * param2, const u32 param3, Pokemon * param4);
static void ov6_02242328(UnkStruct_0203CDB0 * param0, const BOOL param1, UnkStruct_ov6_02240D5C ** param2);
static void ov6_02242354(UnkStruct_0203CDB0 * param0, const BOOL param1, const BOOL param2, UnkStruct_ov6_0224222C * param3);
static BOOL ov6_02242388(const u8 param0, const UnkStruct_ov6_022422D0 * param1);
static void ov6_0224239C(const u32 param0, UnkStruct_0206C638 * param1, UnkStruct_ov6_02240D5C * param2);
static BOOL ov6_02242440(UnkStruct_0203CDB0 * param0, UnkStruct_0206C638 ** param1);
static BOOL ov6_02242514(const int param0, const UnkStruct_ov6_022422D0 * param1, Pokemon * param2, UnkStruct_ov6_02240D5C * param3);
static u8 ov6_022425D4(const UnkStruct_ov6_0224222C * param0, const UnkStruct_ov6_022422D0 * param1, const u8 param2);
static void ov6_02242634(UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02242634 * param2, UnkStruct_ov6_022422D0 * param3);
static void ov6_02241A90(Pokemon * param0, u8 * param1);
static void ov6_02241ABC(UnkStruct_0203CDB0 * param0, u8 * param1);

static const u8 Unk_ov6_02248FDC[] = {
    0x0,
    0x1,
    0x2,
    0x6,
    0x7,
    0x9,
    0xA,
    0xB,
    0xC,
    0xE,
    0xF,
    0x10,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x19
};

static const u8 Unk_ov6_02248FC0[] = {
    0x5
};

static const u8 Unk_ov6_02248FD4[] = {
    0x11
};

static const u8 Unk_ov6_02248FD0[] = {
    0x8
};

static const u8 Unk_ov6_02248FCC[] = {
    0xD
};

static const u8 Unk_ov6_02248FC8[] = {
    0x4
};

static const u8 Unk_ov6_02248FC4[] = {
    0x3
};

static const u8 Unk_ov6_02248FD8[] = {
    0x1A,
    0x1B
};

static const UnkStruct_ov6_02248FF0 Unk_ov6_02248FF0[] = {
    {0x14, Unk_ov6_02248FDC},
    {0x1, Unk_ov6_02248FC0},
    {0x1, Unk_ov6_02248FD4},
    {0x1, Unk_ov6_02248FD0},
    {0x1, Unk_ov6_02248FCC},
    {0x1, Unk_ov6_02248FC8},
    {0x1, Unk_ov6_02248FC4},
    {0x2, Unk_ov6_02248FD8}
};

void ov6_02240C9C (const UnkStruct_ov6_02242634 * param0, int * param1, int * param2)
{
    int v0;

    v0 = sub_02013960();

    if ((v0 == 1) || (v0 == 2)) {
        (*param1) = param0->unk_48[0];
        (*param2) = param0->unk_48[1];
    } else if ((v0 == 3) || (v0 == 4)) {
        (*param1) = param0->unk_50[0];
        (*param2) = param0->unk_50[1];
    }
}

static void ov6_02240CC8 (UnkStruct_0203CDB0 * param0, const UnkStruct_ov6_02242634 * param1, int * param2, int * param3)
{
    u32 v0;
    UnkStruct_0202D7B0 * v1;

    v1 = sub_0202D834(param0->unk_0C);

    if (sub_0202D898(v1)) {
        v0 = sub_0202D814(v1, 2);

        if (param0->unk_1C->unk_00 == ov6_02243218(v0)) {
            (*param2) = param1->unk_40[0];
            (*param3) = param1->unk_40[1];
        }
    }
}

static void ov6_02240D00 (UnkStruct_0203CDB0 * param0, const BOOL param1, int * param2, int * param3)
{
    int * v0;
    u16 v1, v2;

    if (MapHeader_IsTrophyGarden(param0->unk_1C->unk_00)) {
        sub_0202DA10(param0->unk_0C, &v1, &v2);

        if (param1) {
            v0 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(106, 8, 4);

            if (v1 != 0xffff) {
                (*param2) = v0[v1];
            }

            if (v2 != 0xffff) {
                (*param3) = v0[v2];
            }

            Heap_FreeToHeap(v0);
        }
    }
}

BOOL ov6_02240D5C (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov6_02240D5C * v0;
    Pokemon * v1;
    int v2, v3;
    u8 v4;
    u8 v5;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    BOOL v9;
    UnkStruct_ov6_02241674 v10;
    Party * v11;
    UnkStruct_ov6_02242634 * v12;
    UnkStruct_ov6_0224222C v13[12];
    UnkStruct_ov6_022422D0 v14;

    v2 = sub_0205EABC(param0->unk_3C);
    v3 = sub_0205EAC8(param0->unk_3C);
    v4 = (u8)sub_02054F94(param0, v2, v3);

    {
        u8 v15;

        v15 = ov6_02241874(param0, v4, &v5);

        if (v15 == 0) {
            return 0;
        }

        v11 = Party_GetFromSavedata(param0->unk_0C);
        v12 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);
        v1 = Party_GetPokemonBySlotIndex(v11, 0);

        ov6_02242634(param0, v1, v12, &v14);

        {
            if (!sub_0202D9D8(sub_0202D834(param0->unk_0C))) {
                Pokemon * v16;

                v16 = sub_02054A40(v11);

                v14.unk_04 = 1;
                v14.unk_0C = GetMonData(v16, MON_DATA_161, NULL);
            }
        }

        v15 = ov6_0224226C(0, v15, &v14, sub_0203A74C(sub_0203A790(param0->unk_0C)), v1);

        ov6_02241ABC(param0, &v15);
        ov6_02241A90(v1, &v15);

        if (ov6_022417C8(param0, v15, v4) == 0) {
            v6 = 0;
        } else {
            v6 = 1;
        }
    }

    memset(&v10, 0, sizeof(UnkStruct_ov6_02241674));

    if (!sub_020696DC(v2, v3, param0, param0->unk_94, &v10.unk_00, &v10.unk_04, &v10.unk_08)) {
        v10.unk_0C = 0;
    } else {
        v10.unk_0C = 1;
        v6 = 1;
    }

    if (v6 == 0) {
        return 0;
    }

    if (!sub_0206A984(sub_020507E4(param0->unk_0C))) {
        v8 = 0;
    } else {
        v8 = 1;
    }

    if ((!v8) && (v10.unk_0C == 0)) {
        UnkStruct_0206C638 * v17;

        if (ov6_02242440(param0, &v17)) {
            if (!ov6_02242388(sub_0202D93C(v17, 6), &v14)) {
                v0 = sub_02051D8C(11, 0x100);

                sub_02052314(v0, param0);
                ov6_0224239C(v14.unk_00, v17, v0);
                sub_02069434(param0->unk_94);
                sub_02050E10(param0, v0);
                return 1;
            } else {
                return 0;
            }
        }
    }

    if (!v8) {
        v9 = sub_0206AE5C(sub_020507E4(param0->unk_0C));
        ov6_02242328(param0, v9, &v0);
    } else {
        v0 = sub_02051D8C(11, (0x2 | 0x8 | 0x40));
    }

    sub_02052314(v0, param0);

    if (v5 == 0) {
        int v18;
        BOOL v19;

        for (v18 = 0; v18 < 12; v18++) {
            v13[v18].unk_00 = v12->unk_04[v18].unk_04;
            v13[v18].unk_04 = v12->unk_04[v18].unk_00;
            v13[v18].unk_06 = v12->unk_04[v18].unk_00;
        }

        v19 = sub_02027474(sub_02027560(sub_0203D174(param0)));

        ov6_02240C9C(v12, &v13[2].unk_00, &v13[3].unk_00);
        ov6_02240CC8(param0, v12, &v13[0].unk_00, &v13[1].unk_00);
        ov6_02240D00(param0, v19, &v13[6].unk_00, &v13[7].unk_00);
        ov6_022477B8(v12, v19, &v13[8].unk_00, &v13[9].unk_00);

        if (!v8) {
            ov6_02242354(param0, v9, v19, v13);

            v7 = ov6_02241674(param0, v1, v0, v12, v13, &v14, &v10);
        } else {
            {
                v0->unk_18[2] = sub_0206B034(sub_020507E4(param0->unk_0C));
                sub_02079170(v0, param0->unk_0C, 11);
            }
            v7 = ov6_0224174C(param0, v1, v0, v13, &v14);
        }
    } else if (v5 == 1) {
        int v18;

        for (v18 = 0; v18 < 5; v18++) {
            v13[v18].unk_00 = v12->unk_AC[v18].unk_04;
            v13[v18].unk_04 = v12->unk_AC[v18].unk_00;
            v13[v18].unk_06 = v12->unk_AC[v18].unk_01;
        }

        v7 = ov6_02241790(param0, v1, v0, v13, &v14);
    } else {
        GF_ASSERT(FALSE);
        sub_020520A4(v0);
        return 0;
    }

    if (v7) {
        sub_02050E10(param0, v0);
    } else {
        v6 = 0;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (v6 == 0) {
        sub_020520A4(v0);
    }

    param0->unk_78.unk_00 = 0;

    return v6;
}

BOOL ov6_0224106C (UnkStruct_0203CDB0 * param0, const int param1, UnkStruct_ov6_02240D5C ** param2)
{
    Pokemon * v0;
    Party * v1;
    BOOL v2;
    UnkStruct_ov6_0224222C v3[12];
    UnkStruct_ov6_022422D0 v4;

    {
        u8 v5;

        v5 = ov6_02242164(param0, param1);

        if (v5 == 0) {
            return 0;
        }

        v1 = Party_GetFromSavedata(param0->unk_0C);
        v0 = Party_GetPokemonBySlotIndex(v1, 0);
        ov6_02242634(param0, v0, NULL, &v4);
        v5 = ov6_0224226C(1, v5, &v4, sub_0203A74C(sub_0203A790(param0->unk_0C)), v0);

        if (inline_020564D0(100) >= v5) {
            return 0;
        }
    }

    v2 = sub_0206AE5C(sub_020507E4(param0->unk_0C));

    ov6_02242328(param0, v2, param2);

    sub_02052314(*param2, param0);
    sub_0205285C(*param2);

    if ((MapHeader_HasFeebasTiles(param0->unk_1C->unk_00)) && ov6_02247660(param0)) {
        u8 v6;
        int v7;
        u8 v8, v9;

        ov6_02247794(&v8, &v9);
        ov6_022477A0(&v7);

        for (v6 = 0; v6 < 5; v6++) {
            v3[v6].unk_00 = v7;
            v3[v6].unk_04 = v8;
            v3[v6].unk_06 = v9;
        }
    } else {
        {
            UnkStruct_ov6_02242634_sub2 * v10;
            u8 v11;
            UnkStruct_ov6_02242634 * v12;

            v12 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);

            switch (param1) {
            case 0:
                v10 = v12->unk_F4;
                break;
            case 1:
                v10 = v12->unk_118;
                break;
            case 2:
                v10 = v12->unk_13C;
                break;
            }

            for (v11 = 0; v11 < 5; v11++) {
                v3[v11].unk_00 = v10[v11].unk_04;
                v3[v11].unk_04 = v10[v11].unk_00;
                v3[v11].unk_06 = v10[v11].unk_01;
            }
        }
    }

    {
        BOOL v13;

        v13 = ov6_022417AC(param0, v0, *param2, v3, &v4, param1);

        if (!v13) {
            return 0;
        }
    }

    return 1;
}

BOOL ov6_022411C8 (UnkStruct_0203CDB0 * param0, UnkStruct_020508D4 * param1)
{
    UnkStruct_ov6_02240D5C * v0;
    Pokemon * v1;
    int v2, v3;
    u8 v4;
    u8 v5;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    UnkStruct_ov6_02241674 v9;
    Party * v10;
    UnkStruct_ov6_02242634 * v11;
    UnkStruct_ov6_0224222C v12[12];
    UnkStruct_ov6_022422D0 v13;

    v2 = sub_0205EABC(param0->unk_3C);
    v3 = sub_0205EAC8(param0->unk_3C);
    v4 = (u8)sub_02054F94(param0, v2, v3);

    {
        u8 v14;

        v14 = ov6_02241874(param0, v4, &v5);

        if (v14 == 0) {
            return 0;
        }
    }

    v10 = Party_GetFromSavedata(param0->unk_0C);
    v11 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);
    v1 = Party_GetPokemonBySlotIndex(v10, 0);

    ov6_02242634(param0, v1, v11, &v13);

    v13.unk_04 = 0;
    v13.unk_08 = 1;

    memset(&v9, 0, sizeof(UnkStruct_ov6_02241674));

    if (!sub_0206A984(sub_020507E4(param0->unk_0C))) {
        v6 = 0;
    } else {
        v6 = 1;
    }

    if (!v6) {
        UnkStruct_0206C638 * v15;

        if (ov6_02242440(param0, &v15)) {
            v0 = sub_02051D8C(11, 0x100);

            sub_02052314(v0, param0);
            ov6_0224239C(v13.unk_00, v15, v0);
            sub_02069434(param0->unk_94);
            sub_02050E78(param0, param1, v0);
            return 1;
        }
    }

    if (!v6) {
        v7 = sub_0206AE5C(sub_020507E4(param0->unk_0C));
        ov6_02242328(param0, v7, &v0);
    } else {
        v0 = sub_02051D8C(11, (0x2 | 0x8 | 0x40));
    }

    sub_02052314(v0, param0);

    if (v5 == 0) {
        int v16;
        BOOL v17;

        for (v16 = 0; v16 < 12; v16++) {
            v12[v16].unk_00 = v11->unk_04[v16].unk_04;
            v12[v16].unk_04 = v11->unk_04[v16].unk_00;
            v12[v16].unk_06 = v11->unk_04[v16].unk_00;
        }

        v17 = sub_02027474(sub_02027560(sub_0203D174(param0)));

        ov6_02240C9C(v11, &v12[2].unk_00, &v12[3].unk_00);
        ov6_02240CC8(param0, v11, &v12[0].unk_00, &v12[1].unk_00);
        ov6_02240D00(param0, v17, &v12[6].unk_00, &v12[7].unk_00);
        ov6_022477B8(v11, v17, &v12[8].unk_00, &v12[9].unk_00);

        if (!v6) {
            ov6_02242354(param0, v7, v17, v12);

            v8 = ov6_02241674(param0, v1, v0, v11, v12, &v13, &v9);
        } else {
            {
                v0->unk_18[2] = sub_0206B034(sub_020507E4(param0->unk_0C));
                sub_02079170(v0, param0->unk_0C, 11);
            }
            v8 = ov6_0224174C(param0, v1, v0, v12, &v13);
        }
    } else if (v5 == 1) {
        int v16;

        for (v16 = 0; v16 < 5; v16++) {
            v12[v16].unk_00 = v11->unk_AC[v16].unk_04;
            v12[v16].unk_04 = v11->unk_AC[v16].unk_00;
            v12[v16].unk_06 = v11->unk_AC[v16].unk_01;
        }

        v8 = ov6_02241790(param0, v1, v0, v12, &v13);
    } else {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (v8) {
        sub_02050E78(param0, param1, v0);
    } else {
        GF_ASSERT(0);
    }

    param0->unk_78.unk_00 = 0;
    return 1;
}

BOOL ov6_022413E4 (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02240D5C ** param1)
{
    Pokemon * v0;
    int v1, v2;
    u8 v3;
    u8 v4;
    BOOL v5;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    UnkStruct_ov6_02241674 v9;
    Party * v10;
    UnkStruct_ov6_02242634 * v11;
    UnkStruct_ov6_0224222C v12[12];
    UnkStruct_ov6_022422D0 v13;

    *param1 = NULL;

    v1 = sub_0205EABC(param0->unk_3C);
    v2 = sub_0205EAC8(param0->unk_3C);
    v3 = (u8)sub_02054F94(param0, v1, v2);

    {
        u8 v14;

        v14 = ov6_02241874(param0, v3, &v4);

        if (v14 == 0) {
            return 0;
        }

        v10 = Party_GetFromSavedata(param0->unk_0C);
        v11 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);
        v0 = Party_GetPokemonBySlotIndex(v10, 0);

        ov6_02242634(param0, v0, v11, &v13);

        {
            if (!sub_0202D9D8(sub_0202D834(param0->unk_0C))) {
                Pokemon * v15;

                v15 = sub_02054A40(v10);

                v13.unk_04 = 1;
                v13.unk_0C = GetMonData(v15, MON_DATA_161, NULL);
            }
        }

        v14 = ov6_0224226C(0, v14, &v13, sub_0203A74C(sub_0203A790(param0->unk_0C)), v0);

        ov6_02241ABC(param0, &v14);
        ov6_02241A90(v0, &v14);

        if (ov6_022417C8(param0, v14, v3) == 0) {
            v5 = 0;
        } else {
            v5 = 1;
        }
    }

    memset(&v9, 0, sizeof(UnkStruct_ov6_02241674));
    v9.unk_0C = 0;

    if (!sub_0206A984(sub_020507E4(param0->unk_0C))) {
        v7 = 0;
    } else {
        v7 = 1;
    }

    if (!v7) {
        UnkStruct_0206C638 * v16;

        if (ov6_02242440(param0, &v16)) {
            if (!ov6_02242388(sub_0202D93C(v16, 6), &v13)) {
                *param1 = sub_02051D8C(11, 0x100);

                sub_02052314(*param1, param0);
                ov6_0224239C(v13.unk_00, v16, *param1);
                sub_02069434(param0->unk_94);
                return 1;
            } else {
                return 0;
            }
        }
    }

    if (!v7) {
        v8 = sub_0206AE5C(sub_020507E4(param0->unk_0C));
        ov6_02242328(param0, v8, param1);
    } else {
        *param1 = sub_02051D8C(11, (0x2 | 0x8 | 0x40));
    }

    sub_02052314(*param1, param0);

    if (v4 == 0) {
        int v17;
        BOOL v18;

        for (v17 = 0; v17 < 12; v17++) {
            v12[v17].unk_00 = v11->unk_04[v17].unk_04;
            v12[v17].unk_04 = v11->unk_04[v17].unk_00;
            v12[v17].unk_06 = v11->unk_04[v17].unk_00;
        }

        v18 = sub_02027474(sub_02027560(sub_0203D174(param0)));

        ov6_02240C9C(v11, &v12[2].unk_00, &v12[3].unk_00);
        ov6_02240CC8(param0, v11, &v12[0].unk_00, &v12[1].unk_00);
        ov6_02240D00(param0, v18, &v12[6].unk_00, &v12[7].unk_00);
        ov6_022477B8(v11, v18, &v12[8].unk_00, &v12[9].unk_00);

        if (!v7) {
            ov6_02242354(param0, v8, v18, v12);

            v6 = ov6_02241674(param0, v0, *param1, v11, v12, &v13, &v9);
        } else {
            {
                (*param1)->unk_18[2] = sub_0206B034(sub_020507E4(param0->unk_0C));
                sub_02079170(*param1, param0->unk_0C, 11);
            }
            v6 = ov6_0224174C(param0, v0, *param1, v12, &v13);
        }
    } else {
        GF_ASSERT(FALSE);
        sub_020520A4(*param1);
        return 0;
    }

    if (!v6) {
        v5 = 0;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (v5 == 0) {
        sub_020520A4(*param1);
    } else {
        param0->unk_78.unk_00 = 0;
    }

    return v5;
}

static BOOL ov6_02241674 (UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_02242634 * param3, UnkStruct_ov6_0224222C * param4, const UnkStruct_ov6_022422D0 * param5, const UnkStruct_ov6_02241674 * param6)
{
    BOOL v0;

    if (param6->unk_0C) {
        int v1, v2;

        if (param6->unk_00 == 1) {
            param4[4].unk_00 = param3->unk_58[0];
            param4[5].unk_00 = param3->unk_58[1];
            param4[10].unk_00 = param3->unk_58[2];
            param4[11].unk_00 = param3->unk_58[3];
        }

        sub_0206978C(param0->unk_94, &v1, &v2);

        if (param6->unk_04 == 1) {
            UnkStruct_02025E6C * v3;

            v3 = sub_02025E38(sub_0203D174(param0));
            v0 = ov6_02241F2C(v1, v2, 1, param6->unk_08, sub_02025F20(v3), param5, param1, param2);
        } else {
            v0 = ov6_02241F7C(param0, param1, param5, param4, 1, param2, v1, v2);
        }

        if (v0) {
            {
                int v4, v5;

                v4 = sub_0205EABC(param0->unk_3C);
                v5 = sub_0205EAC8(param0->unk_3C);

                sub_02069474(param0, v4, v5, param0->unk_94);
            }
        }
    } else {
        v0 = ov6_02241DC4(param1, 0xff, param5, param4, 0, 1, param2);

        if (v0) {
            sub_02069434(param0->unk_94);
        }
    }

    return v0;
}

static BOOL ov6_0224174C (UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4)
{
    BOOL v0;
    {
        {
            v0 = ov6_02241DC4(param1, 0xff, param4, param3, 0, 1, param2);

            if (!v0) {
                return 0;
            }

            v0 = ov6_02241DC4(param1, 0xff, param4, param3, 0, 3, param2);
        }
    }

    return v0;
}

static BOOL ov6_02241790 (UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4)
{
    BOOL v0;

    {
        v0 = ov6_02241DC4(param1, 0xff, param4, param3, 1, 1, param2);
    }

    return v0;
}

static BOOL ov6_022417AC (UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02240D5C * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4, const int param5)
{
    BOOL v0;

    v0 = ov6_02241DC4(param1, param5, param4, param3, 2, 1, param2);
    return v0;
}

static BOOL ov6_022417C8 (UnkStruct_0203CDB0 * param0, const u32 param1, const u8 param2)
{
    u8 v0;
    u32 v1;

    if (param1 > 100) {
        v1 = 100;
    }

    v1 = param1 << 8;

    if (ov6_022418B4(param0, v1) == 0) {
        param0->unk_78.unk_00++;

        if ((inline_020564D0(100)) >= 5) {
            return 0;
        }
    }

    v0 = 40;

    if (sub_0205DAD4(param2)) {
        v0 += 30;
    } else {
        if (sub_0205EB74(param0->unk_3C) == 0x1) {
            v0 += 30;
        }
    }

    v0 = ov6_02246B74(v0, sub_02055C40(param0));

    if (v0 > 100) {
        v0 = 100;
    }

    if ((inline_020564D0(100)) < v0) {
        if (ov6_022418DC(param0, param1)) {
            return 1;
        }
    }

    return 0;
}

static u8 ov6_02241874 (UnkStruct_0203CDB0 * param0, u8 param1, u8 * param2)
{
    if (sub_0205DE6C(param1)) {
        if (sub_0205DB58(param1)) {
            (*param2) = 1;
            return ov6_02242158(param0);
        } else {
            (*param2) = 0;
            return ov6_0224214C(param0);
        }
    }

    return 0;
}

static BOOL ov6_022418B4 (UnkStruct_0203CDB0 * param0, u32 param1)
{
    param1 = (param1 / 10) >> 8;

    if (param1 > 8) {
        param1 = 8;
    }

    param1 = 8 - (param1);

    if (param0->unk_78.unk_00 >= param1) {
        return 1;
    }

    return 0;
}

static BOOL ov6_022418DC (UnkStruct_0203CDB0 * param0, u32 param1)
{
    if (inline_020564D0(100) >= param1) {
        return 0;
    } else {
        return 1;
    }
}

static u8 ov6_02241904 (void)
{
    u8 v0;

    v0 = inline_020564D0(100);

    if (v0 < 20) {
        return 0;
    }

    if ((v0 >= 20) && (v0 < 40)) {
        return 1;
    }

    if ((v0 >= 40) && (v0 < 50)) {
        return 2;
    }

    if ((v0 >= 50) && (v0 < 60)) {
        return 3;
    }

    if ((v0 >= 60) && (v0 < 70)) {
        return 4;
    }

    if ((v0 >= 70) && (v0 < 80)) {
        return 5;
    }

    if ((v0 >= 80) && (v0 < 85)) {
        return 6;
    }

    if ((v0 >= 85) && (v0 < 90)) {
        return 7;
    }

    if ((v0 >= 90) && (v0 < 94)) {
        return 8;
    }

    if ((v0 >= 94) && (v0 < 98)) {
        return 9;
    }

    if (v0 == 98) {
        return 10;
    }

    return 11;
}

static u8 ov6_022419A0 (void)
{
    u8 v0;

    v0 = inline_020564D0(100);

    if (v0 < 60) {
        return 0;
    }

    if ((v0 >= 60) && (v0 < 90)) {
        return 1;
    }

    if ((v0 >= 90) && (v0 < 95)) {
        return 2;
    }

    if ((v0 >= 95) && (v0 < 99)) {
        return 3;
    }

    return 4;
}

static u8 ov6_022419EC (const int param0)
{
    u8 v0;
    u8 v1 = 0;

    v0 = inline_020564D0(100);

    switch (param0) {
    case 0:
        if (v0 < 60) {
            v1 = 0;
        } else if (v0 < 90) {
            v1 = 1;
        } else if (v0 < 95) {
            v1 = 2;
        } else if (v0 < 99) {
            v1 = 3;
        } else {
            v1 = 4;
        }
        break;
    case 1:
        if (v0 < 40) {
            v1 = 0;
        } else if (v0 < 80) {
            v1 = 1;
        } else if (v0 < 95) {
            v1 = 2;
        } else if (v0 < 99) {
            v1 = 3;
        } else {
            v1 = 4;
        }
        break;
    case 2:
        if (v0 < 40) {
            v1 = 0;
        } else if (v0 < 80) {
            v1 = 1;
        } else if (v0 < 95) {
            v1 = 2;
        } else if (v0 < 99) {
            v1 = 3;
        } else {
            v1 = 4;
        }
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return v1;
}

static void ov6_02241A90 (Pokemon * param0, u8 * param1)
{
    u16 v0;

    v0 = GetMonData(param0, MON_DATA_HELD_ITEM, NULL);

    if ((v0 == 224) || (v0 == 320)) {
        (*param1) = ((*param1) * 2) / 3;
    }
}

static void ov6_02241ABC (UnkStruct_0203CDB0 * param0, u8 * param1)
{
    u8 v0;

    v0 = sub_0202DA04(sub_0202D834(param0->unk_0C));

    if (v0 == 1) {
        (*param1) /= 2;
    } else if (v0 == 2) {
        (*param1) = (*param1) + ((*param1) / 2);
    }
}

static u8 ov6_02241AE4 (Pokemon * param0, const UnkStruct_ov6_022422D0 * param1)
{
    u32 v0;

    if (param1->unk_0D == 0) {
        if (param1->unk_0E == 28) {
            if (inline_020564D0(2) == 0) {
                v0 = (u32)GetMonData(param0, MON_DATA_PERSONALITY, NULL);
                v0 = v0 % 25;
                return (u8)v0;
            }
        }
    }

    return inline_020564D0(25);
}

static u8 ov6_02241B40 (const UnkStruct_ov6_0224222C * param0, const UnkStruct_ov6_022422D0 * param1)
{
    u8 v0;
    u8 v1;
    u8 v2, v3;
    u8 v4;

    if (param0->unk_04 >= param0->unk_06) {
        v2 = param0->unk_06;
        v3 = param0->unk_04;
    } else {
        v2 = param0->unk_04;
        v3 = param0->unk_06;
    }

    v0 = v3 - v2 + 1;
    v1 = sub_0201D2E8() % v0;

    if (param1->unk_0D == 0) {
        if ((param1->unk_0E == 55) || (param1->unk_0E == 72) || (param1->unk_0E == 46)) {
            if (inline_020564D0(2) == 0) {
                return v2 + v1;
            }

            return v3;
        }
    }

    return v2 + v1;
}

static void ov6_02241BAC (const u16 param0, const u8 param1, const int param2, const u32 param3, const UnkStruct_ov6_022422D0 * param4, Pokemon * param5, UnkStruct_ov6_02240D5C * param6)
{
    BOOL v0;
    u32 v1;
    BOOL v2;
    u8 v3;
    u8 v4;
    Pokemon * v5;

    v5 = sub_02073C74(11);
    sub_02073C2C(v5);

    v2 = 0;

    if (param4->unk_0D == 0) {
        if (param4->unk_0E == 56) {
            u32 v6;

            v6 = sub_020759F0(param0, 18);

            switch (v6) {
            case 0:
            case 254:
            case 255:
                break;
            default:
                if (inline_020564D0(3) > 0) {
                    v3 = GetMonData(param5, MON_DATA_111, NULL);
                    v2 = 1;
                }
            }
        } else if (param4->unk_0E == 28) {
            if (inline_020564D0(2) == 0) {
                v4 = sub_02075BCC(param5);
                v2 = 1;
            }
        }
    }

    v1 = sub_02075E64(param3);

    if (v2) {
        u8 v7, nature;

        do {
            if (param4->unk_0E == 56)
            {
                v7 = sub_02075DAC(param0, v1);
                GF_ASSERT(v7 != 2);

                if (v7 != v3) {
                    break;
                } else {
                    v1 = sub_02075E64(param3);
                }
            }
            else if (param4->unk_0E == 28)
            {
                nature = GetNatureFromPersonality(v1);

                if (nature == v4)
                    break;
                else
                    v1 = sub_02075E64(param3);
            }
        } while (TRUE);
    }

    sub_02073D80(v5, param0, param1, 32, 1, v1, 1, param4->unk_00);
    v0 = ov6_02242514(param2, param4, v5, param6);

    GF_ASSERT(v0);
    Heap_FreeToHeap(v5);
}

static void ov6_02241CC0 (u16 param0, u8 param1, const int param2, const UnkStruct_ov6_022422D0 * param3, Pokemon * param4, UnkStruct_ov6_02240D5C * param5)
{
    u8 v0;
    u8 v1;
    BOOL v2;
    Pokemon * v3;

    v3 = sub_02073C74(11);
    sub_02073C2C(v3);
    v0 = 1;

    {
        u32 v4;

        v4 = sub_020759F0(param0, 18);

        switch (v4) {
        case 0:
        case 254:
        case 255:
            v0 = 0;
        }
    }

    if (v0) {
        if (param3->unk_0D == 0) {
            if (param3->unk_0E == 56) {
                if (inline_020564D0(3) > 0) {
                    v1 = GetMonData(param4, MON_DATA_111, NULL);

                    if (v1 == 1) {
                        v1 = 0;
                    } else if (v1 == 0) {
                        v1 = 1;
                    } else {
                        GF_ASSERT(FALSE);
                    }

                    sub_02074088(v3, param0, param1, 32, v1, ov6_02241AE4(param4, param3), 0);
                    sub_02074B30(v3, 7, &param3->unk_00);

                    v2 = ov6_02242514(param2, param3, v3, param5);
                    GF_ASSERT(v2);
                    Heap_FreeToHeap(v3);
                    return;
                }
            }
        }
    }

    sub_02074044(v3, param0, param1, 32, ov6_02241AE4(param4, param3));
    sub_02074B30(v3, 7, &param3->unk_00);
    v2 = ov6_02242514(param2, param3, v3, param5);

    GF_ASSERT(v2);
    Heap_FreeToHeap(v3);
}

static BOOL ov6_02241DC4 (Pokemon * param0, const int param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const u8 param4, const int param5, UnkStruct_ov6_02240D5C * param6)
{
    BOOL v0;
    u8 v1 = 0;
    u8 v2 = 0;

    switch (param4) {
    case 0:
        v0 = ov6_0224222C(param0, param2, param3, 12, 8, 42, &v1);

        if (v0 == 0) {
            v0 = ov6_0224222C(param0, param2, param3, 12, 13, 9, &v1);

            if (v0 == 0) {
                v1 = ov6_02241904();
            }
        }

        v1 = ov6_022425D4(param3, param2, v1);
        v2 = param3[v1].unk_04;
        break;
    case 1:
        v0 = ov6_0224222C(param0, param2, param3, 5, 8, 42, &v1);
        v0 = ov6_0224222C(param0, param2, param3, 5, 13, 9, &v1);

        if (v0 == 0) {
            v1 = ov6_022419A0();
        }

        v2 = ov6_02241B40(&param3[v1], param2);
        break;
    case 2:
        v0 = ov6_0224222C(param0, param2, param3, 5, 8, 42, &v1);
        v0 = ov6_0224222C(param0, param2, param3, 5, 13, 9, &v1);

        if (v0 == 0) {
            v1 = ov6_022419EC(param1);
        }

        v2 = ov6_02241B40(&param3[v1], param2);
        break;
    default:
        GF_ASSERT(0);
    }

    if (ov6_022422D0(param2, param0, v2)) {
        return 0;
    }

    if (ov6_02242388(v2, param2) == 1) {
        return 0;
    }

    ov6_02241CC0(param3[v1].unk_00, v2, param5, param2, param0, param6);
    return 1;
}

static BOOL ov6_02241F2C (const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const UnkStruct_ov6_022422D0 * param5, Pokemon * param6, UnkStruct_ov6_02240D5C * param7)
{
    u8 v0 = 0;

    GF_ASSERT(param0 != 0);
    v0 = param1;

    if (param3) {
        ov6_02241BAC(param0, v0, param2, param4, param5, param6, param7);
    } else {
        ov6_02241CC0(param0, v0, param2, param5, param6, param7);
    }

    return 1;
}

static BOOL ov6_02241F7C (UnkStruct_0203CDB0 * param0, Pokemon * param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const int param4, UnkStruct_ov6_02240D5C * param5, const int param6, const int param7)
{
    u8 v0;
    u8 v1 = 0;
    u8 v2 = 0;
    int v3;

    v0 = ov6_0224222C(param1, param2, param3, 12, 8, 42, &v1);

    if (v0 == 0) {
        v0 = ov6_0224222C(param1, param2, param3, 12, 13, 9, &v1);

        if (v0 == 0) {
            v1 = ov6_02241904();
        }
    }

    v2 = param3[v1].unk_04;
    v3 = param3[v1].unk_00;

    if (param6 == 0) {
        sub_02069774(param0->unk_94, v3, v2);
        sub_02069B74(param0);
    } else {
        if (v3 == param6) {
            v3 = param6;
            v2 = param7;
            sub_02069B74(param0);
        } else {
            sub_02069434(param0->unk_94);
        }
    }

    ov6_02241CC0(v3, v2, param4, param2, param1, param5);
    return 1;
}

void ov6_02242034 (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02240D5C * param1)
{
    Pokemon * v0;
    int v1;
    UnkStruct_ov6_022422D0 v2;
    u8 v3;

    v1 = ov5_021EFFE4(param0);

    {
        Party * v4;

        v4 = Party_GetFromSavedata(param0->unk_0C);
        v0 = Party_GetPokemonBySlotIndex(v4, 0);

        ov6_02242634(param0, v0, NULL, &v2);
    }

    {
        u8 v5 = 15 - 5 + 1;

        v3 = 5 + inline_020564D0(v5);

        if (v2.unk_0D == 0) {
            if ((v2.unk_0E == 55) || (v2.unk_0E == 72) || (v2.unk_0E == 46)) {
                if (inline_020564D0(2) == 0) {
                    (void)0;
                } else {
                    v3 = 15;
                }
            }
        }
    }

    ov5_021F0040(param0);
    param1->unk_164 |= 0x2;
    ov6_02241CC0(v1, v3, 1, &v2, v0, param1);

    return;
}

void ov6_022420D4 (UnkStruct_0203CDB0 * param0, u16 param1, u8 param2, UnkStruct_ov6_02240D5C * param3)
{
    Pokemon * v0;
    UnkStruct_ov6_022422D0 v1;

    {
        Party * v2;

        v2 = Party_GetFromSavedata(param0->unk_0C);
        v0 = Party_GetPokemonBySlotIndex(v2, 0);

        ov6_02242634(param0, v0, NULL, &v1);
    }

    ov6_02241CC0(param1, param2, 1, &v1, v0, param3);
    return;
}

BOOL ov6_02242110 (UnkStruct_0203CDB0 * param0, u8 param1)
{
    int v0 = 0;

    if (sub_0205DE6C(param1)) {
        if (sub_0205DB58(param1)) {
            v0 = ov6_02242158(param0);
        } else {
            v0 = ov6_0224214C(param0);
        }
    }

    if (v0) {
        return 1;
    } else {
        return 0;
    }
}

static int ov6_0224214C (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov6_02242634 * v0;

    v0 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);
    return v0->unk_00;
}

static int ov6_02242158 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov6_02242634 * v0;

    v0 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);
    return v0->unk_A8;
}

static int ov6_02242164 (UnkStruct_0203CDB0 * param0, const int param1)
{
    UnkStruct_ov6_02242634 * v0;

    v0 = (UnkStruct_ov6_02242634 *)sub_0203A640(param0);

    switch (param1) {
    case 0:
        return v0->unk_F0;
    case 1:
        return v0->unk_114;
    case 2:
        return v0->unk_138;
    default:
        GF_ASSERT(0);
        return 0;
    }
}

static BOOL ov6_0224219C (const UnkStruct_ov6_0224222C * param0, const u8 param1, const u8 param2, u8 * param3)
{
    u8 v0[12];
    u8 v1;
    u8 v2;
    u8 v3, v4;

    for (v2 = 0; v2 < 12; v2++) {
        v0[v2] = 0;
    }

    v1 = 0;

    for (v2 = 0; v2 < param1; v2++) {
        v3 = sub_020759F0(param0[v2].unk_00, 6);
        v4 = sub_020759F0(param0[v2].unk_00, 7);

        if ((v3 == param2) || (v4 == param2)) {
            v0[v1++] = v2;
        }
    }

    if ((v1 == 0) || (v1 == param1)) {
        return 0;
    }

    *param3 = v0[sub_0201D2E8() % v1];
    return 1;
}

static BOOL ov6_0224222C (Pokemon * param0, const UnkStruct_ov6_022422D0 * param1, const UnkStruct_ov6_0224222C * param2, const u8 param3, const u8 param4, const u8 param5, u8 * param6)
{
    if (param1->unk_0D == 0) {
        if (param1->unk_0E == param5) {
            if (inline_020564D0(2) == 0) {
                return ov6_0224219C(param2, param3, param4, param6);
            }
        }
    }

    return 0;
}

static u8 ov6_0224226C (const BOOL param0, const u8 param1, const UnkStruct_ov6_022422D0 * param2, const u32 param3, Pokemon * param4)
{
    int v0;

    v0 = param1;

    if (param2->unk_0D == 0) {
        if (param0) {
            if ((param2->unk_0E == 60) || (param2->unk_0E == 21)) {
                (void)(v0 * 2);
            }
        } else {
            if ((param2->unk_0E == 71) || (param2->unk_0E == 99) || (param2->unk_0E == 35)) {
                v0 *= 2;
            } else if (param2->unk_0E == 8) {
                if (param3 == 10) {
                    v0 /= 2;
                }
            } else if (param2->unk_0E == 81) {
                if ((param3 == 5) || (param3 == 6) || (param3 == 7)) {
                    v0 /= 2;
                }
            } else if ((param2->unk_0E == 73) || (param2->unk_0E == 95) || (param2->unk_0E == 1)) {
                v0 /= 2;
            }
        }

        if (v0 > 100) {
            v0 = 100;
        }
    }

    return v0;
}

static BOOL ov6_022422D0 (const UnkStruct_ov6_022422D0 * param0, Pokemon * param1, const u8 param2)
{
    u8 v0;

    if (param0->unk_08) {
        return 0;
    }

    if (param0->unk_0D == 0) {
        if ((param0->unk_0E == 51) || (param0->unk_0E == 22)) {
            v0 = GetMonData(param1, MON_DATA_161, NULL);

            if (v0 <= 5) {
                return 0;
            }

            if (param2 <= v0 - 5) {
                if (inline_020564D0(2) == 0) {
                    return 1;
                }
            }
        }
    }

    return 0;
}

static void ov6_02242328 (UnkStruct_0203CDB0 * param0, const BOOL param1, UnkStruct_ov6_02240D5C ** param2)
{
    if (!param1) {
        (*param2) = sub_02051D8C(11, (0x0 | 0x0));
    } else {
        u16 * v0 = sub_0203A784(sub_0203A790(param0->unk_0C));
        (*param2) = sub_02051F24(11, *v0);
    }
}

static void ov6_02242354 (UnkStruct_0203CDB0 * param0, const BOOL param1, const BOOL param2, UnkStruct_ov6_0224222C * param3)
{
    if (param1) {
        ov6_02242F74(sub_0202D814(sub_0202D834(param0->unk_0C), 1), param2, param0->unk_1C->unk_00, &param3[6].unk_00, &param3[7].unk_00);
    }
}

static BOOL ov6_02242388 (const u8 param0, const UnkStruct_ov6_022422D0 * param1)
{
    if (param1->unk_04) {
        if (param1->unk_0C > param0) {
            return 1;
        }
    }

    return 0;
}

static void ov6_0224239C (const u32 param0, UnkStruct_0206C638 * param1, UnkStruct_ov6_02240D5C * param2)
{
    int v0;
    u8 v1;
    u32 v2;
    u32 v3;
    u32 v4;
    u16 v5;
    BOOL v6;
    Pokemon * v7;

    v7 = sub_02073C74(4);
    v0 = sub_0202D93C(param1, 4);
    v1 = sub_0202D93C(param1, 6);
    v2 = sub_0202D93C(param1, 2);
    v3 = sub_0202D93C(param1, 3);
    v4 = sub_0202D93C(param1, 7);
    v5 = sub_0202D93C(param1, 5);

    sub_02074158(v7, v0, v1, v2, v3);
    sub_02074B30(v7, 7, &param0);
    sub_02074B30(v7, 160, &v4);
    sub_02074B30(v7, 163, &v5);

    v6 = Party_AddPokemon(param2->unk_04[1], v7);

    GF_ASSERT(v6);
    Heap_FreeToHeap(v7);
}

static BOOL ov6_02242440 (UnkStruct_0203CDB0 * param0, UnkStruct_0206C638 ** param1)
{
    UnkStruct_0202D7B0 * v0;
    UnkStruct_0206C638 * v1[6];
    u8 v2;
    u8 v3;
    int v4;

    v2 = 0;
    v0 = sub_0202D834(param0->unk_0C);

    for (v3 = 0; v3 < 6; v3++) {
        v4 = sub_0206C3C8(sub_0202D8C4(v0, v3));

        if (sub_0202D8F8(v0, v3) && (v4 == param0->unk_1C->unk_00)) {
            v1[v2] = sub_0202D924(v0, v3);
            v2++;
        }
    }

    if (v2 == 0) {
        return 0;
    } else {
        if (inline_020564D0(2) == 0) {
            return 0;
        }
    }

    if (v2 > 1) {
        (*param1) = v1[inline_020564D0(v2)];
    } else {
        (*param1) = v1[0];
    }

    return 1;
}

static BOOL ov6_02242514 (const int param0, const UnkStruct_ov6_022422D0 * param1, Pokemon * param2, UnkStruct_ov6_02240D5C * param3)
{
    int v0 = 0;

    if (param1->unk_0D == 0) {
        if (param1->unk_0E == 14) {
            v0 = 1;
        }
    }

    sub_02077F0C(param2, param3->unk_00, v0);

    {
        u8 v1;
        u8 v2;
        int v3;

        v1 = 0;
        v3 = GetMonData(param2, MON_DATA_SPECIES, NULL);

        if (v3 == 422) {
            v1 = 1;

            if (!param1->unk_0F[0]) {
                v2 = 0;
            } else {
                v2 = 1;
            }
        } else if (v3 == 423) {
            v1 = 1;

            if (!param1->unk_0F[1]) {
                v2 = 0;
            } else {
                v2 = 1;
            }
        } else if (v3 == 201) {
            u8 v4;

            v1 = 1;
            v4 = Unk_ov6_02248FF0[param1->unk_11].unk_00;
            v2 = Unk_ov6_02248FF0[param1->unk_11].unk_04[sub_0201D2E8() % v4];
        }

        if (v1) {
            sub_02074B30(param2, 112, (u8 *)&v2);
        }
    }

    return Party_AddPokemon(param3->unk_04[param0], param2);
}

static u8 ov6_022425D4 (const UnkStruct_ov6_0224222C * param0, const UnkStruct_ov6_022422D0 * param1, const u8 param2)
{
    u8 v0;
    u8 v1;

    if (param1->unk_0D == 0) {
        if ((param1->unk_0E == 72) || (param1->unk_0E == 55) || (param1->unk_0E == 46)) {
            if (inline_020564D0(2) == 0) {
                return param2;
            }

            v0 = param2;

            for (v1 = 0; v1 < 12; v1++) {
                if (param0[v1].unk_00 == param0[v0].unk_00) {
                    if (param0[v1].unk_04 > param0[v0].unk_04) {
                        v0 = v1;
                    }
                }
            }

            return v0;
        }
    }

    return param2;
}

static void ov6_02242634 (UnkStruct_0203CDB0 * param0, Pokemon * param1, UnkStruct_ov6_02242634 * param2, UnkStruct_ov6_022422D0 * param3)
{
    if (GetMonData(param1, MON_DATA_IS_EGG, NULL) == 0) {
        param3->unk_0D = 0;
        param3->unk_0E = GetMonData(param1, MON_DATA_10, NULL);
    } else {
        param3->unk_0D = 1;
        param3->unk_0E = 123;
    }

    param3->unk_0C = 0;
    param3->unk_04 = 0;
    param3->unk_08 = 0;

    if (param2 != NULL) {
        param3->unk_0F[0] = param2->unk_60[0];
        param3->unk_0F[1] = param2->unk_60[1];

        if (param2->unk_7C != 0) {
            GF_ASSERT(param2->unk_7C <= 8);

            param3->unk_11 = param2->unk_7C - 1;
        } else {
            param3->unk_11 = 0;
        }
    }

    param3->unk_00 = sub_02025F20(sub_02025E38(param0->unk_0C));
}

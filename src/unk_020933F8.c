#include <nitro.h>
#include <string.h>

#include "assert.h"

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "trainer_info.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F55EC.h"
#include "constdata/const_020F560C.h"
#include "constdata/const_020F561C.h"
#include "constdata/const_020F55DC.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02093800.h"
#include "struct_defs/struct_02093BBC.h"
#include "struct_defs/struct_02094A58.h"
#include "struct_defs/struct_02095C48.h"
#include "overlay006/struct_ov6_02248DD8.h"

#include "unk_02005474.h"
#include "unk_0200A9DC.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0201378C.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_020298BC.h"
#include "unk_0202B604.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_0202F108.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_02055808.h"
#include "unk_0206A8DC.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "party.h"
#include "unk_020923C0.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"
#include "unk_02095AF0.h"
#include "overlay006/ov6_022489E4.h"
#include "overlay017/ov17_0223B140.h"
#include "overlay017/ov17_0223CB1C.h"
#include "overlay017/ov17_0223DAD0.h"
#include "overlay017/ov17_0224F4D4.h"
#include "overlay022/ov22_02255D44.h"

FS_EXTERN_OVERLAY(overlay17);
FS_EXTERN_OVERLAY(overlay22);

typedef struct {
    UnkStruct_02095C48 * unk_00;
    int unk_04;
} UnkStruct_020933F8;

static UnkStruct_02095C48 * sub_020937C4(void);
static void sub_020937F8(UnkStruct_02095C48 * param0);
static void sub_02094E7C(UnkStruct_02095C48 * param0);
u16 sub_02094E98(UnkStruct_02095C48 * param0);
BOOL sub_020943B0(UnkStruct_02095C48 * param0);
BOOL sub_020944CC(UnkStruct_02095C48 * param0);
BOOL sub_020944D4(UnkStruct_02095C48 * param0);
static void sub_02093C6C(SysTask * param0, void * param1);
UnkStruct_02095C48 * sub_02093800(const UnkStruct_02093800 * param0);
void sub_02093AD4(UnkStruct_02095C48 * param0);
void sub_02094630(UnkStruct_02095C48 * param0, int param1, UnkStruct_0200B358 * param2, u32 param3);
void sub_02094648(UnkStruct_02095C48 * param0, int param1, UnkStruct_0200B358 * param2, u32 param3);
void sub_02094680(UnkStruct_02095C48 * param0, int param1, UnkStruct_0200B358 * param2, u32 param3);
static BOOL sub_02093448(UnkStruct_020508D4 * param0);
static BOOL sub_020935EC(UnkStruct_020508D4 * param0);
void sub_02093BBC(UnkStruct_02095C48 * param0);
void sub_02093C54(UnkStruct_02095C48 * param0);
static void sub_020944E8(UnkStruct_02095C48 * param0);
static void sub_0209451C(SysTask * param0, void * param1);
static void sub_02094EB4(UnkStruct_02095C48 * param0, int param1, UnkStruct_ov6_02248DD8 * param2);
static void sub_02094B30(SysTask * param0, void * param1);
static int sub_02093B2C(Pokemon * param0, int param1);
static void sub_020939E0(UnkStruct_02095C48 * param0, int param1, int param2);


const UnkStruct_0208BE5C Unk_020F560C = {
    ov17_0223B140,
    ov17_0223B444,
    ov17_0223B580,
    FS_OVERLAY_ID(overlay17)
};

const UnkStruct_0208BE5C Unk_020F561C = {
    ov17_0223DAD0,
    ov17_0223DDD4,
    ov17_0223DF0C,
    FS_OVERLAY_ID(overlay17)
};

const UnkStruct_0208BE5C Unk_020F55EC = {
    ov17_0223CB1C,
    ov17_0223CDDC,
    ov17_0223CF8C,
    FS_OVERLAY_ID(overlay17)
};

const UnkStruct_0208BE5C Unk_020F55DC = {
    ov17_0224F4D4,
    ov17_0224F754,
    ov17_0224F86C,
    FS_OVERLAY_ID(overlay17)
};

const UnkStruct_0208BE5C Unk_020F55FC = {
    ov22_02256174,
    ov22_022562EC,
    ov22_02256600,
    FS_OVERLAY_ID(overlay22)
};

__attribute__((aligned(4))) static const u8 Unk_020F55B4[][3] = {
    {0x14, 0x14, 0xFF},
    {0xF, 0x19, 0xFF}
};

__attribute__((aligned(4))) static const u8 Unk_020F55BC[][4] = {
    {0xA, 0xA, 0x1E, 0xFF},
    {0xF, 0xF, 0xF, 0xFF}
};

__attribute__((aligned(4))) static const u8 Unk_020F55C4[][5] = {
    {0xA, 0x8, 0x14, 0x1C, 0xFF},
    {0xF, 0xF, 0x8, 0x8, 0xFF}
};

__attribute__((aligned(4))) static const u8 Unk_020F55D0[][6] = {
    {0x8, 0x8, 0x8, 0x8, 0x1E, 0xFF},
    {0xF, 0xF, 0x8, 0x8, 0x14, 0xFF}
};

void sub_020933F8 (UnkStruct_020508D4 * param0, UnkStruct_02095C48 * param1)
{
    UnkStruct_020933F8 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_020933F8));

    MI_CpuClear8(v0, sizeof(UnkStruct_020933F8));
    v0->unk_00 = param1;

    switch (param1->unk_00.unk_111) {
    case 0:
    case 1:
    case 2:
        sub_02050944(param0, sub_02093448, v0);
        break;
    default:
        sub_02050944(param0, sub_020935EC, v0);
        break;
    }
}

static BOOL sub_02093448 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020933F8 * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        sub_02055820(param0);
        v1->unk_04++;
        break;
    case 1:
        if ((v1->unk_00->unk_155 == 0) || (sub_020944D4(v1->unk_00) == 1)) {
            v1->unk_04++;
        }
        break;
    case 2:
        if (v1->unk_00->unk_155 == 1) {
            sub_020364F0(0);
        }

        v1->unk_04++;
        break;
    case 3:
        if (v1->unk_00->unk_155 == 1) {
            if (sub_02036540(0) == 1) {
                v1->unk_04++;
            }
        } else {
            v1->unk_04++;
        }
        break;
    case 4:
        sub_02093BBC(v1->unk_00);
        sub_02050A38(param0, &Unk_020F55FC, v1->unk_00->unk_199C);
        v1->unk_04++;
        break;
    case 5:
        sub_02093C54(v1->unk_00);

        if (v1->unk_00->unk_155 == 1) {
            sub_020944E8(v1->unk_00);
            v1->unk_04++;
        } else {
            v1->unk_04 = 6;
        }
        break;
    case 6:
        if ((v1->unk_00->unk_155 == 0) || (sub_020944D4(v1->unk_00) == 1)) {
            v1->unk_04++;
        }
        break;
    case 7:
        sub_02050A38(param0, &Unk_020F55EC, v1->unk_00);
        v1->unk_04++;
        break;
    case 8:
        if ((v1->unk_00->unk_00.unk_111 == 1) || (v1->unk_00->unk_00.unk_111 == 2)) {
            sub_02050A38(param0, &Unk_020F561C, v1->unk_00);
        }

        v1->unk_04++;
        break;
    case 9:
        if ((v1->unk_00->unk_00.unk_111 == 0) || (v1->unk_00->unk_00.unk_111 == 2)) {
            sub_02050A38(param0, &Unk_020F560C, v1->unk_00);
        }

        v1->unk_04++;
        break;
    case 10:
        sub_02050A38(param0, &Unk_020F55DC, v1->unk_00);
        v1->unk_04++;
        break;
    case 11:
        v1->unk_04++;
        break;
    case 12:
        sub_02055868(param0);
        v1->unk_04++;
        break;
    default:
        GF_ASSERT(0);
    case 13:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static BOOL sub_020935EC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020933F8 * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        sub_02055820(param0);
        v1->unk_04++;
        break;
    case 1:
        switch (v1->unk_00->unk_00.unk_111) {
        case 3:
        case 4:
            sub_02093BBC(v1->unk_00);
            sub_02050A38(param0, &Unk_020F55FC, v1->unk_00->unk_199C);
            break;
        }

        v1->unk_04++;
        break;
    case 2:
        switch (v1->unk_00->unk_00.unk_111) {
        case 3:
        case 4:
            sub_02093C54(v1->unk_00);
            break;
        }

        v1->unk_04++;
        break;
    case 3:
        v1->unk_04++;
        break;
    case 4:
        switch (v1->unk_00->unk_00.unk_111) {
        case 3:
        case 4:
            sub_02050A38(param0, &Unk_020F55EC, v1->unk_00);
            break;
        }

        v1->unk_04++;
        break;
    case 5:
        switch (v1->unk_00->unk_00.unk_111) {
        case 5:
        case 6:
            sub_02095338(v1->unk_00);
            sub_02050A38(param0, &Unk_020F561C, v1->unk_00);
            break;
        }

        v1->unk_04++;
        break;
    case 6:
        switch (v1->unk_00->unk_00.unk_111) {
        case 7:
        case 8:
            sub_02050A38(param0, &Unk_020F560C, v1->unk_00);
            break;
        }

        v1->unk_04++;
        break;
    case 7:
    {
        s32 v2[4];
        int v3, v4;

        switch (v1->unk_00->unk_00.unk_111) {
        case 3:
        case 4:
            for (v3 = 0; v3 < 4; v3++) {
                v2[v3] = sub_02095928(v1->unk_00, v3)
                         + sub_0209598C(v1->unk_00, v3);
            }
            break;
        case 5:
        case 6:
            for (v3 = 0; v3 < 4; v3++) {
                v2[v3] = v1->unk_00->unk_00.unk_118[v3].unk_04;
            }
            break;
        case 7:
        case 8:
            for (v3 = 0; v3 < 4; v3++) {
                v2[v3] = v1->unk_00->unk_00.unk_118[v3].unk_06;
            }
            break;
        }

        v4 = 0;

        for (v3 = 1; v3 < 4; v3++) {
            if (v2[0] < v2[v3]) {
                v4++;
            }
        }

        v1->unk_00->unk_00.unk_118[0].unk_08 = v4;
    }
        v1->unk_04++;
        break;
    case 8:
        sub_02055868(param0);
        v1->unk_04++;
        break;
    default:
        GF_ASSERT(0);
    case 9:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static UnkStruct_02095C48 * sub_020937C4 (void)
{
    UnkStruct_02095C48 * v0;
    int v1;

    v0 = Heap_AllocFromHeap(20, sizeof(UnkStruct_02095C48));
    MI_CpuClear8(v0, sizeof(UnkStruct_02095C48));

    v0->unk_00.unk_113 = 0;
    v0->unk_00.unk_117 = 1;
    v0->unk_00.unk_116 = 4 - 1;

    return v0;
}

static void sub_020937F8 (UnkStruct_02095C48 * param0)
{
    Heap_FreeToHeap(param0);
}

UnkStruct_02095C48 * sub_02093800 (const UnkStruct_02093800 * param0)
{
    UnkStruct_02095C48 * v0;
    int v1 = 4 - 1;
    int v2;

    Heap_Create(11, 20, (0x3000 + 0x1000));

    v0 = sub_020937C4();
    v0->unk_19A4 = LCRNG_GetSeed();

    sub_02094E7C(v0);

    v0->unk_00.unk_10F = param0->unk_00;
    v0->unk_00.unk_110 = param0->unk_01;
    v0->unk_00.unk_111 = param0->unk_02;
    v0->unk_00.unk_112 = sub_02095A74(param0->unk_01, 0);
    v0->unk_00.unk_10C = v0->unk_00.unk_113;
    v0->unk_00.unk_115 = 110;
    v0->unk_00.unk_10D = v0->unk_00.unk_115;
    v0->unk_00.unk_10E = 1;
    v0->unk_1980 = param0->unk_14;
    v0->unk_196C = param0->unk_18;
    v0->unk_1970 = param0->unk_1C;
    v0->unk_1974 = param0->unk_08;
    v0->unk_197C = param0->unk_05;
    v0->unk_1978 = param0->unk_10;
    v0->unk_197D = param0->unk_03;
    v0->unk_197E = param0->unk_04;

    for (v2 = 0; v2 < 4; v2++) {
        v0->unk_00.unk_E8[v2] = sub_02029C88(20);
    }

    sub_020954F0(v0, 11, v0->unk_00.unk_10E, v0->unk_00.unk_10F, v0->unk_00.unk_110);
    v0->unk_148 = Party_New(20);

    for (v2 = 0; v2 < 4; v2++) {
        v0->unk_00.unk_00[v2] = Pokemon_New(20);
    }

    for (v2 = 0; v2 < 4; v2++) {
        v0->unk_14C[v2] = AllocateAndInitializeChatotCryData(20);
    }

    CopyChatotCryData(v0->unk_14C[0], param0->unk_20);

    {
        Pokemon_Copy(param0->unk_08, v0->unk_00.unk_00[0]);
        v0->unk_00.unk_D8[0] = Strbuf_Init(8, 20);
        Strbuf_Copy(v0->unk_00.unk_D8[0], param0->unk_0C);

        v0->unk_00.unk_F8[0] = TrainerInfo_Gender(param0->unk_10);
        v0->unk_00.unk_FC[0] = 0;
        v0->unk_00.unk_100[0] = sub_02093B2C(v0->unk_00.unk_00[0], v0->unk_00.unk_10F);

        if (sub_0209590C(v0) == 0) {
            if (TrainerInfo_Gender(param0->unk_10) == 0) {
                v0->unk_00.unk_104[0] = 0xba;
            } else {
                v0->unk_00.unk_104[0] = 0xbb;
            }
        } else {
            if (TrainerInfo_Gender(param0->unk_10) == 0) {
                v0->unk_00.unk_104[0] = 0x0;
            } else {
                v0->unk_00.unk_104[0] = 0x61;
            }
        }
    }

    sub_020939E0(v0, param0->unk_03, param0->unk_04);

    if (sub_0209590C(v0) == 1) {
        for (v2 = 0; v2 < 4; v2++) {
            v0->unk_156[v2] = 4 - v2 - 1;
        }
    } else {
        for (v2 = 0; v2 < 4; v2++) {
            v0->unk_156[v2] = v2;
        }
    }

    return v0;
}

static void sub_020939E0 (UnkStruct_02095C48 * param0, int param1, int param2)
{
    int v0 = 4 - 1;
    int v1;

    sub_02094F04(param0, 11, v0, param0->unk_00.unk_10F, param0->unk_00.unk_110, param0->unk_00.unk_111, param1, param2);

    for (v1 = 1; v1 < 4; v1++) {
        sub_02095380(&param0->unk_00.unk_10[v1], param0->unk_00.unk_00[v1], 20);
    }

    for (v1 = 1; v1 < 4; v1++) {
        if (param0->unk_00.unk_D8[v1] == NULL) {
            param0->unk_00.unk_D8[v1] = Strbuf_Init(8, 20);
        }

        Pokemon_GetValue(param0->unk_00.unk_00[v1], MON_DATA_145, param0->unk_00.unk_D8[v1]);
    }

    for (v1 = 1; v1 < 4; v1++) {
        param0->unk_00.unk_F8[v1] = param0->unk_00.unk_10[v1].unk_20_12;
    }

    for (v1 = 1; v1 < 4; v1++) {
        param0->unk_00.unk_FC[v1] = param0->unk_00.unk_10[v1].unk_20_14;
    }

    for (v1 = 1; v1 < 4; v1++) {
        param0->unk_00.unk_100[v1] = param0->unk_00.unk_10[v1].unk_2E;
    }

    for (v1 = 1; v1 < 4; v1++) {
        param0->unk_00.unk_104[v1] = param0->unk_00.unk_10[v1].unk_08;
    }

    sub_020951B0(param0, 11);
}

void sub_02093AD4 (UnkStruct_02095C48 * param0)
{
    int v0;

    Heap_FreeToHeap(param0->unk_148);

    for (v0 = 0; v0 < 4; v0++) {
        Heap_FreeToHeap(param0->unk_00.unk_00[v0]);
        Strbuf_Free(param0->unk_00.unk_D8[v0]);
        Heap_FreeToHeap(param0->unk_00.unk_E8[v0]);
        Heap_FreeToHeap(param0->unk_14C[v0]);
    }

    LCRNG_SetSeed(param0->unk_19A4);
    sub_020937F8(param0);
    Heap_Destroy(20);
}

static int sub_02093B2C (Pokemon * param0, int param1)
{
    int v0, v1, v2;

    v0 = 1;

    for (v1 = 0; v1 <= 3; v1++) {
        switch (param1) {
        case 0:
            v2 = Pokemon_GetValue(param0, MON_DATA_123 + v1, NULL);
            break;
        case 1:
            v2 = Pokemon_GetValue(param0, MON_DATA_127 + v1, NULL);
            break;
        case 2:
            v2 = Pokemon_GetValue(param0, MON_DATA_131 + v1, NULL);
            break;
        case 3:
            v2 = Pokemon_GetValue(param0, MON_DATA_135 + v1, NULL);
            break;
        case 4:
            v2 = Pokemon_GetValue(param0, MON_DATA_139 + v1, NULL);
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        if (v2 == 0) {
            break;
        }

        v0++;
    }

    return v0;
}

void sub_02093BBC (UnkStruct_02095C48 * param0)
{
    UnkStruct_02093BBC * v0;

    sub_0202A25C(param0->unk_00.unk_E8[param0->unk_00.unk_113]);

    v0 = Heap_AllocFromHeap(20, sizeof(UnkStruct_02093BBC));
    MI_CpuClear8(v0, sizeof(UnkStruct_02093BBC));

    v0->unk_00 = param0->unk_00.unk_00[param0->unk_00.unk_113];
    v0->unk_04 = param0->unk_00.unk_E8[param0->unk_00.unk_113];
    v0->unk_08 = param0->unk_00.unk_112;

    if (param0->unk_155 == 1) {
        v0->unk_0C = (3 + 1);
    } else {
        v0->unk_0C = param0->unk_00.unk_110;
    }

    v0->unk_10 = param0->unk_00.unk_111;
    v0->unk_14 = param0->unk_00.unk_10F;
    v0->unk_18 = sub_02029D04(param0->unk_1980);
    v0->unk_1C = &param0->unk_1984;
    v0->unk_20 = param0->unk_196C;
    v0->unk_24 = param0->unk_1978;

    param0->unk_199C = v0;
}

void sub_02093C54 (UnkStruct_02095C48 * param0)
{
    Heap_FreeToHeap(param0->unk_199C);
    param0->unk_199C = NULL;
}

static void sub_02093C6C (SysTask * param0, void * param1)
{
    UnkStruct_02095C48 * v0 = param1;

    switch (v0->unk_15A) {
    case 0:
        sub_020364F0(5);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 1:
        if (sub_02036540(5) == 1) {
            v0->unk_15A++;
        }
        break;
    case 2:
        if (ov6_02248A64(v0) == 1) {
            v0->unk_15A++;
        }
        break;
    case 3:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 4:
        sub_020364F0(6);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 5:
        if (sub_02036540(6) == 1) {
            v0->unk_15A++;
        }
        break;
    case 6:
        if (ov6_02248AF0(v0, v0->unk_00.unk_113, v0->unk_00.unk_00[0]) == 1) {
            v0->unk_15A++;
        }
        break;
    case 7:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 8:
        sub_020364F0(7);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 9:
        if (sub_02036540(7) == 1) {
            v0->unk_15A++;
        }
        break;
    case 10:
        if (v0->unk_00.unk_113 == v0->unk_00.unk_10C) {
            if (ov6_02248B70(v0, v0->unk_00.unk_00) == 1) {
                v0->unk_15A++;
            }
        } else {
            v0->unk_15A++;
        }
        break;
    case 11:
        if (v0->unk_568 > 0) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 12:
        sub_020364F0(8);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 13:
        if (sub_02036540(8) == 1) {
            v0->unk_15A++;
        }
        break;
    case 14:
        if (ov6_02248BE8(v0, v0->unk_00.unk_113, &v0->unk_00.unk_10[0]) == 1) {
            v0->unk_15A++;
        }
        break;
    case 15:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 16:
        sub_020364F0(9);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 17:
        if (sub_02036540(9) == 1) {
            v0->unk_15A++;
        }
        break;
    case 18:
        if (v0->unk_00.unk_113 == v0->unk_00.unk_10C) {
            if (ov6_02248BE8(v0, v0->unk_15C, &v0->unk_00.unk_10[v0->unk_15C]) == 1) {
                v0->unk_15A++;
            }
        } else {
            v0->unk_15A++;
        }
        break;
    case 19:
        if (v0->unk_568 > 0) {
            v0->unk_568 = 0;
            v0->unk_15C++;

            if (v0->unk_15C < 4) {
                v0->unk_15A--;
            } else {
                v0->unk_15C = 0;
                v0->unk_15A++;
            }
        }
        break;
    case 20:
        sub_020364F0(10);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 21:
        if (sub_02036540(10) == 1) {
            v0->unk_15A++;
        }
        break;
    case 22:
        if (ov6_02248CE8(v0, v0->unk_00.unk_113, v0->unk_00.unk_D8[0]) == 1) {
            v0->unk_15A++;
        }
        break;
    case 23:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            {
                int v1;
                const TrainerInfo * v2;

                for (v1 = 0; v1 < v0->unk_00.unk_117; v1++) {
                    v2 = sub_02032EE8(v1);
                    Strbuf_Clear(v0->unk_00.unk_D8[v1]);
                    TrainerInfo_NameStrbuf(v2, v0->unk_00.unk_D8[v1]);
                }
            }

            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 24:
        sub_020364F0(11);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 25:
        if (sub_02036540(11) == 1) {
            v0->unk_15A++;
        }
        break;
    case 26:
        if (v0->unk_00.unk_113 == v0->unk_00.unk_10C) {
            if (ov6_02248CE8(v0, v0->unk_15C, v0->unk_00.unk_D8[v0->unk_15C]) == 1) {
                v0->unk_15A++;
            }
        } else {
            v0->unk_15A++;
        }
        break;
    case 27:
        if (v0->unk_568 > 0) {
            v0->unk_568 = 0;
            v0->unk_15C++;

            if (v0->unk_15C < 4) {
                v0->unk_15A--;
            } else {
                v0->unk_15C = 0;
                v0->unk_15A++;
            }
        }
        break;
    case 28:
        MI_CpuCopy8(v0->unk_14C[0], v0->unk_569, ChatotCry_SaveSize());
        sub_020364F0(12);

        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 29:
        if (sub_02036540(12) == 1) {
            v0->unk_15A++;
        }
        break;
    case 30:
        if (ov6_02248D64(v0, v0->unk_00.unk_113, NULL) == 1) {
            v0->unk_15A++;
        }
        break;
    case 31:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 32:
        sub_020364F0(13);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 33:
        if (sub_02036540(13) == 1) {
            v0->unk_15A++;
        }
        break;
    case 34:
        if (v0->unk_00.unk_113 == v0->unk_00.unk_10C) {
            if (ov6_02248D64(v0, v0->unk_15C, v0->unk_14C[v0->unk_15C]) == 1) {
                v0->unk_15A++;
            }
        } else {
            v0->unk_15A++;
        }
        break;
    case 35:
        if (v0->unk_568 > 0) {
            v0->unk_568 = 0;
            v0->unk_15C++;

            if (v0->unk_15C < 4) {
                v0->unk_15A--;
            } else {
                v0->unk_15C = 0;
                v0->unk_15A++;
            }
        }
        break;
    case 36:
        sub_020364F0(14);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 37:
        if (sub_02036540(14) == 1) {
            v0->unk_15A++;
        }
        break;
    case 38:
    {
        UnkStruct_ov6_02248DD8 v3;

        sub_02094EB4(v0, 0, &v3);

        if (ov6_02248DD8(v0, v0->unk_00.unk_113, &v3) == 1) {
            v0->unk_15A++;
        }
    }
    break;
    case 39:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 40:
        sub_020364F0(15);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 41:
        if (sub_02036540(15) == 1) {
            v0->unk_15A++;
        }
        break;
    case 42:
        if (v0->unk_00.unk_113 == v0->unk_00.unk_10C) {
            UnkStruct_ov6_02248DD8 v4;

            sub_02094EB4(v0, v0->unk_15C, &v4);

            if (ov6_02248DD8(v0, v0->unk_15C, &v4) == 1) {
                v0->unk_15A++;
            }
        } else {
            v0->unk_15A++;
        }
        break;
    case 43:
        if (v0->unk_568 > 0) {
            v0->unk_568 = 0;
            v0->unk_15C++;

            if (v0->unk_15C < 4) {
                v0->unk_15A--;
            } else {
                v0->unk_15C = 0;
                v0->unk_15A++;
            }
        }
        break;
    case 44:
        sub_020364F0(16);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 45:
        if (sub_02036540(16) == 1) {
            v0->unk_15A++;
        }
        break;
    case 46:
        if (ov6_02248C68(v0, v0->unk_00.unk_113, v0->unk_00.unk_C0) == 1) {
            v0->unk_15A++;
        }
        break;
    case 47:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    default:
    {
        int v5;
        const TrainerInfo * v6;

        for (v5 = 0; v5 < v0->unk_00.unk_117; v5++) {
            v6 = sub_02032EE8(v5);
            v0->unk_00.unk_F8[v5] = TrainerInfo_Gender(v6);
        }

        for ( ; v5 < 4; v5++) {
            v0->unk_00.unk_F8[v5] = v0->unk_00.unk_10[v5].unk_20_12;
        }
    }

        {
            v0->unk_1984.unk_14 = v0->unk_00.unk_10C;
            v0->unk_1984.unk_15 = v0->unk_00.unk_114;
            v0->unk_1984.unk_16 = 1;
            v0->unk_1984.unk_17 = v0->unk_00.unk_117;
        }

        v0->unk_164 = NULL;
        v0->unk_15A = 0;

        SysTask_Done(param0);
        return;
    }
}

BOOL sub_020943B0 (UnkStruct_02095C48 * param0)
{
    int v0, v1;

    if (sub_02035E38() == 0) {
        return 0;
    }

    param0->unk_155 = 1;

    v0 = sub_02035E18();
    v1 = sub_0203608C();

    {
        int v2;
        TrainerInfo * v3;

        for (v2 = 0; v2 < v0; v2++) {
            v3 = sub_02032EE8(v2);
            GF_ASSERT(v3 != NULL);

            if (TrainerInfo_IsMainStoryCleared(v3) == 0) {
                break;
            }
        }

        if (v2 != v0) {
            param0->unk_197D = 0;
        } else {
            param0->unk_197D = 1;
        }

        for (v2 = 0; v2 < v0; v2++) {
            v3 = sub_02032EE8(v2);
            GF_ASSERT(v3 != NULL);

            if (TrainerInfo_HasNationalDex(v3) == 0) {
                break;
            }
        }

        if (v2 != v0) {
            param0->unk_197E = 0;
        } else {
            param0->unk_197E = 1;
        }

        sub_020939E0(param0, param0->unk_197D, param0->unk_197E);

        for (v2 = 0; v2 < v0; v2++) {
            v3 = sub_02032EE8(v2);

            if (TrainerInfo_GameCode(v3) == 0) {
                param0->unk_15B++;
            }
        }
    }

    param0->unk_00.unk_114 = v1;
    param0->unk_00.unk_116 = 4 - v0;
    param0->unk_00.unk_117 = v0;
    param0->unk_00.unk_113 = v1;
    param0->unk_00.unk_115 = 110;
    param0->unk_00.unk_112 = sub_02095A74(param0->unk_00.unk_110, 1);

    sub_02095AF0(param0);

    param0->unk_164 = SysTask_Start(sub_02093C6C, param0, 10);

    return 1;
}

BOOL sub_020944CC (UnkStruct_02095C48 * param0)
{
    return sub_020944D4(param0);
}

BOOL sub_020944D4 (UnkStruct_02095C48 * param0)
{
    if (param0->unk_164 == NULL) {
        return 1;
    }

    return 0;
}

static void sub_020944E8 (UnkStruct_02095C48 * param0)
{
    GF_ASSERT(param0->unk_164 == NULL);

    param0->unk_15A = 0;
    param0->unk_164 = SysTask_Start(sub_0209451C, param0, 10);
}

static void sub_0209451C (SysTask * param0, void * param1)
{
    UnkStruct_02095C48 * v0 = param1;

    switch (v0->unk_15A) {
    case 0:
        sub_020364F0(17);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 1:
        if (sub_02036540(17) == 1) {
            v0->unk_15A++;
        }
        break;
    case 2:
        if (sub_02095B5C(v0, v0->unk_00.unk_113, v0->unk_00.unk_E8[v0->unk_00.unk_113]) == 1) {
            v0->unk_15A++;
        }
        break;
    case 3:
        if (v0->unk_568 >= v0->unk_00.unk_117) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    case 4:
        sub_020364F0(18);
        v0->unk_568 = 0;
        v0->unk_15A++;
        break;
    case 5:
        if (sub_02036540(18) == 1) {
            v0->unk_15A++;
        }
        break;
    case 6:
        if (v0->unk_00.unk_113 == v0->unk_00.unk_10C) {
            if (sub_02095BEC(v0, v0->unk_00.unk_E8) == 1) {
                v0->unk_15A++;
            }
        } else {
            v0->unk_15A++;
        }
        break;
    case 7:
        if (v0->unk_568 > 0) {
            v0->unk_568 = 0;
            v0->unk_15A++;
        }
        break;
    default:
        v0->unk_164 = NULL;
        v0->unk_15A = 0;
        SysTask_Done(param0);
        return;
    }
}

void sub_02094630 (UnkStruct_02095C48 * param0, int param1, UnkStruct_0200B358 * param2, u32 param3)
{
    sub_0200BB74(param2, param3, param0->unk_00.unk_C0[param1].unk_00);
}

void sub_02094648 (UnkStruct_02095C48 * param0, int param1, UnkStruct_0200B358 * param2, u32 param3)
{
    int v0, v1;

    v1 = sub_02095904(param1);
    sub_0200B48C(param2, param3, param0->unk_00.unk_D8[v1], param0->unk_00.unk_F8[v1], 1, GAME_LANGUAGE);
}

void sub_02094680 (UnkStruct_02095C48 * param0, int param1, UnkStruct_0200B358 * param2, u32 param3)
{
    BoxPokemon * v0;
    int v1;

    v1 = sub_02095904(param1);
    v0 = Pokemon_GetBoxPokemon(param0->unk_00.unk_00[v1]);

    sub_0200B5CC(param2, param3, v0);
}

void sub_020946A4 (UnkStruct_02095C48 * param0, UnkStruct_0200B358 * param1, u32 param2)
{
    u32 v0;

    v0 = sub_02095848(param0->unk_00.unk_110, param0->unk_00.unk_111, param0->unk_155);
    sub_0200BBA8(param1, param2, v0);
}

void sub_020946CC (UnkStruct_02095C48 * param0, UnkStruct_0200B358 * param1, u32 param2)
{
    u32 v0;

    v0 = sub_020958C4(param0->unk_00.unk_10F, param0->unk_00.unk_111);
    sub_0200BBDC(param1, param2, v0);
}

void sub_020946F0 (UnkStruct_02095C48 * param0, UnkStruct_0200B358 * param1, u32 param2)
{
    int v0, v1;
    int v2;

    for (v2 = 0; v2 < 4; v2++) {
        if (param0->unk_00.unk_118[v2].unk_08 == 0) {
            break;
        }
    }

    v0 = v2;
    v1 = sub_020958FC(v0);

    sub_02094648(param0, v1, param1, param2);
}

void sub_02094720 (UnkStruct_02095C48 * param0, UnkStruct_0200B358 * param1, u32 param2)
{
    int v0, v1;
    int v2;

    for (v2 = 0; v2 < 4; v2++) {
        if (param0->unk_00.unk_118[v2].unk_08 == 0) {
            break;
        }
    }

    v0 = v2;
    v1 = sub_020958FC(v0);

    sub_02094680(param0, v1, param1, param2);
}

u32 sub_02094750 (UnkStruct_02095C48 * param0)
{
    return 1;
}

void sub_02094754 (UnkStruct_02095C48 * param0, u8 param1)
{
    if (param0->unk_155 == 0) {
        return;
    }

    sub_020364F0(param1);
}

BOOL sub_0209476C (UnkStruct_02095C48 * param0, u8 param1)
{
    if (param0->unk_155 == 0) {
        return 1;
    }

    if (sub_02036540(param1) == 1) {
        return 1;
    }

    return 0;
}

int sub_02094790 (UnkStruct_02095C48 * param0)
{
    return param0->unk_00.unk_118[param0->unk_00.unk_113].unk_08;
}

int sub_020947A4 (UnkStruct_02095C48 * param0)
{
    int v0;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_00.unk_118[v1].unk_08 == 0) {
            return sub_020958FC(v1);
        }
    }

    return 0;
}

int sub_020947C8 (UnkStruct_02095C48 * param0)
{
    return sub_020958FC(param0->unk_00.unk_113);
}

int sub_020947D8 (UnkStruct_02095C48 * param0, int param1)
{
    int v0;
    int v1;

    {
        int v2;

        for (v2 = 0; v2 < 4; v2++) {
            (void)0;
        }
    }

    v0 = sub_02095904(param1);
    v1 = param0->unk_00.unk_104[v0];

    return v1;
}

int sub_020947F0 (UnkStruct_02095C48 * param0, int param1)
{
    int v0;

    v0 = sub_02095904(param1);
    return param0->unk_00.unk_100[v0];
}

int sub_02094804 (UnkStruct_02095C48 * param0)
{
    if (param0->unk_155 == 1) {
        return 1;
    }

    if (sub_0209590C(param0) == 1) {
        return 2;
    }

    return 0;
}

void sub_02094828 (UnkStruct_02095C48 * param0, u16 * param1, u16 * param2, u16 * param3, u16 * param4)
{
    *param1 = param0->unk_00.unk_110;
    *param2 = param0->unk_00.unk_10F;
    *param3 = param0->unk_00.unk_111;
    *param4 = param0->unk_197C;
}

void sub_02094850 (UnkStruct_02095C48 * param0)
{
    sub_020959F4(param0->unk_155);
}

void sub_02094860 (UnkStruct_02095C48 * param0)
{
    sub_02095A24();
}

BOOL sub_02094868 (UnkStruct_02095C48 * param0)
{
    u32 v0;

    v0 = sub_02095A3C(param0->unk_00.unk_110, param0->unk_00.unk_10F);

    if (Pokemon_GetValue(param0->unk_1974, v0, NULL) == 0) {
        return 0;
    }

    return 1;
}

void sub_02094898 (UnkStruct_02095C48 * param0, UnkStruct_0200B358 * param1, u32 param2, int param3)
{
    u32 v0, v1;

    switch (param0->unk_00.unk_10F) {
    case 0:
        v0 = 33 + param0->unk_00.unk_110;
        break;
    case 1:
        v0 = 37 + param0->unk_00.unk_110;
        break;
    case 2:
        v0 = 41 + param0->unk_00.unk_110;
        break;
    case 3:
        v0 = 45 + param0->unk_00.unk_110;
        break;
    case 4:
        v0 = 49 + param0->unk_00.unk_110;
        break;
    default:
        GF_ASSERT(0);
        return;
    }

    v1 = sub_020923C0(v0, 3);
    sub_0200B668(param1, param2, v1);
}

u32 sub_02094904 (UnkStruct_02095C48 * param0)
{
    u32 v0 = 100;

    if (param0->unk_00.unk_118[param0->unk_00.unk_113].unk_08 > 0) {
        return 0xffff;
    }

    switch (param0->unk_00.unk_10F) {
    case 0:
        switch (param0->unk_00.unk_110) {
        case 0:
            v0 = 73;
            break;
        case 1:
            v0 = 78;
            break;
        case 2:
            v0 = 83;
            break;
        case 3:
            v0 = 88;
            break;
        }
        break;
    case 1:
        switch (param0->unk_00.unk_110) {
        case 0:
            v0 = 74;
            break;
        case 1:
            v0 = 79;
            break;
        case 2:
            v0 = 84;
            break;
        case 3:
            v0 = 89;
            break;
        }
        break;
    case 2:
        switch (param0->unk_00.unk_110) {
        case 0:
            v0 = 72;
            break;
        case 1:
            v0 = 77;
            break;
        case 2:
            v0 = 82;
            break;
        case 3:
            v0 = 87;
            break;
        }
        break;
    case 3:
        switch (param0->unk_00.unk_110) {
        case 0:
            v0 = 76;
            break;
        case 1:
            v0 = 81;
            break;
        case 2:
            v0 = 86;
            break;
        case 3:
            v0 = 91;
            break;
        }
        break;
    case 4:
        switch (param0->unk_00.unk_110) {
        case 0:
            v0 = 75;
            break;
        case 1:
            v0 = 80;
            break;
        case 2:
            v0 = 85;
            break;
        case 3:
            v0 = 90;
            break;
        }
        break;
    }

    GF_ASSERT(v0 != 100);

    {
        UnkStruct_0202A750 * v1;
        UnkStruct_02029D04 * v2;

        v1 = sub_0202A750(param0->unk_1970);
        v2 = sub_02029D04(v1);

        if (sub_02029D50(v2, v0, 1) == 0) {
            return 0xffff;
        }
    }

    return v0;
}

void sub_02094A58 (UnkStruct_02095C48 * param0, int param1)
{
    UnkStruct_02094A58 * v0;

    GF_ASSERT(param0->unk_19A0 == NULL);

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_02094A58));
    MI_CpuClear8(v0, sizeof(UnkStruct_02094A58));
    v0->unk_0C = sub_02095904(param1);

    {
        int v1;

        v1 = param0->unk_00.unk_FC[v0->unk_0C] & 1;

        if (param0->unk_155 == 1) {
            v0->unk_04 = Unk_020F55D0[v1];
        } else {
            switch (param0->unk_00.unk_110) {
            case 0:
                v0->unk_04 = Unk_020F55B4[v1];
                break;
            case 1:
                v0->unk_04 = Unk_020F55BC[v1];
                break;
            case 2:
                v0->unk_04 = Unk_020F55C4[v1];
                break;
            case 3:
            default:
                v0->unk_04 = Unk_020F55D0[v1];
                break;
            }
        }
    }

    v0->unk_00 = SysTask_Start(sub_02094B30, param0, 100);
    param0->unk_19A0 = v0;
}

BOOL sub_02094B1C (UnkStruct_02095C48 * param0)
{
    if (param0->unk_19A0 == NULL) {
        return 1;
    }

    return 0;
}

static void sub_02094B30 (SysTask * param0, void * param1)
{
    UnkStruct_02095C48 * v0 = param1;
    UnkStruct_02094A58 * v1 = v0->unk_19A0;

    if (sub_0200AC1C(1) == 0) {
        return;
    }

    switch (v1->unk_0B) {
    case 0:
        v1->unk_08++;

        if (v1->unk_08 > v1->unk_04[v1->unk_0A]) {
            sub_0200AAE0(6, 0, 4, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
            Sound_PlayEffect(1528);
            v1->unk_0A++;
            v1->unk_08 = 0;

            if (v1->unk_04[v1->unk_0A] == 0xff) {
                v1->unk_0B++;
            }
        }
        break;
    default:
        Heap_FreeToHeap(v0->unk_19A0);
        v0->unk_19A0 = NULL;
        SysTask_Done(param0);
        return;
    }
}

void sub_02094BB4 (UnkStruct_02095C48 * param0, int * param1, int * param2, int * param3, int * param4, int * param5)
{
    int v0;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_00.unk_118[v1].unk_08 == 0) {
            break;
        }
    }

    v0 = v1;

    *param1 = sub_020958FC(v0);
    *param2 = param0->unk_155;

    if (v0 >= param0->unk_00.unk_117) {
        *param3 = 1;
    } else {
        *param3 = 0;
    }

    *param4 = 0;
    *param5 = 0;

    switch (param0->unk_00.unk_111) {
    case 3:
    case 5:
    case 7:
        *param4 = 1;
        break;
    case 4:
    case 6:
    case 8:
        *param5 = 1;
        break;
    }
}

void sub_02094C44 (UnkStruct_02095C48 * param0, SaveData * param1, u32 param2, UnkStruct_0202B628 * param3)
{
    int v0;

    v0 = 0;

    switch (param0->unk_00.unk_111) {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        return;
    }

    if (param0->unk_155 == 0) {
        {
            UnkStruct_020507E4 * v1;

            v1 = sub_020507E4(param0->unk_1970);

            if ((param0->unk_00.unk_111 == 2) && (param0->unk_00.unk_110 >= 3) && (sub_02094790(param0) == 0)) {
                if (sub_0206AAA8(v1, param0->unk_00.unk_10F) == 0) {
                    sub_0206AA50(v1, param0->unk_00.unk_10F);
                }
            }
        }

        if (sub_02094790(param0) == 0) {
            int v2;
            u8 v3 = 1;

            v2 = sub_02095A3C(param0->unk_00.unk_110, param0->unk_00.unk_10F);

            if (Pokemon_GetValue(param0->unk_1974, v2, NULL) == 0) {
                v0 = 1;
            }

            Pokemon_SetValue(param0->unk_1974, v2, &v3);
            sub_0206DDB8(param0->unk_1970, param0->unk_1974, v2);
        }

        {
            TVBroadcast * v4;

            v4 = SaveData_TVBroadcast(param0->unk_1970);
            sub_0206CF14(v4, param0->unk_1974, param0->unk_00.unk_10F, param0->unk_00.unk_110, param0->unk_00.unk_118[param0->unk_00.unk_113].unk_08 + 1);
        }

        {
            UnkStruct_0202CD88 * v5;

            v5 = sub_0202CD88(param0->unk_1970);
            sub_0202CF28(v5, (((70 + 1)) + 19));

            if (sub_02094790(param0) == 0) {
                sub_0202CF28(v5, (((70 + 1)) + 21));
                sub_0202CFEC(v5, 13);
            }

            if (v0 == 1) {
                sub_0202CF28(v5, (((70 + 1)) + 23));
            }
        }

        {
            int v6;
            UnkStruct_02026324 * v7;

            v7 = sub_02027560(param0->unk_1970);

            for (v6 = param0->unk_00.unk_117; v6 < 4; v6++) {
                sub_020272A4(v7, param0->unk_00.unk_00[v6]);
            }
        }
    } else {
        sub_0202F134(param0->unk_1970, param0->unk_00.unk_10F, param0->unk_00.unk_118[param0->unk_00.unk_113].unk_08);

        {
            UnkStruct_0202CD88 * v8;

            v8 = sub_0202CD88(param0->unk_1970);
            sub_0202CF28(v8, (((70 + 1)) + 20));

            if (sub_02094790(param0) == 0) {
                sub_0202CF28(v8, (((70 + 1)) + 22));
                sub_0202CFEC(v8, 19);
            }
        }

        {
            void * v9;
            UnkStruct_0202B628 * v10;

            v9 = sub_0202C1C0(param0->unk_00.unk_118[param0->unk_00.unk_113].unk_08 + 1, 11);
            v10 = sub_0202B628(param0->unk_1970);

            sub_0202B758(param3, v9, 4);
        }
    }

    if (sub_02094790(param0) == 0) {
        UnkStruct_0202A750 * v11;
        UnkStruct_02029C88 * v12;

        v11 = sub_0202A750(param0->unk_1970);
        v12 = sub_02029CD0(v11, param0->unk_00.unk_10F);

        sub_0202A25C(v12);
        sub_0202A390(v12, param0->unk_00.unk_E8[param0->unk_00.unk_113]);
        sub_0202A240(v12);
    }

    if (sub_02094790(param0) == 0) {
        Pokemon_UpdateFriendship(param0->unk_1974, 9, param2);
    }
}

static void sub_02094E7C (UnkStruct_02095C48 * param0)
{
    LCRNG_SetSeed((sub_020138C8() * (LCRNG_GetSeed() + 10)) & 0xffff);
}

u16 sub_02094E98 (UnkStruct_02095C48 * param0)
{
    return LCRNG_Next();
}

u16 sub_02094EA0 (u32 param0, u32 * param1)
{
    u32 v0;

    v0 = ARNG_Next(param0);
    *param1 = v0;

    return v0 / 65536L;
}

static void sub_02094EB4 (UnkStruct_02095C48 * param0, int param1, UnkStruct_ov6_02248DD8 * param2)
{
    param2->unk_00 = param0->unk_00.unk_F8[param1];
    param2->unk_01 = param0->unk_00.unk_FC[param1];
    param2->unk_02 = param0->unk_00.unk_100[param1];
    param2->unk_04 = param0->unk_00.unk_104[param1];
}

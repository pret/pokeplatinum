#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0200B358_decl.h"
#include "string/strbuf.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_02056B24_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "string/strbuf.h"
#include "unk_0202440C.h"
#include "unk_020298BC.h"
#include "unk_0202CD50.h"
#include "unk_0202E2CC.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_02048DD8.h"
#include "unk_02054884.h"
#include "unk_02056720.h"
#include "unk_0206CCB0.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "overlay006/ov6_022465FC.h"
#include "overlay006/ov6_02246A30.h"
#include "overlay025/ov25_02253CE0.h"

typedef void (* UnkFuncPtr_020EBB48)(UnkStruct_0203CDB0 *, u16);
typedef void (* UnkFuncPtr_020EBB48_1)(UnkStruct_0203CDB0 *, UnkStruct_0200B358 *);
typedef BOOL (* UnkFuncPtr_020EBB48_2)(UnkStruct_0203CDB0 *);

typedef struct {
    UnkFuncPtr_020EBB48 unk_00;
    UnkFuncPtr_020EBB48_1 unk_04;
    UnkFuncPtr_020EBB48_2 unk_08;
    u32 unk_0C;
} UnkStruct_020EBB48;

static int sub_020491D0(int param0, UnkStruct_0203CDB0 * param1, UnkStruct_0200B358 * param2);
static void sub_020491B8(UnkStruct_0203CDB0 * param0, int param1, u16 param2, u16 param3);
static BOOL sub_020491F4(UnkStruct_0203CDB0 * param0, int param1);
BOOL sub_020493C8(UnkStruct_0203E724 * param0);
BOOL sub_020493F4(UnkStruct_0203E724 * param0);

BOOL sub_02048DD8 (UnkStruct_0203E724 * param0)
{
    switch (sub_0203E838(param0)) {
    case 0:
    {
        u16 * v0 = inline_0204FCAC(param0);

        *v0 = ov6_0224660C(param0->unk_34);
    }
    break;
    case 1:
    {
        u16 v1 = sub_0203E838(param0);
        u16 * v2 = inline_0204FCAC(param0);
        u16 * v3 = inline_0204FCAC(param0);

        *v2 = 622;
        *v3 = ov6_02246978(param0->unk_34, v1);
    }
    break;
    case 3:
    {
        UnkStruct_0200B358 ** v4 = sub_0203F098(param0->unk_34, 15);
        u16 v5 = inline_02049538(param0);
        u16 * v6 = inline_0204FCAC(param0);
        u16 * v7 = inline_0204FCAC(param0);

        ov6_022469E0(param0->unk_34, *v4, v5, v6, v7);
    }
    break;
    case 2:
        ov6_022465FC(param0->unk_34);
        break;
    case 4:
    {
        u16 * v8 = inline_0204FCAC(param0);
        u16 * v9 = inline_0204FCAC(param0);

        *v8 = 623;
        *v9 = ov6_02246B40(param0->unk_34);
    }
    break;
    case 5:
    {
        u16 v10 = inline_02049538(param0);
        u16 v11 = inline_02049538(param0);
        u16 * v12 = inline_0204FCAC(param0);

        *v12 = ov6_022468B0(param0->unk_34, v10, v11);
    }
    break;
    case 6:
    {
        u16 * v13 = inline_0204FCAC(param0);
        *v13 = ov6_02246920(param0->unk_34);
    }
    break;
    }

    return 0;
}

BOOL sub_02048F74 (UnkStruct_0203E724 * param0)
{
    sub_0206D4AC(param0->unk_34, inline_02049538(param0));
    return 0;
}

BOOL sub_02048F98 (UnkStruct_0203E724 * param0)
{
    Party * v0 = Party_GetFromSavedata(param0->unk_34->unk_0C);
    UnkStruct_02073C74 * v1 = Party_GetPokemonBySlotIndex(v0, inline_02049538(param0));

    sub_0206D60C(param0->unk_34, v1);
    return 0;
}

BOOL sub_02048FD0 (UnkStruct_0203E724 * param0)
{
    sub_0206D7C4(param0->unk_34);
    return 0;
}

BOOL sub_02048FE0 (UnkStruct_0203E724 * param0)
{
    sub_0206DB20(param0->unk_34);
    return 0;
}

BOOL sub_02048FF0 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_0206DB5C(param0->unk_34, v0);
    return 0;
}

static const UnkStruct_020EBB48 Unk_020EBB48[19];

BOOL sub_02049018 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0200B358 ** v0;

    v0 = sub_0203F098(param0->unk_34, 15);

    switch (sub_0203E838(param0)) {
    case 0:
    {
        int v1;
        u16 * v2;
        u16 * v3;

        v1 = inline_02049538(param0);
        v2 = inline_0204FCAC(param0);
        v3 = inline_0204FCAC(param0);
        *v2 = 621;
        *v3 = sub_020491D0(v1, param0->unk_34, *v0);
    }
    break;
    case 1:
    {
        u16 v4;
        u16 v5, v6;
        UnkStruct_0202CD88 * v7 = sub_0202CD88(param0->unk_34->unk_0C);

        v4 = inline_02049538(param0);
        v5 = inline_02049538(param0);
        v6 = inline_02049538(param0);

        sub_020491B8(param0->unk_34, v4, v5, v6);
        sub_0202CFEC(v7, 3);
    }
    break;
    }

    return 0;
}

BOOL sub_020490F0 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    u16 * v1;

    v0 = inline_02049538(param0);
    v1 = inline_0204FCAC(param0);
    *v1 = sub_020491F4(param0->unk_34, v0);

    return 0;
}

BOOL sub_0204912C (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202440C * v0 = sub_0202440C(param0->unk_34->unk_0C);

    switch (sub_0203E838(param0)) {
    case 0:
    {
        Party * v1 = Party_GetFromSavedata(param0->unk_34->unk_0C);
        UnkStruct_02073C74 * v2 = Party_GetPokemonBySlotIndex(v1, inline_02049538(param0));

        sub_0206CF48(v0, v2, 4);
    }
    break;
    case 1:
        sub_0206CFB4(v0, inline_02049538(param0));
        break;
    case 2:
        sub_0206CF9C(v0, inline_02049538(param0));
        break;
    }

    return 0;
}

static void sub_020491B8 (UnkStruct_0203CDB0 * param0, int param1, u16 param2, u16 param3)
{
    UnkFuncPtr_020EBB48 v0;

    v0 = Unk_020EBB48[param1 - 1].unk_00;

    if (v0 != NULL) {
        v0(param0, param2);
    }
}

static int sub_020491D0 (int param0, UnkStruct_0203CDB0 * param1, UnkStruct_0200B358 * param2)
{
    UnkFuncPtr_020EBB48_1 v0;

    v0 = Unk_020EBB48[param0 - 1].unk_04;

    if (v0 != NULL) {
        v0(param1, param2);
    }

    return Unk_020EBB48[param0 - 1].unk_0C;
}

static BOOL sub_020491F4 (UnkStruct_0203CDB0 * param0, int param1)
{
    UnkFuncPtr_020EBB48_2 v0;
    UnkStruct_0202440C * v1 = sub_0202440C(param0->unk_0C);

    if (sub_0202E6B0(v1, 1, param1) == 0) {
        return 0;
    }

    v0 = Unk_020EBB48[param1 - 1].unk_08;

    if (v0 == NULL) {
        return 1;
    }

    return v0(param0);
}

static void sub_0204922C (UnkStruct_0200B358 * param0, int param1, const u16 * param2, int param3, int param4, int param5)
{
    Strbuf * v0 = PLString_Init(64, 4);

    PLString_FillWithChars(v0, param2);
    sub_0200B48C(param0, param1, v0, param3, param5, param4);
    PLString_Free(v0);
}

static void sub_02049268 (UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1)
{
    Party * v0 = Party_GetFromSavedata(param0->unk_0C);
    UnkStruct_02073C74 * v1 = sub_02054A74(v0);

    sub_0200B538(param1, 0, sub_02076B10(v1));
}

static void sub_02049288 (UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1)
{
    int v0;

    v0 = ov25_02253DD8(param0->unk_04->unk_14);
    sub_0200B928(param1, 0, v0);
}

static void sub_020492A0 (UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1)
{
    u16 v0[10 + 1];
    UnkStruct_0202440C * v1 = sub_0202440C(param0->unk_0C);
    UnkStruct_0202E7E4 * v2 = sub_0202E7E4(v1);

    sub_0200B274(v2->unk_02, 4, v0);
    sub_0204922C(param1, 0, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_020492D4 (UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1)
{
    u16 v0[10 + 1];
    UnkStruct_0202440C * v1 = sub_0202440C(param0->unk_0C);
    UnkStruct_0202E810 * v2 = sub_0202E810(v1);

    sub_0200B274(v2->unk_02, 4, v0);
    sub_0204922C(param1, 0, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_02049308 (UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1)
{
    Strbuf * v0;
    UnkStruct_0202440C * v1 = sub_0202440C(param0->unk_0C);
    UnkStruct_0202E81C * v2 = sub_0202E81C(v1);

    v0 = PLString_Init(64, 4);

    PLString_FillWithChars(v0, v2->unk_06);
    sub_0200B48C(param1, 0, v0, v2->unk_02, 1, GAME_LANGUAGE);
    PLString_Free(v0);
}

static BOOL sub_02049348 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202E7FC * v0 = sub_0202E7FC(sub_0202440C(param0->unk_0C));
    return v0->unk_00;
}

static BOOL sub_02049358 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02056B24 * v0 = sub_02056B24(param0->unk_0C);
    return sub_020567E0(v0);
}

static BOOL sub_02049368 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202E7D8 * v0 = sub_0202E7D8(sub_0202440C(param0->unk_0C));
    return v0->unk_00;
}

static BOOL sub_02049378 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202A750 * v0 = sub_0202A750(param0->unk_0C);
    return sub_02029D10(v0, 0);
}

static BOOL sub_02049388 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202E7F0 * v0 = sub_0202E7F0(sub_0202440C(param0->unk_0C));
    return v0->unk_00;
}

static BOOL sub_02049398 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202E7E4 * v0 = sub_0202E7E4(sub_0202440C(param0->unk_0C));
    return v0->unk_00;
}

static BOOL sub_020493A8 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202E810 * v0 = sub_0202E810(sub_0202440C(param0->unk_0C));
    return v0->unk_00;
}

static BOOL sub_020493B8 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_0202E81C * v0 = sub_0202E81C(sub_0202440C(param0->unk_0C));
    return v0->unk_00;
}

static const UnkStruct_020EBB48 Unk_020EBB48[19] = {
    {NULL, NULL, NULL, 0x3},
    {sub_0206E0E0, NULL, sub_02049348, 0x4},
    {NULL, NULL, NULL, 0x5},
    {sub_0206E174, sub_02049268, NULL, 0x6},
    {NULL, NULL, NULL, 0x7},
    {sub_0206E264, sub_02049288, sub_02049358, 0x8},
    {sub_0206E2BC, NULL, sub_02049368, 0x9},
    {NULL, NULL, NULL, 0xA},
    {sub_0206E398, NULL, sub_02049378, 0xB},
    {sub_0206E414, NULL, NULL, 0xC},
    {sub_0206E448, NULL, sub_02049388, 0xD},
    {NULL, NULL, NULL, 0xE},
    {sub_0206E4DC, sub_020492A0, sub_02049398, 0xF},
    {sub_0206E5A0, sub_020492D4, sub_020493A8, 0x10},
    {sub_0206E668, NULL, NULL, 0x11},
    {sub_0206E6A8, NULL, NULL, 0x12},
    {sub_0206E6E8, NULL, NULL, 0x13},
    {sub_0206E728, NULL, NULL, 0x14},
    {sub_0206E768, sub_02049308, sub_020493B8, 0x15}
};

BOOL sub_020493C8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202440C * v0;
    UnkStruct_0202E808 * v1;
    u16 * v2 = inline_0204FCAC(param0);

    v0 = sub_0202440C(param0->unk_34->unk_0C);
    v1 = sub_0202E808(v0);
    *v2 = v1->unk_07;

    return 0;
}

BOOL sub_020493F4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202440C * v0;
    UnkStruct_0202E81C * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);
    u16 * v4 = inline_0204FCAC(param0);
    u16 * v5 = inline_0204FCAC(param0);

    v0 = sub_0202440C(param0->unk_34->unk_0C);
    v1 = sub_0202E81C(v0);

    switch (v1->unk_01) {
    case 5:
        *v2 = 25;
        *v3 = 36;
        *v4 = 0;
        *v5 = 0xe;
        break;
    case 4:
        *v2 = 37;
        *v3 = 61;
        *v4 = 1;
        *v5 = 0xf;
        break;
    case 6:
        *v2 = 59;
        *v3 = 61;
        *v4 = 1;
        *v5 = 0xf;
        break;
    case 2:
    case 3:
        *v2 = 72;
        *v3 = 36;
        *v4 = 0;
        *v5 = 0xe;
        break;
    case 1:
    default:
        *v2 = 47;
        *v3 = 21;
        *v4 = 0;
        *v5 = 0xe;
        break;
    }

    return 0;
}

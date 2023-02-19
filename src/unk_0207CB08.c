#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202CA1C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0207CB08.h"
#include "struct_defs/struct_0207CDEC.h"

#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "plstring.h"
#include "unk_02025E08.h"
#include "unk_020298BC.h"
#include "coins.h"
#include "unk_0202C9F4.h"
#include "unk_0202D05C.h"
#include "unk_0207CB08.h"

static u32 sub_0207CBB4(UnkStruct_021C0794 * param0);
static u32 sub_0207CBC0(UnkStruct_021C0794 * param0);
static u32 sub_0207CBE0(UnkStruct_021C0794 * param0);
static u32 sub_0207CBF0(UnkStruct_021C0794 * param0);
static u32 sub_0207CC00(UnkStruct_021C0794 * param0);

UnkStruct_0207CB08 * sub_0207CB08 (u8 param0)
{
    UnkStruct_0207CB08 * v0 = (UnkStruct_0207CB08 *)Heap_AllocFromHeap(param0, sizeof(UnkStruct_0207CB08));
    memset(v0, 0, sizeof(UnkStruct_0207CB08));
    return v0;
}

u32 sub_0207CB20 (void)
{
    return sizeof(UnkStruct_0207CB08);
}

void sub_0207CB24 (UnkStruct_0207CB08 * param0, u8 param1)
{
    param0->unk_65 = param1;
}

void sub_0207CB2C (UnkStruct_0207CB08 * param0, UnkStruct_021C0794 * param1, u8 param2, void * param3)
{
    sub_0207CB24(param0, param2);
    param0->unk_00 = param1;
    param0->unk_6C = param3;
    param0->unk_66 = 0;
}

void sub_0207CB48 (UnkStruct_0207CB08 * param0, UnkStruct_0207CDEC * param1, u8 param2, u8 param3)
{
    param0->unk_04[param3].unk_00 = param1;
    param0->unk_04[param3].unk_08 = param2;
}

void sub_0207CB58 (UnkStruct_0207CB08 * param0)
{
    param0->unk_76_0 = 1;
}

void sub_0207CB6C (UnkStruct_0207CB08 * param0, void * param1)
{
    param0->unk_70 = param1;
}

void sub_0207CB70 (UnkStruct_0207CB08 * param0, u8 param1)
{
    param0->unk_74 = param1;
}

void sub_0207CB78 (UnkStruct_0207CB08 * param0, u16 param1)
{
    param0->unk_76_1 = param1;
}

u16 sub_0207CB94 (UnkStruct_0207CB08 * param0)
{
    return param0->unk_66;
}

u16 sub_0207CB9C (UnkStruct_0207CB08 * param0)
{
    return param0->unk_68;
}

u8 sub_0207CBA4 (UnkStruct_0207CB08 * param0)
{
    return param0->unk_74;
}

u8 sub_0207CBAC (UnkStruct_0207CB08 * param0)
{
    return param0->unk_75;
}

static u32 sub_0207CBB4 (UnkStruct_021C0794 * param0)
{
    return Coins_GetValue(sub_02025E50(param0));
}

static u32 sub_0207CBC0 (UnkStruct_021C0794 * param0)
{
    UnkStruct_0202CA1C * v0;
    u32 v1, v2;

    v0 = sub_0202CA1C(param0);
    v2 = 0;

    for (v1 = 1; v1 <= 80; v1++) {
        v2 += sub_0202CBC8(v0, v1);
    }

    return v2;
}

static u32 sub_0207CBE0 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02029D04 * v0 = sub_02029D04(sub_0202A750(param0));
    return sub_02029DF0(v0);
}

static u32 sub_0207CBF0 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02029D04 * v0 = sub_02029D04(sub_0202A750(param0));
    return sub_02029E0C(v0);
}

static u32 sub_0207CC00 (UnkStruct_021C0794 * param0)
{
    return (u32)sub_0202D230(sub_0202D750(param0), 0, 0);
}

BOOL sub_0207CC10 (UnkStruct_021C0794 * param0, PLString * param1, u16 param2, u32 param3)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_0200B358 * v1;
    PLString * v2;

    v0 = sub_0200B144(0, 26, 7, param3);
    v1 = sub_0200B358(param3);

    if (param2 == 0) {
        v2 = sub_0200B1EC(v0, 99);
    } else if (param2 == 432) {
        v2 = sub_0200B1EC(v0, 97);
        sub_0200B60C(v1, 0, sub_0207CC00(param0), 4, 0, 1);
    } else if (param2 == 434) {
        v2 = sub_0200B1EC(v0, 92);
        sub_0200B60C(v1, 0, sub_0207CBC0(param0), 4, 0, 1);
    } else if (param2 == 435) {
        v2 = sub_0200B1EC(v0, 93);
        sub_0200B60C(v1, 0, sub_0207CBE0(param0), 3, 0, 1);
        sub_0200B60C(v1, 1, sub_0207CBF0(param0), 2, 0, 1);
    } else if (param2 == 444) {
        v2 = sub_0200B1EC(v0, 57);
        sub_0200B60C(v1, 0, sub_0207CBB4(param0), 5, 0, 1);
    } else {
        sub_0200B3F0(v1);
        sub_0200B190(v0);
        return 0;
    }

    sub_0200C388(v1, param1, v2);
    PLString_Free(v2);
    sub_0200B3F0(v1);
    sub_0200B190(v0);

    return 1;
}

void sub_0207CD34 (void * param0, PLString * param1, u16 param2, u32 param3, u32 param4)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_0200B358 * v1;
    PLString * v2;

    switch (param3) {
    case 1:
        v0 = sub_0200B144(1, 26, 7, param4);
        sub_0200B1B8(v0, 56, param1);
        sub_0200B190(v0);
        break;
    case 2:
        v0 = sub_0200B144(1, 26, 7, param4);
        sub_0200B1B8(v0, 111, param1);
        sub_0200B190(v0);
        break;
    case 3:
        v0 = sub_0200B144(1, 26, 7, param4);
        sub_0200B1B8(v0, 112, param1);
        sub_0200B190(v0);
        break;
    default:
        v0 = sub_0200B144(1, 26, 213, param4);
        v1 = sub_0200B358(param4);
        v2 = sub_0200B1EC(v0, 36);
        sub_0200B498(v1, 0, param0);
        sub_0200C388(v1, param1, v2);
        PLString_Free(v2);
        sub_0200B3F0(v1);
        sub_0200B190(v0);
    }
}

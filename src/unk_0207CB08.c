#include "unk_0207CB08.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029D04_decl.h"
#include "struct_decls/struct_0202CA1C_decl.h"
#include "struct_defs/struct_0207CB08.h"

#include "bag.h"
#include "coins.h"
#include "heap.h"
#include "message.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "unk_020298BC.h"
#include "unk_0202C9F4.h"
#include "unk_0202D05C.h"

static u32 sub_0207CBB4(SaveData *param0);
static u32 sub_0207CBC0(SaveData *param0);
static u32 sub_0207CBE0(SaveData *param0);
static u32 sub_0207CBF0(SaveData *param0);
static u32 sub_0207CC00(SaveData *param0);

UnkStruct_0207CB08 *sub_0207CB08(u8 param0)
{
    UnkStruct_0207CB08 *v0 = (UnkStruct_0207CB08 *)Heap_AllocFromHeap(param0, sizeof(UnkStruct_0207CB08));
    memset(v0, 0, sizeof(UnkStruct_0207CB08));
    return v0;
}

u32 sub_0207CB20(void)
{
    return sizeof(UnkStruct_0207CB08);
}

void sub_0207CB24(UnkStruct_0207CB08 *param0, u8 param1)
{
    param0->unk_65 = param1;
}

void sub_0207CB2C(UnkStruct_0207CB08 *param0, SaveData *param1, u8 param2, void *param3)
{
    sub_0207CB24(param0, param2);
    param0->unk_00 = param1;
    param0->unk_6C = param3;
    param0->unk_66 = 0;
}

void sub_0207CB48(UnkStruct_0207CB08 *param0, BagItem *param1, u8 param2, u8 param3)
{
    param0->unk_04[param3].unk_00 = param1;
    param0->unk_04[param3].unk_08 = param2;
}

void sub_0207CB58(UnkStruct_0207CB08 *param0)
{
    param0->unk_76_0 = 1;
}

void sub_0207CB6C(UnkStruct_0207CB08 *param0, void *param1)
{
    param0->unk_70 = param1;
}

void sub_0207CB70(UnkStruct_0207CB08 *param0, u8 param1)
{
    param0->unk_74 = param1;
}

void sub_0207CB78(UnkStruct_0207CB08 *param0, u16 mapLoadType)
{
    param0->mapLoadType = mapLoadType;
}

u16 sub_0207CB94(UnkStruct_0207CB08 *param0)
{
    return param0->unk_66;
}

u16 sub_0207CB9C(UnkStruct_0207CB08 *param0)
{
    return param0->unk_68;
}

u8 sub_0207CBA4(UnkStruct_0207CB08 *param0)
{
    return param0->unk_74;
}

u8 sub_0207CBAC(UnkStruct_0207CB08 *param0)
{
    return param0->unk_75;
}

static u32 sub_0207CBB4(SaveData *param0)
{
    return Coins_GetValue(SaveData_GetCoins(param0));
}

static u32 sub_0207CBC0(SaveData *param0)
{
    UnkStruct_0202CA1C *v0;
    u32 v1, v2;

    v0 = sub_0202CA1C(param0);
    v2 = 0;

    for (v1 = 1; v1 <= 80; v1++) {
        v2 += sub_0202CBC8(v0, v1);
    }

    return v2;
}

static u32 sub_0207CBE0(SaveData *param0)
{
    UnkStruct_02029D04 *v0 = sub_02029D04(sub_0202A750(param0));
    return sub_02029DF0(v0);
}

static u32 sub_0207CBF0(SaveData *param0)
{
    UnkStruct_02029D04 *v0 = sub_02029D04(sub_0202A750(param0));
    return sub_02029E0C(v0);
}

static u32 sub_0207CC00(SaveData *param0)
{
    return (u32)sub_0202D230(sub_0202D750(param0), 0, 0);
}

BOOL sub_0207CC10(SaveData *param0, Strbuf *param1, u16 param2, u32 param3)
{
    MessageLoader *v0;
    StringTemplate *v1;
    Strbuf *v2;

    v0 = MessageLoader_Init(0, 26, 7, param3);
    v1 = StringTemplate_Default(param3);

    if (param2 == 0) {
        v2 = MessageLoader_GetNewStrbuf(v0, 99);
    } else if (param2 == 432) {
        v2 = MessageLoader_GetNewStrbuf(v0, 97);
        StringTemplate_SetNumber(v1, 0, sub_0207CC00(param0), 4, 0, 1);
    } else if (param2 == 434) {
        v2 = MessageLoader_GetNewStrbuf(v0, 92);
        StringTemplate_SetNumber(v1, 0, sub_0207CBC0(param0), 4, 0, 1);
    } else if (param2 == 435) {
        v2 = MessageLoader_GetNewStrbuf(v0, 93);
        StringTemplate_SetNumber(v1, 0, sub_0207CBE0(param0), 3, 0, 1);
        StringTemplate_SetNumber(v1, 1, sub_0207CBF0(param0), 2, 0, 1);
    } else if (param2 == 444) {
        v2 = MessageLoader_GetNewStrbuf(v0, 57);
        StringTemplate_SetNumber(v1, 0, sub_0207CBB4(param0), 5, 0, 1);
    } else {
        StringTemplate_Free(v1);
        MessageLoader_Free(v0);
        return 0;
    }

    StringTemplate_Format(v1, param1, v2);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);

    return 1;
}

void sub_0207CD34(void *param0, Strbuf *param1, u16 param2, u32 param3, u32 param4)
{
    MessageLoader *v0;
    StringTemplate *v1;
    Strbuf *v2;

    switch (param3) {
    case 1:
        v0 = MessageLoader_Init(1, 26, 7, param4);
        MessageLoader_GetStrbuf(v0, 56, param1);
        MessageLoader_Free(v0);
        break;
    case 2:
        v0 = MessageLoader_Init(1, 26, 7, param4);
        MessageLoader_GetStrbuf(v0, 111, param1);
        MessageLoader_Free(v0);
        break;
    case 3:
        v0 = MessageLoader_Init(1, 26, 7, param4);
        MessageLoader_GetStrbuf(v0, 112, param1);
        MessageLoader_Free(v0);
        break;
    default:
        v0 = MessageLoader_Init(1, 26, 213, param4);
        v1 = StringTemplate_Default(param4);
        v2 = MessageLoader_GetNewStrbuf(v0, 36);
        StringTemplate_SetPlayerName(v1, 0, param0);
        StringTemplate_Format(v1, param1, v2);
        Strbuf_Free(v2);
        StringTemplate_Free(v1);
        MessageLoader_Free(v0);
    }
}

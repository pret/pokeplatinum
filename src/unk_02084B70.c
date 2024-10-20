#include "unk_02084B70.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207F248.h"
#include "struct_defs/struct_02081CF4.h"

#include "field/field_system.h"

#include "bag.h"
#include "core_sys.h"
#include "heap.h"
#include "item.h"
#include "map_header.h"
#include "message.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"
#include "unk_02096420.h"

static int sub_02085384(void *param0);
static int sub_02085424(void *param0);
static int sub_020855C4(void *param0);
static int sub_02085704(void *param0);
static int sub_02085A70(void *param0);
static int sub_02085C50(void *param0);
static void sub_02086590(GameWindowLayout *param0, Pokemon *param1, u32 param2);
static int sub_02086438(void *param0);
static int sub_0208648C(void *param0);
static int sub_020864E4(void *param0);
static int sub_02086538(void *param0);
static u16 sub_02086930(GameWindowLayout *param0);
static int sub_02085FB4(void *param0);
static int sub_02086008(void *param0);
static int sub_02086060(void *param0);
static int sub_020860AC(void *param0);

static u8 sub_02084B70(u16 param0)
{
    ItemData *v0;
    s32 v1;

    v0 = Item_Load(param0, 0, 12);

    if (Item_Get(v0, 14) != 1) {
        Heap_FreeToHeap(v0);
        return 28;
    }

    if ((Item_Get(v0, 27) != 0) || (Item_Get(v0, 28) != 0) || (Item_Get(v0, 29) != 0) || (Item_Get(v0, 30) != 0) || (Item_Get(v0, 31) != 0) || (Item_Get(v0, 32) != 0) || (Item_Get(v0, 33) != 0)) {
        Heap_FreeToHeap(v0);
        return 0;
    }

    if (Item_Get(v0, 24) != 0) {
        Heap_FreeToHeap(v0);
        return 1;
    }

    if (Item_Get(v0, 25) != 0) {
        Heap_FreeToHeap(v0);
        return 2;
    }

    v1 = Item_Get(v0, 15);
    v1 += (Item_Get(v0, 16) << 1);
    v1 += (Item_Get(v0, 17) << 2);
    v1 += (Item_Get(v0, 18) << 3);
    v1 += (Item_Get(v0, 19) << 4);
    v1 += (Item_Get(v0, 20) << 5);

    switch (v1) {
    case 0x1:
        Heap_FreeToHeap(v0);
        return 3;
    case 0x2:
        Heap_FreeToHeap(v0);
        return 4;
    case 0x4:
        Heap_FreeToHeap(v0);
        return 5;
    case 0x8:
        Heap_FreeToHeap(v0);
        return 6;
    case 0x10:
        Heap_FreeToHeap(v0);
        return 7;
    case 0x20:
        Heap_FreeToHeap(v0);
        return 8;
    case 0x3f:
        if (Item_Get(v0, 38) != 0) {
            Heap_FreeToHeap(v0);
            return 11;
        } else {
            Heap_FreeToHeap(v0);
            return 9;
        }
    }

    if (Item_Get(v0, 21) != 0) {
        Heap_FreeToHeap(v0);
        return 10;
    }

    if (Item_Get(v0, 38) != 0) {
        Heap_FreeToHeap(v0);
        return 11;
    }

    v1 = Item_Get(v0, 48);

    if (v1 > 0) {
        Heap_FreeToHeap(v0);
        return 12;
    }

    if (v1 < 0) {
        Heap_FreeToHeap(v0);
        return 18;
    }

    v1 = Item_Get(v0, 49);

    if (v1 > 0) {
        Heap_FreeToHeap(v0);
        return 13;
    }

    if (v1 < 0) {
        Heap_FreeToHeap(v0);
        return 19;
    }

    v1 = Item_Get(v0, 50);

    if (v1 > 0) {
        Heap_FreeToHeap(v0);
        return 14;
    }

    if (v1 < 0) {
        Heap_FreeToHeap(v0);
        return 20;
    }

    v1 = Item_Get(v0, 51);

    if (v1 > 0) {
        Heap_FreeToHeap(v0);
        return 15;
    }

    if (v1 < 0) {
        Heap_FreeToHeap(v0);
        return 21;
    }

    v1 = Item_Get(v0, 52);

    if (v1 > 0) {
        Heap_FreeToHeap(v0);
        return 16;
    }

    if (v1 < 0) {
        Heap_FreeToHeap(v0);
        return 22;
    }

    v1 = Item_Get(v0, 53);

    if (v1 > 0) {
        Heap_FreeToHeap(v0);
        return 17;
    }

    if (v1 < 0) {
        Heap_FreeToHeap(v0);
        return 23;
    }

    if (Item_Get(v0, 26) != 0) {
        Heap_FreeToHeap(v0);
        return 24;
    }

    if (Item_Get(v0, 34) != 0) {
        Heap_FreeToHeap(v0);
        return 25;
    }

    if (Item_Get(v0, 35) != 0) {
        Heap_FreeToHeap(v0);
        return 26;
    }

    if ((Item_Get(v0, 36) != 0) || (Item_Get(v0, 37) != 0)) {
        Heap_FreeToHeap(v0);
        return 27;
    }

    Heap_FreeToHeap(v0);
    return 28;
}

static void sub_02084E58(GameWindowLayout *param0, u16 param1, u32 param2)
{
    Pokemon *v0;
    Strbuf *v1;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    StringTemplate_SetNickname(param0->unk_6A0, 0, Pokemon_GetBoxPokemon(v0));

    switch (sub_02084B70(param1)) {
    case 4:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 65);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 3:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 91);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 5:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 67);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 6:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 68);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 7:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 66);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 8:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 73);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 10:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 74);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 9:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 71);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 12:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 75);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 0);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 13:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 75);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 1);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 14:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 75);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 2);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 15:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 75);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 3);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 16:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 75);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 4);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 17:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 75);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 5);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 18:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 110 + param2);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 0);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 19:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 110 + param2);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 1);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 20:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 110 + param2);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 2);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 21:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 110 + param2);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 3);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 22:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 110 + param2);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 4);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 23:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 110 + param2);
        StringTemplate_SetPokemonStatName(param0->unk_6A0, 1, 5);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 25:
    case 26:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 72);
        StringTemplate_SetMoveName(param0->unk_6A0, 0, param2);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        break;
    case 27:
        MessageLoader_GetStrbuf(param0->unk_69C, 69, param0->unk_6A4);
        break;
    default:
        MessageLoader_GetStrbuf(param0->unk_69C, 105, param0->unk_6A4);
    }
}

void sub_020852B8(GameWindowLayout *param0)
{
    switch (sub_02084B70(param0->unk_5A4->unk_24)) {
    case 0:
    case 28:
        break;
    case 1:
        break;
    case 2:
        param0->unk_B00 = sub_02085A70;
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 25:
    case 26:
    case 27:
        param0->unk_B00 = sub_02085384;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
        param0->unk_B00 = sub_02085424;
        break;
    case 11:
        param0->unk_B00 = sub_020855C4;
        break;
    }
}

int sub_02085348(void *param0)
{
    GameWindowLayout *v0 = (GameWindowLayout *)param0;

    if (Text_IsPrinterActive(v0->unk_B10) != 0) {
        return 5;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        v0->unk_5A4->unk_23 = 0;
        return 32;
    }

    return 5;
}

static int sub_02085384(void *param0)
{
    GameWindowLayout *v0 = (GameWindowLayout *)param0;

    sub_02096F14(v0->unk_5A4->unk_00, v0->unk_5A4->unk_24, v0->unk_B11, 0, sub_02086930(v0), 12);
    sub_0207EF14(v0, v0->unk_B11);
    sub_020821F8(v0, v0->unk_B11);
    sub_020822BC(v0, v0->unk_B11);
    sub_02083014(v0, v0->unk_B11, v0->unk_704[v0->unk_B11].unk_0E_0);
    sub_02084E58(v0, v0->unk_5A4->unk_24, 0);
    sub_02082708(v0, 0xffffffff, 1);
    Sound_PlayEffect(1516);

    v0->unk_B00 = sub_02085348;

    return 5;
}

static int sub_02085424(void *param0)
{
    GameWindowLayout *v0;
    Pokemon *v1;
    u8 v2[7];

    v0 = (GameWindowLayout *)param0;
    v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);

    v2[0] = Pokemon_GetValue(v1, MON_DATA_HP_EV, NULL);
    v2[1] = Pokemon_GetValue(v1, MON_DATA_ATK_EV, NULL);
    v2[2] = Pokemon_GetValue(v1, MON_DATA_DEF_EV, NULL);
    v2[3] = Pokemon_GetValue(v1, MON_DATA_SPEED_EV, NULL);
    v2[4] = Pokemon_GetValue(v1, MON_DATA_SPATK_EV, NULL);
    v2[5] = Pokemon_GetValue(v1, MON_DATA_SPDEF_EV, NULL);
    v2[6] = Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL);

    sub_02096F14(v0->unk_5A4->unk_00, v0->unk_5A4->unk_24, v0->unk_B11, 0, sub_02086930(v0), 12);
    sub_0207EF14(v0, v0->unk_B11);
    sub_020821F8(v0, v0->unk_B11);
    sub_020822BC(v0, v0->unk_B11);
    sub_02083014(v0, v0->unk_B11, v0->unk_704[v0->unk_B11].unk_0E_0);

    if ((v2[0] != Pokemon_GetValue(v1, MON_DATA_HP_EV, NULL)) || (v2[1] != Pokemon_GetValue(v1, MON_DATA_ATK_EV, NULL)) || (v2[2] != Pokemon_GetValue(v1, MON_DATA_DEF_EV, NULL)) || (v2[3] != Pokemon_GetValue(v1, MON_DATA_SPEED_EV, NULL)) || (v2[4] != Pokemon_GetValue(v1, MON_DATA_SPATK_EV, NULL)) || (v2[5] != Pokemon_GetValue(v1, MON_DATA_SPDEF_EV, NULL))) {
        if (v2[6] != Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL)) {
            sub_02084E58(v0, v0->unk_5A4->unk_24, 0);
        } else {
            sub_02084E58(v0, v0->unk_5A4->unk_24, 1);
        }
    } else {
        sub_02084E58(v0, v0->unk_5A4->unk_24, 2);
    }

    sub_02082708(v0, 0xffffffff, 1);
    v0->unk_B00 = sub_02085348;

    return 5;
}

static int sub_020855C4(void *param0)
{
    GameWindowLayout *v0;
    Pokemon *v1;
    Strbuf *v2;
    u32 v3;
    u32 v4;

    v0 = (GameWindowLayout *)param0;

    sub_02096F14(v0->unk_5A4->unk_00, v0->unk_5A4->unk_24, v0->unk_B11, 0, sub_02086930(v0), 12);

    v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);
    v3 = Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL);

    if (v0->unk_704[v0->unk_B11].unk_06 == 0) {
        v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 70);
    } else if (v0->unk_704[v0->unk_B11].unk_06 == v3) {
        v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 71);
    } else {
        v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 64);
    }

    StringTemplate_SetNickname(v0->unk_6A0, 0, Pokemon_GetBoxPokemon(v1));
    StringTemplate_SetNumber(v0->unk_6A0, 1, v3 - v0->unk_704[v0->unk_B11].unk_06, 3, 0, 1);
    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v2);
    Strbuf_Free(v2);

    v4 = PokemonSummary_StatusIconAnimIdx(v1);
    sub_02083014(v0, v0->unk_B11, v4);

    if (v4 == 7) {
        v0->unk_704[v0->unk_B11].unk_0E_0 = 7;
        sub_02081FFC(v0, v0->unk_B11);
    }

    sub_0207F8F8(v0, v0->unk_B11);
    v0->unk_B00 = sub_02085704;
    Sound_PlayEffect(1516);

    return 5;
}

static int sub_02085704(void *param0)
{
    GameWindowLayout *v0 = (GameWindowLayout *)param0;
    Pokemon *v1;
    u32 v2;

    v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);
    v2 = Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL);

    if (v0->unk_704[v0->unk_B11].unk_06 != v2) {
        v0->unk_704[v0->unk_B11].unk_06++;
    }

    sub_02082098(v0, v0->unk_B11);
    BGL_FillWindow(&v0->unk_04[3 + v0->unk_B11 * 5], 0);
    sub_02082058(v0, v0->unk_B11);
    sub_02082104(v0, v0->unk_B11);

    if (v0->unk_704[v0->unk_B11].unk_06 == v2) {
        sub_02082708(v0, 0xffffffff, 1);
        v0->unk_B00 = sub_02085348;
    }

    return 5;
}

BOOL sub_020857A8(u16 param0)
{
    if (Item_LoadParam(param0, 24, 12) != 0) {
        return 1;
    }

    return 0;
}

static u8 sub_020857C0(GameWindowLayout *param0, u8 param1)
{
    u8 v0;

    if (param1 >= 6) {
        return 0xff;
    }

    for (v0 = param1; v0 < 6; v0++) {
        if ((param0->unk_704[v0].unk_29 != 0) && (param0->unk_704[v0].unk_06 == 0)) {
            return v0;
        }
    }

    return 0xff;
}

int sub_02085804(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;
    u32 v2;
    u8 v3;

    switch (param0->unk_B0E) {
    case 0:
        param0->unk_B11 = sub_020857C0(param0, 0);

        if (param0->unk_B11 == 0xff) {
            MessageLoader_GetStrbuf(param0->unk_69C, 105, param0->unk_6A4);
            sub_02082708(param0, 0xffffffff, 1);
            param0->unk_B00 = sub_02085348;
            sub_0208327C(param0, 0, 1);
            param0->unk_B11 = 7;

            return 5;
        }

        if (param0->unk_B11 != 0) {
            sub_0207F8F8(param0, 0);
        }
    case 1:

        v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
        ApplyItemEffectsToPokemon(v0, param0->unk_5A4->unk_24, 0, sub_02086930(param0), 12);

        v2 = Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, NULL);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 70);

        StringTemplate_SetNickname(param0->unk_6A0, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);

        param0->unk_704[param0->unk_B11].unk_0E_0 = 7;

        sub_02083014(param0, param0->unk_B11, param0->unk_704[param0->unk_B11].unk_0E_0);
        sub_02081FFC(param0, param0->unk_B11);
        sub_0207F8F8(param0, param0->unk_B11);
        sub_0208327C(param0, param0->unk_B11, 1);
        Sound_PlayEffect(1516);

        param0->unk_B0E++;
        break;
    case 2:
        v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
        v2 = Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, NULL);

        param0->unk_704[param0->unk_B11].unk_06++;

        sub_02082098(param0, param0->unk_B11);
        BGL_FillWindow(&param0->unk_04[3 + param0->unk_B11 * 5], 0);
        sub_02082058(param0, param0->unk_B11);
        sub_02082104(param0, param0->unk_B11);

        if (param0->unk_704[param0->unk_B11].unk_06 == v2) {
            sub_02082708(param0, 0xffffffff, 1);
            param0->unk_B0E++;
        }
        break;
    case 3:
        if (Text_IsPrinterActive(param0->unk_B10) != 0) {
            break;
        }

        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            v3 = param0->unk_B11;
            param0->unk_B11 = sub_020857C0(param0, param0->unk_B11 + 1);

            if (param0->unk_B11 != 0xff) {
                sub_0200E084(&param0->unk_04[34], 0);
                sub_0207F8F8(param0, v3);
                param0->unk_B0E = 1;
            } else {
                Bag_TryRemoveItem(param0->unk_5A4->unk_04, param0->unk_5A4->unk_24, 1, 12);
                param0->unk_5A4->unk_23 = 0;
                param0->unk_B11 = 7;
                return 32;
            }
        }
        break;
    }

    return 7;
}

static int sub_02085A70(void *param0)
{
    GameWindowLayout *v0;
    Pokemon *v1;
    Strbuf *v2;
    u32 v3;
    u32 v4;

    v0 = (GameWindowLayout *)param0;
    v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);

    v0->unk_B14[0] = (u16)Pokemon_GetValue(v1, MON_DATA_MAX_HP, NULL);
    v0->unk_B14[1] = (u16)Pokemon_GetValue(v1, MON_DATA_ATK, NULL);
    v0->unk_B14[2] = (u16)Pokemon_GetValue(v1, MON_DATA_DEF, NULL);
    v0->unk_B14[3] = (u16)Pokemon_GetValue(v1, MON_DATA_SP_ATK, NULL);
    v0->unk_B14[4] = (u16)Pokemon_GetValue(v1, MON_DATA_SP_DEF, NULL);
    v0->unk_B14[5] = (u16)Pokemon_GetValue(v1, MON_DATA_SPEED, NULL);

    sub_02096F14(v0->unk_5A4->unk_00, v0->unk_5A4->unk_24, v0->unk_B11, 0, sub_02086930(v0), 12);

    v0->unk_704[v0->unk_B11].unk_0A = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);
    v0->unk_704[v0->unk_B11].unk_06 = Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL);
    v0->unk_704[v0->unk_B11].unk_08 = Pokemon_GetValue(v1, MON_DATA_MAX_HP, NULL);

    v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 193);

    StringTemplate_SetNickname(v0->unk_6A0, 0, Pokemon_GetBoxPokemon(v1));
    StringTemplate_SetNumber(v0->unk_6A0, 1, v0->unk_704[v0->unk_B11].unk_0A, 3, 0, 1);
    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v2);
    Strbuf_Free(v2);

    v4 = PokemonSummary_StatusIconAnimIdx(v1);
    sub_02083014(v0, v0->unk_B11, v4);

    if (v4 == 7) {
        v0->unk_704[v0->unk_B11].unk_0E_0 = 7;
        sub_02081FFC(v0, v0->unk_B11);
    }

    sub_0207F8F8(v0, v0->unk_B11);

    v0->unk_B00 = sub_02085704;

    sub_020821F8(v0, v0->unk_B11);
    sub_020822BC(v0, v0->unk_B11);
    sub_02082708(v0, 0xffffffff, 1);

    v0->unk_B00 = sub_02085C50;
    v0->unk_B13 = 0;

    return 5;
}

static int sub_02085C50(void *param0)
{
    GameWindowLayout *v0;
    Pokemon *v1;
    Strbuf *v2;

    v0 = param0;

    switch (v0->unk_B13) {
    case 0:
        if (Text_IsPrinterActive(v0->unk_B10) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(1500);
                sub_020829DC(v0);
                v0->unk_B13 = 1;
            }
        }
        break;
    case 1:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            sub_02082B58(v0);
            v0->unk_B13 = 2;
        }
        break;
    case 2:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            sub_02082C10(v0);
            v0->unk_B13 = 3;
            v0->unk_5A4->unk_34 = 0;
        }
        break;
    case 3:
        v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);

        switch (Pokemon_LevelUpMove(v1, &v0->unk_5A4->unk_34, &v0->unk_5A4->unk_26)) {
        case 0x0:
            v0->unk_B13 = 6;
            break;
        case 0xffff:
            StringTemplate_SetNickname(v0->unk_6A0, 0, Pokemon_GetBoxPokemon(v1));
            StringTemplate_SetMoveName(v0->unk_6A0, 1, v0->unk_5A4->unk_26);

            v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 52);

            StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v2);
            Strbuf_Free(v2);
            sub_02082708(v0, 0xffffffff, 0);

            v0->unk_B04.unk_00 = sub_02085FB4;
            v0->unk_B04.unk_04 = sub_02086008;
            v0->unk_B0E = 26;

            return 24;
        case 0xfffe:
            break;
        default:
            StringTemplate_SetNickname(v0->unk_6A0, 0, Pokemon_GetBoxPokemon(v1));
            StringTemplate_SetMoveName(v0->unk_6A0, 1, v0->unk_5A4->unk_26);

            v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 194);

            StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v2);
            Strbuf_Free(v2);
            sub_02082708(v0, 0xffffffff, 0);
            v0->unk_B13 = 4;
            break;
        }
        break;
    case 4:
        if (Text_IsPrinterActive(v0->unk_B10) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(1500);
                v0->unk_B13 = 3;
            }
        }
        break;
    case 5:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);
            sub_02086590(v0, v1, v0->unk_5A4->unk_28);
            v2 = MessageLoader_GetNewStrbuf(v0->unk_69C, 61);

            StringTemplate_SetMoveName(v0->unk_6A0, 1, v0->unk_5A4->unk_26);
            StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v2);
            Strbuf_Free(v2);
            sub_02082708(v0, 0xffffffff, 0);

            v0->unk_B13 = 4;
        }
        break;
    case 6: {
        Pokemon *v3;
        FieldSystem *fieldSystem;
        int v5;

        v3 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);
        fieldSystem = v0->unk_5A4->unk_1C;
        v5 = MapHeader_GetMapEvolutionMethod(fieldSystem->location->mapId);
        v0->unk_5A4->unk_38 = sub_02076B94(v0->unk_5A4->unk_00, v3, 0, v5, &v0->unk_5A4->unk_3C);

        if (v0->unk_5A4->unk_38 != 0) {
            v0->unk_5A4->unk_23 = 9;
        } else {
            v0->unk_5A4->unk_23 = 0;
        }
    }
        return 32;
    }

    return 5;
}

int sub_02085EF4(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;

    param0->unk_B00 = sub_02085C50;
    param0->unk_B13 = 3;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    StringTemplate_SetNickname(param0->unk_6A0, 0, Pokemon_GetBoxPokemon(v0));

    if (param0->unk_5A4->unk_28 == 4) {
        StringTemplate_SetMoveName(param0->unk_6A0, 1, param0->unk_5A4->unk_26);
        return sub_02086008(param0);
    }

    StringTemplate_SetMoveName(param0->unk_6A0, 1, Pokemon_GetValue(v0, 54 + param0->unk_5A4->unk_28, NULL));
    v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 60);
    StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(param0, 0xffffffff, 1);

    param0->unk_B0E = 5;
    param0->unk_B13 = 5;

    return 24;
}

static int sub_02085FB4(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 59);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->unk_5A4->unk_23 = 5;
    v0->unk_B0E = 25;

    return 24;
}

static int sub_02086008(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 55);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 1);

    v0->unk_B04.unk_00 = sub_02086060;
    v0->unk_B04.unk_04 = sub_020860AC;
    v0->unk_B0E = 26;

    return 24;
}

static int sub_02086060(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 58);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->unk_B0E = 5;
    v0->unk_B13 = 4;

    return 24;
}

static int sub_020860AC(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 52);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->unk_B04.unk_00 = sub_02085FB4;
    v0->unk_B04.unk_04 = sub_02086008;
    v0->unk_B0E = 26;

    return 24;
}

u8 sub_02086104(GameWindowLayout *param0, Pokemon *param1)
{
    u16 v0;
    u8 v1;

    for (v1 = 0; v1 < 4; v1++) {
        v0 = (u16)Pokemon_GetValue(param1, MON_DATA_MOVE1 + v1, NULL);

        if (v0 == param0->unk_5A4->unk_26) {
            return 0xfd;
        }

        if (v0 == 0) {
            break;
        }
    }

    if (Pokemon_CanLearnTM(param1, Item_TMHMNumber(param0->unk_5A4->unk_24)) == 0) {
        return 0xff;
    }

    if (v1 == 4) {
        return 0xfe;
    }

    return v1;
}

int sub_0208615C(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;
    u32 v2;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    v2 = sub_02086104(param0, v0);

    StringTemplate_SetNickname(param0->unk_6A0, 0, Pokemon_GetBoxPokemon(v0));
    StringTemplate_SetMoveName(param0->unk_6A0, 1, param0->unk_5A4->unk_26);

    switch (v2) {
    case 0:
    case 1:
    case 2:
    case 3:
        sub_02086590(param0, v0, v2);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 61);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);
        param0->unk_5A4->unk_23 = 0;
        param0->unk_B0E = 25;
        break;
    case 0xfd:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 63);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);
        param0->unk_5A4->unk_23 = 0;
        param0->unk_B0E = 25;
        break;
    case 0xfe:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 52);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);

        param0->unk_B04.unk_00 = sub_02086438;
        param0->unk_B04.unk_04 = sub_0208648C;
        param0->unk_B0E = 26;
        break;
    case 0xff:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 62);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);

        param0->unk_5A4->unk_23 = 0;
        param0->unk_B0E = 25;
        break;
    }

    return 24;
}

int sub_020862F8(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    StringTemplate_SetNickname(param0->unk_6A0, 0, Pokemon_GetBoxPokemon(v0));

    if (param0->unk_5A4->unk_28 == 4) {
        StringTemplate_SetMoveName(param0->unk_6A0, 1, param0->unk_5A4->unk_26);
        return sub_0208648C(param0);
    }

    StringTemplate_SetMoveName(param0->unk_6A0, 1, Pokemon_GetValue(v0, 54 + param0->unk_5A4->unk_28, NULL));
    v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 60);
    StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(param0, 0xffffffff, 1);

    param0->unk_B0E = 22;
    return 24;
}

int sub_020863A0(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);

        sub_02086590(param0, v0, param0->unk_5A4->unk_28);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 61);
        StringTemplate_SetMoveName(param0->unk_6A0, 1, param0->unk_5A4->unk_26);
        StringTemplate_Format(param0->unk_6A0, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 0);

        param0->unk_5A4->unk_23 = 0;
        param0->unk_B0E = 25;

        return 24;
    }

    return 22;
}

static int sub_02086438(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 59);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->unk_5A4->unk_23 = 4;
    v0->unk_B0E = 25;

    return 24;
}

static int sub_0208648C(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 55);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 1);

    v0->unk_B04.unk_00 = sub_020864E4;
    v0->unk_B04.unk_04 = sub_02086538;
    v0->unk_B0E = 26;

    return 24;
}

static int sub_020864E4(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 58);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->unk_5A4->unk_23 = 0;
    v0->unk_B0E = 25;

    return 24;
}

static int sub_02086538(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->unk_69C, 52);

    StringTemplate_Format(v0->unk_6A0, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->unk_B04.unk_00 = sub_02086438;
    v0->unk_B04.unk_04 = sub_0208648C;
    v0->unk_B0E = 26;

    return 24;
}

static void sub_02086590(GameWindowLayout *param0, Pokemon *param1, u32 param2)
{
    u32 v0;

    v0 = param0->unk_5A4->unk_26;
    Pokemon_SetValue(param1, 54 + param2, &v0);

    v0 = 0;
    Pokemon_SetValue(param1, 62 + param2, &v0);

    v0 = MoveTable_CalcMaxPP(param0->unk_5A4->unk_26, 0);
    Pokemon_SetValue(param1, 58 + param2, &v0);

    if (param0->unk_5A4->unk_24 != 0) {
        if (Item_IsHMMove(param0->unk_5A4->unk_26) == 0) {
            Bag_TryRemoveItem(param0->unk_5A4->unk_04, param0->unk_5A4->unk_24, 1, 12);
        }

        Pokemon_UpdateFriendship(param1, 4, (u16)sub_02086930(param0));
    }
}

static u8 sub_02086614(GameWindowLayout *param0, u8 param1)
{
    Pokemon *v0;
    Strbuf *v1;
    u16 v2;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
    v2 = (u16)Pokemon_GetValue(v0, MON_DATA_MOVE1 + param1, NULL);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_69C, 162 + param1);

    StringTemplate_SetMoveName(param0->unk_6A0, 0, v2);
    StringTemplate_Format(param0->unk_6A0, param0->unk_6A8, v1);
    Strbuf_Free(v1);

    if (v2 == 0) {
        sub_02013A6C(param0->unk_6FC, param0->unk_6A8, 0xfffffffd);
        return 0;
    }

    sub_02013A6C(param0->unk_6FC, param0->unk_6A8, param1);
    return 1;
}

void sub_020866A0(GameWindowLayout *param0, u8 param1)
{
    UnkStruct_02081CF4 v0;
    u8 v1;

    if (param1 == 0) {
        sub_020826F4(param0, 41, 1);
    } else {
        sub_020826F4(param0, 40, 1);
    }

    param0->unk_6FC = sub_02013A04(4, 12);

    v1 = sub_02086614(param0, 0);
    v1 += sub_02086614(param0, 1);
    v1 += sub_02086614(param0, 2);
    v1 += sub_02086614(param0, 3);

    v0.unk_00 = param0->unk_6FC;
    v0.unk_04 = &param0->unk_04[36];
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 4;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;

    if (v1 == 4) {
        v0.unk_0B_6 = 1;
    } else {
        v0.unk_0B_6 = 0;
    }

    Window_Show(&param0->unk_04[36], 1, 1, 14);
    param0->unk_700 = sub_02001B7C(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
}

int sub_02086774(GameWindowLayout *param0)
{
    u32 v0 = sub_02001BE0(param0->unk_700);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_0200E084(&param0->unk_04[33], 1);
        Window_Clear(&param0->unk_04[36], 1);
        sub_02001BC4(param0->unk_700, NULL);
        sub_02013A3C(param0->unk_6FC);
        sub_020826E0(param0, 32, 1);
        return 4;
    default:
        sub_0200E084(&param0->unk_04[33], 1);
        Window_Clear(&param0->unk_04[36], 1);
        sub_02001BC4(param0->unk_700, NULL);
        sub_02013A3C(param0->unk_6FC);

        if (sub_02096F14(param0->unk_5A4->unk_00, param0->unk_5A4->unk_24, param0->unk_B11, (u8)v0, sub_02086930(param0), 12) == 1) {
            Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
            sub_02084E58(param0, param0->unk_5A4->unk_24, Pokemon_GetValue(v1, MON_DATA_MOVE1 + v0, NULL));
            Bag_TryRemoveItem(param0->unk_5A4->unk_04, param0->unk_5A4->unk_24, 1, 12);
            Sound_PlayEffect(1516);
        } else {
            MessageLoader_GetStrbuf(param0->unk_69C, 105, param0->unk_6A4);
        }

        sub_02082708(param0, 0xffffffff, 1);

        param0->unk_5A4->unk_23 = 0;
        param0->unk_B0E = 25;

        return 24;
    }

    return 6;
}

void sub_020868B0(GameWindowLayout *param0)
{
    sub_0200E084(&param0->unk_04[32], 1);

    if (param0->unk_704[param0->unk_B11].unk_0C == 0) {
        MessageLoader_GetStrbuf(param0->unk_69C, 127, param0->unk_6A4);
        sub_02083080(param0, param0->unk_B11);
    } else {
        MessageLoader_GetStrbuf(param0->unk_69C, 128, param0->unk_6A4);
        param0->unk_B11 = 7;
    }

    sub_02082708(param0, 0xffffffff, 1);

    param0->unk_5A4->unk_23 = 0;
    param0->unk_B0E = 25;
}

static u16 sub_02086930(GameWindowLayout *param0)
{
    FieldSystem *fieldSystem = param0->unk_5A4->unk_1C;
    return (u16)MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
}

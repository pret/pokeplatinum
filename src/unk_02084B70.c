#include "unk_02084B70.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/scrcmd.h"

#include "struct_defs/struct_0207F248.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "item.h"
#include "item_use_pokemon.h"
#include "map_header.h"
#include "menu.h"
#include "message.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"

static int sub_02085384(void *param0);
static int sub_02085424(void *param0);
static int sub_020855C4(void *param0);
static int PokemonSummaryScreen_UpdateHPBar(GameWindowLayout *param0);
static int sub_02085A70(void *param0);
static int sub_02085C50(void *param0);
static void TeachMove(GameWindowLayout *param0, Pokemon *param1, u32 param2);
static int sub_02086438(void *param0);
static int sub_0208648C(void *param0);
static int sub_020864E4(void *param0);
static int sub_02086538(void *param0);
static u16 GetCurrentMapLabel(GameWindowLayout *param0);
static int sub_02085FB4(void *param0);
static int sub_02086008(void *param0);
static int sub_02086060(void *param0);
static int sub_020860AC(void *param0);

static u8 sub_02084B70(u16 itemID)
{
    ItemData *itemData;
    s32 itemParam;

    itemData = Item_Load(itemID, 0, HEAP_ID_12);

    if (Item_Get(itemData, ITEM_PARAM_PARTY_USE) != 1) {
        Heap_FreeToHeap(itemData);
        return 28;
    }

    if ((Item_Get(itemData, ITEM_PARAM_ATK_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_DEF_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_SPATK_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_SPDEF_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_SPEED_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_ACC_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_CRIT_STAGES) != 0)) {
        Heap_FreeToHeap(itemData);
        return 0;
    }

    if (Item_Get(itemData, ITEM_PARAM_REVIVE_ALL) != 0) {
        Heap_FreeToHeap(itemData);
        return 1;
    }

    if (Item_Get(itemData, ITEM_PARAM_LEVEL_UP) != 0) {
        Heap_FreeToHeap(itemData);
        return 2;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_HEAL_SLEEP);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_POISON) << 1);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_BURN) << 2);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_FREEZE) << 3);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_PARALYSIS) << 4);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_CONFUSION) << 5);

    switch (itemParam) {
    case 0x1:
        Heap_FreeToHeap(itemData);
        return 3;
    case 0x2:
        Heap_FreeToHeap(itemData);
        return 4;
    case 0x4:
        Heap_FreeToHeap(itemData);
        return 5;
    case 0x8:
        Heap_FreeToHeap(itemData);
        return 6;
    case 0x10:
        Heap_FreeToHeap(itemData);
        return 7;
    case 0x20:
        Heap_FreeToHeap(itemData);
        return 8;
    case 0x3f:
        if (Item_Get(itemData, ITEM_PARAM_HP_RESTORE) != 0) {
            Heap_FreeToHeap(itemData);
            return 11; // Full Restore
        } else {
            Heap_FreeToHeap(itemData);
            return 9; // Full Heal
        }
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_ATTRACT) != 0) {
        Heap_FreeToHeap(itemData);
        return 10;
    }

    if (Item_Get(itemData, ITEM_PARAM_HP_RESTORE) != 0) {
        Heap_FreeToHeap(itemData);
        return 11;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_HP_EVS);

    if (itemParam > 0) {
        Heap_FreeToHeap(itemData);
        return 12;
    }

    if (itemParam < 0) {
        Heap_FreeToHeap(itemData);
        return 18;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_ATK_EVS);

    if (itemParam > 0) {
        Heap_FreeToHeap(itemData);
        return 13;
    }

    if (itemParam < 0) {
        Heap_FreeToHeap(itemData);
        return 19;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_DEF_EVS);

    if (itemParam > 0) {
        Heap_FreeToHeap(itemData);
        return 14;
    }

    if (itemParam < 0) {
        Heap_FreeToHeap(itemData);
        return 20;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_SPEED_EVS);

    if (itemParam > 0) {
        Heap_FreeToHeap(itemData);
        return 15;
    }

    if (itemParam < 0) {
        Heap_FreeToHeap(itemData);
        return 21;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_SPATK_EVS);

    if (itemParam > 0) {
        Heap_FreeToHeap(itemData);
        return 16;
    }

    if (itemParam < 0) {
        Heap_FreeToHeap(itemData);
        return 22;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_SPDEF_EVS);

    if (itemParam > 0) {
        Heap_FreeToHeap(itemData);
        return 17;
    }

    if (itemParam < 0) {
        Heap_FreeToHeap(itemData);
        return 23;
    }

    if (Item_Get(itemData, ITEM_PARAM_EVOLVE) != 0) {
        Heap_FreeToHeap(itemData);
        return 24;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_UP) != 0) {
        Heap_FreeToHeap(itemData);
        return 25;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_MAX) != 0) {
        Heap_FreeToHeap(itemData);
        return 26;
    }

    if ((Item_Get(itemData, ITEM_PARAM_PP_RESTORE) != 0) || (Item_Get(itemData, ITEM_PARAM_PP_RESTORE_ALL) != 0)) {
        Heap_FreeToHeap(itemData);
        return 27;
    }

    Heap_FreeToHeap(itemData);
    return 28;
}

static void BufferUsedItemMessage(GameWindowLayout *windowLayout, u16 param1, u32 param2)
{
    Pokemon *mon;
    Strbuf *strBuf;

    mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
    StringTemplate_SetNickname(windowLayout->template, 0, Pokemon_GetBoxPokemon(mon));

    switch (sub_02084B70(param1)) {
    case 4:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 65);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 3:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 91);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 5:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 67);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 6:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 68);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 7:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 66);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 8:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 73);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 10:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 74);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 9:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 71);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 12:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 75);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 0);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 13:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 75);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 1);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 14:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 75);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 2);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 15:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 75);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 3);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 16:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 75);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 4);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 17:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 75);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 5);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 18:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 0);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 19:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 1);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 20:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 2);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 21:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 3);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 22:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 4);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 23:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(windowLayout->template, 1, 5);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 25:
    case 26:
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 72);
        StringTemplate_SetMoveName(windowLayout->template, 0, param2);
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 27:
        MessageLoader_GetStrbuf(windowLayout->messageLoader, 69, windowLayout->unk_6A4);
        break;
    default:
        MessageLoader_GetStrbuf(windowLayout->messageLoader, 105, windowLayout->unk_6A4);
    }
}

void sub_020852B8(GameWindowLayout *windowLayout)
{
    switch (sub_02084B70(windowLayout->partyManagementData->usedItemID)) {
    case 0:
    case 28:
        break;
    case 1:
        break;
    case 2:
        windowLayout->unk_B00 = sub_02085A70;
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
        windowLayout->unk_B00 = sub_02085384;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
        windowLayout->unk_B00 = sub_02085424;
        break;
    case 11:
        windowLayout->unk_B00 = sub_020855C4;
        break;
    }
}

int sub_02085348(void *param0)
{
    GameWindowLayout *windowLayout = (GameWindowLayout *)param0;

    if (Text_IsPrinterActive(windowLayout->textPrinterID) != 0) {
        return 5;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        windowLayout->partyManagementData->unk_23 = 0;
        return 32;
    }

    return 5;
}

static int sub_02085384(void *param0)
{
    GameWindowLayout *windowLayout = (GameWindowLayout *)param0;

    Party_ApplyItemEffectsToMember(windowLayout->partyManagementData->party, windowLayout->partyManagementData->usedItemID, windowLayout->partySlot, 0, GetCurrentMapLabel(windowLayout), HEAP_ID_12);
    sub_0207EF14(windowLayout, windowLayout->partySlot);
    sub_020821F8(windowLayout, windowLayout->partySlot);
    sub_020822BC(windowLayout, windowLayout->partySlot);
    sub_02083014(windowLayout, windowLayout->partySlot, windowLayout->unk_704[windowLayout->partySlot].unk_0E_0);
    BufferUsedItemMessage(windowLayout, windowLayout->partyManagementData->usedItemID, 0);
    sub_02082708(windowLayout, 0xffffffff, 1);
    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

    windowLayout->unk_B00 = sub_02085348;

    return 5;
}

static int sub_02085424(void *param0)
{
    GameWindowLayout *windowLayout;
    Pokemon *mon;
    u8 EVs[7];

    windowLayout = (GameWindowLayout *)param0;
    mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);

    EVs[0] = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    EVs[1] = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    EVs[2] = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    EVs[3] = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    EVs[4] = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    EVs[5] = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);
    EVs[6] = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    Party_ApplyItemEffectsToMember(windowLayout->partyManagementData->party, windowLayout->partyManagementData->usedItemID, windowLayout->partySlot, 0, GetCurrentMapLabel(windowLayout), 12);
    sub_0207EF14(windowLayout, windowLayout->partySlot);
    sub_020821F8(windowLayout, windowLayout->partySlot);
    sub_020822BC(windowLayout, windowLayout->partySlot);
    sub_02083014(windowLayout, windowLayout->partySlot, windowLayout->unk_704[windowLayout->partySlot].unk_0E_0);

    if ((EVs[0] != Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL)) || (EVs[1] != Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL)) || (EVs[2] != Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL)) || (EVs[3] != Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL)) || (EVs[4] != Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL)) || (EVs[5] != Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL))) {
        if (EVs[6] != Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL)) {
            BufferUsedItemMessage(windowLayout, windowLayout->partyManagementData->usedItemID, 0);
        } else {
            BufferUsedItemMessage(windowLayout, windowLayout->partyManagementData->usedItemID, 1);
        }
    } else {
        BufferUsedItemMessage(windowLayout, windowLayout->partyManagementData->usedItemID, 2);
    }

    sub_02082708(windowLayout, 0xffffffff, 1);
    windowLayout->unk_B00 = sub_02085348;

    return 5;
}

static int sub_020855C4(void *param0)
{
    GameWindowLayout *windowLayout;
    Pokemon *mon;
    Strbuf *strBuf;
    u32 curHP;
    u32 summaryCondition;

    windowLayout = (GameWindowLayout *)param0;

    Party_ApplyItemEffectsToMember(windowLayout->partyManagementData->party, windowLayout->partyManagementData->usedItemID, windowLayout->partySlot, 0, GetCurrentMapLabel(windowLayout), HEAP_ID_12);

    mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
    curHP = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);

    if (windowLayout->unk_704[windowLayout->partySlot].curHP == 0) {
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 70);
    } else if (windowLayout->unk_704[windowLayout->partySlot].curHP == curHP) {
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 71);
    } else {
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 64);
    }

    StringTemplate_SetNickname(windowLayout->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetNumber(windowLayout->template, 1, curHP - windowLayout->unk_704[windowLayout->partySlot].curHP, 3, 0, 1);
    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
    Strbuf_Free(strBuf);

    summaryCondition = PokemonSummaryScreen_StatusIconAnimIdx(mon);
    sub_02083014(windowLayout, windowLayout->partySlot, summaryCondition);

    if (summaryCondition == SUMMARY_CONDITION_NONE) {
        windowLayout->unk_704[windowLayout->partySlot].unk_0E_0 = SUMMARY_CONDITION_NONE;
        sub_02081FFC(windowLayout, windowLayout->partySlot);
    }

    sub_0207F8F8(windowLayout, windowLayout->partySlot);
    windowLayout->unk_B00 = (void *)PokemonSummaryScreen_UpdateHPBar;
    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

    return 5;
}

static int PokemonSummaryScreen_UpdateHPBar(GameWindowLayout *param0)
{
    GameWindowLayout *gameWindowLayout = (GameWindowLayout *)param0;
    Pokemon *mon;
    u32 curHP;

    mon = Party_GetPokemonBySlotIndex(gameWindowLayout->partyManagementData->party, gameWindowLayout->partySlot);
    curHP = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);

    if (gameWindowLayout->unk_704[gameWindowLayout->partySlot].curHP != curHP) {
        gameWindowLayout->unk_704[gameWindowLayout->partySlot].curHP++;
    }

    sub_02082098(gameWindowLayout, gameWindowLayout->partySlot);
    Window_FillTilemap(&gameWindowLayout->unk_04[3 + gameWindowLayout->partySlot * 5], 0);
    sub_02082058(gameWindowLayout, gameWindowLayout->partySlot);
    sub_02082104(gameWindowLayout, gameWindowLayout->partySlot);

    if (gameWindowLayout->unk_704[gameWindowLayout->partySlot].curHP == curHP) {
        sub_02082708(gameWindowLayout, 0xffffffff, 1);
        gameWindowLayout->unk_B00 = sub_02085348;
    }

    return 5;
}

BOOL CheckItemSacredAsh(u16 itemID)
{
    if (Item_LoadParam(itemID, ITEM_PARAM_REVIVE_ALL, HEAP_ID_12) != 0) {
        return TRUE;
    }

    return FALSE;
}

static u8 GetFirstFaintedMon(GameWindowLayout *windowLayout, u8 startIndex)
{
    u8 partySlot;

    if (startIndex >= 6) {
        return 0xff;
    }

    for (partySlot = startIndex; partySlot < 6; partySlot++) {
        if ((windowLayout->unk_704[partySlot].unk_29 != 0) && (windowLayout->unk_704[partySlot].curHP == 0)) {
            return partySlot;
        }
    }

    return 0xff;
}

int sub_02085804(GameWindowLayout *windowLayout)
{
    Pokemon *mon;
    Strbuf *strBuf;
    u32 curHP;
    u8 v3;

    switch (windowLayout->unk_B0E) {
    case 0:
        windowLayout->partySlot = GetFirstFaintedMon(windowLayout, 0);

        if (windowLayout->partySlot == 0xff) {
            MessageLoader_GetStrbuf(windowLayout->messageLoader, 105, windowLayout->unk_6A4);
            sub_02082708(windowLayout, 0xffffffff, 1);
            windowLayout->unk_B00 = sub_02085348;
            sub_0208327C(windowLayout, 0, 1);
            windowLayout->partySlot = 7;

            return 5;
        }

        if (windowLayout->partySlot != 0) {
            sub_0207F8F8(windowLayout, 0);
        }
    case 1:

        mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
        Pokemon_ApplyItemEffects(mon, windowLayout->partyManagementData->usedItemID, 0, GetCurrentMapLabel(windowLayout), HEAP_ID_12);

        curHP = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
        strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 70);

        StringTemplate_SetNickname(windowLayout->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
        Strbuf_Free(strBuf);

        windowLayout->unk_704[windowLayout->partySlot].unk_0E_0 = 7;

        sub_02083014(windowLayout, windowLayout->partySlot, windowLayout->unk_704[windowLayout->partySlot].unk_0E_0);
        sub_02081FFC(windowLayout, windowLayout->partySlot);
        sub_0207F8F8(windowLayout, windowLayout->partySlot);
        sub_0208327C(windowLayout, windowLayout->partySlot, 1);
        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

        windowLayout->unk_B0E++;
        break;
    case 2:
        mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
        curHP = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);

        windowLayout->unk_704[windowLayout->partySlot].curHP++;

        sub_02082098(windowLayout, windowLayout->partySlot);
        Window_FillTilemap(&windowLayout->unk_04[3 + windowLayout->partySlot * 5], 0);
        sub_02082058(windowLayout, windowLayout->partySlot);
        sub_02082104(windowLayout, windowLayout->partySlot);

        if (windowLayout->unk_704[windowLayout->partySlot].curHP == curHP) {
            sub_02082708(windowLayout, 0xffffffff, 1);
            windowLayout->unk_B0E++;
        }
        break;
    case 3:
        if (Text_IsPrinterActive(windowLayout->textPrinterID) != 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            v3 = windowLayout->partySlot;
            windowLayout->partySlot = GetFirstFaintedMon(windowLayout, windowLayout->partySlot + 1);

            if (windowLayout->partySlot != 0xff) {
                Window_EraseMessageBox(&windowLayout->unk_04[34], 0);
                sub_0207F8F8(windowLayout, v3);
                windowLayout->unk_B0E = 1;
            } else {
                Bag_TryRemoveItem(windowLayout->partyManagementData->bag, windowLayout->partyManagementData->usedItemID, 1, HEAP_ID_12);
                windowLayout->partyManagementData->unk_23 = 0;
                windowLayout->partySlot = 7;
                return 32;
            }
        }
        break;
    }

    return 7;
}

static int sub_02085A70(void *param0)
{
    GameWindowLayout *windowLayout;
    Pokemon *mon;
    Strbuf *strBuf;
    u32 unused;
    u32 summaryCondition;

    windowLayout = (GameWindowLayout *)param0;
    mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);

    windowLayout->monStats[0] = (u16)Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    windowLayout->monStats[1] = (u16)Pokemon_GetValue(mon, MON_DATA_ATK, NULL);
    windowLayout->monStats[2] = (u16)Pokemon_GetValue(mon, MON_DATA_DEF, NULL);
    windowLayout->monStats[3] = (u16)Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL);
    windowLayout->monStats[4] = (u16)Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL);
    windowLayout->monStats[5] = (u16)Pokemon_GetValue(mon, MON_DATA_SPEED, NULL);

    Party_ApplyItemEffectsToMember(windowLayout->partyManagementData->party, windowLayout->partyManagementData->usedItemID, windowLayout->partySlot, 0, GetCurrentMapLabel(windowLayout), HEAP_ID_12);

    windowLayout->unk_704[windowLayout->partySlot].level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    windowLayout->unk_704[windowLayout->partySlot].curHP = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
    windowLayout->unk_704[windowLayout->partySlot].maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);

    strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 193);

    StringTemplate_SetNickname(windowLayout->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetNumber(windowLayout->template, 1, windowLayout->unk_704[windowLayout->partySlot].level, 3, 0, 1);
    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
    Strbuf_Free(strBuf);

    summaryCondition = PokemonSummaryScreen_StatusIconAnimIdx(mon);
    sub_02083014(windowLayout, windowLayout->partySlot, summaryCondition);

    if (summaryCondition == SUMMARY_CONDITION_NONE) {
        windowLayout->unk_704[windowLayout->partySlot].unk_0E_0 = SUMMARY_CONDITION_NONE;
        sub_02081FFC(windowLayout, windowLayout->partySlot);
    }

    sub_0207F8F8(windowLayout, windowLayout->partySlot);

    windowLayout->unk_B00 = (void *)PokemonSummaryScreen_UpdateHPBar;

    sub_020821F8(windowLayout, windowLayout->partySlot);
    sub_020822BC(windowLayout, windowLayout->partySlot);
    sub_02082708(windowLayout, 0xffffffff, 1);

    windowLayout->unk_B00 = sub_02085C50;
    windowLayout->unk_B13 = 0;

    return 5;
}

static int sub_02085C50(void *param0)
{
    GameWindowLayout *windowLayout;
    Pokemon *mon;
    Strbuf *strBuf;

    windowLayout = param0;

    switch (windowLayout->unk_B13) {
    case 0:
        if (Text_IsPrinterActive(windowLayout->textPrinterID) == 0) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                sub_020829DC(windowLayout);
                windowLayout->unk_B13 = 1;
            }
        }
        break;
    case 1:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_02082B58(windowLayout);
            windowLayout->unk_B13 = 2;
        }
        break;
    case 2:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_02082C10(windowLayout);
            windowLayout->unk_B13 = 3;
            windowLayout->partyManagementData->unk_34 = 0;
        }
        break;
    case 3:
        mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);

        switch (Pokemon_LevelUpMove(mon, &windowLayout->partyManagementData->unk_34, &windowLayout->partyManagementData->learnedMove)) {
        case 0x0:
            windowLayout->unk_B13 = 6;
            break;
        case 0xffff:
            StringTemplate_SetNickname(windowLayout->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(windowLayout->template, 1, windowLayout->partyManagementData->learnedMove);

            strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 52);

            StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
            Strbuf_Free(strBuf);
            sub_02082708(windowLayout, 0xffffffff, 0);

            windowLayout->unk_B04.unk_00 = sub_02085FB4;
            windowLayout->unk_B04.unk_04 = sub_02086008;
            windowLayout->unk_B0E = 26;

            return 24;
        case 0xfffe:
            break;
        default:
            StringTemplate_SetNickname(windowLayout->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(windowLayout->template, 1, windowLayout->partyManagementData->learnedMove);

            strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 194);

            StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
            Strbuf_Free(strBuf);
            sub_02082708(windowLayout, 0xffffffff, 0);
            windowLayout->unk_B13 = 4;
            break;
        }
        break;
    case 4:
        if (Text_IsPrinterActive(windowLayout->textPrinterID) == 0) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                windowLayout->unk_B13 = 3;
            }
        }
        break;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
            TeachMove(windowLayout, mon, windowLayout->partyManagementData->unk_28);
            strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 61);

            StringTemplate_SetMoveName(windowLayout->template, 1, windowLayout->partyManagementData->learnedMove);
            StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
            Strbuf_Free(strBuf);
            sub_02082708(windowLayout, 0xffffffff, 0);

            windowLayout->unk_B13 = 4;
        }
        break;
    case 6: {
        Pokemon *mon;
        FieldSystem *fieldSystem;
        int v5;

        mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
        fieldSystem = windowLayout->partyManagementData->fieldSystem;
        v5 = MapHeader_GetMapEvolutionMethod(fieldSystem->location->mapId);
        windowLayout->partyManagementData->evoTargetSpecies = Pokemon_GetEvolutionTargetSpecies(windowLayout->partyManagementData->party, mon, EVO_CLASS_BY_LEVEL, v5, &windowLayout->partyManagementData->unk_3C);

        if (windowLayout->partyManagementData->evoTargetSpecies != 0) {
            windowLayout->partyManagementData->unk_23 = 9;
        } else {
            windowLayout->partyManagementData->unk_23 = 0;
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

    v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);
    StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(v0));

    if (param0->partyManagementData->unk_28 == 4) {
        StringTemplate_SetMoveName(param0->template, 1, param0->partyManagementData->learnedMove);
        return sub_02086008(param0);
    }

    StringTemplate_SetMoveName(param0->template, 1, Pokemon_GetValue(v0, 54 + param0->partyManagementData->unk_28, NULL));
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 60);
    StringTemplate_Format(param0->template, param0->unk_6A4, v1);
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
    v1 = MessageLoader_GetNewStrbuf(v0->messageLoader, 59);

    StringTemplate_Format(v0->template, v0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(v0, 0xffffffff, 0);

    v0->partyManagementData->unk_23 = 5;
    v0->unk_B0E = 25;

    return 24;
}

static int sub_02086008(void *param0)
{
    GameWindowLayout *v0;
    Strbuf *v1;

    v0 = param0;
    v1 = MessageLoader_GetNewStrbuf(v0->messageLoader, 55);

    StringTemplate_Format(v0->template, v0->unk_6A4, v1);
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
    v1 = MessageLoader_GetNewStrbuf(v0->messageLoader, 58);

    StringTemplate_Format(v0->template, v0->unk_6A4, v1);
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
    v1 = MessageLoader_GetNewStrbuf(v0->messageLoader, 52);

    StringTemplate_Format(v0->template, v0->unk_6A4, v1);
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

    for (v1 = 0; v1 < LEARNED_MOVES_MAX; v1++) {
        v0 = (u16)Pokemon_GetValue(param1, MON_DATA_MOVE1 + v1, NULL);

        if (v0 == param0->partyManagementData->learnedMove) {
            return 0xfd;
        }

        if (v0 == 0) {
            break;
        }
    }

    if (Pokemon_CanLearnTM(param1, Item_TMHMNumber(param0->partyManagementData->usedItemID)) == 0) {
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

    v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);
    v2 = sub_02086104(param0, v0);

    StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(v0));
    StringTemplate_SetMoveName(param0->template, 1, param0->partyManagementData->learnedMove);

    switch (v2) {
    case 0:
    case 1:
    case 2:
    case 3:
        TeachMove(param0, v0, v2);
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 61);
        StringTemplate_Format(param0->template, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);
        param0->partyManagementData->unk_23 = 0;
        param0->unk_B0E = 25;
        break;
    case 0xfd:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 63);
        StringTemplate_Format(param0->template, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);
        param0->partyManagementData->unk_23 = 0;
        param0->unk_B0E = 25;
        break;
    case 0xfe:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 52);
        StringTemplate_Format(param0->template, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);

        param0->unk_B04.unk_00 = sub_02086438;
        param0->unk_B04.unk_04 = sub_0208648C;
        param0->unk_B0E = 26;
        break;
    case 0xff:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 62);
        StringTemplate_Format(param0->template, param0->unk_6A4, v1);
        Strbuf_Free(v1);
        sub_02082708(param0, 0xffffffff, 1);

        param0->partyManagementData->unk_23 = 0;
        param0->unk_B0E = 25;
        break;
    }

    return 24;
}

int sub_020862F8(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;

    v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);
    StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(v0));

    if (param0->partyManagementData->unk_28 == 4) {
        StringTemplate_SetMoveName(param0->template, 1, param0->partyManagementData->learnedMove);
        return sub_0208648C(param0);
    }

    StringTemplate_SetMoveName(param0->template, 1, Pokemon_GetValue(v0, 54 + param0->partyManagementData->unk_28, NULL));
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 60);
    StringTemplate_Format(param0->template, param0->unk_6A4, v1);
    Strbuf_Free(v1);
    sub_02082708(param0, 0xffffffff, 1);

    param0->unk_B0E = 22;
    return 24;
}

int sub_020863A0(GameWindowLayout *param0)
{
    Pokemon *mon;
    Strbuf *strBuf;

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        mon = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);

        TeachMove(param0, mon, param0->partyManagementData->unk_28);
        strBuf = MessageLoader_GetNewStrbuf(param0->messageLoader, 61);
        StringTemplate_SetMoveName(param0->template, 1, param0->partyManagementData->learnedMove);
        StringTemplate_Format(param0->template, param0->unk_6A4, strBuf);
        Strbuf_Free(strBuf);
        sub_02082708(param0, 0xffffffff, 0);

        param0->partyManagementData->unk_23 = 0;
        param0->unk_B0E = 25;

        return 24;
    }

    return 22;
}

static int sub_02086438(void *param0)
{
    GameWindowLayout *windowLayout;
    Strbuf *strBuf;

    windowLayout = param0;
    strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 59);

    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
    Strbuf_Free(strBuf);
    sub_02082708(windowLayout, 0xffffffff, 0);

    windowLayout->partyManagementData->unk_23 = 4;
    windowLayout->unk_B0E = 25;

    return 24;
}

static int sub_0208648C(void *param0)
{
    GameWindowLayout *windowLayout;
    Strbuf *strBuf;

    windowLayout = param0;
    strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 55);

    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
    Strbuf_Free(strBuf);
    sub_02082708(windowLayout, 0xffffffff, 1);

    windowLayout->unk_B04.unk_00 = sub_020864E4;
    windowLayout->unk_B04.unk_04 = sub_02086538;
    windowLayout->unk_B0E = 26;

    return 24;
}

static int sub_020864E4(void *param0)
{
    GameWindowLayout *windowLayout;
    Strbuf *strBuf;

    windowLayout = param0;
    strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 58);

    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
    Strbuf_Free(strBuf);
    sub_02082708(windowLayout, 0xffffffff, 0);

    windowLayout->partyManagementData->unk_23 = 0;
    windowLayout->unk_B0E = 25;

    return 24;
}

static int sub_02086538(void *param0)
{
    GameWindowLayout *windowLayout;
    Strbuf *strBuf;

    windowLayout = param0;
    strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 52);

    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A4, strBuf);
    Strbuf_Free(strBuf);
    sub_02082708(windowLayout, 0xffffffff, 0);

    windowLayout->unk_B04.unk_00 = sub_02086438;
    windowLayout->unk_B04.unk_04 = sub_0208648C;
    windowLayout->unk_B0E = 26;

    return 24;
}

static void TeachMove(GameWindowLayout *windowLayout, Pokemon *mon, u32 moveSlot)
{
    u32 tempVar = windowLayout->partyManagementData->learnedMove;
    Pokemon_SetValue(mon, MON_DATA_MOVE1 + moveSlot, &tempVar);

    tempVar = 0;
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &tempVar);

    tempVar = MoveTable_CalcMaxPP(windowLayout->partyManagementData->learnedMove, 0);
    Pokemon_SetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, &tempVar);

    if (windowLayout->partyManagementData->usedItemID != 0) {
        if (Item_IsHMMove(windowLayout->partyManagementData->learnedMove) == FALSE) {
            Bag_TryRemoveItem(windowLayout->partyManagementData->bag, windowLayout->partyManagementData->usedItemID, 1, HEAP_ID_12);
        }

        Pokemon_UpdateFriendship(mon, 4, (u16)GetCurrentMapLabel(windowLayout));
    }
}

static u8 BufferLearnedMoveInSlot(GameWindowLayout *windowLayout, u8 moveSlot)
{
    Pokemon *mon;
    Strbuf *strBuf;
    u16 moveID;

    mon = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
    moveID = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);
    strBuf = MessageLoader_GetNewStrbuf(windowLayout->messageLoader, 162 + moveSlot);

    StringTemplate_SetMoveName(windowLayout->template, 0, moveID);
    StringTemplate_Format(windowLayout->template, windowLayout->unk_6A8, strBuf);
    Strbuf_Free(strBuf);

    if (moveID == 0) {
        StringList_AddFromStrbuf(windowLayout->unk_6FC, windowLayout->unk_6A8, 0xfffffffd);
        return 0;
    }

    StringList_AddFromStrbuf(windowLayout->unk_6FC, windowLayout->unk_6A8, moveSlot);
    return 1;
}

void sub_020866A0(GameWindowLayout *windowLayout, u8 param1)
{
    MenuTemplate menuTemplate;
    u8 moveCount;

    if (param1 == 0) {
        sub_020826F4(windowLayout, 41, 1);
    } else {
        sub_020826F4(windowLayout, 40, 1);
    }

    windowLayout->unk_6FC = StringList_New(4, 12);

    moveCount = BufferLearnedMoveInSlot(windowLayout, 0);
    moveCount += BufferLearnedMoveInSlot(windowLayout, 1);
    moveCount += BufferLearnedMoveInSlot(windowLayout, 2);
    moveCount += BufferLearnedMoveInSlot(windowLayout, 3);

    menuTemplate.choices = windowLayout->unk_6FC;
    menuTemplate.window = &windowLayout->unk_04[36];
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 4;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;

    if (moveCount == 4) {
        menuTemplate.loopAround = TRUE;
    } else {
        menuTemplate.loopAround = FALSE;
    }

    Window_DrawStandardFrame(&windowLayout->unk_04[36], 1, 1, 14);
    windowLayout->unk_700 = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, 12, PAD_BUTTON_B);
}

int sub_02086774(GameWindowLayout *windowLayout)
{
    u32 menuAction = Menu_ProcessInput(windowLayout->unk_700);

    switch (menuAction) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        Window_EraseMessageBox(&windowLayout->unk_04[33], 1);
        Window_EraseStandardFrame(&windowLayout->unk_04[36], 1);
        Menu_Free(windowLayout->unk_700, NULL);
        StringList_Free(windowLayout->unk_6FC);
        sub_020826E0(windowLayout, 32, 1);
        return 4;
    default:
        Window_EraseMessageBox(&windowLayout->unk_04[33], 1);
        Window_EraseStandardFrame(&windowLayout->unk_04[36], 1);
        Menu_Free(windowLayout->unk_700, NULL);
        StringList_Free(windowLayout->unk_6FC);

        if (Party_ApplyItemEffectsToMember(windowLayout->partyManagementData->party, windowLayout->partyManagementData->usedItemID, windowLayout->partySlot, (u8)menuAction, GetCurrentMapLabel(windowLayout), 12) == 1) {
            Pokemon *v1 = Party_GetPokemonBySlotIndex(windowLayout->partyManagementData->party, windowLayout->partySlot);
            BufferUsedItemMessage(windowLayout, windowLayout->partyManagementData->usedItemID, Pokemon_GetValue(v1, MON_DATA_MOVE1 + menuAction, NULL));
            Bag_TryRemoveItem(windowLayout->partyManagementData->bag, windowLayout->partyManagementData->usedItemID, 1, HEAP_ID_12);
            Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        } else {
            MessageLoader_GetStrbuf(windowLayout->messageLoader, 105, windowLayout->unk_6A4);
        }

        sub_02082708(windowLayout, 0xffffffff, 1);

        windowLayout->partyManagementData->unk_23 = 0;
        windowLayout->unk_B0E = 25;

        return 24;
    }

    return 6;
}

void sub_020868B0(GameWindowLayout *windowLayout)
{
    Window_EraseMessageBox(&windowLayout->unk_04[32], 1);

    if (windowLayout->unk_704[windowLayout->partySlot].unk_0C == 0) {
        MessageLoader_GetStrbuf(windowLayout->messageLoader, 127, windowLayout->unk_6A4);
        sub_02083080(windowLayout, windowLayout->partySlot);
    } else {
        MessageLoader_GetStrbuf(windowLayout->messageLoader, 128, windowLayout->unk_6A4);
        windowLayout->partySlot = 7;
    }

    sub_02082708(windowLayout, 0xffffffff, 1);

    windowLayout->partyManagementData->unk_23 = 0;
    windowLayout->unk_B0E = 25;
}

static u16 GetCurrentMapLabel(GameWindowLayout *windowLayout)
{
    FieldSystem *fieldSystem = windowLayout->partyManagementData->fieldSystem;
    return (u16)MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
}

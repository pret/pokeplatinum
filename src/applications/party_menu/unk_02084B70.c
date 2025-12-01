#include "applications/party_menu/unk_02084B70.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/scrcmd.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/windows.h"
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

#include "res/text/bank/party_menu.h"

static int sub_02085384(void *applicationPtr);
static int sub_02085424(void *applicationPtr);
static int sub_020855C4(void *applicationPtr);
static int PokemonSummaryScreen_UpdateHPBar(PartyMenuApplication *applicationPtr);
static int sub_02085A70(void *applicationPtr);
static int sub_02085C50(void *applicationPtr);
static void TeachMove(PartyMenuApplication *application, Pokemon *mon, u32 moveSlot);
static int sub_02086438(void *applicationPtr);
static int sub_0208648C(void *applicationPtr);
static int sub_020864E4(void *applicationPtr);
static int sub_02086538(void *applicationPtr);
static u16 GetCurrentMapLabel(PartyMenuApplication *application);
static int sub_02085FB4(void *applicationPtr);
static int sub_02086008(void *applicationPtr);
static int sub_02086060(void *applicationPtr);
static int sub_020860AC(void *applicationPtr);

static u8 sub_02084B70(u16 itemID)
{
    ItemData *itemData;
    s32 itemParam;

    itemData = Item_Load(itemID, 0, HEAP_ID_PARTY_MENU);

    if (Item_Get(itemData, ITEM_PARAM_PARTY_USE) != 1) {
        Heap_Free(itemData);
        return 28;
    }

    if ((Item_Get(itemData, ITEM_PARAM_ATK_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_DEF_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_SPATK_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_SPDEF_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_SPEED_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_ACC_STAGES) != 0) || (Item_Get(itemData, ITEM_PARAM_CRIT_STAGES) != 0)) {
        Heap_Free(itemData);
        return 0;
    }

    if (Item_Get(itemData, ITEM_PARAM_REVIVE_ALL) != 0) {
        Heap_Free(itemData);
        return 1;
    }

    if (Item_Get(itemData, ITEM_PARAM_LEVEL_UP) != 0) {
        Heap_Free(itemData);
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
        Heap_Free(itemData);
        return 3;
    case 0x2:
        Heap_Free(itemData);
        return 4;
    case 0x4:
        Heap_Free(itemData);
        return 5;
    case 0x8:
        Heap_Free(itemData);
        return 6;
    case 0x10:
        Heap_Free(itemData);
        return 7;
    case 0x20:
        Heap_Free(itemData);
        return 8;
    case 0x3f:
        if (Item_Get(itemData, ITEM_PARAM_HP_RESTORE) != 0) {
            Heap_Free(itemData);
            return 11; // Full Restore
        } else {
            Heap_Free(itemData);
            return 9; // Full Heal
        }
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_ATTRACT) != 0) {
        Heap_Free(itemData);
        return 10;
    }

    if (Item_Get(itemData, ITEM_PARAM_HP_RESTORE) != 0) {
        Heap_Free(itemData);
        return 11;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_HP_EVS);

    if (itemParam > 0) {
        Heap_Free(itemData);
        return 12;
    }

    if (itemParam < 0) {
        Heap_Free(itemData);
        return 18;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_ATK_EVS);

    if (itemParam > 0) {
        Heap_Free(itemData);
        return 13;
    }

    if (itemParam < 0) {
        Heap_Free(itemData);
        return 19;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_DEF_EVS);

    if (itemParam > 0) {
        Heap_Free(itemData);
        return 14;
    }

    if (itemParam < 0) {
        Heap_Free(itemData);
        return 20;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_SPEED_EVS);

    if (itemParam > 0) {
        Heap_Free(itemData);
        return 15;
    }

    if (itemParam < 0) {
        Heap_Free(itemData);
        return 21;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_SPATK_EVS);

    if (itemParam > 0) {
        Heap_Free(itemData);
        return 16;
    }

    if (itemParam < 0) {
        Heap_Free(itemData);
        return 22;
    }

    itemParam = Item_Get(itemData, ITEM_PARAM_SPDEF_EVS);

    if (itemParam > 0) {
        Heap_Free(itemData);
        return 17;
    }

    if (itemParam < 0) {
        Heap_Free(itemData);
        return 23;
    }

    if (Item_Get(itemData, ITEM_PARAM_EVOLVE) != 0) {
        Heap_Free(itemData);
        return 24;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_UP) != 0) {
        Heap_Free(itemData);
        return 25;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_MAX) != 0) {
        Heap_Free(itemData);
        return 26;
    }

    if ((Item_Get(itemData, ITEM_PARAM_PP_RESTORE) != 0) || (Item_Get(itemData, ITEM_PARAM_PP_RESTORE_ALL) != 0)) {
        Heap_Free(itemData);
        return 27;
    }

    Heap_Free(itemData);
    return 28;
}

static void BufferUsedItemMessage(PartyMenuApplication *application, u16 param1, u32 param2)
{
    Pokemon *mon;
    Strbuf *strBuf;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));

    switch (sub_02084B70(param1)) {
    case 4:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 65);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 3:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 91);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 5:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 67);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 6:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 68);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 7:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 66);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 8:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 73);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 10:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 74);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 9:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 71);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 12:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 75);
        StringTemplate_SetPokemonStatName(application->template, 1, 0);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 13:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 75);
        StringTemplate_SetPokemonStatName(application->template, 1, 1);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 14:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 75);
        StringTemplate_SetPokemonStatName(application->template, 1, 2);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 15:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 75);
        StringTemplate_SetPokemonStatName(application->template, 1, 3);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 16:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 75);
        StringTemplate_SetPokemonStatName(application->template, 1, 4);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 17:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 75);
        StringTemplate_SetPokemonStatName(application->template, 1, 5);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 18:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(application->template, 1, 0);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 19:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(application->template, 1, 1);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 20:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(application->template, 1, 2);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 21:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(application->template, 1, 3);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 22:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(application->template, 1, 4);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 23:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 110 + param2);
        StringTemplate_SetPokemonStatName(application->template, 1, 5);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 25:
    case 26:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 72);
        StringTemplate_SetMoveName(application->template, 0, param2);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        break;
    case 27:
        MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00069, application->tmpString);
        break;
    default:
        MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00105, application->tmpString);
    }
}

void sub_020852B8(PartyMenuApplication *application)
{
    switch (sub_02084B70(application->partyMenu->usedItemID)) {
    case 0:
    case 28:
        break;
    case 1:
        break;
    case 2:
        application->unk_B00 = sub_02085A70;
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
        application->unk_B00 = sub_02085384;
        break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
        application->unk_B00 = sub_02085424;
        break;
    case 11:
        application->unk_B00 = sub_020855C4;
        break;
    }
}

int sub_02085348(void *param0)
{
    PartyMenuApplication *application = (PartyMenuApplication *)param0;

    if (Text_IsPrinterActive(application->textPrinterID) != 0) {
        return 5;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    return 5;
}

static int sub_02085384(void *param0)
{
    PartyMenuApplication *application = (PartyMenuApplication *)param0;

    Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, 0, GetCurrentMapLabel(application), HEAP_ID_PARTY_MENU);
    PartyMenu_LoadMember(application, application->currPartySlot);
    PartyMenu_DrawMemberPanelData(application, application->currPartySlot);
    PartyMenu_LoadMemberWindowTiles(application, application->currPartySlot);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, application->partyMembers[application->currPartySlot].statusIcon);
    BufferUsedItemMessage(application, application->partyMenu->usedItemID, 0);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

    application->unk_B00 = sub_02085348;

    return 5;
}

static int sub_02085424(void *applicationPtr)
{
    PartyMenuApplication *application;
    Pokemon *mon;
    u8 EVs[7];

    application = (PartyMenuApplication *)applicationPtr;
    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    EVs[0] = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    EVs[1] = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    EVs[2] = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    EVs[3] = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    EVs[4] = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    EVs[5] = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);
    EVs[6] = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, 0, GetCurrentMapLabel(application), 12);
    PartyMenu_LoadMember(application, application->currPartySlot);
    PartyMenu_DrawMemberPanelData(application, application->currPartySlot);
    PartyMenu_LoadMemberWindowTiles(application, application->currPartySlot);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, application->partyMembers[application->currPartySlot].statusIcon);

    if ((EVs[0] != Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL)) || (EVs[1] != Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL)) || (EVs[2] != Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL)) || (EVs[3] != Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL)) || (EVs[4] != Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL)) || (EVs[5] != Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL))) {
        if (EVs[6] != Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL)) {
            BufferUsedItemMessage(application, application->partyMenu->usedItemID, 0);
        } else {
            BufferUsedItemMessage(application, application->partyMenu->usedItemID, 1);
        }
    } else {
        BufferUsedItemMessage(application, application->partyMenu->usedItemID, 2);
    }

    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
    application->unk_B00 = sub_02085348;

    return 5;
}

static int sub_020855C4(void *applicationPtr)
{
    PartyMenuApplication *application;
    Pokemon *mon;
    Strbuf *strBuf;
    u32 curHP;
    u32 summaryCondition;

    application = (PartyMenuApplication *)applicationPtr;

    Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, 0, GetCurrentMapLabel(application), HEAP_ID_PARTY_MENU);

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

    if (application->partyMembers[application->currPartySlot].curHP == 0) {
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 70);
    } else if (application->partyMembers[application->currPartySlot].curHP == curHP) {
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 71);
    } else {
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 64);
    }

    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetNumber(application->template, 1, curHP - application->partyMembers[application->currPartySlot].curHP, 3, 0, 1);
    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);

    summaryCondition = PokemonSummaryScreen_StatusIconAnimIdx(mon);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, summaryCondition);

    if (summaryCondition == SUMMARY_CONDITION_NONE) {
        application->partyMembers[application->currPartySlot].statusIcon = SUMMARY_CONDITION_NONE;
        PartyMenu_PrintMemberLevel(application, application->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
    application->unk_B00 = (void *)PokemonSummaryScreen_UpdateHPBar;
    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

    return 5;
}

static int PokemonSummaryScreen_UpdateHPBar(PartyMenuApplication *param0)
{
    PartyMenuApplication *application = (PartyMenuApplication *)param0;
    Pokemon *mon;
    u32 curHP;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

    if (application->partyMembers[application->currPartySlot].curHP != curHP) {
        application->partyMembers[application->currPartySlot].curHP++;
    }

    PartyMenu_ClearMemberHP(application, application->currPartySlot);
    Window_FillTilemap(&application->windows[3 + application->currPartySlot * 5], 0);
    PartyMenu_PrintMemberCurrentHP(application, application->currPartySlot);
    PartyMenu_DrawMemberHealthbar(application, application->currPartySlot);

    if (application->partyMembers[application->currPartySlot].curHP == curHP) {
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->unk_B00 = sub_02085348;
    }

    return 5;
}

BOOL CheckItemSacredAsh(u16 itemID)
{
    if (Item_LoadParam(itemID, ITEM_PARAM_REVIVE_ALL, HEAP_ID_PARTY_MENU) != 0) {
        return TRUE;
    }

    return FALSE;
}

static u8 GetFirstFaintedMon(PartyMenuApplication *application, u8 startIndex)
{
    u8 partySlot;

    if (startIndex >= 6) {
        return 0xff;
    }

    for (partySlot = startIndex; partySlot < 6; partySlot++) {
        if ((application->partyMembers[partySlot].isPresent != FALSE) && (application->partyMembers[partySlot].curHP == 0)) {
            return partySlot;
        }
    }

    return 0xff;
}

int sub_02085804(PartyMenuApplication *application)
{
    Pokemon *mon;
    Strbuf *strBuf;
    u32 curHP;
    u8 v3;

    switch (application->unk_B0E) {
    case 0:
        application->currPartySlot = GetFirstFaintedMon(application, 0);

        if (application->currPartySlot == 0xff) {
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00105, application->tmpString);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->unk_B00 = sub_02085348;
            PartyMenu_UpdateCursor(application, 0, 1);
            application->currPartySlot = 7;

            return 5;
        }

        if (application->currPartySlot != 0) {
            PartyMenu_UpdateSlotPalette(application, 0);
        }
    case 1:

        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        Pokemon_ApplyItemEffects(mon, application->partyMenu->usedItemID, 0, GetCurrentMapLabel(application), HEAP_ID_PARTY_MENU);

        curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 70);

        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);

        application->partyMembers[application->currPartySlot].statusIcon = 7;

        PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, application->partyMembers[application->currPartySlot].statusIcon);
        PartyMenu_PrintMemberLevel(application, application->currPartySlot);
        PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
        PartyMenu_UpdateCursor(application, application->currPartySlot, 1);
        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

        application->unk_B0E++;
        break;
    case 2:
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

        application->partyMembers[application->currPartySlot].curHP++;

        PartyMenu_ClearMemberHP(application, application->currPartySlot);
        Window_FillTilemap(&application->windows[3 + application->currPartySlot * 5], 0);
        PartyMenu_PrintMemberCurrentHP(application, application->currPartySlot);
        PartyMenu_DrawMemberHealthbar(application, application->currPartySlot);

        if (application->partyMembers[application->currPartySlot].curHP == curHP) {
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->unk_B0E++;
        }
        break;
    case 3:
        if (Text_IsPrinterActive(application->textPrinterID) != 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            v3 = application->currPartySlot;
            application->currPartySlot = GetFirstFaintedMon(application, application->currPartySlot + 1);

            if (application->currPartySlot != 0xff) {
                Window_EraseMessageBox(&application->windows[34], 0);
                PartyMenu_UpdateSlotPalette(application, v3);
                application->unk_B0E = 1;
            } else {
                Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
                application->partyMenu->menuSelectionResult = 0;
                application->currPartySlot = 7;
                return 32;
            }
        }
        break;
    }

    return 7;
}

static int sub_02085A70(void *applicationPtr)
{
    PartyMenuApplication *application;
    Pokemon *mon;
    Strbuf *strBuf;
    u32 unused;
    u32 summaryCondition;

    application = (PartyMenuApplication *)applicationPtr;
    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    application->monStats[0] = (u16)Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    application->monStats[1] = (u16)Pokemon_GetValue(mon, MON_DATA_ATK, NULL);
    application->monStats[2] = (u16)Pokemon_GetValue(mon, MON_DATA_DEF, NULL);
    application->monStats[3] = (u16)Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL);
    application->monStats[4] = (u16)Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL);
    application->monStats[5] = (u16)Pokemon_GetValue(mon, MON_DATA_SPEED, NULL);

    Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, 0, GetCurrentMapLabel(application), HEAP_ID_PARTY_MENU);

    application->partyMembers[application->currPartySlot].level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    application->partyMembers[application->currPartySlot].curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    application->partyMembers[application->currPartySlot].maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);

    strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 193);

    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetNumber(application->template, 1, application->partyMembers[application->currPartySlot].level, 3, 0, 1);
    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);

    summaryCondition = PokemonSummaryScreen_StatusIconAnimIdx(mon);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, summaryCondition);

    if (summaryCondition == SUMMARY_CONDITION_NONE) {
        application->partyMembers[application->currPartySlot].statusIcon = SUMMARY_CONDITION_NONE;
        PartyMenu_PrintMemberLevel(application, application->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(application, application->currPartySlot);

    application->unk_B00 = (void *)PokemonSummaryScreen_UpdateHPBar;

    PartyMenu_DrawMemberPanelData(application, application->currPartySlot);
    PartyMenu_LoadMemberWindowTiles(application, application->currPartySlot);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->unk_B00 = sub_02085C50;
    application->unk_B13 = 0;

    return 5;
}

static int sub_02085C50(void *applicationPtr)
{
    PartyMenuApplication *application;
    Pokemon *mon;
    Strbuf *strBuf;

    application = applicationPtr;

    switch (application->unk_B13) {
    case 0:
        if (Text_IsPrinterActive(application->textPrinterID) == 0) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PartyMenu_DrawLevelUpStatIncreases(application);
                application->unk_B13 = 1;
            }
        }
        break;
    case 1:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            PartyMenu_DrawLevelUpNewStatValues(application);
            application->unk_B13 = 2;
        }
        break;
    case 2:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            PartyMenu_RemoveContextWindow(application);
            application->unk_B13 = 3;
            application->partyMenu->unk_34 = 0;
        }
        break;
    case 3:
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

        switch (Pokemon_LevelUpMove(mon, &application->partyMenu->unk_34, &application->partyMenu->learnedMove)) {
        case 0x0:
            application->unk_B13 = 6;
            break;
        case 0xffff:
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);

            strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 52);

            StringTemplate_Format(application->template, application->tmpString, strBuf);
            Strbuf_Free(strBuf);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

            application->unk_B04.unk_00 = sub_02085FB4;
            application->unk_B04.unk_04 = sub_02086008;
            application->unk_B0E = 26;

            return 24;
        case 0xfffe:
            break;
        default:
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);

            strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 194);

            StringTemplate_Format(application->template, application->tmpString, strBuf);
            Strbuf_Free(strBuf);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);
            application->unk_B13 = 4;
            break;
        }
        break;
    case 4:
        if (Text_IsPrinterActive(application->textPrinterID) == 0) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                application->unk_B13 = 3;
            }
        }
        break;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            TeachMove(application, mon, application->partyMenu->selectedMoveSlot);
            strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 61);

            StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
            StringTemplate_Format(application->template, application->tmpString, strBuf);
            Strbuf_Free(strBuf);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

            application->unk_B13 = 4;
        }
        break;
    case 6: {
        Pokemon *mon;
        FieldSystem *fieldSystem;
        int v5;

        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        fieldSystem = application->partyMenu->fieldSystem;
        v5 = MapHeader_GetMapEvolutionMethod(fieldSystem->location->mapId);
        application->partyMenu->evoTargetSpecies = Pokemon_GetEvolutionTargetSpecies(application->partyMenu->party, mon, EVO_CLASS_BY_LEVEL, v5, &application->partyMenu->evoType);

        if (application->partyMenu->evoTargetSpecies != 0) {
            application->partyMenu->menuSelectionResult = 9;
        } else {
            application->partyMenu->menuSelectionResult = 0;
        }
    }
        return 32;
    }

    return 5;
}

int sub_02085EF4(PartyMenuApplication *application)
{
    Pokemon *mon;
    Strbuf *strBuf;

    application->unk_B00 = sub_02085C50;
    application->unk_B13 = 3;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));

    if (application->partyMenu->selectedMoveSlot == 4) {
        StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
        return sub_02086008(application);
    }

    StringTemplate_SetMoveName(application->template, 1, Pokemon_GetValue(mon, 54 + application->partyMenu->selectedMoveSlot, NULL));
    strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 60);
    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->unk_B0E = 5;
    application->unk_B13 = 5;

    return 24;
}

static int sub_02085FB4(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 59);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->partyMenu->menuSelectionResult = 5;
    application->unk_B0E = 25;

    return 24;
}

static int sub_02086008(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 55);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->unk_B04.unk_00 = sub_02086060;
    application->unk_B04.unk_04 = sub_020860AC;
    application->unk_B0E = 26;

    return 24;
}

static int sub_02086060(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 58);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->unk_B0E = 5;
    application->unk_B13 = 4;

    return 24;
}

static int sub_020860AC(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 52);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->unk_B04.unk_00 = sub_02085FB4;
    application->unk_B04.unk_04 = sub_02086008;
    application->unk_B0E = 26;

    return 24;
}

u8 PartyMenu_CanMonLearnMove(PartyMenuApplication *application, Pokemon *mon)
{
    u8 moveSlot;

    for (moveSlot = 0; moveSlot < LEARNED_MOVES_MAX; moveSlot++) {
        u16 moveID = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

        if (moveID == application->partyMenu->learnedMove) {
            return MON_MOVE_RESULT_ALREADY_LEARNED;
        }

        if (moveID == MOVE_NONE) {
            break;
        }
    }

    if (Pokemon_CanLearnTM(mon, Item_TMHMNumber(application->partyMenu->usedItemID)) == FALSE) {
        return MON_MOVE_RESULT_CANNOT_LEARN;
    }

    if (moveSlot == LEARNED_MOVES_MAX) {
        return MON_MOVE_RESULT_MUST_FORGET_FIRST;
    }

    return moveSlot;
}

int sub_0208615C(PartyMenuApplication *application)
{
    Pokemon *mon;
    Strbuf *strBuf;
    u32 v2;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    v2 = PartyMenu_CanMonLearnMove(application, mon);

    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);

    switch (v2) {
    case 0:
    case 1:
    case 2:
    case 3:
        TeachMove(application, mon, v2);
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 61);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->partyMenu->menuSelectionResult = 0;
        application->unk_B0E = 25;
        break;
    case 0xfd:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 63);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->partyMenu->menuSelectionResult = 0;
        application->unk_B0E = 25;
        break;
    case 0xfe:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 52);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

        application->unk_B04.unk_00 = sub_02086438;
        application->unk_B04.unk_04 = sub_0208648C;
        application->unk_B0E = 26;
        break;
    case 0xff:
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 62);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

        application->partyMenu->menuSelectionResult = 0;
        application->unk_B0E = 25;
        break;
    }

    return 24;
}

int sub_020862F8(PartyMenuApplication *application)
{
    Pokemon *mon;
    Strbuf *strBuf;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));

    if (application->partyMenu->selectedMoveSlot == 4) {
        StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
        return sub_0208648C(application);
    }

    StringTemplate_SetMoveName(application->template, 1, Pokemon_GetValue(mon, 54 + application->partyMenu->selectedMoveSlot, NULL));
    strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 60);
    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->unk_B0E = 22;
    return 24;
}

int sub_020863A0(PartyMenuApplication *application)
{
    Pokemon *mon;
    Strbuf *strBuf;

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

        TeachMove(application, mon, application->partyMenu->selectedMoveSlot);
        strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 61);
        StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
        StringTemplate_Format(application->template, application->tmpString, strBuf);
        Strbuf_Free(strBuf);
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

        application->partyMenu->menuSelectionResult = 0;
        application->unk_B0E = 25;

        return 24;
    }

    return 22;
}

static int sub_02086438(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 59);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->partyMenu->menuSelectionResult = 4;
    application->unk_B0E = 25;

    return 24;
}

static int sub_0208648C(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 55);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->unk_B04.unk_00 = sub_020864E4;
    application->unk_B04.unk_04 = sub_02086538;
    application->unk_B0E = 26;

    return 24;
}

static int sub_020864E4(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 58);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->partyMenu->menuSelectionResult = 0;
    application->unk_B0E = 25;

    return 24;
}

static int sub_02086538(void *applicationPtr)
{
    PartyMenuApplication *application = applicationPtr;
    Strbuf *strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 52);

    StringTemplate_Format(application->template, application->tmpString, strBuf);
    Strbuf_Free(strBuf);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->unk_B04.unk_00 = sub_02086438;
    application->unk_B04.unk_04 = sub_0208648C;
    application->unk_B0E = 26;

    return 24;
}

static void TeachMove(PartyMenuApplication *application, Pokemon *mon, u32 moveSlot)
{
    u32 tempVar = application->partyMenu->learnedMove;
    Pokemon_SetValue(mon, MON_DATA_MOVE1 + moveSlot, &tempVar);

    tempVar = 0;
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &tempVar);

    tempVar = MoveTable_CalcMaxPP(application->partyMenu->learnedMove, 0);
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + moveSlot, &tempVar);

    if (application->partyMenu->usedItemID != 0) {
        if (Item_IsHMMove(application->partyMenu->learnedMove) == FALSE) {
            Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
        }

        Pokemon_UpdateFriendship(mon, 4, (u16)GetCurrentMapLabel(application));
    }
}

static u8 BufferLearnedMoveInSlot(PartyMenuApplication *application, u8 moveSlot)
{
    Pokemon *mon;
    Strbuf *strBuf;
    u16 moveID;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    moveID = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);
    strBuf = MessageLoader_GetNewStrbuf(application->messageLoader, 162 + moveSlot);

    StringTemplate_SetMoveName(application->template, 0, moveID);
    StringTemplate_Format(application->template, application->tmpFormat, strBuf);
    Strbuf_Free(strBuf);

    if (moveID == 0) {
        StringList_AddFromStrbuf(application->contextMenuChoices, application->tmpFormat, 0xfffffffd);
        return 0;
    }

    StringList_AddFromStrbuf(application->contextMenuChoices, application->tmpFormat, moveSlot);
    return 1;
}

void sub_020866A0(PartyMenuApplication *application, u8 param1)
{
    MenuTemplate menuTemplate;
    u8 moveCount;

    if (param1 == 0) {
        PartyMenu_PrintMediumMessage(application, pl_msg_00000453_00041, TRUE);
    } else {
        PartyMenu_PrintMediumMessage(application, pl_msg_00000453_00040, TRUE);
    }

    application->contextMenuChoices = StringList_New(4, HEAP_ID_PARTY_MENU);

    moveCount = BufferLearnedMoveInSlot(application, 0);
    moveCount += BufferLearnedMoveInSlot(application, 1);
    moveCount += BufferLearnedMoveInSlot(application, 2);
    moveCount += BufferLearnedMoveInSlot(application, 3);

    menuTemplate.choices = application->contextMenuChoices;
    menuTemplate.window = &application->windows[36];
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

    Window_DrawStandardFrame(&application->windows[36], 1, 1, 14);
    application->contextMenu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, 12, PAD_BUTTON_B);
}

int sub_02086774(PartyMenuApplication *application)
{
    u32 menuAction = Menu_ProcessInput(application->contextMenu);

    switch (menuAction) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        Window_EraseMessageBox(&application->windows[33], 1);
        Window_EraseStandardFrame(&application->windows[36], 1);
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00032, TRUE);
        return 4;
    default:
        Window_EraseMessageBox(&application->windows[33], 1);
        Window_EraseStandardFrame(&application->windows[36], 1);
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);

        if (Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, (u8)menuAction, GetCurrentMapLabel(application), 12) == 1) {
            Pokemon *v1 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            BufferUsedItemMessage(application, application->partyMenu->usedItemID, Pokemon_GetValue(v1, MON_DATA_MOVE1 + menuAction, NULL));
            Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
            Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        } else {
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00105, application->tmpString);
        }

        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

        application->partyMenu->menuSelectionResult = 0;
        application->unk_B0E = 25;

        return 24;
    }

    return 6;
}

void sub_020868B0(PartyMenuApplication *application)
{
    Window_EraseMessageBox(&application->windows[32], 1);

    if (application->partyMembers[application->currPartySlot].heldItem == ITEM_NONE) {
        MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00127, application->tmpString);
        PartyMenu_DrawMemberMail(application, application->currPartySlot);
    } else {
        MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00128, application->tmpString);
        application->currPartySlot = 7;
    }

    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->partyMenu->menuSelectionResult = 0;
    application->unk_B0E = 25;
}

static u16 GetCurrentMapLabel(PartyMenuApplication *application)
{
    FieldSystem *fieldSystem = application->partyMenu->fieldSystem;
    return (u16)MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
}

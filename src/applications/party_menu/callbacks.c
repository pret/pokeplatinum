#include "applications/party_menu/callbacks.h"

#include <nitro.h>

#include "constants/heap.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/string.h"
#include "generated/moves.h"
#include "generated/pokemon_data_params.h"
#include "generated/pokemon_stats.h"

#include "struct_defs/pokemon.h"
#include "struct_defs/species.h"

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
#include "species.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/party_menu.h"

static enum PartyMenuState PartyMenuCB_LevelUp(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_UpdateHPBar(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_UseItem_Basic(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_UseItem_SubtractEVs(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_UseItem_RestoreHP(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_UseItem_RareCandy(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TeachMove_ForgetMove(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TeachMove_PromptStopTrying(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TeachMove_StopTrying(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_TeachMove_WantsToLearn(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_LevelMove_ForgetMove(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_LevelMove_PromptStopTrying(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_LevelMove_StopTrying(PartyMenuApplication *application);
static enum PartyMenuState PartyMenuCB_LevelMove_WantsToLearn(PartyMenuApplication *application);

static void TeachMove(PartyMenuApplication *application, Pokemon *mon, u32 moveSlot);
static u16 GetCurrentMapLabel(PartyMenuApplication *application);

enum {
    ITEMEFFECT_NONE = 0,
    ITEMEFFECT_SACRED_ASH,
    ITEMEFFECT_RARE_CANDY,
    ITEMEFFECT_CURE_SLEEP,
    ITEMEFFECT_CURE_POISON,
    ITEMEFFECT_CURE_BURN,
    ITEMEFFECT_CURE_FREEZE,
    ITEMEFFECT_CURE_PARALYSIS,
    ITEMEFFECT_CURE_CONFUSION,
    ITEMEFFECT_CURE_ALL_STATUS,
    ITEMEFFECT_CURE_INFATUATION,
    ITEMEFFECT_RESTORE_HP,
    ITEMEFFECT_ADD_HP_EVS,
    ITEMEFFECT_ADD_ATK_EVS,
    ITEMEFFECT_ADD_DEF_EVS,
    ITEMEFFECT_ADD_SPEED_EVS,
    ITEMEFFECT_ADD_SPATK_EVS,
    ITEMEFFECT_ADD_SPDEF_EVS,
    ITEMEFFECT_SUB_HP_EVS,
    ITEMEFFECT_SUB_ATK_EVS,
    ITEMEFFECT_SUB_DEF_EVS,
    ITEMEFFECT_SUB_SPEED_EVS,
    ITEMEFFECT_SUB_SPATK_EVS,
    ITEMEFFECT_SUB_SPDEF_EVS,
    ITEMEFFECT_EVOLVE,
    ITEMEFFECT_INCREASE_PP,
    ITEMEFFECT_MAXIMIZE_PP,
    ITEMEFFECT_RESTORE_PP,

    ITEMEFFECT_INVALID,
};

enum {
    STATUSSHIFT_SLEEP = 0,
    STATUSSHIFT_POISON,
    STATUSSHIFT_BURN,
    STATUSSHIFT_FREEZE,
    STATUSSHIFT_PARALYSIS,
    STATUSSHIFT_CONFUSION,
};

#define STATUSMASK_SLEEP     (1 << STATUSSHIFT_SLEEP)
#define STATUSMASK_POISON    (1 << STATUSSHIFT_POISON)
#define STATUSMASK_BURN      (1 << STATUSSHIFT_BURN)
#define STATUSMASK_FREEZE    (1 << STATUSSHIFT_FREEZE)
#define STATUSMASK_PARALYSIS (1 << STATUSSHIFT_PARALYSIS)
#define STATUSMASK_CONFUSION (1 << STATUSSHIFT_CONFUSION)
#define STATUSMASK_ALL       (STATUSMASK_SLEEP | STATUSMASK_POISON | STATUSMASK_BURN | STATUSMASK_FREEZE | STATUSMASK_PARALYSIS | STATUSMASK_CONFUSION)

static u8 NormalizeItemEffect(u16 itemID)
{
    ItemData *itemData = Item_Load(itemID, 0, HEAP_ID_PARTY_MENU);

    if (Item_Get(itemData, ITEM_PARAM_PARTY_USE) != TRUE) {
        Heap_Free(itemData);
        return ITEMEFFECT_INVALID;
    }

    if (Item_Get(itemData, ITEM_PARAM_ATK_STAGES) != 0
        || Item_Get(itemData, ITEM_PARAM_DEF_STAGES) != 0
        || Item_Get(itemData, ITEM_PARAM_SPATK_STAGES) != 0
        || Item_Get(itemData, ITEM_PARAM_SPDEF_STAGES) != 0
        || Item_Get(itemData, ITEM_PARAM_SPEED_STAGES) != 0
        || Item_Get(itemData, ITEM_PARAM_ACC_STAGES) != 0
        || Item_Get(itemData, ITEM_PARAM_CRIT_STAGES) != 0) {
        Heap_Free(itemData);
        return ITEMEFFECT_NONE;
    }

    if (Item_Get(itemData, ITEM_PARAM_REVIVE_ALL) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_SACRED_ASH;
    }

    if (Item_Get(itemData, ITEM_PARAM_LEVEL_UP) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_RARE_CANDY;
    }

    s32 itemParam = Item_Get(itemData, ITEM_PARAM_HEAL_SLEEP) << STATUSSHIFT_SLEEP;
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_POISON) << STATUSSHIFT_POISON);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_BURN) << STATUSSHIFT_BURN);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_FREEZE) << STATUSSHIFT_FREEZE);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_PARALYSIS) << STATUSSHIFT_PARALYSIS);
    itemParam += (Item_Get(itemData, ITEM_PARAM_HEAL_CONFUSION) << STATUSSHIFT_CONFUSION);

    switch (itemParam) {
    case STATUSMASK_SLEEP:
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_SLEEP;
    case STATUSMASK_POISON:
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_POISON;
    case STATUSMASK_BURN:
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_BURN;
    case STATUSMASK_FREEZE:
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_FREEZE;
    case STATUSMASK_PARALYSIS:
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_PARALYSIS;
    case STATUSMASK_CONFUSION:
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_CONFUSION;

    case STATUSMASK_ALL:
        if (Item_Get(itemData, ITEM_PARAM_HP_RESTORE) != FALSE) {
            Heap_Free(itemData);
            return ITEMEFFECT_RESTORE_HP; // Full Restore
        } else {
            Heap_Free(itemData);
            return ITEMEFFECT_CURE_ALL_STATUS;
        }
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_ATTRACT) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_CURE_INFATUATION;
    }

    if (Item_Get(itemData, ITEM_PARAM_HP_RESTORE) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_RESTORE_HP;
    }

#define CHECK_AFFECTS_EVS(stat)                                  \
    do {                                                         \
        itemParam = Item_Get(itemData, ITEM_PARAM_##stat##_EVS); \
        if (itemParam > 0) {                                     \
            Heap_Free(itemData);                                 \
            return ITEMEFFECT_ADD_##stat##_EVS;                  \
        }                                                        \
        if (itemParam < 0) {                                     \
            Heap_Free(itemData);                                 \
            return ITEMEFFECT_SUB_##stat##_EVS;                  \
        }                                                        \
    } while (0)

    CHECK_AFFECTS_EVS(HP);
    CHECK_AFFECTS_EVS(ATK);
    CHECK_AFFECTS_EVS(DEF);
    CHECK_AFFECTS_EVS(SPEED);
    CHECK_AFFECTS_EVS(SPATK);
    CHECK_AFFECTS_EVS(SPDEF);

#undef CHECK_AFFECTS_EVS

    if (Item_Get(itemData, ITEM_PARAM_EVOLVE) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_EVOLVE;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_UP) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_INCREASE_PP;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_MAX) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_MAXIMIZE_PP;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_RESTORE) != FALSE || Item_Get(itemData, ITEM_PARAM_PP_RESTORE_ALL) != FALSE) {
        Heap_Free(itemData);
        return ITEMEFFECT_RESTORE_PP;
    }

    Heap_Free(itemData);
    return ITEMEFFECT_INVALID;
}

static void BufferUsedItemMessage(PartyMenuApplication *application, u16 itemID, u32 offset)
{
#define FORMAT_STRING(id, callback)                                                   \
    do {                                                                              \
        string = MessageLoader_GetNewString(application->messageLoader, id);          \
        (void)callback;                                                               \
        StringTemplate_Format(application->template, application->tmpString, string); \
        String_Free(string);                                                          \
    } while (0)

    String *string;
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));

    switch (NormalizeItemEffect(itemID)) {
    case ITEMEFFECT_CURE_POISON:
        FORMAT_STRING(PartyMenu_Text_MonWasCuredOfPoison, NULL);
        break;

    case ITEMEFFECT_CURE_SLEEP:
        FORMAT_STRING(PartyMenu_Text_MonWokeUp, NULL);
        break;

    case ITEMEFFECT_CURE_BURN:
        FORMAT_STRING(PartyMenu_Text_MonsBurnWasHealed, NULL);
        break;

    case ITEMEFFECT_CURE_FREEZE:
        FORMAT_STRING(PartyMenu_Text_MonWasThawedOut, NULL);
        break;

    case ITEMEFFECT_CURE_PARALYSIS:
        FORMAT_STRING(PartyMenu_Text_MonWasCuredOfParalysis, NULL);
        break;

    case ITEMEFFECT_CURE_CONFUSION:
        FORMAT_STRING(PartyMenu_Text_MonSnappedOutOfConfusion, NULL);
        break;

    case ITEMEFFECT_CURE_INFATUATION:
        FORMAT_STRING(PartyMenu_Text_MonGotOverInfatuation, NULL);
        break;

    case ITEMEFFECT_CURE_ALL_STATUS:
        FORMAT_STRING(PartyMenu_Text_MonBecameHealthy, NULL);
        break;

    case ITEMEFFECT_ADD_HP_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBaseStatRose, StringTemplate_SetPokemonStatName(application->template, 1, STAT_HP));
        break;

    case ITEMEFFECT_ADD_ATK_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBaseStatRose, StringTemplate_SetPokemonStatName(application->template, 1, STAT_ATTACK));
        break;

    case ITEMEFFECT_ADD_DEF_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBaseStatRose, StringTemplate_SetPokemonStatName(application->template, 1, STAT_DEFENSE));
        break;

    case ITEMEFFECT_ADD_SPEED_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBaseStatRose, StringTemplate_SetPokemonStatName(application->template, 1, STAT_SPEED));
        break;

    case ITEMEFFECT_ADD_SPATK_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBaseStatRose, StringTemplate_SetPokemonStatName(application->template, 1, STAT_SPECIAL_ATTACK));
        break;

    case ITEMEFFECT_ADD_SPDEF_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBaseStatRose, StringTemplate_SetPokemonStatName(application->template, 1, STAT_SPECIAL_DEFENSE));
        break;

    case ITEMEFFECT_SUB_HP_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBecameMoreFriendly + offset, StringTemplate_SetPokemonStatName(application->template, 1, STAT_HP));
        break;

    case ITEMEFFECT_SUB_ATK_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBecameMoreFriendly + offset, StringTemplate_SetPokemonStatName(application->template, 1, STAT_ATTACK));
        break;

    case ITEMEFFECT_SUB_DEF_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBecameMoreFriendly + offset, StringTemplate_SetPokemonStatName(application->template, 1, STAT_DEFENSE));
        break;

    case ITEMEFFECT_SUB_SPEED_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBecameMoreFriendly + offset, StringTemplate_SetPokemonStatName(application->template, 1, STAT_SPEED));
        break;

    case ITEMEFFECT_SUB_SPATK_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBecameMoreFriendly + offset, StringTemplate_SetPokemonStatName(application->template, 1, STAT_SPECIAL_ATTACK));
        break;

    case ITEMEFFECT_SUB_SPDEF_EVS:
        FORMAT_STRING(PartyMenu_Text_MonBecameMoreFriendly + offset, StringTemplate_SetPokemonStatName(application->template, 1, STAT_SPECIAL_DEFENSE));
        break;

    case ITEMEFFECT_INCREASE_PP:
    case ITEMEFFECT_MAXIMIZE_PP:
        FORMAT_STRING(PartyMenu_Text_MovesPPIncreased, StringTemplate_SetMoveName(application->template, 0, offset));
        break;

    case ITEMEFFECT_RESTORE_PP:
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_PPWasRestored, application->tmpString);
        break;

    default:
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItWontHaveAnyEffect, application->tmpString);
        break;
    }
}

void PartyMenu_SetItemUseCallback(PartyMenuApplication *application)
{
    switch (NormalizeItemEffect(application->partyMenu->usedItemID)) {
    case ITEMEFFECT_NONE:
    case ITEMEFFECT_INVALID:
    case ITEMEFFECT_SACRED_ASH:
    case ITEMEFFECT_EVOLVE:
        break;

    case ITEMEFFECT_RARE_CANDY:
        application->callback = PartyMenuCB_UseItem_RareCandy;
        break;

    case ITEMEFFECT_CURE_SLEEP:
    case ITEMEFFECT_CURE_POISON:
    case ITEMEFFECT_CURE_BURN:
    case ITEMEFFECT_CURE_FREEZE:
    case ITEMEFFECT_CURE_PARALYSIS:
    case ITEMEFFECT_CURE_CONFUSION:
    case ITEMEFFECT_CURE_ALL_STATUS:
    case ITEMEFFECT_CURE_INFATUATION:
    case ITEMEFFECT_ADD_HP_EVS:
    case ITEMEFFECT_ADD_ATK_EVS:
    case ITEMEFFECT_ADD_DEF_EVS:
    case ITEMEFFECT_ADD_SPEED_EVS:
    case ITEMEFFECT_ADD_SPATK_EVS:
    case ITEMEFFECT_ADD_SPDEF_EVS:
    case ITEMEFFECT_INCREASE_PP:
    case ITEMEFFECT_MAXIMIZE_PP:
    case ITEMEFFECT_RESTORE_PP:
        application->callback = PartyMenuCB_UseItem_Basic;
        break;

    case ITEMEFFECT_SUB_HP_EVS:
    case ITEMEFFECT_SUB_ATK_EVS:
    case ITEMEFFECT_SUB_DEF_EVS:
    case ITEMEFFECT_SUB_SPEED_EVS:
    case ITEMEFFECT_SUB_SPATK_EVS:
    case ITEMEFFECT_SUB_SPDEF_EVS:
        application->callback = PartyMenuCB_UseItem_SubtractEVs;
        break;

    case ITEMEFFECT_RESTORE_HP:
        application->callback = PartyMenuCB_UseItem_RestoreHP;
        break;
    }
}

enum PartyMenuState PartyMenuCB_PrintThenWaitABPress(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID)) {
        return PARTY_MENU_STATE_EXEC_CALLBACK;
    }

    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_FADE_OUT;
    }

    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

static enum PartyMenuState PartyMenuCB_UseItem_Basic(PartyMenuApplication *application)
{
    Party_ApplyItemEffectsToMember(
        application->partyMenu->party,
        application->partyMenu->usedItemID,
        application->currPartySlot,
        0,
        GetCurrentMapLabel(application),
        HEAP_ID_PARTY_MENU);

    PartyMenu_LoadMember(application, application->currPartySlot);
    PartyMenu_DrawMemberPanelData(application, application->currPartySlot);
    PartyMenu_LoadMemberWindowTiles(application, application->currPartySlot);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, application->partyMembers[application->currPartySlot].statusIcon);
    BufferUsedItemMessage(application, application->partyMenu->usedItemID, 0);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

    application->callback = PartyMenuCB_PrintThenWaitABPress;
    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

static enum PartyMenuState PartyMenuCB_UseItem_SubtractEVs(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    u8 EVs[] = {
        Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL),
        Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL),
        Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL),
        Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL),
        Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL),
        Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL),
        Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL),
    };

    Party_ApplyItemEffectsToMember(
        application->partyMenu->party,
        application->partyMenu->usedItemID,
        application->currPartySlot,
        0,
        GetCurrentMapLabel(application),
        HEAP_ID_PARTY_MENU);

    PartyMenu_LoadMember(application, application->currPartySlot);
    PartyMenu_DrawMemberPanelData(application, application->currPartySlot);
    PartyMenu_LoadMemberWindowTiles(application, application->currPartySlot);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, application->partyMembers[application->currPartySlot].statusIcon);

    if (EVs[0] != Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL)
        || EVs[1] != Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL)
        || EVs[2] != Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL)
        || EVs[3] != Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL)
        || EVs[4] != Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL)
        || EVs[5] != Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL)) {
        if (EVs[6] != Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL)) {
            BufferUsedItemMessage(application, application->partyMenu->usedItemID, 0);
        } else {
            BufferUsedItemMessage(application, application->partyMenu->usedItemID, 1);
        }
    } else {
        BufferUsedItemMessage(application, application->partyMenu->usedItemID, 2);
    }

    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->callback = PartyMenuCB_PrintThenWaitABPress;
    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

static enum PartyMenuState PartyMenuCB_UseItem_RestoreHP(PartyMenuApplication *application)
{
    Party_ApplyItemEffectsToMember(
        application->partyMenu->party,
        application->partyMenu->usedItemID,
        application->currPartySlot,
        0,
        GetCurrentMapLabel(application),
        HEAP_ID_PARTY_MENU);

    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u32 curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

    String *string;
    if (application->partyMembers[application->currPartySlot].curHP == 0) {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonRegainedHealth);
    } else if (application->partyMembers[application->currPartySlot].curHP == curHP) {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonBecameHealthy);
    } else {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonsHPWasRestored);
    }

    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetNumber(application->template, 1, curHP - application->partyMembers[application->currPartySlot].curHP, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);

    u32 summaryCondition = PokemonSummaryScreen_StatusIconAnimIdx(mon);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, summaryCondition);

    if (summaryCondition == SUMMARY_CONDITION_NONE) {
        application->partyMembers[application->currPartySlot].statusIcon = SUMMARY_CONDITION_NONE;
        PartyMenu_PrintMemberLevel(application, application->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
    application->callback = PartyMenuCB_UpdateHPBar;
    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

static enum PartyMenuState PartyMenuCB_UpdateHPBar(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u32 curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

    if (application->partyMembers[application->currPartySlot].curHP != curHP) {
        application->partyMembers[application->currPartySlot].curHP++;
    }

    PartyMenu_ClearMemberHP(application, application->currPartySlot);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + application->currPartySlot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    PartyMenu_PrintMemberCurrentHP(application, application->currPartySlot);
    PartyMenu_DrawMemberHealthbar(application, application->currPartySlot);

    if (application->partyMembers[application->currPartySlot].curHP == curHP) {
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->callback = PartyMenuCB_PrintThenWaitABPress;
    }

    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

BOOL CheckItemSacredAsh(u16 itemID)
{
    return !!Item_LoadParam(itemID, ITEM_PARAM_REVIVE_ALL, HEAP_ID_PARTY_MENU);
}

static u8 FindNextFaintedMember(PartyMenuApplication *application, u8 startIndex)
{
    if (startIndex >= MAX_PARTY_SIZE) {
        return 0xFF;
    }

    for (u8 partySlot = startIndex; partySlot < MAX_PARTY_SIZE; partySlot++) {
        if (application->partyMembers[partySlot].isPresent && application->partyMembers[partySlot].curHP == 0) {
            return partySlot;
        }
    }

    return 0xFF;
}

enum {
    SACREDASH_STATE_START = 0,
    SACREDASH_STATE_CURE_STATUS,
    SACREDASH_STATE_RESTORE_HP,
    SACREDASH_STATE_CHECK_LOOP,
};

enum PartyMenuState PartyMenuCB_HandleSacredAsh(PartyMenuApplication *application)
{
    Pokemon *mon;
    String *string;
    u32 curHP;

    switch (application->sacredAshState) {
    case SACREDASH_STATE_START:
        application->currPartySlot = FindNextFaintedMember(application, 0);

        if (application->currPartySlot == 0xFF) {
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItWontHaveAnyEffect, application->tmpString);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->callback = PartyMenuCB_PrintThenWaitABPress;
            PartyMenu_UpdateCursor(application, 0, 1);
            application->currPartySlot = PARTY_MENU_SLOT_CANCEL;

            return PARTY_MENU_STATE_EXEC_CALLBACK;
        }

        if (application->currPartySlot != 0) {
            PartyMenu_UpdateSlotPalette(application, 0);
        }
        // fall-through
    case SACREDASH_STATE_CURE_STATUS:
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        Pokemon_ApplyItemEffects(
            mon,
            application->partyMenu->usedItemID,
            0,
            GetCurrentMapLabel(application),
            HEAP_ID_PARTY_MENU);

        curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonRegainedHealth);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);

        application->partyMembers[application->currPartySlot].statusIcon = SUMMARY_CONDITION_NONE;

        PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, application->partyMembers[application->currPartySlot].statusIcon);
        PartyMenu_PrintMemberLevel(application, application->currPartySlot);
        PartyMenu_UpdateSlotPalette(application, application->currPartySlot);
        PartyMenu_UpdateCursor(application, application->currPartySlot, 1);
        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);

        application->sacredAshState++;
        break;

    case SACREDASH_STATE_RESTORE_HP:
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

        application->partyMembers[application->currPartySlot].curHP++;

        PartyMenu_ClearMemberHP(application, application->currPartySlot);
        Window_FillTilemap(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + application->currPartySlot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
        PartyMenu_PrintMemberCurrentHP(application, application->currPartySlot);
        PartyMenu_DrawMemberHealthbar(application, application->currPartySlot);

        if (application->partyMembers[application->currPartySlot].curHP == curHP) {
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->sacredAshState++;
        }
        break;

    case SACREDASH_STATE_CHECK_LOOP:
        if (Text_IsPrinterActive(application->textPrinterID)) {
            break;
        }

        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            u8 prevSlot = application->currPartySlot;
            application->currPartySlot = FindNextFaintedMember(application, application->currPartySlot + 1);

            if (application->currPartySlot != 0xFF) {
                Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_LONG_MESSAGE], 0);
                PartyMenu_UpdateSlotPalette(application, prevSlot);
                application->sacredAshState = SACREDASH_STATE_CURE_STATUS;
            } else {
                Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
                application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
                application->currPartySlot = PARTY_MENU_SLOT_CANCEL;
                return PARTY_MENU_STATE_FADE_OUT;
            }
        }
        break;
    }

    return PARTY_MENU_STATE_USE_SACRED_ASH;
}

enum {
    LEVELUP_STATE_START = 0,
    LEVELUP_STATE_DRAW_STAT_CHANGES,
    LEVELUP_STATE_DRAW_STAT_VALUES,
    LEVELUP_STATE_CHECK_LEARNSET,
    LEVELUP_STATE_PRINT_AND_LOOPBACK,
    LEVELUP_STATE_LEARNED_MOVE,
    LEVELUP_STATE_CHECK_EVOLUTION,
};

static enum PartyMenuState PartyMenuCB_UseItem_RareCandy(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

    application->monStats[STAT_HP] = (u16)Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    application->monStats[STAT_ATTACK] = (u16)Pokemon_GetValue(mon, MON_DATA_ATK, NULL);
    application->monStats[STAT_DEFENSE] = (u16)Pokemon_GetValue(mon, MON_DATA_DEF, NULL);
    application->monStats[STAT_SPEED] = (u16)Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL);
    application->monStats[STAT_SPECIAL_ATTACK] = (u16)Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL);
    application->monStats[STAT_SPECIAL_DEFENSE] = (u16)Pokemon_GetValue(mon, MON_DATA_SPEED, NULL);

    Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, 0, GetCurrentMapLabel(application), HEAP_ID_PARTY_MENU);

    application->partyMembers[application->currPartySlot].level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    application->partyMembers[application->currPartySlot].curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    application->partyMembers[application->currPartySlot].maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);

    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_LevelUp);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetNumber(application->template, 1, application->partyMembers[application->currPartySlot].level, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);

    u32 summaryCondition = PokemonSummaryScreen_StatusIconAnimIdx(mon);
    PartyMenu_DrawMemberStatusCondition(application, application->currPartySlot, summaryCondition);

    if (summaryCondition == SUMMARY_CONDITION_NONE) {
        application->partyMembers[application->currPartySlot].statusIcon = SUMMARY_CONDITION_NONE;
        PartyMenu_PrintMemberLevel(application, application->currPartySlot);
    }

    PartyMenu_UpdateSlotPalette(application, application->currPartySlot);

    application->callback = PartyMenuCB_UpdateHPBar;

    PartyMenu_DrawMemberPanelData(application, application->currPartySlot);
    PartyMenu_LoadMemberWindowTiles(application, application->currPartySlot);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->callback = PartyMenuCB_LevelUp;
    application->callbackState = LEVELUP_STATE_START;

    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

static enum PartyMenuState PartyMenuCB_LevelUp(PartyMenuApplication *application)
{
    Pokemon *mon;
    String *string;

    switch (application->callbackState) {
    case LEVELUP_STATE_START:
        if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PartyMenu_DrawLevelUpStatIncreases(application);
                application->callbackState = LEVELUP_STATE_DRAW_STAT_CHANGES;
            }
        }
        break;

    case LEVELUP_STATE_DRAW_STAT_CHANGES:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            PartyMenu_DrawLevelUpNewStatValues(application);
            application->callbackState = LEVELUP_STATE_DRAW_STAT_VALUES;
        }
        break;

    case LEVELUP_STATE_DRAW_STAT_VALUES:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            PartyMenu_RemoveContextWindow(application);
            application->callbackState = LEVELUP_STATE_CHECK_LEARNSET;
            application->partyMenu->levelUpMoveIndex = 0;
        }
        break;

    case LEVELUP_STATE_CHECK_LEARNSET:
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

        switch (Pokemon_LevelUpMove(mon, &application->partyMenu->levelUpMoveIndex, &application->partyMenu->learnedMove)) {
        case MOVE_NONE:
            application->callbackState = LEVELUP_STATE_CHECK_EVOLUTION;
            break;

        case LEARNSET_ALL_SLOTS_FILLED:
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);

            string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonWantsToLearnMove);
            StringTemplate_Format(application->template, application->tmpString, string);
            String_Free(string);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

            application->yesnoCallbacks.onYes = PartyMenuCB_LevelMove_ForgetMove;
            application->yesnoCallbacks.onNo = PartyMenuCB_LevelMove_PromptStopTrying;
            application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;

            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;

        case LEARNSET_MOVE_ALREADY_KNOWN:
            break;

        default:
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);

            string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonLearnedMove2);
            StringTemplate_Format(application->template, application->tmpString, string);
            String_Free(string);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

            application->callbackState = LEVELUP_STATE_PRINT_AND_LOOPBACK;
            break;
        }
        break;

    case LEVELUP_STATE_PRINT_AND_LOOPBACK:
        if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                application->callbackState = LEVELUP_STATE_CHECK_LEARNSET;
            }
        }
        break;

    case LEVELUP_STATE_LEARNED_MOVE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            TeachMove(application, mon, application->partyMenu->selectedMoveSlot);
            string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonLearnedMove);

            StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
            StringTemplate_Format(application->template, application->tmpString, string);
            String_Free(string);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

            application->callbackState = LEVELUP_STATE_PRINT_AND_LOOPBACK;
        }
        break;

    case LEVELUP_STATE_CHECK_EVOLUTION:
        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        u32 mapEvoMethod = MapHeader_GetMapEvolutionMethod(application->partyMenu->fieldSystem->location->mapId);
        application->partyMenu->evoTargetSpecies = Pokemon_GetEvolutionTargetSpecies(
            application->partyMenu->party,
            mon,
            EVO_CLASS_BY_LEVEL,
            mapEvoMethod,
            &application->partyMenu->evoType);

        application->partyMenu->menuSelectionResult = application->partyMenu->evoTargetSpecies != SPECIES_NONE
            ? PARTY_MENU_EXIT_CODE_EVOLVE_BY_LEVEL
            : PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_FADE_OUT;
    }

    return PARTY_MENU_STATE_EXEC_CALLBACK;
}

enum PartyMenuState PartyMenuCB_LevelMove_Exit(PartyMenuApplication *application)
{
    application->callback = PartyMenuCB_LevelUp;
    application->callbackState = LEVELUP_STATE_CHECK_LEARNSET;

    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));

    if (application->partyMenu->selectedMoveSlot == LEARNED_MOVES_MAX) {
        StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
        return PartyMenuCB_LevelMove_PromptStopTrying(application);
    }

    StringTemplate_SetMoveName(application->template, 1, Pokemon_GetValue(mon, MON_DATA_MOVE1 + application->partyMenu->selectedMoveSlot, NULL));

    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonForgotMove);
    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->stateAfterMessage = PARTY_MENU_STATE_EXEC_CALLBACK;
    application->callbackState = LEVELUP_STATE_LEARNED_MOVE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_LevelMove_ForgetMove(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_WhichMoveShouldBeForgotten);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_OVERWRITE_MOVE_LEVEL_UP;
    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_LevelMove_PromptStopTrying(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_StopTryingToTeachMove);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->yesnoCallbacks.onYes = PartyMenuCB_LevelMove_StopTrying;
    application->yesnoCallbacks.onNo = PartyMenuCB_LevelMove_WantsToLearn;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_LevelMove_StopTrying(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonDidNotLearnMove);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->stateAfterMessage = PARTY_MENU_STATE_EXEC_CALLBACK;
    application->callbackState = LEVELUP_STATE_PRINT_AND_LOOPBACK;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_LevelMove_WantsToLearn(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonWantsToLearnMove);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->yesnoCallbacks.onYes = PartyMenuCB_LevelMove_ForgetMove;
    application->yesnoCallbacks.onNo = PartyMenuCB_LevelMove_PromptStopTrying;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

u8 PartyMenu_TeachMove_Check(PartyMenuApplication *application, Pokemon *mon)
{
    u8 moveSlot;

    for (moveSlot = 0; moveSlot < LEARNED_MOVES_MAX; moveSlot++) {
        u16 moveID = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

        if (moveID == application->partyMenu->learnedMove) {
            return TEACH_MOVE_RESULT_ALREADY_LEARNED;
        }

        if (moveID == MOVE_NONE) {
            break;
        }
    }

    if (Pokemon_CanLearnTM(mon, Item_TMHMNumber(application->partyMenu->usedItemID)) == FALSE) {
        return TEACH_MOVE_RESULT_CANNOT_LEARN;
    }

    if (moveSlot == LEARNED_MOVES_MAX) {
        return TEACH_MOVE_RESULT_MUST_FORGET_FIRST;
    }

    return moveSlot;
}

enum PartyMenuState PartyMenuCB_TeachMove(PartyMenuApplication *application)
{
    String *string;
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u32 checkResult = PartyMenu_TeachMove_Check(application, mon);

    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);

    switch (checkResult) {
    case 0:
    case 1:
    case 2:
    case 3:
        TeachMove(application, mon, checkResult);
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonLearnedMove);
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);

        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;
        break;

    case TEACH_MOVE_RESULT_ALREADY_LEARNED:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonAlreadyKnowsMove);
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);

        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;
        break;

    case TEACH_MOVE_RESULT_MUST_FORGET_FIRST:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonWantsToLearnMove);
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);

        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->yesnoCallbacks.onYes = PartyMenuCB_TeachMove_ForgetMove;
        application->yesnoCallbacks.onNo = PartyMenuCB_TeachMove_PromptStopTrying;
        application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;
        break;

    case TEACH_MOVE_RESULT_CANNOT_LEARN:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonAndMoveAreNotCompatible);
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);

        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;
        break;
    }

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

enum PartyMenuState PartyMenuCB_TeachMove_Exit(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));

    if (application->partyMenu->selectedMoveSlot == LEARNED_MOVES_MAX) {
        StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
        return PartyMenuCB_TeachMove_PromptStopTrying(application);
    }

    StringTemplate_SetMoveName(application->template, 1, Pokemon_GetValue(mon, MON_DATA_MOVE1 + application->partyMenu->selectedMoveSlot, NULL));

    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonForgotMove);
    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->stateAfterMessage = PARTY_MENU_STATE_TEACH_MOVE_HANDLE_INPUT;
    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

enum PartyMenuState PartyMenuCB_TeachMove_HandleInput(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        TeachMove(application, mon, application->partyMenu->selectedMoveSlot);

        String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonLearnedMove);
        StringTemplate_SetMoveName(application->template, 1, application->partyMenu->learnedMove);
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);
        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;

        return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
    }

    return PARTY_MENU_STATE_TEACH_MOVE_HANDLE_INPUT;
}

static enum PartyMenuState PartyMenuCB_TeachMove_ForgetMove(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_WhichMoveShouldBeForgotten);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_OVERWRITE_MOVE_TM_HM;
    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TeachMove_PromptStopTrying(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_StopTryingToTeachMove);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->yesnoCallbacks.onYes = PartyMenuCB_TeachMove_StopTrying;
    application->yesnoCallbacks.onNo = PartyMenuCB_TeachMove_WantsToLearn;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TeachMove_StopTrying(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonDidNotLearnMove);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static enum PartyMenuState PartyMenuCB_TeachMove_WantsToLearn(PartyMenuApplication *application)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonWantsToLearnMove);

    StringTemplate_Format(application->template, application->tmpString, string);
    String_Free(string);
    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, FALSE);

    application->yesnoCallbacks.onYes = PartyMenuCB_TeachMove_ForgetMove;
    application->yesnoCallbacks.onNo = PartyMenuCB_TeachMove_PromptStopTrying;
    application->stateAfterMessage = PARTY_MENU_STATE_DRAW_YES_NO_CHOICE;

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static void TeachMove(PartyMenuApplication *application, Pokemon *mon, u32 moveSlot)
{
    u32 tempVar = application->partyMenu->learnedMove;
    Pokemon_SetValue(mon, MON_DATA_MOVE1 + moveSlot, &tempVar);

    tempVar = 0;
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &tempVar);

    tempVar = MoveTable_CalcMaxPP(application->partyMenu->learnedMove, 0);
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + moveSlot, &tempVar);

    if (application->partyMenu->usedItemID != ITEM_NONE) {
        if (Item_IsHMMove(application->partyMenu->learnedMove) == FALSE) {
            Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
        }

        Pokemon_UpdateFriendship(mon, FRIENDSHIP_EVENT_LEARN_TMHM, (u16)GetCurrentMapLabel(application));
    }
}

static u8 BufferLearnedMoveInSlot(PartyMenuApplication *application, u8 moveSlot)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u16 moveID = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MoveSlot0 + moveSlot);

    StringTemplate_SetMoveName(application->template, 0, moveID);
    StringTemplate_Format(application->template, application->tmpFormat, string);
    String_Free(string);

    if (moveID == MOVE_NONE) {
        StringList_AddFromString(application->contextMenuChoices, application->tmpFormat, 0xfffffffd);
        return 0;
    }

    StringList_AddFromString(application->contextMenuChoices, application->tmpFormat, moveSlot);
    return 1;
}

void PartyMenu_MoveSelection_Display(PartyMenuApplication *application, u8 restore)
{
    if (restore == FALSE) {
        PartyMenu_PrintMediumMessage(application, PartyMenu_Text_BoostPPOfWhichMove, TRUE);
    } else {
        PartyMenu_PrintMediumMessage(application, PartyMenu_Text_RestoreWhichMove, TRUE);
    }

    application->contextMenuChoices = StringList_New(LEARNED_MOVES_MAX, HEAP_ID_PARTY_MENU);

    u8 moveCount = BufferLearnedMoveInSlot(application, 0);
    moveCount += BufferLearnedMoveInSlot(application, 1);
    moveCount += BufferLearnedMoveInSlot(application, 2);
    moveCount += BufferLearnedMoveInSlot(application, 3);

    MenuTemplate menuTemplate;
    menuTemplate.choices = application->contextMenuChoices;
    menuTemplate.window = &application->windows[PARTY_MENU_WIN_MOVE_LIST];
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 4;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;

    if (moveCount == LEARNED_MOVES_MAX) {
        menuTemplate.loopAround = TRUE;
    } else {
        menuTemplate.loopAround = FALSE;
    }

    Window_DrawStandardFrame(&application->windows[PARTY_MENU_WIN_MOVE_LIST], TRUE, 1, 14);
    application->contextMenu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, HEAP_ID_PARTY_MENU, PAD_BUTTON_B);
}

int PartyMenu_MoveSelection_HandleInput(PartyMenuApplication *application)
{
    u32 menuAction = Menu_ProcessInput(application->contextMenu);

    switch (menuAction) {
    case MENU_NOTHING_CHOSEN:
        break;

    case MENU_CANCEL:
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], TRUE);
        Window_EraseStandardFrame(&application->windows[PARTY_MENU_WIN_MOVE_LIST], TRUE);
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_UseOnWhichMon, TRUE);
        return PARTY_MENU_STATE_USE_ITEM;

    default:
        Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], TRUE);
        Window_EraseStandardFrame(&application->windows[PARTY_MENU_WIN_MOVE_LIST], TRUE);
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);

        if (Party_ApplyItemEffectsToMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, (u8)menuAction, GetCurrentMapLabel(application), HEAP_ID_PARTY_MENU) == TRUE) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            BufferUsedItemMessage(application, application->partyMenu->usedItemID, Pokemon_GetValue(mon, MON_DATA_MOVE1 + menuAction, NULL));
            Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
            Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        } else {
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItWontHaveAnyEffect, application->tmpString);
        }

        PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;

        return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
    }

    return PARTY_MENU_STATE_WAIT_MOVE_LIST_SELECTION;
}

void PartyMenu_GiveMail(PartyMenuApplication *application)
{
    Window_EraseMessageBox(&application->windows[PARTY_MENU_WIN_SHORT_MESSAGE], TRUE);

    if (application->partyMembers[application->currPartySlot].heldItem == ITEM_NONE) {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MailWasTransferredFromMailbox, application->tmpString);
        PartyMenu_DrawMemberMail(application, application->currPartySlot);
    } else {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MonHoldingItemCannotHoldMail, application->tmpString);
        application->currPartySlot = PARTY_MENU_SLOT_CANCEL;
    }

    PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    application->stateAfterMessage = PARTY_MENU_STATE_WAIT_AB_PRESS_BEFORE_FADE;
}

static u16 GetCurrentMapLabel(PartyMenuApplication *application)
{
    FieldSystem *fieldSystem = application->partyMenu->fieldSystem;
    return MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
}

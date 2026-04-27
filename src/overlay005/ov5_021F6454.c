#include "overlay005/ov5_021F6454.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/menu.h"
#include "constants/regi_ruins.h"
#include "constants/scrcmd.h"
#include "generated/game_records.h"
#include "generated/items.h"
#include "generated/species.h"
#include "generated/villa_furniture_type.h"

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"
#include "struct_defs/wi_fi_history.h"

#include "field/field_system.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"

#include "bag.h"
#include "battle_hall_win_records.h"
#include "berry_patch_graphics.h"
#include "bg_window.h"
#include "billboard.h"
#include "coordinates.h"
#include "field_script_context.h"
#include "font.h"
#include "game_records.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "map_object.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokemon.h"
#include "render_window.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "sound.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_vars.h"
#include "unk_02038F8C.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"
#include "wifi_history_save_data.h"

#include "res/text/bank/battle_tower.h"
#include "res/text/bank/menu_entries.h"

#define MAX_LIST_ENTRIES 120

typedef struct BattleHallRecordSelector {
    FieldSystem *fieldSystem;
    SysTask *task;
    Window window;
    Window *unusedWin;
    String *strs[MAX_LIST_ENTRIES];
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    u8 startupDelay;
    u8 unused[2];
    u8 alwaysTrue : 1;
    u8 alwaysFalse : 1;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 unused2;
    u8 numOptions;
    u32 unused3;
    u16 *resultPtr;
    u16 *listPos;
    u16 *cursorPos;
    ListMenuTemplate menuTemplate;
    ListMenu *listMenu;
    u32 unused4;
    StringList strList[MAX_LIST_ENTRIES];
    u16 unused5[MAX_LIST_ENTRIES];
    u16 menuPos;
} BattleHallRecordSelector;

static BattleHallRecordSelector *BattleHallRecordSelecter_New(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u8 menuPosInit, u8 alwaysTrue, u16 *resultPtr, StringTemplate *strTemplate, Window *unused, MessageLoader *msgLoader, u16 *listPos, u16 *cursorPos);
static void BattleHallRecordSelector_Init(FieldSystem *fieldSystem, BattleHallRecordSelector *selector, u8 tilemapLeft, u8 tilemapTop, u8 menuPosInit, u8 alwaysTrue, u16 *resultPtr, StringTemplate *strTemplate, Window *unused, MessageLoader *msgLoader, u16 *listPos, u16 *cursorPos);
static void BattleHallRecordSelector_OpenMenu(BattleHallRecordSelector *selector);
static void BattleHallRecordSelector_Process(SysTask *task, void *context);
static BOOL BattleHallRecordSelector_WaitForSelection(ScriptContext *ctx);
static void BattleHallRecordSelector_Free(BattleHallRecordSelector *selector);
static u16 *BattleHallRecordSelector_GetSpeciesList(enum HeapID heapID, int fileIndex, int *numElements);
static void BattleHallRecordSelector_AddOption(BattleHallRecordSelector *selector, u32 entryID, u32 unused, u32 value);
static void BattleHallRecordSelector_UpdateMessageLoader(BattleHallRecordSelector *selector, MessageLoader *msgLoader);
static void BattleHallRecordSelector_AddToMenu(BattleHallRecordSelector *selector, u32 entryID, u32 unused, u32 value);
static void BattleHallRecordSelector_InitListMenuTemplate(BattleHallRecordSelector *selector);
static void UpdateItemColor(ListMenu *menu, u32 item, u8 yOffset);
static void UpdateListPosition(ListMenu *listMenu, u32 item, u8 onInit);

static void CalcHiddenPowerTypeAndPower(Pokemon *mon, int *outPower, int *outType);

// TODO Create zukan_data.naix and populate constants here
static u16 sAlphabeticalSpeciesLists[] = {
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26
};

BOOL ScrCmd_ShowBattleHallRecordMonSelectionMenu(ScriptContext *ctx)
{
    int resultCode;
    BattleHallWinRecords *records;
    u16 *speciesList;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 challengeType = ScriptContext_GetVar(ctx);
    u16 letterGroup = ScriptContext_GetVar(ctx);
    u16 resultVar = ScriptContext_ReadHalfWord(ctx);
    u16 listPosVar = ScriptContext_ReadHalfWord(ctx);
    u16 cursorPosVar = ScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = resultVar;

    MessageLoader *monMsgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD3);
    BattleHallRecordSelector *selector = BattleHallRecordSelecter_New(fieldSystem, 20, 1, 0, TRUE, FieldSystem_GetVarPointer(fieldSystem, resultVar), *strTemplate, FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_WINDOW), monMsgLoader, FieldSystem_GetVarPointer(fieldSystem, listPosVar), FieldSystem_GetVarPointer(fieldSystem, cursorPosVar));
    records = BattleHallWinRecords_Get(fieldSystem->saveData, HEAP_ID_FIELD2, &resultCode);

    if (resultCode == LOAD_RESULT_OK) {
        int speciesListSize;
        speciesList = BattleHallRecordSelector_GetSpeciesList(HEAP_ID_FIELD3, sAlphabeticalSpeciesLists[letterGroup], &speciesListSize);

        for (int i = 0; i < speciesListSize; i++) {
            u16 streak = BattleHallWinRecords_GetRecordForSpecies(fieldSystem->saveData, records, BattleFrontierStats_GetHallRecordStreakIndex(challengeType), speciesList[i]);

            if (streak != 0) {
                BattleHallRecordSelector_AddOption(selector, speciesList[i], 0xff, speciesList[i]);
            }
        }

        Heap_Free(speciesList);
    }

    if (records != NULL) {
        Heap_Free(records);
    }

    MessageLoader *menuMsgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MENU_ENTRIES, HEAP_ID_FIELD3);

    BattleHallRecordSelector_UpdateMessageLoader(selector, menuMsgLoader);
    BattleHallRecordSelector_AddOption(selector, MenuEntries_Text_ListMenu_Exit, 0xff, (u16)MENU_CANCEL);

    MessageLoader_Free(menuMsgLoader);

    BattleHallRecordSelector_UpdateMessageLoader(selector, monMsgLoader);
    BattleHallRecordSelector_OpenMenu(selector);

    ScriptContext_Pause(ctx, BattleHallRecordSelector_WaitForSelection);
    MessageLoader_Free(monMsgLoader);

    return TRUE;
}

static BOOL BattleHallRecordSelector_WaitForSelection(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *selection = FieldSystem_GetVarPointer(fieldSystem, ctx->data[0]);

    if (*selection == LIST_MENU_NO_SELECTION_YET) {
        return FALSE;
    }

    return TRUE;
}

static u16 *BattleHallRecordSelector_GetSpeciesList(enum HeapID heapID, int fileIndex, int *numElements)
{
    u32 speciesListSize;
    u16 *speciesList = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, fileIndex, 0, heapID, 0, &speciesListSize);
    *numElements = speciesListSize / sizeof(u16);

    return speciesList;
}

static void BattleHallRecordSelector_UpdateMessageLoader(BattleHallRecordSelector *selector, MessageLoader *msgLoader)
{
    selector->msgLoader = msgLoader;
}

static void BattleHallRecordSelector_Init(FieldSystem *fieldSystem, BattleHallRecordSelector *selector, u8 tilemapLeft, u8 tilemapTop, u8 menuPosInit, u8 alwaysTrue, u16 *resultPtr, StringTemplate *strTemplate, Window *unused, MessageLoader *msgLoader, u16 *listPos, u16 *cursorPos)
{
    int i;

    selector->msgLoader = msgLoader;
    selector->alwaysFalse = FALSE;
    selector->strTemplate = strTemplate;
    selector->fieldSystem = fieldSystem;
    selector->resultPtr = resultPtr;

    *selector->resultPtr = 0;

    selector->listPos = listPos;
    selector->cursorPos = cursorPos;
    selector->alwaysTrue = alwaysTrue;
    selector->unused[1] = menuPosInit;
    selector->tilemapLeft = tilemapLeft;
    selector->tilemapTop = tilemapTop;
    selector->numOptions = 0;
    selector->unusedWin = unused;
    selector->startupDelay = 3;
    selector->menuPos = menuPosInit;

    for (i = 0; i < MAX_LIST_ENTRIES; i++) {
        selector->strList[i].entry = NULL;
        selector->strList[i].index = 0;
        selector->unused5[i] = 0xff;
    }

    for (i = 0; i < MAX_LIST_ENTRIES; i++) {
        selector->strs[i] = String_Init(80, HEAP_ID_FIELD1);
    }

    *selector->resultPtr = LIST_MENU_NO_SELECTION_YET;
}

static BattleHallRecordSelector *BattleHallRecordSelecter_New(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u8 menuPosInit, u8 alwaysTrue, u16 *resultPtr, StringTemplate *strTemplate, Window *unused, MessageLoader *msgLoader, u16 *listPos, u16 *cursorPos)
{
    BattleHallRecordSelector *selector = Heap_Alloc(HEAP_ID_FIELD1, sizeof(BattleHallRecordSelector));

    if (selector == NULL) {
        return NULL;
    }

    memset(selector, 0, sizeof(BattleHallRecordSelector));
    BattleHallRecordSelector_Init(fieldSystem, selector, tilemapLeft, tilemapTop, menuPosInit, alwaysTrue, resultPtr, strTemplate, unused, msgLoader, listPos, cursorPos);

    return selector;
}

static void BattleHallRecordSelector_AddOption(BattleHallRecordSelector *selector, u32 entryID, u32 unused, u32 value)
{
    BattleHallRecordSelector_AddToMenu(selector, entryID, unused, value);
}

static void BattleHallRecordSelector_OpenMenu(BattleHallRecordSelector *selector)
{
    if (selector->numOptions > 8) {
        Window_Add(selector->fieldSystem->bgConfig, &selector->window, BG_LAYER_MAIN_3, selector->tilemapLeft, selector->tilemapTop, 11, 16, 13, 1);
    } else {
        Window_Add(selector->fieldSystem->bgConfig, &selector->window, BG_LAYER_MAIN_3, selector->tilemapLeft, selector->tilemapTop, 11, selector->numOptions * 2, 13, 1);
    }

    LoadStandardWindowGraphics(selector->fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&selector->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_11);
    BattleHallRecordSelector_InitListMenuTemplate(selector);

    selector->listMenu = ListMenu_New(&selector->menuTemplate, *selector->listPos, *selector->cursorPos, HEAP_ID_FIELD1);
    selector->task = SysTask_Start(BattleHallRecordSelector_Process, selector, 0);
}

static void BattleHallRecordSelector_AddToMenu(BattleHallRecordSelector *selector, u32 entryID, u32 unused, u32 value)
{
    String *string = String_Init(80, HEAP_ID_FIELD1);

    MessageLoader_GetString(selector->msgLoader, entryID, string);
    StringTemplate_Format(selector->strTemplate, selector->strs[selector->numOptions], string);
    selector->strList[selector->numOptions].entry = selector->strs[selector->numOptions];
    String_Free(string);

    if (value == LIST_MENU_BUILDER_HEADER) {
        selector->strList[selector->numOptions].index = MENU_HEADER;
    } else {
        selector->strList[selector->numOptions].index = value;
    }

    selector->unused5[selector->numOptions] = unused;
    selector->numOptions++;
}

static void BattleHallRecordSelector_InitListMenuTemplate(BattleHallRecordSelector *selector)
{
    selector->menuTemplate.choices = selector->strList;
    selector->menuTemplate.cursorCallback = UpdateListPosition;
    selector->menuTemplate.printCallback = UpdateItemColor;
    selector->menuTemplate.window = &selector->window;
    selector->menuTemplate.count = selector->numOptions;
    selector->menuTemplate.maxDisplay = 8;
    selector->menuTemplate.headerXOffset = 1;
    selector->menuTemplate.textXOffset = 12;
    selector->menuTemplate.cursorXOffset = 2;
    selector->menuTemplate.yOffset = 1;
    selector->menuTemplate.textColorFg = 1;
    selector->menuTemplate.textColorBg = 15;
    selector->menuTemplate.textColorShadow = 2;
    selector->menuTemplate.letterSpacing = 0;
    selector->menuTemplate.lineSpacing = 0;
    selector->menuTemplate.pagerMode = PAGER_MODE_LEFT_RIGHT_PAD;
    selector->menuTemplate.fontID = FONT_SYSTEM;
    selector->menuTemplate.cursorType = 0;
    selector->menuTemplate.parent = selector;
}

static void UpdateItemColor(ListMenu *menu, u32 item, u8 yOffset)
{
    if (item == MENU_HEADER) {
        ListMenu_SetAltTextColors(menu, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(menu, 1, 15, 2);
    }
}

static void UpdateListPosition(ListMenu *listMenu, u32 item, u8 onInit)
{
    u16 listPos = 0;
    u16 cursorPos = 0;
    BattleHallRecordSelector *selector = (BattleHallRecordSelector *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);

    ListMenu_GetListAndCursorPos(listMenu, &listPos, &cursorPos);

    if (selector->listPos != NULL && selector->cursorPos != NULL) {
        *selector->listPos = listPos;
        *selector->cursorPos = cursorPos;
    }
}

static void BattleHallRecordSelector_Process(SysTask *task, void *context)
{
    BattleHallRecordSelector *selector = context;

    if (selector->startupDelay != 0) {
        selector->startupDelay--;
        return;
    }

    if (IsScreenFadeDone() == FALSE) {
        return;
    }

    u32 input = ListMenu_ProcessInput(selector->listMenu);
    u16 oldPos = selector->menuPos;

    ListMenu_CalcTrueCursorPos(selector->listMenu, &selector->menuPos);

    if (oldPos != selector->menuPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCEL:
        if (selector->alwaysTrue == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *selector->resultPtr = MENU_CANCEL;
            BattleHallRecordSelector_Free(selector);
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *selector->resultPtr = input;
        BattleHallRecordSelector_Free(selector);
        break;
    }
}

static void BattleHallRecordSelector_Free(BattleHallRecordSelector *selector)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    ListMenu_Free(selector->listMenu, NULL, NULL);
    Window_EraseStandardFrame(selector->menuTemplate.window, FALSE);
    Window_Remove(&selector->window);

    for (int i = 0; i < MAX_LIST_ENTRIES; i++) {
        String_Free(selector->strs[i]);
    }

    if (selector->alwaysFalse == TRUE) {
        MessageLoader_Free(selector->msgLoader);
    }

    SysTask_Done(selector->task);
    Heap_Free(selector);
}

static const u16 sHighestIVMessageIndices[] = {
    BattleTower_Text_BestPotentialInHP,
    BattleTower_Text_BestPotentialInAttack,
    BattleTower_Text_BestPotentialInDefense,
    BattleTower_Text_BestPotentialInSpeed,
    BattleTower_Text_BestPotentialInSpAtk,
    BattleTower_Text_BestPotentialInSpDef
};

BOOL ScrCmd_JudgeStats(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 selectedIndex = ScriptContext_GetVar(ctx);
    u16 *totalIVs = ScriptContext_GetVarPointer(ctx);
    u16 *highestIVIndex = ScriptContext_GetVarPointer(ctx);
    u16 *highestIVValue = ScriptContext_GetVarPointer(ctx);

    Pokemon *targetPokemon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), selectedIndex);

    u32 pokemonIVs[6];
    pokemonIVs[0] = Pokemon_GetValue(targetPokemon, MON_DATA_HP_IV, NULL);
    pokemonIVs[1] = Pokemon_GetValue(targetPokemon, MON_DATA_ATK_IV, NULL);
    pokemonIVs[2] = Pokemon_GetValue(targetPokemon, MON_DATA_DEF_IV, NULL);
    pokemonIVs[3] = Pokemon_GetValue(targetPokemon, MON_DATA_SPEED_IV, NULL);
    pokemonIVs[4] = Pokemon_GetValue(targetPokemon, MON_DATA_SPATK_IV, NULL);
    pokemonIVs[5] = Pokemon_GetValue(targetPokemon, MON_DATA_SPDEF_IV, NULL);

    *totalIVs = 0;
    u8 i;

    for (i = 0; i < 6; i++) {
        *totalIVs += pokemonIVs[i];
    }

    *highestIVIndex = 0;
    *highestIVValue = pokemonIVs[0];

    for (i = 1; i < 6; i++) {
        if (pokemonIVs[*highestIVIndex] < pokemonIVs[i]) {
            *highestIVIndex = i;
            *highestIVValue = pokemonIVs[i];
        } else if (pokemonIVs[*highestIVIndex] == pokemonIVs[i]) {
            if ((LCRNG_Next() % 2) == 0) {
                *highestIVIndex = i;
                *highestIVValue = pokemonIVs[i];
            }
        }
    }

    *highestIVIndex = sHighestIVMessageIndices[*highestIVIndex];
    return 0;
}

BOOL ScrCmd_31D(ScriptContext *param0)
{
    Pokemon *v0;
    Party *v1;
    int v2, v3, v4;
    int v5, v6;
    u32 v7;
    int v8[6];
    int v9 = 0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v11 = ScriptContext_GetVarPointer(param0);

    v1 = SaveData_GetParty(fieldSystem->saveData);
    v2 = Party_GetCurrentCount(v1);
    *v11 = 0;

    for (v3 = 0; v3 < v2; v3++) {
        v0 = Party_GetPokemonBySlotIndex(v1, v3);
        v8[v3] = Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, NULL);

        if (v8[v3] == ITEM_GRISEOUS_ORB) {
            v9++;
        }
    }

    if (v9 > 0) {
        v4 = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), ITEM_GRISEOUS_ORB, v9, HEAP_ID_FIELD1);

        if (v4 == 0) {
            *v11 = 0xff;
            return 0;
        }

        v7 = 0;

        for (v3 = 0; v3 < v2; v3++) {
            if (v8[v3] == ITEM_GRISEOUS_ORB) {
                v0 = Party_GetPokemonBySlotIndex(v1, v3);
                Pokemon_SetValue(v0, MON_DATA_HELD_ITEM, &v7);
            }
        }
    }

    for (v3 = 0; v3 < v2; v3++) {
        v0 = Party_GetPokemonBySlotIndex(v1, v3);
        v6 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

        if (v6 > 0) {
            v5 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);

            switch (v5) {
            case SPECIES_GIRATINA:
                Pokemon_SetGiratinaFormByHeldItem(v0);
                break;
            case SPECIES_ROTOM:
                Pokemon_SetRotomForm(v0, ROTOM_FORM_BASE, 0);
                break;
            case SPECIES_SHAYMIN:
                Pokemon_SetShayminForm(v0, SHAYMIN_FORM_LAND);
                break;
            }
        }
    }

    return 0;
}

BOOL ScrCmd_TryRevertPokemonForm(ScriptContext *param0)
{
    Pokemon *mon;
    Party *party;
    int pokemonSpecies, pokemonForm;
    u32 emptyHeldItem;
    int currentHeldItem;
    int bagNotFull;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(param0);
    u16 *result = ScriptContext_GetVarPointer(param0);

    party = SaveData_GetParty(fieldSystem->saveData);
    mon = Party_GetPokemonBySlotIndex(party, partySlot);

    *result = 0;

    if (partySlot == 0xff) {
        return 0;
    }

    currentHeldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    if (currentHeldItem == ITEM_GRISEOUS_ORB) {
        bagNotFull = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), ITEM_GRISEOUS_ORB, 1, HEAP_ID_FIELD1);

        if (bagNotFull == 0) {
            *result = 0xff;
            return 0;
        }

        emptyHeldItem = 0;
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &emptyHeldItem);
    }

    pokemonForm = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    if (pokemonForm > 0) {
        pokemonSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

        switch (pokemonSpecies) {
        case SPECIES_GIRATINA:
            Pokemon_SetGiratinaFormByHeldItem(mon);
            break;
        case SPECIES_ROTOM:
            Pokemon_SetRotomForm(mon, ROTOM_FORM_BASE, 0);
            break;
        case SPECIES_SHAYMIN:
            Pokemon_SetShayminForm(mon, SHAYMIN_FORM_LAND);
            break;
        }
    }

    return 0;
}

BOOL ScrCmd_2F1(ScriptContext *param0)
{
    Pokemon *v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v0 = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), v2);
    Pokemon_SetValue(v0, MON_DATA_FORM, &v3);

    return 0;
}

BOOL ScrCmd_GetPartyRotomCountAndFirst(ScriptContext *ctx)
{
    int partyCount, i, count;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVarCount = ScriptContext_GetVarPointer(ctx);
    u16 *destVarPartySlot = ScriptContext_GetVarPointer(ctx);

    count = 0;
    *destVarPartySlot = 0xff;
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u32 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        u32 form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
        u32 isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);

        if (species == SPECIES_ROTOM && form != ROTOM_FORM_BASE && isEgg == FALSE) {
            if (*destVarPartySlot == 0xff) {
                *destVarPartySlot = i;
            }

            count++;
        }
    }

    *destVarCount = count;
    return 0;
}

BOOL ScrCmd_SetRotomForm(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);
    u16 v9 = ScriptContext_GetVar(ctx);
    u16 form = ScriptContext_GetVar(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

    Pokemon_SetRotomForm(mon, form, moveSlot);
    Pokedex_Capture(SaveData_GetPokedex(fieldSystem->saveData), mon);

    return FALSE;
}

BOOL ScrCmd_CalcHiddenPowerType(ScriptContext *ctx)
{
    int power, type;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
        switch (species) {
        case SPECIES_CATERPIE:
        case SPECIES_METAPOD:
        case SPECIES_WEEDLE:
        case SPECIES_KAKUNA:
        case SPECIES_MAGIKARP:
        case SPECIES_DITTO:
        case SPECIES_WOBBUFFET:
        case SPECIES_SMEARGLE:
        case SPECIES_WURMPLE:
        case SPECIES_SILCOON:
        case SPECIES_CASCOON:
        case SPECIES_WYNAUT:
        case SPECIES_BELDUM:
        case SPECIES_BURMY:
        case SPECIES_COMBEE:
        case SPECIES_KRICKETOT:
            *destVar = 0xFFFF;
            return FALSE;
        }
    }

    CalcHiddenPowerTypeAndPower(mon, &power, &type);
    *destVar = type;

    return FALSE;
}

static void CalcHiddenPowerTypeAndPower(Pokemon *mon, int *outPower, int *outType)
{
    int hpIV = Pokemon_GetValue(mon, MON_DATA_HP_IV, NULL);
    int atkIV = Pokemon_GetValue(mon, MON_DATA_ATK_IV, NULL);
    int defIV = Pokemon_GetValue(mon, MON_DATA_DEF_IV, NULL);
    int speedIV = Pokemon_GetValue(mon, MON_DATA_SPEED_IV, NULL);
    int spatkIV = Pokemon_GetValue(mon, MON_DATA_SPATK_IV, NULL);
    int spdefIV = Pokemon_GetValue(mon, MON_DATA_SPDEF_IV, NULL);

    if (outPower != NULL) {
        *outPower = (hpIV & 2) >> 1 | atkIV & 2 | (defIV & 2) << 1 | (speedIV & 2) << 2 | (spatkIV & 2) << 3 | (spdefIV & 2) << 4;
        *outPower = *outPower * 40 / 63 + 30;
    }

    if (outType != NULL) {
        *outType = hpIV & 1 | (atkIV & 1) << 1 | (defIV & 1) << 2 | (speedIV & 1) << 3 | (spatkIV & 1) << 4 | (spdefIV & 1) << 5;
        *outType = *outType * 15 / 63 + 1;

        if (*outType >= TYPE_MYSTERY) {
            *outType = *outType + 1;
        }
    }
}

BOOL ScrCmd_300(ScriptContext *param0)
{
    MiscSaveBlock *v0;
    Pokemon *v1;
    FieldSystem *fieldSystem = param0->fieldSystem;

    v1 = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), 0);
    v0 = SaveData_MiscSaveBlock(fieldSystem->saveData);

    MiscSaveBlock_SetFavoriteMon(v0, Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL), Pokemon_GetValue(v1, MON_DATA_FORM, NULL), Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL));
    return 0;
}

BOOL ScrCmd_301(ScriptContext *param0)
{
    int v0, v1, v2;
    MiscSaveBlock *v3;
    Pokemon *v4;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v6 = ScriptContext_GetVarPointer(param0);
    u16 *v7 = ScriptContext_GetVarPointer(param0);
    u16 *v8 = ScriptContext_GetVarPointer(param0);

    v3 = SaveData_MiscSaveBlock(fieldSystem->saveData);
    MiscSaveBlock_FavoriteMon(v3, &v0, &v1, &v2);

    *v6 = v0;
    *v7 = v1;
    *v8 = v2;

    return 0;
}

BOOL ScrCmd_GetPartyMonForm2(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

    *destVar = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    return FALSE;
}

BOOL ScrCmd_CheckMetFurnitureRequirements(ScriptContext *ctx)
{
    VarsFlags *varsFlags;
    GameRecords *gameRecords;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 furniture = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    gameRecords = SaveData_GetGameRecords(fieldSystem->saveData);
    *destVar = TRUE;

    switch (furniture) {
    case VILLA_FURNITURE_POKEMON_BUST + 1:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_TOWER_VICTORIES) < 1) {
            *destVar = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_FACTORY_VICTORIES) < 1) {
            *destVar = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_CASTLE_VICTORIES) < 1) {
            *destVar = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_HALL_VICTORIES) < 1) {
            *destVar = FALSE;
        }

        if (GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_ARCADE_VICTORIES) < 1) {
            *destVar = FALSE;
        }
        break;
    case VILLA_FURNITURE_POKEMON_BUST_SILVER + 1:
        *destVar = FALSE;

        if (SystemVars_GetBattleFactoryPrintState(varsFlags) >= 2) {
            *destVar = TRUE;
        }

        if (SystemVars_GetBattleHallPrintState(varsFlags) >= 2) {
            *destVar = TRUE;
        }

        if (SystemVars_GetBattleCastlePrintState(varsFlags) >= 2) {
            *destVar = TRUE;
        }

        if (SystemVars_GetBattleArcadePrintState(varsFlags) >= 2) {
            *destVar = TRUE;
        }

        if (SystemVars_GetBattleTowerPrintState(varsFlags) >= 2) {
            *destVar = TRUE;
        }
        break;
    case VILLA_FURNITURE_PIANO + 1:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_TIMES_ENTERED_HALL_OF_FAME) < 10) {
            *destVar = FALSE;
        }
        break;
    case VILLA_FURNITURE_GUEST_SET + 1:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_TIMES_BATTLED_AT_BATTLEGROUND) < 50) {
            *destVar = FALSE;
        }
        break;
    case VILLA_FURNITURE_WALL_CLOCK + 1:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_BERRIES_PLANTED) < 50) {
            *destVar = FALSE;
        }
        break;
    case VILLA_FURNITURE_MASTERPIECE + 1:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_EGGS_HATCHED) < 30) {
            *destVar = FALSE;
        }
        break;
    case VILLA_FURNITURE_CHANDELIER + 1:
        if (GameRecords_GetRecordValue(gameRecords, RECORD_STEPS) < 300000) {
            *destVar = FALSE;
        }
        break;
    }

    return FALSE;
}

BOOL ScrCmd_Dummy316(ScriptContext *ctx)
{
    return TRUE;
}

static const CoordinatesS16 sDotCoordinatesIronRuins[] = {
    { .x = 4, .z = 7 },
    { .x = 5, .z = 5 },
    { .x = 5, .z = 9 },
    { .x = 7, .z = 7 },
    { .x = 9, .z = 5 },
    { .x = 9, .z = 9 },
    { .x = 10, .z = 7 }
};

static const CoordinatesS16 sDotCoordinatesIcebergRuins[] = {
    { .x = 3, .z = 7 },
    { .x = 5, .z = 7 },
    { .x = 7, .z = 5 },
    { .x = 7, .z = 7 },
    { .x = 7, .z = 9 },
    { .x = 9, .z = 7 },
    { .x = 11, .z = 7 }
};

static const CoordinatesS16 sDotCoordinatesRockPeakRuins[] = {
    { .x = 5, .z = 5 },
    { .x = 5, .z = 7 },
    { .x = 5, .z = 9 },
    { .x = 7, .z = 7 },
    { .x = 9, .z = 5 },
    { .x = 9, .z = 7 },
    { .x = 9, .z = 9 }
};

BOOL ScrCmd_ActivateRegiRuinsDot(ScriptContext *ctx)
{
    int i, allDotsEnabled;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 dotType = ScriptContext_GetVar(ctx);
    u16 x = ScriptContext_GetVar(ctx);
    u16 z = ScriptContext_GetVar(ctx);

    switch (dotType) {
    case DOT_TYPE_IRON_RUINS:
        allDotsEnabled = 0x7F;

        for (i = 0; i < NELEMS(sDotCoordinatesIronRuins); i++) {
            if (x == sDotCoordinatesIronRuins[i].x && z == sDotCoordinatesIronRuins[i].z) {
                Sound_PlayEffect(SEQ_SE_PL_JUMP2);
                *destVar |= (1 << i);
                break;
            }
        }
        break;
    case DOT_TYPE_ICEBERG_RUINS:
        allDotsEnabled = 0x7F;

        for (i = 0; i < NELEMS(sDotCoordinatesIcebergRuins); i++) {
            if (x == sDotCoordinatesIcebergRuins[i].x && z == sDotCoordinatesIcebergRuins[i].z) {
                Sound_PlayEffect(SEQ_SE_PL_JUMP2);
                *destVar |= (1 << i);
                break;
            }
        }
        break;
    case DOT_TYPE_ROCK_PEAK_RUINS:
        allDotsEnabled = 0x7F;

        for (i = 0; i < NELEMS(sDotCoordinatesRockPeakRuins); i++) {
            if (x == sDotCoordinatesRockPeakRuins[i].x && z == sDotCoordinatesRockPeakRuins[i].z) {
                Sound_PlayEffect(SEQ_SE_PL_JUMP2);
                *destVar |= (1 << i);
                break;
            }
        }
        break;
    }

    if (*destVar == allDotsEnabled) {
        *destVar = RUINS_STATE_ACTIVATED_ALL_DOTS;
    }

    return 0;
}

BOOL ScrCmd_32D(ScriptContext *ctx)
{
    fx32 v0;
    VecFx32 v1;
    Billboard *v2;
    int v3 = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObject *v6 = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *v7;

    MapObject_GetPosPtr(v6, &v1);
    v0 = v1.y;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &v7, &v3, MAP_OBJ_STATUS_0) == 1) {
        if (v7 != v6) {
            MapObject_SetStatusFlagOn(v7, MAP_OBJ_STATUS_13);

            if (MapObject_CheckStatusFlag(v7, MAP_OBJ_STATUS_12) == 1) {
                MapObject_GetPosPtr(v7, &v1);
                v1.y = v0;
                MapObject_SetPos(v7, &v1);
                MapObject_SetY(v7, ((v0) >> 3) / FX32_ONE );
            }

            v2 = ov5_021EB1A0(v7);

            if ((v2 == NULL) && BerryPatchGraphics_IsBerryPatch(MapObject_GetGraphicsID(v7))) {
                if (sub_02062D4C(v7)) {
                    sub_02062B68(v7);
                    v2 = BerryPatchGraphics_GetGraphicsObject(v7);
                }
            }

            if (v2 != NULL) {
                ov5_021EDEB4(v7, v2);
                Billboard_SetDrawFlag(v2, 1);
            }
        }
    }

    return 0;
}

BOOL ScrCmd_32E(ScriptContext *ctx)
{
    int v0 = 0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    MapObject *v3 = Player_MapObject(fieldSystem->playerAvatar);
    MapObject *v4;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &v4, &v0, MAP_OBJ_STATUS_0) == 1) {
        if (v4 != v3) {
            MapObject_SetStatusFlagOff(v4, MAP_OBJ_STATUS_13);
        }
    }

    return 0;
}

static void ov5_021F7654(MapObject *param0, int param1)
{
    VecFx32 v0;
    Billboard *v1;

    MapObject_SetStatusFlagOn(param0, MAP_OBJ_STATUS_13);
    MapObject_GetPosPtr(param0, &v0);

    v0.y = (((param1) << 4) * FX32_ONE);

    MapObject_SetPos(param0, &v0);
    MapObject_SetY(param0, (param1) * 2);

    v1 = ov5_021EB1A0(param0);

    if (v1 != NULL) {
        ov5_021EDEB4(param0, v1);
        Billboard_SetDrawFlag(v1, 1);
    }
}

BOOL ScrCmd_331(ScriptContext *ctx)
{
    MapObject *v0;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;

    v0 = MapObjMan_LocalMapObjByIndex(mapObjMan, 32);

    if (v0 != NULL) {
        ov5_021F7654(v0, 9);
    }

    v0 = MapObjMan_LocalMapObjByIndex(mapObjMan, 2);

    if (v0 != NULL) {
        ov5_021F7654(v0, 9);
    }

    return 0;
}

BOOL ScrCmd_332(ScriptContext *ctx)
{
    MapObject *v0;
    MapObjectManager *v1 = ctx->fieldSystem->mapObjMan;

    v0 = MapObjMan_LocalMapObjByIndex(v1, 32);

    if (v0 != NULL) {
        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_13);
    }

    v0 = MapObjMan_LocalMapObjByIndex(v1, 2);

    if (v0 != NULL) {
        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_13);
    }

    return 0;
}

BOOL ScrCmd_338(ScriptContext *ctx)
{
    int v0;
    MapObject *v1 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 15);
    if (v1 != NULL) {
        switch (MapObject_GetX(v1)) {
        case 28:
            v0 = 6;
            break;
        case 38:
            v0 = 5;
            break;
        case 40:
            v0 = 3;
            break;
        case 48:
            v0 = 2;
            break;
        default:
            v0 = 4;
            break;
        }
        ov5_021F7654(v1, v0);
    }
    return 0;
}

BOOL ScrCmd_339(ScriptContext *ctx)
{
    MapObject *v0 = MapObjMan_LocalMapObjByIndex(ctx->fieldSystem->mapObjMan, 15);
    if (v0 != NULL) {
        MapObject_SetStatusFlagOff(v0, 8192);
    }
    return 0;
}

BOOL ScrCmd_LogLinkInfoInWiFiHistory(ScriptContext *ctx)
{
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(ctx->fieldSystem->saveData);

    WiFiHistory_FlagGeonetLinkInfo(wiFiHistory);
    return TRUE;
}

BOOL ScrCmd_SetPlayerVolume(ScriptContext *ctx)
{
    u16 volume = ScriptContext_GetVar(ctx);

    Sound_SetPlayerVolume(PLAYER_FIELD, volume);
    return FALSE;
}

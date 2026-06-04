#include "overlay007/battle_regulation_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/heap.h"

#include "field/field_system.h"

#include "battle_regulation.h"
#include "battle_regulation_validation.h"
#include "bg_window.h"
#include "field_message.h"
#include "field_task.h"
#include "font.h"
#include "heap.h"
#include "height_weight_data.h"
#include "list_menu.h"
#include "message.h"
#include "party.h"
#include "pokedex_heightweight.h"
#include "render_window.h"
#include "save_player.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/pokemon_center_2f_common.h"
#include "res/text/bank/unk_0353.h"

typedef struct BattleRegulationMenu {
    ListMenu *listMenuRegulations;
    ListMenu *listMenuConfirm;
    StringList *strListRegulations;
    StringList *strListConfirm;
    FieldSystem *fieldSystem;
    String *fmtString;
    String *dstString;
    String *regulationName;
    String *cupString;
    Window windowRules;
    Window windowRegulations;
    Window windowConfirm;
    Window windowMsgBox;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;
    HeightWeightData *heighWeightData;
    u16 *result;
    int printerID;
    u16 cursorPosRegulations;
    u16 cursorPosConfirm;
    int state;
    u16 unk_80;
    u16 unk_82;
} BattleRegulationMenu;

typedef struct ConfirmMenuEntry {
    u32 bankEntry;
    u32 index;
} ConfirmMenuEntry;

static const ListMenuTemplate sListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 0,
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 0,
    .parent = NULL
};

static void PrintMessage(BattleRegulationMenu *menu, int entryID)
{
    if (Window_IsInUse(&menu->windowMsgBox) == FALSE) {
        Window_Init(&menu->windowMsgBox);
        FieldMessage_AddWindow(menu->fieldSystem->bgConfig, &menu->windowMsgBox, BG_LAYER_MAIN_3);
        FieldMessage_DrawWindow(&menu->windowMsgBox, SaveData_GetOptions(menu->fieldSystem->saveData));
    } else {
        FieldMessage_ClearWindow(&menu->windowMsgBox);
    }

    MessageLoader_GetString(menu->msgLoader, entryID, menu->fmtString);
    StringTemplate_Format(menu->strTemplate, menu->dstString, menu->fmtString);

    menu->printerID = FieldMessage_Print(&menu->windowMsgBox, menu->dstString, SaveData_GetOptions(menu->fieldSystem->saveData), 1);
}

static void RemoveMsgBox(BattleRegulationMenu *menu, BOOL clear)
{
    if (clear) {
        Window_EraseMessageBox(&menu->windowMsgBox, FALSE);
        Window_ClearAndCopyToVRAM(&menu->windowMsgBox);
    }

    Window_Remove(&menu->windowMsgBox);
}

static void GetBattleRegulationName(BattleRegulationMenu *menu, int index)
{
    BattleRegulation_GetNameByIndex(menu->fieldSystem->saveData, index, menu->regulationName, HEAP_ID_FIELD1);
    StringTemplate_SetString(menu->strTemplate, 0, menu->regulationName, 0, 1, GAME_LANGUAGE);
}

static void ShowListMenuRegulations(BattleRegulationMenu *menu)
{
    ListMenuTemplate template;
    Window *window = &(menu->windowRegulations);
    BattleRegulation *battleRegulation = BattleRegulation_Load(menu->fieldSystem->saveData, 0);
    int count = 5;

    if (battleRegulation) {
        count++;
    }

    if (Window_IsInUse(window) == FALSE) {
        menu->strListRegulations = StringList_New(count + 2, HEAP_ID_FIELD1);

        Window_Add(menu->fieldSystem->bgConfig, window, BG_LAYER_MAIN_3, 1, 1, 16, (count + 2) * 2, 13, 1);
        Window_DrawStandardFrame(&menu->windowRegulations, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
        StringList_AddFromMessageBank(menu->strListRegulations, menu->msgLoader, PokemonCenter2FCommon_Text_NoRestrictions, 12);

        for (int i = 0; i < count; i++) {
            GetBattleRegulationName(menu, i);

            MessageLoader_GetString(menu->msgLoader, PokemonCenter2FCommon_Text_Cup, menu->regulationName);
            StringTemplate_Format(menu->strTemplate, menu->cupString, menu->regulationName);
            StringList_AddFromString(menu->strListRegulations, menu->cupString, i);
        }

        StringList_AddFromMessageBank(menu->strListRegulations, menu->msgLoader, PokemonCenter2FCommon_Text_Cancel, MENU_CANCEL);
    }

    template = sListMenuTemplate;
    template.count = count + 2;
    template.maxDisplay = count + 2;
    template.choices = menu->strListRegulations;
    template.window = &menu->windowRegulations;
    template.parent = menu;

    menu->listMenuRegulations = ListMenu_New(&template, 0, menu->cursorPosRegulations, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&menu->windowRegulations);
}

static void RemoveListMenuRegulations(BattleRegulationMenu *menu)
{
    if (menu->listMenuRegulations) {
        ListMenu_Free(menu->listMenuRegulations, NULL, NULL);
        Window_EraseStandardFrame(&menu->windowRegulations, TRUE);
        Bg_ScheduleTilemapTransfer(menu->windowRegulations.bgConfig, menu->windowRegulations.bgLayer);
        Window_Remove(&menu->windowRegulations);
        StringList_Free(menu->strListRegulations);

        menu->listMenuRegulations = NULL;
    }
}

static int ProcessListMenuInputRegulations(BattleRegulationMenu *menu)
{
    int input = ListMenu_ProcessInput(menu->listMenuRegulations);
    ListMenu_GetListAndCursorPos(menu->listMenuRegulations, NULL, &menu->cursorPosRegulations);

    u16 v1 = menu->unk_80;
    ListMenu_CalcTrueCursorPos(menu->listMenuRegulations, &menu->unk_80);

    if (v1 != menu->unk_80) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case MENU_NOTHING_CHOSEN:
        return 0;
    case 12:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->fieldSystem->battleRegulation = NULL;
        RemoveListMenuRegulations(menu);
        return 2;
    case MENU_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->fieldSystem->battleRegulation = NULL;
        RemoveListMenuRegulations(menu);
        return -1;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->fieldSystem->battleRegulation = BattleRegulation_GetByIndex(menu->fieldSystem->saveData, input);
        break;
    }

    return 1;
}

static ConfirmMenuEntry sConfirmMenuEntries[] = {
    { PokemonCenter2FCommon_Text_Confirm, 1 },
    { PokemonCenter2FCommon_Text_Rules, 2 },
    { PokemonCenter2FCommon_Text_Cancel, MENU_CANCEL }
};

static void ShowListMenuConfirm(BattleRegulationMenu *menu)
{
    ListMenuTemplate template;
    int count = 3;
    int tilemapTop = 10;
    int width = 9;
    int tilemapLeft = 22;
    ConfirmMenuEntry *menuEntry = sConfirmMenuEntries;

    menu->strListConfirm = StringList_New(count, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->windowConfirm, BG_LAYER_MAIN_3, tilemapLeft, tilemapTop, width, count * 2, 13, BASE_TILE_MESSAGE_WINDOW - width * count * 2);
    Window_DrawStandardFrame(&menu->windowConfirm, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    for (int i = 0; i < count; i++) {
        StringList_AddFromMessageBank(menu->strListConfirm, menu->msgLoader, menuEntry->bankEntry, menuEntry->index);
        menuEntry++;
    }

    template = sListMenuTemplate;
    template.count = count;
    template.maxDisplay = count;
    template.choices = menu->strListConfirm;
    template.window = &menu->windowConfirm;
    template.parent = menu;

    menu->listMenuConfirm = ListMenu_New(&template, 0, menu->cursorPosConfirm, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&menu->windowConfirm);
}

static int ProcessListMenuInputConfirm(BattleRegulationMenu *menu)
{
    int input = ListMenu_ProcessInput(menu->listMenuConfirm);
    ListMenu_GetListAndCursorPos(menu->listMenuConfirm, NULL, &menu->cursorPosConfirm);

    u16 v1 = menu->unk_82;
    ListMenu_CalcTrueCursorPos(menu->listMenuConfirm, &menu->unk_82);

    if (v1 != menu->unk_82) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case MENU_NOTHING_CHOSEN:
        return 0;
    case MENU_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        input = -1;
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RemoveListMenuRegulations(menu);
        break;
    }

    if (menu->listMenuConfirm) {
        ListMenu_Free(menu->listMenuConfirm, NULL, NULL);
        Window_EraseStandardFrame(&menu->windowConfirm, TRUE);
        Bg_ScheduleTilemapTransfer(menu->windowConfirm.bgConfig, menu->windowConfirm.bgLayer);
        Window_Remove(&menu->windowConfirm);
        StringList_Free(menu->strListConfirm);

        menu->listMenuConfirm = NULL;
    }

    return input;
}

#define RULES_COUNT 9

static u8 sBattleRegulationRules[RULES_COUNT] = {
    BATTLE_REGULATION_RULE_TEAM_SIZE,
    BATTLE_REGULATION_RULE_MAX_LEVEL,
    BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL,
    BATTLE_REGULATION_RULE_HEIGHT_RESTRICT,
    BATTLE_REGULATION_RULE_WEIGHT_RESTRICT,
    BATTLE_REGULATION_RULE_EVOLUTION_RESTRICT,
    BATTLE_REGULATION_RULE_SPECIAL_SPECIES_RESTRICT,
    BATTLE_REGULATION_RULE_SPECIES_UNIQUE,
    BATTLE_REGULATION_RULE_ITEM_UNIQUE
};

static u8 sBattleRegulationValueMessages[RULES_COUNT] = {
    Unk0353_Text_ValueNoOfPokemon,
    Unk0353_Text_ValueMaxLevel,
    Unk0353_Text_ValueMaxTotalLevels,
    Unk0353_Text_ValueMaxHeight,
    Unk0353_Text_ValueMaxWeight,
    Unk0353_Text_ValuePokemonPermitted,
    Unk0353_Text_ValuePokemonPermitted,
    Unk0353_Text_ValuePokemonPermitted,
    Unk0353_Text_ValueItemsPermitted
};

static void ShowBattleRegulationRules(BattleRegulationMenu *menu)
{
    StringTemplate *strTemplate = menu->strTemplate;
    int i, ruleValue, valueMessage;
    const int yOffset = 16;
    const int xOffset = 2;
    const int lineHeight = 15;
    const int xOffsetCupName = 55;
    const int xRightSide = (24 * 8) - 1;

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0353, HEAP_ID_FIELD1);
    String *fmtString = String_Init(180, HEAP_ID_FIELD1);
    String *dstString = String_Init(180, HEAP_ID_FIELD1);
    Window *window = &menu->windowRules;

    Window_Add(menu->fieldSystem->bgConfig, window, BG_LAYER_MAIN_3, 4, 2, 24, 19, 13, 1);
    Window_DrawStandardFrame(window, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    Window_FillTilemap(window, 15);

    GetBattleRegulationName(menu, menu->cursorPosRegulations - 1);

    MessageLoader_GetString(msgLoader, Unk0353_Text_Cup, fmtString);
    StringTemplate_Format(strTemplate, dstString, fmtString);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, dstString, xOffset + xOffsetCupName, 0, TEXT_SPEED_NO_TRANSFER, NULL);

    for (i = 0; i < RULES_COUNT; i++) {
        MessageLoader_GetString(msgLoader, Unk0353_Text_RuleNoOfPokemon + i, fmtString);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, fmtString, xOffset, yOffset + lineHeight * i, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    for (i = 0; i < RULES_COUNT; i++) {
        ruleValue = BattleRegulation_GetRuleValue(menu->fieldSystem->battleRegulation, sBattleRegulationRules[i]);
        valueMessage = sBattleRegulationValueMessages[i];

        switch (sBattleRegulationRules[i]) {
        case BATTLE_REGULATION_RULE_TEAM_SIZE:
            StringTemplate_SetNumber(strTemplate, 0, ruleValue, 1, 1, 1);
            break;
        case BATTLE_REGULATION_RULE_MAX_LEVEL:
            StringTemplate_SetNumber(strTemplate, 0, ruleValue, 3, 0, 1);
            break;
        case BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL:
            if (ruleValue == 0) {
                valueMessage = Unk0353_Text_NoRestrictions;
            } else {
                StringTemplate_SetNumber(strTemplate, 0, ruleValue, 3, 0, 1);
            }
            break;
        case BATTLE_REGULATION_RULE_HEIGHT_RESTRICT:
            ruleValue = (ruleValue >= 0) ? (((ruleValue * 10 * 1000) / 254 + 5) / 10) : -(((-ruleValue * 10 * 1000) / 254 + 5) / 10);

            StringTemplate_SetNumber(strTemplate, 0, abs(ruleValue / 12), 2, 0, 1);
            StringTemplate_SetNumber(strTemplate, 1, abs(ruleValue % 12), 2, 2, 1);

            if (ruleValue == 0) {
                valueMessage = Unk0353_Text_NoRestrictions;
            } else if (ruleValue > 0) {
                valueMessage++;
            }
            break;
        case BATTLE_REGULATION_RULE_WEIGHT_RESTRICT:
            ruleValue = (ruleValue >= 0) ? (((ruleValue * 220462) + 50000) / 100000) : -(((-ruleValue * 220462) + 50000) / 100000);
            StringTemplate_SetNumber(strTemplate, 0, abs(ruleValue), 3, 0, 1);

            if (ruleValue == 0) {
                valueMessage = Unk0353_Text_NoRestrictions;
            } else if (ruleValue > 0) {
                valueMessage++;
            }
            break;
        case BATTLE_REGULATION_RULE_EVOLUTION_RESTRICT:
        case BATTLE_REGULATION_RULE_SPECIAL_SPECIES_RESTRICT:
        case BATTLE_REGULATION_RULE_SPECIES_UNIQUE:
        case BATTLE_REGULATION_RULE_ITEM_UNIQUE:
            if (ruleValue == 0) {
                valueMessage++;
            }
            break;
        default:
            break;
        }

        MessageLoader_GetString(msgLoader, valueMessage, fmtString);
        StringTemplate_Format(strTemplate, dstString, fmtString);
        int valueWidth = Font_CalcStringWidth(FONT_SYSTEM, dstString, 0);
        int valueXOffset = xRightSide - valueWidth;

        Text_AddPrinterWithParams(window, FONT_SYSTEM, dstString, valueXOffset, yOffset + lineHeight * i, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    String_Free(fmtString);
    String_Free(dstString);
    MessageLoader_Free(msgLoader);
    Window_CopyToVRAM(window);
}

static void RemoveRulesWindow(BattleRegulationMenu *menu)
{
    Window_EraseStandardFrame(&menu->windowRules, TRUE);
    Bg_ScheduleTilemapTransfer(menu->windowRules.bgConfig, menu->windowRules.bgLayer);
    Window_Remove(&menu->windowRules);
}

static BOOL HandleBattleRegulationValidationResult(BattleRegulationMenu *menu)
{
    Party *party = SaveData_GetParty(menu->fieldSystem->saveData);
    enum BattleRegulationValidationResult result = BattleRegulation_SelectValidPokemon(menu->fieldSystem->battleRegulation, party, menu->heighWeightData);
    int ruleValue;

    switch (result) {
    case BATTLE_REGULATION_VALIDATION_RESULT_SUCCESS:
        return TRUE;
    case BATTLE_REGULATION_VALIDATION_RESULT_INVALID_TEAM_SIZE:
        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        GetBattleRegulationName(menu, menu->cursorPosRegulations - 1);
        ruleValue = BattleRegulation_GetRuleValue(menu->fieldSystem->battleRegulation, BATTLE_REGULATION_RULE_TEAM_SIZE);
        StringTemplate_SetNumber(menu->strTemplate, 1, ruleValue, 1, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        PrintMessage(menu, PokemonCenter2FCommon_Text_NeedXPokemonForCup);
        break;
    default:
    case BATTLE_REGULATION_VALIDATION_RESULT_TOTAL_LEVEL_EXCEEDED:
        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        GetBattleRegulationName(menu, menu->cursorPosRegulations - 1);
        ruleValue = BattleRegulation_GetRuleValue(menu->fieldSystem->battleRegulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);
        StringTemplate_SetNumber(menu->strTemplate, 1, ruleValue, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        PrintMessage(menu, PokemonCenter2FCommon_Text_CantFormTeamWithLevelLimit);
        break;
    }

    return FALSE;
}

enum BattleRegulationMenuState {
    STATE_PRINT_WHICH_RULESET = 0,
    STATE_SHOW_LIST_MENU_REGULATIONS,
    STATE_HANDLE_INPUT_REGULATIONS,
    STATE_SHOW_LIST_MENU_CONFIRM,
    STATE_HANDLE_INPUT_CONFIRM,
    STATE_CHECK_VALID_TEAM,
    STATE_WAIT_MESSAGE_INVALID_TEAM,
    STATE_PRINT_RULES,
    STATE_RESHOW_MENU_AFTER_RULES,
    STATE_WAIT_RESHOW_CONFIRM_MENU,
    STATE_UNUSED,
    STATE_EXIT,
};

static BOOL FieldTask_BattleRegulationMenu(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BattleRegulationMenu *menu = FieldTask_GetEnv(task);
    int input;

    switch (menu->state) {
    case STATE_PRINT_WHICH_RULESET:
        PrintMessage(menu, PokemonCenter2FCommon_Text_WhichSetOfRules);
        menu->state++;
        break;
    case STATE_SHOW_LIST_MENU_REGULATIONS:
        if (FieldMessage_FinishedPrinting(menu->printerID)) {
            ShowListMenuRegulations(menu);
            menu->state++;
        }
        break;
    case STATE_HANDLE_INPUT_REGULATIONS:
        input = ProcessListMenuInputRegulations(menu);

        if (input == -1) {
            *menu->result = 2;
            menu->state = STATE_EXIT;
        } else if (input == 2) {
            *menu->result = 3;
            menu->state = STATE_EXIT;
        } else if (input == 1) {
            menu->state = STATE_SHOW_LIST_MENU_CONFIRM;
        }
        break;
    case STATE_SHOW_LIST_MENU_CONFIRM:
        ShowListMenuConfirm(menu);
        menu->state++;
        break;
    case STATE_HANDLE_INPUT_CONFIRM:
        input = ProcessListMenuInputConfirm(menu);

        if (input == -1) {
            menu->state = STATE_HANDLE_INPUT_REGULATIONS;
        } else if (input == 1) {
            menu->state = STATE_CHECK_VALID_TEAM;
        } else if (input == 2) {
            menu->state = STATE_PRINT_RULES;
        }
        break;
    case STATE_CHECK_VALID_TEAM:
        if (HandleBattleRegulationValidationResult(menu)) {
            *menu->result = 1;
            menu->state = STATE_EXIT;
        } else {
            menu->state = STATE_WAIT_MESSAGE_INVALID_TEAM;
        }
        break;
    case STATE_WAIT_MESSAGE_INVALID_TEAM:
        if (FieldMessage_FinishedPrinting(menu->printerID)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                menu->state = STATE_PRINT_WHICH_RULESET;
            }
        }
        break;
    case STATE_PRINT_RULES:
        RemoveMsgBox(menu, TRUE);
        ShowBattleRegulationRules(menu);
        menu->state++;
        break;
    case STATE_RESHOW_MENU_AFTER_RULES:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            RemoveRulesWindow(menu);
            PrintMessage(menu, PokemonCenter2FCommon_Text_WhichSetOfRules);
            ShowListMenuRegulations(menu);
            menu->state = STATE_WAIT_RESHOW_CONFIRM_MENU;
        }
        break;
    case STATE_WAIT_RESHOW_CONFIRM_MENU:
        if (FieldMessage_FinishedPrinting(menu->printerID)) {
            menu->state = STATE_SHOW_LIST_MENU_CONFIRM;
        }
        break;
    case STATE_UNUSED:
        break;
    case STATE_EXIT:
        RemoveListMenuRegulations(menu);
        RemoveMsgBox(menu, FALSE);
        StringTemplate_Free(menu->strTemplate);
        MessageLoader_Free(menu->msgLoader);
        String_Free(menu->fmtString);
        String_Free(menu->dstString);
        String_Free(menu->regulationName);
        String_Free(menu->cupString);
        HeightWeightData_Free(menu->heighWeightData);
        Heap_Free(menu);
        return TRUE;
    default:
        return TRUE;
    }

    return FALSE;
}

static BattleRegulationMenu *NewBattleRegulationMenu(FieldSystem *fieldSystem)
{
    BattleRegulationMenu *menu = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(BattleRegulationMenu));

    MI_CpuClear8(menu, sizeof(BattleRegulationMenu));

    menu->state = 0;
    menu->fieldSystem = fieldSystem;
    menu->fieldSystem->battleRegulation = NULL;
    menu->strTemplate = StringTemplate_Default(HEAP_ID_FIELD1);
    menu->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_CENTER_2F_COMMON, HEAP_ID_FIELD1);
    menu->fmtString = String_Init(180, HEAP_ID_FIELD1);
    menu->dstString = String_Init(180, HEAP_ID_FIELD1);
    menu->regulationName = String_Init(180, HEAP_ID_FIELD1);
    menu->cupString = String_Init(180, HEAP_ID_FIELD1);
    menu->heighWeightData = HeightWeightData_Load(HEAP_ID_FIELD2);

    return menu;
}

void OpenBattleRegulationMenu(FieldTask *task, u16 *result)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BattleRegulationMenu *menu = NewBattleRegulationMenu(fieldSystem);

    menu->result = result;
    FieldTask_InitCall(task, FieldTask_BattleRegulationMenu, menu);
}

#include "rankings_machine.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"

#include "field/field_system.h"
#include "overlay005/sprite_resource_manager.h"

#include "bg_window.h"
#include "field_task.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "rankings.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/rankings_machine.h"

#define VALUE_SRINGS_COUNT                7
#define MAX_RECORDS_PER_MACHINE           6
#define DELETE_INSTRUCTIONS_STRINGS_COUNT 3

#define MANAGED_SPRITE_CURSOS        0
#define MANAGED_SPRITE_DELETE_WINDOW 1

typedef struct RankingsMachineText {
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *strBuffer;
    String *exit;
    String *whichRecord;
    String *deleteRecord;
    String *recordEntryInfo;
    String *values[VALUE_SRINGS_COUNT];
    String *titles[MAX_RECORDS_PER_MACHINE];
    String *explanations[MAX_RECORDS_PER_MACHINE];
    String *deleteInstructions[DELETE_INSTRUCTIONS_STRINGS_COUNT];
} RankingsMachineText;

typedef struct MachineRankingInfo {
    RankingPlayerInfo *playerInfo;
    u16 exists;
    u8 playerID;
} MachineRankingInfo;

typedef struct MachineRankings {
    int rankingsCount;
    MachineRankingInfo rankingsInfo[7];
} MachineRankings;

typedef struct RecordPrintingData {
    u32 maxScore;
    u16 maxDigits;
    u16 valueString;
} RecordPrintingData;

typedef struct RankingsMachineManager {
    enum HeapID heapID;
    int *unused_04;
    int unused_08;
    int deleteState;
    u16 bgMain0Priority;
    u16 bgMain1Priority;
    u16 unused_14;
    u8 listID;
    u8 mode;
    u8 recordsCount;
    u8 firstRecord;
    u16 textDelay;
    u16 frame;
    u8 printerID;
    u8 selectedRecordID;
    u8 unused_20;
    u8 lastRankingID;
    u16 startListPos;
    u16 startCursorPos;
    u16 unused_26;
    u16 cursorPos;
    RankingsMachineText text;
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    StringList *stringList;
    Menu *menu;
    FieldSystem *fieldSystem;
    BgConfig *bgConfig;
    Window listWindow;
    Window msgBoxWindow;
    Window rankingsWindow;
    Window unused_104[3];
    SpriteResourceManager spriteManager;
    ManagedSprite *managedSprites[2];
    Rankings *rankings;
    RecordPlayersInfo *recordsPlayersInfo[MAX_RECORDS_PER_MACHINE + 1];
    MachineRankings *machineRankings;
    MachineRankingInfo *rankingToDelete;
    u8 rankingIDs[MAX_RANKINGS_ENTRIES];
} RankingsMachineManager;

typedef struct RankingsMachine {
    int state;
    u16 id;
    RankingsMachineManager *manager;
} RankingsMachine;

static void RankingsMachine_InitRankings(RankingsMachineManager *rankingsMachineMan, SaveData *saveData);
static void RankingsMachine_FreeRankings(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_InitStrings(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_FreeStrings(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_InitBg(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_FreeBg(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_InitSprites(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_FreeSprites(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_ShowRecordsList(RankingsMachineManager *rankingsMachineMan, u16 startListPos, u16 startCursorPos);
static void RankingsMachine_RemoveRecordsList(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_SetCursorPos(ListMenu *listMenu, u32 unused, u8 mute);
static void RankingsMachine_PrintDeleteInstruction(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_PrepareForDeletingRecord(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_PrintRecordExplanation(RankingsMachineManager *rankingsMachineMan);
static void RankingsMachine_PrintRecordRankings(RankingsMachineManager *rankingsMachineMan, BOOL showDeleteScreen);
static void RankingsMachine_ShowRankingList(RankingsMachineManager *rankingsMachineMan, u16 cursorPos);
static void RankingsMachine_RemoveRankingList(RankingsMachineManager *rankingsMachineMan);

enum RankingsMachineState {
    STATE_INIT_MANAGER,
    STATE_INIT,
    STATE_PRINT_RECORD_TITLES,
    STATE_HANDLE_RECORDS_LIST_INPUT,
    STATE_SHOW_RANKINGS_LIST,
    STATE_HANDLE_RANKINGS_LIST_INPUT,
    STATE_HANDLE_DELETE_RANKINGS_INPUT,
    STATE_ASK_DELETE_RANKING,
    STATE_CANT_DELETE_OWN_RANKING,
    STATE_UNUSED,
    STATE_FREE,
    STATE_FREE_MANAGER,
    STATE_FREE_MACHINE,
};

static const ListMenuTemplate sRankingsMachineListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 7,
    .headerXOffset = 2,
    .textXOffset = 8,
    .cursorXOffset = 1,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 0,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 1,
    .parent = NULL
};

static const RecordPrintingData sPrintingDataBattleRecords[] = {
    { 9999, 4, RankingsMachine_Text_BattleWinsValue },
    { 9999, 4, RankingsMachine_Text_BattleWinsValue },
    { 9999, 4, RankingsMachine_Text_BattleWinsValue },
    { 9999, 4, RankingsMachine_Text_BattleWinsValue },
    { 9999, 4, RankingsMachine_Text_BattleWinsValue },
    { 7, 1, RankingsMachine_Text_AvgWinStreakValue }
};

static const RecordPrintingData sPrintingDataPokemonRecords[] = {
    { 999999, 6, RankingsMachine_Text_PokemonCaughtValue },
    { 999999, 6, RankingsMachine_Text_PokemonCaughtValue },
    { 999999, 6, RankingsMachine_Text_PokemonHatchedValue },
    { 999999, 6, RankingsMachine_Text_PokemonCaughtValue }
};

static const RecordPrintingData sPrintingDataContestRecords[] = {
    { 9999, 4, RankingsMachine_Text_ContestWinsValue },
    { 100, 4, RankingsMachine_Text_ContestWinPercentValue },
    { 65535, 5, RankingsMachine_Text_RibbonsValue }
};

static const RecordPrintingData *const sRecordsPrintingData[] = {
    sPrintingDataBattleRecords,
    sPrintingDataPokemonRecords,
    sPrintingDataContestRecords
};

static int RankingsMachine_InitManager(RankingsMachine *rankingsMachine, FieldSystem *fieldSystem, u16 machineID)
{
    RankingsMachineManager *rankingsMachineMan;
    SaveData *saveData = fieldSystem->saveData;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_RECORD_LIST, 0x6000);

    rankingsMachineMan = Heap_Alloc(HEAP_ID_RECORD_LIST, sizeof(RankingsMachineManager));
    MI_CpuClear8(rankingsMachineMan, sizeof(RankingsMachineManager));

    rankingsMachineMan->heapID = HEAP_ID_RECORD_LIST;
    rankingsMachineMan->listID = machineID % 3;
    rankingsMachineMan->mode = machineID / 3;
    rankingsMachineMan->recordsCount = GetRecordsListLength(rankingsMachineMan->listID);
    rankingsMachineMan->firstRecord = GetRecordsListFirstRecord(rankingsMachineMan->listID);
    rankingsMachineMan->fieldSystem = fieldSystem;
    rankingsMachineMan->bgConfig = fieldSystem->bgConfig;
    rankingsMachineMan->rankings = sub_0202E8C0(saveData);
    rankingsMachineMan->textDelay = Options_TextFrameDelay(SaveData_GetOptions(saveData));
    rankingsMachineMan->frame = Options_Frame(SaveData_GetOptions(saveData));

    rankingsMachine->manager = rankingsMachineMan;

    return STATE_INIT;
}

static int RankingsMachine_FreeManager(RankingsMachine *rankingsMachine)
{
    int recordID, rankingID, v2, heapID;
    MachineRankingInfo *rankingInfo;
    RankingsMachineManager *rankingsMachineMan = rankingsMachine->manager;

    for (recordID = 0; recordID < rankingsMachineMan->recordsCount; recordID++) {
        v2 = 0;

        for (rankingID = 0; rankingID < rankingsMachineMan->machineRankings[recordID].rankingsCount; rankingID++) {
            rankingInfo = &(rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID]);

            if (rankingInfo->playerID == 0xFF || rankingInfo->exists) {
                continue;
            }

            Rankings_RemoveEntry(rankingsMachineMan->rankings, (rankingsMachineMan->mode * 13) + rankingsMachineMan->firstRecord + recordID, rankingInfo->playerID - v2);
            ++v2;
        }
    }

    heapID = rankingsMachineMan->heapID;

    Heap_Free(rankingsMachineMan);
    MI_CpuClear8(rankingsMachineMan, sizeof(RankingsMachineManager));
    Heap_Destroy(heapID);

    return STATE_FREE_MACHINE;
}

static int RankingsMachine_Init(RankingsMachineManager *rankingsMachineMan, SaveData *saveData)
{
    RankingsMachine_InitRankings(rankingsMachineMan, saveData);
    RankingsMachine_InitStrings(rankingsMachineMan);
    RankingsMachine_InitBg(rankingsMachineMan);
    RankingsMachine_InitSprites(rankingsMachineMan);

    return STATE_PRINT_RECORD_TITLES;
}

static int RankingsMachine_Free(RankingsMachineManager *rankingsMachineMan)
{
    RankingsMachine_FreeSprites(rankingsMachineMan);
    RankingsMachine_FreeBg(rankingsMachineMan);
    RankingsMachine_FreeStrings(rankingsMachineMan);
    RankingsMachine_FreeRankings(rankingsMachineMan);

    return STATE_FREE_MANAGER;
}

static int RankingsMachine_StateShowRecordsList(RankingsMachineManager *rankingsMachineMan)
{
    RankingsMachine_ShowRecordsList(rankingsMachineMan, rankingsMachineMan->startListPos, rankingsMachineMan->startCursorPos);
    return STATE_HANDLE_RECORDS_LIST_INPUT;
}

static int RankingsMachine_HandleRecordsListInput(RankingsMachineManager *rankingsMachineMan)
{
    s32 input = ListMenu_ProcessInput(rankingsMachineMan->listMenu);

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_RemoveRecordsList(rankingsMachineMan);
        return STATE_FREE;
    }

    if (!(gSystem.pressedKeys & PAD_BUTTON_A)) {
        return STATE_HANDLE_RECORDS_LIST_INPUT;
    }

    Sound_PlayEffect(SEQ_SE_CONFIRM);

    switch (input) {
    case LIST_NOTHING_CHOSEN:
    case LIST_CANCEL:
    case 0xFFFF:
        RankingsMachine_RemoveRecordsList(rankingsMachineMan);
        return STATE_FREE;
    default:
        rankingsMachineMan->selectedRecordID = input;
        rankingsMachineMan->cursorPos = 0;
        RankingsMachine_RemoveRecordsList(rankingsMachineMan);
        return STATE_SHOW_RANKINGS_LIST;
    }

    return STATE_HANDLE_RECORDS_LIST_INPUT;
}

static int RankingsMachine_StateShowRankingList(RankingsMachineManager *rankingsMachineMan)
{
    RankingsMachine_ShowRankingList(rankingsMachineMan, rankingsMachineMan->cursorPos);
    return STATE_HANDLE_RANKINGS_LIST_INPUT;
}

static int RankingsMachine_HandleRankingListInput(RankingsMachineManager *rankingsMachineMan)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_RemoveRankingList(rankingsMachineMan);
        return STATE_PRINT_RECORD_TITLES;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_PrepareForDeletingRecord(rankingsMachineMan);
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    }

    return STATE_HANDLE_RANKINGS_LIST_INPUT;
}

static int RankingsMachine_HandleDeleteRankingInput(RankingsMachineManager *rankingsMachineMan)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_PrintRecordExplanation(rankingsMachineMan);
        return STATE_HANDLE_RANKINGS_LIST_INPUT;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        rankingsMachineMan->deleteState = 0;
        rankingsMachineMan->rankingToDelete = &(rankingsMachineMan->machineRankings[rankingsMachineMan->selectedRecordID].rankingsInfo[rankingsMachineMan->rankingIDs[rankingsMachineMan->cursorPos]]);

        if (rankingsMachineMan->rankingToDelete->playerID == 0xFF) {
            return STATE_CANT_DELETE_OWN_RANKING;
        }

        return STATE_ASK_DELETE_RANKING;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (rankingsMachineMan->cursorPos > 0) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            --rankingsMachineMan->cursorPos;
            ManagedSprite_SetPositionXY(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 126, 16 + 16 * rankingsMachineMan->cursorPos);
        }
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (rankingsMachineMan->cursorPos < rankingsMachineMan->lastRankingID - 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ++rankingsMachineMan->cursorPos;
            ManagedSprite_SetPositionXY(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 126, 16 + 16 * rankingsMachineMan->cursorPos);
        }
    }

    return STATE_HANDLE_DELETE_RANKINGS_INPUT;
}

static void RankingsMachine_MakeYesNoMenu(RankingsMachineManager *rankingsMachineMan)
{
    static const WindowTemplate yesNoWindowTemplate = {
        .bgLayer = BG_LAYER_MAIN_3,
        .tilemapLeft = 25,
        .tilemapTop = 13,
        .width = 6,
        .height = 4,
        .palette = PLTT_13,
        .baseTile = 0x355,
    };

    rankingsMachineMan->menu = Menu_MakeYesNoChoice(rankingsMachineMan->bgConfig, &yesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, rankingsMachineMan->heapID);
}

static int RankingsMachine_AskDeleteRanking(RankingsMachineManager *rankingsMachineMan)
{
    switch (rankingsMachineMan->deleteState) {
    case 0:
        Window_FillTilemap(&rankingsMachineMan->msgBoxWindow, ((15 << 4) | 15));
        rankingsMachineMan->printerID = Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->msgBoxWindow, FONT_MESSAGE, rankingsMachineMan->text.deleteInstructions[1], 0, 0, rankingsMachineMan->textDelay, TEXT_COLOR(1, 2, 15), NULL);
        ManagedSprite_SetExplicitPalette(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 2);
        rankingsMachineMan->deleteState++;
        break;
    case 1:
        if (Text_IsPrinterActive(rankingsMachineMan->printerID)) {
            break;
        }

        RankingsMachine_MakeYesNoMenu(rankingsMachineMan);
        rankingsMachineMan->deleteState++;
        break;
    case 2:
        switch (Menu_ProcessInputAndHandleExit(rankingsMachineMan->menu, rankingsMachineMan->heapID)) {
        case 0:
            rankingsMachineMan->deleteState++;
            break;
        case LIST_CANCEL:
            rankingsMachineMan->deleteState = 0xFF;
            break;
        }
        break;
    case 3:
        rankingsMachineMan->rankingToDelete->exists = FALSE;
        RankingsMachine_PrintRecordRankings(rankingsMachineMan, TRUE);
        ManagedSprite_SetExplicitPalette(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 1);
        rankingsMachineMan->deleteState = 0;
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    case 0xFF:
        RankingsMachine_PrintDeleteInstruction(rankingsMachineMan);
        ManagedSprite_SetExplicitPalette(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 1);
        rankingsMachineMan->deleteState = 0;
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    }

    return STATE_ASK_DELETE_RANKING;
}

static int RankingsMachine_CantDeleteOwnRanking(RankingsMachineManager *rankingsMachineMan)
{
    switch (rankingsMachineMan->deleteState) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
        Window_FillTilemap(&rankingsMachineMan->msgBoxWindow, ((15 << 4) | 15));
        rankingsMachineMan->printerID = Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->msgBoxWindow, FONT_MESSAGE, rankingsMachineMan->text.deleteInstructions[2], 0, 0, rankingsMachineMan->textDelay, TEXT_COLOR(1, 2, 15), NULL);
        ManagedSprite_SetExplicitPalette(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 2);
        rankingsMachineMan->deleteState++;
        break;
    case 1:
        if (Text_IsPrinterActive(rankingsMachineMan->printerID)) {
            break;
        }

        rankingsMachineMan->deleteState++;
        break;
    case 2:
        if (!(gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_PrintDeleteInstruction(rankingsMachineMan);
        ManagedSprite_SetExplicitPalette(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 1);
        rankingsMachineMan->deleteState = 0;
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    }

    return STATE_CANT_DELETE_OWN_RANKING;
}

static void RankingsMachine_InitRankings(RankingsMachineManager *rankingsMachineMan, SaveData *saveData)
{
    int recordID, playerID, rankingID, v3;
    RecordPlayersInfo *playersInfo;

    rankingsMachineMan->machineRankings = Heap_Alloc(rankingsMachineMan->heapID, sizeof(MachineRankings) * rankingsMachineMan->recordsCount);
    MI_CpuClear8(rankingsMachineMan->machineRankings, sizeof(MachineRankings) * rankingsMachineMan->recordsCount);
    rankingsMachineMan->recordsPlayersInfo[0] = Rankings_GetCurrentPlayerInfo(saveData, rankingsMachineMan->listID, rankingsMachineMan->heapID);

    for (recordID = 0; recordID < rankingsMachineMan->recordsCount; recordID++) {
        rankingsMachineMan->recordsPlayersInfo[recordID + 1] = Rankings_GetConnectedPlayersInfo(rankingsMachineMan->rankings, (rankingsMachineMan->mode * 13) + rankingsMachineMan->firstRecord + recordID, rankingsMachineMan->heapID);

        playersInfo = rankingsMachineMan->recordsPlayersInfo[recordID + 1];
        rankingID = 0;
        v3 = 0;

        if (playersInfo->count == 0) {
            rankingsMachineMan->machineRankings[recordID].rankingsInfo[0].playerInfo = &(rankingsMachineMan->recordsPlayersInfo[0]->players[recordID]);
            rankingsMachineMan->machineRankings[recordID].rankingsInfo[0].exists = TRUE;
            rankingsMachineMan->machineRankings[recordID].rankingsInfo[0].playerID = 0xFF;
            rankingsMachineMan->machineRankings[recordID].rankingsCount = 1;
        } else {
            for (playerID = 0; playerID < playersInfo->count; playerID++) {
                if (v3 == 0 && rankingsMachineMan->recordsPlayersInfo[0]->players[recordID].recordValue >= playersInfo->players[playerID].recordValue) {
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(rankingsMachineMan->recordsPlayersInfo[0]->players[recordID]);
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = 0xFF;
                    ++rankingID;
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(playersInfo->players[playerID]);
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = playerID;
                    v3 = 1;
                } else {
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(playersInfo->players[playerID]);
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                    rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = playerID;
                }

                ++rankingID;
            }

            if (!v3) {
                rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(rankingsMachineMan->recordsPlayersInfo[0]->players[recordID]);
                rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                rankingsMachineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = 0xFF;
            }

            rankingsMachineMan->machineRankings[recordID].rankingsCount = playersInfo->count + 1;
        }
    }
}

static void RankingsMachine_FreeRankings(RankingsMachineManager *rankingsMachineMan)
{
    int i;

    for (i = 0; i < rankingsMachineMan->recordsCount + 1; i++) {
        RecordPlayersInfo_Free(rankingsMachineMan->recordsPlayersInfo[i]);
    }

    Heap_Free(rankingsMachineMan->machineRankings);
}

static void RankingsMachine_InitStrings(RankingsMachineManager *rankingsMachineMan)
{
    int i;

    rankingsMachineMan->text.msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_RANKINGS_MACHINE, rankingsMachineMan->heapID);
    rankingsMachineMan->text.strTemplate = StringTemplate_New(2, (38 * 2), rankingsMachineMan->heapID);
    rankingsMachineMan->text.strBuffer = String_Init((38 * 2), rankingsMachineMan->heapID);
    rankingsMachineMan->text.exit = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_Exit);
    rankingsMachineMan->text.whichRecord = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_WhichRecordWouldYouLikeToSee);
    rankingsMachineMan->text.deleteRecord = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_DeleteRecord);
    rankingsMachineMan->text.recordEntryInfo = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_RecordEntryInfo);

    for (i = 0; i < rankingsMachineMan->recordsCount; i++) {
        rankingsMachineMan->text.titles[i] = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_SingleBattlesRecordTitle + rankingsMachineMan->firstRecord + i);
        rankingsMachineMan->text.explanations[i] = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_SingleBattlesRecordExplanation + rankingsMachineMan->firstRecord + i);
    }

    for (i = 0; i < VALUE_SRINGS_COUNT; i++) {
        rankingsMachineMan->text.values[i] = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_BattleWinsValue + i);
    }

    for (i = 0; i < DELETE_INSTRUCTIONS_STRINGS_COUNT; i++) {
        rankingsMachineMan->text.deleteInstructions[i] = MessageLoader_GetNewString(rankingsMachineMan->text.msgLoader, RankingsMachine_Text_SelectTheRecordYouWantToDeleteThenPressA + i);
    }
}

static void RankingsMachine_FreeStrings(RankingsMachineManager *rankingsMachineMan)
{
    int i;

    for (i = 0; i < DELETE_INSTRUCTIONS_STRINGS_COUNT; i++) {
        String_Free(rankingsMachineMan->text.deleteInstructions[i]);
    }

    for (i = 0; i < VALUE_SRINGS_COUNT; i++) {
        String_Free(rankingsMachineMan->text.values[i]);
    }

    for (i = 0; i < rankingsMachineMan->recordsCount; i++) {
        String_Free(rankingsMachineMan->text.titles[i]);
        String_Free(rankingsMachineMan->text.explanations[i]);
    }

    String_Free(rankingsMachineMan->text.recordEntryInfo);
    String_Free(rankingsMachineMan->text.deleteRecord);
    String_Free(rankingsMachineMan->text.whichRecord);
    String_Free(rankingsMachineMan->text.exit);
    String_Free(rankingsMachineMan->text.strBuffer);
    StringTemplate_Free(rankingsMachineMan->text.strTemplate);
    MessageLoader_Free(rankingsMachineMan->text.msgLoader);
}

static void RankingsMachine_InitBg(RankingsMachineManager *rankingsMachineMan)
{
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32 * (24 * (12 + 2) + 9 + 1), 0, rankingsMachineMan->heapID);
    Bg_FillTilemapRect(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_1, 0x0, 0, 0, 32, 32, 17);
    Bg_ScheduleTilemapTransfer(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_1);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);

    rankingsMachineMan->bgMain0Priority = Bg_GetPriority(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_0);
    rankingsMachineMan->bgMain1Priority = Bg_GetPriority(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_1);

    Bg_SetPriority(BG_LAYER_MAIN_0, 2);
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    LoadMessageBoxGraphics(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_SCROLLING_MESSAGE_BOX, 10, rankingsMachineMan->frame, rankingsMachineMan->heapID);
    LoadStandardWindowGraphics(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, 0, rankingsMachineMan->heapID);
    LoadStandardWindowGraphics(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_1, BASE_TILE_STANDARD_WINDOW_FRAME, 11, 0, rankingsMachineMan->heapID);
    Font_LoadTextPalette(0, 13 * 32, rankingsMachineMan->heapID);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, rankingsMachineMan->heapID);
    Window_Add(rankingsMachineMan->bgConfig, &rankingsMachineMan->msgBoxWindow, 3, 2, 19, 27, 4, 12, ((1024 - (18 + 12) - 9) - 27 * 4));
    Window_FillTilemap(&rankingsMachineMan->msgBoxWindow, ((15 << 4) | 15));
}

static void RankingsMachine_FreeBg(RankingsMachineManager *rankingsMachineMan)
{
    Window_EraseMessageBox(&rankingsMachineMan->msgBoxWindow, 1);
    Window_ClearAndCopyToVRAM(&rankingsMachineMan->msgBoxWindow);
    Window_Remove(&rankingsMachineMan->msgBoxWindow);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32 * (24 * (12 + 2) + 9 + 1), 0, rankingsMachineMan->heapID);
    Bg_FillTilemapRect(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_1, 0x0, 0, 0, 32, 32, 17);
    Bg_ScheduleTilemapTransfer(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_1);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_SetPriority(BG_LAYER_MAIN_0, rankingsMachineMan->bgMain0Priority);
    Bg_SetPriority(BG_LAYER_MAIN_1, rankingsMachineMan->bgMain1Priority);
}

static void RankingsMachine_InitSprites(RankingsMachineManager *rankingsMachineMan)
{
    int i;
    SpriteResourceCapacities capacities = {
        1, 1, 1, 1, 0, 0
    };
    static const SpriteTemplate spriteTemplates[] = {
        {
            .x = 126,
            .y = 16,
            .z = 0,
            .animIdx = 0,
            .priority = 0,
            .plttIdx = 1,
            .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
            .resources = {
                0x34D8,
                0x34D8,
                0x34D8,
                0x34D8,
                NULL,
                NULL,
            },
            .bgPriority = 1,
            .vramTransfer = FALSE,
        },
        {
            .x = 74,
            .y = 120,
            .z = 0,
            .animIdx = 1,
            .priority = 1,
            .plttIdx = 0,
            .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
            .resources = {
                0x34D8,
                0x34D8,
                0x34D8,
                0x34D8,
                NULL,
                NULL,
            },
            .bgPriority = 1,
            .vramTransfer = FALSE,
        },
    };

    SpriteResourceManager_SetCapacities(&rankingsMachineMan->spriteManager, &capacities, 2, rankingsMachineMan->heapID);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__RANKING, rankingsMachineMan->heapID);

    SpriteResourceManager_LoadPalette(&rankingsMachineMan->spriteManager, narc, 0, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    SpriteResourceManager_LoadCell(&rankingsMachineMan->spriteManager, narc, 2, 0, 13528);
    SpriteResourceManager_LoadAnimation(&rankingsMachineMan->spriteManager, narc, 3, 0, 13528);
    SpriteResourceManager_LoadTiles(&rankingsMachineMan->spriteManager, narc, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    NARC_dtor(narc);

    for (i = 0; i < 2; i++) {
        rankingsMachineMan->managedSprites[i] = SpriteResourceManager_CreateManagedSprite(&rankingsMachineMan->spriteManager, &spriteTemplates[i]);
    }

    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_DELETE_WINDOW], FALSE);
}

static void RankingsMachine_FreeSprites(RankingsMachineManager *rankingsMachineMan)
{
    int i;

    for (i = 0; i < 2; i++) {
        if (rankingsMachineMan->managedSprites[i] != NULL) {
            Sprite_DeleteAndFreeResources(rankingsMachineMan->managedSprites[i]);
        }
    }

    SpriteResourceManager_Cleanup(&rankingsMachineMan->spriteManager);
}

static void RankingsMachine_ShowRecordsList(RankingsMachineManager *rankingsMachineMan, u16 startListPos, u16 startCursorPos)
{
    int i, listEntriesCount;

    listEntriesCount = rankingsMachineMan->recordsCount + 1;
    rankingsMachineMan->stringList = StringList_New(listEntriesCount, rankingsMachineMan->heapID);

    Window_Add(rankingsMachineMan->bgConfig, &rankingsMachineMan->listWindow, 1, 4, 1, 24, listEntriesCount * 2, 13, 1);
    Window_FillTilemap(&rankingsMachineMan->listWindow, ((15 << 4) | 15));

    for (i = 0; i < rankingsMachineMan->recordsCount; i++) {
        StringList_AddFromString(rankingsMachineMan->stringList, rankingsMachineMan->text.titles[i], i);
    }

    StringList_AddFromString(rankingsMachineMan->stringList, rankingsMachineMan->text.exit, 0xFFFF);

    MI_CpuCopy8((void *)&sRankingsMachineListMenuTemplate, (void *)&(rankingsMachineMan->listMenuTemplate), sizeof(ListMenuTemplate));

    rankingsMachineMan->listMenuTemplate.window = &(rankingsMachineMan->listWindow);
    rankingsMachineMan->listMenuTemplate.choices = rankingsMachineMan->stringList;
    rankingsMachineMan->listMenuTemplate.parent = (void *)rankingsMachineMan;
    rankingsMachineMan->listMenuTemplate.count = listEntriesCount;
    rankingsMachineMan->listMenuTemplate.yOffset = 0;
    rankingsMachineMan->listMenuTemplate.cursorCallback = RankingsMachine_SetCursorPos;
    rankingsMachineMan->listMenuTemplate.printCallback = NULL;
    rankingsMachineMan->listMenu = ListMenu_New(&(rankingsMachineMan->listMenuTemplate), startListPos, startCursorPos, rankingsMachineMan->heapID);

    Window_DrawStandardFrame(&rankingsMachineMan->listWindow, 0, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    Window_DrawMessageBoxWithScrollCursor(&rankingsMachineMan->msgBoxWindow, 1, BASE_TILE_SCROLLING_MESSAGE_BOX, 10);
    Window_FillTilemap(&rankingsMachineMan->msgBoxWindow, ((15 << 4) | 15));
    Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->msgBoxWindow, FONT_MESSAGE, rankingsMachineMan->text.whichRecord, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], TRUE);
    Bg_ScheduleTilemapTransfer(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_3);
}

static void RankingsMachine_RemoveRecordsList(RankingsMachineManager *rankingsMachineMan)
{
    ListMenu_Free(rankingsMachineMan->listMenu, &(rankingsMachineMan->startListPos), &(rankingsMachineMan->startCursorPos));
    StringList_Free(rankingsMachineMan->stringList);
    Window_ClearAndCopyToVRAM(&(rankingsMachineMan->listWindow));
    Window_EraseStandardFrame(&(rankingsMachineMan->listWindow), 0);
    Window_Remove(&(rankingsMachineMan->listWindow));
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], FALSE);
    Bg_ScheduleTilemapTransfer(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_3);
}

static void RankingsMachine_SetCursorPos(ListMenu *listMenu, u32 unused, u8 mute)
{
    u16 listPos, cursorPos, count;
    RankingsMachineManager *rankingsMachineMan = (RankingsMachineManager *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);

    if (mute == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    ListMenu_GetListAndCursorPos(listMenu, &listPos, &cursorPos);
    count = ListMenu_GetAttribute(listMenu, LIST_MENU_COUNT);

    ManagedSprite_SetPositionXY(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 126, 16 + 16 * (cursorPos + listPos));
}

static void RankingsMachine_PrintDeleteInstruction(RankingsMachineManager *rankingsMachineMan)
{
    Window_FillTilemap(&rankingsMachineMan->msgBoxWindow, ((15 << 4) | 15));
    Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->msgBoxWindow, FONT_MESSAGE, rankingsMachineMan->text.deleteInstructions[0], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
}

static void RankingsMachine_PrepareForDeletingRecord(RankingsMachineManager *rankingsMachineMan)
{
    RankingsMachine_PrintDeleteInstruction(rankingsMachineMan);
    ManagedSprite_SetPositionXY(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], 126, 16 + rankingsMachineMan->cursorPos * 16);
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], TRUE);
}

static void RankingsMachine_PrintRecordExplanation(RankingsMachineManager *rankingsMachineMan)
{
    Window_FillTilemap(&rankingsMachineMan->msgBoxWindow, ((15 << 4) | 15));
    Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->msgBoxWindow, FONT_MESSAGE, rankingsMachineMan->text.explanations[rankingsMachineMan->selectedRecordID], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], FALSE);
}

static void RankingsMachine_PrintRecordRankings(RankingsMachineManager *rankingsMachineMan, BOOL showDeleteScreen)
{
    int i, unused, rank, rankingID, recordValue, prevRecordValue;
    MachineRankings *machineRankings;
    const RecordPrintingData *printingData;

    machineRankings = &(rankingsMachineMan->machineRankings[rankingsMachineMan->selectedRecordID]);
    printingData = &(sRecordsPrintingData[rankingsMachineMan->listID][rankingsMachineMan->selectedRecordID]);

    Window_FillTilemap(&rankingsMachineMan->listWindow, ((15 << 4) | 15));

    unused = machineRankings->rankingsCount;
    rank = 1;
    rankingID = 0;
    prevRecordValue = 0;

    for (i = 0; i < machineRankings->rankingsCount; i++) {
        if (!machineRankings->rankingsInfo[i].exists) {
            continue;
        }

        recordValue = machineRankings->rankingsInfo[i].playerInfo->recordValue;

        if (recordValue > printingData->maxScore) {
            recordValue = printingData->maxScore;
        }

        if (recordValue < prevRecordValue) {
            ++rank;
        }

        StringTemplate_SetNumber(rankingsMachineMan->text.strTemplate, 0, rank, 1, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetString(rankingsMachineMan->text.strTemplate, 1, machineRankings->rankingsInfo[i].playerInfo->playerName, 2, 1, GAME_LANGUAGE);
        StringTemplate_Format(rankingsMachineMan->text.strTemplate, rankingsMachineMan->text.strBuffer, rankingsMachineMan->text.recordEntryInfo);
        Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->listWindow, FONT_SYSTEM, rankingsMachineMan->text.strBuffer, 8, rankingID * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
        StringTemplate_SetNumber(rankingsMachineMan->text.strTemplate, 0, recordValue, printingData->maxDigits, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_Format(rankingsMachineMan->text.strTemplate, rankingsMachineMan->text.strBuffer, rankingsMachineMan->text.values[printingData->valueString - 15]);
        Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->listWindow, FONT_SYSTEM, rankingsMachineMan->text.strBuffer, (24 * 8) - Font_CalcStringWidth(FONT_SYSTEM, rankingsMachineMan->text.strBuffer, 0) - 8, rankingID * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);

        rankingsMachineMan->rankingIDs[rankingID] = i;
        prevRecordValue = recordValue;

        if (++rankingID >= MAX_RANKINGS_ENTRIES) {
            break;
        }
    }

    Window_CopyToVRAM(&rankingsMachineMan->listWindow);

    rankingsMachineMan->lastRankingID = rankingID;

    if (rankingsMachineMan->cursorPos > 0 && rankingsMachineMan->cursorPos >= rankingsMachineMan->lastRankingID) {
        rankingsMachineMan->cursorPos--;
    }

    if (showDeleteScreen) {
        RankingsMachine_PrepareForDeletingRecord(rankingsMachineMan);
    } else {
        RankingsMachine_PrintRecordExplanation(rankingsMachineMan);
    }
}

static void RankingsMachine_ShowRankingList(RankingsMachineManager *rankingsMachineMan, u16 cursorPos)
{
    Window_Add(rankingsMachineMan->bgConfig, &rankingsMachineMan->listWindow, 1, 4, 1, 24, 12, 13, 1);
    Window_DrawStandardFrame(&rankingsMachineMan->listWindow, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    RankingsMachine_PrintRecordRankings(rankingsMachineMan, FALSE);
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_DELETE_WINDOW], TRUE);
    Window_Add(rankingsMachineMan->bgConfig, &rankingsMachineMan->rankingsWindow, 3, 8, 14, 8, 2, 13, ((((1024 - (18 + 12) - 9) - 27 * 4) - 6 * 4) - (8 * 2)));
    Window_FillTilemap(&rankingsMachineMan->rankingsWindow, ((0 << 4) | 0));
    Text_AddPrinterWithParamsAndColor(&rankingsMachineMan->rankingsWindow, FONT_SYSTEM, rankingsMachineMan->text.deleteRecord, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Bg_ScheduleTilemapTransfer(rankingsMachineMan->bgConfig, BG_LAYER_MAIN_3);
}

static void RankingsMachine_RemoveRankingList(RankingsMachineManager *rankingsMachineMan)
{
    Window_ClearAndCopyToVRAM(&rankingsMachineMan->listWindow);
    Window_EraseStandardFrame(&rankingsMachineMan->listWindow, 0);
    Window_Remove(&rankingsMachineMan->listWindow);
    Window_ClearAndCopyToVRAM(&rankingsMachineMan->rankingsWindow);
    Window_Remove(&rankingsMachineMan->rankingsWindow);
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_CURSOS], FALSE);
    ManagedSprite_SetDrawFlag(rankingsMachineMan->managedSprites[MANAGED_SPRITE_DELETE_WINDOW], FALSE);
}

static BOOL RankingsMachine_Show(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    RankingsMachine *rankingsMachine = FieldTask_GetEnv(task);
    RankingsMachineManager *rankingsMachineMan = rankingsMachine->manager;

    switch (rankingsMachine->state) {
    case STATE_INIT_MANAGER:
        rankingsMachine->state = RankingsMachine_InitManager(rankingsMachine, fieldSystem, rankingsMachine->id);
        break;
    case STATE_INIT:
        rankingsMachine->state = RankingsMachine_Init(rankingsMachine->manager, fieldSystem->saveData);
        break;
    case STATE_PRINT_RECORD_TITLES:
        rankingsMachine->state = RankingsMachine_StateShowRecordsList(rankingsMachine->manager);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_HANDLE_RECORDS_LIST_INPUT:
        rankingsMachine->state = RankingsMachine_HandleRecordsListInput(rankingsMachine->manager);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_SHOW_RANKINGS_LIST:
        rankingsMachine->state = RankingsMachine_StateShowRankingList(rankingsMachine->manager);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_HANDLE_RANKINGS_LIST_INPUT:
        rankingsMachine->state = RankingsMachine_HandleRankingListInput(rankingsMachine->manager);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_HANDLE_DELETE_RANKINGS_INPUT:
        rankingsMachine->state = RankingsMachine_HandleDeleteRankingInput(rankingsMachine->manager);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_ASK_DELETE_RANKING:
        rankingsMachine->state = RankingsMachine_AskDeleteRanking(rankingsMachine->manager);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_CANT_DELETE_OWN_RANKING:
        rankingsMachine->state = RankingsMachine_CantDeleteOwnRanking(rankingsMachineMan);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_UNUSED:
        if (!(gSystem.pressedKeys & PAD_BUTTON_A)) {
            return FALSE;
        }

        rankingsMachine->state = STATE_FREE;
        break;
    case STATE_FREE:
        rankingsMachine->state = RankingsMachine_Free(rankingsMachine->manager);
        break;
    case STATE_FREE_MANAGER:
        rankingsMachine->state = RankingsMachine_FreeManager(rankingsMachine);
        break;
    case STATE_FREE_MACHINE:
        Heap_Free(rankingsMachine);
        return TRUE;
    }

    return FALSE;
}

void RankingsMachine_InitFieldTask(FieldTask *task, u16 machineID)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    RankingsMachine *rankingsMachine = Heap_Alloc(HEAP_ID_FIELD2, sizeof(RankingsMachine));

    rankingsMachine->state = STATE_INIT_MANAGER;
    rankingsMachine->id = machineID;
    rankingsMachine->manager = NULL;

    FieldTask_InitCall(fieldSystem->task, RankingsMachine_Show, rankingsMachine);
}

#include "rankings_machine.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/scrcmd.h"

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

#define PLAYERID_OWN 0xFF

#define VALUE_STRINGS_COUNT               7
#define MAX_RECORDS_PER_MACHINE           6
#define DELETE_INSTRUCTIONS_STRINGS_COUNT 3

#define MANAGED_SPRITE_CURSOR        0
#define MANAGED_SPRITE_DELETE_WINDOW 1

#define RANKINGS_WINDOW_WIDTH     8
#define RANKINGS_WINDOW_HEIGHT    2
#define BASE_TILE_RANKINGS_WINDOW (BASE_TILE_STANDARD_WINDOW_FRAME - MESSAGE_WINDOW_TILE_COUNT - YES_NO_MENU_TILE_COUNT - RANKINGS_WINDOW_WIDTH * RANKINGS_WINDOW_HEIGHT)

typedef struct RankingsMachineText {
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *strBuffer;
    String *exit;
    String *whichRecord;
    String *deleteRecord;
    String *recordEntryInfo;
    String *values[VALUE_STRINGS_COUNT];
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

static void RankingsMachine_NewRankings(RankingsMachineManager *machineMan, SaveData *saveData);
static void RankingsMachine_FreeRankings(RankingsMachineManager *machineMan);
static void RankingsMachine_InitStrings(RankingsMachineManager *machineMan);
static void RankingsMachine_FreeStrings(RankingsMachineManager *machineMan);
static void RankingsMachine_InitBg(RankingsMachineManager *machineMan);
static void RankingsMachine_FreeBg(RankingsMachineManager *machineMan);
static void RankingsMachine_InitSprites(RankingsMachineManager *machineMan);
static void RankingsMachine_FreeSprites(RankingsMachineManager *machineMan);
static void RankingsMachine_ShowRecordsList(RankingsMachineManager *machineMan, u16 startListPos, u16 startCursorPos);
static void RankingsMachine_RemoveRecordsList(RankingsMachineManager *machineMan);
static void RankingsMachine_SetCursorPos(ListMenu *listMenu, u32 unused, u8 mute);
static void RankingsMachine_PrintDeleteInstruction(RankingsMachineManager *machineMan);
static void RankingsMachine_PrepareForDeletingRecord(RankingsMachineManager *machineMan);
static void RankingsMachine_PrintRecordExplanation(RankingsMachineManager *machineMan);
static void RankingsMachine_PrintRecordRankings(RankingsMachineManager *machineMan, BOOL showDeleteScreen);
static void RankingsMachine_ShowRankingList(RankingsMachineManager *machineMan, u16 cursorPos);
static void RankingsMachine_RemoveRankingList(RankingsMachineManager *machineMan);

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
    {
        .maxScore = 9999,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_BattleWinsValue,
    },
    {
        .maxScore = 9999,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_BattleWinsValue,
    },
    {
        .maxScore = 9999,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_BattleWinsValue,
    },
    {
        .maxScore = 9999,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_BattleWinsValue,
    },
    {
        .maxScore = 9999,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_BattleWinsValue,
    },
    {
        .maxScore = 7,
        .maxDigits = 1,
        .valueString = RankingsMachine_Text_AvgWinStreakValue,
    },
};

static const RecordPrintingData sPrintingDataPokemonRecords[] = {
    {
        .maxScore = 999999,
        .maxDigits = 6,
        .valueString = RankingsMachine_Text_PokemonCaughtValue,
    },
    {
        .maxScore = 999999,
        .maxDigits = 6,
        .valueString = RankingsMachine_Text_PokemonCaughtValue,
    },
    {
        .maxScore = 999999,
        .maxDigits = 6,
        .valueString = RankingsMachine_Text_PokemonHatchedValue,
    },
    {
        .maxScore = 999999,
        .maxDigits = 6,
        .valueString = RankingsMachine_Text_PokemonCaughtValue,
    },
};

static const RecordPrintingData sPrintingDataContestRecords[] = {
    {
        .maxScore = 9999,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_ContestWinsValue,
    },
    {
        .maxScore = 100,
        .maxDigits = 4,
        .valueString = RankingsMachine_Text_ContestWinPercentValue,
    },
    {
        .maxScore = 65535,
        .maxDigits = 5,
        .valueString = RankingsMachine_Text_RibbonsValue,
    },
};

static const RecordPrintingData *const sRecordsPrintingData[] = {
    sPrintingDataBattleRecords,
    sPrintingDataPokemonRecords,
    sPrintingDataContestRecords
};

static int RankingsMachine_InitManager(RankingsMachine *rankingsMachine, FieldSystem *fieldSystem, u16 machineID)
{
    RankingsMachineManager *machineMan;
    SaveData *saveData = fieldSystem->saveData;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_RANKINGS_MACHINE, HEAP_SIZE_RECORD_LIST);

    machineMan = Heap_Alloc(HEAP_ID_RANKINGS_MACHINE, sizeof(RankingsMachineManager));
    MI_CpuClear8(machineMan, sizeof(RankingsMachineManager));

    machineMan->heapID = HEAP_ID_RANKINGS_MACHINE;
    machineMan->listID = machineID % 3;
    machineMan->mode = machineID / 3;
    machineMan->recordsCount = GetRecordsListLength(machineMan->listID);
    machineMan->firstRecord = GetRecordsListFirstRecord(machineMan->listID);
    machineMan->fieldSystem = fieldSystem;
    machineMan->bgConfig = fieldSystem->bgConfig;
    machineMan->rankings = SaveData_GetRankings(saveData);
    machineMan->textDelay = Options_TextFrameDelay(SaveData_GetOptions(saveData));
    machineMan->frame = Options_Frame(SaveData_GetOptions(saveData));

    rankingsMachine->manager = machineMan;

    return STATE_INIT;
}

static int RankingsMachine_FreeManager(RankingsMachine *rankingsMachine)
{
    int recordID, rankingID, entryIDOffset, heapID;
    MachineRankingInfo *rankingInfo;
    RankingsMachineManager *machineMan = rankingsMachine->manager;

    for (recordID = 0; recordID < machineMan->recordsCount; recordID++) {
        entryIDOffset = 0;

        for (rankingID = 0; rankingID < machineMan->machineRankings[recordID].rankingsCount; rankingID++) {
            rankingInfo = &(machineMan->machineRankings[recordID].rankingsInfo[rankingID]);

            if (rankingInfo->playerID == PLAYERID_OWN || rankingInfo->exists) {
                continue;
            }

            Rankings_RemoveEntry(machineMan->rankings, (machineMan->mode * 13) + machineMan->firstRecord + recordID, rankingInfo->playerID - entryIDOffset);
            ++entryIDOffset;
        }
    }

    heapID = machineMan->heapID;

    Heap_Free(machineMan);
    MI_CpuClear8(machineMan, sizeof(RankingsMachineManager));
    Heap_Destroy(heapID);

    return STATE_FREE_MACHINE;
}

static int RankingsMachine_Init(RankingsMachineManager *machineMan, SaveData *saveData)
{
    RankingsMachine_NewRankings(machineMan, saveData);
    RankingsMachine_InitStrings(machineMan);
    RankingsMachine_InitBg(machineMan);
    RankingsMachine_InitSprites(machineMan);

    return STATE_PRINT_RECORD_TITLES;
}

static int RankingsMachine_Free(RankingsMachineManager *machineMan)
{
    RankingsMachine_FreeSprites(machineMan);
    RankingsMachine_FreeBg(machineMan);
    RankingsMachine_FreeStrings(machineMan);
    RankingsMachine_FreeRankings(machineMan);

    return STATE_FREE_MANAGER;
}

static int RankingsMachine_StateShowRecordsList(RankingsMachineManager *machineMan)
{
    RankingsMachine_ShowRecordsList(machineMan, machineMan->startListPos, machineMan->startCursorPos);
    return STATE_HANDLE_RECORDS_LIST_INPUT;
}

static int RankingsMachine_HandleRecordsListInput(RankingsMachineManager *machineMan)
{
    s32 input = ListMenu_ProcessInput(machineMan->listMenu);

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_RemoveRecordsList(machineMan);
        return STATE_FREE;
    }

    if (!(JOY_NEW(PAD_BUTTON_A))) {
        return STATE_HANDLE_RECORDS_LIST_INPUT;
    }

    Sound_PlayEffect(SEQ_SE_CONFIRM);

    switch (input) {
    case MENU_NOTHING_CHOSEN:
    case MENU_CANCEL:
    case 0xFFFF:
        RankingsMachine_RemoveRecordsList(machineMan);
        return STATE_FREE;
    default:
        machineMan->selectedRecordID = input;
        machineMan->cursorPos = 0;
        RankingsMachine_RemoveRecordsList(machineMan);
        return STATE_SHOW_RANKINGS_LIST;
    }

    return STATE_HANDLE_RECORDS_LIST_INPUT;
}

static int RankingsMachine_StateShowRankingList(RankingsMachineManager *machineMan)
{
    RankingsMachine_ShowRankingList(machineMan, machineMan->cursorPos);
    return STATE_HANDLE_RANKINGS_LIST_INPUT;
}

static int RankingsMachine_HandleRankingListInput(RankingsMachineManager *machineMan)
{
    if (JOY_NEW(PAD_BUTTON_B | PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_RemoveRankingList(machineMan);
        return STATE_PRINT_RECORD_TITLES;
    }

    if (JOY_NEW(PAD_BUTTON_SELECT)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_PrepareForDeletingRecord(machineMan);
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    }

    return STATE_HANDLE_RANKINGS_LIST_INPUT;
}

static int RankingsMachine_HandleDeleteRankingInput(RankingsMachineManager *machineMan)
{
    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_PrintRecordExplanation(machineMan);
        return STATE_HANDLE_RANKINGS_LIST_INPUT;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        machineMan->deleteState = 0;
        machineMan->rankingToDelete = &(machineMan->machineRankings[machineMan->selectedRecordID].rankingsInfo[machineMan->rankingIDs[machineMan->cursorPos]]);

        if (machineMan->rankingToDelete->playerID == PLAYERID_OWN) {
            return STATE_CANT_DELETE_OWN_RANKING;
        }

        return STATE_ASK_DELETE_RANKING;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        if (machineMan->cursorPos > 0) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            --machineMan->cursorPos;
            ManagedSprite_SetPositionXY(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 126, 16 + 16 * machineMan->cursorPos);
        }
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (machineMan->cursorPos < machineMan->lastRankingID - 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ++machineMan->cursorPos;
            ManagedSprite_SetPositionXY(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 126, 16 + 16 * machineMan->cursorPos);
        }
    }

    return STATE_HANDLE_DELETE_RANKINGS_INPUT;
}

static void RankingsMachine_MakeYesNoMenu(RankingsMachineManager *machineMan)
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

    machineMan->menu = Menu_MakeYesNoChoice(machineMan->bgConfig, &yesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, machineMan->heapID);
}

static int RankingsMachine_AskDeleteRanking(RankingsMachineManager *machineMan)
{
    switch (machineMan->deleteState) {
    case 0:
        Window_FillTilemap(&machineMan->msgBoxWindow, PIXEL_FILL(15));
        machineMan->printerID = Text_AddPrinterWithParamsAndColor(&machineMan->msgBoxWindow, FONT_MESSAGE, machineMan->text.deleteInstructions[1], 0, 0, machineMan->textDelay, TEXT_COLOR(1, 2, 15), NULL);
        ManagedSprite_SetExplicitPalette(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 2);
        machineMan->deleteState++;
        break;
    case 1:
        if (Text_IsPrinterActive(machineMan->printerID)) {
            break;
        }

        RankingsMachine_MakeYesNoMenu(machineMan);
        machineMan->deleteState++;
        break;
    case 2:
        switch (Menu_ProcessInputAndHandleExit(machineMan->menu, machineMan->heapID)) {
        case MENU_YES:
            machineMan->deleteState++;
            break;
        case MENU_CANCEL:
            machineMan->deleteState = 0xFF;
            break;
        }
        break;
    case 3:
        machineMan->rankingToDelete->exists = FALSE;
        RankingsMachine_PrintRecordRankings(machineMan, TRUE);
        ManagedSprite_SetExplicitPalette(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 1);
        machineMan->deleteState = 0;
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    case 0xFF:
        RankingsMachine_PrintDeleteInstruction(machineMan);
        ManagedSprite_SetExplicitPalette(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 1);
        machineMan->deleteState = 0;
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    }

    return STATE_ASK_DELETE_RANKING;
}

static int RankingsMachine_CantDeleteOwnRanking(RankingsMachineManager *machineMan)
{
    switch (machineMan->deleteState) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
        Window_FillTilemap(&machineMan->msgBoxWindow, PIXEL_FILL(15));
        machineMan->printerID = Text_AddPrinterWithParamsAndColor(&machineMan->msgBoxWindow, FONT_MESSAGE, machineMan->text.deleteInstructions[2], 0, 0, machineMan->textDelay, TEXT_COLOR(1, 2, 15), NULL);
        ManagedSprite_SetExplicitPalette(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 2);
        machineMan->deleteState++;
        break;
    case 1:
        if (Text_IsPrinterActive(machineMan->printerID)) {
            break;
        }

        machineMan->deleteState++;
        break;
    case 2:
        if (!(JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B))) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        RankingsMachine_PrintDeleteInstruction(machineMan);
        ManagedSprite_SetExplicitPalette(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 1);
        machineMan->deleteState = 0;
        return STATE_HANDLE_DELETE_RANKINGS_INPUT;
    }

    return STATE_CANT_DELETE_OWN_RANKING;
}

static void RankingsMachine_NewRankings(RankingsMachineManager *machineMan, SaveData *saveData)
{
    int recordID, playerID, rankingID, addedOwnPlayerID;
    RecordPlayersInfo *playersInfo;

    machineMan->machineRankings = Heap_Alloc(machineMan->heapID, sizeof(MachineRankings) * machineMan->recordsCount);
    MI_CpuClear8(machineMan->machineRankings, sizeof(MachineRankings) * machineMan->recordsCount);
    machineMan->recordsPlayersInfo[0] = Rankings_GetCurrentPlayerInfo(saveData, machineMan->listID, machineMan->heapID);

    for (recordID = 0; recordID < machineMan->recordsCount; recordID++) {
        machineMan->recordsPlayersInfo[recordID + 1] = Rankings_GetConnectedPlayersInfo(machineMan->rankings, (machineMan->mode * 13) + machineMan->firstRecord + recordID, machineMan->heapID);

        playersInfo = machineMan->recordsPlayersInfo[recordID + 1];
        rankingID = 0;
        addedOwnPlayerID = FALSE;

        if (playersInfo->count == 0) {
            machineMan->machineRankings[recordID].rankingsInfo[0].playerInfo = &(machineMan->recordsPlayersInfo[0]->players[recordID]);
            machineMan->machineRankings[recordID].rankingsInfo[0].exists = TRUE;
            machineMan->machineRankings[recordID].rankingsInfo[0].playerID = PLAYERID_OWN;
            machineMan->machineRankings[recordID].rankingsCount = 1;
        } else {
            for (playerID = 0; playerID < playersInfo->count; playerID++) {
                if (addedOwnPlayerID == FALSE && machineMan->recordsPlayersInfo[0]->players[recordID].recordValue >= playersInfo->players[playerID].recordValue) {
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(machineMan->recordsPlayersInfo[0]->players[recordID]);
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = PLAYERID_OWN;
                    ++rankingID;
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(playersInfo->players[playerID]);
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = playerID;
                    addedOwnPlayerID = TRUE;
                } else {
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(playersInfo->players[playerID]);
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                    machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = playerID;
                }

                ++rankingID;
            }

            if (!addedOwnPlayerID) {
                machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerInfo = &(machineMan->recordsPlayersInfo[0]->players[recordID]);
                machineMan->machineRankings[recordID].rankingsInfo[rankingID].exists = TRUE;
                machineMan->machineRankings[recordID].rankingsInfo[rankingID].playerID = PLAYERID_OWN;
            }

            machineMan->machineRankings[recordID].rankingsCount = playersInfo->count + 1;
        }
    }
}

static void RankingsMachine_FreeRankings(RankingsMachineManager *machineMan)
{
    int i;

    for (i = 0; i < machineMan->recordsCount + 1; i++) {
        RecordPlayersInfo_Free(machineMan->recordsPlayersInfo[i]);
    }

    Heap_Free(machineMan->machineRankings);
}

static void RankingsMachine_InitStrings(RankingsMachineManager *machineMan)
{
    int i;

    machineMan->text.msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_RANKINGS_MACHINE, machineMan->heapID);
    machineMan->text.strTemplate = StringTemplate_New(2, (38 * 2), machineMan->heapID);
    machineMan->text.strBuffer = String_Init((38 * 2), machineMan->heapID);
    machineMan->text.exit = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_Exit);
    machineMan->text.whichRecord = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_WhichRecordWouldYouLikeToSee);
    machineMan->text.deleteRecord = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_DeleteRecord);
    machineMan->text.recordEntryInfo = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_RecordEntryInfo);

    for (i = 0; i < machineMan->recordsCount; i++) {
        machineMan->text.titles[i] = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_SingleBattlesRecordTitle + machineMan->firstRecord + i);
        machineMan->text.explanations[i] = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_SingleBattlesRecordExplanation + machineMan->firstRecord + i);
    }

    for (i = 0; i < VALUE_STRINGS_COUNT; i++) {
        machineMan->text.values[i] = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_BattleWinsValue + i);
    }

    for (i = 0; i < DELETE_INSTRUCTIONS_STRINGS_COUNT; i++) {
        machineMan->text.deleteInstructions[i] = MessageLoader_GetNewString(machineMan->text.msgLoader, RankingsMachine_Text_SelectTheRecordYouWantToDeleteThenPressA + i);
    }
}

static void RankingsMachine_FreeStrings(RankingsMachineManager *machineMan)
{
    int i;

    for (i = 0; i < DELETE_INSTRUCTIONS_STRINGS_COUNT; i++) {
        String_Free(machineMan->text.deleteInstructions[i]);
    }

    for (i = 0; i < VALUE_STRINGS_COUNT; i++) {
        String_Free(machineMan->text.values[i]);
    }

    for (i = 0; i < machineMan->recordsCount; i++) {
        String_Free(machineMan->text.titles[i]);
        String_Free(machineMan->text.explanations[i]);
    }

    String_Free(machineMan->text.recordEntryInfo);
    String_Free(machineMan->text.deleteRecord);
    String_Free(machineMan->text.whichRecord);
    String_Free(machineMan->text.exit);
    String_Free(machineMan->text.strBuffer);
    StringTemplate_Free(machineMan->text.strTemplate);
    MessageLoader_Free(machineMan->text.msgLoader);
}

static void RankingsMachine_InitBg(RankingsMachineManager *machineMan)
{
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32 * (24 * (12 + 2) + 9 + 1), 0, machineMan->heapID);
    Bg_FillTilemapRect(machineMan->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, 32, 32, 17);
    Bg_ScheduleTilemapTransfer(machineMan->bgConfig, BG_LAYER_MAIN_1);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);

    machineMan->bgMain0Priority = Bg_GetPriority(machineMan->bgConfig, BG_LAYER_MAIN_0);
    machineMan->bgMain1Priority = Bg_GetPriority(machineMan->bgConfig, BG_LAYER_MAIN_1);

    Bg_SetPriority(BG_LAYER_MAIN_0, 2);
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    LoadMessageBoxGraphics(machineMan->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_SCROLLING_MESSAGE_BOX, 10, machineMan->frame, machineMan->heapID);
    LoadStandardWindowGraphics(machineMan->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, 0, machineMan->heapID);
    LoadStandardWindowGraphics(machineMan->bgConfig, BG_LAYER_MAIN_1, BASE_TILE_STANDARD_WINDOW_FRAME, 11, 0, machineMan->heapID);
    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, machineMan->heapID);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, machineMan->heapID);
    Window_Add(machineMan->bgConfig, &machineMan->msgBoxWindow, BG_LAYER_MAIN_3, 2, 19, 27, 4, 12, BASE_TILE_STANDARD_WINDOW_FRAME - MESSAGE_WINDOW_TILE_COUNT);
    Window_FillTilemap(&machineMan->msgBoxWindow, PIXEL_FILL(15));
}

static void RankingsMachine_FreeBg(RankingsMachineManager *machineMan)
{
    Window_EraseMessageBox(&machineMan->msgBoxWindow, 1);
    Window_ClearAndCopyToVRAM(&machineMan->msgBoxWindow);
    Window_Remove(&machineMan->msgBoxWindow);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32 * (24 * (12 + 2) + 9 + 1), 0, machineMan->heapID);
    Bg_FillTilemapRect(machineMan->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, 32, 32, 17);
    Bg_ScheduleTilemapTransfer(machineMan->bgConfig, BG_LAYER_MAIN_1);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_SetPriority(BG_LAYER_MAIN_0, machineMan->bgMain0Priority);
    Bg_SetPriority(BG_LAYER_MAIN_1, machineMan->bgMain1Priority);
}

static void RankingsMachine_InitSprites(RankingsMachineManager *machineMan)
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

    SpriteResourceManager_SetCapacities(&machineMan->spriteManager, &capacities, 2, machineMan->heapID);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__RANKING, machineMan->heapID);

    SpriteResourceManager_LoadPalette(&machineMan->spriteManager, narc, 0, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    SpriteResourceManager_LoadCell(&machineMan->spriteManager, narc, 2, 0, 13528);
    SpriteResourceManager_LoadAnimation(&machineMan->spriteManager, narc, 3, 0, 13528);
    SpriteResourceManager_LoadTiles(&machineMan->spriteManager, narc, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    NARC_dtor(narc);

    for (i = 0; i < 2; i++) {
        machineMan->managedSprites[i] = SpriteResourceManager_CreateManagedSprite(&machineMan->spriteManager, &spriteTemplates[i]);
    }

    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_DELETE_WINDOW], FALSE);
}

static void RankingsMachine_FreeSprites(RankingsMachineManager *machineMan)
{
    int i;

    for (i = 0; i < 2; i++) {
        if (machineMan->managedSprites[i] != NULL) {
            Sprite_DeleteAndFreeResources(machineMan->managedSprites[i]);
        }
    }

    SpriteResourceManager_Cleanup(&machineMan->spriteManager);
}

static void RankingsMachine_ShowRecordsList(RankingsMachineManager *machineMan, u16 startListPos, u16 startCursorPos)
{
    int i, listEntriesCount;

    listEntriesCount = machineMan->recordsCount + 1;
    machineMan->stringList = StringList_New(listEntriesCount, machineMan->heapID);

    Window_Add(machineMan->bgConfig, &machineMan->listWindow, 1, 4, 1, 24, listEntriesCount * 2, 13, 1);
    Window_FillTilemap(&machineMan->listWindow, PIXEL_FILL(15));

    for (i = 0; i < machineMan->recordsCount; i++) {
        StringList_AddFromString(machineMan->stringList, machineMan->text.titles[i], i);
    }

    StringList_AddFromString(machineMan->stringList, machineMan->text.exit, 0xFFFF);

    MI_CpuCopy8((void *)&sRankingsMachineListMenuTemplate, (void *)&(machineMan->listMenuTemplate), sizeof(ListMenuTemplate));

    machineMan->listMenuTemplate.window = &(machineMan->listWindow);
    machineMan->listMenuTemplate.choices = machineMan->stringList;
    machineMan->listMenuTemplate.parent = (void *)machineMan;
    machineMan->listMenuTemplate.count = listEntriesCount;
    machineMan->listMenuTemplate.yOffset = 0;
    machineMan->listMenuTemplate.cursorCallback = RankingsMachine_SetCursorPos;
    machineMan->listMenuTemplate.printCallback = NULL;
    machineMan->listMenu = ListMenu_New(&(machineMan->listMenuTemplate), startListPos, startCursorPos, machineMan->heapID);

    Window_DrawStandardFrame(&machineMan->listWindow, 0, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    Window_DrawMessageBoxWithScrollCursor(&machineMan->msgBoxWindow, 1, BASE_TILE_SCROLLING_MESSAGE_BOX, 10);
    Window_FillTilemap(&machineMan->msgBoxWindow, PIXEL_FILL(15));
    Text_AddPrinterWithParamsAndColor(&machineMan->msgBoxWindow, FONT_MESSAGE, machineMan->text.whichRecord, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], TRUE);
    Bg_ScheduleTilemapTransfer(machineMan->bgConfig, BG_LAYER_MAIN_3);
}

static void RankingsMachine_RemoveRecordsList(RankingsMachineManager *machineMan)
{
    ListMenu_Free(machineMan->listMenu, &(machineMan->startListPos), &(machineMan->startCursorPos));
    StringList_Free(machineMan->stringList);
    Window_ClearAndCopyToVRAM(&(machineMan->listWindow));
    Window_EraseStandardFrame(&(machineMan->listWindow), 0);
    Window_Remove(&(machineMan->listWindow));
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], FALSE);
    Bg_ScheduleTilemapTransfer(machineMan->bgConfig, BG_LAYER_MAIN_3);
}

static void RankingsMachine_SetCursorPos(ListMenu *listMenu, u32 unused, u8 mute)
{
    u16 listPos, cursorPos, count;
    RankingsMachineManager *machineMan = (RankingsMachineManager *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);

    if (mute == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    ListMenu_GetListAndCursorPos(listMenu, &listPos, &cursorPos);
    count = ListMenu_GetAttribute(listMenu, LIST_MENU_COUNT);

    ManagedSprite_SetPositionXY(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 126, 16 + 16 * (cursorPos + listPos));
}

static void RankingsMachine_PrintDeleteInstruction(RankingsMachineManager *machineMan)
{
    Window_FillTilemap(&machineMan->msgBoxWindow, PIXEL_FILL(15));
    Text_AddPrinterWithParamsAndColor(&machineMan->msgBoxWindow, FONT_MESSAGE, machineMan->text.deleteInstructions[0], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
}

static void RankingsMachine_PrepareForDeletingRecord(RankingsMachineManager *machineMan)
{
    RankingsMachine_PrintDeleteInstruction(machineMan);
    ManagedSprite_SetPositionXY(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], 126, 16 + machineMan->cursorPos * 16);
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], TRUE);
}

static void RankingsMachine_PrintRecordExplanation(RankingsMachineManager *machineMan)
{
    Window_FillTilemap(&machineMan->msgBoxWindow, PIXEL_FILL(15));
    Text_AddPrinterWithParamsAndColor(&machineMan->msgBoxWindow, FONT_MESSAGE, machineMan->text.explanations[machineMan->selectedRecordID], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], FALSE);
}

static void RankingsMachine_PrintRecordRankings(RankingsMachineManager *machineMan, BOOL showDeleteScreen)
{
    int i, unused, rank, rankingID, recordValue, prevRecordValue;
    MachineRankings *machineRankings;
    const RecordPrintingData *printingData;

    machineRankings = &(machineMan->machineRankings[machineMan->selectedRecordID]);
    printingData = &(sRecordsPrintingData[machineMan->listID][machineMan->selectedRecordID]);

    Window_FillTilemap(&machineMan->listWindow, PIXEL_FILL(15));

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

        StringTemplate_SetNumber(machineMan->text.strTemplate, 0, rank, 1, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetString(machineMan->text.strTemplate, 1, machineRankings->rankingsInfo[i].playerInfo->playerName, 2, 1, GAME_LANGUAGE);
        StringTemplate_Format(machineMan->text.strTemplate, machineMan->text.strBuffer, machineMan->text.recordEntryInfo);
        Text_AddPrinterWithParamsAndColor(&machineMan->listWindow, FONT_SYSTEM, machineMan->text.strBuffer, 8, rankingID * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
        StringTemplate_SetNumber(machineMan->text.strTemplate, 0, recordValue, printingData->maxDigits, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_Format(machineMan->text.strTemplate, machineMan->text.strBuffer, machineMan->text.values[printingData->valueString - 15]);
        Text_AddPrinterWithParamsAndColor(&machineMan->listWindow, FONT_SYSTEM, machineMan->text.strBuffer, (24 * 8) - Font_CalcStringWidth(FONT_SYSTEM, machineMan->text.strBuffer, 0) - 8, rankingID * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);

        machineMan->rankingIDs[rankingID] = i;
        prevRecordValue = recordValue;

        if (++rankingID >= MAX_RANKINGS_ENTRIES) {
            break;
        }
    }

    Window_CopyToVRAM(&machineMan->listWindow);

    machineMan->lastRankingID = rankingID;

    if (machineMan->cursorPos > 0 && machineMan->cursorPos >= machineMan->lastRankingID) {
        machineMan->cursorPos--;
    }

    if (showDeleteScreen) {
        RankingsMachine_PrepareForDeletingRecord(machineMan);
    } else {
        RankingsMachine_PrintRecordExplanation(machineMan);
    }
}

static void RankingsMachine_ShowRankingList(RankingsMachineManager *machineMan, u16 cursorPos)
{
    Window_Add(machineMan->bgConfig, &machineMan->listWindow, BG_LAYER_MAIN_1, 4, 1, 24, 12, 13, 1);
    Window_DrawStandardFrame(&machineMan->listWindow, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    RankingsMachine_PrintRecordRankings(machineMan, FALSE);
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_DELETE_WINDOW], TRUE);
    Window_Add(machineMan->bgConfig, &machineMan->rankingsWindow, BG_LAYER_MAIN_3, 8, 14, 8, 2, 13, BASE_TILE_RANKINGS_WINDOW);
    Window_FillTilemap(&machineMan->rankingsWindow, PIXEL_FILL(0));
    Text_AddPrinterWithParamsAndColor(&machineMan->rankingsWindow, FONT_SYSTEM, machineMan->text.deleteRecord, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Bg_ScheduleTilemapTransfer(machineMan->bgConfig, BG_LAYER_MAIN_3);
}

static void RankingsMachine_RemoveRankingList(RankingsMachineManager *machineMan)
{
    Window_ClearAndCopyToVRAM(&machineMan->listWindow);
    Window_EraseStandardFrame(&machineMan->listWindow, 0);
    Window_Remove(&machineMan->listWindow);
    Window_ClearAndCopyToVRAM(&machineMan->rankingsWindow);
    Window_Remove(&machineMan->rankingsWindow);
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_CURSOR], FALSE);
    ManagedSprite_SetDrawFlag(machineMan->managedSprites[MANAGED_SPRITE_DELETE_WINDOW], FALSE);
}

static BOOL RankingsMachine_Show(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    RankingsMachine *rankingsMachine = FieldTask_GetEnv(task);
    RankingsMachineManager *machineMan = rankingsMachine->manager;

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
        rankingsMachine->state = RankingsMachine_CantDeleteOwnRanking(machineMan);
        SpriteList_Update(rankingsMachine->manager->spriteManager.spriteList);
        break;
    case STATE_UNUSED:
        if (!(JOY_NEW(PAD_BUTTON_A))) {
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

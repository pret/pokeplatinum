#include "applications/journal_display/journal_printer.h"

#include <nitro.h>
#include <string.h>

#include "generated/genders.h"
#include "generated/journal_location_events.h"
#include "generated/journal_online_events.h"
#include "generated/trainer_classes.h"

#include "applications/journal_display/journal_controller.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "journal.h"
#include "map_header.h"
#include "message.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_data.h"

#include "res/text/bank/journal_entries.h"
#include "res/text/bank/location_names.h"
#include "res/text/bank/npc_trainer_names.h"

#define ROW_HEIGHT              16
#define LOCATION_EVENT_Y_OFFSET ROW_HEIGHT
#define POKEMON_EVENT_Y_OFFSET  (LOCATION_EVENT_Y_OFFSET * MAX_JOURNAL_LOCATION_EVENTS + ROW_HEIGHT)
#define TRAINER_EVENT_Y_OFFSET  (POKEMON_EVENT_Y_OFFSET + ROW_HEIGHT)
#define ONLINE_EVENT_Y_OFFSET   (TRAINER_EVENT_Y_OFFSET + ROW_HEIGHT)

static u8 JournalPrinter_PrintTitle(JournalManager *journalManager, Window *titleWindow, Window *eventsWindow);
static void JournalPrinter_PrintLocationEvents(JournalManager *journalManager, Window *window);
static void JournalPrinter_PrintPokemonEvent(JournalManager *journalManager, Window *window);
static void JournalPrinter_PrintTrainerEvent(JournalManager *journalManager, Window *window);
static void JournalPrinter_PrintOnlineEvents(JournalManager *journalManager, Window *window);
static void JournalPrinter_PrintRestedAtHome(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintLeftResearchLab(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedPCBox(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintShoppedAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintLotsOfShoppingAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintSoldALittleAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintSoldALotAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintDidBusinessAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintGymWasTooTough(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintBeatGymLeader(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintBeatEliteFourMember(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintBeatChampion(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintArrivedInLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintLeftCave(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintLeftBuilding(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintGameCorner(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintSafariGame(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintItemWasObtained(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedRockSmash(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedCut(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintFlewToLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedDefog(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedStrength(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedSurf(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedRockClimb(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedWaterfall(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedFlash(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintWarpedToLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedDig(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintLuredPokemon(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedSoftboiled(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintUsedMilkDrink(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintDugUnderground(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintBuiltSecretBase(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row);
static void JournalPrinter_PrintPlayedAtBattleFacility(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row, int eventType);
static void JournalPrinter_PrintPokemonCaught(JournalManager *journalManager, Window *window, JournalEntryMon *journalEntryMon);
static void JournalPrinter_PrintPokemonDefeated(JournalManager *journalManager, Window *window, JournalEntryMon *journalEntryMon);
static void JournalPrinter_PrintSingleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintDoubleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMultiBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMixSingleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMixMultiBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintGreetedInUnionRoom(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintGotPokemonFromTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintDrewPictures(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintGotPokemonInFriendTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintChattedWithOthers(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintUnionBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMixedRecords(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintPlacedInContest(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMadePoffins(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintGotPokemonGTS(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintBattleRoom(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintSpinTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMiscEvent1(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row, int eventType);
static void JournalPrinter_PrintChattedInPlaza(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintGotTapToy(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintPlazaMinigame(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);
static void JournalPrinter_PrintMiscEvent2(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row, int eventType);
static void JournalPrinter_PrintWiFiClub(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row);

static const WindowTemplate Unk_ov81_021D3508[] = {
    { 0x0, 0x2, 0x2, 0x18, 0x2, 0xF, 0x1 },
    { 0x0, 0x4, 0x4, 0x1B, 0x12, 0xF, 0x31 },
    { 0x1, 0x2, 0x2, 0x18, 0x2, 0xF, 0x1 },
    { 0x1, 0x4, 0x4, 0x1B, 0x12, 0xF, 0x31 }
};

void JournalPrinter_AddWindows(JournalManager *journalManager)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        Window_AddFromTemplate(journalManager->bgConfig, &journalManager->window[i], &Unk_ov81_021D3508[i]);
    }
}

void JournalPrinter_RemoveWindows(JournalManager *journalManager)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        Window_Remove(&journalManager->window[i]);
    }
}

void JournalPrinter_PrintEntry(JournalManager *journalManager, u32 param1)
{
    Window *titleWindow;
    Window *eventsWindow;

    if (param1 == 0) {
        titleWindow = &journalManager->window[0];
        eventsWindow = &journalManager->window[1];
    } else {
        titleWindow = &journalManager->window[2];
        eventsWindow = &journalManager->window[3];
    }

    Window_FillTilemap(titleWindow, 0);
    Window_FillTilemap(eventsWindow, 0);

    if (JournalPrinter_PrintTitle(journalManager, titleWindow, eventsWindow) == 1) {
        JournalPrinter_PrintLocationEvents(journalManager, eventsWindow);
        JournalPrinter_PrintPokemonEvent(journalManager, eventsWindow);
        JournalPrinter_PrintTrainerEvent(journalManager, eventsWindow);
        JournalPrinter_PrintOnlineEvents(journalManager, eventsWindow);
    }

    Window_ScheduleCopyToVRAM(titleWindow);
    Window_ScheduleCopyToVRAM(eventsWindow);
}

static u8 JournalPrinter_PrintTitle(JournalManager *journalManager, Window *titleWindow, Window *eventsWindow)
{
    JournalEntryTitle journalEntryTitle;
    Strbuf *strbuf;
    u32 xOffset;

    JournalEntry_GetData(journalManager->journalEntry, &journalEntryTitle, JOURNAL_TITLE, journalManager->page);

    if (journalEntryTitle.year == 0 && journalEntryTitle.month == 0 && journalEntryTitle.day == 0) {
        return 0;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_Date);

    StringTemplate_SetMonthName(journalManager->template, 0, journalEntryTitle.month);
    StringTemplate_SetNumber(journalManager->template, 1, journalEntryTitle.day, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Strbuf_Free(strbuf);
    Text_AddPrinterWithParamsAndColor(titleWindow, FONT_SYSTEM, journalManager->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    xOffset = Font_CalcStrbufWidth(FONT_SYSTEM, journalManager->strbuf, 0);
    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_Sunday + journalEntryTitle.week);
    Text_AddPrinterWithParamsAndColor(titleWindow, FONT_SYSTEM, strbuf, xOffset + 12, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_StartedFromLocation);
    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryTitle.mapID));

    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(eventsWindow, FONT_SYSTEM, journalManager->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);

    return 1;
}

static void JournalPrinter_PrintLocationEvents(JournalManager *journalManager, Window *window)
{
    JournalEntryLocationEvent journalEntryLocationEvent[MAX_JOURNAL_LOCATION_EVENTS];
    u32 i;

    JournalEntry_GetData(journalManager->journalEntry, &journalEntryLocationEvent[0], JOURNAL_LOCATION, journalManager->page);

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        switch (journalEntryLocationEvent[i].eventType) {
        case LOCATION_EVENT_NONE:
            return;
        case LOCATION_EVENT_RESTED_AT_HOME:
            JournalPrinter_PrintRestedAtHome(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_LEFT_RESEARCH_LAB:
            JournalPrinter_PrintLeftResearchLab(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_PC_BOX:
            JournalPrinter_PrintUsedPCBox(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_SHOPPED_AT_MART:
            JournalPrinter_PrintShoppedAtMart(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_LOTS_OF_SHOPPING:
            JournalPrinter_PrintLotsOfShoppingAtMart(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_SOLD_A_LITTLE:
            JournalPrinter_PrintSoldALittleAtMart(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_SOLD_A_LOT:
            JournalPrinter_PrintSoldALotAtMart(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_BUSINESS_AT_MART:
            JournalPrinter_PrintDidBusinessAtMart(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_GYM_WAS_TOO_TOUGH:
            JournalPrinter_PrintGymWasTooTough(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_BEAT_GYM_LEADER:
            JournalPrinter_PrintBeatGymLeader(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER:
            JournalPrinter_PrintBeatEliteFourMember(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_BEAT_CHAMPION:
            JournalPrinter_PrintBeatChampion(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_ARRIVED_IN_LOCATION:
            JournalPrinter_PrintArrivedInLocation(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_LEFT_CAVE:
            JournalPrinter_PrintLeftCave(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_LEFT_BUILDING:
            JournalPrinter_PrintLeftBuilding(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_GAME_CORNER:
            JournalPrinter_PrintGameCorner(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_SAFARI_GAME:
            JournalPrinter_PrintSafariGame(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_ITEM_WAS_OBTAINED:
            JournalPrinter_PrintItemWasObtained(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_ROCK_SMASH:
            JournalPrinter_PrintUsedRockSmash(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_CUT:
            JournalPrinter_PrintUsedCut(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_FLEW_TO_LOCATION:
            JournalPrinter_PrintFlewToLocation(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_DEFOG:
            JournalPrinter_PrintUsedDefog(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_STRENGTH:
            JournalPrinter_PrintUsedStrength(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_SURF:
            JournalPrinter_PrintUsedSurf(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_ROCK_CLIMB:
            JournalPrinter_PrintUsedRockClimb(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_WATERFALL:
            JournalPrinter_PrintUsedWaterfall(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_FLASH:
            JournalPrinter_PrintUsedFlash(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_WARPED_TO_LOCATION:
            JournalPrinter_PrintWarpedToLocation(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_DIG:
            JournalPrinter_PrintUsedDig(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_LURED_POKEMON:
            JournalPrinter_PrintLuredPokemon(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_SOFTBOILED:
            JournalPrinter_PrintUsedSoftboiled(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_USED_MILK_DRINK:
            JournalPrinter_PrintUsedMilkDrink(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_DUG_UNDERGROUND:
            JournalPrinter_PrintDugUnderground(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_BUILT_SECRET_BASE:
            JournalPrinter_PrintBuiltSecretBase(journalManager, window, &journalEntryLocationEvent[i], i);
            break;
        case LOCATION_EVENT_BATTLE_TOWER:
        case LOCATION_EVENT_BATTLE_FACTORY:
        case LOCATION_EVENT_BATTLE_CASTLE:
        case LOCATION_EVENT_BATTLE_HALL:
        case LOCATION_EVENT_BATTLE_ARCADE:
            JournalPrinter_PrintPlayedAtBattleFacility(journalManager, window, &journalEntryLocationEvent[i], i, journalEntryLocationEvent[i].eventType);
            break;
        }
    }
}

static void JournalPrinter_PrintPokemonEvent(JournalManager *journalManager, Window *window)
{
    JournalEntryMon journalEntryMon;

    JournalEntry_GetData(journalManager->journalEntry, &journalEntryMon, JOURNAL_MON, journalManager->page);

    switch (journalEntryMon.battleResult) {
    case 0:
        return;

    case POKEMON_CAUGHT:
        JournalPrinter_PrintPokemonCaught(journalManager, window, &journalEntryMon);
        break;

    case POKEMON_DEFEATED:
        JournalPrinter_PrintPokemonDefeated(journalManager, window, &journalEntryMon);
        break;
    }
}

static void JournalPrinter_PrintTrainerEvent(JournalManager *journalManager, Window *window)
{
    JournalEntryTrainer journalEntryTrainer;
    Strbuf *strbuf;
    u32 strLength;

    JournalEntry_GetData(journalManager->journalEntry, &journalEntryTrainer, JOURNAL_TRAINER, journalManager->page);

    if (journalEntryTrainer.standard == 0) {
        return;
    }

    Strbuf *name = MessageBank_GetNewStrbufFromNARC(NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID), LocationNames_Text_Route227);
    strLength = Strbuf_Length(name);
    Strbuf_Free(name);

    if (Trainer_LoadParam(journalEntryTrainer.trainerID, TRDATA_CLASS) == TRAINER_CLASS_RIVAL) {
        name = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_RivalName);
        StringTemplate_SetRivalName(journalManager->template, 1, journalManager->saveData);
        StringTemplate_Format(journalManager->template, journalManager->strbuf, name);
        strLength += Strbuf_Length(journalManager->strbuf);
        Strbuf_Free(name);
    } else {
        name = MessageBank_GetNewStrbufFromNARC(NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NPC_TRAINER_NAMES, journalEntryTrainer.trainerID, pl_msg_00000618_00042);
        strLength += Strbuf_Length(name);
        Strbuf_Free(name);
        StringTemplate_SetTrainerName(journalManager->template, 1, journalEntryTrainer.trainerID);
    }

    if (strLength <= 14) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BattledTrainerAtLocation);
    } else if (strLength <= 16) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatTrainerAtLocation);
    } else if (strLength <= 19) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatTrainerAtLocation_2);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_MetLocationsTrainer);
    }

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, TRAINER_EVENT_Y_OFFSET, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintOnlineEvents(JournalManager *journalManager, Window *window)
{
    JournalEntryOnlineEvent journalEntryOnlineEvent[MAX_JOURNAL_ONLINE_EVENTS];
    u32 i;

    JournalEntry_GetData(journalManager->journalEntry, &journalEntryOnlineEvent[0], JOURNAL_ONLINE_EVENT, journalManager->page);

    for (i = 0; i < MAX_JOURNAL_ONLINE_EVENTS; i++) {
        switch (journalEntryOnlineEvent[i].eventType) {
        case ONLINE_EVENT_NONE:
            return;
        case ONLINE_EVENT_SINGLE_BATTLE:
            JournalPrinter_PrintSingleBattleEvent(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_DOUBLE_BATTLE:
            JournalPrinter_PrintDoubleBattleEvent(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_MULTI_BATTLE:
            JournalPrinter_PrintMultiBattleEvent(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_MIX_SINGLE_BATTLE:
            JournalPrinter_PrintMixSingleBattleEvent(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_MIX_MULTI_BATTLE:
            JournalPrinter_PrintMixMultiBattleEvent(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_GREETED_IN_UNION_ROOM:
            JournalPrinter_PrintGreetedInUnionRoom(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_GOT_POKEMON_FROM_TRADE:
            JournalPrinter_PrintGotPokemonFromTrade(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_DREW_PICTURES:
            JournalPrinter_PrintDrewPictures(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_GOT_POKEMON_IN_FRIEND_TRADE:
            JournalPrinter_PrintGotPokemonInFriendTrade(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_CHATTED_WITH_OTHERS:
            JournalPrinter_PrintChattedWithOthers(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_UNION_BATTLE:
            JournalPrinter_PrintUnionBattleEvent(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_MIXED_RECORDS:
            JournalPrinter_PrintMixedRecords(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_PLACED_IN_CONTEST:
            JournalPrinter_PrintPlacedInContest(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_MADE_POFFINS:
            JournalPrinter_PrintMadePoffins(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_GOT_POKEMON_GTS:
            JournalPrinter_PrintGotPokemonGTS(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_BATTLE_ROOM:
            JournalPrinter_PrintBattleRoom(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_SPIN_TRADE:
            JournalPrinter_PrintSpinTrade(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_WATCHED_BATTLE_VIDEOS:
        case ONLINE_EVENT_CHECKED_RANKINGS:
        case ONLINE_EVENT_CHECKED_DRESS_UP_DATA:
        case ONLINE_EVENT_CHECKED_BOX_DATA:
            JournalPrinter_PrintMiscEvent1(journalManager, window, &journalEntryOnlineEvent[i], i, journalEntryOnlineEvent[i].eventType);
            break;
        case ONLINE_EVENT_CHATTED_IN_PLAZA:
            JournalPrinter_PrintChattedInPlaza(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_GOT_TAP_TOY:
            JournalPrinter_PrintGotTapToy(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_PLAZA_MINIGAME:
            JournalPrinter_PrintPlazaMinigame(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        case ONLINE_EVENT_PLAYED_WITH_FOOTPRINT_STAMP:
        case ONLINE_EVENT_VIEWED_PLAZA_VISITOR_PROFILES:
        case ONLINE_EVENT_READ_PLAZA_NEWS:
        case ONLINE_EVENT_JOINED_PARADE:
            JournalPrinter_PrintMiscEvent2(journalManager, window, &journalEntryOnlineEvent[i], i, journalEntryOnlineEvent[i].eventType);
            break;
        case ONLINE_EVENT_WIFI_CLUB:
            JournalPrinter_PrintWiFiClub(journalManager, window, &journalEntryOnlineEvent[i], i);
            break;
        }
    }
}

static void JournalPrinter_PrintRestedAtHome(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_RestedAtHome);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLeftResearchLab(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LeftResearchLab);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedPCBox(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedPcBox);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintShoppedAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_ShoppedAtPokeMart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLotsOfShoppingAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LotsOfShoppingAtPokeMart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSoldALittleAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_Sold_a_little_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSoldALotAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_Sold_a_lot_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDidBusinessAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DidBusinessAtPokeMart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGymWasTooTough(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GymWasTooTough);

    StringTemplate_SetGymName(journalManager->template, 0, journalEntryLocationEvent->locationID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBeatGymLeader(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatLocationsGymLeader);

    StringTemplate_SetGymName(journalManager->template, 0, journalEntryLocationEvent->locationID);
    StringTemplate_SetTrainerName(journalManager->template, 1, journalEntryLocationEvent->trainerID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBeatEliteFourMember(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatEliteFourMember);

    StringTemplate_SetTrainerName(journalManager->template, 0, journalEntryLocationEvent->trainerID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBeatChampion(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatChampion);

    StringTemplate_SetTrainerName(journalManager->template, 0, journalEntryLocationEvent->trainerID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintArrivedInLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_ArrivedInLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLeftCave(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf;
    u32 mapLabelTextID = journalEntryLocationEvent->locationID;

    if (mapLabelTextID == LocationNames_Text_ValleyWindworks || mapLabelTextID == LocationNames_Text_SnowpointTemple || mapLabelTextID == LocationNames_Text_FuegoIronworks) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DepartedFromLocation);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GotThroughLocation);
    }

    StringTemplate_SetLocationName(journalManager->template, 0, mapLabelTextID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLeftBuilding(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf;
    u32 mapLabelTextID = journalEntryLocationEvent->locationID;

    if (Journal_DoesBuildingUseExitedMessage(mapLabelTextID) == FALSE) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DepartedFromLocation);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_ExitedFromLocation);
    }

    StringTemplate_SetLocationName(journalManager->template, 0, mapLabelTextID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGameCorner(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PlayedAtGameCorner);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSafariGame(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PlayedSafariGame);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintItemWasObtained(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_ItemWasObtained);

    StringTemplate_SetItemName(journalManager->template, 0, journalEntryLocationEvent->item);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedRockSmash(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedRockSmashAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedCut(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedCutAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintFlewToLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_FlewToLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedDefog(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedDefogAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedStrength(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedStrengthAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedSurf(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedSurfAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedRockClimb(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedRockClimbAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedWaterfall(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedWaterfallAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedFlash(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedFlashAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintWarpedToLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_WarpedToLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedDig(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedDigAtLocation);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLuredPokemon(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LuredPokemon);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedSoftboiled(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedSoftboiled);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedMilkDrink(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_UsedMilkDrink);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDugUnderground(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DugUnderground);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBuiltSecretBase(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BuiltSecretBase);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPlayedAtBattleFacility(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row, int eventType)
{
    u32 message;
    Strbuf *strbuf;

    switch (eventType) {
    case LOCATION_EVENT_BATTLE_TOWER:
        message = JournalEntries_Text_PlayedAtBattleTower;
        break;
    case LOCATION_EVENT_BATTLE_FACTORY:
        message = JournalEntries_Text_PlayedAtBattleFactory;
        break;
    case LOCATION_EVENT_BATTLE_CASTLE:
        message = JournalEntries_Text_PlayedAtBattleCastle;
        break;
    case LOCATION_EVENT_BATTLE_HALL:
        message = JournalEntries_Text_PlayedAtBattleHall;
        break;
    case LOCATION_EVENT_BATTLE_ARCADE:
    default:
        message = JournalEntries_Text_PlayedAtBattleArcade;
        break;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, LOCATION_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_SetSpeciesName(JournalManager *journalManager, u16 species, u8 gender, u8 idx)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_JOURNAL);

    sub_02074088(mon, species, 1, 32, gender, 0, 0);
    StringTemplate_SetSpeciesName(journalManager->template, idx, Pokemon_GetBoxPokemon(mon));
    Heap_Free(mon);
}

static void JournalPrinter_PrintPokemonCaught(JournalManager *journalManager, Window *window, JournalEntryMon *journalEntryMon)
{
    Strbuf *strbuf;

    switch (journalEntryMon->stringVariant) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_CaughtPokemon);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PokemonWasCaught);
        break;
    default:
        if (journalEntryMon->gender == GENDER_MALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_CaughtMalePokemon);
        } else if (journalEntryMon->gender == GENDER_FEMALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_CaughtFemalePokemon);
        } else {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_CaughtPokemon);
        }
    }

    JournalPrinter_SetSpeciesName(journalManager, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(journalManager->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, POKEMON_EVENT_Y_OFFSET, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPokemonDefeated(JournalManager *journalManager, Window *window, JournalEntryMon *journalEntryMon)
{
    Strbuf *strbuf;

    switch (journalEntryMon->stringVariant) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PokemonWasDefeated);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DefeatedPokemon);
        break;
    default:
        if (journalEntryMon->gender == GENDER_MALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DefeatedMalePokemon);
        } else if (journalEntryMon->gender == GENDER_FEMALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DefeatedFemalePokemon);
        } else {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PokemonWasDefeated);
        }
    }

    JournalPrinter_SetSpeciesName(journalManager, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(journalManager->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, POKEMON_EVENT_Y_OFFSET, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_SetPlayerOrPokemonName(JournalManager *journalManager, u16 *name, u8 unused, u8 idx)
{
    Strbuf *strbuf = Strbuf_Init(32, HEAP_ID_JOURNAL);

    Strbuf_CopyChars(strbuf, name);
    StringTemplate_SetStrbuf(journalManager->template, idx, strbuf, unused, TRUE, GAME_LANGUAGE);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSingleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatPlayerSingle);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LostToPlayerSingle);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_TiedPlayerSingle);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDoubleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatPlayerDouble);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LostToPlayerDouble);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_TiedPlayerDouble);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMultiBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatPlayersMulti);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LostToPlayersMulti);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_TiedPlayersMulti);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName2, journalEntryOnlineEvent->unused2, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMixSingleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatPlayerMix);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LostToPlayerMix);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_TiedPlayerMix);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMixMultiBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatPlayersMix);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LostToPlayersMix);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_TiedPlayersMix);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName2, journalEntryOnlineEvent->unused2, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGreetedInUnionRoom(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GreetedPlayerInUnionRoom);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotPokemonFromTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GotPokemonFromPlayer);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->pokemonName, journalEntryOnlineEvent->unused3, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDrewPictures(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DrewPicturesWithOthers);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotPokemonInFriendTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GotPokemonInFriendTrade);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->pokemonName, journalEntryOnlineEvent->unused3, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintChattedWithOthers(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_ChattedWithOthers);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUnionBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_BeatPlayerUnion);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_LostToPlayerUnion);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_TiedPlayerUnion);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMixedRecords(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_MixedRecords);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPlacedInContest(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PlacedNumberInContest);

    StringTemplate_SetNumber(journalManager->template, 0, journalEntryOnlineEvent->result, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMadePoffins(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_MadePoffinsInGroup);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotPokemonGTS(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GotPlayersPokemonGts);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->pokemonName, journalEntryOnlineEvent->unused3, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBattleRoom(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_WonInBattleRoom);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSpinTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_DidSpinTrade);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMiscEvent1(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row, int eventType)
{
    Strbuf *strbuf;
    u32 message;

    switch (eventType) {
    case ONLINE_EVENT_WATCHED_BATTLE_VIDEOS:
        message = JournalEntries_Text_WatchedBattleVideos;
        break;
    case ONLINE_EVENT_CHECKED_RANKINGS:
        message = JournalEntries_Text_CheckedRankings;
        break;
    case ONLINE_EVENT_CHECKED_DRESS_UP_DATA:
        message = JournalEntries_Text_CheckedDressUpData;
        break;
    case ONLINE_EVENT_CHECKED_BOX_DATA:
    default:
        message = JournalEntries_Text_CheckedBoxData;
        break;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintChattedInPlaza(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_ChattedWithPlayerInPlaza);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotTapToy(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_GotTapToyFromPlayer);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPlazaMinigame(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PlayedPlazaMiniGame);

    StringTemplate_SetPlazaMinigameName(journalManager->template, 0, journalEntryOnlineEvent->result);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMiscEvent2(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row, int eventType)
{
    Strbuf *strbuf;
    u32 message;

    switch (eventType) {
    case ONLINE_EVENT_PLAYED_WITH_FOOTPRINT_STAMP:
        message = JournalEntries_Text_PlayedWithFootprintStamp;
        break;
    case ONLINE_EVENT_VIEWED_PLAZA_VISITOR_PROFILES:
        message = JournalEntries_Text_ViewedPlazaVisitorProfiles;
        break;
    case ONLINE_EVENT_READ_PLAZA_NEWS:
        message = JournalEntries_Text_ReadPlazaNews;
        break;
    case ONLINE_EVENT_JOINED_PARADE:
    default:
        message = JournalEntries_Text_JoinedParade;
        break;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintWiFiClub(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, JournalEntries_Text_PlayedAtWiFiClub);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, ONLINE_EVENT_Y_OFFSET + row * ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

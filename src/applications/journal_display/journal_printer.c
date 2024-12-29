#include "applications/journal_display/journal_printer.h"

#include <nitro.h>
#include <string.h>

#include "constants/trainer.h"
#include "consts/gender.h"
#include "consts/journal.h"

#include "applications/journal_display/journal_controller.h"
#include "text/gmm/message_bank_journal_entries.h"
#include "text/gmm/message_bank_location_names.h"

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

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_date);

    StringTemplate_SetMonthName(journalManager->template, 0, journalEntryTitle.month);
    StringTemplate_SetNumber(journalManager->template, 1, journalEntryTitle.day, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Strbuf_Free(strbuf);
    Text_AddPrinterWithParamsAndColor(titleWindow, FONT_SYSTEM, journalManager->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    xOffset = Font_CalcStrbufWidth(FONT_SYSTEM, journalManager->strbuf, 0);
    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_sunday + journalEntryTitle.week);
    Text_AddPrinterWithParamsAndColor(titleWindow, FONT_SYSTEM, strbuf, xOffset + 12, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_started_from_location);
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

    Strbuf *name = MessageBank_GetNewStrbufFromNARC(26, 433, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID), 42);
    strLength = Strbuf_Length(name);
    Strbuf_Free(name);

    if (TrainerData_LoadParam(journalEntryTrainer.trainerID, TRDATA_CLASS) == TRAINER_CLASS_RIVAL) {
        name = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_rival_name);
        StringTemplate_SetRivalName(journalManager->template, 1, journalManager->saveData);
        StringTemplate_Format(journalManager->template, journalManager->strbuf, name);
        strLength += Strbuf_Length(journalManager->strbuf);
        Strbuf_Free(name);
    } else {
        name = MessageBank_GetNewStrbufFromNARC(26, 618, journalEntryTrainer.trainerID, 42);
        strLength += Strbuf_Length(name);
        Strbuf_Free(name);
        StringTemplate_SetTrainerName(journalManager->template, 1, journalEntryTrainer.trainerID);
    }

    if (strLength <= 14) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_battled_trainer_at_location);
    } else if (strLength <= 16) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_trainer_at_location);
    } else if (strLength <= 19) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_trainer_at_location_2);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_met_locations_trainer);
    }

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, ((16 * 4 + 16) + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
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
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_rested_at_home);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLeftResearchLab(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_left_research_lab);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedPCBox(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_pc_box);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintShoppedAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_shopped_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLotsOfShoppingAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lots_of_shopping_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSoldALittleAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_sold_a_little_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSoldALotAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_sold_a_lot_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDidBusinessAtMart(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_did_business_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGymWasTooTough(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_gym_was_too_tough);

    StringTemplate_SetGymName(journalManager->template, 0, journalEntryLocationEvent->locationID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBeatGymLeader(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_locations_gym_leader);

    StringTemplate_SetGymName(journalManager->template, 0, journalEntryLocationEvent->locationID);
    StringTemplate_SetTrainerName(journalManager->template, 1, journalEntryLocationEvent->trainerID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBeatEliteFourMember(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_elite_four_member);

    StringTemplate_SetTrainerName(journalManager->template, 0, journalEntryLocationEvent->trainerID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBeatChampion(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_champion);

    StringTemplate_SetTrainerName(journalManager->template, 0, journalEntryLocationEvent->trainerID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintArrivedInLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_arrived_in_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLeftCave(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf;
    u32 mapLabelTextID = journalEntryLocationEvent->locationID;

    if (mapLabelTextID == location_names_00047 || mapLabelTextID == location_names_00064 || mapLabelTextID == location_names_00049) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_departed_from_location);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_got_through_location);
    }

    StringTemplate_SetLocationName(journalManager->template, 0, mapLabelTextID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLeftBuilding(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf;
    u32 mapLabelTextID = journalEntryLocationEvent->locationID;

    if (sub_0202C6A4(mapLabelTextID) == 0) {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_departed_from_location);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_exited_from_location);
    }

    StringTemplate_SetLocationName(journalManager->template, 0, mapLabelTextID);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGameCorner(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_played_at_game_corner);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSafariGame(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_played_safari_game);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintItemWasObtained(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_item_was_obtained);

    StringTemplate_SetItemName(journalManager->template, 0, journalEntryLocationEvent->item);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedRockSmash(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_rock_smash_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedCut(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_cut_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintFlewToLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_flew_to_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedDefog(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_defog_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedStrength(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_strength_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedSurf(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_surf_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedRockClimb(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_rock_climb_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedWaterfall(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_waterfall_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedFlash(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_flash_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintWarpedToLocation(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_warped_to_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedDig(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_dig_at_location);

    StringTemplate_SetLocationName(journalManager->template, 0, MapHeader_GetMapLabelTextID(journalEntryLocationEvent->locationID));
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintLuredPokemon(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lured_pokemon);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedSoftboiled(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_softboiled);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUsedMilkDrink(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_used_milk_drink);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDugUnderground(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_dug_underground);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBuiltSecretBase(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_built_secret_base);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPlayedAtBattleFacility(JournalManager *journalManager, Window *window, JournalEntryLocationEvent *journalEntryLocationEvent, u8 row, int eventType)
{
    u32 message;
    Strbuf *strbuf;

    switch (eventType) {
    case LOCATION_EVENT_BATTLE_TOWER:
        message = journal_entries_played_at_battle_tower;
        break;
    case LOCATION_EVENT_BATTLE_FACTORY:
        message = journal_entries_played_at_battle_factory;
        break;
    case LOCATION_EVENT_BATTLE_CASTLE:
        message = journal_entries_played_at_battle_castle;
        break;
    case LOCATION_EVENT_BATTLE_HALL:
        message = journal_entries_played_at_battle_hall;
        break;
    case LOCATION_EVENT_BATTLE_ARCADE:
    default:
        message = journal_entries_played_at_battle_arcade;
        break;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 16 + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_SetSpeciesName(JournalManager *journalManager, u16 species, u8 gender, u8 idx)
{
    Pokemon *mon = Pokemon_New(42);

    sub_02074088(mon, species, 1, 32, gender, 0, 0);
    StringTemplate_SetSpeciesName(journalManager->template, idx, Pokemon_GetBoxPokemon(mon));
    Heap_FreeToHeap(mon);
}

static void JournalPrinter_PrintPokemonCaught(JournalManager *journalManager, Window *window, JournalEntryMon *journalEntryMon)
{
    Strbuf *strbuf;

    switch (journalEntryMon->stringVariant) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_caught_pokemon);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_pokemon_was_caught);
        break;
    default:
        if (journalEntryMon->gender == GENDER_MALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_caught_male_pokemon);
        } else if (journalEntryMon->gender == GENDER_FEMALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_caught_female_pokemon);
        } else {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_caught_pokemon);
        }
    }

    JournalPrinter_SetSpeciesName(journalManager, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(journalManager->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (16 * 4 + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPokemonDefeated(JournalManager *journalManager, Window *window, JournalEntryMon *journalEntryMon)
{
    Strbuf *strbuf;

    switch (journalEntryMon->stringVariant) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_pokemon_was_defeated);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_defeated_pokemon);
        break;
    default:
        if (journalEntryMon->gender == GENDER_MALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_defeated_male_pokemon);
        } else if (journalEntryMon->gender == GENDER_FEMALE) {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_defeated_female_pokemon);
        } else {
            strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_pokemon_was_defeated);
        }
    }

    JournalPrinter_SetSpeciesName(journalManager, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(journalManager->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (16 * 4 + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
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
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_player_single);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lost_to_player_single);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_tied_player_single);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDoubleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_player_double);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lost_to_player_double);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_tied_player_double);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMultiBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_players_multi);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lost_to_players_multi);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_tied_players_multi);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName2, journalEntryOnlineEvent->unused2, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMixSingleBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_player_mix);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lost_to_player_mix);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_tied_player_mix);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMixMultiBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_players_mix);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lost_to_players_mix);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_tied_players_mix);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName2, journalEntryOnlineEvent->unused2, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGreetedInUnionRoom(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_greeted_player_in_union_room);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotPokemonFromTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_got_pokemon_from_player);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->pokemonName, journalEntryOnlineEvent->unused3, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintDrewPictures(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_drew_pictures_with_others);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotPokemonInFriendTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_got_pokemon_in_friend_trade);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->pokemonName, journalEntryOnlineEvent->unused3, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintChattedWithOthers(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_chatted_with_others);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintUnionBattleEvent(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf;

    switch (journalEntryOnlineEvent->result) {
    case 0:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_beat_player_union);
        break;
    case 1:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_lost_to_player_union);
        break;
    case 2:
    default:
        strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_tied_player_union);
        break;
    }

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMixedRecords(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_mixed_records);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPlacedInContest(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_placed_number_in_contest);

    StringTemplate_SetNumber(journalManager->template, 0, journalEntryOnlineEvent->result, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMadePoffins(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_made_poffins_in_group);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotPokemonGTS(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_got_players_pokemon_gts);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->pokemonName, journalEntryOnlineEvent->unused3, 1);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintBattleRoom(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_won_in_battle_room);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintSpinTrade(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_did_spin_trade);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMiscEvent1(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row, int eventType)
{
    Strbuf *strbuf;
    u32 message;

    switch (eventType) {
    case ONLINE_EVENT_WATCHED_BATTLE_VIDEOS:
        message = journal_entries_watched_battle_videos;
        break;
    case ONLINE_EVENT_CHECKED_RANKINGS:
        message = journal_entries_checked_rankings;
        break;
    case ONLINE_EVENT_CHECKED_DRESS_UP_DATA:
        message = journal_entries_checked_dress_up_data;
        break;
    case ONLINE_EVENT_CHECKED_BOX_DATA:
    default:
        message = journal_entries_checked_box_data;
        break;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintChattedInPlaza(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_chatted_with_player_in_plaza);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintGotTapToy(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_got_tap_toy_from_player);

    JournalPrinter_SetPlayerOrPokemonName(journalManager, journalEntryOnlineEvent->playerName1, journalEntryOnlineEvent->unused1, 0);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintPlazaMinigame(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_played_plaza_mini_game);

    StringTemplate_SetPlazaMinigameName(journalManager->template, 0, journalEntryOnlineEvent->result);
    StringTemplate_Format(journalManager->template, journalManager->strbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, journalManager->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintMiscEvent2(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row, int eventType)
{
    Strbuf *strbuf;
    u32 message;

    switch (eventType) {
    case ONLINE_EVENT_PLAYED_WITH_FOOTPRINT_STAMP:
        message = journal_entries_played_with_footprint_stamp;
        break;
    case ONLINE_EVENT_VIEWED_PLAZA_VISITOR_PROFILES:
        message = journal_entries_viewed_plaza_visitor_profiles;
        break;
    case ONLINE_EVENT_READ_PLAZA_NEWS:
        message = journal_entries_read_plaza_news;
        break;
    case ONLINE_EVENT_JOINED_PARADE:
    default:
        message = journal_entries_joined_parade;
        break;
    }

    strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

static void JournalPrinter_PrintWiFiClub(JournalManager *journalManager, Window *window, JournalEntryOnlineEvent *journalEntryOnlineEvent, u8 row)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(journalManager->loader, journal_entries_played_at_wi_fi_club);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, (((16 * 4 + 16) + 16) + 16) + row * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
}

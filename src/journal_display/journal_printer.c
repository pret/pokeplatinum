#include "journal_display/journal_printer.h"

#include <nitro.h>
#include <string.h>

#include "constants/trainer.h"
#include "consts/gender.h"

#include "struct_defs/struct_0202BCC8.h"
#include "struct_defs/struct_0202BFCC.h"

#include "journal_display/struct_ov81_021D1610.h"
#include "text/gmm/message_bank_journal_entries.h"

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

static u8 JournalDisplay_PrintTitle(UnkStruct_ov81_021D1610 *param0, Window *window1, Window *window2);
static void JournalDisplay_PrintLocationEvents(UnkStruct_ov81_021D1610 *param0, Window *window);
static void JournalDisplay_PrintPokemonEvent(UnkStruct_ov81_021D1610 *param0, Window *window);
static void JournalDisplay_PrintTrainerEvent(UnkStruct_ov81_021D1610 *param0, Window *window);
static void JournalDisplay_PrintOnlineEvents(UnkStruct_ov81_021D1610 *param0, Window *window);
static void JournalDisplay_PrintRestedAtHome(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintLeftResearchLab(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedPCBox(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintShoppedAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintLotsOfShoppingAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintSoldALittleAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintSoldALotAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintDidBusinessAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintGymWasTooTough(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintBeatGymLeader(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintBeatEliteFourMember(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintBeatChampion(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintArrivedInLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintLeftOutsideLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintLeftInsideLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintGameCorner(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintSafariGame(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintItemWasObtained(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedRockSmash(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedCut(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedFly(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedDefog(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedStrength(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedSurf(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedRockClimb(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedWaterfall(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedFlash(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintWarpedToLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedDig(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintLuredPokemon(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedSoftboiled(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintUsedMilkDrink(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintDugUnderground(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintBuiltSecretBase(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void JournalDisplay_PrintPlayedAtBattleFacility(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3, int param4);
static void JournalDisplay_PrintPokemonCaught(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon);
static void JournalDisplay_PrintPokemonDefeated(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon);
static void JournalDisplay_PrintSingleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintDoubleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMultiBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMixSingleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMixDoubleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintGreetedInUnionRoom(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintGotPokemonTrade(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintDrewPictures(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintGotPokemonFriendTrade(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintChattedWithOthers(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintUnionBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMixedRecords(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintPlacedInContest(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMadePoffins(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintGotPokemonGTS(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintBattleRoom(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintSpinTrade(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMiscEvent1(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4);
static void JournalDisplay_PrintChattedInPlaza(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintTapToy(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintPlazaMiniGame(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void JournalDisplay_PrintMiscEvent2(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4);
static void JournalDisplay_PrintWiFiClub(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);

static const WindowTemplate Unk_ov81_021D3508[] = {
    { 0x0, 0x2, 0x2, 0x18, 0x2, 0xF, 0x1 },
    { 0x0, 0x4, 0x4, 0x1B, 0x12, 0xF, 0x31 },
    { 0x1, 0x2, 0x2, 0x18, 0x2, 0xF, 0x1 },
    { 0x1, 0x4, 0x4, 0x1B, 0x12, 0xF, 0x31 }
};

void ov81_021D1610(UnkStruct_ov81_021D1610 *param0)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        Window_AddFromTemplate(param0->bgConfig, &param0->window[i], &Unk_ov81_021D3508[i]);
    }
}

void ov81_021D1634(UnkStruct_ov81_021D1610 *param0)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        Window_Remove(&param0->window[i]);
    }
}

void ov81_021D164C(UnkStruct_ov81_021D1610 *param0, u32 param1)
{
    Window *v0;
    Window *v1;

    if (param1 == 0) {
        v0 = &param0->window[0];
        v1 = &param0->window[1];
    } else {
        v0 = &param0->window[2];
        v1 = &param0->window[3];
    }

    Window_FillTilemap(v0, 0);
    Window_FillTilemap(v1, 0);

    if (JournalDisplay_PrintTitle(param0, v0, v1) == 1) {
        JournalDisplay_PrintLocationEvents(param0, v1);
        JournalDisplay_PrintPokemonEvent(param0, v1);
        JournalDisplay_PrintTrainerEvent(param0, v1);
        JournalDisplay_PrintOnlineEvents(param0, v1);
    }

    Window_ScheduleCopyToVRAM(v0);
    Window_ScheduleCopyToVRAM(v1);
}

static u8 JournalDisplay_PrintTitle(UnkStruct_ov81_021D1610 *param0, Window *window1, Window *window2)
{
    JournalEntryTitle journalEntryTitle;
    Strbuf *v1;
    u32 v2;

    JournalEntry_GetData(param0->journalEntry, &journalEntryTitle, JOURNAL_TITLE, param0->page);

    if (journalEntryTitle.year == 0 && journalEntryTitle.month == 0 && journalEntryTitle.day == 0) {
        return 0;
    }

    v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_date);

    StringTemplate_SetMonthName(param0->template, 0, journalEntryTitle.month);
    StringTemplate_SetNumber(param0->template, 1, journalEntryTitle.day, 2, 0, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(window1, FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_sunday + journalEntryTitle.week);
    Text_AddPrinterWithParamsAndColor(window1, FONT_SYSTEM, v1, v2 + 12, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_started_from_location);
    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(journalEntryTitle.mapID));

    StringTemplate_Format(param0->template, param0->strbuf, v1);
    Text_AddPrinterWithParamsAndColor(window2, FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    return 1;
}

static void JournalDisplay_PrintLocationEvents(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    UnkStruct_0202BCC8 v0[4];
    u32 i;

    JournalEntry_GetData(param0->journalEntry, &v0[0], JOURNAL_UNK_04, param0->page);

    for (i = 0; i < 4; i++) {
        switch (v0[i].unk_00) {
        case 0:
            return;
        case 1:
            JournalDisplay_PrintRestedAtHome(param0, window, &v0[i], i);
            break;
        case 2:
            JournalDisplay_PrintLeftResearchLab(param0, window, &v0[i], i);
            break;
        case 3:
            JournalDisplay_PrintUsedPCBox(param0, window, &v0[i], i);
            break;
        case 4:
            JournalDisplay_PrintShoppedAtMart(param0, window, &v0[i], i);
            break;
        case 5:
            JournalDisplay_PrintLotsOfShoppingAtMart(param0, window, &v0[i], i);
            break;
        case 6:
            JournalDisplay_PrintSoldALittleAtMart(param0, window, &v0[i], i);
            break;
        case 7:
            JournalDisplay_PrintSoldALotAtMart(param0, window, &v0[i], i);
            break;
        case 8:
            JournalDisplay_PrintDidBusinessAtMart(param0, window, &v0[i], i);
            break;
        case 9:
            JournalDisplay_PrintGymWasTooTough(param0, window, &v0[i], i);
            break;
        case 10:
            JournalDisplay_PrintBeatGymLeader(param0, window, &v0[i], i);
            break;
        case 11:
            JournalDisplay_PrintBeatEliteFourMember(param0, window, &v0[i], i);
            break;
        case 12:
            JournalDisplay_PrintBeatChampion(param0, window, &v0[i], i);
            break;
        case 13:
            JournalDisplay_PrintArrivedInLocation(param0, window, &v0[i], i);
            break;
        case 14:
            JournalDisplay_PrintLeftOutsideLocation(param0, window, &v0[i], i);
            break;
        case 15:
            JournalDisplay_PrintLeftInsideLocation(param0, window, &v0[i], i);
            break;
        case 16:
            JournalDisplay_PrintGameCorner(param0, window, &v0[i], i);
            break;
        case 17:
            JournalDisplay_PrintSafariGame(param0, window, &v0[i], i);
            break;
        case 18:
            JournalDisplay_PrintItemWasObtained(param0, window, &v0[i], i);
            break;
        case 24:
            JournalDisplay_PrintUsedRockSmash(param0, window, &v0[i], i);
            break;
        case 19:
            JournalDisplay_PrintUsedCut(param0, window, &v0[i], i);
            break;
        case 20:
            JournalDisplay_PrintUsedFly(param0, window, &v0[i], i);
            break;
        case 23:
            JournalDisplay_PrintUsedDefog(param0, window, &v0[i], i);
            break;
        case 22:
            JournalDisplay_PrintUsedStrength(param0, window, &v0[i], i);
            break;
        case 21:
            JournalDisplay_PrintUsedSurf(param0, window, &v0[i], i);
            break;
        case 26:
            JournalDisplay_PrintUsedRockClimb(param0, window, &v0[i], i);
            break;
        case 25:
            JournalDisplay_PrintUsedWaterfall(param0, window, &v0[i], i);
            break;
        case 27:
            JournalDisplay_PrintUsedFlash(param0, window, &v0[i], i);
            break;
        case 28:
            JournalDisplay_PrintWarpedToLocation(param0, window, &v0[i], i);
            break;
        case 29:
            JournalDisplay_PrintUsedDig(param0, window, &v0[i], i);
            break;
        case 30:
            JournalDisplay_PrintLuredPokemon(param0, window, &v0[i], i);
            break;
        case 33:
            JournalDisplay_PrintUsedSoftboiled(param0, window, &v0[i], i);
            break;
        case 32:
            JournalDisplay_PrintUsedMilkDrink(param0, window, &v0[i], i);
            break;
        case 34:
            JournalDisplay_PrintDugUnderground(param0, window, &v0[i], i);
            break;
        case 35:
            JournalDisplay_PrintBuiltSecretBase(param0, window, &v0[i], i);
            break;
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
            JournalDisplay_PrintPlayedAtBattleFacility(param0, window, &v0[i], i, v0[i].unk_00);
            break;
        }
    }
}

static void JournalDisplay_PrintPokemonEvent(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    JournalEntryMon journalEntryMon;

    JournalEntry_GetData(param0->journalEntry, &journalEntryMon, JOURNAL_MON, param0->page);

    switch (journalEntryMon.battleResult) {
    case 0:
        return;

    case POKEMON_CAUGHT:
        JournalDisplay_PrintPokemonCaught(param0, window, &journalEntryMon);
        break;

    case POKEMON_DEFEATED:
        JournalDisplay_PrintPokemonDefeated(param0, window, &journalEntryMon);
        break;
    }
}

static void JournalDisplay_PrintTrainerEvent(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    JournalEntryTrainer journalEntryTrainer;
    Strbuf *v1;
    u32 strLength;

    JournalEntry_GetData(param0->journalEntry, &journalEntryTrainer, JOURNAL_TRAINER, param0->page);

    if (journalEntryTrainer.unk_00_0 == 0) {
        return;
    }

    Strbuf *v3 = MessageBank_GetNewStrbufFromNARC(26, 433, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID), 42);
    strLength = Strbuf_Length(v3);
    Strbuf_Free(v3);

    if (TrainerData_LoadParam(journalEntryTrainer.trainerID, TRDATA_CLASS) == TRAINER_CLASS_RIVAL) {
        v3 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_rival_name);
        StringTemplate_SetRivalName(param0->template, 1, param0->saveData);
        StringTemplate_Format(param0->template, param0->strbuf, v3);
        strLength += Strbuf_Length(param0->strbuf);
        Strbuf_Free(v3);
    } else {
        v3 = MessageBank_GetNewStrbufFromNARC(26, 618, journalEntryTrainer.trainerID, 42);
        strLength += Strbuf_Length(v3);
        Strbuf_Free(v3);
        StringTemplate_SetTrainerName(param0->template, 1, journalEntryTrainer.trainerID);
    }

    if (strLength <= 14) {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_battled_trainer_at_location);
    } else if (strLength <= 16) {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_trainer_at_location);
    } else if (strLength <= 19) {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_trainer_at_location_2);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_met_locations_trainer);
    }

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID));
    StringTemplate_Format(param0->template, param0->strbuf, v1);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, ((16 * 4 + 16) + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
}

static void JournalDisplay_PrintOnlineEvents(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    UnkStruct_0202BFCC v0[2];
    u32 i;

    JournalEntry_GetData(param0->journalEntry, &v0[0], JOURNAL_UNK_1C, param0->page);

    for (i = 0; i < 2; i++) {
        switch (v0[i].unk_00) {
        case 0:
            return;
        case 1:
            JournalDisplay_PrintSingleBattleEvent(param0, window, &v0[i], i);
            break;
        case 2:
            JournalDisplay_PrintDoubleBattleEvent(param0, window, &v0[i], i);
            break;
        case 3:
            JournalDisplay_PrintMultiBattleEvent(param0, window, &v0[i], i);
            break;
        case 4:
            JournalDisplay_PrintMixSingleBattleEvent(param0, window, &v0[i], i);
            break;
        case 5:
            JournalDisplay_PrintMixDoubleBattleEvent(param0, window, &v0[i], i);
            break;
        case 6:
            JournalDisplay_PrintGreetedInUnionRoom(param0, window, &v0[i], i);
            break;
        case 7:
            JournalDisplay_PrintGotPokemonTrade(param0, window, &v0[i], i);
            break;
        case 8:
            JournalDisplay_PrintDrewPictures(param0, window, &v0[i], i);
            break;
        case 9:
            JournalDisplay_PrintGotPokemonFriendTrade(param0, window, &v0[i], i);
            break;
        case 10:
            JournalDisplay_PrintChattedWithOthers(param0, window, &v0[i], i);
            break;
        case 11:
            JournalDisplay_PrintUnionBattleEvent(param0, window, &v0[i], i);
            break;
        case 12:
            JournalDisplay_PrintMixedRecords(param0, window, &v0[i], i);
            break;
        case 13:
            JournalDisplay_PrintPlacedInContest(param0, window, &v0[i], i);
            break;
        case 14:
            JournalDisplay_PrintMadePoffins(param0, window, &v0[i], i);
            break;
        case 15:
            JournalDisplay_PrintGotPokemonGTS(param0, window, &v0[i], i);
            break;
        case 16:
            JournalDisplay_PrintBattleRoom(param0, window, &v0[i], i);
            break;
        case 17:
            JournalDisplay_PrintSpinTrade(param0, window, &v0[i], i);
            break;
        case 18:
        case 19:
        case 20:
        case 21:
            JournalDisplay_PrintMiscEvent1(param0, window, &v0[i], i, v0[i].unk_00);
            break;
        case 22:
            JournalDisplay_PrintChattedInPlaza(param0, window, &v0[i], i);
            break;
        case 23:
            JournalDisplay_PrintTapToy(param0, window, &v0[i], i);
            break;
        case 24:
            JournalDisplay_PrintPlazaMiniGame(param0, window, &v0[i], i);
            break;
        case 25:
        case 26:
        case 27:
        case 28:
            JournalDisplay_PrintMiscEvent2(param0, window, &v0[i], i, v0[i].unk_00);
            break;
        case 29:
            JournalDisplay_PrintWiFiClub(param0, window, &v0[i], i);
            break;
        }
    }
}

static void JournalDisplay_PrintRestedAtHome(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_rested_at_home);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintLeftResearchLab(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_left_research_lab);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedPCBox(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_pc_box);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintShoppedAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_shopped_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintLotsOfShoppingAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lots_of_shopping_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintSoldALittleAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_sold_a_little_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintSoldALotAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_sold_a_lot_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintDidBusinessAtMart(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_did_business_at_poke_mart);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintGymWasTooTough(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_gym_was_too_tough);

    StringTemplate_SetGymName(param0->template, 0, param2->unk_02);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintBeatGymLeader(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_locations_gym_leader);

    StringTemplate_SetGymName(param0->template, 0, param2->unk_02);
    StringTemplate_SetTrainerName(param0->template, 1, param2->unk_04);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintBeatEliteFourMember(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_elite_four_member);

    StringTemplate_SetTrainerName(param0->template, 0, param2->unk_04);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintBeatChampion(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_champion);

    StringTemplate_SetTrainerName(param0->template, 0, param2->unk_04);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintArrivedInLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_arrived_in_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintLeftOutsideLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0;
    u32 v1 = param2->unk_02;

    if (v1 == 47 || v1 == 64 || v1 == 49) {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_departed_from_location);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_got_through_location);
    }

    StringTemplate_SetLocationName(param0->template, 0, v1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintLeftInsideLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0;
    u32 v1 = param2->unk_02;

    if (sub_0202C6A4(v1) == 0) {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_departed_from_location);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_exited_from_location);
    }

    StringTemplate_SetLocationName(param0->template, 0, v1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintGameCorner(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_played_at_game_corner);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintSafariGame(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_played_safari_game);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintItemWasObtained(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_item_was_obtained);

    StringTemplate_SetItemName(param0->template, 0, param2->unk_06);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedRockSmash(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_rock_smash_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedCut(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_cut_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedFly(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_flew_to_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedDefog(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_defog_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedStrength(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_strength_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedSurf(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_surf_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedRockClimb(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_rock_climb_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedWaterfall(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_waterfall_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedFlash(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_flash_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintWarpedToLocation(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_warped_to_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedDig(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_dig_at_location);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintLuredPokemon(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lured_pokemon);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedSoftboiled(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_softboiled);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUsedMilkDrink(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_used_milk_drink);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintDugUnderground(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_dug_underground);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintBuiltSecretBase(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_built_secret_base);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintPlayedAtBattleFacility(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3, int param4)
{
    u32 message;
    Strbuf *v1;

    switch (param4) {
    case 36:
        message = journal_entries_played_at_battle_tower;
        break;
    case 37:
        message = journal_entries_played_at_battle_factory;
        break;
    case 38:
        message = journal_entries_played_at_battle_castle;
        break;
    case 39:
        message = journal_entries_played_at_battle_hall;
        break;
    case 40:
    default:
        message = journal_entries_played_at_battle_arcade;
        break;
    }

    v1 = MessageLoader_GetNewStrbuf(param0->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v1, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
}

static void JournalDisplay_SetSpeciesName(UnkStruct_ov81_021D1610 *param0, u16 species, u8 gender, u8 idx)
{
    Pokemon *mon = Pokemon_New(42);

    sub_02074088(mon, species, 1, 32, gender, 0, 0);
    StringTemplate_SetSpeciesName(param0->template, idx, Pokemon_GetBoxPokemon(mon));
    Heap_FreeToHeap(mon);
}

static void JournalDisplay_PrintPokemonCaught(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon)
{
    Strbuf *v0;

    switch (journalEntryMon->stringVariant) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_pokemon);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_pokemon_was_caught);
        break;
    default:
        if (journalEntryMon->gender == GENDER_MALE) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_male_pokemon);
        } else if (journalEntryMon->gender == GENDER_FEMALE) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_female_pokemon);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_pokemon);
        }
    }

    JournalDisplay_SetSpeciesName(param0, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(param0->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (16 * 4 + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintPokemonDefeated(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon)
{
    Strbuf *v0;

    switch (journalEntryMon->stringVariant) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_pokemon_was_defeated);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_defeated_pokemon);
        break;
    default:
        if (journalEntryMon->gender == GENDER_MALE) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_defeated_male_pokemon);
        } else if (journalEntryMon->gender == GENDER_FEMALE) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_defeated_female_pokemon);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_pokemon_was_defeated);
        }
    }

    JournalDisplay_SetSpeciesName(param0, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(param0->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (16 * 4 + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2A60(UnkStruct_ov81_021D1610 *param0, u16 *param1, u8 param2, u8 param3)
{
    Strbuf *v0 = Strbuf_Init(32, 42);

    Strbuf_CopyChars(v0, param1);
    StringTemplate_SetStrbuf(param0->template, param3, v0, param2, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintSingleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_player_single);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lost_to_player_single);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_tied_player_single);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintDoubleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_player_double);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lost_to_player_double);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_tied_player_double);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMultiBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_players_multi);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lost_to_players_multi);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_tied_players_multi);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_12, param2->unk_01_5, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMixSingleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_player_mix);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lost_to_player_mix);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_tied_player_mix);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMixDoubleBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_players_mix);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lost_to_players_mix);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_tied_players_mix);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_12, param2->unk_01_5, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintGreetedInUnionRoom(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_greeted_player_in_union_room);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintGotPokemonTrade(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_got_pokemon_from_player);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintDrewPictures(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_drew_pictures_with_others);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintGotPokemonFriendTrade(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_got_pokemon_in_friend_trade);

    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintChattedWithOthers(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_chatted_with_others);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintUnionBattleEvent(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_beat_player_union);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_lost_to_player_union);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_tied_player_union);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMixedRecords(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_mixed_records);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintPlacedInContest(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_placed_number_in_contest);

    StringTemplate_SetNumber(param0->template, 0, param2->unk_01_0, 1, 0, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMadePoffins(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_made_poffins_in_group);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintGotPokemonGTS(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_got_players_pokemon_gts);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintBattleRoom(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_won_in_battle_room);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintSpinTrade(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_did_spin_trade);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMiscEvent1(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4)
{
    Strbuf *v0;
    u32 message;

    switch (param4) {
    case 18:
        message = journal_entries_watched_battle_videos;
        break;
    case 19:
        message = journal_entries_checked_rankings;
        break;
    case 20:
        message = journal_entries_checked_dress_up_data;
        break;
    case 21:
    default:
        message = journal_entries_checked_box_data;
        break;
    }

    v0 = MessageLoader_GetNewStrbuf(param0->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintChattedInPlaza(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_chatted_with_player_in_plaza);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintTapToy(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_got_tap_toy_from_player);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintPlazaMiniGame(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_played_plaza_mini_game);

    StringTemplate_SetPlazaMinigameName(param0->template, 0, param2->unk_01_0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintMiscEvent2(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4)
{
    Strbuf *v0;
    u32 message;

    switch (param4) {
    case 25:
        message = journal_entries_played_with_footprint_stamp;
        break;
    case 26:
        message = journal_entries_viewed_plaza_visitor_profiles;
        break;
    case 27:
        message = journal_entries_read_plaza_news;
        break;
    case 28:
    default:
        message = journal_entries_joined_parade;
        break;
    }

    v0 = MessageLoader_GetNewStrbuf(param0->loader, message);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void JournalDisplay_PrintWiFiClub(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_played_at_wi_fi_club);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

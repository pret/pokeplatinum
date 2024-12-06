#include "overlay081/ov81_021D1610.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202BCC8.h"
#include "struct_defs/struct_0202BFCC.h"

#include "overlay081/struct_ov81_021D1610.h"
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

static u8 ov81_021D16B0(UnkStruct_ov81_021D1610 *param0, Window *window, Window *param2);
static void ov81_021D17C8(UnkStruct_ov81_021D1610 *param0, Window *window);
static void ov81_021D1A90(UnkStruct_ov81_021D1610 *param0, Window *window);
static void ov81_021D1AD4(UnkStruct_ov81_021D1610 *param0, Window *window);
static void ov81_021D1C10(UnkStruct_ov81_021D1610 *param0, Window *window);
static void ov81_021D1E04(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1E40(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1E7C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1EB8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1EF4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1F30(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1F6C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1FA8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D1FE4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2038(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2098(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D20EC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2140(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D219C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2208(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2270(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D22AC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D22E8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D233C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2398(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D23F4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2450(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D24AC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2508(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2564(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D25C0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D261C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2678(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D26D4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2730(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D276C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D27A8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D27E4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D2820(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3);
static void ov81_021D285C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3, int param4);
static void ov81_021D2908(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon);
static void ov81_021D29B4(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon);
static void ov81_021D2A9C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2B20(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2BA4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2C38(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2CBC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2D50(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2DAC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2E18(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2E54(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2EB0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2EEC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2F70(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D2FAC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D300C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D3048(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D30B4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D30F0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D312C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4);
static void ov81_021D3190(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D31EC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D3248(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);
static void ov81_021D32A0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4);
static void ov81_021D3304(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3);

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

void ov81_021D164C(UnkStruct_ov81_021D1610 *param0, u32 window)
{
    Window *v0;
    Window *v1;

    if (window == 0) {
        v0 = &param0->window[0];
        v1 = &param0->window[1];
    } else {
        v0 = &param0->window[2];
        v1 = &param0->window[3];
    }

    Window_FillTilemap(v0, 0);
    Window_FillTilemap(v1, 0);

    if (ov81_021D16B0(param0, v0, v1) == 1) {
        ov81_021D17C8(param0, v1);
        ov81_021D1A90(param0, v1);
        ov81_021D1AD4(param0, v1);
        ov81_021D1C10(param0, v1);
    }

    Window_ScheduleCopyToVRAM(v0);
    Window_ScheduleCopyToVRAM(v1);
}

static u8 ov81_021D16B0(UnkStruct_ov81_021D1610 *param0, Window *window, Window *param2)
{
    JournalEntryTitle journalEntryTitle;
    Strbuf *v1;
    u32 v2;

    JournalEntry_GetData(param0->journalEntry, &journalEntryTitle, JOURNAL_TITLE, param0->unk_105C);

    if (journalEntryTitle.year == 0 && journalEntryTitle.month == 0 && journalEntryTitle.day == 0) {
        return 0;
    }

    v1 = MessageLoader_GetNewStrbuf(param0->loader, 1);

    StringTemplate_SetMonthName(param0->template, 0, journalEntryTitle.month);
    StringTemplate_SetNumber(param0->template, 1, journalEntryTitle.day, 2, 0, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->loader, 2 + journalEntryTitle.week);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v1, v2 + 12, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->loader, 0);
    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(journalEntryTitle.mapID));

    StringTemplate_Format(param0->template, param0->strbuf, v1);
    Text_AddPrinterWithParamsAndColor(param2, FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    return 1;
}

static void ov81_021D17C8(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    UnkStruct_0202BCC8 v0[4];
    u32 i;

    JournalEntry_GetData(param0->journalEntry, &v0[0], JOURNAL_UNK_04, param0->unk_105C);

    for (i = 0; i < 4; i++) {
        switch (v0[i].unk_00) {
        case 0:
            return;
        case 1:
            ov81_021D1E04(param0, window, &v0[i], i);
            break;
        case 2:
            ov81_021D1E40(param0, window, &v0[i], i);
            break;
        case 3:
            ov81_021D1E7C(param0, window, &v0[i], i);
            break;
        case 4:
            ov81_021D1EB8(param0, window, &v0[i], i);
            break;
        case 5:
            ov81_021D1EF4(param0, window, &v0[i], i);
            break;
        case 6:
            ov81_021D1F30(param0, window, &v0[i], i);
            break;
        case 7:
            ov81_021D1F6C(param0, window, &v0[i], i);
            break;
        case 8:
            ov81_021D1FA8(param0, window, &v0[i], i);
            break;
        case 9:
            ov81_021D1FE4(param0, window, &v0[i], i);
            break;
        case 10:
            ov81_021D2038(param0, window, &v0[i], i);
            break;
        case 11:
            ov81_021D2098(param0, window, &v0[i], i);
            break;
        case 12:
            ov81_021D20EC(param0, window, &v0[i], i);
            break;
        case 13:
            ov81_021D2140(param0, window, &v0[i], i);
            break;
        case 14:
            ov81_021D219C(param0, window, &v0[i], i);
            break;
        case 15:
            ov81_021D2208(param0, window, &v0[i], i);
            break;
        case 16:
            ov81_021D2270(param0, window, &v0[i], i);
            break;
        case 17:
            ov81_021D22AC(param0, window, &v0[i], i);
            break;
        case 18:
            ov81_021D22E8(param0, window, &v0[i], i);
            break;
        case 24:
            ov81_021D233C(param0, window, &v0[i], i);
            break;
        case 19:
            ov81_021D2398(param0, window, &v0[i], i);
            break;
        case 20:
            ov81_021D23F4(param0, window, &v0[i], i);
            break;
        case 23:
            ov81_021D2450(param0, window, &v0[i], i);
            break;
        case 22:
            ov81_021D24AC(param0, window, &v0[i], i);
            break;
        case 21:
            ov81_021D2508(param0, window, &v0[i], i);
            break;
        case 26:
            ov81_021D2564(param0, window, &v0[i], i);
            break;
        case 25:
            ov81_021D25C0(param0, window, &v0[i], i);
            break;
        case 27:
            ov81_021D261C(param0, window, &v0[i], i);
            break;
        case 28:
            ov81_021D2678(param0, window, &v0[i], i);
            break;
        case 29:
            ov81_021D26D4(param0, window, &v0[i], i);
            break;
        case 30:
            ov81_021D2730(param0, window, &v0[i], i);
            break;
        case 33:
            ov81_021D276C(param0, window, &v0[i], i);
            break;
        case 32:
            ov81_021D27A8(param0, window, &v0[i], i);
            break;
        case 34:
            ov81_021D27E4(param0, window, &v0[i], i);
            break;
        case 35:
            ov81_021D2820(param0, window, &v0[i], i);
            break;
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
            ov81_021D285C(param0, window, &v0[i], i, v0[i].unk_00);
            break;
        }
    }
}

static void ov81_021D1A90(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    JournalEntryMon journalEntryMon;

    JournalEntry_GetData(param0->journalEntry, &journalEntryMon, JOURNAL_MON, param0->unk_105C);

    switch (journalEntryMon.battleResult) {
    case 0:
        return;

    case POKEMON_CAUGHT:
        ov81_021D2908(param0, window, &journalEntryMon);
        break;

    case POKEMON_DEFEATED:
        ov81_021D29B4(param0, window, &journalEntryMon);
        break;
    }
}

static void ov81_021D1AD4(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    JournalEntryTrainer journalEntryTrainer;
    Strbuf *v1;
    u32 v2;

    JournalEntry_GetData(param0->journalEntry, &journalEntryTrainer, JOURNAL_TRAINER, param0->unk_105C);

    if (journalEntryTrainer.unk_00_0 == 0) {
        return;
    }

    Strbuf *v3 = MessageBank_GetNewStrbufFromNARC(26, 433, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID), 42);
    v2 = Strbuf_Length(v3);
    Strbuf_Free(v3);

    if (TrainerData_LoadParam(journalEntryTrainer.trainerID, 1) == 63) {
        v3 = MessageLoader_GetNewStrbuf(param0->loader, 61);
        StringTemplate_SetRivalName(param0->template, 1, param0->saveData);
        StringTemplate_Format(param0->template, param0->strbuf, v3);
        v2 += Strbuf_Length(param0->strbuf);
        Strbuf_Free(v3);
    } else {
        v3 = MessageBank_GetNewStrbufFromNARC(26, 618, journalEntryTrainer.trainerID, 42);
        v2 += Strbuf_Length(v3);
        Strbuf_Free(v3);
        StringTemplate_SetTrainerName(param0->template, 1, journalEntryTrainer.trainerID);
    }

    if (v2 <= 14) {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, 57);
    } else if (v2 <= 16) {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, 58);
    } else if (v2 <= 19) {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, 59);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->loader, 60);
    }

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(journalEntryTrainer.mapID));
    StringTemplate_Format(param0->template, param0->strbuf, v1);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, ((16 * 4 + 16) + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
}

static void ov81_021D1C10(UnkStruct_ov81_021D1610 *param0, Window *window)
{
    UnkStruct_0202BFCC v0[2];
    u32 i;

    JournalEntry_GetData(param0->journalEntry, &v0[0], JOURNAL_UNK_1C, param0->unk_105C);

    for (i = 0; i < 2; i++) {
        switch (v0[i].unk_00) {
        case 0:
            return;
        case 1:
            ov81_021D2A9C(param0, window, &v0[i], i);
            break;
        case 2:
            ov81_021D2B20(param0, window, &v0[i], i);
            break;
        case 3:
            ov81_021D2BA4(param0, window, &v0[i], i);
            break;
        case 4:
            ov81_021D2C38(param0, window, &v0[i], i);
            break;
        case 5:
            ov81_021D2CBC(param0, window, &v0[i], i);
            break;
        case 6:
            ov81_021D2D50(param0, window, &v0[i], i);
            break;
        case 7:
            ov81_021D2DAC(param0, window, &v0[i], i);
            break;
        case 8:
            ov81_021D2E18(param0, window, &v0[i], i);
            break;
        case 9:
            ov81_021D2E54(param0, window, &v0[i], i);
            break;
        case 10:
            ov81_021D2EB0(param0, window, &v0[i], i);
            break;
        case 11:
            ov81_021D2EEC(param0, window, &v0[i], i);
            break;
        case 12:
            ov81_021D2F70(param0, window, &v0[i], i);
            break;
        case 13:
            ov81_021D2FAC(param0, window, &v0[i], i);
            break;
        case 14:
            ov81_021D300C(param0, window, &v0[i], i);
            break;
        case 15:
            ov81_021D3048(param0, window, &v0[i], i);
            break;
        case 16:
            ov81_021D30B4(param0, window, &v0[i], i);
            break;
        case 17:
            ov81_021D30F0(param0, window, &v0[i], i);
            break;
        case 18:
        case 19:
        case 20:
        case 21:
            ov81_021D312C(param0, window, &v0[i], i, v0[i].unk_00);
            break;
        case 22:
            ov81_021D3190(param0, window, &v0[i], i);
            break;
        case 23:
            ov81_021D31EC(param0, window, &v0[i], i);
            break;
        case 24:
            ov81_021D3248(param0, window, &v0[i], i);
            break;
        case 25:
        case 26:
        case 27:
        case 28:
            ov81_021D32A0(param0, window, &v0[i], i, v0[i].unk_00);
            break;
        case 29:
            ov81_021D3304(param0, window, &v0[i], i);
            break;
        }
    }
}

static void ov81_021D1E04(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 9);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1E40(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 10);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1E7C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 11);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1EB8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 12);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1EF4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 13);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1F30(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 14);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1F6C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 15);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1FA8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 16);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D1FE4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 17);

    StringTemplate_SetGymName(param0->template, 0, param2->unk_02);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2038(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 18);

    StringTemplate_SetGymName(param0->template, 0, param2->unk_02);
    StringTemplate_SetTrainerName(param0->template, 1, param2->unk_04);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2098(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 19);

    StringTemplate_SetTrainerName(param0->template, 0, param2->unk_04);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D20EC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 20);

    StringTemplate_SetTrainerName(param0->template, 0, param2->unk_04);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2140(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 21);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D219C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0;
    u32 v1 = param2->unk_02;

    if (v1 == 47 || v1 == 64 || v1 == 49) {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 23);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 22);
    }

    StringTemplate_SetLocationName(param0->template, 0, v1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2208(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0;
    u32 v1 = param2->unk_02;

    if (sub_0202C6A4(v1) == 0) {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 23);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 24);
    }

    StringTemplate_SetLocationName(param0->template, 0, v1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2270(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 30);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D22AC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 31);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D22E8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 34);

    StringTemplate_SetItemName(param0->template, 0, param2->unk_06);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D233C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 40);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2398(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 35);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D23F4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 36);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2450(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 43);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D24AC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 38);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2508(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 37);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2564(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 42);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D25C0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 41);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D261C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 39);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2678(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 46);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D26D4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 44);

    StringTemplate_SetLocationName(param0->template, 0, MapHeader_GetMapLabelTextID(param2->unk_02));
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2730(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 45);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D276C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 47);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D27A8(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 48);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D27E4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 32);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2820(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 33);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D285C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BCC8 *param2, u8 param3, int param4)
{
    u32 v0;
    Strbuf *v1;

    switch (param4) {
    case 36:
        v0 = 25;
        break;
    case 37:
        v0 = 26;
        break;
    case 38:
        v0 = 27;
        break;
    case 39:
        v0 = 28;
        break;
    case 40:
    default:
        v0 = 29;
        break;
    }

    v1 = MessageLoader_GetNewStrbuf(param0->loader, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v1, 0, 16 + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
}

static void ov81_021D28C8(UnkStruct_ov81_021D1610 *param0, u16 window, u8 param2, u8 param3)
{
    Pokemon *v0 = Pokemon_New(42);

    sub_02074088(v0, window, 1, 32, param2, 0, 0);
    StringTemplate_SetSpeciesName(param0->template, param3, Pokemon_GetBoxPokemon(v0));
    Heap_FreeToHeap(v0);
}

static void ov81_021D2908(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon)
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
        if (journalEntryMon->gender == 0) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_male_pokemon);
        } else if (journalEntryMon->gender == 1) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_female_pokemon);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_caught_pokemon);
        }
    }

    ov81_021D28C8(param0, journalEntryMon->species, journalEntryMon->gender, 0);
    StringTemplate_SetTimeOfDay(param0->template, 1, journalEntryMon->timeOfDay);

    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (16 * 4 + 16), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D29B4(UnkStruct_ov81_021D1610 *param0, Window *window, JournalEntryMon *journalEntryMon)
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
        if (journalEntryMon->gender == 0) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_defeated_male_pokemon);
        } else if (journalEntryMon->gender == 1) {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_defeated_female_pokemon);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->loader, journal_entries_pokemon_was_defeated);
        }
    }

    ov81_021D28C8(param0, journalEntryMon->species, journalEntryMon->gender, 0);
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

static void ov81_021D2A9C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 62);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 63);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 64);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2B20(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 65);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 66);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 67);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2BA4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 68);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 69);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 70);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_12, param2->unk_01_5, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2C38(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 71);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 72);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 73);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2CBC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 74);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 75);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 76);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_12, param2->unk_01_5, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2D50(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 77);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2DAC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 78);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2E18(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 79);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2E54(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 80);

    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2EB0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 81);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2EEC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 82);
        break;
    case 1:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 83);
        break;
    case 2:
    default:
        v0 = MessageLoader_GetNewStrbuf(param0->loader, 84);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2F70(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 85);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D2FAC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 87);

    StringTemplate_SetNumber(param0->template, 0, param2->unk_01_0, 1, 0, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D300C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 88);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D3048(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 89);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 1);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D30B4(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 94);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D30F0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 86);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D312C(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4)
{
    Strbuf *v0;
    u32 v1;

    switch (param4) {
    case 18:
        v1 = 90;
        break;
    case 19:
        v1 = 91;
        break;
    case 20:
        v1 = 92;
        break;
    case 21:
    default:
        v1 = 93;
        break;
    }

    v0 = MessageLoader_GetNewStrbuf(param0->loader, v1);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D3190(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 95);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D31EC(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 96);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D3248(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 97);

    StringTemplate_SetPlazaMinigameName(param0->template, 0, param2->unk_01_0);
    StringTemplate_Format(param0->template, param0->strbuf, v0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->strbuf, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D32A0(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3, int param4)
{
    Strbuf *v0;
    u32 v1;

    switch (param4) {
    case 25:
        v1 = 98;
        break;
    case 26:
        v1 = 99;
        break;
    case 27:
        v1 = 100;
        break;
    case 28:
    default:
        v1 = 101;
        break;
    }

    v0 = MessageLoader_GetNewStrbuf(param0->loader, v1);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov81_021D3304(UnkStruct_ov81_021D1610 *param0, Window *window, UnkStruct_0202BFCC *param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->loader, 102);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

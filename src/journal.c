#include "journal.h"

#include <nitro.h>
#include <string.h>

#include "consts/badges.h"
#include "consts/map.h"

#include "struct_defs/struct_0202BCC8.h"
#include "struct_defs/struct_0202BFCC.h"

#include "heap.h"
#include "map_header.h"
#include "play_time.h"
#include "rtc.h"
#include "savedata.h"
#include "trainer_info.h"

#include "res/trainers/trdata.naix"

#define MAX_JOURNAL_ENTRIES 10

typedef struct {
    u32 mapLabelTextID;
    u32 unk_04;
} MapInfo;

typedef struct {
    u32 trainerID;
    u16 mapID;
    u16 badge;
} GymInfo;

static void JournalEntry_SaveTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle);
static void sub_0202B7E0(JournalEntry *journalEntry, UnkStruct_0202BCC8 *data);
static void JournalEntry_SaveMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon);
static void JournalEntry_SaveTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer);
static void sub_0202B898(JournalEntry *journalEntry, UnkStruct_0202BFCC *data);
static u32 *sub_0202B91C(u32 *param0);
static u8 *sub_0202B954(JournalEntry *journalEntry);
static void sub_0202B994(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202B9D0(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202B9F0(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202BA48(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202BAB0(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202BAF8(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202BB40(u32 *param0, UnkStruct_0202BCC8 *data);
static void sub_0202BB88(u8 *param0, UnkStruct_0202BFCC *data);
static void sub_0202BBC4(u8 *param0, UnkStruct_0202BFCC *data);
static void sub_0202BBE0(u8 *param0, UnkStruct_0202BFCC *data);
static void sub_0202BC14(JournalEntry *journalEntry, UnkStruct_0202BFCC *data);
static void sub_0202BC48(u8 *param0, UnkStruct_0202BFCC *data);
static void sub_0202BF94(const u16 *param0, u16 *param1, u32 param2);
static void JournalEntry_GetTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle);
static void sub_0202C304(JournalEntry *journalEntry, UnkStruct_0202BCC8 *param1);
static void JournalEntry_GetMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon);
static void JournalEntry_GetTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer);
static void sub_0202C3D0(JournalEntry *journalEntry, UnkStruct_0202BFCC *param1);
static void sub_0202C474(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C47C(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C494(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C4A0(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C4AC(u32 param0, UnkStruct_0202BCC8 *param1);
static void sub_0202C4B8(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C528(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C54C(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C5A4(u8 *param0, UnkStruct_0202BFCC *param1);
static void sub_0202C5AC(u8 *param0, UnkStruct_0202BFCC *param1);
static u8 JournalEntry_GetDefeatedGym(TrainerInfo *trainerInfo, u32 mapID);
static u8 JournalEntry_TrainerType(u32 trainerID);

static const MapInfo sMapsInfo[] = {
    { 0x5A, 0x1 },
    { 0x5B, 0x0 },
    { 0x5C, 0x1 },
    { 0x5D, 0x1 },
    { 0x5E, 0x0 },
    { 0x5F, 0x1 },
    { 0x60, 0x1 },
    { 0x61, 0x1 },
    { 0x62, 0x1 },
    { 0x63, 0x0 },
    { 0x64, 0x1 },
    { 0x65, 0x0 },
    { 0x66, 0x1 },
    { 0x47, 0x0 },
    { 0x67, 0x0 },
    { 0x40, 0x0 },
    { 0x68, 0x0 },
    { 0x69, 0x1 },
    { 0x50, 0x1 },
    { 0x6A, 0x0 },
    { 0x6B, 0x1 },
    { 0x6C, 0x0 },
    { 0x6D, 0x0 },
    { 0x6E, 0x0 },
    { 0x2F, 0x0 },
    { 0x31, 0x0 },
    { 0x46, 0x0 }
};

static const GymInfo sGymsInfo[] = {
    { trainer_leader_roark, MAP_HEADER_OREBURGH_CITY_GYM, BADGE_ID_COAL },
    { trainer_leader_gardenia, MAP_HEADER_ETERNA_CITY_GYM, BADGE_ID_FOREST },
    { trainer_leader_wake, MAP_HEADER_PASTORIA_CITY_GYM, BADGE_ID_FEN },
    { trainer_leader_maylene, MAP_HEADER_VEILSTONE_CITY_GYM, BADGE_ID_COBBLE },
    { trainer_leader_fantina, MAP_HEADER_HEARTHOME_CITY_GYM_ENTRANCE_ROOM, BADGE_ID_RELIC },
    { trainer_leader_candice, MAP_HEADER_SNOWPOINT_CITY_GYM, BADGE_ID_ICICLE },
    { trainer_leader_byron, MAP_HEADER_CANALAVE_CITY_GYM, BADGE_ID_MINE },
    { trainer_leader_volkner, MAP_HEADER_SUNYSHORE_CITY_GYM_ROOM_1, BADGE_ID_BEACON }
};

int Journal_SaveSize(void)
{
    return sizeof(JournalEntry) * MAX_JOURNAL_ENTRIES;
}

static void Journal_Init(JournalEntry *journalEntry)
{
    memset(journalEntry, 0, sizeof(JournalEntry));
}

void Journal_Init10(JournalEntry *journalEntry)
{
    memset(journalEntry, 0, sizeof(JournalEntry) * MAX_JOURNAL_ENTRIES);
}

JournalEntry *SaveData_GetJournal(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, 18);
}

JournalEntry *Journal_GetSavedPage(JournalEntry *journalEntry, BOOL journalAcquired)
{
    RTCDate currDate;
    s32 i;

    if (journalAcquired != TRUE) {
        return NULL;
    }

    GetCurrentDate(&currDate);

    if (journalEntry[0].title.month != 0
        && (journalEntry[0].title.year != currDate.year || journalEntry[0].title.month != currDate.month
            || journalEntry[0].title.day != currDate.day || journalEntry[0].title.week != currDate.week)) {
        for (i = MAX_JOURNAL_ENTRIES - 1; i >= 1; i--) {
            journalEntry[i] = journalEntry[i - 1];
        }

        Journal_Init(&journalEntry[0]);
    }

    return &journalEntry[0];
}

BOOL Journal_CheckOpenOnContinue(JournalEntry *journalEntry, BOOL journalAcquired)
{
    RTCDate journalEntryTitle;
    RTCDate currDate;
    int daysDiff;

    if (journalAcquired != TRUE) {
        return FALSE;
    }

    GetCurrentDate(&currDate);

    journalEntryTitle.year = journalEntry[0].title.year;
    journalEntryTitle.month = journalEntry[0].title.month;
    journalEntryTitle.day = journalEntry[0].title.day;
    journalEntryTitle.week = journalEntry[0].title.week;

    daysDiff = DayNumberForDate(&currDate) - DayNumberForDate(&journalEntryTitle);

    if ((currDate.month == 12 && currDate.day == 31 && journalEntryTitle.month == 1 && journalEntryTitle.day == 1)
        || (currDate.month == 1 && currDate.day == 1 && journalEntryTitle.month == 12 && journalEntryTitle.day == 31)) {
        s32 yearsDiff = (s32)currDate.year - (s32)journalEntryTitle.year;

        if (yearsDiff >= 2 || yearsDiff <= -2) {
            return TRUE;
        }
    } else if (daysDiff <= -2 || daysDiff >= 2) {
        return TRUE;
    } else {
        if (currDate.year != journalEntryTitle.year) {
            return TRUE;
        }
    }

    return FALSE;
}

void JournalEntry_SaveData(JournalEntry *journalEntry, void *data, u8 dataType)
{
    if (journalEntry != NULL) {
        switch (dataType) {
        case JOURNAL_TITLE:
            JournalEntry_SaveTitle(journalEntry, data);
            break;
        case JOURNAL_UNK_04:
            sub_0202B7E0(journalEntry, data);
            break;
        case JOURNAL_MON:
            JournalEntry_SaveMon(journalEntry, data);
            break;
        case JOURNAL_TRAINER:
            JournalEntry_SaveTrainer(journalEntry, data);
            break;
        case JOURNAL_UNK_1C:
            sub_0202B898(journalEntry, data);
            break;
        }
    }

    Heap_FreeToHeap(data);
}

static void JournalEntry_SaveTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle)
{
    if (journalEntry->title.year == journalEntryTitle->year && journalEntry->title.month == journalEntryTitle->month
        && journalEntry->title.day == journalEntryTitle->day && journalEntry->title.week == journalEntryTitle->week) {
        return;
    }

    journalEntry->title = *journalEntryTitle;
}

static void sub_0202B7E0(JournalEntry *journalEntry, UnkStruct_0202BCC8 *data)
{
    switch (data->unk_00) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 16:
    case 17:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
        sub_0202B994(journalEntry->unk_04, data);
        break;
    case 9:
    case 10:
        sub_0202BA48(journalEntry->unk_04, data);
        break;
    case 11:
        sub_0202B9F0(journalEntry->unk_04, data);
        break;
    case 12:
        sub_0202B9D0(journalEntry->unk_04, data);
        break;
    case 13:
    case 14:
    case 15:
        sub_0202BAB0(journalEntry->unk_04, data);
        break;
    case 18:
        sub_0202BAF8(journalEntry->unk_04, data);
        break;
    case 19:
    case 20:
    case 21:
    case 22:
    case 27:
    case 23:
    case 24:
    case 25:
    case 26:
    case 29:
    case 30:
    case 28:
    case 33:
    case 32:
        sub_0202BB40(journalEntry->unk_04, data);
        break;
    }
}

static void JournalEntry_SaveMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon)
{
    journalEntry->mon = *journalEntryMon;
}

static void JournalEntry_SaveTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer)
{
    journalEntry->trainer = *journalEntryTrainer;
}

static void sub_0202B898(JournalEntry *journalEntry, UnkStruct_0202BFCC *data)
{
    u8 *v0 = sub_0202B954(journalEntry);

    switch (data->unk_00) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 11:
        sub_0202BB88(v0, data);
        break;
    case 6:
    case 22:
    case 23:
        sub_0202BBC4(v0, data);
        break;
    case 7:
    case 9:
    case 15:
        sub_0202BBE0(v0, data);
        break;
    case 8:
    case 10:
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
        sub_0202BC14(journalEntry, data);
        break;
    case 13:
    case 24:
        sub_0202BC48(v0, data);
        break;
    }
}

static u32 *sub_0202B91C(u32 *param0)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        if ((param0[i] & 0x3f) == 0) {
            return &param0[i];
        }
    }

    for (i = 0; i < 4 - 1; i++) {
        param0[i] = param0[i + 1];
    }

    param0[i] = 0;

    return &param0[i];
}

static u8 *sub_0202B954(JournalEntry *journalEntry)
{
    u32 i;

    for (i = 0; i < 2; i++) {
        if (journalEntry->unk_1C[i][0] == 0) {
            return &journalEntry->unk_1C[i][0];
        }
    }

    for (i = 0; i < 2 - 1; i++) {
        memcpy(&journalEntry->unk_1C[i][0], &journalEntry->unk_1C[i + 1][0], 42);
    }

    memset(&journalEntry->unk_1C[i][0], 0, 42);

    return &journalEntry->unk_1C[i][0];
}

static void sub_0202B994(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && (param0[i - 1] & 0x3f) == data->unk_00) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (data->unk_00 & 0x3f);
}

static void sub_0202B9D0(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0 = sub_0202B91C(param0);
    *v0 = (data->unk_02 << 16) | ((data->unk_04 & 0x3ff) << 6) | (data->unk_00 & 0x3f);
}

static void sub_0202B9F0(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0 = NULL;
    u16 i;

    for (i = 0; i < 4; i++) {
        if ((param0[i] & 0x3f) == 11) {
            param0[i] = 0;

            for (i = i; i < 4 - 1; i++) {
                param0[i] = param0[i + 1];
                param0[i + 1] = 0;
            }

            break;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (data->unk_02 << 16) | ((data->unk_04 & 0x3ff) << 6) | (data->unk_00 & 0x3f);
}

static void sub_0202BA48(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0 = NULL;
    u16 i;

    for (i = 0; i < 4; i++) {
        if (((param0[i] & 0x3f) == 9) && (((param0[i] >> 16) & 0xffff) == data->unk_02)) {
            param0[i] = 0;

            for (i = i; i < 4 - 1; i++) {
                param0[i] = param0[i + 1];
                param0[i + 1] = 0;
            }
            break;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (data->unk_02 << 16) | ((data->unk_04 & 0x3ff) << 6) | (data->unk_00 & 0x3f);
}

static void sub_0202BAB0(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && ((param0[i - 1] & 0x3f) == data->unk_00) && ((param0[i - 1] >> 16) == data->unk_02)) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (data->unk_02 << 16) | (data->unk_00 & 0x3f);
}

static void sub_0202BAF8(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && ((param0[i - 1] & 0x3f) == data->unk_00) && ((param0[i - 1] >> 16) == data->unk_06)) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (data->unk_06 << 16) | (data->unk_00 & 0x3f);
}

static void sub_0202BB40(u32 *param0, UnkStruct_0202BCC8 *data)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && ((param0[i - 1] & 0x3f) == data->unk_00) && ((param0[i - 1] >> 16) == data->unk_02)) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (data->unk_02 << 16) | (data->unk_00 & 0x3f);
}

static void sub_0202BB88(u8 *param0, UnkStruct_0202BFCC *data)
{
    param0[0] = data->unk_00;
    param0[1] = (data->unk_01_0 << 2) | (data->unk_01_4 << 1) | (data->unk_01_5);
    sub_0202BF94(data->unk_02, (u16 *)&param0[2], 8);
    sub_0202BF94(data->unk_12, (u16 *)&param0[18], 8);
}

static void sub_0202BBC4(u8 *param0, UnkStruct_0202BFCC *data)
{
    param0[0] = data->unk_00;
    param0[1] = data->unk_01_4;

    sub_0202BF94(data->unk_02, (u16 *)&param0[2], 8);
}

static void sub_0202BBE0(u8 *param0, UnkStruct_0202BFCC *data)
{
    param0[0] = data->unk_00;
    param0[1] = (data->unk_01_4 << 2) | (data->unk_01_6);

    sub_0202BF94(data->unk_02, (u16 *)&param0[2], 8);
    sub_0202BF94(data->unk_22, (u16 *)&param0[18], 12);
}

static void sub_0202BC14(JournalEntry *journalEntry, UnkStruct_0202BFCC *data)
{
    u32 i;
    u8 *v1;

    for (i = 0; i < 2; i++) {
        if (journalEntry->unk_1C[i][0] == 0) {
            break;
        }
    }

    if (i != 0 && journalEntry->unk_1C[i - 1][0] == data->unk_00) {
        return;
    }

    v1 = sub_0202B954(journalEntry);
    v1[0] = data->unk_00;
}

static void sub_0202BC48(u8 *param0, UnkStruct_0202BFCC *data)
{
    param0[0] = data->unk_00;
    param0[1] = data->unk_01_0;
}

void *JournalEntry_CreateTitle(u16 mapID, u32 heapID)
{
    JournalEntryTitle *journalEntryTitle = Heap_AllocFromHeap(heapID, sizeof(JournalEntryTitle));
    RTCDate currDate;

    GetCurrentDate(&currDate);

    journalEntryTitle->year = currDate.year;
    journalEntryTitle->month = currDate.month;
    journalEntryTitle->day = currDate.day;
    journalEntryTitle->week = currDate.week;
    journalEntryTitle->mapID = mapID;

    return journalEntryTitle;
}

static UnkStruct_0202BCC8 *sub_0202BCC8(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0202BCC8));

    memset(v0, 0, sizeof(UnkStruct_0202BCC8));
    return v0;
}

void *sub_0202BCE4(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 1;
    return v0;
}

void *sub_0202BCF0(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 2;
    return v0;
}

void *sub_0202BCFC(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 3;
    return v0;
}

void *sub_0202BD08(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 4;
    return v0;
}

void *sub_0202BD14(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 5;
    return v0;
}

void *sub_0202BD20(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 6;
    return v0;
}

void *sub_0202BD2C(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 7;
    return v0;
}

void *sub_0202BD38(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 8;
    return v0;
}

void *sub_0202BD44(u16 defeatedGym, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 9;
    v0->unk_02 = defeatedGym;

    return v0;
}

void *sub_0202BD58(u16 trainerType, u16 trainerID, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 10;
    v0->unk_02 = trainerType;
    v0->unk_04 = trainerID;

    return v0;
}

void *sub_0202BD70(u16 trainerID, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 11;
    v0->unk_04 = trainerID;

    return v0;
}

void *sub_0202BD84(u16 trainerID, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 12;
    v0->unk_04 = trainerID;

    return v0;
}

void *sub_0202BD98(u16 mapID, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 13;
    v0->unk_02 = mapID;

    return v0;
}

void *sub_0202BDAC(u16 mapLabelTextID, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 14;
    v0->unk_02 = mapLabelTextID;

    return v0;
}

void *sub_0202BDC0(u16 mapLabelTextID, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 15;
    v0->unk_02 = mapLabelTextID;

    return v0;
}

void *sub_0202BDD4(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 16;
    return v0;
}

void *sub_0202BDE0(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 17;
    return v0;
}

void *sub_0202BDEC(u16 param0, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 18;
    v0->unk_06 = param0;

    return v0;
}

void *sub_0202BE00(u8 param0, u16 param1, u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 19 + param0;
    v0->unk_02 = param1;

    return v0;
}

void *sub_0202BE14(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 34;
    return v0;
}

void *sub_0202BE20(u32 heapID)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = 35;
    return v0;
}

void *sub_0202BE2C(u32 heapID, u32 param1)
{
    UnkStruct_0202BCC8 *v0 = sub_0202BCC8(heapID);

    v0->unk_00 = param1;
    return v0;
}

static JournalEntryMon *JournalEntry_InitMon(u32 heapID)
{
    JournalEntryMon *journalEntryMon = Heap_AllocFromHeap(heapID, sizeof(JournalEntryMon));

    memset(journalEntryMon, 0, sizeof(JournalEntryMon));
    return journalEntryMon;
}

void *JournalEntry_CreateMonCaught(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, u32 heapID)
{
    JournalEntryMon *journalEntryMon = JournalEntry_InitMon(heapID);
    u8 v1;

    journalEntryMon->battleResult = POKEMON_CAUGHT;
    journalEntryMon->species = species;
    journalEntryMon->gender = gender;
    journalEntryMon->timeOfDay = timeOfDay;

    v1 = PlayTime_GetMinutes(playTime) / 10;

    if (v1 == 0 || v1 == 2 || v1 == 4) {
        journalEntryMon->stringVariant = 0;
    } else if (v1 == 1 || v1 == 3) {
        journalEntryMon->stringVariant = 1;
    } else {
        journalEntryMon->stringVariant = 2;
    }

    return journalEntryMon;
}

void *JournalEntry_CreateMonDefeated(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, u32 heapID)
{
    JournalEntryMon *journalEntryMon = JournalEntry_InitMon(heapID);
    u8 v1;

    journalEntryMon->battleResult = POKEMON_DEFEATED;
    journalEntryMon->species = species;
    journalEntryMon->gender = gender;
    journalEntryMon->timeOfDay = timeOfDay;

    v1 = PlayTime_GetMinutes(playTime) / 10;

    if (v1 == 1 || v1 == 3 || v1 == 5) {
        journalEntryMon->stringVariant = 0;
    } else if (v1 == 2 || v1 == 4) {
        journalEntryMon->stringVariant = 1;
    } else {
        journalEntryMon->stringVariant = 2;
    }

    return journalEntryMon;
}

void *JournalEntry_InitTrainer(u16 mapID, u16 trainerID, u32 heapID)
{
    JournalEntryTrainer *journalEntryTrainer = Heap_AllocFromHeap(heapID, sizeof(JournalEntryTrainer));

    journalEntryTrainer->unk_00_0 = 1;
    journalEntryTrainer->mapID = mapID;
    journalEntryTrainer->trainerID = trainerID;

    return journalEntryTrainer;
}

static UnkStruct_0202BFCC *sub_0202BF7C(u32 heapID)
{
    UnkStruct_0202BFCC *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0202BFCC));

    memset(v0, 0, sizeof(UnkStruct_0202BFCC));
    return v0;
}

static void sub_0202BF94(const u16 *param0, u16 *param1, u32 param2)
{
    u32 i;

    for (i = 0; i < param2; i++) {
        param1[i] = 0xffff;
    }

    for (i = 0; i < param2; i++) {
        if (param0[i] == 0xffff) {
            break;
        }

        param1[i] = param0[i];
    }
}

void *sub_0202BFCC(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 1;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C00C(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 2;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C04C(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 3;
    v0->unk_01_0 = param4;
    v0->unk_01_4 = param2;
    v0->unk_01_5 = param3;

    sub_0202BF94(param0, v0->unk_02, 8);
    sub_0202BF94(param1, v0->unk_12, 8);

    return v0;
}

void *sub_0202C0AC(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 4;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C0EC(u16 *trainerName, u8 trainerGender, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 6;
    v0->unk_01_4 = trainerGender;

    sub_0202BF94(trainerName, v0->unk_02, 8);
    return v0;
}

void *sub_0202C11C(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 7;
    v0->unk_01_4 = param1;
    v0->unk_01_6 = param3;

    sub_0202BF94(param0, v0->unk_02, 8);
    sub_0202BF94(param2, v0->unk_22, 12);

    return v0;
}

void *sub_0202C168(u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 8;
    return v0;
}

void *sub_0202C174(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 11;
    v0->unk_01_0 = param2;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C1B4(u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 12;
    return v0;
}

void *sub_0202C1C0(u8 param0, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 13;
    v0->unk_01_0 = param0;

    return v0;
}

void *sub_0202C1E0(u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 14;
    return v0;
}

void *sub_0202C1EC(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 15;
    v0->unk_01_4 = param1;
    v0->unk_01_6 = param3;

    sub_0202BF94(param0, v0->unk_02, 8);
    sub_0202BF94(param2, v0->unk_22, 12);

    return v0;
}

void *sub_0202C238(u32 heapID)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = 16;
    return v0;
}

void *sub_0202C244(u32 heapID, u32 param1)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = param1;
    return v0;
}

void *sub_0202C250(const u16 *param0, u8 param1, u32 heapID, u32 param3)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = param3;
    v0->unk_01_4 = param1;

    sub_0202BF94(param0, v0->unk_02, 8);
    return v0;
}

void *sub_0202C280(int param0, u32 heapID, u32 param2)
{
    UnkStruct_0202BFCC *v0 = sub_0202BF7C(heapID);

    v0->unk_00 = param2;
    v0->unk_01_0 = param0;

    return v0;
}

void JournalEntry_GetData(JournalEntry *journalEntry, void *dest, u8 dataType, u8 page)
{
    switch (dataType) {
    case JOURNAL_TITLE:
        JournalEntry_GetTitle(&journalEntry[page], dest);
        break;
    case JOURNAL_UNK_04:
        sub_0202C304(&journalEntry[page], dest);
        break;
    case JOURNAL_MON:
        JournalEntry_GetMon(&journalEntry[page], dest);
        break;
    case JOURNAL_TRAINER:
        JournalEntry_GetTrainer(&journalEntry[page], dest);
        break;
    case JOURNAL_UNK_1C:
        sub_0202C3D0(&journalEntry[page], dest);
        break;
    }
}

static void JournalEntry_GetTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle)
{
    *journalEntryTitle = journalEntry->title;
}

static void sub_0202C304(JournalEntry *journalEntry, UnkStruct_0202BCC8 *param1)
{
    u32 i;

    for (i = 0; i < 4; i++) {
        memset(&param1[i], 0, sizeof(UnkStruct_0202BCC8));

        switch (journalEntry->unk_04[i] & 0x3f) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 16:
        case 17:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
            sub_0202C474(journalEntry->unk_04[i], &param1[i]);
            break;
        case 9:
        case 10:
        case 11:
        case 12:
            sub_0202C47C(journalEntry->unk_04[i], &param1[i]);
            break;
        case 13:
        case 14:
        case 15:
            sub_0202C494(journalEntry->unk_04[i], &param1[i]);
            break;
        case 18:
            sub_0202C4A0(journalEntry->unk_04[i], &param1[i]);
            break;
        case 19:
        case 20:
        case 21:
        case 22:
        case 27:
        case 23:
        case 24:
        case 25:
        case 26:
        case 29:
        case 30:
        case 28:
        case 33:
        case 32:
            sub_0202C4AC(journalEntry->unk_04[i], &param1[i]);
            break;
        }
    }
}

static void JournalEntry_GetMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon)
{
    *journalEntryMon = journalEntry->mon;
}

static void JournalEntry_GetTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer)
{
    *journalEntryTrainer = journalEntry->trainer;
}

static void sub_0202C3D0(JournalEntry *journalEntry, UnkStruct_0202BFCC *param1)
{
    u32 i;

    for (i = 0; i < 2; i++) {
        memset(&param1[i], 0, sizeof(UnkStruct_0202BFCC));

        switch (journalEntry->unk_1C[i][0]) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 11:
            sub_0202C4B8(&journalEntry->unk_1C[i][0], &param1[i]);
            break;
        case 6:
        case 22:
        case 23:
            sub_0202C528(&journalEntry->unk_1C[i][0], &param1[i]);
            break;
        case 7:
        case 9:
        case 15:
            sub_0202C54C(&journalEntry->unk_1C[i][0], &param1[i]);
            break;
        case 8:
        case 10:
        case 12:
        case 14:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
            sub_0202C5A4(&journalEntry->unk_1C[i][0], &param1[i]);
            break;
        case 13:
        case 24:
            sub_0202C5AC(&journalEntry->unk_1C[i][0], &param1[i]);
            break;
        }
    }
}

static void sub_0202C474(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
}

static void sub_0202C47C(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_04 = (param0 >> 6) & 0x3ff;
    param1->unk_02 = (param0 >> 16) & 0xffff;
}

static void sub_0202C494(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_02 = (param0 >> 16) & 0xffff;
}

static void sub_0202C4A0(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_06 = (param0 >> 16) & 0xffff;
}

static void sub_0202C4AC(u32 param0, UnkStruct_0202BCC8 *param1)
{
    param1->unk_00 = (param0 & 0x3f);
    param1->unk_02 = (param0 >> 16) & 0xffff;
}

static void sub_0202C4B8(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_0 = (param0[1] >> 2) & 0x1f;
    param1->unk_01_4 = (param0[1] >> 1) & 1;
    param1->unk_01_5 = param0[1] & 1;

    sub_0202BF94((u16 *)&param0[2], param1->unk_02, 8);
    sub_0202BF94((u16 *)&param0[18], param1->unk_12, 8);
}

static void sub_0202C528(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_4 = param0[1];

    sub_0202BF94((u16 *)&param0[2], param1->unk_02, 8);
}

static void sub_0202C54C(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_4 = (param0[1] >> 2) & 1;
    param1->unk_01_6 = param0[1] & 3;

    sub_0202BF94((u16 *)&param0[2], param1->unk_02, 8);
    sub_0202BF94((u16 *)&param0[18], param1->unk_22, 12);
}

static void sub_0202C5A4(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
}

static void sub_0202C5AC(u8 *param0, UnkStruct_0202BFCC *param1)
{
    param1->unk_00 = param0[0];
    param1->unk_01_0 = param0[1];
}

void sub_0202C5C4(TrainerInfo *trainerInfo, JournalEntry *journalEntry, u32 currMapID, u32 prevMapID, u32 heapID)
{
    void *data = NULL;
    u32 i;

    if (MapHeader_IsCave(prevMapID) == TRUE) {
        if (MapHeader_IsOutdoors(currMapID) == TRUE) {
            data = sub_0202BDAC((u16)MapHeader_GetMapLabelTextID(prevMapID), heapID);
        }
    } else if (MapHeader_IsBuilding(prevMapID) == TRUE) {
        if (MapHeader_IsOutdoors(currMapID) == TRUE) {
            if (prevMapID == MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F) {
                data = sub_0202BCE4(heapID);
            } else if (prevMapID == MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB) {
                data = sub_0202BCF0(heapID);
            } else {
                u32 mapLabelTextID = MapHeader_GetMapLabelTextID(prevMapID);

                for (i = 0; i < NELEMS(sMapsInfo); i++) {
                    if (mapLabelTextID != sMapsInfo[i].mapLabelTextID) {
                        continue;
                    }

                    data = sub_0202BDC0((u16)mapLabelTextID, heapID);
                }
            }
        }
    } else if (MapHeader_IsOutdoors(prevMapID) == TRUE) {
        if (MapHeader_IsBuilding(currMapID) == TRUE) {
            u8 defeatedGym = JournalEntry_GetDefeatedGym(trainerInfo, currMapID);

            if (defeatedGym != 0xff) {
                data = sub_0202BD44(defeatedGym, heapID);
            }
        }
    }

    if (data != NULL) {
        JournalEntry_SaveData(journalEntry, data, JOURNAL_UNK_04);
    }
}

u32 sub_0202C6A4(u32 param0)
{
    u32 i;

    for (i = 0; i < NELEMS(sMapsInfo); i++) {
        if (param0 != sMapsInfo[i].mapLabelTextID) {
            continue;
        }

        return sMapsInfo[i].unk_04;
    }

    return 0;
}

static u8 JournalEntry_GetDefeatedGym(TrainerInfo *trainerInfo, u32 mapID)
{
    u8 i;

    for (i = 0; i < NELEMS(sGymsInfo); i++) {
        if (sGymsInfo[i].mapID == mapID) {
            if (TrainerInfo_HasBadge(trainerInfo, sGymsInfo[i].badge) == 0) {
                return i;
            }

            break;
        }
    }

    return 0xff;
}

void sub_0202C704(JournalEntry *journalEntry, u32 mapID, u32 heapID)
{
    void *data = sub_0202BD98((u16)mapID, heapID);
    JournalEntry_SaveData(journalEntry, data, JOURNAL_UNK_04);
}

void sub_0202C720(JournalEntry *journalEntry, u16 mapID, u16 trainerID, u32 heapID)
{
    void *data;
    u8 trainerType = JournalEntry_TrainerType(trainerID);

    if (trainerType < 8) {
        data = sub_0202BD58(trainerType, trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_UNK_04);
    } else if (trainerType == 8) {
        data = sub_0202BD70(trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_UNK_04);
    } else if (trainerType == 9) {
        data = sub_0202BD84(trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_UNK_04);
    } else {
        data = JournalEntry_InitTrainer(mapID, trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_TRAINER);
    }
}

static u8 JournalEntry_TrainerType(u32 trainerID)
{
    u8 i;

    for (i = 0; i < NELEMS(sGymsInfo); i++) {
        if (sGymsInfo[i].trainerID == trainerID) {
            return i;
        }
    }

    if (trainerID == trainer_elite_four_aaron || trainerID == trainer_elite_four_aaron_rematch
        || trainerID == trainer_elite_four_bertha || trainerID == trainer_elite_four_bertha_rematch
        || trainerID == trainer_elite_four_flint || trainerID == trainer_elite_four_flint_rematch
        || trainerID == trainer_elite_four_lucian || trainerID == trainer_elite_four_lucian_rematch) {
        return 8;
    }

    if (trainerID == trainer_champion_cynthia || trainerID == trainer_champion_cynthia_rematch) {
        return 9;
    }

    return 10;
}

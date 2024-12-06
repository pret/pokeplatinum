#include "journal.h"

#include <nitro.h>
#include <string.h>

#include "consts/badges.h"
#include "consts/map.h"

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
static void sub_0202B7E0(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon);
static void JournalEntry_SaveTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer);
static void sub_0202B898(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static u32 *sub_0202B91C(u32 *param0);
static u8 *sub_0202B954(JournalEntry *journalEntry);
static void sub_0202B994(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202B9D0(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202B9F0(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202BA48(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202BAB0(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202BAF8(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202BB40(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202BB88(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202BBC4(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202BBE0(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202BC14(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202BC48(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202BF94(const u16 *param0, u16 *param1, u32 param2);
static void JournalEntry_GetTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle);
static void sub_0202C304(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon);
static void JournalEntry_GetTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer);
static void sub_0202C3D0(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202C474(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202C47C(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202C494(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202C4A0(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202C4AC(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent);
static void sub_0202C4B8(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202C528(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202C54C(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202C5A4(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void sub_0202C5AC(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent);
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
        case JOURNAL_LOCATION:
            sub_0202B7E0(journalEntry, data);
            break;
        case JOURNAL_MON:
            JournalEntry_SaveMon(journalEntry, data);
            break;
        case JOURNAL_TRAINER:
            JournalEntry_SaveTrainer(journalEntry, data);
            break;
        case JOURNAL_ONLINE_EVENT:
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

static void sub_0202B7E0(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    switch (journalEntryLocationEvent->eventType) {
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
        sub_0202B994(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case 9:
    case 10:
        sub_0202BA48(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case 11:
        sub_0202B9F0(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case 12:
        sub_0202B9D0(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case 13:
    case 14:
    case 15:
        sub_0202BAB0(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case 18:
        sub_0202BAF8(journalEntry->locationEvents, journalEntryLocationEvent);
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
        sub_0202BB40(journalEntry->locationEvents, journalEntryLocationEvent);
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

static void sub_0202B898(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    u8 *v0 = sub_0202B954(journalEntry);

    switch (journalEntryOnlineEvent->eventType) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 11:
        sub_0202BB88(v0, journalEntryOnlineEvent);
        break;
    case 6:
    case 22:
    case 23:
        sub_0202BBC4(v0, journalEntryOnlineEvent);
        break;
    case 7:
    case 9:
    case 15:
        sub_0202BBE0(v0, journalEntryOnlineEvent);
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
        sub_0202BC14(journalEntry, journalEntryOnlineEvent);
        break;
    case 13:
    case 24:
        sub_0202BC48(v0, journalEntryOnlineEvent);
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
        if (journalEntry->onlineEvents[i][0] == 0) {
            return &journalEntry->onlineEvents[i][0];
        }
    }

    for (i = 0; i < 2 - 1; i++) {
        memcpy(&journalEntry->onlineEvents[i][0], &journalEntry->onlineEvents[i + 1][0], 42);
    }

    memset(&journalEntry->onlineEvents[i][0], 0, 42);

    return &journalEntry->onlineEvents[i][0];
}

static void sub_0202B994(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && (param0[i - 1] & 0x3f) == journalEntryLocationEvent->eventType) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202B9D0(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *v0 = sub_0202B91C(param0);
    *v0 = (journalEntryLocationEvent->locationID << 16) | ((journalEntryLocationEvent->trainerID & 0x3ff) << 6) | (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202B9F0(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
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
    *v0 = (journalEntryLocationEvent->locationID << 16) | ((journalEntryLocationEvent->trainerID & 0x3ff) << 6) | (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202BA48(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *v0 = NULL;
    u16 i;

    for (i = 0; i < 4; i++) {
        if (((param0[i] & 0x3f) == 9) && (((param0[i] >> 16) & 0xffff) == journalEntryLocationEvent->locationID)) {
            param0[i] = 0;

            for (i = i; i < 4 - 1; i++) {
                param0[i] = param0[i + 1];
                param0[i + 1] = 0;
            }
            break;
        }
    }

    v0 = sub_0202B91C(param0);
    *v0 = (journalEntryLocationEvent->locationID << 16) | ((journalEntryLocationEvent->trainerID & 0x3ff) << 6) | (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202BAB0(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && ((param0[i - 1] & 0x3f) == journalEntryLocationEvent->eventType) && ((param0[i - 1] >> 16) == journalEntryLocationEvent->locationID)) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (journalEntryLocationEvent->locationID << 16) | (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202BAF8(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && ((param0[i - 1] & 0x3f) == journalEntryLocationEvent->eventType) && ((param0[i - 1] >> 16) == journalEntryLocationEvent->item)) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (journalEntryLocationEvent->item << 16) | (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202BB40(u32 *param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *v0;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (param0[i] == 0) {
            break;
        }
    }

    if (i != 0 && ((param0[i - 1] & 0x3f) == journalEntryLocationEvent->eventType) && ((param0[i - 1] >> 16) == journalEntryLocationEvent->locationID)) {
        return;
    }

    v0 = sub_0202B91C(param0);
    *v0 = (journalEntryLocationEvent->locationID << 16) | (journalEntryLocationEvent->eventType & 0x3f);
}

static void sub_0202BB88(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    param0[0] = journalEntryOnlineEvent->eventType;
    param0[1] = (journalEntryOnlineEvent->result << 2) | (journalEntryOnlineEvent->unused1 << 1) | (journalEntryOnlineEvent->unused2);
    sub_0202BF94(journalEntryOnlineEvent->playerName1, (u16 *)&param0[2], 8);
    sub_0202BF94(journalEntryOnlineEvent->playerName2, (u16 *)&param0[18], 8);
}

static void sub_0202BBC4(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    param0[0] = journalEntryOnlineEvent->eventType;
    param0[1] = journalEntryOnlineEvent->unused1;

    sub_0202BF94(journalEntryOnlineEvent->playerName1, (u16 *)&param0[2], 8);
}

static void sub_0202BBE0(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    param0[0] = journalEntryOnlineEvent->eventType;
    param0[1] = (journalEntryOnlineEvent->unused1 << 2) | (journalEntryOnlineEvent->unused3);

    sub_0202BF94(journalEntryOnlineEvent->playerName1, (u16 *)&param0[2], 8);
    sub_0202BF94(journalEntryOnlineEvent->pokemonName, (u16 *)&param0[18], 12);
}

static void sub_0202BC14(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    u32 i;
    u8 *v1;

    for (i = 0; i < 2; i++) {
        if (journalEntry->onlineEvents[i][0] == 0) {
            break;
        }
    }

    if (i != 0 && journalEntry->onlineEvents[i - 1][0] == journalEntryOnlineEvent->eventType) {
        return;
    }

    v1 = sub_0202B954(journalEntry);
    v1[0] = journalEntryOnlineEvent->eventType;
}

static void sub_0202BC48(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    param0[0] = journalEntryOnlineEvent->eventType;
    param0[1] = journalEntryOnlineEvent->result;
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

static JournalEntryLocationEvent *sub_0202BCC8(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = Heap_AllocFromHeap(heapID, sizeof(JournalEntryLocationEvent));

    memset(journalEntryLocationEvent, 0, sizeof(JournalEntryLocationEvent));
    return journalEntryLocationEvent;
}

void *sub_0202BCE4(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 1;
    return journalEntryLocationEvent;
}

void *sub_0202BCF0(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 2;
    return journalEntryLocationEvent;
}

void *sub_0202BCFC(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 3;
    return journalEntryLocationEvent;
}

void *sub_0202BD08(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 4;
    return journalEntryLocationEvent;
}

void *sub_0202BD14(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 5;
    return journalEntryLocationEvent;
}

void *sub_0202BD20(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 6;
    return journalEntryLocationEvent;
}

void *sub_0202BD2C(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 7;
    return journalEntryLocationEvent;
}

void *sub_0202BD38(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 8;
    return journalEntryLocationEvent;
}

void *sub_0202BD44(u16 defeatedGym, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 9;
    journalEntryLocationEvent->locationID = defeatedGym;

    return journalEntryLocationEvent;
}

void *sub_0202BD58(u16 trainerType, u16 trainerID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 10;
    journalEntryLocationEvent->locationID = trainerType;
    journalEntryLocationEvent->trainerID = trainerID;

    return journalEntryLocationEvent;
}

void *sub_0202BD70(u16 trainerID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 11;
    journalEntryLocationEvent->trainerID = trainerID;

    return journalEntryLocationEvent;
}

void *sub_0202BD84(u16 trainerID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 12;
    journalEntryLocationEvent->trainerID = trainerID;

    return journalEntryLocationEvent;
}

void *sub_0202BD98(u16 mapID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 13;
    journalEntryLocationEvent->locationID = mapID;

    return journalEntryLocationEvent;
}

void *sub_0202BDAC(u16 mapLabelTextID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 14;
    journalEntryLocationEvent->locationID = mapLabelTextID;

    return journalEntryLocationEvent;
}

void *sub_0202BDC0(u16 mapLabelTextID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 15;
    journalEntryLocationEvent->locationID = mapLabelTextID;

    return journalEntryLocationEvent;
}

void *sub_0202BDD4(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 16;
    return journalEntryLocationEvent;
}

void *sub_0202BDE0(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 17;
    return journalEntryLocationEvent;
}

void *sub_0202BDEC(u16 param0, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 18;
    journalEntryLocationEvent->item = param0;

    return journalEntryLocationEvent;
}

void *sub_0202BE00(u8 param0, u16 mapID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 19 + param0;
    journalEntryLocationEvent->locationID = mapID;

    return journalEntryLocationEvent;
}

void *sub_0202BE14(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 34;
    return journalEntryLocationEvent;
}

void *sub_0202BE20(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = 35;
    return journalEntryLocationEvent;
}

void *sub_0202BE2C(u32 heapID, u32 param1)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = sub_0202BCC8(heapID);

    journalEntryLocationEvent->eventType = param1;
    return journalEntryLocationEvent;
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

    journalEntryTrainer->initialized = 1;
    journalEntryTrainer->mapID = mapID;
    journalEntryTrainer->trainerID = trainerID;

    return journalEntryTrainer;
}

static JournalEntryOnlineEvent *sub_0202BF7C(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = Heap_AllocFromHeap(heapID, sizeof(JournalEntryOnlineEvent));

    memset(journalEntryOnlineEvent, 0, sizeof(JournalEntryOnlineEvent));
    return journalEntryOnlineEvent;
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
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 1;
    journalEntryOnlineEvent->result = param2;
    journalEntryOnlineEvent->unused1 = param1;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    return journalEntryOnlineEvent;
}

void *sub_0202C00C(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 2;
    journalEntryOnlineEvent->result = param2;
    journalEntryOnlineEvent->unused1 = param1;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    return journalEntryOnlineEvent;
}

void *sub_0202C04C(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 3;
    journalEntryOnlineEvent->result = param4;
    journalEntryOnlineEvent->unused1 = param2;
    journalEntryOnlineEvent->unused2 = param3;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    sub_0202BF94(param1, journalEntryOnlineEvent->playerName2, 8);

    return journalEntryOnlineEvent;
}

void *sub_0202C0AC(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 4;
    journalEntryOnlineEvent->result = param2;
    journalEntryOnlineEvent->unused1 = param1;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    return journalEntryOnlineEvent;
}

void *sub_0202C0EC(u16 *trainerName, u8 trainerGender, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 6;
    journalEntryOnlineEvent->unused1 = trainerGender;

    sub_0202BF94(trainerName, journalEntryOnlineEvent->playerName1, 8);
    return journalEntryOnlineEvent;
}

void *sub_0202C11C(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 7;
    journalEntryOnlineEvent->unused1 = param1;
    journalEntryOnlineEvent->unused3 = param3;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    sub_0202BF94(param2, journalEntryOnlineEvent->pokemonName, 12);

    return journalEntryOnlineEvent;
}

void *sub_0202C168(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 8;
    return journalEntryOnlineEvent;
}

void *sub_0202C174(u16 *param0, u8 param1, u8 param2, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 11;
    journalEntryOnlineEvent->result = param2;
    journalEntryOnlineEvent->unused1 = param1;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    return journalEntryOnlineEvent;
}

void *sub_0202C1B4(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 12;
    return journalEntryOnlineEvent;
}

void *sub_0202C1C0(u8 param0, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 13;
    journalEntryOnlineEvent->result = param0;

    return journalEntryOnlineEvent;
}

void *sub_0202C1E0(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 14;
    return journalEntryOnlineEvent;
}

void *sub_0202C1EC(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 15;
    journalEntryOnlineEvent->unused1 = param1;
    journalEntryOnlineEvent->unused3 = param3;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    sub_0202BF94(param2, journalEntryOnlineEvent->pokemonName, 12);

    return journalEntryOnlineEvent;
}

void *sub_0202C238(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = 16;
    return journalEntryOnlineEvent;
}

void *sub_0202C244(u32 heapID, u32 param1)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = param1;
    return journalEntryOnlineEvent;
}

void *sub_0202C250(const u16 *param0, u8 param1, u32 heapID, u32 param3)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = param3;
    journalEntryOnlineEvent->unused1 = param1;

    sub_0202BF94(param0, journalEntryOnlineEvent->playerName1, 8);
    return journalEntryOnlineEvent;
}

void *sub_0202C280(int param0, u32 heapID, u32 param2)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = sub_0202BF7C(heapID);

    journalEntryOnlineEvent->eventType = param2;
    journalEntryOnlineEvent->result = param0;

    return journalEntryOnlineEvent;
}

void JournalEntry_GetData(JournalEntry *journalEntry, void *dest, u8 dataType, u8 page)
{
    switch (dataType) {
    case JOURNAL_TITLE:
        JournalEntry_GetTitle(&journalEntry[page], dest);
        break;
    case JOURNAL_LOCATION:
        sub_0202C304(&journalEntry[page], dest);
        break;
    case JOURNAL_MON:
        JournalEntry_GetMon(&journalEntry[page], dest);
        break;
    case JOURNAL_TRAINER:
        JournalEntry_GetTrainer(&journalEntry[page], dest);
        break;
    case JOURNAL_ONLINE_EVENT:
        sub_0202C3D0(&journalEntry[page], dest);
        break;
    }
}

static void JournalEntry_GetTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle)
{
    *journalEntryTitle = journalEntry->title;
}

static void sub_0202C304(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        memset(&journalEntryLocationEvent[i], 0, sizeof(JournalEntryLocationEvent));

        switch (journalEntry->locationEvents[i] & 0x3f) {
        case LOCATION_EVENT_RESTED_AT_HOME:
        case LOCATION_EVENT_LEFT_RESEARCH_LAB:
        case LOCATION_EVENT_USED_PC_BOX:
        case LOCATION_EVENT_SHOPPED_AT_MART:
        case LOCATION_EVENT_LOTS_OF_SHOPPING:
        case LOCATION_EVENT_SOLD_A_LITTLE:
        case LOCATION_EVENT_SOLD_A_LOT:
        case LOCATION_EVENT_BUSINESS_AT_MART:
        case LOCATION_EVENT_GAME_CORNER:
        case LOCATION_EVENT_SAFARI_GAME:
        case LOCATION_EVENT_DUG_UNDERGROUND:
        case LOCATION_EVENT_BUILT_SECRET_BASE:
        case LOCATION_EVENT_BATTLE_TOWER:
        case LOCATION_EVENT_BATTLE_FACTORY:
        case LOCATION_EVENT_BATTLE_CASTLE:
        case LOCATION_EVENT_BATTLE_HALL:
        case LOCATION_EVENT_BATTLE_ARCADE:
            sub_0202C474(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_GYM_WAS_TOO_TOUGH:
        case LOCATION_EVENT_BEAT_GYM_LEADER:
        case LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER:
        case LOCATION_EVENT_BEAT_CHAMPION:
            sub_0202C47C(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_ARRIVED_IN_LOCATION:
        case LOCATION_EVENT_LEFT_OUTSIDE_LOCATION:
        case LOCATION_EVENT_LEFT_INSIDE_LOCATION:
            sub_0202C494(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_ITEM_WAS_OBTAINED:
            sub_0202C4A0(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_USED_CUT:
        case LOCATION_EVENT_FLEW_TO_LOCATION:
        case LOCATION_EVENT_USED_SURF:
        case LOCATION_EVENT_USED_STRENGTH:
        case LOCATION_EVENT_USED_FLASH:
        case LOCATION_EVENT_USED_DEFOG:
        case LOCATION_EVENT_USED_ROCK_SMASH:
        case LOCATION_EVENT_USED_WATERFALL:
        case LOCATION_EVENT_USED_ROCK_CLIMB:
        case LOCATION_EVENT_USED_DIG:
        case LOCATION_EVENT_LURED_POKEMON:
        case LOCATION_EVENT_WARPED_TO_LOCATION:
        case LOCATION_EVENT_USED_SOFTBOILED:
        case LOCATION_EVENT_USED_MILK_DRINK:
            sub_0202C4AC(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
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

static void sub_0202C3D0(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    u32 i;

    for (i = 0; i < MAX_JOURNAL_ONLINE_EVENTS; i++) {
        memset(&journalEntryOnlineEvent[i], 0, sizeof(JournalEntryOnlineEvent));

        switch (journalEntry->onlineEvents[i][0]) {
        case ONLINE_EVENT_SINGLE_BATTLE:
        case ONLINE_EVENT_DOUBLE_BATTLE:
        case ONLINE_EVENT_MULTI_BATTLE:
        case ONLINE_EVENT_MIX_SINGLE_BATTLE:
        case ONLINE_EVENT_MIX_MULTI_BATTLE:
        case ONLINE_EVENT_UNION_BATTLE:
            sub_0202C4B8(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_GREETED_IN_UNION_ROOM:
        case ONLINE_EVENT_CHATTED_IN_PLAZA:
        case ONLINE_EVENT_GOT_TAP_TOY:
            sub_0202C528(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_GOT_POKEMON_FROM_TRADE:
        case ONLINE_EVENT_GOT_POKEMON_IN_FRIEND_TRADE:
        case ONLINE_EVENT_GOT_POKEMON_GTS:
            sub_0202C54C(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_DREW_PICTURES:
        case ONLINE_EVENT_CHATTED_WITH_OTHERS:
        case ONLINE_EVENT_MIXED_RECORDS:
        case ONLINE_EVENT_MADE_POFFINS:
        case ONLINE_EVENT_BATTLE_ROOM:
        case ONLINE_EVENT_SPIN_TRADE:
        case ONLINE_EVENT_WATCHED_BATTLE_VIDEOS:
        case ONLINE_EVENT_CHECKED_RANKINGS:
        case ONLINE_EVENT_CHECKED_DRESS_UP_DATA:
        case ONLINE_EVENT_CHECKED_BOX_DATA:
        case ONLINE_EVENT_PLAYED_WITH_FOOTPRINT_STAMP:
        case ONLINE_EVENT_VIEWED_PLAZA_VISITOR_PROFILES:
        case ONLINE_EVENT_READ_PLAZA_NEWS:
        case ONLINE_EVENT_JOINED_PARADE:
        case ONLINE_EVENT_WIFI_CLUB:
            sub_0202C5A4(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_PLACED_IN_CONTEST:
        case ONLINE_EVENT_PLAZA_MINIGAME:
            sub_0202C5AC(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        }
    }
}

static void sub_0202C474(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = (param0 & 0x3f);
}

static void sub_0202C47C(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = (param0 & 0x3f);
    journalEntryLocationEvent->trainerID = (param0 >> 6) & 0x3ff;
    journalEntryLocationEvent->locationID = (param0 >> 16) & 0xffff;
}

static void sub_0202C494(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = (param0 & 0x3f);
    journalEntryLocationEvent->locationID = (param0 >> 16) & 0xffff;
}

static void sub_0202C4A0(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = (param0 & 0x3f);
    journalEntryLocationEvent->item = (param0 >> 16) & 0xffff;
}

static void sub_0202C4AC(u32 param0, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = (param0 & 0x3f);
    journalEntryLocationEvent->locationID = (param0 >> 16) & 0xffff;
}

static void sub_0202C4B8(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = param0[0];
    journalEntryOnlineEvent->result = (param0[1] >> 2) & 0x1f;
    journalEntryOnlineEvent->unused1 = (param0[1] >> 1) & 1;
    journalEntryOnlineEvent->unused2 = param0[1] & 1;

    sub_0202BF94((u16 *)&param0[2], journalEntryOnlineEvent->playerName1, 8);
    sub_0202BF94((u16 *)&param0[18], journalEntryOnlineEvent->playerName2, 8);
}

static void sub_0202C528(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = param0[0];
    journalEntryOnlineEvent->unused1 = param0[1];

    sub_0202BF94((u16 *)&param0[2], journalEntryOnlineEvent->playerName1, 8);
}

static void sub_0202C54C(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = param0[0];
    journalEntryOnlineEvent->unused1 = (param0[1] >> 2) & 1;
    journalEntryOnlineEvent->unused3 = param0[1] & 3;

    sub_0202BF94((u16 *)&param0[2], journalEntryOnlineEvent->playerName1, 8);
    sub_0202BF94((u16 *)&param0[18], journalEntryOnlineEvent->pokemonName, 12);
}

static void sub_0202C5A4(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = param0[0];
}

static void sub_0202C5AC(u8 *param0, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = param0[0];
    journalEntryOnlineEvent->result = param0[1];
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
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
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
    JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
}

void sub_0202C720(JournalEntry *journalEntry, u16 mapID, u16 trainerID, u32 heapID)
{
    void *data;
    u8 trainerType = JournalEntry_TrainerType(trainerID);

    if (trainerType < 8) {
        data = sub_0202BD58(trainerType, trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
    } else if (trainerType == 8) {
        data = sub_0202BD70(trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
    } else if (trainerType == 9) {
        data = sub_0202BD84(trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
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

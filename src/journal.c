#include "journal.h"

#include <nitro.h>
#include <string.h>

#include "consts/badges.h"
#include "consts/journal.h"
#include "consts/map.h"

#include "heap.h"
#include "map_header.h"
#include "play_time.h"
#include "rtc.h"
#include "savedata.h"
#include "trainer_info.h"

#include "res/text/gmm/message_bank_location_names.h"
#include "res/trainers/trdata.naix"

#define LOCATION_EVENT(locationID, trainerID, eventType) ((locationID << 16) | ((trainerID & 0x3ff) << 6) | (eventType & 0x3f))

#define LOCATION_EVENT_TYPE(locationEvent)        (locationEvent & 0x3f)
#define LOCATION_EVENT_TRAINER_ID(locationEvent)  ((locationEvent >> 6) & 0x3ff)
#define LOCATION_EVENT_LOCATION_ID(locationEvent) ((locationEvent >> 16) & 0xffff)
#define LOCATION_EVENT_ITEM(locationEvent)        ((locationEvent >> 16) & 0xffff)

#define MAX_JOURNAL_ENTRIES 10

#define CHAR_NONE 0xffff

#define GYM_NONE 0xff

#define TRAINER_TYPE_ELITE_FOUR 8
#define TRAINER_TYPE_CHAMPION   9
#define TRAINER_TYPE_STANDARD   10

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
static void JournalEntry_SaveLocationEvent(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon);
static void JournalEntry_SaveTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer);
static void JournalEntry_SaveOnlineEvent(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static u32 *JournalEntry_GetEmptyLocationEvent(u32 *locationEvents);
static u8 *JournalEntry_GetEmptyOnlineEvent(JournalEntry *journalEntry);
static void JournalEntry_SaveLocationEventMisc(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveLocationEventChampion(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveLocationEventEliteFour(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveLocationEventGym(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveLocationEventTravel(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveLocationEventItem(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveLocationEventMove(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_SaveOnlineEventBattle(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_SaveOnlineEventInteraction(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_SaveOnlineEventTrade(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_SaveOnlineEventMisc(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_SaveOnlineEventMinigame(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_StringCopy(const u16 *src, u16 *dst, u32 strLength);
static void JournalEntry_GetTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle);
static void JournalEntry_GetLocationEvent(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetMon(JournalEntry *journalEntry, JournalEntryMon *journalEntryMon);
static void JournalEntry_GetTrainer(JournalEntry *journalEntry, JournalEntryTrainer *journalEntryTrainer);
static void JournalEntry_GetOnlineEvent(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_GetLocationEventMisc(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetLocationEventTrainer(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetLocationEventTravel(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetLocationEventItem(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetLocationEventMove(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent);
static void JournalEntry_GetOnlineEventBattle(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_GetOnlineEventInteraction(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_GetOnlineEventTrade(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_GetOnlineEventMisc(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static void JournalEntry_GetOnlineEventMinigame(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent);
static u8 JournalEntry_GetGymTooTough(TrainerInfo *trainerInfo, u32 mapID);
static u8 JournalEntry_TrainerType(u32 trainerID);

static const MapInfo sMapsInfo[] = {
    { location_names_00090, 0x1 },
    { location_names_00091, 0x0 },
    { location_names_00092, 0x1 },
    { location_names_00093, 0x1 },
    { location_names_00094, 0x0 },
    { location_names_00095, 0x1 },
    { location_names_00096, 0x1 },
    { location_names_00097, 0x1 },
    { location_names_00098, 0x1 },
    { location_names_00099, 0x0 },
    { location_names_00100, 0x1 },
    { location_names_00101, 0x0 },
    { location_names_00102, 0x1 },
    { location_names_00071, 0x0 },
    { location_names_00103, 0x0 },
    { location_names_00064, 0x0 },
    { location_names_00104, 0x0 },
    { location_names_00105, 0x1 },
    { location_names_00080, 0x1 },
    { location_names_00106, 0x0 },
    { location_names_00107, 0x1 },
    { location_names_00108, 0x0 },
    { location_names_00109, 0x0 },
    { location_names_00110, 0x0 },
    { location_names_00047, 0x0 },
    { location_names_00049, 0x0 },
    { location_names_00070, 0x0 }
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
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_JOURNAL);
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
            JournalEntry_SaveLocationEvent(journalEntry, data);
            break;
        case JOURNAL_MON:
            JournalEntry_SaveMon(journalEntry, data);
            break;
        case JOURNAL_TRAINER:
            JournalEntry_SaveTrainer(journalEntry, data);
            break;
        case JOURNAL_ONLINE_EVENT:
            JournalEntry_SaveOnlineEvent(journalEntry, data);
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

static void JournalEntry_SaveLocationEvent(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    switch (journalEntryLocationEvent->eventType) {
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
        JournalEntry_SaveLocationEventMisc(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case LOCATION_EVENT_GYM_WAS_TOO_TOUGH:
    case LOCATION_EVENT_BEAT_GYM_LEADER:
        JournalEntry_SaveLocationEventGym(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER:
        JournalEntry_SaveLocationEventEliteFour(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case LOCATION_EVENT_BEAT_CHAMPION:
        JournalEntry_SaveLocationEventChampion(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case LOCATION_EVENT_ARRIVED_IN_LOCATION:
    case LOCATION_EVENT_LEFT_CAVE:
    case LOCATION_EVENT_LEFT_BUILDING:
        JournalEntry_SaveLocationEventTravel(journalEntry->locationEvents, journalEntryLocationEvent);
        break;
    case LOCATION_EVENT_ITEM_WAS_OBTAINED:
        JournalEntry_SaveLocationEventItem(journalEntry->locationEvents, journalEntryLocationEvent);
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
        JournalEntry_SaveLocationEventMove(journalEntry->locationEvents, journalEntryLocationEvent);
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

static void JournalEntry_SaveOnlineEvent(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    u8 *onlineEvent = JournalEntry_GetEmptyOnlineEvent(journalEntry);

    switch (journalEntryOnlineEvent->eventType) {
    case ONLINE_EVENT_SINGLE_BATTLE:
    case ONLINE_EVENT_DOUBLE_BATTLE:
    case ONLINE_EVENT_MULTI_BATTLE:
    case ONLINE_EVENT_MIX_SINGLE_BATTLE:
    case ONLINE_EVENT_MIX_MULTI_BATTLE:
    case ONLINE_EVENT_UNION_BATTLE:
        JournalEntry_SaveOnlineEventBattle(onlineEvent, journalEntryOnlineEvent);
        break;
    case ONLINE_EVENT_GREETED_IN_UNION_ROOM:
    case ONLINE_EVENT_CHATTED_IN_PLAZA:
    case ONLINE_EVENT_GOT_TAP_TOY:
        JournalEntry_SaveOnlineEventInteraction(onlineEvent, journalEntryOnlineEvent);
        break;
    case ONLINE_EVENT_GOT_POKEMON_FROM_TRADE:
    case ONLINE_EVENT_GOT_POKEMON_IN_FRIEND_TRADE:
    case ONLINE_EVENT_GOT_POKEMON_GTS:
        JournalEntry_SaveOnlineEventTrade(onlineEvent, journalEntryOnlineEvent);
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
        JournalEntry_SaveOnlineEventMisc(journalEntry, journalEntryOnlineEvent);
        break;
    case ONLINE_EVENT_PLACED_IN_CONTEST:
    case ONLINE_EVENT_PLAZA_MINIGAME:
        JournalEntry_SaveOnlineEventMinigame(onlineEvent, journalEntryOnlineEvent);
        break;
    }
}

static u32 *JournalEntry_GetEmptyLocationEvent(u32 *locationEvents)
{
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (LOCATION_EVENT_TYPE(locationEvents[i]) == LOCATION_EVENT_NONE) {
            return &locationEvents[i];
        }
    }

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS - 1; i++) {
        locationEvents[i] = locationEvents[i + 1];
    }

    locationEvents[i] = 0;

    return &locationEvents[i];
}

static u8 *JournalEntry_GetEmptyOnlineEvent(JournalEntry *journalEntry)
{
    u32 i;

    for (i = 0; i < MAX_JOURNAL_ONLINE_EVENTS; i++) {
        if (journalEntry->onlineEvents[i][0] == ONLINE_EVENT_NONE) {
            return &journalEntry->onlineEvents[i][0];
        }
    }

    for (i = 0; i < MAX_JOURNAL_ONLINE_EVENTS - 1; i++) {
        memcpy(&journalEntry->onlineEvents[i][0], &journalEntry->onlineEvents[i + 1][0], 42);
    }

    memset(&journalEntry->onlineEvents[i][0], 0, 42);

    return &journalEntry->onlineEvents[i][0];
}

static void JournalEntry_SaveLocationEventMisc(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent;
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (locationEvents[i] == 0) {
            break;
        }
    }

    if (i != 0 && LOCATION_EVENT_TYPE(locationEvents[i - 1]) == journalEntryLocationEvent->eventType) {
        return;
    }

    locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(0, 0, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveLocationEventChampion(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(journalEntryLocationEvent->locationID, journalEntryLocationEvent->trainerID, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveLocationEventEliteFour(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent = NULL;
    u16 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (LOCATION_EVENT_TYPE(locationEvents[i]) == LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER) {
            locationEvents[i] = 0;

            for (i = i; i < MAX_JOURNAL_LOCATION_EVENTS - 1; i++) {
                locationEvents[i] = locationEvents[i + 1];
                locationEvents[i + 1] = 0;
            }

            break;
        }
    }

    locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(journalEntryLocationEvent->locationID, journalEntryLocationEvent->trainerID, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveLocationEventGym(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent = NULL;
    u16 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (LOCATION_EVENT_TYPE(locationEvents[i]) == LOCATION_EVENT_GYM_WAS_TOO_TOUGH
            && LOCATION_EVENT_LOCATION_ID(locationEvents[i]) == journalEntryLocationEvent->locationID) {
            locationEvents[i] = 0;

            for (i = i; i < MAX_JOURNAL_LOCATION_EVENTS - 1; i++) {
                locationEvents[i] = locationEvents[i + 1];
                locationEvents[i + 1] = 0;
            }
            break;
        }
    }

    locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(journalEntryLocationEvent->locationID, journalEntryLocationEvent->trainerID, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveLocationEventTravel(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent;
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (locationEvents[i] == 0) {
            break;
        }
    }

    if (i != 0
        && LOCATION_EVENT_TYPE(locationEvents[i - 1]) == journalEntryLocationEvent->eventType
        && (locationEvents[i - 1] >> 16) == journalEntryLocationEvent->locationID) {
        return;
    }

    locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(journalEntryLocationEvent->locationID, 0, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveLocationEventItem(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent;
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (locationEvents[i] == 0) {
            break;
        }
    }

    if (i != 0
        && LOCATION_EVENT_TYPE(locationEvents[i - 1]) == journalEntryLocationEvent->eventType
        && (locationEvents[i - 1] >> 16) == journalEntryLocationEvent->item) {
        return;
    }

    locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(journalEntryLocationEvent->item, 0, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveLocationEventMove(u32 *locationEvents, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 *locationEvent;
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        if (locationEvents[i] == 0) {
            break;
        }
    }

    if (i != 0
        && LOCATION_EVENT_TYPE(locationEvents[i - 1]) == journalEntryLocationEvent->eventType
        && (locationEvents[i - 1] >> 16) == journalEntryLocationEvent->locationID) {
        return;
    }

    locationEvent = JournalEntry_GetEmptyLocationEvent(locationEvents);
    *locationEvent = LOCATION_EVENT(journalEntryLocationEvent->locationID, 0, journalEntryLocationEvent->eventType);
}

static void JournalEntry_SaveOnlineEventBattle(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    onlineEvent[0] = journalEntryOnlineEvent->eventType;
    onlineEvent[1] = (journalEntryOnlineEvent->result << 2) | (journalEntryOnlineEvent->unused1 << 1) | (journalEntryOnlineEvent->unused2);
    JournalEntry_StringCopy(journalEntryOnlineEvent->playerName1, (u16 *)&onlineEvent[2], TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy(journalEntryOnlineEvent->playerName2, (u16 *)&onlineEvent[18], TRAINER_NAME_LEN + 1);
}

static void JournalEntry_SaveOnlineEventInteraction(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    onlineEvent[0] = journalEntryOnlineEvent->eventType;
    onlineEvent[1] = journalEntryOnlineEvent->unused1;

    JournalEntry_StringCopy(journalEntryOnlineEvent->playerName1, (u16 *)&onlineEvent[2], TRAINER_NAME_LEN + 1);
}

static void JournalEntry_SaveOnlineEventTrade(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    onlineEvent[0] = journalEntryOnlineEvent->eventType;
    onlineEvent[1] = (journalEntryOnlineEvent->unused1 << 2) | (journalEntryOnlineEvent->unused3);

    JournalEntry_StringCopy(journalEntryOnlineEvent->playerName1, (u16 *)&onlineEvent[2], TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy(journalEntryOnlineEvent->pokemonName, (u16 *)&onlineEvent[18], 12);
}

static void JournalEntry_SaveOnlineEventMisc(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    u32 i;
    u8 *onlineEvent;

    for (i = 0; i < MAX_JOURNAL_ONLINE_EVENTS; i++) {
        if (journalEntry->onlineEvents[i][0] == ONLINE_EVENT_NONE) {
            break;
        }
    }

    if (i != 0 && journalEntry->onlineEvents[i - 1][0] == journalEntryOnlineEvent->eventType) {
        return;
    }

    onlineEvent = JournalEntry_GetEmptyOnlineEvent(journalEntry);
    onlineEvent[0] = journalEntryOnlineEvent->eventType;
}

static void JournalEntry_SaveOnlineEventMinigame(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    onlineEvent[0] = journalEntryOnlineEvent->eventType;
    onlineEvent[1] = journalEntryOnlineEvent->result;
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

static JournalEntryLocationEvent *JournalEntry_CreateLocationEvent(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = Heap_AllocFromHeap(heapID, sizeof(JournalEntryLocationEvent));

    memset(journalEntryLocationEvent, 0, sizeof(JournalEntryLocationEvent));
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventRestedAtHome(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_RESTED_AT_HOME;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventLeftResearchLab(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_LEFT_RESEARCH_LAB;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventUsedPCBox(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_USED_PC_BOX;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventShoppedAtMart(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_SHOPPED_AT_MART;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventLotsOfShopping(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_LOTS_OF_SHOPPING;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventSoldALittle(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_SOLD_A_LITTLE;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventSoldALot(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_SOLD_A_LOT;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventBusinessAtMart(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_BUSINESS_AT_MART;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventGymTooTough(u16 gymTooTough, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_GYM_WAS_TOO_TOUGH;
    journalEntryLocationEvent->locationID = gymTooTough;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventGymLeader(u16 gymDefeated, u16 trainerID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_BEAT_GYM_LEADER;
    journalEntryLocationEvent->locationID = gymDefeated;
    journalEntryLocationEvent->trainerID = trainerID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventEliteFour(u16 trainerID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER;
    journalEntryLocationEvent->trainerID = trainerID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventChampion(u16 trainerID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_BEAT_CHAMPION;
    journalEntryLocationEvent->trainerID = trainerID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventArrivedInLocation(u16 mapID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_ARRIVED_IN_LOCATION;
    journalEntryLocationEvent->locationID = mapID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventLeftCave(u16 mapLabelTextID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_LEFT_CAVE;
    journalEntryLocationEvent->locationID = mapLabelTextID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventLeftBuilding(u16 mapLabelTextID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_LEFT_BUILDING;
    journalEntryLocationEvent->locationID = mapLabelTextID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventGameCorner(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_GAME_CORNER;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventSafariGame(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_SAFARI_GAME;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventObtainedItem(u16 item, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_ITEM_WAS_OBTAINED;
    journalEntryLocationEvent->item = item;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventUsedMove(u8 moveIndex, u16 mapID, u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_USED_CUT + moveIndex;
    journalEntryLocationEvent->locationID = mapID;

    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventDugUnderground(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_DUG_UNDERGROUND;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventBuiltSecretBase(u32 heapID)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = LOCATION_EVENT_BUILT_SECRET_BASE;
    return journalEntryLocationEvent;
}

void *JournalEntry_CreateEventBattleFacility(u32 heapID, u32 eventType)
{
    JournalEntryLocationEvent *journalEntryLocationEvent = JournalEntry_CreateLocationEvent(heapID);

    journalEntryLocationEvent->eventType = eventType;
    return journalEntryLocationEvent;
}

static JournalEntryMon *JournalEntry_CreateMon(u32 heapID)
{
    JournalEntryMon *journalEntryMon = Heap_AllocFromHeap(heapID, sizeof(JournalEntryMon));

    memset(journalEntryMon, 0, sizeof(JournalEntryMon));
    return journalEntryMon;
}

void *JournalEntry_CreateEventMonCaught(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, u32 heapID)
{
    JournalEntryMon *journalEntryMon = JournalEntry_CreateMon(heapID);
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

void *JournalEntry_CreateEventMonDefeated(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, u32 heapID)
{
    JournalEntryMon *journalEntryMon = JournalEntry_CreateMon(heapID);
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

void *JournalEntry_CreateEventStandardTrainer(u16 mapID, u16 trainerID, u32 heapID)
{
    JournalEntryTrainer *journalEntryTrainer = Heap_AllocFromHeap(heapID, sizeof(JournalEntryTrainer));

    journalEntryTrainer->standard = 1;
    journalEntryTrainer->mapID = mapID;
    journalEntryTrainer->trainerID = trainerID;

    return journalEntryTrainer;
}

static JournalEntryOnlineEvent *JournalEntry_CreateOnlineEvent(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = Heap_AllocFromHeap(heapID, sizeof(JournalEntryOnlineEvent));

    memset(journalEntryOnlineEvent, 0, sizeof(JournalEntryOnlineEvent));
    return journalEntryOnlineEvent;
}

static void JournalEntry_StringCopy(const u16 *src, u16 *dst, u32 strLength)
{
    u32 i;

    for (i = 0; i < strLength; i++) {
        dst[i] = CHAR_NONE;
    }

    for (i = 0; i < strLength; i++) {
        if (src[i] == CHAR_NONE) {
            break;
        }

        dst[i] = src[i];
    }
}

void *JournalEntry_CreateEventSingleBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_SINGLE_BATTLE;
    journalEntryOnlineEvent->result = battleResult;
    journalEntryOnlineEvent->unused1 = opponentGender;

    JournalEntry_StringCopy(opponentName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventDoubleBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_DOUBLE_BATTLE;
    journalEntryOnlineEvent->result = battleResult;
    journalEntryOnlineEvent->unused1 = opponentGender;

    JournalEntry_StringCopy(opponentName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventMultiBattle(u16 *opponentName1, u16 *opponentName2, u8 opponentGender1, u8 opponentGender2, u8 battleResult, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_MULTI_BATTLE;
    journalEntryOnlineEvent->result = battleResult;
    journalEntryOnlineEvent->unused1 = opponentGender1;
    journalEntryOnlineEvent->unused2 = opponentGender2;

    JournalEntry_StringCopy(opponentName1, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy(opponentName2, journalEntryOnlineEvent->playerName2, TRAINER_NAME_LEN + 1);

    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventMixSingleBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_MIX_SINGLE_BATTLE;
    journalEntryOnlineEvent->result = battleResult;
    journalEntryOnlineEvent->unused1 = opponentGender;

    JournalEntry_StringCopy(opponentName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventGreetedInUnionRoom(u16 *playerName, u8 playerGender, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_GREETED_IN_UNION_ROOM;
    journalEntryOnlineEvent->unused1 = playerGender;

    JournalEntry_StringCopy(playerName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventGotPokemonFromTrade(u16 *otName, u8 otGender, u16 *pokemonName, u8 pokemonGender, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_GOT_POKEMON_FROM_TRADE;
    journalEntryOnlineEvent->unused1 = otGender;
    journalEntryOnlineEvent->unused3 = pokemonGender;

    JournalEntry_StringCopy(otName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy(pokemonName, journalEntryOnlineEvent->pokemonName, 12);

    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventDrewPictures(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_DREW_PICTURES;
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventUnionBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_UNION_BATTLE;
    journalEntryOnlineEvent->result = battleResult;
    journalEntryOnlineEvent->unused1 = opponentGender;

    JournalEntry_StringCopy(opponentName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventMixedRecords(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_MIXED_RECORDS;
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventPlacedInContest(u8 placement, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_PLACED_IN_CONTEST;
    journalEntryOnlineEvent->result = placement;

    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventMadePoffins(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_MADE_POFFINS;
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventGotPokemonGTS(u16 *otName, u8 otGender, u16 *pokemonName, u8 pokemonGender, u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_GOT_POKEMON_GTS;
    journalEntryOnlineEvent->unused1 = otGender;
    journalEntryOnlineEvent->unused3 = pokemonGender;

    JournalEntry_StringCopy(otName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy(pokemonName, journalEntryOnlineEvent->pokemonName, 12);

    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventBattleRoom(u32 heapID)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = ONLINE_EVENT_BATTLE_ROOM;
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventMisc(u32 heapID, u32 eventType)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = eventType;
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventInteraction(const u16 *playerName, u8 playerGender, u32 heapID, u32 eventType)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = eventType;
    journalEntryOnlineEvent->unused1 = playerGender;

    JournalEntry_StringCopy(playerName, journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    return journalEntryOnlineEvent;
}

void *JournalEntry_CreateEventPlazaMinigame(int minigame, u32 heapID, u32 eventType)
{
    JournalEntryOnlineEvent *journalEntryOnlineEvent = JournalEntry_CreateOnlineEvent(heapID);

    journalEntryOnlineEvent->eventType = eventType;
    journalEntryOnlineEvent->result = minigame;

    return journalEntryOnlineEvent;
}

void JournalEntry_GetData(JournalEntry *journalEntry, void *dest, u8 dataType, u8 page)
{
    switch (dataType) {
    case JOURNAL_TITLE:
        JournalEntry_GetTitle(&journalEntry[page], dest);
        break;
    case JOURNAL_LOCATION:
        JournalEntry_GetLocationEvent(&journalEntry[page], dest);
        break;
    case JOURNAL_MON:
        JournalEntry_GetMon(&journalEntry[page], dest);
        break;
    case JOURNAL_TRAINER:
        JournalEntry_GetTrainer(&journalEntry[page], dest);
        break;
    case JOURNAL_ONLINE_EVENT:
        JournalEntry_GetOnlineEvent(&journalEntry[page], dest);
        break;
    }
}

static void JournalEntry_GetTitle(JournalEntry *journalEntry, JournalEntryTitle *journalEntryTitle)
{
    *journalEntryTitle = journalEntry->title;
}

static void JournalEntry_GetLocationEvent(JournalEntry *journalEntry, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    u32 i;

    for (i = 0; i < MAX_JOURNAL_LOCATION_EVENTS; i++) {
        memset(&journalEntryLocationEvent[i], 0, sizeof(JournalEntryLocationEvent));

        switch (LOCATION_EVENT_TYPE(journalEntry->locationEvents[i])) {
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
            JournalEntry_GetLocationEventMisc(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_GYM_WAS_TOO_TOUGH:
        case LOCATION_EVENT_BEAT_GYM_LEADER:
        case LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER:
        case LOCATION_EVENT_BEAT_CHAMPION:
            JournalEntry_GetLocationEventTrainer(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_ARRIVED_IN_LOCATION:
        case LOCATION_EVENT_LEFT_CAVE:
        case LOCATION_EVENT_LEFT_BUILDING:
            JournalEntry_GetLocationEventTravel(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
            break;
        case LOCATION_EVENT_ITEM_WAS_OBTAINED:
            JournalEntry_GetLocationEventItem(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
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
            JournalEntry_GetLocationEventMove(journalEntry->locationEvents[i], &journalEntryLocationEvent[i]);
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

static void JournalEntry_GetOnlineEvent(JournalEntry *journalEntry, JournalEntryOnlineEvent *journalEntryOnlineEvent)
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
            JournalEntry_GetOnlineEventBattle(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_GREETED_IN_UNION_ROOM:
        case ONLINE_EVENT_CHATTED_IN_PLAZA:
        case ONLINE_EVENT_GOT_TAP_TOY:
            JournalEntry_GetOnlineEventInteraction(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_GOT_POKEMON_FROM_TRADE:
        case ONLINE_EVENT_GOT_POKEMON_IN_FRIEND_TRADE:
        case ONLINE_EVENT_GOT_POKEMON_GTS:
            JournalEntry_GetOnlineEventTrade(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
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
            JournalEntry_GetOnlineEventMisc(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        case ONLINE_EVENT_PLACED_IN_CONTEST:
        case ONLINE_EVENT_PLAZA_MINIGAME:
            JournalEntry_GetOnlineEventMinigame(&journalEntry->onlineEvents[i][0], &journalEntryOnlineEvent[i]);
            break;
        }
    }
}

static void JournalEntry_GetLocationEventMisc(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = LOCATION_EVENT_TYPE(locationEvent);
}

static void JournalEntry_GetLocationEventTrainer(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = LOCATION_EVENT_TYPE(locationEvent);
    journalEntryLocationEvent->trainerID = LOCATION_EVENT_TRAINER_ID(locationEvent);
    journalEntryLocationEvent->locationID = LOCATION_EVENT_LOCATION_ID(locationEvent);
}

static void JournalEntry_GetLocationEventTravel(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = LOCATION_EVENT_TYPE(locationEvent);
    journalEntryLocationEvent->locationID = LOCATION_EVENT_LOCATION_ID(locationEvent);
}

static void JournalEntry_GetLocationEventItem(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = LOCATION_EVENT_TYPE(locationEvent);
    journalEntryLocationEvent->item = LOCATION_EVENT_ITEM(locationEvent);
}

static void JournalEntry_GetLocationEventMove(u32 locationEvent, JournalEntryLocationEvent *journalEntryLocationEvent)
{
    journalEntryLocationEvent->eventType = LOCATION_EVENT_TYPE(locationEvent);
    journalEntryLocationEvent->locationID = LOCATION_EVENT_LOCATION_ID(locationEvent);
}

static void JournalEntry_GetOnlineEventBattle(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = onlineEvent[0];
    journalEntryOnlineEvent->result = (onlineEvent[1] >> 2) & 0x1f;
    journalEntryOnlineEvent->unused1 = (onlineEvent[1] >> 1) & 1;
    journalEntryOnlineEvent->unused2 = onlineEvent[1] & 1;

    JournalEntry_StringCopy((u16 *)&onlineEvent[2], journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy((u16 *)&onlineEvent[18], journalEntryOnlineEvent->playerName2, TRAINER_NAME_LEN + 1);
}

static void JournalEntry_GetOnlineEventInteraction(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = onlineEvent[0];
    journalEntryOnlineEvent->unused1 = onlineEvent[1];

    JournalEntry_StringCopy((u16 *)&onlineEvent[2], journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
}

static void JournalEntry_GetOnlineEventTrade(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = onlineEvent[0];
    journalEntryOnlineEvent->unused1 = (onlineEvent[1] >> 2) & 1;
    journalEntryOnlineEvent->unused3 = onlineEvent[1] & 3;

    JournalEntry_StringCopy((u16 *)&onlineEvent[2], journalEntryOnlineEvent->playerName1, TRAINER_NAME_LEN + 1);
    JournalEntry_StringCopy((u16 *)&onlineEvent[18], journalEntryOnlineEvent->pokemonName, 12);
}

static void JournalEntry_GetOnlineEventMisc(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = onlineEvent[0];
}

static void JournalEntry_GetOnlineEventMinigame(u8 *onlineEvent, JournalEntryOnlineEvent *journalEntryOnlineEvent)
{
    journalEntryOnlineEvent->eventType = onlineEvent[0];
    journalEntryOnlineEvent->result = onlineEvent[1];
}

void JournalEntry_CreateAndSaveEventMapTransition(TrainerInfo *trainerInfo, JournalEntry *journalEntry, u32 currMapID, u32 prevMapID, u32 heapID)
{
    void *data = NULL;
    u32 i;

    if (MapHeader_IsCave(prevMapID) == TRUE) {
        if (MapHeader_IsOutdoors(currMapID) == TRUE) {
            data = JournalEntry_CreateEventLeftCave((u16)MapHeader_GetMapLabelTextID(prevMapID), heapID);
        }
    } else if (MapHeader_IsBuilding(prevMapID) == TRUE) {
        if (MapHeader_IsOutdoors(currMapID) == TRUE) {
            if (prevMapID == MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F) {
                data = JournalEntry_CreateEventRestedAtHome(heapID);
            } else if (prevMapID == MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB) {
                data = JournalEntry_CreateEventLeftResearchLab(heapID);
            } else {
                u32 mapLabelTextID = MapHeader_GetMapLabelTextID(prevMapID);

                for (i = 0; i < NELEMS(sMapsInfo); i++) {
                    if (mapLabelTextID != sMapsInfo[i].mapLabelTextID) {
                        continue;
                    }

                    data = JournalEntry_CreateEventLeftBuilding((u16)mapLabelTextID, heapID);
                }
            }
        }
    } else if (MapHeader_IsOutdoors(prevMapID) == TRUE) {
        if (MapHeader_IsBuilding(currMapID) == TRUE) {
            u8 gymTooTough = JournalEntry_GetGymTooTough(trainerInfo, currMapID);

            if (gymTooTough != GYM_NONE) {
                data = JournalEntry_CreateEventGymTooTough(gymTooTough, heapID);
            }
        }
    }

    if (data != NULL) {
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
    }
}

u32 sub_0202C6A4(u32 mapLabelTextID)
{
    u32 i;

    for (i = 0; i < NELEMS(sMapsInfo); i++) {
        if (mapLabelTextID != sMapsInfo[i].mapLabelTextID) {
            continue;
        }

        return sMapsInfo[i].unk_04;
    }

    return 0;
}

static u8 JournalEntry_GetGymTooTough(TrainerInfo *trainerInfo, u32 mapID)
{
    u8 i;

    for (i = 0; i < NELEMS(sGymsInfo); i++) {
        if (sGymsInfo[i].mapID == mapID) {
            if (TrainerInfo_HasBadge(trainerInfo, sGymsInfo[i].badge) == FALSE) {
                return i;
            }

            break;
        }
    }

    return GYM_NONE;
}

void JournalEntry_CreateAndSaveEventArrivedInLocation(JournalEntry *journalEntry, u32 mapID, u32 heapID)
{
    void *data = JournalEntry_CreateEventArrivedInLocation((u16)mapID, heapID);
    JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
}

void JournalEntry_CreateAndSaveEventTrainer(JournalEntry *journalEntry, u16 mapID, u16 trainerID, u32 heapID)
{
    void *data;
    u8 trainerType = JournalEntry_TrainerType(trainerID);

    if (trainerType < TRAINER_TYPE_ELITE_FOUR) {
        data = JournalEntry_CreateEventGymLeader(trainerType, trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
    } else if (trainerType == TRAINER_TYPE_ELITE_FOUR) {
        data = JournalEntry_CreateEventEliteFour(trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
    } else if (trainerType == TRAINER_TYPE_CHAMPION) {
        data = JournalEntry_CreateEventChampion(trainerID, heapID);
        JournalEntry_SaveData(journalEntry, data, JOURNAL_LOCATION);
    } else {
        data = JournalEntry_CreateEventStandardTrainer(mapID, trainerID, heapID);
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
        return TRAINER_TYPE_ELITE_FOUR;
    }

    if (trainerID == trainer_champion_cynthia || trainerID == trainer_champion_cynthia_rematch) {
        return TRAINER_TYPE_CHAMPION;
    }

    return TRAINER_TYPE_STANDARD;
}

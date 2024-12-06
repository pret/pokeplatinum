#ifndef POKEPLATINUM_JOURNAL_H
#define POKEPLATINUM_JOURNAL_H

#include "play_time.h"
#include "savedata.h"
#include "trainer_info.h"

#define POKEMON_CAUGHT   1
#define POKEMON_DEFEATED 2

#define MAX_JOURNAL_LOCATION_EVENTS 4
#define MAX_JOURNAL_ONLINE_EVENTS   2

enum JournalDataType {
    JOURNAL_TITLE = 0,
    JOURNAL_LOCATION,
    JOURNAL_MON,
    JOURNAL_TRAINER,
    JOURNAL_ONLINE_EVENT,
};

enum JournalLocationEventType {
    LOCATION_EVENT_NONE = 0,
    LOCATION_EVENT_RESTED_AT_HOME,
    LOCATION_EVENT_LEFT_RESEARCH_LAB,
    LOCATION_EVENT_USED_PC_BOX,
    LOCATION_EVENT_SHOPPED_AT_MART,
    LOCATION_EVENT_LOTS_OF_SHOPPING,
    LOCATION_EVENT_SOLD_A_LITTLE,
    LOCATION_EVENT_SOLD_A_LOT,
    LOCATION_EVENT_BUSINESS_AT_MART,
    LOCATION_EVENT_GYM_WAS_TOO_TOUGH,
    LOCATION_EVENT_BEAT_GYM_LEADER,
    LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER,
    LOCATION_EVENT_BEAT_CHAMPION,
    LOCATION_EVENT_ARRIVED_IN_LOCATION,
    LOCATION_EVENT_LEFT_OUTSIDE_LOCATION,
    LOCATION_EVENT_LEFT_INSIDE_LOCATION,
    LOCATION_EVENT_GAME_CORNER,
    LOCATION_EVENT_SAFARI_GAME,
    LOCATION_EVENT_ITEM_WAS_OBTAINED,
    LOCATION_EVENT_USED_CUT,
    LOCATION_EVENT_FLEW_TO_LOCATION,
    LOCATION_EVENT_USED_SURF,
    LOCATION_EVENT_USED_STRENGTH,
    LOCATION_EVENT_USED_DEFOG,
    LOCATION_EVENT_USED_ROCK_SMASH,
    LOCATION_EVENT_USED_WATERFALL,
    LOCATION_EVENT_USED_ROCK_CLIMB,
    LOCATION_EVENT_USED_FLASH,
    LOCATION_EVENT_WARPED_TO_LOCATION,
    LOCATION_EVENT_USED_DIG,
    LOCATION_EVENT_LURED_POKEMON,
    LOCATION_EVENT_UNUSED,
    LOCATION_EVENT_USED_MILK_DRINK,
    LOCATION_EVENT_USED_SOFTBOILED,
    LOCATION_EVENT_DUG_UNDERGROUND,
    LOCATION_EVENT_BUILT_SECRET_BASE,
    LOCATION_EVENT_BATTLE_TOWER,
    LOCATION_EVENT_BATTLE_FACTORY,
    LOCATION_EVENT_BATTLE_CASTLE,
    LOCATION_EVENT_BATTLE_HALL,
    LOCATION_EVENT_BATTLE_ARCADE,
};

enum JournalOnlineEventType {
    ONLINE_EVENT_NONE = 0,
    ONLINE_EVENT_SINGLE_BATTLE,
    ONLINE_EVENT_DOUBLE_BATTLE,
    ONLINE_EVENT_MULTI_BATTLE,
    ONLINE_EVENT_MIX_SINGLE_BATTLE,
    ONLINE_EVENT_MIX_MULTI_BATTLE,
    ONLINE_EVENT_GREETED_IN_UNION_ROOM,
    ONLINE_EVENT_GOT_POKEMON_FROM_TRADE,
    ONLINE_EVENT_DREW_PICTURES,
    ONLINE_EVENT_GOT_POKEMON_IN_FRIEND_TRADE,
    ONLINE_EVENT_CHATTED_WITH_OTHERS,
    ONLINE_EVENT_UNION_BATTLE,
    ONLINE_EVENT_MIXED_RECORDS,
    ONLINE_EVENT_PLACED_IN_CONTEST,
    ONLINE_EVENT_MADE_POFFINS,
    ONLINE_EVENT_GOT_POKEMON_GTS,
    ONLINE_EVENT_BATTLE_ROOM,
    ONLINE_EVENT_SPIN_TRADE,
    ONLINE_EVENT_WATCHED_BATTLE_VIDEOS,
    ONLINE_EVENT_CHECKED_RANKINGS,
    ONLINE_EVENT_CHECKED_DRESS_UP_DATA,
    ONLINE_EVENT_CHECKED_BOX_DATA,
    ONLINE_EVENT_CHATTED_IN_PLAZA,
    ONLINE_EVENT_GOT_TAP_TOY,
    ONLINE_EVENT_PLAZA_MINIGAME,
    ONLINE_EVENT_PLAYED_WITH_FOOTPRINT_STAMP,
    ONLINE_EVENT_VIEWED_PLAZA_VISITOR_PROFILES,
    ONLINE_EVENT_READ_PLAZA_NEWS,
    ONLINE_EVENT_JOINED_PARADE,
    ONLINE_EVENT_WIFI_CLUB,
};

typedef struct {
    u32 year : 7;
    u32 month : 4;
    u32 week : 3;
    u32 day : 5;
    u32 mapID : 13;
} JournalEntryTitle;

typedef struct {
    u8 eventType;
    u8 padding_01;
    u16 locationID; // can either be a mapID or an index refering to a gym
    u16 trainerID;
    u16 item;
} JournalEntryLocationEvent;

typedef struct {
    u8 battleResult;
    u8 stringVariant : 2;
    u8 timeOfDay : 4;
    u8 gender : 2;
    u16 species;
} JournalEntryMon;

typedef struct {
    u16 initialized : 1;
    u16 trainerID : 15;
    u16 mapID;
} JournalEntryTrainer;

typedef struct {
    u8 eventType;
    u8 result : 4;
    u8 unused1 : 1;
    u8 unused2 : 1;
    u8 unused3 : 2;
    u16 playerName1[8];
    u16 playerName2[8];
    u16 pokemonName[12];
} JournalEntryOnlineEvent;

typedef struct {
    JournalEntryTitle title;
    u32 locationEvents[MAX_JOURNAL_LOCATION_EVENTS];
    JournalEntryMon mon;
    JournalEntryTrainer trainer;
    u8 onlineEvents[MAX_JOURNAL_ONLINE_EVENTS][42];
} JournalEntry;

int Journal_SaveSize(void);
void Journal_Init10(JournalEntry *journalEntry);
JournalEntry *SaveData_GetJournal(SaveData *saveData);
JournalEntry *Journal_GetSavedPage(JournalEntry *journalEntry, BOOL journalAcquired);
BOOL Journal_CheckOpenOnContinue(JournalEntry *journalEntry, BOOL journalAcquired);
void JournalEntry_SaveData(JournalEntry *journalEntry, void *data, u8 dataType);
void *JournalEntry_CreateTitle(u16 mapID, u32 heapID);
void *sub_0202BCE4(u32 heapID);
void *sub_0202BCF0(u32 heapID);
void *sub_0202BCFC(u32 heapID);
void *sub_0202BD08(u32 heapID);
void *sub_0202BD14(u32 heapID);
void *sub_0202BD20(u32 heapID);
void *sub_0202BD2C(u32 heapID);
void *sub_0202BD38(u32 heapID);
void *sub_0202BD44(u16 defeatedGym, u32 heapID);
void *sub_0202BD58(u16 trainerType, u16 trainerID, u32 heapID);
void *sub_0202BD70(u16 trainerID, u32 heapID);
void *sub_0202BD84(u16 trainerID, u32 heapID);
void *sub_0202BD98(u16 mapID, u32 heapID);
void *sub_0202BDAC(u16 mapLabelTextID, u32 heapID);
void *sub_0202BDC0(u16 mapLabelTextID, u32 heapID);
void *sub_0202BDD4(u32 heapID);
void *sub_0202BDE0(u32 heapID);
void *sub_0202BDEC(u16 param0, u32 heapID);
void *sub_0202BE00(u8 param0, u16 mapID, u32 heapID);
void *sub_0202BE14(u32 heapID);
void *sub_0202BE20(u32 heapID);
void *sub_0202BE2C(u32 heapID, u32 param1);
void *JournalEntry_CreateMonCaught(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, u32 heapID);
void *JournalEntry_CreateMonDefeated(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, u32 heapID);
void *JournalEntry_InitTrainer(u16 mapID, u16 trainerID, u32 heapID);
void *sub_0202BFCC(u16 *param0, u8 param1, u8 param2, u32 heapID);
void *sub_0202C00C(u16 *param0, u8 param1, u8 param2, u32 heapID);
void *sub_0202C04C(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u32 heapID);
void *sub_0202C0AC(u16 *param0, u8 param1, u8 param2, u32 heapID);
void *sub_0202C0EC(u16 *trainerName, u8 trainerGender, u32 heapID);
void *sub_0202C11C(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 heapID);
void *sub_0202C168(u32 heapID);
void *sub_0202C174(u16 *param0, u8 param1, u8 param2, u32 heapID);
void *sub_0202C1B4(u32 heapID);
void *sub_0202C1C0(u8 param0, u32 heapID);
void *sub_0202C1E0(u32 heapID);
void *sub_0202C1EC(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 heapID);
void *sub_0202C238(u32 heapID);
void *sub_0202C244(u32 heapID, u32 param1);
void *sub_0202C250(const u16 *param0, u8 param1, u32 heapID, u32 param3);
void *sub_0202C280(int param0, u32 heapID, u32 param2);
void JournalEntry_GetData(JournalEntry *journalEntry, void *dest, u8 dataType, u8 page);
void sub_0202C5C4(TrainerInfo *trainerInfo, JournalEntry *journalEntry, u32 currMapID, u32 prevMapID, u32 heapID);
u32 sub_0202C6A4(u32 param0);
void sub_0202C704(JournalEntry *journalEntry, u32 mapID, u32 heapID);
void sub_0202C720(JournalEntry *journalEntry, u16 mapID, u16 trainerID, u32 heapID);

#endif // POKEPLATINUM_JOURNAL_H

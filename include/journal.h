#ifndef POKEPLATINUM_JOURNAL_H
#define POKEPLATINUM_JOURNAL_H

#include "constants/heap.h"

#include "play_time.h"
#include "savedata.h"
#include "trainer_info.h"

#define MAX_JOURNAL_ENTRIES 10

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

typedef struct JournalEntryTitle {
    u32 year : 7;
    u32 month : 4;
    u32 week : 3;
    u32 day : 5;
    u32 mapID : 13;
} JournalEntryTitle;

typedef struct JournalEntryLocationEvent {
    u8 eventType;
    u8 padding_01;
    u16 locationID; // can be a mapID, a mapLabelTextID, or an index refering to a gym
    u16 trainerID;
    u16 item;
} JournalEntryLocationEvent;

typedef struct JournalEntryMon {
    u8 battleResult;
    u8 stringVariant : 2;
    u8 timeOfDay : 4;
    u8 gender : 2;
    u16 species;
} JournalEntryMon;

typedef struct JournalEntryTrainer {
    u16 standard : 1;
    u16 trainerID : 15;
    u16 mapID;
} JournalEntryTrainer;

typedef struct JournalEntryOnlineEvent {
    u8 eventType;
    u8 result : 4; // can be a battle result, the placement in a contest, or an index refering to a plaza minigame
    u8 unused1 : 1;
    u8 unused2 : 1;
    u8 unused3 : 2;
    u16 playerName1[TRAINER_NAME_LEN + 1];
    u16 playerName2[TRAINER_NAME_LEN + 1];
    u16 pokemonName[12];
} JournalEntryOnlineEvent;

typedef struct JournalEntry {
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
void *JournalEntry_CreateTitle(u16 mapID, enum HeapId heapID);
void *JournalEntry_CreateEventRestedAtHome(enum HeapId heapID);
void *JournalEntry_CreateEventLeftResearchLab(enum HeapId heapID);
void *JournalEntry_CreateEventUsedPCBox(enum HeapId heapID);
void *JournalEntry_CreateEventShoppedAtMart(enum HeapId heapID);
void *JournalEntry_CreateEventLotsOfShopping(enum HeapId heapID);
void *JournalEntry_CreateEventSoldALittle(enum HeapId heapID);
void *JournalEntry_CreateEventSoldALot(enum HeapId heapID);
void *JournalEntry_CreateEventBusinessAtMart(enum HeapId heapID);
void *JournalEntry_CreateEventGymTooTough(u16 defeatedGym, enum HeapId heapID);
void *JournalEntry_CreateEventGymLeader(u16 trainerType, u16 trainerID, enum HeapId heapID);
void *JournalEntry_CreateEventEliteFour(u16 trainerID, enum HeapId heapID);
void *JournalEntry_CreateEventChampion(u16 trainerID, enum HeapId heapID);
void *JournalEntry_CreateEventArrivedInLocation(u16 mapID, enum HeapId heapID);
void *JournalEntry_CreateEventLeftCave(u16 mapLabelTextID, enum HeapId heapID);
void *JournalEntry_CreateEventLeftBuilding(u16 mapLabelTextID, enum HeapId heapID);
void *JournalEntry_CreateEventGameCorner(enum HeapId heapID);
void *JournalEntry_CreateEventSafariGame(enum HeapId heapID);
void *JournalEntry_CreateEventObtainedItem(u16 item, enum HeapId heapID);
void *JournalEntry_CreateEventUsedMove(u8 moveIndex, u16 mapID, enum HeapId heapID);
void *JournalEntry_CreateEventDugUnderground(enum HeapId heapID);
void *JournalEntry_CreateEventBuiltSecretBase(enum HeapId heapID);
void *JournalEntry_CreateEventBattleFacility(enum HeapId heapID, u32 eventType);
void *JournalEntry_CreateEventMonCaught(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, enum HeapId heapID);
void *JournalEntry_CreateEventMonDefeated(const PlayTime *playTime, u16 species, u8 gender, u8 timeOfDay, enum HeapId heapID);
void *JournalEntry_CreateEventStandardTrainer(u16 mapID, u16 trainerID, enum HeapId heapID);
void *JournalEntry_CreateEventSingleBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, enum HeapId heapID);
void *JournalEntry_CreateEventDoubleBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, enum HeapId heapID);
void *JournalEntry_CreateEventMultiBattle(u16 *opponentName1, u16 *opponentName2, u8 opponentGender1, u8 opponentGender2, u8 battleResult, enum HeapId heapID);
void *JournalEntry_CreateEventMixSingleBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, enum HeapId heapID);
void *JournalEntry_CreateEventGreetedInUnionRoom(u16 *trainerName, u8 trainerGender, enum HeapId heapID);
void *JournalEntry_CreateEventGotPokemonFromTrade(u16 *otName, u8 otGender, u16 *pokemonName, u8 pokemonGender, enum HeapId heapID);
void *JournalEntry_CreateEventDrewPictures(enum HeapId heapID);
void *JournalEntry_CreateEventUnionBattle(u16 *opponentName, u8 opponentGender, u8 battleResult, enum HeapId heapID);
void *JournalEntry_CreateEventMixedRecords(enum HeapId heapID);
void *JournalEntry_CreateEventPlacedInContest(u8 placement, enum HeapId heapID);
void *JournalEntry_CreateEventMadePoffins(enum HeapId heapID);
void *JournalEntry_CreateEventGotPokemonGTS(u16 *otName, u8 otGender, u16 *pokemonName, u8 pokemonGender, enum HeapId heapID);
void *JournalEntry_CreateEventBattleRoom(enum HeapId heapID);
void *JournalEntry_CreateEventMisc(enum HeapId heapID, u32 eventType);
void *JournalEntry_CreateEventInteraction(const u16 *playerName, u8 playerGender, enum HeapId heapID, u32 eventType);
void *JournalEntry_CreateEventPlazaMinigame(int minigame, enum HeapId heapID, u32 eventType);
void JournalEntry_GetData(JournalEntry *journalEntry, void *dest, u8 dataType, u8 page);
void JournalEntry_CreateAndSaveEventMapTransition(TrainerInfo *trainerInfo, JournalEntry *journalEntry, u32 currMapID, u32 prevMapID, enum HeapId heapID);
u32 Journal_DoesBuildingUseExitedMessage(u32 mapLabelTextID);
void JournalEntry_CreateAndSaveEventArrivedInLocation(JournalEntry *journalEntry, u32 mapID, enum HeapId heapID);
void JournalEntry_CreateAndSaveEventTrainer(JournalEntry *journalEntry, u16 mapID, u16 trainerID, enum HeapId heapID);

#endif // POKEPLATINUM_JOURNAL_H

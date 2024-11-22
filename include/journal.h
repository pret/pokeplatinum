#ifndef POKEPLATINUM_JOURNAL_H
#define POKEPLATINUM_JOURNAL_H

#include "play_time.h"
#include "savedata.h"
#include "trainer_info.h"

#define POKEMON_CAUGHT   1
#define POKEMON_DEFEATED 2

enum JournalDataType {
    JOURNAL_TITLE = 0,
    JOURNAL_UNK_04,
    JOURNAL_MON,
    JOURNAL_TRAINER,
    JOURNAL_UNK_1C,
};

typedef struct {
    u32 year : 7;
    u32 month : 4;
    u32 week : 3;
    u32 day : 5;
    u32 mapID : 13;
} JournalEntryTitle;

typedef struct {
    u8 battleResult;
    u8 stringVariant : 2;
    u8 timeOfDay : 4;
    u8 gender : 2;
    u16 species;
} JournalEntryMon;

typedef struct {
    u16 unk_00_0 : 1;
    u16 trainerID : 15;
    u16 mapID;
} JournalEntryTrainer;

typedef struct JournalEntry JournalEntry;

int Journal_SaveSize(void);
void Journal_Init10(JournalEntry *journalEntry);
JournalEntry *SaveData_GetJournal(SaveData *saveData);
JournalEntry *Journal_GetSavedPage(JournalEntry *journalEntry, BOOL param1);
BOOL Journal_CheckOpenOnContinue(JournalEntry *journalEntry, BOOL param1);
void JournalEntry_SaveData(JournalEntry *journalEntry, void *journalEntryTitle, u8 param2);
void *JournalEntry_CreateTitle(u16 mapID, u32 heapID);
void *sub_0202BCE4(u32 param0);
void *sub_0202BCF0(u32 param0);
void *sub_0202BCFC(u32 param0);
void *sub_0202BD08(u32 param0);
void *sub_0202BD14(u32 param0);
void *sub_0202BD20(u32 param0);
void *sub_0202BD2C(u32 param0);
void *sub_0202BD38(u32 param0);
void *sub_0202BD44(u16 param0, u32 param1);
void *sub_0202BD58(u16 param0, u16 param1, u32 param2);
void *sub_0202BD70(u16 param0, u32 param1);
void *sub_0202BD84(u16 param0, u32 param1);
void *sub_0202BD98(u16 param0, u32 param1);
void *sub_0202BDAC(u16 param0, u32 param1);
void *sub_0202BDC0(u16 param0, u32 param1);
void *sub_0202BDD4(u32 param0);
void *sub_0202BDE0(u32 param0);
void *sub_0202BDEC(u16 param0, u32 param1);
void *sub_0202BE00(u8 param0, u16 param1, u32 param2);
void *sub_0202BE14(u32 param0);
void *sub_0202BE20(u32 param0);
void *sub_0202BE2C(u32 param0, u32 param1);
void *JournalEntry_CreateMonCaught(const PlayTime *playTime, u16 param1, u8 param2, u8 param3, u32 param4);
void *JournalEntry_CreateMonDefeated(const PlayTime *playTime, u16 param1, u8 param2, u8 param3, u32 param4);
void *JournalEntry_InitTrainer(u16 param0, u16 param1, u32 param2);
void *sub_0202BFCC(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C00C(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C04C(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u32 param5);
void *sub_0202C0AC(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C0EC(u16 *param0, u8 param1, u32 param2);
void *sub_0202C11C(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 param4);
void *sub_0202C168(u32 param0);
void *sub_0202C174(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C1B4(u32 param0);
void *sub_0202C1C0(u8 param0, u32 param1);
void *sub_0202C1E0(u32 param0);
void *sub_0202C1EC(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 param4);
void *sub_0202C238(u32 param0);
void *sub_0202C244(u32 param0, u32 param1);
void *sub_0202C250(const u16 *param0, u8 param1, u32 param2, u32 param3);
void *sub_0202C280(int param0, u32 param1, u32 param2);
void JournalEntry_GetData(JournalEntry *journalEntry, void *param1, u8 param2, u8 param3);
void sub_0202C5C4(TrainerInfo *param0, JournalEntry *journalEntry, u32 param2, u32 param3, u32 param4);
u32 sub_0202C6A4(u32 param0);
void sub_0202C704(JournalEntry *journalEntry, u32 param1, u32 param2);
void sub_0202C720(JournalEntry *journalEntry, u16 param1, u16 param2, u32 param3);

#endif // POKEPLATINUM_JOURNAL_H

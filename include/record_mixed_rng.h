#ifndef POKEPLATINUM_RECORD_MIXED_RNG_H
#define POKEPLATINUM_RECORD_MIXED_RNG_H

#include "constants/string.h"

#include "charcode.h"
#include "savedata.h"
#include "strbuf.h"

enum RecordMixedRNGEntry {
    RECORD_MIXED_RNG_PLAYER_ORIGINAL,
    RECORD_MIXED_RNG_PLAYER_OVERRIDE,
    RECORD_MIXED_RNG_QUEUE_0,
    RECORD_MIXED_RNG_QUEUE_1,
    RECORD_MIXED_RNG_QUEUE_2,
    RECORD_MIXED_RNG_QUEUE_3,

    RECORD_MIXED_RNG_MAX,
};

enum RecordMixedRNGName {
    RECORD_MIXED_RNG_GROUP_NAME,
    RECORD_MIXED_RNG_PLAYER_NAME,
};

typedef struct RecordMixedRNG {
    charcode_t groupName[UNION_GROUP_NAME_LEN + 1];
    charcode_t playerName[TRAINER_NAME_LEN + 1];
    u8 gender;
    u8 countryCode;
    u16 dummy;
    u32 seed;
    u32 rand;
} RecordMixedRNG;

int RecordMixedRNG_SaveSize();
RecordMixedRNG *SaveData_GetRecordMixedRNG(SaveData *saveData);

void RecordMixedRNG_CopyEntry(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry srcEntry, enum RecordMixedRNGEntry destEntry);
void RecordMixedRNG_Init(RecordMixedRNG *rngCollection);
void RecordMixedRNG_AdvanceEntries(RecordMixedRNG *rngCollection, u32 stepCount);
u32 RecordMixedRNG_GetEntrySeed(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry);
void RecordMixedRNG_SetEntrySeed(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, u32 seed);
u32 RecordMixedRNG_GetRand(RecordMixedRNG *rngCollection);
const charcode_t *RecordMixedRNG_GetEntryName(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, enum RecordMixedRNGName nameChoice);
void RecordMixedRNG_GetEntryNameAsStrbuf(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, enum RecordMixedRNGName nameChoice, Strbuf *outStrbuf);
void RecordMixedRNG_SetEntryGender(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, int gender);
int RecordMixedRNG_GetEntryGender(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry);
int RecordMixedRNG_GetEntryCountryCode(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry);
void RecordMixedRNG_SetEntryCountryCode(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, int countryCode);
BOOL RecordMixedRNG_IsEntryValid(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry);
BOOL RecordMixedRNG_IsEntryEqualToOverride(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry);
BOOL RecordMixedRNG_DoesCollectionContainGroup(const RecordMixedRNG *rngCollection, const charcode_t *groupName);
BOOL RecordMixedRNG_IsEntryEmpty(const RecordMixedRNG *entry);
BOOL RecordMixedRNG_AreEntriesEqual(const RecordMixedRNG *entry1, const RecordMixedRNG *entry2);

#endif // POKEPLATINUM_RECORD_MIXED_RNG_H

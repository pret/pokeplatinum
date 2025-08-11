#include "record_mixed_rng.h"

#include "constants/charcode.h"
#include "constants/savedata/save_table.h"
#include "constants/string.h"

#include "charcode.h"
#include "charcode_util.h"
#include "math_util.h"
#include "savedata.h"
#include "strbuf.h"

RecordMixedRNG *sRNGCollection;

int RecordMixedRNG_SaveSize()
{
    return sizeof(RecordMixedRNG) * RECORD_MIXED_RNG_MAX;
}

void RecordMixedRNG_CopyEntry(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry srcEntry, enum RecordMixedRNGEntry destEntry)
{
    rngCollection[destEntry] = rngCollection[srcEntry];
}

void RecordMixedRNG_Init(RecordMixedRNG *rngCollection)
{
    MI_CpuClearFast(rngCollection, sizeof(RecordMixedRNG) * RECORD_MIXED_RNG_MAX);

    for (int entry = 0; entry < RECORD_MIXED_RNG_MAX; entry++) {
        rngCollection[entry].groupName[0] = CHAR_EOS;
        rngCollection[entry].playerName[0] = CHAR_EOS;
    }

    sRNGCollection = rngCollection;
}

void RecordMixedRNG_AdvanceEntries(RecordMixedRNG *rngCollection, u32 stepCount)
{
    for (u32 i = 0; i < RECORD_MIXED_RNG_MAX; i++) {
        for (u32 j = 0; j < stepCount; j++) {
            rngCollection[i].rand = ARNG_Next(rngCollection[i].rand);
        }
    }
}

u32 RecordMixedRNG_GetEntrySeed(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry)
{
    return rngCollection[entry].seed;
}

void RecordMixedRNG_SetEntrySeed(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, u32 seed)
{
    rngCollection[entry].seed = seed;
    rngCollection[entry].rand = ARNG_Next(seed);
}

u32 RecordMixedRNG_GetRand(RecordMixedRNG *rngCollection)
{
    return rngCollection[RECORD_MIXED_RNG_PLAYER_OVERRIDE].rand;
}

const charcode_t *RecordMixedRNG_GetEntryName(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, enum RecordMixedRNGName nameChoice)
{
    if (nameChoice == RECORD_MIXED_RNG_GROUP_NAME) {
        return rngCollection[entry].groupName;
    }

    return rngCollection[entry].playerName;
}

void RecordMixedRNG_GetEntryNameAsStrbuf(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, enum RecordMixedRNGName nameChoice, Strbuf *outStrbuf)
{
    charcode_t *name;
    if (nameChoice == RECORD_MIXED_RNG_GROUP_NAME) {
        name = rngCollection[entry].groupName;
        Strbuf_ToChars(outStrbuf, name, UNION_GROUP_NAME_LEN + 1);
    } else {
        name = rngCollection[entry].playerName;
        Strbuf_ToChars(outStrbuf, name, TRAINER_NAME_LEN + 1);
    }
}

void RecordMixedRNG_SetEntryGender(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, int gender)
{
    rngCollection[entry].gender = gender;
}

int RecordMixedRNG_GetEntryGender(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry)
{
    return rngCollection[entry].gender;
}

int RecordMixedRNG_GetEntryCountryCode(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry)
{
    return rngCollection[entry].countryCode;
}

void RecordMixedRNG_SetEntryCountryCode(RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry, int countryCode)
{
    rngCollection[entry].countryCode = countryCode;
}

RecordMixedRNG *SaveData_GetRecordMixedRNG(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_RECORD_MIXED_RNG);
}

BOOL RecordMixedRNG_IsEntryValid(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry)
{
    return !RecordMixedRNG_IsEntryEmpty(&rngCollection[entry]);
}

BOOL RecordMixedRNG_IsEntryEqualToOverride(const RecordMixedRNG *rngCollection, enum RecordMixedRNGEntry entry)
{
    return RecordMixedRNG_AreEntriesEqual(&rngCollection[RECORD_MIXED_RNG_PLAYER_OVERRIDE], &rngCollection[entry]);
}

BOOL RecordMixedRNG_DoesCollectionContainGroup(const RecordMixedRNG *rngCollection, const charcode_t *groupName)
{
    if (*groupName == CHAR_EOS) {
        return FALSE;
    }

    for (int entry = 0; entry < RECORD_MIXED_RNG_MAX; entry++) {
        if (!CharCode_CompareNumChars(groupName, rngCollection[entry].groupName, UNION_GROUP_NAME_LEN + 1)) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL RecordMixedRNG_IsEntryEmpty(const RecordMixedRNG *entry)
{
    if (entry->groupName[0] == CHAR_EOS) {
        return TRUE;
    }

    if (entry->playerName[0] == CHAR_EOS) {
        return TRUE;
    }

    return FALSE;
}

BOOL RecordMixedRNG_AreEntriesEqual(const RecordMixedRNG *entry1, const RecordMixedRNG *entry2)
{
    if (CharCode_CompareNumChars(entry1->playerName, entry2->playerName, TRAINER_NAME_LEN + 1)) {
        return FALSE;
    }

    if (CharCode_CompareNumChars(entry1->groupName, entry2->groupName, UNION_GROUP_NAME_LEN + 1)) {
        return FALSE;
    }

    if (entry1->gender != entry2->gender) {
        return FALSE;
    }

    if (entry1->countryCode != entry2->countryCode) {
        return FALSE;
    }

    if (entry1->seed != entry2->seed) {
        return FALSE;
    }

    return TRUE;
}

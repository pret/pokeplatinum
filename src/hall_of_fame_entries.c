#include "hall_of_fame_entries.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "inlines.h"
#include "party.h"
#include "pokemon.h"
#include "strbuf.h"

static int inline HallOfFame_GetNthPriorEntry(const HallOfFame *hallOfFame, int entryIndex);

int HallOfFame_SaveSize(void)
{
    return sizeof(HallOfFame);
}

void HallOfFame_Init(HallOfFame *hallOfFame)
{
    MI_CpuClear32(hallOfFame, sizeof(HallOfFame));
}

void HallOfFame_AddEntry(HallOfFame *hallOfFame, const Party *party, const RTCDate *date)
{
    HallOfFameEntry *hallOfFameEntry;
    Pokemon *mon;
    Strbuf *strBuf;
    int currentPartyCount, i, pokemonIndex;
    BOOL reencrypt;

    GF_ASSERT(hallOfFame != NULL);
    GF_ASSERT(hallOfFame->nextEntryIndex < MAX_HALL_OF_FAME_ENTRIES);

    if (hallOfFame->totalEntriesCount >= 9999) {
        return;
    }

    hallOfFameEntry = &hallOfFame->entries[hallOfFame->nextEntryIndex];
    currentPartyCount = Party_GetCurrentCount(party);
    strBuf = Strbuf_Init(MON_NAME_LEN + 1, HEAP_ID_SYSTEM);

    MI_CpuClear16(hallOfFameEntry->pokemon, sizeof(HallOfFamePokemon) * MAX_PARTY_SIZE);

    for (i = 0, pokemonIndex = 0; i < currentPartyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);
        reencrypt = Pokemon_EnterDecryptionContext(mon);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == 0) {
            hallOfFameEntry->pokemon[pokemonIndex].species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].OTID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].moves[0] = Pokemon_GetValue(mon, MON_DATA_MOVE1, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].moves[1] = Pokemon_GetValue(mon, MON_DATA_MOVE2, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].moves[2] = Pokemon_GetValue(mon, MON_DATA_MOVE3, NULL);
            hallOfFameEntry->pokemon[pokemonIndex].moves[3] = Pokemon_GetValue(mon, MON_DATA_MOVE4, NULL);

            if (strBuf) {
                Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, strBuf);
                Strbuf_ToChars(strBuf, hallOfFameEntry->pokemon[pokemonIndex].nickname, MON_NAME_LEN + 1);

                Pokemon_GetValue(mon, MON_DATA_OT_NAME_STRING, strBuf);
                Strbuf_ToChars(strBuf, hallOfFameEntry->pokemon[pokemonIndex].OTName, TRAINER_NAME_LEN + 1);
            } else {
                hallOfFameEntry->pokemon[pokemonIndex].nickname[0] = 0xffff;
                hallOfFameEntry->pokemon[pokemonIndex].OTName[0] = 0xffff;
            }

            pokemonIndex++;
        }

        Pokemon_ExitDecryptionContext(mon, reencrypt);
    }

    hallOfFameEntry->year = date->year;
    hallOfFameEntry->month = date->month;
    hallOfFameEntry->day = date->day;

    if (++(hallOfFame->nextEntryIndex) >= MAX_HALL_OF_FAME_ENTRIES) {
        hallOfFame->nextEntryIndex = 0;
    }

    hallOfFame->totalEntriesCount++;

    if (strBuf) {
        Strbuf_Free(strBuf);
    }
}

u32 HallOfFame_GetStoredEntriesCount(const HallOfFame *hallOfFame)
{
    GF_ASSERT(hallOfFame != NULL);
    GF_ASSERT(hallOfFame->nextEntryIndex < MAX_HALL_OF_FAME_ENTRIES);

    if (hallOfFame->totalEntriesCount >= MAX_HALL_OF_FAME_ENTRIES) {
        return MAX_HALL_OF_FAME_ENTRIES;
    }

    return hallOfFame->totalEntriesCount;
}

u32 HallOfFame_GetEntryNum(const HallOfFame *hallOfFame, int entryIndex)
{
    GF_ASSERT(hallOfFame != NULL);
    GF_ASSERT(hallOfFame->nextEntryIndex < MAX_HALL_OF_FAME_ENTRIES);
    GF_ASSERT(entryIndex < MAX_HALL_OF_FAME_ENTRIES);

    return hallOfFame->totalEntriesCount - entryIndex;
}

u32 HallOfFame_GetEntryPokemonCount(const HallOfFame *hallOfFame, int entryIndex)
{
    u32 i;

    GF_ASSERT(hallOfFame != NULL);
    GF_ASSERT(hallOfFame->nextEntryIndex < MAX_HALL_OF_FAME_ENTRIES);
    GF_ASSERT(entryIndex < MAX_HALL_OF_FAME_ENTRIES);

    entryIndex = HallOfFame_GetNthPriorEntry(hallOfFame, entryIndex);

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        if (hallOfFame->entries[entryIndex].pokemon[i].species == SPECIES_NONE) {
            break;
        }
    }

    return i;
}

void HallOfFame_GetEntryPokemonData(const HallOfFame *hallOfFame, int entryIndex, int pokemonIndex, PCHallOfFamePokemon *pcHallOfFameMon)
{
    const HallOfFamePokemon *hallOfFameMon;
    int i;

    GF_ASSERT(hallOfFame != NULL);
    GF_ASSERT(hallOfFame->nextEntryIndex < MAX_HALL_OF_FAME_ENTRIES);
    GF_ASSERT(entryIndex < MAX_HALL_OF_FAME_ENTRIES);

    entryIndex = HallOfFame_GetNthPriorEntry(hallOfFame, entryIndex);
    hallOfFameMon = &(hallOfFame->entries[entryIndex].pokemon[pokemonIndex]);

    pcHallOfFameMon->species = hallOfFameMon->species;
    pcHallOfFameMon->level = hallOfFameMon->level;
    pcHallOfFameMon->personality = hallOfFameMon->personality;
    pcHallOfFameMon->OTID = hallOfFameMon->OTID;
    pcHallOfFameMon->form = hallOfFameMon->form;

    Strbuf_CopyChars(pcHallOfFameMon->nickname, hallOfFameMon->nickname);
    Strbuf_CopyChars(pcHallOfFameMon->OTName, hallOfFameMon->OTName);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        pcHallOfFameMon->moves[i] = hallOfFameMon->moves[i];
    }
}

void HallOfFame_GetEntryDate(const HallOfFame *hallOfFame, int entryIndex, RTCDate *date)
{
    GF_ASSERT(hallOfFame != NULL);
    GF_ASSERT(hallOfFame->nextEntryIndex < MAX_HALL_OF_FAME_ENTRIES);
    GF_ASSERT(entryIndex < MAX_HALL_OF_FAME_ENTRIES);

    entryIndex = HallOfFame_GetNthPriorEntry(hallOfFame, entryIndex);

    date->year = hallOfFame->entries[entryIndex].year;
    date->month = hallOfFame->entries[entryIndex].month;
    date->day = hallOfFame->entries[entryIndex].day;
    date->week = 0;
}

static int inline HallOfFame_GetNthPriorEntry(const HallOfFame *hallOfFame, int entryIndex)
{
    int priorEntryIndex = hallOfFame->nextEntryIndex - 1 - entryIndex;

    if (priorEntryIndex < 0) {
        priorEntryIndex += MAX_HALL_OF_FAME_ENTRIES;
    }

    return priorEntryIndex;
}

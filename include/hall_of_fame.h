#ifndef POKEPLATINUM_HALL_OF_FAME_H
#define POKEPLATINUM_HALL_OF_FAME_H

#include <nitro/rtc.h>

#include "constants/moves.h"
#include "constants/pokemon.h"

#include "party.h"
#include "strbuf.h"

#define MAX_HALL_OF_FAME_ENTRIES 30

typedef struct HallOfFamePokemon {
    u16 species;
    u8 level;
    u8 form;
    u32 personality;
    u32 OTID;
    u16 nickname[MON_NAME_LEN + 1];
    u16 OTName[TRAINER_NAME_LEN + 1];
    u16 moves[LEARNED_MOVES_MAX];
    u8 padding_3A[2];
} HallOfFamePokemon;

typedef struct HallOfFameEntry {
    HallOfFamePokemon pokemon[MAX_PARTY_SIZE];
    u16 year;
    u8 month;
    u8 day;
} HallOfFameEntry;

typedef struct HallOfFame {
    HallOfFameEntry entries[MAX_HALL_OF_FAME_ENTRIES];
    u32 nextEntryIndex;
    u32 totalEntriesCount;
} HallOfFame;

typedef struct PCHallOfFamePokemon {
    Strbuf *nickname;
    Strbuf *OTName;
    u32 personality;
    u32 OTID;
    u16 species;
    u8 level;
    u8 form;
    u16 moves[LEARNED_MOVES_MAX];
} PCHallOfFamePokemon;

int HallOfFame_SaveSize(void);
void HallOfFame_Init(HallOfFame *hallOfFame);
void HallOfFame_AddEntry(HallOfFame *hallOfFame, const Party *party, const RTCDate *date);
u32 HallOfFame_GetStoredEntriesCount(const HallOfFame *hallOfFame);
u32 HallOfFame_GetEntryNum(const HallOfFame *hallOfFame, int entryIndex);
u32 HallOfFame_GetEntryPokemonCount(const HallOfFame *hallOfFame, int entryIndex);
void HallOfFame_GetEntryPokemonData(const HallOfFame *hallOfFame, int entryIndex, int pokemonIndex, PCHallOfFamePokemon *pcHallOfFameMon);
void HallOfFame_GetEntryDate(const HallOfFame *hallOfFame, int entryIndex, RTCDate *date);

#endif // POKEPLATINUM_HALL_OF_FAME_H

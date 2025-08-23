#ifndef POKEPLATINUM_HALL_OF_FAME_H
#define POKEPLATINUM_HALL_OF_FAME_H

#include <nitro/rtc.h>

#include "constants/moves.h"

#include "overlay087/struct_ov87_021D1640.h"

#include "party.h"
#include "pokemon.h"

#define MAX_HALL_OF_FAME_ENTRIES 30

typedef struct {
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

typedef struct {
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

int HallOfFame_SaveSize(void);
void HallOfFame_Init(HallOfFame *hallOfFame);
void HallOfFame_AddEntry(HallOfFame *hallOfFame, const Party *party, const RTCDate *date);
u32 HallOfFame_GetStoredEntriesCount(const HallOfFame *hallOfFame);
u32 sub_0202E174(const HallOfFame *hallOfFame, int entryIndex);
u32 HallOfFame_GetEntryPokemonDataCount(const HallOfFame *hallOfFame, int entryIndex);
void HallOfFame_GetEntryPokemonData(const HallOfFame *hallOfFame, int entryIndex, int pokemonIndex, UnkStruct_ov87_021D1640 *param3);
void HallOfFame_GetEntryDate(const HallOfFame *hallOfFame, int entryIndex, RTCDate *date);

#endif // POKEPLATINUM_HALL_OF_FAME_H

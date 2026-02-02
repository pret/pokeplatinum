#ifndef POKEPLATINUM_CONTEST_H
#define POKEPLATINUM_CONTEST_H

#include "constants/contests.h"
#include "generated/pokemon_contest_types.h"

#include "savedata.h"

typedef struct LinkContestRecords {
    u16 contestPlacement[CONTEST_TYPE_MAX][CONTEST_NUM_PARTICIPANTS];
} LinkContestRecords;

int LinkContestRecords_SaveSize(void);
void LinkContestRecords_Init(LinkContestRecords *linkContestRecords);
void LinkContestRecords_IncrementSavaData(SaveData *saveData, enum PokemonContestType contestType, int placement);
u16 LinkContestRecords_GetSavaData(SaveData *saveData, enum PokemonContestType contestType, int placement);

#endif // POKEPLATINUM_CONTEST_H

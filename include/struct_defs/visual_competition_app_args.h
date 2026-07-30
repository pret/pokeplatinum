#ifndef POKEPLATINUM_VISUAL_COMPETITION_APP_ARGS_H
#define POKEPLATINUM_VISUAL_COMPETITION_APP_ARGS_H

#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

#include "struct_defs/fashion_case.h"
#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_02095C60.h"

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct VisualCompetitionAppArgs {
    Pokemon *mon;
    UnkStruct_02029C88 *unk_04;
    int unk_08;
    enum PokemonContestRank contestRank;
    int competitionType;
    enum PokemonContestType contestType;
    const FashionCase *fashionCase;
    UnkStruct_02095C60 *unk_1C;
    const Options *options;
    const TrainerInfo *trainerInfo;
} VisualCompetitionAppArgs;

#endif // POKEPLATINUM_VISUAL_COMPETITION_APP_ARGS_H

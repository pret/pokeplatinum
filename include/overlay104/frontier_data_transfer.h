#ifndef POKEPLATINUM_FRONTIER_DATA_TRANSFER
#define POKEPLATINUM_FRONTIER_DATA_TRANSFER

#include "constants/moves.h"
#include "constants/string.h"
#include "generated/pokemon_stats.h"

typedef struct FrontierTrainerDataDTO {
    u32 trainerID;
    u16 trainerType;
    u16 unk_06;
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u16 unk_18[4];
    u16 unk_20[4];
    u16 unk_28[4];
} FrontierTrainerDataDTO;

typedef struct FrontierPokemonDataDTO {
    struct {
        u16 species : 11;
        u16 form : 5;
    };
    u16 item;
    u16 moves[LEARNED_MOVES_MAX];
    u32 otID;
    u32 personality;
    union {
        struct {
            u32 hpIV : 5;
            u32 atkIV : 5;
            u32 defIV : 5;
            u32 speedIV : 5;
            u32 spAtkIV : 5;
            u32 spDefIV : 5;
            u32 unk_14_val1_30 : 1;
            u32 : 1;
        };
        u32 combinedIVs;
    };
    union {
        struct {
            u8 hpEV;
            u8 atkEV;
            u8 defEV;
            u8 speedEV;
            u8 spAtkEV;
            u8 spDefEV;
        };
        u8 evList[STAT_MAX];
    };
    union {
        struct {
            u8 move0PPUps : 2;
            u8 move1PPUps : 2;
            u8 move2PPUps : 2;
            u8 move3PPUps : 2;
        };
        u8 combinedPPUps;
    };
    u8 language;
    u8 ability;
    u8 friendship;
    u16 nickname[MON_NAME_LEN + 1];
} FrontierPokemonDataDTO;

typedef struct FrontierDataDTO {
    FrontierTrainerDataDTO trDataDTO;
    FrontierPokemonDataDTO monDataDTO[4];
} FrontierDataDTO;

#endif // POKEPLATINUM_FRONTIER_DATA_TRANSFER

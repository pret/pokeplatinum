#ifndef POKEPLATINUM_FRONTIER_OPPONENTS_H
#define POKEPLATINUM_FRONTIER_OPPONENTS_H

#include "constants/moves.h"
#include "constants/string.h"
#include "generated/object_events_gfx.h"
#include "generated/pokemon_stats.h"

#include "struct_defs/frontier_pokemon_base.h"
#include "struct_defs/frontier_trainer_base.h"

#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"
#include "sprite.h"
#include "string_template.h"
#include "trainer_info.h"

typedef struct FrontierTrainer {
    u32 trainerID;
    u16 trainerType;
    u16 unk_06;
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u16 introMsg[4];
    u16 winMsg[4];
    u16 loseMsg[4];
} FrontierTrainer;

typedef struct FrontierPokemon {
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
            u32 setSpeciesAsNickname : 1;
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
} FrontierPokemon;

typedef struct FrontierOpponent {
    FrontierTrainer trainer;
    FrontierPokemon pokemon[4];
} FrontierOpponent;

void BattleFrontier_GetPokemonBase(FrontierPokemonBase *monData, int narcIdx, enum NarcID narcID);
FrontierTrainerBase *BattleFrontier_GetTrainer(FrontierTrainer *trainer, int trainerID, enum HeapID heapID, enum NarcID narcID);
void FrontierPokemon_InitPokemon(const FrontierPokemon *frontierMon, Pokemon *mon, u8 setLevel);
u16 BattleFrontier_GetObjectIDFromTrainerClass(u8 trainerClass);
void BattleFactory_AddRentalPokemonToParty(SaveData *saveData, Party *party, Pokemon *mon);
void BattleCastle_UpdateMonSpriteAnimID(Sprite *sprite, u8 animID);
void BattleCastle_UpdateMonSpritePosition(Sprite *sprite, s16 x, s16 y, u8 isSelected);
u8 BattleCastle_GetPokeIconAnimID(u16 hp, u16 maxHp);
void BattleFrontier_LoadTrainer(FrontierOpponent *opponent, u16 trainerID, enum HeapID heapID, enum NarcID narcID);
void FieldBattleDTO_InitFrontierTrainer(FieldBattleDTO *battleDTO, FrontierTrainer *trainer, int unused, int battlerId, enum HeapID heapID);
u32 BattleFrontier_LoadOpponentMonData(FrontierPokemon *frontierMon, u16 narcIdx, int unused, u8 ivs, u32 personality, enum HeapID heapID, enum NarcID narcID);
void BattleFrontier_LoadFrontierPokemon(FrontierPokemon *mons, u16 narcIdx[], u8 ivList[], u32 personalities[], u32 resultPersonalities[], int numMons, enum HeapID heapID, enum NarcID narcID);
void BattleFrontier_GetPokemonForTrainers(u8 numMons, u16 trainerID, u16 trainerID2, u16 *monSetIDs, FrontierPokemon *resultMons, u8 *ivs, u32 *personalities, u8 isMultiplayerChallenge);
void BattleFrontier_SetPartnerInStrTemplate(StringTemplate *template, u32 idx);
enum ObjectEventGfx BattleFrontier_GetPlayerObjEventGfx(const TrainerInfo *playerInfo);
void BattleFrontier_FlagGeonetLinkInfo(SaveData *saveData);

#endif // POKEPLATINUM_FRONTIER_OPPONENTS_H

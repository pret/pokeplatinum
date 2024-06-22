#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/pokemon.h"
#include "consts/sdat.h"
#include "constants/species.h"
#include "constants/trainer.h"

#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"

#include "overlay006/battle_params.h"

#include "enc_effects.h"
#include "unk_02054884.h"
#include "pokemon.h"
#include "overlay005/encounter_effect.h"

// This needs to be moved to a constants file somewhere
#define ZONE_ID_PAL_PARK    251

typedef struct {
    u16 cutInEffect;
    u16 sdatBGMusic;
} EncEffectsPair;

enum EncEffectsPairID {
    ENCEFF_LEADER_ROARK,
    ENCEFF_LEADER_GARDENIA,
    ENCEFF_LEADER_WAKE,
    ENCEFF_LEADER_MAYLENE,
    ENCEFF_LEADER_FANTINA,
    ENCEFF_LEADER_CANDICE,
    ENCEFF_LEADER_BYRON,
    ENCEFF_LEADER_VOLKNER,

    ENCEFF_ELITE_FOUR_AARON,
    ENCEFF_ELITE_FOUR_BERTHA,
    ENCEFF_ELITE_FOUR_FLINT,
    ENCEFF_ELITE_FOUR_LUCIAN,
    ENCEFF_CHAMPION_CYNTHIA,

    ENCEFF_RIVAL,

    ENCEFF_SHAYMIN,
    ENCEFF_DIALGA_PALKIA,
    ENCEFF_UXIE_AZELF,
    ENCEFF_MESPRIT,
    ENCEFF_ARCEUS,
    ENCEFF_MINOR_LEGENDARIES, // Regigigas, Heatran, Darkrai
    ENCEFF_CRESSELIA,
    ENCEFF_KANTO_BIRDS,
    ENCEFF_GIRATINA,
    ENCEFF_REGI_TRIO,

    ENCEFF_GALACTIC_GRUNT,
    ENCEFF_GALACTIC_CMDR,
    ENCEFF_GALACTIC_CYRUS,
    
    ENCEFF_FRONTIER,
    ENCEFF_LINK_BATTLE,
    ENCEFF_DOUBLE_BATTLE,
    ENCEFF_DOUBLE_WILD,
    ENCEFF_FRONTIER_BRAIN,
    ENCEFF_DOUBLE_LEADER,

    ENCEFF_NORMAL_TRAINER,
    ENCEFF_NORMAL_WILD,

    ENCEFF_MAX,
};

static const EncEffectsPair sEncEffectsTable[35] = {
    [ENCEFF_LEADER_ROARK]       = {ENCEFF_CUTIN_LEADER_ROARK,      SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_GARDENIA]    = {ENCEFF_CUTIN_LEADER_GARDENIA,   SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_WAKE]        = {ENCEFF_CUTIN_LEADER_WAKE,       SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_MAYLENE]     = {ENCEFF_CUTIN_LEADER_MAYLENE,    SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_FANTINA]     = {ENCEFF_CUTIN_LEADER_FANTINA,    SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_CANDICE]     = {ENCEFF_CUTIN_LEADER_CANDICE,    SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_BYRON]       = {ENCEFF_CUTIN_LEADER_BYRON,      SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_LEADER_VOLKNER]     = {ENCEFF_CUTIN_LEADER_VOLKNER,    SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_ELITE_FOUR_AARON]   = {ENCEFF_CUTIN_ELITE_FOUR_AARON,  SEQ_BATTLE_ELITE_FOUR},
    [ENCEFF_ELITE_FOUR_BERTHA]  = {ENCEFF_CUTIN_ELITE_FOUR_BERTHA, SEQ_BATTLE_ELITE_FOUR},
    [ENCEFF_ELITE_FOUR_FLINT]   = {ENCEFF_CUTIN_ELITE_FOUR_FLINT,  SEQ_BATTLE_ELITE_FOUR},
    [ENCEFF_ELITE_FOUR_LUCIAN]  = {ENCEFF_CUTIN_ELITE_FOUR_LUCIAN, SEQ_BATTLE_ELITE_FOUR},
    [ENCEFF_CHAMPION_CYNTHIA]   = {ENCEFF_CUTIN_CHAMPION_CYNTHIA,  SEQ_BATTLE_CHAMPION},
    [ENCEFF_RIVAL]              = {ENCEFF_CUTIN_USE_LOCAL,         SEQ_BATTLE_RIVAL},
    [ENCEFF_SHAYMIN]            = {ENCEFF_CUTIN_MYTHICAL,          SEQ_BATTLE_WILD_POKEMON},
    [ENCEFF_DIALGA_PALKIA]      = {ENCEFF_CUTIN_LEGENDARY,         SEQ_BATTLE_DIALGA_PALKIA},
    [ENCEFF_UXIE_AZELF]         = {ENCEFF_CUTIN_LEGENDARY,         SEQ_BATTLE_LAKE_GUARDIAN},
    [ENCEFF_MESPRIT]            = {ENCEFF_CUTIN_USE_LOCAL,         SEQ_BATTLE_LAKE_GUARDIAN},
    [ENCEFF_ARCEUS]             = {ENCEFF_CUTIN_LEGENDARY,         SEQ_BATTLE_ARCEUS},
    [ENCEFF_MINOR_LEGENDARIES]  = {ENCEFF_CUTIN_MYTHICAL,          SEQ_BATTLE_LEGENDARY},
    [ENCEFF_CRESSELIA]          = {ENCEFF_CUTIN_USE_LOCAL,         SEQ_BATTLE_WILD_POKEMON},
    [ENCEFF_KANTO_BIRDS]        = {ENCEFF_CUTIN_USE_LOCAL,         SEQ_BATTLE_LEGENDARY},
    [ENCEFF_GIRATINA]           = {ENCEFF_CUTIN_MYTHICAL,          SEQ_BATTLE_GIRATINA},
    [ENCEFF_REGI_TRIO]          = {ENCEFF_CUTIN_MYTHICAL,          SEQ_BATTLE_REGI_TRIO},
    [ENCEFF_GALACTIC_GRUNT]     = {ENCEFF_CUTIN_GALACTIC_GRUNT,    SEQ_BATTLE_GALACTIC_GRUNT},
    [ENCEFF_GALACTIC_CMDR]      = {ENCEFF_CUTIN_GALACTIC_BOSS,     SEQ_BATTLE_GALACTIC_CMDR},
    [ENCEFF_GALACTIC_CYRUS]     = {ENCEFF_CUTIN_GALACTIC_BOSS,     SEQ_BATTLE_CYRUS},
    [ENCEFF_FRONTIER]           = {ENCEFF_CUTIN_FRONTIER,          SEQ_BATTLE_TRAINER},
    [ENCEFF_LINK_BATTLE]        = {ENCEFF_CUTIN_FRONTIER,          SEQ_BATTLE_TRAINER},
    [ENCEFF_DOUBLE_BATTLE]      = {ENCEFF_CUTIN_DOUBLE,            SEQ_BATTLE_TRAINER},
    [ENCEFF_DOUBLE_WILD]        = {ENCEFF_CUTIN_DOUBLE,            SEQ_BATTLE_WILD_POKEMON},
    [ENCEFF_FRONTIER_BRAIN]     = {ENCEFF_CUTIN_FRONTIER,          SEQ_BATTLE_FRONTIER_BRAIN},
    [ENCEFF_DOUBLE_LEADER]      = {ENCEFF_CUTIN_DOUBLE,            SEQ_BATTLE_GYM_LEADER},
    [ENCEFF_NORMAL_TRAINER]     = {ENCEFF_CUTIN_USE_LOCAL,         SEQ_BATTLE_TRAINER},
    [ENCEFF_NORMAL_WILD]        = {ENCEFF_CUTIN_USE_LOCAL,         SEQ_BATTLE_WILD_POKEMON}
};

static u32 EncEffects_GetEffectPair(const BattleParams *battleParams);
static u32 EncEffects_CutInEffectForPair(u32 effectPairID, const BattleParams *battleParams);
static u32 EncEffects_BGMForPair(u32 effectPairID, const BattleParams *battleParams);
static u32 EncEffects_TrainerClassEffect(u32 trainerClass);
static u32 EncEffects_WildPokemonEffect(Party *wildParty, int mapHeaderID);

inline BOOL EncEffects_Galactic(u32 effect)
{
    return (effect == ENCEFF_GALACTIC_GRUNT)
            || (effect == ENCEFF_GALACTIC_CMDR)
            || (effect == ENCEFF_GALACTIC_CYRUS);
}

static u32 EncEffects_GetEffectPair (const BattleParams *battleParams)
{
    u32 battleType = battleParams->battleType;

    if (battleType & BATTLE_TYPE_TRAINER) {
        u32 trainerEffect = EncEffects_TrainerClassEffect(battleParams->trainerData[1].class);

        if (battleType & BATTLE_TYPE_FRONTIER) {
            if (trainerEffect == ENCEFF_FRONTIER_BRAIN) {
                return trainerEffect;
            }

            if (battleType & BATTLE_TYPE_DOUBLES) {
                return ENCEFF_DOUBLE_BATTLE;
            }

            return ENCEFF_FRONTIER;
        }

        if (EncEffects_Galactic(trainerEffect)) {
            return trainerEffect;
        }

        // There is a bug here that is never realized in as-released Platinum:
        // When any single trainer with special encounter effects is challenged
        // to a double battle, that trainer will lose all of those special
        // encounter effects and be treated as any normal double battle.
        if (battleType & BATTLE_TYPE_DOUBLES) {
            if (trainerEffect == ENCEFF_LEADER_VOLKNER) {
                return ENCEFF_DOUBLE_LEADER;
            }

            return ENCEFF_DOUBLE_BATTLE;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            return ENCEFF_LINK_BATTLE;
        }

        return trainerEffect;
    }

    u32 pokemonEffect = EncEffects_WildPokemonEffect(battleParams->parties[1], battleParams->mapHeaderID);

    if (pokemonEffect < ENCEFF_NORMAL_WILD) {
        return pokemonEffect;
    }

    if (battleType & BATTLE_TYPE_DOUBLES) {
        return ENCEFF_DOUBLE_WILD;
    }

    return pokemonEffect;
}

static u32 EncEffects_CutInEffectForPair (u32 effectPairID, const BattleParams *battleParams)
{
    GF_ASSERT(effectPairID < ENCEFF_MAX);

    // If the cut-in effect specifies, determine what effect to use
    // based on the encounter locale.
    if (sEncEffectsTable[effectPairID].cutInEffect == ENCEFF_CUTIN_USE_LOCAL) {
        return CutInEffects_ForBattle(battleParams);
    }
    
    return sEncEffectsTable[effectPairID].cutInEffect;
}

static u32 EncEffects_BGMForPair (u32 effectPairID, const BattleParams *battleParams)
{
    GF_ASSERT(effectPairID < ENCEFF_MAX);

    return sEncEffectsTable[effectPairID].sdatBGMusic;
}

u32 EncEffects_CutInEffect (const BattleParams *battleParams)
{
    return EncEffects_CutInEffectForPair(EncEffects_GetEffectPair(battleParams), battleParams);
}

u32 EncEffects_BGM (const BattleParams *battleParams)
{
    return EncEffects_BGMForPair(EncEffects_GetEffectPair(battleParams), battleParams);
}

static u32 EncEffects_TrainerClassEffect (u32 trainerClass)
{
    u32 result = ENCEFF_NORMAL_TRAINER;

    switch (trainerClass) {
        case TRAINER_CLASS_LEADER_ROARK:
            result = ENCEFF_LEADER_ROARK;
            break;
        case TRAINER_CLASS_LEADER_GARDENIA:
            result = ENCEFF_LEADER_GARDENIA;
            break;
        case TRAINER_CLASS_LEADER_WAKE:
            result = ENCEFF_LEADER_WAKE;
            break;
        case TRAINER_CLASS_LEADER_MAYLENE:
            result = ENCEFF_LEADER_MAYLENE;
            break;
        case TRAINER_CLASS_LEADER_FANTINA:
            result = ENCEFF_LEADER_FANTINA;
            break;
        case TRAINER_CLASS_LEADER_CANDICE:
            result = ENCEFF_LEADER_CANDICE;
            break;
        case TRAINER_CLASS_LEADER_BYRON:
            result = ENCEFF_LEADER_BYRON;
            break;
        case TRAINER_CLASS_LEADER_VOLKNER:
            result = ENCEFF_LEADER_VOLKNER;
            break;
        case TRAINER_CLASS_ELITE_FOUR_AARON:
            result = ENCEFF_ELITE_FOUR_AARON;
            break;
        case TRAINER_CLASS_ELITE_FOUR_BERTHA:
            result = ENCEFF_ELITE_FOUR_BERTHA;
            break;
        case TRAINER_CLASS_ELITE_FOUR_FLINT:
            result = ENCEFF_ELITE_FOUR_FLINT;
            break;
        case TRAINER_CLASS_ELITE_FOUR_LUCIAN:
            result = ENCEFF_ELITE_FOUR_LUCIAN;
            break;
        case TRAINER_CLASS_CHAMPION_CYNTHIA:
            result = ENCEFF_CHAMPION_CYNTHIA;
            break;
        case TRAINER_CLASS_RIVAL:
            result = ENCEFF_RIVAL;
            break;
        case TRAINER_CLASS_GALACTIC_BOSS:
            result = ENCEFF_GALACTIC_CYRUS;
            break;
        case TRAINER_CLASS_COMMANDER_MARS:
        case TRAINER_CLASS_COMMANDER_JUPITER:
        case TRAINER_CLASS_COMMANDER_SATURN:
            result = ENCEFF_GALACTIC_CMDR;
            break;
        case TRAINER_CLASS_GALACTIC_GRUNT_MALE:
        case TRAINER_CLASS_GALACTIC_GRUNT_FEMALE:
            result = ENCEFF_GALACTIC_GRUNT;
            break;
        case TRAINER_CLASS_TOWER_TYCOON:
        case TRAINER_CLASS_HALL_MATRON:
        case TRAINER_CLASS_FACTORY_HEAD:
        case TRAINER_CLASS_ARCADE_STAR:
        case TRAINER_CLASS_CASTLE_VALET:
            result = ENCEFF_FRONTIER_BRAIN;
            break;
        default:
            break;
    }

    return result;
}

static u32 EncEffects_WildPokemonEffect (Party *wildParty, int mapHeaderID)
{
    u32 result = ENCEFF_NORMAL_WILD;

    Pokemon *wildPokemon = Party_FindFirstEligibleBattler(wildParty);
    u32 wildSpecies = Pokemon_GetValue(wildPokemon, MON_DATA_SPECIES, NULL);

    switch (wildSpecies) {
        case SPECIES_SHAYMIN:
            result = ENCEFF_SHAYMIN;
            break;
        case SPECIES_CRESSELIA:
            result = ENCEFF_CRESSELIA;
            break;
        case SPECIES_GIRATINA:
            result = ENCEFF_GIRATINA;
            break;
        case SPECIES_REGISTEEL:
        case SPECIES_REGICE:
        case SPECIES_REGIROCK:
            if (mapHeaderID != ZONE_ID_PAL_PARK) {
                result = ENCEFF_REGI_TRIO;
            }
            break;
        case SPECIES_REGIGIGAS:
        case SPECIES_HEATRAN:
        case SPECIES_DARKRAI:
        case SPECIES_ROTOM:
            result = ENCEFF_MINOR_LEGENDARIES;
            break;
        case SPECIES_MESPRIT:
            result = ENCEFF_MESPRIT;
            break;
        case SPECIES_UXIE:
        case SPECIES_AZELF:
            result = ENCEFF_UXIE_AZELF;
            break;
        case SPECIES_DIALGA:
        case SPECIES_PALKIA:
            result = ENCEFF_DIALGA_PALKIA;
            break;
        case SPECIES_ARCEUS:
            result = ENCEFF_ARCEUS;
            break;
        case SPECIES_MOLTRES:
        case SPECIES_ARTICUNO:
        case SPECIES_ZAPDOS:
            if (mapHeaderID != ZONE_ID_PAL_PARK) {
                result = ENCEFF_KANTO_BIRDS;
            }
            break;
        default:
            break;
    }

    return result;
}

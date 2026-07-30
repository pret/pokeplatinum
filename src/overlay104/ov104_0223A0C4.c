#include "overlay104/ov104_0223A0C4.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "constants/charcode.h"
#include "constants/pokemon.h"
#include "generated/ai_flags.h"
#include "generated/battle_tower_modes.h"
#include "generated/moves.h"
#include "generated/species_data_params.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/frontier_pokemon_base.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay104/frontier_opponents.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "communication_information.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_02049D08.h"
#include "wifi_battle_tower_save.h"

const FrontierPokemon sDummyFrontierPokemon[] = {
    {
        .species = SPECIES_BULBASAUR,
        .form = 0,
        .item = ITEM_LEFTOVERS,
        .moves = { MOVE_VINE_WHIP, MOVE_RAZOR_LEAF, MOVE_SYNTHESIS, MOVE_SOLAR_BEAM },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_FU, CHAR_KATAKANA_SHI, CHAR_KATAKANA_GI, CHAR_KATAKANA_DA, CHAR_KATAKANA_NE, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_CHARMANDER,
        .form = 0,
        .item = ITEM_SHELL_BELL,
        .moves = { MOVE_EMBER, MOVE_FIRE_SPIN, MOVE_FLAMETHROWER, MOVE_FIRE_BLAST },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_HI, CHAR_KATAKANA_TO, CHAR_KATAKANA_KA, CHAR_KATAKANA_GE, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_SQUIRTLE,
        .form = 0,
        .item = ITEM_MYSTIC_WATER,
        .moves = { MOVE_WATER_GUN, MOVE_SURF, MOVE_WATER_PULSE, MOVE_HYDRO_PUMP },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_ZE, CHAR_KATAKANA_NI, CHAR_KATAKANA_GA, CHAR_KATAKANA_ME, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_SCYTHER,
        .form = 0,
        .item = ITEM_KINGS_ROCK,
        .moves = { MOVE_SILVER_WIND, MOVE_STEEL_WING, MOVE_DOUBLE_TEAM, MOVE_AIR_CUTTER },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_SU, CHAR_KATAKANA_TO, CHAR_KATAKANA_RA, CHAR_KATAKANA_I, CHAR_KATAKANA_KU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_SPHEAL,
        .form = 0,
        .item = ITEM_NEVERMELTICE,
        .moves = { MOVE_ICE_BALL, MOVE_WATER_PULSE, MOVE_HAIL, MOVE_MUD_SLAP },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_TA, CHAR_KATAKANA_MA, CHAR_KATAKANA_ZA, CHAR_KATAKANA_RA, CHAR_KATAKANA_SHI, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_MAGNEMITE,
        .form = 0,
        .item = ITEM_ASPEAR_BERRY,
        .moves = { MOVE_SHOCK_WAVE, MOVE_SUPERSONIC, MOVE_METAL_SOUND, MOVE_REFLECT },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_KO, CHAR_KATAKANA_I, CHAR_KATAKANA_RU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_SKITTY,
        .form = 0,
        .item = ITEM_QUICK_CLAW,
        .moves = { MOVE_SING, MOVE_FAKE_TEARS, MOVE_CHARM, MOVE_DOUBLE_SLAP },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_E, CHAR_KATAKANA_NE, CHAR_KATAKANA_KO, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_MAKUHITA,
        .form = 0,
        .item = ITEM_SCOPE_LENS,
        .moves = { MOVE_FAKE_OUT, MOVE_SEISMIC_TOSS, MOVE_DETECT, MOVE_WHIRLWIND },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_MA, CHAR_KATAKANA_KU, CHAR_KATAKANA_NO, CHAR_KATAKANA_SHI, CHAR_KATAKANA_TA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_SPINARAK,
        .form = 0,
        .item = ITEM_LIECHI_BERRY,
        .moves = { MOVE_SIGNAL_BEAM, MOVE_NIGHT_SHADE, MOVE_SPIDER_WEB, MOVE_SCARY_FACE },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_I, CHAR_KATAKANA_TO, CHAR_KATAKANA_MA, CHAR_KATAKANA_RU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_SANDSHREW,
        .form = 0,
        .item = ITEM_SOFT_SAND,
        .moves = { MOVE_DIG, MOVE_ROCK_TOMB, MOVE_SANDSTORM, MOVE_SAND_ATTACK },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_SA, CHAR_KATAKANA_N, CHAR_KATAKANA_DO, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_TAILLOW,
        .form = 0,
        .item = ITEM_SALAC_BERRY,
        .moves = { MOVE_FLY, MOVE_QUICK_ATTACK, MOVE_ENDEAVOR, MOVE_FOCUS_ENERGY },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_SU, CHAR_KATAKANA_BA, CHAR_KATAKANA_ME, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_EXEGGCUTE,
        .form = 0,
        .item = ITEM_PECHA_BERRY,
        .moves = { MOVE_CONFUSION, MOVE_ANCIENT_POWER, MOVE_LEECH_SEED, MOVE_LIGHT_SCREEN },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_TA, CHAR_KATAKANA_MA, CHAR_KATAKANA_TA, CHAR_KATAKANA_MA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_GEODUDE,
        .form = 0,
        .item = ITEM_FOCUS_BAND,
        .moves = { MOVE_MAGNITUDE, MOVE_ROCK_BLAST, MOVE_STRENGTH, MOVE_PROTECT },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_I, CHAR_KATAKANA_SHI, CHAR_KATAKANA_TSU, CHAR_KATAKANA_BU, CHAR_KATAKANA_TE, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_MISDREAVUS,
        .form = 0,
        .item = ITEM_BRIGHTPOWDER,
        .moves = { MOVE_PAIN_SPLIT, MOVE_SHADOW_BALL, MOVE_CONFUSE_RAY, MOVE_THUNDER_WAVE },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_MU, CHAR_KATAKANA_U, CHAR_KATAKANA_MA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_BAGON,
        .form = 0,
        .item = ITEM_LUM_BERRY,
        .moves = { MOVE_DRAGON_BREATH, MOVE_HEADBUTT, MOVE_BRICK_BREAK, MOVE_SCARY_FACE },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_TA, CHAR_KATAKANA_TSU, CHAR_KATAKANA_BE, CHAR_KATAKANA_I, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_HOUNDOUR,
        .form = 0,
        .item = ITEM_CHARCOAL,
        .moves = { MOVE_CRUNCH, MOVE_EMBER, MOVE_ROAR, MOVE_PROTECT },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_DE, CHAR_KATAKANA_RU, CHAR_KATAKANA_BI, CHAR_KATAKANA_RU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        .species = SPECIES_LAIRON,
        .form = 0,
        .item = ITEM_SITRUS_BERRY,
        .moves = { MOVE_METAL_CLAW, MOVE_ROCK_TOMB, MOVE_IRON_DEFENSE, MOVE_HARDEN },
        .otID = 0x12345678,
        .personality = 0x98765432,
        .hpIV = MAX_IVS_SINGLE_STAT,
        .atkIV = MAX_IVS_SINGLE_STAT,
        .defIV = MAX_IVS_SINGLE_STAT,
        .speedIV = MAX_IVS_SINGLE_STAT,
        .spAtkIV = MAX_IVS_SINGLE_STAT,
        .spDefIV = MAX_IVS_SINGLE_STAT,
        .setSpeciesAsNickname = 0,
        .hpEV = 32,
        .atkEV = 32,
        .defEV = 32,
        .speedEV = 32,
        .spAtkEV = 32,
        .spDefEV = 32,
        .move0PPUps = 0,
        .move1PPUps = 0,
        .move2PPUps = 0,
        .move3PPUps = 0,
        .language = 0,
        .ability = 0,
        .friendship = MAX_FRIENDSHIP_VALUE,
        .nickname = { CHAR_KATAKANA_KO, CHAR_KATAKANA_DO, CHAR_KATAKANA_RA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    }
};

const FrontierTrainer sDummyFrontierTrainers[] = {
    {
        .trainerID = 0x12345678,
        .trainerType = 0x2,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_1, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x0, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        .trainerID = 0x12345678,
        .trainerType = 0x9,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_2, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x3, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        .trainerID = 0x12345678,
        .trainerType = 0xB,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_3, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x6, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        .trainerID = 0x12345678,
        .trainerType = 0x1E,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_4, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x9, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        .trainerID = 0x12345678,
        .trainerType = CHAR_KATAKANA_I,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_5, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0xC, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        .trainerID = 0x12345678,
        .trainerType = 0x50,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_6, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0xF, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        .trainerID = 0x12345678,
        .trainerType = 0x1D,
        .unk_06 = 0x0,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_7, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x12, 0x0, 0x0 },
        .winMsg = { 0xFFFF, 0x1, 0x0, 0x0 },
        .loseMsg = { 0xFFFF, 0x2, 0x0, 0x0 },
    },
};

typedef struct {
    u16 unk_00;
    u8 unk_02[4];
} UnkStruct_ov104_0223FCB4;

static const UnkStruct_ov104_0223FCB4 Unk_ov104_0223FCB4[] = {
    {
        0x4,
        { 0x0, 0x1, 0x2, 0x3 },
    },
    {
        0x14,
        { 0x2, 0x3, 0x4, 0x5 },
    },
    {
        0x9,
        { 0x4, 0x6, 0x6, 0x7 },
    },
    {
        0xA,
        { 0x6, 0x7, 0x8, 0x9 },
    },
    {
        0x23,
        { 0x8, 0x9, 0xA, 0xB },
    },
    {
        0xD,
        { 0xB, 0xC, 0xD, 0xE },
    },
    {
        0x11,
        { 0xD, 0xE, 0xF, 0x10 },
    },
};

void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *dto);
void BattleTower_CreateWiFiTrainerParty(SaveData *saveData, FrontierOpponent *dto, const u8 opponentID);
void ov104_0223A734(BattleTower *battleTower, u16 param1);
u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1);
int BattleTower_GetPokemonDataNarcID(u8 challengeMode);
int BattleFrontier_GetTrainerDataNarcID(u8 challengeMode);
int BattleTower_GetTrainerMessagesBankID(u8 challengeMode);
static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, FrontierTrainerBase *trData, u16 battleTowerTrainerID, FrontierPokemon *monDataDTO, u8 partySize, u16 *species, u16 *items, BattleTowerPartnerData *param7, enum HeapID heapID);
static void BattleTower_CreateDummyWiFiTrainer(FrontierOpponent *dto, const u8 opponentID);
static u32 BattleTower_CopySetToPokemonDataDTO(BattleTower *battleTower, FrontierPokemon *monDataDTO, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, enum HeapID heapID);
static u32 BattleTower_GetBattleTypeFromChallengeMode(u8 challengeMode);
static void FieldBattleDTO_InitBattleTowerTrainer(FieldBattleDTO *battleDTO, FrontierOpponent *frontierDTO, int partySize, int battlerId, enum HeapID heapID);
static int BattleTower_AreAllConnectedGamesPlatinum(u8 challengeMode);

BOOL BattleTower_CreateTrainerParty(BattleTower *battleTower, FrontierOpponent *opponentDataDTO, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, BattleTowerPartnerData *param6, enum HeapID heapID)
{
    BOOL v0 = 0;
    FrontierTrainerBase *trData = BattleFrontier_GetTrainer(&opponentDataDTO->trainer, battleTowerTrainerID, heapID, BattleFrontier_GetTrainerDataNarcID(battleTower->challengeMode));
    v0 = BattleTower_CreateRandomTrainerParty(battleTower, trData, battleTowerTrainerID, &opponentDataDTO->pokemon[0], partySize, species, items, param6, heapID);

    Heap_Free(trData);

    return v0;
}

static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, FrontierTrainerBase *trData, u16 battleTowerTrainerID, FrontierPokemon *monDataDTO, u8 partySize, u16 *species, u16 *items, BattleTowerPartnerData *param7, enum HeapID heapID)
{
    int i;
    u8 ivs;
    u8 random;
    u32 v4;
    int setID;
    int setIDs[BT_DOUBLES_PARTY_SIZE];
    u32 personalities[BT_DOUBLES_PARTY_SIZE];
    int partyIndex;
    int dupeItemFailsafeCount;
    BOOL giveReservedItem = 0;
    FrontierPokemonBase monDataPrev;
    FrontierPokemonBase monDataCurr;

    GF_ASSERT(partySize <= BT_DOUBLES_PARTY_SIZE);

    partyIndex = 0;
    dupeItemFailsafeCount = 0;

    while (partyIndex != partySize) {
        random = BattleTower_GetRandom(battleTower) % trData->numSets;
        setID = trData->setIDs[random];

        BattleFrontier_GetPokemonBase(&monDataCurr, setID, BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

        for (i = 0; i < partyIndex; i++) {
            BattleFrontier_GetPokemonBase(&monDataPrev, setIDs[i], BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

            if (monDataPrev.species == monDataCurr.species) {
                break;
            }
        }

        if (i != partyIndex) {
            continue;
        }

        if (species != NULL) {
            for (i = 0; i < partySize; i++) {
                if (species[i] == monDataCurr.species) {
                    break;
                }
            }

            if (i != partySize) {
                continue;
            }
        }

        if (dupeItemFailsafeCount < 50) {
            for (i = 0; i < partyIndex; i++) {
                BattleFrontier_GetPokemonBase(&monDataPrev, setIDs[i], BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

                if (monDataPrev.item && monDataPrev.item == monDataCurr.item) {
                    break;
                }
            }

            if (i != partyIndex) {
                dupeItemFailsafeCount++;
                continue;
            }

            if (items != NULL) {
                for (i = 0; i < partySize; i++) {
                    if (items[i] == monDataCurr.item && items[i] != 0) {
                        break;
                    }
                }

                if (i != partySize) {
                    dupeItemFailsafeCount++;
                    continue;
                }
            }
        }

        setIDs[partyIndex] = setID;
        partyIndex++;
    }

    ivs = BattleTower_GetIVsFromTrainerID(battleTowerTrainerID);
    v4 = BattleTower_GetRandom(battleTower) | (BattleTower_GetRandom(battleTower) << 16);

    if (dupeItemFailsafeCount >= 50) {
        giveReservedItem = TRUE;
    }

    for (i = 0; i < partyIndex; i++) {
        personalities[i] = BattleTower_CopySetToPokemonDataDTO(battleTower, &(monDataDTO[i]), setIDs[i], v4, 0, ivs, i, giveReservedItem, heapID);
    }

    if (param7 == NULL) {
        return giveReservedItem;
    }

    param7->otID = v4;

    for (i = 0; i < 2; i++) {
        param7->monSetIDs[i] = setIDs[i];
        param7->personalities[i] = personalities[i];
    }

    return giveReservedItem;
}

void BattleTower_CreateWiFiTrainerParty(SaveData *saveData, FrontierOpponent *oppponent, const u8 opponentID)
{
    MI_CpuClear8(oppponent, sizeof(FrontierOpponent));

    WifiBattleTowerDownloadData *v1 = SaveData_GetWifiBattleTowerDownloadData(saveData);

    if (!WifiBattleTowerDownloadData_HasOpponentData(v1)) {
        BattleTower_CreateDummyWiFiTrainer(oppponent, opponentID);
        return;
    }

    WifiBattleTowerDownloadData_BuildOpponent(v1, oppponent, opponentID);
}

static void BattleTower_CreateDummyWiFiTrainer(FrontierOpponent *opponent, const u8 opponentID)
{
    int i;
    MI_CpuClear8(opponent, sizeof(FrontierOpponent));

    const FrontierTrainer *trainer = &(sDummyFrontierTrainers[opponentID]);
    const FrontierPokemon *mons = sDummyFrontierPokemon;
    const UnkStruct_ov104_0223FCB4 *v3 = &(Unk_ov104_0223FCB4[opponentID]);

    MI_CpuCopy8(trainer, &opponent->trainer, sizeof(FrontierTrainer));
    opponent->trainer.unk_06 = v3->unk_00;

    for (i = 0; i < 4; i++) {
        MI_CpuCopy8(&(mons[v3->unk_02[i]]), &(opponent->pokemon[i]), sizeof(FrontierPokemon));
    }
}

static const u16 sBattleTowerReservedItems[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW,
};

static u32 BattleTower_CopySetToPokemonDataDTO(BattleTower *battleTower, FrontierPokemon *monDataDTO, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, enum HeapID heapID)
{
    int v0;
    int evs;
    u32 randomPersonality;
    FrontierPokemonBase monData;

    MI_CpuClear8(monDataDTO, sizeof(FrontierPokemon));
    BattleFrontier_GetPokemonBase(&monData, setID, BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

    monDataDTO->species = monData.species;
    monDataDTO->form = monData.form;

    if (giveReservedItem) {
        monDataDTO->item = sBattleTowerReservedItems[partyIndex];
    } else {
        monDataDTO->item = monData.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        monDataDTO->moves[v0] = monData.moves[v0];

        if (monData.moves[v0] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    monDataDTO->otID = otID;

    if (givenPersonality == 0) {
        do {
            randomPersonality = BattleTower_GetRandom(battleTower) | BattleTower_GetRandom(battleTower) << 16;
        } while (monData.nature != Pokemon_GetNatureOf(randomPersonality) || Pokemon_IsPersonalityShiny(otID, randomPersonality) == 1);

        monDataDTO->personality = randomPersonality;
    } else {
        monDataDTO->personality = givenPersonality;
        randomPersonality = givenPersonality;
    }

    monDataDTO->hpIV = ivs;
    monDataDTO->atkIV = ivs;
    monDataDTO->defIV = ivs;
    monDataDTO->speedIV = ivs;
    monDataDTO->spAtkIV = ivs;
    monDataDTO->spDefIV = ivs;

    evs = 0;

    for (v0 = 0; v0 < STAT_MAX; v0++) {
        if (monData.evFlags & FlagIndex(v0)) {
            evs++;
        }
    }

    if (MAX_EVS_ALL_STATS / evs > MAX_EVS_SINGLE_STAT) {
        evs = MAX_EVS_SINGLE_STAT;
    } else {
        evs = MAX_EVS_ALL_STATS / evs;
    }

    for (v0 = 0; v0 < STAT_MAX; v0++) {
        if (monData.evFlags & FlagIndex(v0)) {
            monDataDTO->evList[v0] = evs;
        }
    }

    monDataDTO->combinedPPUps = 0;
    monDataDTO->language = gGameLanguage;

    v0 = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_2);

    if (v0) {
        if (monDataDTO->personality & 1) {
            monDataDTO->ability = v0;
        } else {
            monDataDTO->ability = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        monDataDTO->ability = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_1);
    }

    monDataDTO->friendship = friendship;
    MessageLoader_GetSpeciesName(monDataDTO->species, heapID, &(monDataDTO->nickname[0]));

    return randomPersonality;
}

FieldBattleDTO *FieldBattleDTO_NewBattleTower(BattleTower *battleTower, FieldFrontierDTO *fieldData)
{
    int i;

    FieldBattleDTO *dto = FieldBattleDTO_New(battleTower->heapID, BattleTower_GetBattleTypeFromChallengeMode(battleTower->challengeMode));
    SaveData *saveData = fieldData->saveData;
    Party *party = SaveData_GetParty(saveData);

    FieldBattleDTO_InitFromGameState(dto, NULL, fieldData->saveData, fieldData->mapHeaderID, fieldData->journalEntry, fieldData->bagCursor, fieldData->subscreenCursorOn);

    dto->background = BACKGROUND_BATTLE_TOWER;
    dto->terrain = TERRAIN_BATTLE_TOWER;

    Pokemon *mon = Pokemon_New(battleTower->heapID);
    u8 level = 50;

    Party_InitWithCapacity(dto->parties[BATTLER_PLAYER_1], battleTower->partySize);

    for (i = 0; i < battleTower->partySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(party, battleTower->unk_2A[i]), mon);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) > level) {
            u32 exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);

            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
            Pokemon_CalcLevelAndStats(mon);
        }

        FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);

    FieldBattleDTO_InitBattleTowerTrainer(dto, &(battleTower->opponentsDataDTO[0]), battleTower->partySize, BATTLER_ENEMY_1, battleTower->heapID);

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->trainer[i].header.aiMask = AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
    }

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_MULTI:
        FieldBattleDTO_InitBattleTowerTrainer(dto, &(battleTower->partnersDataDTO[battleTower->partnerID]), battleTower->partySize, BATTLER_PLAYER_2, battleTower->heapID);
        // fall through
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        FieldBattleDTO_InitBattleTowerTrainer(dto, &(battleTower->opponentsDataDTO[1]), battleTower->partySize, BATTLER_ENEMY_2, battleTower->heapID);
        break;
    default:
        break;
    }

    return dto;
}

static void FieldBattleDTO_InitBattleTowerTrainer(FieldBattleDTO *battleDTO, FrontierOpponent *frontierDTO, int partySize, int battlerId, enum HeapID heapID)
{
    FieldBattleDTO_InitFrontierTrainer(battleDTO, &frontierDTO->trainer, partySize, battlerId, heapID);
    Pokemon *mon = Pokemon_New(heapID);

    for (int i = 0; i < partySize; i++) {
        FrontierPokemon_InitPokemon(&frontierDTO->pokemon[i], mon, 120);
        Party_AddPokemon(battleDTO->parties[battlerId], mon);
    }

    Heap_Free(mon);
}

static u32 BattleTower_GetBattleTypeFromChallengeMode(u8 challengeMode)
{
    switch (challengeMode) {
    case BATTLE_TOWER_MODE_SINGLE:
    case BATTLE_TOWER_MODE_WIFI:
        return BATTLE_TYPE_FRONTIER_SINGLES;
    case BATTLE_TOWER_MODE_DOUBLE:
        return BATTLE_TYPE_FRONTIER_DOUBLES;
    case BATTLE_TOWER_MODE_MULTI:
        return BATTLE_TYPE_FRONTIER_WITH_AI_PARTNER;
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        return BATTLE_TYPE_FRONTIER_LINK | BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2;
    }

    return BATTLE_TYPE_FRONTIER_SINGLES;
}

void ov104_0223A734(BattleTower *battleTower, u16 param1)
{
    battleTower->unk_10_3 = param1;
    battleTower->unk_83E[0] = param1;
}

u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1)
{
    int v0;

    if (battleTower->unk_10_3 || param1[0]) {
        return 1;
    }

    return 0;
}

int BattleTower_GetPokemonDataNarcID(u8 challengeMode)
{
    if (BattleTower_AreAllConnectedGamesPlatinum(challengeMode) == FALSE) {
        return NARC_INDEX_BATTLE__B_TOWER__BTDPM;
    }

    return NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM;
}

int BattleFrontier_GetTrainerDataNarcID(u8 challengeMode)
{
    if (BattleTower_AreAllConnectedGamesPlatinum(challengeMode) == FALSE) {
        return NARC_INDEX_BATTLE__B_TOWER__BTDTR;
    }

    return NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR;
}

int BattleTower_GetTrainerMessagesBankID(u8 challengeMode)
{
    if (BattleTower_AreAllConnectedGamesPlatinum(challengeMode) == FALSE) {
        return TEXT_BANK_UNK_0613;
    }

    return TEXT_BANK_FRONTIER_TRAINER_MESSAGES;
}

static int BattleTower_AreAllConnectedGamesPlatinum(u8 challengeMode)
{
    switch (challengeMode) {
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        TrainerInfo *v0 = CommInfo_TrainerInfo(0);

        if (v0 == NULL) {
            GF_ASSERT(FALSE);
        }

        TrainerInfo *v1 = CommInfo_TrainerInfo(1);

        if (v1 == NULL) {
            GF_ASSERT(FALSE);
        }

        u8 v2 = TrainerInfo_GameCode(v0);
        u8 v3 = TrainerInfo_GameCode(v1);

        if (v2 == 0 || v3 == 0) {
            return FALSE;
        }

        return TRUE;
    }

    return TRUE;
}

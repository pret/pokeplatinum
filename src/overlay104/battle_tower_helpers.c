#include "overlay104/battle_tower_helpers.h"

#include <nitro.h>

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

#include "battle_tower.h"
#include "battle_tower_save.h"
#include "communication_information.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_info.h"

#define DUMMY_MON_DATA              \
    .otID = 0x12345678,             \
    .form = 0,                      \
    .personality = 0x98765432,      \
    .hpIV = MAX_IVS_SINGLE_STAT,    \
    .atkIV = MAX_IVS_SINGLE_STAT,   \
    .defIV = MAX_IVS_SINGLE_STAT,   \
    .speedIV = MAX_IVS_SINGLE_STAT, \
    .spAtkIV = MAX_IVS_SINGLE_STAT, \
    .spDefIV = MAX_IVS_SINGLE_STAT, \
    .setSpeciesAsNickname = 0,      \
    .hpEV = 32,                     \
    .atkEV = 32,                    \
    .defEV = 32,                    \
    .speedEV = 32,                  \
    .spAtkEV = 32,                  \
    .spDefEV = 32,                  \
    .move0PPUps = 0,                \
    .move1PPUps = 0,                \
    .move2PPUps = 0,                \
    .move3PPUps = 0,                \
    .language = 0,                  \
    .ability = 0,                   \
    .friendship = MAX_FRIENDSHIP_VALUE

const FrontierPokemon sDummyFrontierPokemon[] = {
    {
        DUMMY_MON_DATA,
        .species = SPECIES_BULBASAUR,
        .item = ITEM_LEFTOVERS,
        .moves = { MOVE_VINE_WHIP, MOVE_RAZOR_LEAF, MOVE_SYNTHESIS, MOVE_SOLAR_BEAM },
        .nickname = { CHAR_KATAKANA_FU, CHAR_KATAKANA_SHI, CHAR_KATAKANA_GI, CHAR_KATAKANA_DA, CHAR_KATAKANA_NE, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_CHARMANDER,
        .item = ITEM_SHELL_BELL,
        .moves = { MOVE_EMBER, MOVE_FIRE_SPIN, MOVE_FLAMETHROWER, MOVE_FIRE_BLAST },
        .nickname = { CHAR_KATAKANA_HI, CHAR_KATAKANA_TO, CHAR_KATAKANA_KA, CHAR_KATAKANA_GE, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_SQUIRTLE,
        .item = ITEM_MYSTIC_WATER,
        .moves = { MOVE_WATER_GUN, MOVE_SURF, MOVE_WATER_PULSE, MOVE_HYDRO_PUMP },
        .nickname = { CHAR_KATAKANA_ZE, CHAR_KATAKANA_NI, CHAR_KATAKANA_GA, CHAR_KATAKANA_ME, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_SCYTHER,
        .item = ITEM_KINGS_ROCK,
        .moves = { MOVE_SILVER_WIND, MOVE_STEEL_WING, MOVE_DOUBLE_TEAM, MOVE_AIR_CUTTER },
        .nickname = { CHAR_KATAKANA_SU, CHAR_KATAKANA_TO, CHAR_KATAKANA_RA, CHAR_KATAKANA_I, CHAR_KATAKANA_KU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_SPHEAL,
        .item = ITEM_NEVERMELTICE,
        .moves = { MOVE_ICE_BALL, MOVE_WATER_PULSE, MOVE_HAIL, MOVE_MUD_SLAP },
        .nickname = { CHAR_KATAKANA_TA, CHAR_KATAKANA_MA, CHAR_KATAKANA_ZA, CHAR_KATAKANA_RA, CHAR_KATAKANA_SHI, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_MAGNEMITE,
        .item = ITEM_ASPEAR_BERRY,
        .moves = { MOVE_SHOCK_WAVE, MOVE_SUPERSONIC, MOVE_METAL_SOUND, MOVE_REFLECT },
        .nickname = { CHAR_KATAKANA_KO, CHAR_KATAKANA_I, CHAR_KATAKANA_RU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_SKITTY,
        .item = ITEM_QUICK_CLAW,
        .moves = { MOVE_SING, MOVE_FAKE_TEARS, MOVE_CHARM, MOVE_DOUBLE_SLAP },
        .nickname = { CHAR_KATAKANA_E, CHAR_KATAKANA_NE, CHAR_KATAKANA_KO, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_MAKUHITA,
        .item = ITEM_SCOPE_LENS,
        .moves = { MOVE_FAKE_OUT, MOVE_SEISMIC_TOSS, MOVE_DETECT, MOVE_WHIRLWIND },
        .nickname = { CHAR_KATAKANA_MA, CHAR_KATAKANA_KU, CHAR_KATAKANA_NO, CHAR_KATAKANA_SHI, CHAR_KATAKANA_TA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_SPINARAK,
        .item = ITEM_LIECHI_BERRY,
        .moves = { MOVE_SIGNAL_BEAM, MOVE_NIGHT_SHADE, MOVE_SPIDER_WEB, MOVE_SCARY_FACE },
        .nickname = { CHAR_KATAKANA_I, CHAR_KATAKANA_TO, CHAR_KATAKANA_MA, CHAR_KATAKANA_RU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_SANDSHREW,
        .item = ITEM_SOFT_SAND,
        .moves = { MOVE_DIG, MOVE_ROCK_TOMB, MOVE_SANDSTORM, MOVE_SAND_ATTACK },
        .nickname = { CHAR_KATAKANA_SA, CHAR_KATAKANA_N, CHAR_KATAKANA_DO, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_TAILLOW,
        .item = ITEM_SALAC_BERRY,
        .moves = { MOVE_FLY, MOVE_QUICK_ATTACK, MOVE_ENDEAVOR, MOVE_FOCUS_ENERGY },
        .nickname = { CHAR_KATAKANA_SU, CHAR_KATAKANA_BA, CHAR_KATAKANA_ME, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_EXEGGCUTE,
        .item = ITEM_PECHA_BERRY,
        .moves = { MOVE_CONFUSION, MOVE_ANCIENT_POWER, MOVE_LEECH_SEED, MOVE_LIGHT_SCREEN },
        .nickname = { CHAR_KATAKANA_TA, CHAR_KATAKANA_MA, CHAR_KATAKANA_TA, CHAR_KATAKANA_MA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_GEODUDE,
        .item = ITEM_FOCUS_BAND,
        .moves = { MOVE_MAGNITUDE, MOVE_ROCK_BLAST, MOVE_STRENGTH, MOVE_PROTECT },
        .nickname = { CHAR_KATAKANA_I, CHAR_KATAKANA_SHI, CHAR_KATAKANA_TSU, CHAR_KATAKANA_BU, CHAR_KATAKANA_TE, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_MISDREAVUS,
        .item = ITEM_BRIGHTPOWDER,
        .moves = { MOVE_PAIN_SPLIT, MOVE_SHADOW_BALL, MOVE_CONFUSE_RAY, MOVE_THUNDER_WAVE },
        .nickname = { CHAR_KATAKANA_MU, CHAR_KATAKANA_U, CHAR_KATAKANA_MA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_BAGON,
        .item = ITEM_LUM_BERRY,
        .moves = { MOVE_DRAGON_BREATH, MOVE_HEADBUTT, MOVE_BRICK_BREAK, MOVE_SCARY_FACE },
        .nickname = { CHAR_KATAKANA_TA, CHAR_KATAKANA_TSU, CHAR_KATAKANA_BE, CHAR_KATAKANA_I, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_HOUNDOUR,
        .item = ITEM_CHARCOAL,
        .moves = { MOVE_CRUNCH, MOVE_EMBER, MOVE_ROAR, MOVE_PROTECT },
        .nickname = { CHAR_KATAKANA_DE, CHAR_KATAKANA_RU, CHAR_KATAKANA_BI, CHAR_KATAKANA_RU, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    },
    {
        DUMMY_MON_DATA,
        .species = SPECIES_LAIRON,
        .item = ITEM_SITRUS_BERRY,
        .moves = { MOVE_METAL_CLAW, MOVE_ROCK_TOMB, MOVE_IRON_DEFENSE, MOVE_HARDEN },
        .nickname = { CHAR_KATAKANA_KO, CHAR_KATAKANA_DO, CHAR_KATAKANA_RA, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS, CHAR_EOS },
    }
};

#define DUMMY_TRAINER_DATA         \
    .trainerID = 0x12345678,       \
    .objectID = 0,                 \
    .winMsg = { 0xFFFF, 1, 0, 0 }, \
    .loseMsg = { 0xFFFF, 2, 0, 0 }

const FrontierTrainer sDummyFrontierTrainers[] = {
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_YOUNGSTER,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_1, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x0, 0x0, 0x0 },
    },
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_HIKER,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_2, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x3, 0x0, 0x0 },
    },
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_FISHERMAN,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_3, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x6, 0x0, 0x0 },
    },
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_BIRD_KEEPER,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_4, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x9, 0x0, 0x0 },
    },
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_IDOL,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_5, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0xC, 0x0, 0x0 },
    },
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_PARASOL_LADY,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_6, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0xF, 0x0, 0x0 },
    },
    {
        DUMMY_TRAINER_DATA,
        .trainerType = TRAINER_CLASS_DRAGON_TAMER,
        .trainerName = { CHAR_KATAKANA_DA, CHAR_KATAKANA_MI, CHAR_WIDE_MINUS, CHAR_WIDE_0, CHAR_WIDE_7, CHAR_EOS, CHAR_EOS, CHAR_EOS },
        .introMsg = { 0xFFFF, 0x12, 0x0, 0x0 },
    },
};

typedef struct {
    u16 objectID;
    u8 mons[4];
} BattleTowerDummyTrainer;

static const BattleTowerDummyTrainer sDummyTrainerParties[] = {
    { OBJ_EVENT_GFX_YOUNGSTER, { 0, 1, 2, 3 } },
    { OBJ_EVENT_GFX_HIKER, { 2, 3, 4, 5 } },
    { OBJ_EVENT_GFX_POKEMON_BREEDER_M, { 4, 6, 6, 7 } },
    { OBJ_EVENT_GFX_GUITARIST, { 6, 7, 8, 9 } },
    { OBJ_EVENT_GFX_IDOL, { 8, 9, 10, 11 } },
    { OBJ_EVENT_GFX_BEAUTY, { 11, 12, 13, 14 } },
    { OBJ_EVENT_GFX_EXPERT_M, { 13, 14, 15, 16 } },
};

void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *dto);
void BattleTower_CreateWiFiTrainerParty(SaveData *saveData, FrontierOpponent *dto, const u8 opponentID);
void BattleTower_SetIsRetiringFlag(BattleTower *battleTower, u16 param1);
u16 BattleTower_CheckIsRetiring(BattleTower *battleTower, const u16 *param1);
int BattleTower_GetPokemonDataNarcID(u8 challengeMode);
int BattleFrontier_GetTrainerDataNarcID(u8 challengeMode);
int BattleTower_GetTrainerMessagesBankID(u8 challengeMode);
static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, FrontierTrainerBase *trData, u16 battleTowerTrainerID, FrontierPokemon *mon, u8 partySize, u16 *species, u16 *items, BattleTowerPartnerData *trainer, enum HeapID heapID);
static void BattleTower_CreateDummyWiFiTrainer(FrontierOpponent *opponent, const u8 opponentID);
static u32 BattleTower_InitFrontierPokemon(BattleTower *battleTower, FrontierPokemon *mon, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, enum HeapID heapID);
static u32 BattleTower_GetBattleTypeFromChallengeMode(u8 challengeMode);
static void FieldBattleDTO_InitBattleTowerTrainer(FieldBattleDTO *battleDTO, FrontierOpponent *opponent, int partySize, int battlerId, enum HeapID heapID);
static int BattleTower_AreAllConnectedGamesPlatinum(u8 challengeMode);

BOOL BattleTower_CreateTrainerParty(BattleTower *battleTower, FrontierOpponent *opponent, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, BattleTowerPartnerData *trainer, enum HeapID heapID)
{
    BOOL gaveReservedItem = 0;
    FrontierTrainerBase *trData = BattleFrontier_GetTrainer(&opponent->trainer, battleTowerTrainerID, heapID, BattleFrontier_GetTrainerDataNarcID(battleTower->challengeMode));
    gaveReservedItem = BattleTower_CreateRandomTrainerParty(battleTower, trData, battleTowerTrainerID, &opponent->pokemon[0], partySize, species, items, trainer, heapID);

    Heap_Free(trData);

    return gaveReservedItem;
}

static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, FrontierTrainerBase *trData, u16 battleTowerTrainerID, FrontierPokemon *mon, u8 partySize, u16 *species, u16 *items, BattleTowerPartnerData *trainer, enum HeapID heapID)
{
    int i;
    u8 ivs;
    u8 random;
    u32 otID;
    int setID;
    int setIDs[BT_DOUBLES_PARTY_SIZE];
    u32 personalities[BT_DOUBLES_PARTY_SIZE];
    int partyIndex;
    int dupeItemFailsafeCount;
    BOOL giveReservedItem = FALSE;
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
    otID = BattleTower_GetRandom(battleTower) | (BattleTower_GetRandom(battleTower) << 16);

    if (dupeItemFailsafeCount >= 50) {
        giveReservedItem = TRUE;
    }

    for (i = 0; i < partyIndex; i++) {
        personalities[i] = BattleTower_InitFrontierPokemon(battleTower, &mon[i], setIDs[i], otID, 0, ivs, i, giveReservedItem, heapID);
    }

    if (trainer == NULL) {
        return giveReservedItem;
    }

    trainer->otID = otID;

    for (i = 0; i < 2; i++) {
        trainer->monSetIDs[i] = setIDs[i];
        trainer->personalities[i] = personalities[i];
    }

    return giveReservedItem;
}

void BattleTower_CreateWiFiTrainerParty(SaveData *saveData, FrontierOpponent *oppponent, const u8 opponentID)
{
    MI_CpuClear8(oppponent, sizeof(FrontierOpponent));

    WifiBattleTowerDownloadData *wifiTowerData = SaveData_GetWifiBattleTowerDownloadData(saveData);

    if (!WifiBattleTowerDownloadData_HasOpponentData(wifiTowerData)) {
        BattleTower_CreateDummyWiFiTrainer(oppponent, opponentID);
        return;
    }

    WifiBattleTowerDownloadData_BuildOpponent(wifiTowerData, oppponent, opponentID);
}

static void BattleTower_CreateDummyWiFiTrainer(FrontierOpponent *opponent, const u8 opponentID)
{
    int i;
    MI_CpuClear8(opponent, sizeof(FrontierOpponent));

    const FrontierTrainer *trainer = &(sDummyFrontierTrainers[opponentID]);
    const FrontierPokemon *sDummyMons = sDummyFrontierPokemon;
    const BattleTowerDummyTrainer *sDummyTrainers = &sDummyTrainerParties[opponentID];

    MI_CpuCopy8(trainer, &opponent->trainer, sizeof(FrontierTrainer));
    opponent->trainer.objectID = sDummyTrainers->objectID;

    for (i = 0; i < 4; i++) {
        MI_CpuCopy8(&sDummyMons[sDummyTrainers->mons[i]], &opponent->pokemon[i], sizeof(FrontierPokemon));
    }
}

static const u16 sBattleTowerReservedItems[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW,
};

static u32 BattleTower_InitFrontierPokemon(BattleTower *battleTower, FrontierPokemon *mon, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, enum HeapID heapID)
{
    int i;
    int evs;
    u32 randomPersonality;
    FrontierPokemonBase monBase;

    MI_CpuClear8(mon, sizeof(FrontierPokemon));
    BattleFrontier_GetPokemonBase(&monBase, setID, BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

    mon->species = monBase.species;
    mon->form = monBase.form;

    if (giveReservedItem) {
        mon->item = sBattleTowerReservedItems[partyIndex];
    } else {
        mon->item = monBase.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        mon->moves[i] = monBase.moves[i];

        if (monBase.moves[i] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    mon->otID = otID;

    if (givenPersonality == 0) {
        do {
            randomPersonality = BattleTower_GetRandom(battleTower) | BattleTower_GetRandom(battleTower) << 16;
        } while (monBase.nature != Pokemon_GetNatureOf(randomPersonality) || Pokemon_IsPersonalityShiny(otID, randomPersonality) == 1);

        mon->personality = randomPersonality;
    } else {
        mon->personality = givenPersonality;
        randomPersonality = givenPersonality;
    }

    mon->hpIV = ivs;
    mon->atkIV = ivs;
    mon->defIV = ivs;
    mon->speedIV = ivs;
    mon->spAtkIV = ivs;
    mon->spDefIV = ivs;

    evs = 0;

    for (i = 0; i < STAT_MAX; i++) {
        if (monBase.evFlags & FlagIndex(i)) {
            evs++;
        }
    }

    if (MAX_EVS_ALL_STATS / evs > MAX_EVS_SINGLE_STAT) {
        evs = MAX_EVS_SINGLE_STAT;
    } else {
        evs = MAX_EVS_ALL_STATS / evs;
    }

    for (i = 0; i < STAT_MAX; i++) {
        if (monBase.evFlags & FlagIndex(i)) {
            mon->evList[i] = evs;
        }
    }

    mon->combinedPPUps = 0;
    mon->language = gGameLanguage;

    i = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_2);

    if (i) {
        if (mon->personality & 1) {
            mon->ability = i;
        } else {
            mon->ability = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        mon->ability = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_1);
    }

    mon->friendship = friendship;
    MessageLoader_GetSpeciesName(mon->species, heapID, &(mon->nickname[0]));

    return randomPersonality;
}

FieldBattleDTO *BattleTower_SetupBattle(BattleTower *battleTower, FieldFrontierDTO *fieldData)
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
        Pokemon_Copy(Party_GetPokemonBySlotIndex(party, battleTower->partySlots[i]), mon);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) > level) {
            u32 exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);

            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
            Pokemon_CalcLevelAndStats(mon);
        }

        FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);

    FieldBattleDTO_InitBattleTowerTrainer(dto, &(battleTower->opponents[0]), battleTower->partySize, BATTLER_ENEMY_1, battleTower->heapID);

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->trainer[i].header.aiMask = AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
    }

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_MULTI:
        FieldBattleDTO_InitBattleTowerTrainer(dto, &(battleTower->partners[battleTower->partnerID]), battleTower->partySize, BATTLER_PLAYER_2, battleTower->heapID);
        // fall through
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        FieldBattleDTO_InitBattleTowerTrainer(dto, &(battleTower->opponents[1]), battleTower->partySize, BATTLER_ENEMY_2, battleTower->heapID);
        break;
    default:
        break;
    }

    return dto;
}

static void FieldBattleDTO_InitBattleTowerTrainer(FieldBattleDTO *battleDTO, FrontierOpponent *opponent, int partySize, int battlerId, enum HeapID heapID)
{
    FieldBattleDTO_InitFrontierTrainer(battleDTO, &opponent->trainer, partySize, battlerId, heapID);
    Pokemon *mon = Pokemon_New(heapID);

    for (int i = 0; i < partySize; i++) {
        FrontierPokemon_InitPokemon(&opponent->pokemon[i], mon, 120);
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

void BattleTower_SetIsRetiringFlag(BattleTower *battleTower, u16 isRetiring)
{
    battleTower->isRetiring = isRetiring;
    battleTower->commPayload[0] = isRetiring;
}

u16 BattleTower_CheckIsRetiring(BattleTower *battleTower, const u16 *payload)
{
    if (battleTower->isRetiring || payload[0]) {
        return TRUE;
    }
    return FALSE;
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
    case BATTLE_TOWER_MODE_6: {
        TrainerInfo *hostInfo = CommInfo_TrainerInfo(0);

        if (hostInfo == NULL) {
            GF_ASSERT(FALSE);
        }

        TrainerInfo *partnerInfo = CommInfo_TrainerInfo(1);

        if (partnerInfo == NULL) {
            GF_ASSERT(FALSE);
        }

        u8 hostGame = TrainerInfo_GameCode(hostInfo);
        u8 partnerGame = TrainerInfo_GameCode(partnerInfo);

        if (hostGame == 0 || partnerGame == 0) {
            return FALSE;
        }

        return TRUE;
    }
    }

    return TRUE;
}

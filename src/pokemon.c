#include "pokemon.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
#include "constants/flavor.h"
#include "constants/forms.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/narc.h"
#include "constants/pokemon.h"
#include "constants/sound.h"
#include "generated/abilities.h"
#include "generated/evolution_methods.h"
#include "generated/exp_rates.h"
#include "generated/gender_ratios.h"
#include "generated/genders.h"
#include "generated/natures.h"
#include "generated/species_data_params.h"

#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/mail.h"
#include "struct_defs/poke_animation_settings.h"
#include "struct_defs/seal_case.h"
#include "struct_defs/species_sprite_data.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02078B40.h"

#include "overlay005/struct_ov5_021DE5D0.h"

#include "charcode_util.h"
#include "flags.h"
#include "heap.h"
#include "inlines.h"
#include "item.h"
#include "mail.h"
#include "math_util.h"
#include "message.h"
#include "message_util.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon_sprite.h"
#include "rtc.h"
#include "sound_chatot.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_02015F84.h"
#include "unk_02017038.h"
#include "unk_0202C9F4.h"
#include "unk_02092494.h"

#define FATEFUL_ENCOUNTER_LOCATION 3002

static const s8 sNatureFlavorAffinities[][5] = {
    [NATURE_HARDY] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_LONELY] = {
        [FLAVOR_SPICY] = 1,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = -1,
    },
    [NATURE_BRAVE] = {
        [FLAVOR_SPICY] = 1,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = -1,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_ADAMANT] = {
        [FLAVOR_SPICY] = 1,
        [FLAVOR_DRY] = -1,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_NAUGHTY] = {
        [FLAVOR_SPICY] = 1,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = -1,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_BOLD] = {
        [FLAVOR_SPICY] = -1,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 1,
    },
    [NATURE_DOCILE] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_RELAXED] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = -1,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 1,
    },
    [NATURE_IMPISH] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = -1,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 1,
    },
    [NATURE_LAX] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = -1,
        [FLAVOR_SOUR] = 1,
    },
    [NATURE_TIMID] = {
        [FLAVOR_SPICY] = -1,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 1,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_HASTY] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 1,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = -1,
    },
    [NATURE_SERIOUS] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_JOLLY] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = -1,
        [FLAVOR_SWEET] = 1,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_NAIVE] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 1,
        [FLAVOR_BITTER] = -1,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_MODEST] = {
        [FLAVOR_SPICY] = -1,
        [FLAVOR_DRY] = 1,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_MILD] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 1,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = -1,
    },
    [NATURE_QUIET] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 1,
        [FLAVOR_SWEET] = -1,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_BASHFUL] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_RASH] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 1,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = -1,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_CALM] = {
        [FLAVOR_SPICY] = -1,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 1,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_GENTLE] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 1,
        [FLAVOR_SOUR] = -1,
    },
    [NATURE_SASSY] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = -1,
        [FLAVOR_BITTER] = 1,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_CAREFUL] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = -1,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 1,
        [FLAVOR_SOUR] = 0,
    },
    [NATURE_QUIRKY] = {
        [FLAVOR_SPICY] = 0,
        [FLAVOR_DRY] = 0,
        [FLAVOR_SWEET] = 0,
        [FLAVOR_BITTER] = 0,
        [FLAVOR_SOUR] = 0,
    },
};

enum PokemonDataBlockID {
    DATA_BLOCK_A = 0,
    DATA_BLOCK_B,
    DATA_BLOCK_C,
    DATA_BLOCK_D
};

static void BoxPokemon_InitWith(BoxPokemon *boxMon, int species, int level, int ivs, BOOL hasFixedPersonality, u32 personality, int otIDType, u32 otID);
static u32 Pokemon_GetDataInternal(Pokemon *mon, enum PokemonDataParam param, void *dest);
static u32 BoxPokemon_GetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest);
static void Pokemon_SetDataInternal(Pokemon *mon, enum PokemonDataParam param, const void *value);
static void BoxPokemon_SetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, const void *value);
static void Pokemon_IncreaseDataInternal(Pokemon *mon, enum PokemonDataParam param, int value);
static void BoxPokemon_IncreaseDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, int value);
static u32 BoxPokemon_GetExpToNextLevel(BoxPokemon *boxMon);
static void Pokemon_LoadExperienceTableOf(enum ExpRate monExpRate, u32 *monExpTable);
static u32 Pokemon_GetExpRateBaseExpAt(enum ExpRate monExpRate, int monLevel);
static u16 Pokemon_GetNatureStatValue(u8 monNature, u16 monStatValue, u8 statType);
static u8 BoxPokemon_IsShiny(BoxPokemon *boxMon);
static inline BOOL Pokemon_InlineIsPersonalityShiny(u32 monOTID, u32 monPersonality);
static void BuildPokemonSpriteTemplateDP(PokemonSpriteTemplate *spriteTemplate, u16 monSpecies, u8 monGender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality);
static u8 LoadPokemonDPSpriteHeight(u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality);
static void BoxPokemon_SetDefaultMoves(BoxPokemon *boxMon);
static u16 BoxPokemon_AddMove(BoxPokemon *boxMon, u16 moveID);
static void BoxPokemon_ReplaceMove(BoxPokemon *boxMon, u16 moveID);
static void BoxPokemon_SetMoveSlot(BoxPokemon *boxMon, u16 moveID, u8 moveSlot);
static BOOL Pokemon_HasMove(Pokemon *mon, u16 moveID);
static s8 BoxPokemon_GetFlavorAffinity(BoxPokemon *boxMon, enum Flavor flavor);
static BOOL IsBoxPokemonInfectedWithPokerus(BoxPokemon *boxMon);
static BOOL BoxPokemonHasCuredPokerus(BoxPokemon *boxMon);
static void InitializeBoxPokemonAfterCapture(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int monPokeball, int metLocation, int metTerrain, enum HeapID heapID);
static void PostCaptureBoxPokemonProcessing(BoxPokemon *boxMon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5);
static BOOL CanBoxPokemonLearnTM(BoxPokemon *boxMon, u8 tmID);
static void BoxPokemon_CalcAbility(BoxPokemon *boxMon);
static void SpeciesData_LoadSpecies(int monSpecies, SpeciesData *speciesData);
static void SpeciesData_LoadForm(int monSpecies, int monForm, SpeciesData *speciesData);
static void LoadSpeciesEvolutions(int monSpecies, SpeciesEvolution speciesEvolution[MAX_EVOLUTIONS]);
static void Pokemon_EncryptData(void *data, u32 bytes, u32 seed);
static void Pokemon_DecryptData(void *data, u32 bytes, u32 seed);
static u16 Pokemon_GetDataChecksum(void *data, u32 bytes);
static void *BoxPokemon_GetDataBlock(BoxPokemon *boxMon, u32 personality, enum PokemonDataBlockID dataBlockID);
static int Pokemon_GetFormNarcIndex(int monSpecies, int monForm);
static inline int Pokemon_Face(int num);

void Pokemon_Init(Pokemon *mon)
{
    MI_CpuClearFast(mon, sizeof(Pokemon));
    Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
}

void BoxPokemon_Init(BoxPokemon *boxMon)
{
    MI_CpuClearFast(boxMon, sizeof(BoxPokemon));
    Pokemon_EncryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
}

int Pokemon_StructSize(void)
{
    return sizeof(Pokemon);
}

Pokemon *Pokemon_New(u32 heapID)
{
    Pokemon *mon = Heap_Alloc(heapID, sizeof(Pokemon));
    Pokemon_Init(mon);
    return mon;
}

BOOL Pokemon_EnterDecryptionContext(Pokemon *mon)
{
    BOOL wasDecrypted = FALSE;

    if (mon->box.partyDecrypted == FALSE) {
        wasDecrypted = TRUE;
        GF_ASSERT(mon->box.boxDecrypted == FALSE);

        mon->box.partyDecrypted = TRUE;
        mon->box.boxDecrypted = TRUE;

        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    return wasDecrypted;
}

BOOL Pokemon_ExitDecryptionContext(Pokemon *mon, BOOL encrypt)
{
    BOOL wasEncrypted = FALSE;

    if (mon->box.partyDecrypted == TRUE && encrypt == TRUE) {
        wasEncrypted = TRUE;
        mon->box.partyDecrypted = FALSE;
        mon->box.boxDecrypted = FALSE;

        Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        mon->box.checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
        Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    return wasEncrypted;
}

BOOL BoxPokemon_EnterDecryptionContext(BoxPokemon *boxMon)
{
    BOOL wasDecrypted = FALSE;

    if (boxMon->boxDecrypted == FALSE) {
        wasDecrypted = TRUE;
        boxMon->boxDecrypted = TRUE;
        Pokemon_DecryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }

    return wasDecrypted;
}

BOOL BoxPokemon_ExitDecryptionContext(BoxPokemon *boxMon, BOOL encrypt)
{
    BOOL wasEncrypted = FALSE;

    if (boxMon->boxDecrypted == TRUE && encrypt == TRUE) {
        wasEncrypted = TRUE;

        boxMon->boxDecrypted = FALSE;
        boxMon->checksum = Pokemon_GetDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        Pokemon_EncryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }

    return wasEncrypted;
}

void Pokemon_InitWith(Pokemon *mon, int monSpecies, int monLevel, int monIVs, BOOL useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID)
{
    Pokemon_Init(mon);

    BoxPokemon_InitWith(&mon->box, monSpecies, monLevel, monIVs, useMonPersonalityParam, monPersonality, monOTIDSource, monOTID);
    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), 0);
    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    Pokemon_SetData(mon, MON_DATA_LEVEL, &monLevel);

    Mail *mail = Mail_New(HEAP_ID_SYSTEM);

    Pokemon_SetData(mon, MON_DATA_MAIL, mail);
    Heap_Free(mail);

    u32 zero = 0;
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE_ID, &zero);

    BallCapsule v2;
    MI_CpuClearFast(&v2, sizeof(BallCapsule));

    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE, &v2);
    Pokemon_CalcLevelAndStats(mon);
}

static void BoxPokemon_InitWith(BoxPokemon *boxMon, int species, int level, int ivs, BOOL hasFixedPersonality, u32 personality, int otIDType, u32 otID)
{
    BoxPokemon_Init(boxMon);

    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    if (!hasFixedPersonality) {
        personality = (LCRNG_Next() | (LCRNG_Next() << 16));
    }

    BoxPokemon_SetData(boxMon, MON_DATA_PERSONALITY, &personality);

    if (otIDType == OTID_NOT_SHINY) {
        do {
            otID = (LCRNG_Next() | (LCRNG_Next() << 16));
        } while (Pokemon_InlineIsPersonalityShiny(otID, personality));
    } else if (otIDType != OTID_SET) {
        otID = 0;
    }

    BoxPokemon_SetData(boxMon, MON_DATA_OT_ID, &otID);
    BoxPokemon_SetData(boxMon, MON_DATA_LANGUAGE, &gGameLanguage);
    BoxPokemon_SetData(boxMon, MON_DATA_SPECIES, &species);
    BoxPokemon_SetData(boxMon, MON_DATA_SPECIES_NAME, NULL);

    u32 v1, v2; // TODO rename, these are used/reused as temp vars through the whole function.

    v1 = Pokemon_GetSpeciesBaseExpAt(species, level);
    BoxPokemon_SetData(boxMon, MON_DATA_EXPERIENCE, &v1);

    v1 = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_BASE_FRIENDSHIP);
    BoxPokemon_SetData(boxMon, MON_DATA_FRIENDSHIP, &v1);

    BoxPokemon_SetData(boxMon, MON_DATA_MET_LEVEL, &level);
    BoxPokemon_SetData(boxMon, MON_DATA_MET_GAME, &gGameVersion);

    v1 = ITEM_POKE_BALL;
    BoxPokemon_SetData(boxMon, MON_DATA_POKEBALL, &v1);

    if (ivs < INIT_IVS_RANDOM) {
        BoxPokemon_SetData(boxMon, MON_DATA_HP_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_ATK_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_DEF_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_SPEED_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_SPATK_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_SPDEF_IV, &ivs);
    } else {
        v1 = LCRNG_Next();
        v2 = (v1 & (0x1f << 0)) >> 0;
        BoxPokemon_SetData(boxMon, MON_DATA_HP_IV, &v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        BoxPokemon_SetData(boxMon, MON_DATA_ATK_IV, &v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        BoxPokemon_SetData(boxMon, MON_DATA_DEF_IV, &v2);

        v1 = LCRNG_Next();
        v2 = (v1 & (0x1f << 0)) >> 0;
        BoxPokemon_SetData(boxMon, MON_DATA_SPEED_IV, &v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        BoxPokemon_SetData(boxMon, MON_DATA_SPATK_IV, &v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        BoxPokemon_SetData(boxMon, MON_DATA_SPDEF_IV, &v2);
    }

    v1 = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
    v2 = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_2);

    if (v2 != ABILITY_NONE) {
        if (personality & 1) {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &v2);
        } else {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &v1);
        }
    } else {
        BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &v1);
    }

    v1 = BoxPokemon_GetGender(boxMon);

    BoxPokemon_SetData(boxMon, MON_DATA_GENDER, &v1);
    BoxPokemon_SetDefaultMoves(boxMon);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void Pokemon_InitWithNature(Pokemon *mon, u16 species, u8 level, u8 ivs, u8 nature)
{
    u32 personality;
    do {
        personality = (LCRNG_Next() | (LCRNG_Next() << 16));
    } while (nature != Pokemon_GetNatureOf(personality));
    Pokemon_InitWith(mon, species, level, ivs, TRUE, personality, OTID_NOT_SET, 0);
}

void Pokemon_InitWithGenderNatureLetter(Pokemon *mon, u16 species, u8 level, u8 ivs, u8 gender, u8 nature, u8 letter)
{
    u32 personality = 0;
    u16 unownLetter = 0;

    if (letter != 0 && letter < UNOWN_FORM_COUNT + 1) {
        do {
            personality = (LCRNG_Next() | (LCRNG_Next() << 16));
            unownLetter = GET_UNOWN_LETTER_FROM_PERSONALITY(personality);
        } while (nature != Pokemon_GetNatureOf(personality) || gender != Pokemon_GetGenderOf(species, personality) || unownLetter != letter - 1);
    } else {
        personality = sub_02074128(species, gender, nature);
    }

    Pokemon_InitWith(mon, species, level, ivs, TRUE, personality, OTID_NOT_SET, 0);
}

u32 sub_02074128(u16 monSpecies, u8 param1, u8 param2)
{
    u8 monGenderChance = SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_GENDER_RATIO);

    u32 result;
    switch (monGenderChance) {
    case GENDER_RATIO_MALE_ONLY:
    case GENDER_RATIO_FEMALE_ONLY:
    case GENDER_RATIO_NO_GENDER:
        result = param2;
        break;
    default:
        // TODO gender enum value?
        if (param1 == 0) {
            result = 25 * ((monGenderChance / 25) + 1);
            result += param2;
        } else {
            result = param2;
        }
        break;
    }

    return result;
}

// only used when encountering a roamer
void Pokemon_InitAndCalcStats(Pokemon *mon, u16 monSpecies, u8 monLevel, u32 monCombinedIVs, u32 monPersonality)
{
    Pokemon_InitWith(mon, monSpecies, monLevel, 0, TRUE, monPersonality, OTID_NOT_SET, 0);
    Pokemon_SetData(mon, MON_DATA_COMBINED_IVS, &monCombinedIVs);
    Pokemon_CalcLevelAndStats(mon);
}

void Pokemon_CalcLevelAndStats(Pokemon *mon)
{
    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);
    int monLevel = Pokemon_GetLevel(mon);

    Pokemon_SetData(mon, MON_DATA_LEVEL, &monLevel);
    Pokemon_CalcStats(mon);
    Pokemon_ExitDecryptionContext(mon, reencrypt);
}

void Pokemon_CalcStats(Pokemon *mon)
{
    int maxHp, hp;
    int hpIV, atkIV, defIV, speedIV, spAtkIV, spDefIV;
    int hpEV, atkEV, defEV, speedEV, spAtkEV, spDefEV;
    int form, species;
    int newMaxHp;

    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);

    int level = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
    maxHp = Pokemon_GetData(mon, MON_DATA_MAX_HP, NULL);
    hp = Pokemon_GetData(mon, MON_DATA_HP, NULL);
    hpIV = Pokemon_GetData(mon, MON_DATA_HP_IV, NULL);
    hpEV = Pokemon_GetData(mon, MON_DATA_HP_EV, NULL);
    atkIV = Pokemon_GetData(mon, MON_DATA_ATK_IV, NULL);
    atkEV = Pokemon_GetData(mon, MON_DATA_ATK_EV, NULL);
    defIV = Pokemon_GetData(mon, MON_DATA_DEF_IV, NULL);
    defEV = Pokemon_GetData(mon, MON_DATA_DEF_EV, NULL);
    speedIV = Pokemon_GetData(mon, MON_DATA_SPEED_IV, NULL);
    speedEV = Pokemon_GetData(mon, MON_DATA_SPEED_EV, NULL);
    spAtkIV = Pokemon_GetData(mon, MON_DATA_SPATK_IV, NULL);
    spAtkEV = Pokemon_GetData(mon, MON_DATA_SPATK_EV, NULL);
    spDefIV = Pokemon_GetData(mon, MON_DATA_SPDEF_IV, NULL);
    spDefEV = Pokemon_GetData(mon, MON_DATA_SPDEF_EV, NULL);
    form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);

    SpeciesData *speciesData = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesData));
    SpeciesData_LoadForm(species, form, speciesData);

    if (species == SPECIES_SHEDINJA) {
        newMaxHp = 1;
    } else {
        newMaxHp = (speciesData->baseStats.hp * 2 + hpIV + hpEV / 4) * level / 100 + level + 10;
    }
    Pokemon_SetData(mon, MON_DATA_MAX_HP, &newMaxHp);

    int newAtk = (speciesData->baseStats.attack * 2 + atkIV + atkEV / 4) * level / 100 + 5;
    newAtk = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newAtk, STAT_ATTACK);
    Pokemon_SetData(mon, MON_DATA_ATK, &newAtk);

    int newDef = (speciesData->baseStats.defense * 2 + defIV + defEV / 4) * level / 100 + 5;
    newDef = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newDef, STAT_DEFENSE);
    Pokemon_SetData(mon, MON_DATA_DEF, &newDef);

    int newSpeed = (speciesData->baseStats.speed * 2 + speedIV + speedEV / 4) * level / 100 + 5;
    newSpeed = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newSpeed, STAT_SPEED);
    Pokemon_SetData(mon, MON_DATA_SPEED, &newSpeed);

    int newSpAtk = (speciesData->baseStats.spAttack * 2 + spAtkIV + spAtkEV / 4) * level / 100 + 5;
    newSpAtk = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newSpAtk, STAT_SPECIAL_ATTACK);
    Pokemon_SetData(mon, MON_DATA_SP_ATK, &newSpAtk);

    int newSpDef = (speciesData->baseStats.spDefense * 2 + spDefIV + spDefEV / 4) * level / 100 + 5;
    newSpDef = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newSpDef, STAT_SPECIAL_DEFENSE);
    Pokemon_SetData(mon, MON_DATA_SP_DEF, &newSpDef);

    Heap_Free(speciesData);

    if (hp != 0 || maxHp == 0) {
        if (species == SPECIES_SHEDINJA) {
            hp = 1;
        } else if (hp == 0) {
            hp = newMaxHp;
        // BUG: Pomeg glitch.
        // Fixed in HGSS by adding:
        // } else if (newMaxHp - maxHp < 0) {
        //     if (hp > newMaxHp) {
        //         hp = newMaxHp;
        //     }
        } else {
            hp += newMaxHp - maxHp;
        }
    }

    if (hp != 0) {
        Pokemon_SetData(mon, MON_DATA_HP, &hp);
    }
    Pokemon_ExitDecryptionContext(mon, reencrypt);
}

u32 Pokemon_GetData(Pokemon *mon, enum PokemonDataParam param, void *dest)
{
    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

        u16 checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            mon->box.checksumFailed = TRUE;
        }
    }

    u32 result = Pokemon_GetDataInternal(mon, param, dest);

    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    return result;
}

static u32 Pokemon_GetDataInternal(Pokemon *mon, enum PokemonDataParam param, void *dest)
{
    u32 result = 0;

    switch (param) {
    case MON_DATA_STATUS:
        result = mon->party.status;
        break;

    case MON_DATA_LEVEL:
        result = mon->party.level;
        break;

    case MON_DATA_BALL_CAPSULE_ID:
        result = mon->party.ballCapsuleID;
        break;

    case MON_DATA_HP:
        result = mon->party.hp;
        break;

    case MON_DATA_MAX_HP:
        result = mon->party.maxHP;
        break;

    case MON_DATA_ATK:
        result = mon->party.attack;
        break;

    case MON_DATA_DEF:
        result = mon->party.defense;
        break;

    case MON_DATA_SPEED:
        result = mon->party.speed;
        break;

    case MON_DATA_SP_ATK:
        result = mon->party.spAtk;
        break;

    case MON_DATA_SP_DEF:
        result = mon->party.spDef;
        break;

    case MON_DATA_MAIL:
        Mail_Copy(&mon->party.mail, dest);
        result = TRUE;
        break;

    case MON_DATA_BALL_CAPSULE:
        BallCapsule_Copy(&mon->party.ballCapsule, dest);
        result = TRUE;
        break;

    default:
        result = BoxPokemon_GetDataInternal(&mon->box, param, dest);
        break;
    }

    return result;
}

u32 BoxPokemon_GetData(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest)
{
    if (boxMon->boxDecrypted == FALSE) {
        Pokemon_DecryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
        u16 checksum = Pokemon_GetDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != boxMon->checksum) {
            GF_ASSERT(checksum == boxMon->checksum);
            boxMon->checksumFailed = TRUE;
        }
    }

    u32 result = BoxPokemon_GetDataInternal(boxMon, param, dest);

    if (boxMon->boxDecrypted == FALSE) {
        Pokemon_EncryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }

    return result;
}

static inline u32 GetRibbon(u64 mask, enum PokemonDataParam param, enum PokemonDataParam ribbonStart)
{
    u64 bit = 1; // need to force a u64 to match
    return (mask & (bit << (param - ribbonStart))) != 0;
}

static u32 BoxPokemon_GetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest)
{
    u32 ret = 0;

    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    switch (param) {
    default:
        ret = 0;
        break;
    case MON_DATA_PERSONALITY:
        ret = boxMon->personality;
        break;
    case MON_DATA_IS_PARTY_DECRYPTED:
        ret = boxMon->partyDecrypted;
        break;
    case MON_DATA_IS_BOX_DECRYPTED:
        ret = boxMon->boxDecrypted;
        break;
    case MON_DATA_CHECKSUM_FAILED:
        ret = boxMon->checksumFailed;
        break;
    case MON_DATA_CHECKSUM:
        ret = boxMon->checksum;
        break;
    case MON_DATA_SPECIES_EXISTS:
        ret = (blockA->species != SPECIES_NONE);
        break;
    case MON_DATA_SANITY_IS_EGG:
        if (boxMon->checksumFailed) {
            ret = boxMon->checksumFailed;
        } else {
            ret = blockB->isEgg;
        }
        break;
    case MON_DATA_SPECIES_OR_EGG:
        ret = blockA->species;
        if (ret != SPECIES_NONE && (blockB->isEgg || boxMon->checksumFailed)) {
            ret = SPECIES_EGG;
        }
        break;
    case MON_DATA_LEVEL:
        ret = Pokemon_GetSpeciesLevelAt(blockA->species, blockA->exp);
        break;
    case MON_DATA_SPECIES:
        if (boxMon->checksumFailed) {
            ret = SPECIES_EGG;
        } else {
            ret = blockA->species;
        }
        break;
    case MON_DATA_HELD_ITEM:
        ret = blockA->heldItem;
        break;
    case MON_DATA_OT_ID:
        ret = blockA->otID;
        break;
    case MON_DATA_EXPERIENCE:
        ret = blockA->exp;
        break;
    case MON_DATA_FRIENDSHIP:
        ret = blockA->friendship;
        break;
    case MON_DATA_ABILITY:
        ret = blockA->ability;
        break;
    case MON_DATA_MARKINGS:
        ret = blockA->markings;
        break;
    case MON_DATA_LANGUAGE:
        ret = blockA->originLanguage;
        break;
    case MON_DATA_HP_EV:
        ret = blockA->hpEV;
        break;
    case MON_DATA_ATK_EV:
        ret = blockA->atkEV;
        break;
    case MON_DATA_DEF_EV:
        ret = blockA->defEV;
        break;
    case MON_DATA_SPEED_EV:
        ret = blockA->speedEV;
        break;
    case MON_DATA_SPATK_EV:
        ret = blockA->spAtkEV;
        break;
    case MON_DATA_SPDEF_EV:
        ret = blockA->spDefEV;
        break;
    case MON_DATA_COOL:
        ret = blockA->cool;
        break;
    case MON_DATA_BEAUTY:
        ret = blockA->beauty;
        break;
    case MON_DATA_CUTE:
        ret = blockA->cute;
        break;
    case MON_DATA_SMART:
        ret = blockA->smart;
        break;
    case MON_DATA_TOUGH:
        ret = blockA->tough;
        break;
    case MON_DATA_SHEEN:
        ret = blockA->sheen;
        break;
    case MON_DATA_SINNOH_CHAMP_RIBBON:
    case MON_DATA_ABILITY_RIBBON:
    case MON_DATA_GREAT_ABILITY_RIBBON:
    case MON_DATA_DOUBLE_ABILITY_RIBBON:
    case MON_DATA_MULTI_ABILITY_RIBBON:
    case MON_DATA_PAIR_ABILITY_RIBBON:
    case MON_DATA_WORLD_ABILITY_RIBBON:
    case MON_DATA_ALERT_RIBBON:
    case MON_DATA_SHOCK_RIBBON:
    case MON_DATA_DOWNCAST_RIBBON:
    case MON_DATA_CARELESS_RIBBON:
    case MON_DATA_RELAX_RIBBON:
    case MON_DATA_SNOOZE_RIBBON:
    case MON_DATA_SMILE_RIBBON:
    case MON_DATA_GORGEOUS_RIBBON:
    case MON_DATA_ROYAL_RIBBON:
    case MON_DATA_GORGEOUS_ROYAL_RIBBON:
    case MON_DATA_FOOTPRINT_RIBBON:
    case MON_DATA_RECORD_RIBBON:
    case MON_DATA_HISTORY_RIBBON:
    case MON_DATA_LEGEND_RIBBON:
    case MON_DATA_RED_RIBBON:
    case MON_DATA_GREEN_RIBBON:
    case MON_DATA_BLUE_RIBBON:
    case MON_DATA_FESTIVAL_RIBBON:
    case MON_DATA_CARNIVAL_RIBBON:
    case MON_DATA_CLASSIC_RIBBON:
    case MON_DATA_PREMIER_RIBBON:
    case MON_DATA_UNUSED_RIBBON_53:
        ret = GetRibbon(blockA->ribbonsDS1, param, MON_DATA_SINNOH_CHAMP_RIBBON);
        break;

    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        ret = blockB->moves[param - MON_DATA_MOVE1];
        break;
    case MON_DATA_MOVE1_PP:
    case MON_DATA_MOVE2_PP:
    case MON_DATA_MOVE3_PP:
    case MON_DATA_MOVE4_PP:
        ret = blockB->moveCurrentPPs[param - MON_DATA_MOVE1_PP];
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        ret = blockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS];
        break;

    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        ret = MoveTable_CalcMaxPP(blockB->moves[param - MON_DATA_MOVE1_MAX_PP], blockB->movePPUps[param - MON_DATA_MOVE1_MAX_PP]);
        break;
    case MON_DATA_HP_IV:
        ret = blockB->hpIV;
        break;
    case MON_DATA_ATK_IV:
        ret = blockB->atkIV;
        break;
    case MON_DATA_DEF_IV:
        ret = blockB->defIV;
        break;
    case MON_DATA_SPEED_IV:
        ret = blockB->speedIV;
        break;
    case MON_DATA_SPATK_IV:
        ret = blockB->spAtkIV;
        break;
    case MON_DATA_SPDEF_IV:
        ret = blockB->spDefIV;
        break;
    case MON_DATA_IS_EGG:
        if (boxMon->checksumFailed) {
            ret = boxMon->checksumFailed;
        } else {
            ret = blockB->isEgg;
        }
        break;
    case MON_DATA_HAS_NICKNAME:
        ret = blockB->hasNickname;
        break;
    case MON_DATA_COOL_RIBBON:
    case MON_DATA_COOL_RIBBON_SUPER:
    case MON_DATA_COOL_RIBBON_HYPER:
    case MON_DATA_COOL_RIBBON_MASTER:
    case MON_DATA_BEAUTY_RIBBON:
    case MON_DATA_BEAUTY_RIBBON_SUPER:
    case MON_DATA_BEAUTY_RIBBON_HYPER:
    case MON_DATA_BEAUTY_RIBBON_MASTER:
    case MON_DATA_CUTE_RIBBON:
    case MON_DATA_CUTE_RIBBON_SUPER:
    case MON_DATA_CUTE_RIBBON_HYPER:
    case MON_DATA_CUTE_RIBBON_MASTER:
    case MON_DATA_SMART_RIBBON:
    case MON_DATA_SMART_RIBBON_SUPER:
    case MON_DATA_SMART_RIBBON_HYPER:
    case MON_DATA_SMART_RIBBON_MASTER:
    case MON_DATA_TOUGH_RIBBON:
    case MON_DATA_TOUGH_RIBBON_SUPER:
    case MON_DATA_TOUGH_RIBBON_HYPER:
    case MON_DATA_TOUGH_RIBBON_MASTER:
    case MON_DATA_CHAMPION_RIBBON:
    case MON_DATA_WINNING_RIBBON:
    case MON_DATA_VICTORY_RIBBON:
    case MON_DATA_ARTIST_RIBBON:
    case MON_DATA_EFFORT_RIBBON:
    case MON_DATA_MARINE_RIBBON:
    case MON_DATA_LAND_RIBBON:
    case MON_DATA_SKY_RIBBON:
    case MON_DATA_COUNTRY_RIBBON:
    case MON_DATA_NATIONAL_RIBBON:
    case MON_DATA_EARTH_RIBBON:
    case MON_DATA_WORLD_RIBBON:
        ret = GetRibbon(blockB->ribbonsGBA, param, MON_DATA_COOL_RIBBON);
        break;
    case MON_DATA_FATEFUL_ENCOUNTER:
        ret = blockB->fatefulEncounter;
        break;
    case MON_DATA_GENDER:
        ret = Pokemon_GetGenderOf(blockA->species, boxMon->personality);
        blockB->gender = ret;
        boxMon->checksum = Pokemon_GetDataChecksum(&boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);
        break;
    case MON_DATA_FORM:
        ret = blockB->form;
        break;
    case MON_DATA_UNUSED_113:
        ret = blockB->unused1;
        break;
    case MON_DATA_UNUSED_114:
        ret = blockB->unused2;
        break;
    case MON_DATA_NICKNAME:
        if (boxMon->checksumFailed) {
            // TODO confirm this should be SPECIES_BAD_EGG (lines up with checksum failure check but not throughly checked this call tree)
            MessageLoader_GetSpeciesName(SPECIES_BAD_EGG, 0, dest);
        } else {
            charcode_t *buf = dest;

            for (ret = 0; ret < MON_NAME_LEN; ret++) {
                buf[ret] = blockC->nickname[ret];
            }

            buf[ret] = CHAR_EOS;
        }
        break;
    case MON_DATA_NICKNAME_STRING_AND_FLAG:
        ret = blockB->hasNickname;
        // fall-through
    case MON_DATA_NICKNAME_STRING:
        if (boxMon->checksumFailed) {
            String *string = MessageUtil_SpeciesName(SPECIES_BAD_EGG, HEAP_ID_SYSTEM);

            String_Copy(dest, string);
            String_Free(string);
        } else {
            String_CopyChars(dest, blockC->nickname);
        }
        break;
    case MON_DATA_UNUSED_121:
        ret = blockC->unused;
        break;
    case MON_DATA_MET_GAME:
        ret = blockC->originGame;
        break;
    case MON_DATA_SUPER_COOL_RIBBON:
    case MON_DATA_SUPER_COOL_RIBBON_GREAT:
    case MON_DATA_SUPER_COOL_RIBBON_ULTRA:
    case MON_DATA_SUPER_COOL_RIBBON_MASTER:
    case MON_DATA_SUPER_BEAUTY_RIBBON:
    case MON_DATA_SUPER_BEAUTY_RIBBON_GREAT:
    case MON_DATA_SUPER_BEAUTY_RIBBON_ULTRA:
    case MON_DATA_SUPER_BEAUTY_RIBBON_MASTER:
    case MON_DATA_SUPER_CUTE_RIBBON:
    case MON_DATA_SUPER_CUTE_RIBBON_GREAT:
    case MON_DATA_SUPER_CUTE_RIBBON_ULTRA:
    case MON_DATA_SUPER_CUTE_RIBBON_MASTER:
    case MON_DATA_SUPER_SMART_RIBBON:
    case MON_DATA_SUPER_SMART_RIBBON_GREAT:
    case MON_DATA_SUPER_SMART_RIBBON_ULTRA:
    case MON_DATA_SUPER_SMART_RIBBON_MASTER:
    case MON_DATA_SUPER_TOUGH_RIBBON:
    case MON_DATA_SUPER_TOUGH_RIBBON_GREAT:
    case MON_DATA_SUPER_TOUGH_RIBBON_ULTRA:
    case MON_DATA_SUPER_TOUGH_RIBBON_MASTER:
    case MON_DATA_UNUSED_RIBBON_143:
        ret = GetRibbon(blockC->ribbonsDS2, param, MON_DATA_SUPER_COOL_RIBBON);
        break;

    case MON_DATA_OT_NAME:
        u16 *otName = dest;

        for (ret = 0; ret < TRAINER_NAME_LEN; ret++) {
            otName[ret] = blockD->otName[ret];
        }

        otName[ret] = CHAR_EOS;
        break;

    case MON_DATA_OT_NAME_STRING:
        String_CopyChars(dest, blockD->otName);
        break;
    case MON_DATA_EGG_YEAR:
        ret = blockD->eggYear;
        break;
    case MON_DATA_EGG_MONTH:
        ret = blockD->eggMonth;
        break;
    case MON_DATA_EGG_DAY:
        ret = blockD->eggDay;
        break;
    case MON_DATA_MET_YEAR:
        ret = blockD->metYear;
        break;
    case MON_DATA_MET_MONTH:
        ret = blockD->metMonth;
        break;
    case MON_DATA_MET_DAY:
        ret = blockD->metDay;
        break;
    case MON_DATA_EGG_LOCATION:
    case MON_DATA_EGG_LOCATION_PTHGSS:
        if (blockD->EggLocation_DP == FATEFUL_ENCOUNTER_LOCATION && blockB->EggLocation_PtHGSS) {
            ret = blockB->EggLocation_PtHGSS;
        } else {
            ret = blockD->EggLocation_DP;
        }
        break;
    case MON_DATA_MET_LOCATION:
    case MON_DATA_MET_LOCATION_PTHGSS:
        if (blockD->MetLocation_DP == FATEFUL_ENCOUNTER_LOCATION && blockB->MetLocation_PtHGSS) {
            ret = blockB->MetLocation_PtHGSS;
        } else {
            ret = blockD->MetLocation_DP;
        }
        break;
    case MON_DATA_POKERUS:
        ret = blockD->pokerus;
        break;
    case MON_DATA_POKEBALL:
        ret = blockD->pokeball;
        break;
    case MON_DATA_MET_LEVEL:
        ret = blockD->metLevel;
        break;
    case MON_DATA_OT_GENDER:
        ret = blockD->otGender;
        break;
    case MON_DATA_MET_TERRAIN:
        ret = blockD->metTerrain;
        break;
    case MON_DATA_UNUSED_159:
        ret = blockD->unused;
        break;
    case MON_DATA_COMBINED_IVS:
        ret = (blockB->hpIV << 0)
            | (blockB->atkIV << 5)
            | (blockB->defIV << 10)
            | (blockB->speedIV << 15)
            | (blockB->spAtkIV << 20)
            | (blockB->spDefIV << 25);
        break;
    case MON_DATA_NO_PRINT_GENDER:
        if ((blockA->species == SPECIES_NIDORAN_F || blockA->species == SPECIES_NIDORAN_M)
            && blockB->hasNickname == FALSE) {
            ret = FALSE;
        } else {
            ret = TRUE;
        }
        break;
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
        if (blockA->species == SPECIES_ARCEUS && blockA->ability == ABILITY_MULTITYPE) {
            ret = Pokemon_GetArceusTypeOf(Item_LoadParam(blockA->heldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM));
        } else {
            ret = SpeciesData_GetFormValue(blockA->species, blockB->form, SPECIES_DATA_TYPE_1 + (param - MON_DATA_TYPE_1));
        }
        break;
    case MON_DATA_SPECIES_NAME:
        MessageLoader_GetSpeciesName(blockA->species, HEAP_ID_SYSTEM, dest);
        break;
    }
    return ret;
}

void Pokemon_SetData(Pokemon *mon, enum PokemonDataParam param, const void *value)
{
    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
        u16 checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            mon->box.checksumFailed = TRUE;
            Pokemon_EncryptData(mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
            return;
        }
    }

    Pokemon_SetDataInternal(mon, param, value);

    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        mon->box.checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
        Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }
}

static void Pokemon_SetDataInternal(Pokemon *mon, enum PokemonDataParam param, const void *value)
{
#define VALUE(type) (*(const type *)value)
    switch (param) {
    case MON_DATA_STATUS:
        mon->party.status = VALUE(u32);
        break;
    case MON_DATA_LEVEL:
        mon->party.level = VALUE(u8);
        break;
    case MON_DATA_BALL_CAPSULE_ID:
        mon->party.ballCapsuleID = VALUE(u8);
        break;
    case MON_DATA_HP:
        mon->party.hp = VALUE(u16);
        break;
    case MON_DATA_MAX_HP:
        mon->party.maxHP = VALUE(u16);
        break;
    case MON_DATA_ATK:
        mon->party.attack = VALUE(u16);
        break;
    case MON_DATA_DEF:
        mon->party.defense = VALUE(u16);
        break;
    case MON_DATA_SPEED:
        mon->party.speed = VALUE(u16);
        break;
    case MON_DATA_SP_ATK:
        mon->party.spAtk = VALUE(u16);
        break;
    case MON_DATA_SP_DEF:
        mon->party.spDef = VALUE(u16);
        break;
    case MON_DATA_MAIL:
        Mail_Copy(value, &mon->party.mail);
        break;
    case MON_DATA_BALL_CAPSULE:
        BallCapsule_Copy(value, &mon->party.ballCapsule);
        break;
    default:
        BoxPokemon_SetDataInternal(&mon->box, param, value);
        break;
    }
#undef VALUE
}

void BoxPokemon_SetData(BoxPokemon *boxMon, enum PokemonDataParam param, const void *value)
{
    if (boxMon->boxDecrypted == FALSE) {
        Pokemon_DecryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
        u16 checksum = Pokemon_GetDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != boxMon->checksum) {
            GF_ASSERT(checksum == boxMon->checksum);
            boxMon->checksumFailed = TRUE;
            Pokemon_EncryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
            return;
        }
    }

    BoxPokemon_SetDataInternal(boxMon, param, value);

    if (boxMon->boxDecrypted == FALSE) {
        boxMon->checksum = Pokemon_GetDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);
        Pokemon_EncryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }
}

static void BoxPokemon_SetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, const void *value)
{
    // TODO can this be restructured better?
    u32 *u32Value = value;
    u16 *u16Value = value;
    u8 *u8Value = value;

    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    switch (param) {
    case MON_DATA_PERSONALITY:
        boxMon->personality = *u32Value;
        break;
    case MON_DATA_IS_PARTY_DECRYPTED:
        GF_ASSERT(FALSE);
        boxMon->partyDecrypted = *u8Value;
        break;
    case MON_DATA_IS_BOX_DECRYPTED:
        GF_ASSERT(FALSE);
        boxMon->boxDecrypted = *u8Value;
        break;
    case MON_DATA_CHECKSUM_FAILED:
        boxMon->checksumFailed = *u8Value;
        break;
    case MON_DATA_CHECKSUM:
        boxMon->checksum = *u16Value;
        break;
    case MON_DATA_SPECIES:
        blockA->species = *u16Value;
        break;
    case MON_DATA_HELD_ITEM:
        blockA->heldItem = *u16Value;
        break;
    case MON_DATA_OT_ID:
        blockA->otID = *u32Value;
        break;
    case MON_DATA_EXPERIENCE:
        blockA->exp = *u32Value;
        break;
    case MON_DATA_FRIENDSHIP:
        blockA->friendship = *u8Value;
        break;
    case MON_DATA_ABILITY:
        blockA->ability = *u8Value;
        break;
    case MON_DATA_MARKINGS:
        blockA->markings = *u8Value;
        break;
    case MON_DATA_LANGUAGE:
        blockA->originLanguage = *u8Value;
        break;
    case MON_DATA_HP_EV:
        blockA->hpEV = *u8Value;
        break;
    case MON_DATA_ATK_EV:
        blockA->atkEV = *u8Value;
        break;
    case MON_DATA_DEF_EV:
        blockA->defEV = *u8Value;
        break;
    case MON_DATA_SPEED_EV:
        blockA->speedEV = *u8Value;
        break;
    case MON_DATA_SPATK_EV:
        blockA->spAtkEV = *u8Value;
        break;
    case MON_DATA_SPDEF_EV:
        blockA->spDefEV = *u8Value;
        break;
    case MON_DATA_COOL:
        blockA->cool = *u8Value;
        break;
    case MON_DATA_BEAUTY:
        blockA->beauty = *u8Value;
        break;
    case MON_DATA_CUTE:
        blockA->cute = *u8Value;
        break;
    case MON_DATA_SMART:
        blockA->smart = *u8Value;
        break;
    case MON_DATA_TOUGH:
        blockA->tough = *u8Value;
        break;
    case MON_DATA_SHEEN:
        blockA->sheen = *u8Value;
        break;
    case MON_DATA_SINNOH_CHAMP_RIBBON:
    case MON_DATA_ABILITY_RIBBON:
    case MON_DATA_GREAT_ABILITY_RIBBON:
    case MON_DATA_DOUBLE_ABILITY_RIBBON:
    case MON_DATA_MULTI_ABILITY_RIBBON:
    case MON_DATA_PAIR_ABILITY_RIBBON:
    case MON_DATA_WORLD_ABILITY_RIBBON:
    case MON_DATA_ALERT_RIBBON:
    case MON_DATA_SHOCK_RIBBON:
    case MON_DATA_DOWNCAST_RIBBON:
    case MON_DATA_CARELESS_RIBBON:
    case MON_DATA_RELAX_RIBBON:
    case MON_DATA_SNOOZE_RIBBON:
    case MON_DATA_SMILE_RIBBON:
    case MON_DATA_GORGEOUS_RIBBON:
    case MON_DATA_ROYAL_RIBBON:
    case MON_DATA_GORGEOUS_ROYAL_RIBBON:
    case MON_DATA_FOOTPRINT_RIBBON:
    case MON_DATA_RECORD_RIBBON:
    case MON_DATA_HISTORY_RIBBON:
    case MON_DATA_LEGEND_RIBBON:
    case MON_DATA_RED_RIBBON:
    case MON_DATA_GREEN_RIBBON:
    case MON_DATA_BLUE_RIBBON:
    case MON_DATA_FESTIVAL_RIBBON:
    case MON_DATA_CARNIVAL_RIBBON:
    case MON_DATA_CLASSIC_RIBBON:
    case MON_DATA_PREMIER_RIBBON:
    case MON_DATA_UNUSED_RIBBON_53: {
        u64 bit = 1 << (param - MON_DATA_SINNOH_CHAMP_RIBBON);

        if (*u8Value) {
            blockA->ribbonsDS1 |= bit;
        } else {
            blockA->ribbonsDS1 &= (bit ^ 0xFFFFFFFF);
        }
        break;
    }
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        blockB->moves[param - MON_DATA_MOVE1] = *u16Value;
        break;
    case MON_DATA_MOVE1_PP:
    case MON_DATA_MOVE2_PP:
    case MON_DATA_MOVE3_PP:
    case MON_DATA_MOVE4_PP:
        blockB->moveCurrentPPs[param - MON_DATA_MOVE1_PP] = *u8Value;
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        blockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] = *u8Value;
        break;

    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;
    case MON_DATA_HP_IV:
        blockB->hpIV = *u8Value;
        break;
    case MON_DATA_ATK_IV:
        blockB->atkIV = *u8Value;
        break;
    case MON_DATA_DEF_IV:
        blockB->defIV = *u8Value;
        break;
    case MON_DATA_SPEED_IV:
        blockB->speedIV = *u8Value;
        break;
    case MON_DATA_SPATK_IV:
        blockB->spAtkIV = *u8Value;
        break;
    case MON_DATA_SPDEF_IV:
        blockB->spDefIV = *u8Value;
        break;
    case MON_DATA_IS_EGG:
        blockB->isEgg = *u8Value;
        break;
    case MON_DATA_HAS_NICKNAME:
        blockB->hasNickname = *u8Value;
        break;
    case MON_DATA_COOL_RIBBON:
    case MON_DATA_COOL_RIBBON_SUPER:
    case MON_DATA_COOL_RIBBON_HYPER:
    case MON_DATA_COOL_RIBBON_MASTER:
    case MON_DATA_BEAUTY_RIBBON:
    case MON_DATA_BEAUTY_RIBBON_SUPER:
    case MON_DATA_BEAUTY_RIBBON_HYPER:
    case MON_DATA_BEAUTY_RIBBON_MASTER:
    case MON_DATA_CUTE_RIBBON:
    case MON_DATA_CUTE_RIBBON_SUPER:
    case MON_DATA_CUTE_RIBBON_HYPER:
    case MON_DATA_CUTE_RIBBON_MASTER:
    case MON_DATA_SMART_RIBBON:
    case MON_DATA_SMART_RIBBON_SUPER:
    case MON_DATA_SMART_RIBBON_HYPER:
    case MON_DATA_SMART_RIBBON_MASTER:
    case MON_DATA_TOUGH_RIBBON:
    case MON_DATA_TOUGH_RIBBON_SUPER:
    case MON_DATA_TOUGH_RIBBON_HYPER:
    case MON_DATA_TOUGH_RIBBON_MASTER:
    case MON_DATA_CHAMPION_RIBBON:
    case MON_DATA_WINNING_RIBBON:
    case MON_DATA_VICTORY_RIBBON:
    case MON_DATA_ARTIST_RIBBON:
    case MON_DATA_EFFORT_RIBBON:
    case MON_DATA_MARINE_RIBBON:
    case MON_DATA_LAND_RIBBON:
    case MON_DATA_SKY_RIBBON:
    case MON_DATA_COUNTRY_RIBBON:
    case MON_DATA_NATIONAL_RIBBON:
    case MON_DATA_EARTH_RIBBON:
    case MON_DATA_WORLD_RIBBON: {
        u64 bit = 1 << (param - MON_DATA_COOL_RIBBON);

        if (*u8Value) {
            blockB->ribbonsGBA |= bit;
        } else {
            blockB->ribbonsGBA &= (bit ^ 0xFFFFFFFF);
        }

        break;
    }
    case MON_DATA_FATEFUL_ENCOUNTER:
        blockB->fatefulEncounter = *u8Value;
        break;
    case MON_DATA_GENDER:
        blockB->gender = Pokemon_GetGenderOf(blockA->species, boxMon->personality);
        break;
    case MON_DATA_FORM:
        blockB->form = *u8Value;
        break;
    case MON_DATA_UNUSED_113:
        blockB->unused1 = *u8Value;
        break;
    case MON_DATA_UNUSED_114:
        blockB->unused2 = *u16Value;
        break;
    case MON_DATA_NICKNAME_AND_FLAG: {
        charcode_t baseName[MON_NAME_LEN + 1];

        MessageLoader_GetSpeciesName(blockA->species, HEAP_ID_SYSTEM, baseName);
        blockB->hasNickname = CharCode_Compare(baseName, u16Value);
    }
        // fall-through
    case MON_DATA_NICKNAME:
        for (int i = 0; i < NELEMS(blockC->nickname); i++) {
            blockC->nickname[i] = u16Value[i];
        }
        break;

    case MON_DATA_NICKNAME_STRING_AND_FLAG: {
        charcode_t baseName[MON_NAME_LEN + 1];
        charcode_t nickname[MON_NAME_LEN + 1];

        MessageLoader_GetSpeciesName(blockA->species, HEAP_ID_SYSTEM, baseName);
        String_ToChars(value, nickname, NELEMS(nickname));

        blockB->hasNickname = CharCode_Compare(baseName, nickname);
    }
        // fall-through
    case MON_DATA_NICKNAME_STRING:
        String_ToChars(value, blockC->nickname, NELEMS(blockC->nickname));
        break;

    case MON_DATA_UNUSED_121:
        blockC->unused = *u8Value;
        break;

    case MON_DATA_MET_GAME:
        blockC->originGame = *u8Value;
        break;

    case MON_DATA_SUPER_COOL_RIBBON:
    case MON_DATA_SUPER_COOL_RIBBON_GREAT:
    case MON_DATA_SUPER_COOL_RIBBON_ULTRA:
    case MON_DATA_SUPER_COOL_RIBBON_MASTER:
    case MON_DATA_SUPER_BEAUTY_RIBBON:
    case MON_DATA_SUPER_BEAUTY_RIBBON_GREAT:
    case MON_DATA_SUPER_BEAUTY_RIBBON_ULTRA:
    case MON_DATA_SUPER_BEAUTY_RIBBON_MASTER:
    case MON_DATA_SUPER_CUTE_RIBBON:
    case MON_DATA_SUPER_CUTE_RIBBON_GREAT:
    case MON_DATA_SUPER_CUTE_RIBBON_ULTRA:
    case MON_DATA_SUPER_CUTE_RIBBON_MASTER:
    case MON_DATA_SUPER_SMART_RIBBON:
    case MON_DATA_SUPER_SMART_RIBBON_GREAT:
    case MON_DATA_SUPER_SMART_RIBBON_ULTRA:
    case MON_DATA_SUPER_SMART_RIBBON_MASTER:
    case MON_DATA_SUPER_TOUGH_RIBBON:
    case MON_DATA_SUPER_TOUGH_RIBBON_GREAT:
    case MON_DATA_SUPER_TOUGH_RIBBON_ULTRA:
    case MON_DATA_SUPER_TOUGH_RIBBON_MASTER:
    case MON_DATA_UNUSED_RIBBON_143: {
        u64 bit = 1 << (param - MON_DATA_SUPER_COOL_RIBBON);

        if (*u8Value) {
            blockC->ribbonsDS2 |= bit;
        } else {
            blockC->ribbonsDS2 &= (bit ^ 0xFFFFFFFFFFFFFFFF);
        }

        break;
    }

    case MON_DATA_OT_NAME:
        for (int i = 0; i < NELEMS(blockD->otName); i++) {
            blockD->otName[i] = u16Value[i];
        }
        break;
    case MON_DATA_OT_NAME_STRING:
        String_ToChars(value, blockD->otName, NELEMS(blockD->otName));
        break;
    case MON_DATA_EGG_YEAR:
        blockD->eggYear = *u8Value;
        break;
    case MON_DATA_EGG_MONTH:
        blockD->eggMonth = *u8Value;
        break;
    case MON_DATA_EGG_DAY:
        blockD->eggDay = *u8Value;
        break;
    case MON_DATA_MET_YEAR:
        blockD->metYear = *u8Value;
        break;
    case MON_DATA_MET_MONTH:
        blockD->metMonth = *u8Value;
        break;
    case MON_DATA_MET_DAY:
        blockD->metDay = *u8Value;
        break;
    case MON_DATA_EGG_LOCATION:
    case MON_DATA_EGG_LOCATION_PTHGSS:
        if (*u16Value == 0 || sub_0201708C(*u16Value) == TRUE) {
            blockD->EggLocation_DP = *u16Value;
            blockB->EggLocation_PtHGSS = *u16Value;
        } else {
            blockD->EggLocation_DP = FATEFUL_ENCOUNTER_LOCATION;
            blockB->EggLocation_PtHGSS = *u16Value;
        }
        break;
    case MON_DATA_MET_LOCATION:
    case MON_DATA_MET_LOCATION_PTHGSS:
        if (*u16Value == 0 || sub_0201708C(*u16Value) == TRUE) {
            blockD->MetLocation_DP = *u16Value;
            blockB->MetLocation_PtHGSS = *u16Value;
        } else {
            blockD->MetLocation_DP = FATEFUL_ENCOUNTER_LOCATION;
            blockB->MetLocation_PtHGSS = *u16Value;
        }
        break;
    case MON_DATA_POKERUS:
        blockD->pokerus = *u8Value;
        break;
    case MON_DATA_POKEBALL:
        blockD->pokeball = *u8Value;
        break;
    case MON_DATA_MET_LEVEL:
        blockD->metLevel = *u8Value;
        break;
    case MON_DATA_OT_GENDER:
        blockD->otGender = *u8Value;
        break;
    case MON_DATA_MET_TERRAIN:
        blockD->metTerrain = *u8Value;
        break;
    case MON_DATA_UNUSED_159:
        blockD->unused = *u16Value;
        break;
    case MON_DATA_COMBINED_IVS:
        blockB->hpIV = (*u32Value >> 0) & 0x1F;
        blockB->atkIV = (*u32Value >> 5) & 0x1F;
        blockB->defIV = (*u32Value >> 10) & 0x1F;
        blockB->speedIV = (*u32Value >> 15) & 0x1F;
        blockB->spAtkIV = (*u32Value >> 20) & 0x1F;
        blockB->spDefIV = (*u32Value >> 25) & 0x1F;
        break;
    case MON_DATA_NO_PRINT_GENDER:
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
        break;
    case MON_DATA_SPECIES_NAME: {
        String *string = MessageUtil_SpeciesName(blockA->species, HEAP_ID_SYSTEM);

        String_ToChars(string, blockC->nickname, NELEMS(blockC->nickname));
        String_Free(string);

        break;
    }
    }
}

void Pokemon_IncreaseValue(Pokemon *mon, enum PokemonDataParam param, int value)
{
    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

        u16 checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            Pokemon_EncryptData(mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
            return;
        }
    }

    Pokemon_IncreaseDataInternal(mon, param, value);

    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        mon->box.checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
        Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }
}

static void Pokemon_IncreaseDataInternal(Pokemon *mon, enum PokemonDataParam param, int value)
{
    switch (param) {
    case MON_DATA_HP:
        if (mon->party.hp + value > mon->party.maxHP) {
            mon->party.hp = mon->party.maxHP;
        } else {
            mon->party.hp += value;
        }
        break;
    case MON_DATA_STATUS:
    case MON_DATA_LEVEL:
    case MON_DATA_BALL_CAPSULE_ID:
    case MON_DATA_MAX_HP:
    case MON_DATA_ATK:
    case MON_DATA_DEF:
    case MON_DATA_SPEED:
    case MON_DATA_SP_ATK:
    case MON_DATA_SP_DEF:
    case MON_DATA_MAIL:
        GF_ASSERT(0);
        break;
    default:
        BoxPokemon_IncreaseDataInternal(&mon->box, param, value);
        break;
    }
}

static void BoxPokemon_IncreaseDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, int value)
{
    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    switch (param) {
    case MON_DATA_EXPERIENCE:
        if (blockA->exp + value > Pokemon_GetSpeciesBaseExpAt(blockA->species, MAX_POKEMON_LEVEL)) {
            blockA->exp = Pokemon_GetSpeciesBaseExpAt(blockA->species, MAX_POKEMON_LEVEL);
        } else {
            blockA->exp += value;
        }
        break;
    case MON_DATA_FRIENDSHIP:
        int newValue;

        newValue = blockA->friendship;

        if (newValue + value > MAX_FRIENDSHIP_VALUE) {
            newValue = MAX_FRIENDSHIP_VALUE;
        }

        if (newValue + value < 0) {
            newValue = 0;
        } else {
            newValue += value;
        }

        blockA->friendship = newValue;
        break;
    case MON_DATA_HP_EV:
        blockA->hpEV += value;
        break;
    case MON_DATA_ATK_EV:
        blockA->atkEV += value;
        break;
    case MON_DATA_DEF_EV:
        blockA->defEV += value;
        break;
    case MON_DATA_SPEED_EV:
        blockA->speedEV += value;
        break;
    case MON_DATA_SPATK_EV:
        blockA->spAtkEV += value;
        break;
    case MON_DATA_SPDEF_EV:
        blockA->spDefEV += value;
        break;
    case MON_DATA_COOL:
        if (blockA->cool + value > MAX_CONTEST_STAT) {
            blockA->cool = MAX_CONTEST_STAT;
        } else {
            blockA->cool += value;
        }
        break;
    case MON_DATA_BEAUTY:
        if (blockA->beauty + value > MAX_CONTEST_STAT) {
            blockA->beauty = MAX_CONTEST_STAT;
        } else {
            blockA->beauty += value;
        }
        break;
    case MON_DATA_CUTE:
        if (blockA->cute + value > MAX_CONTEST_STAT) {
            blockA->cute = MAX_CONTEST_STAT;
        } else {
            blockA->cute += value;
        }
        break;
    case MON_DATA_SMART:
        if (blockA->smart + value > MAX_CONTEST_STAT) {
            blockA->smart = MAX_CONTEST_STAT;
        } else {
            blockA->smart += value;
        }
        break;
    case MON_DATA_TOUGH:
        if (blockA->tough + value > MAX_CONTEST_STAT) {
            blockA->tough = MAX_CONTEST_STAT;
        } else {
            blockA->tough += value;
        }
        break;
    case MON_DATA_SHEEN:
        if (blockA->sheen + value > MAX_POKEMON_SHEEN) {
            blockA->sheen = MAX_POKEMON_SHEEN;
        } else {
            blockA->sheen += value;
        }
        break;
    case MON_DATA_MOVE1_PP:
    case MON_DATA_MOVE2_PP:
    case MON_DATA_MOVE3_PP:
    case MON_DATA_MOVE4_PP:
        if (blockB->moveCurrentPPs[param - MON_DATA_MOVE1_PP] + value > MoveTable_CalcMaxPP(blockB->moves[param - MON_DATA_MOVE1_PP], blockB->movePPUps[param - MON_DATA_MOVE1_PP])) {
            blockB->moveCurrentPPs[param - MON_DATA_MOVE1_PP] = MoveTable_CalcMaxPP(blockB->moves[param - MON_DATA_MOVE1_PP], blockB->movePPUps[param - MON_DATA_MOVE1_PP]);
        } else {
            blockB->moveCurrentPPs[param - MON_DATA_MOVE1_PP] += value;
        }
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        if (blockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] + value > MAX_PP_UP_BONUSES) {
            blockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] = MAX_PP_UP_BONUSES;
        } else {
            blockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] += value;
        }
        break;
    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;
    case MON_DATA_HP_IV:
        if (blockB->hpIV + value > MAX_IVS_SINGLE_STAT) {
            blockB->hpIV = MAX_IVS_SINGLE_STAT;
        } else {
            blockB->hpIV += value;
        }
        break;
    case MON_DATA_ATK_IV:
        if (blockB->atkIV + value > MAX_IVS_SINGLE_STAT) {
            blockB->atkIV = MAX_IVS_SINGLE_STAT;
        } else {
            blockB->atkIV += value;
        }
        break;
    case MON_DATA_DEF_IV:
        if (blockB->defIV + value > MAX_IVS_SINGLE_STAT) {
            blockB->defIV = MAX_IVS_SINGLE_STAT;
        } else {
            blockB->defIV += value;
        }
        break;
    case MON_DATA_SPEED_IV:
        if (blockB->speedIV + value > MAX_IVS_SINGLE_STAT) {
            blockB->speedIV = MAX_IVS_SINGLE_STAT;
        } else {
            blockB->speedIV += value;
        }
        break;
    case MON_DATA_SPATK_IV:
        if (blockB->spAtkIV + value > MAX_IVS_SINGLE_STAT) {
            blockB->spAtkIV = MAX_IVS_SINGLE_STAT;
        } else {
            blockB->spAtkIV += value;
        }
        break;
    case MON_DATA_SPDEF_IV:
        if (blockB->spDefIV + value > MAX_IVS_SINGLE_STAT) {
            blockB->spDefIV = MAX_IVS_SINGLE_STAT;
        } else {
            blockB->spDefIV += value;
        }
        break;
    case MON_DATA_PERSONALITY:
    case MON_DATA_IS_PARTY_DECRYPTED:
    case MON_DATA_IS_BOX_DECRYPTED:
    case MON_DATA_CHECKSUM:
    case MON_DATA_SPECIES:
    case MON_DATA_HELD_ITEM:
    case MON_DATA_OT_ID:
    case MON_DATA_ABILITY:
    case MON_DATA_MARKINGS:
    case MON_DATA_LANGUAGE:
    case MON_DATA_SINNOH_CHAMP_RIBBON:
    case MON_DATA_ABILITY_RIBBON:
    case MON_DATA_GREAT_ABILITY_RIBBON:
    case MON_DATA_DOUBLE_ABILITY_RIBBON:
    case MON_DATA_MULTI_ABILITY_RIBBON:
    case MON_DATA_PAIR_ABILITY_RIBBON:
    case MON_DATA_WORLD_ABILITY_RIBBON:
    case MON_DATA_ALERT_RIBBON:
    case MON_DATA_SHOCK_RIBBON:
    case MON_DATA_DOWNCAST_RIBBON:
    case MON_DATA_CARELESS_RIBBON:
    case MON_DATA_RELAX_RIBBON:
    case MON_DATA_SNOOZE_RIBBON:
    case MON_DATA_SMILE_RIBBON:
    case MON_DATA_GORGEOUS_RIBBON:
    case MON_DATA_ROYAL_RIBBON:
    case MON_DATA_GORGEOUS_ROYAL_RIBBON:
    case MON_DATA_FOOTPRINT_RIBBON:
    case MON_DATA_RECORD_RIBBON:
    case MON_DATA_HISTORY_RIBBON:
    case MON_DATA_LEGEND_RIBBON:
    case MON_DATA_RED_RIBBON:
    case MON_DATA_GREEN_RIBBON:
    case MON_DATA_BLUE_RIBBON:
    case MON_DATA_FESTIVAL_RIBBON:
    case MON_DATA_CARNIVAL_RIBBON:
    case MON_DATA_CLASSIC_RIBBON:
    case MON_DATA_PREMIER_RIBBON:
    case MON_DATA_UNUSED_RIBBON_53:
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
    case MON_DATA_IS_EGG:
    case MON_DATA_HAS_NICKNAME:
    case MON_DATA_COOL_RIBBON:
    case MON_DATA_COOL_RIBBON_SUPER:
    case MON_DATA_COOL_RIBBON_HYPER:
    case MON_DATA_COOL_RIBBON_MASTER:
    case MON_DATA_BEAUTY_RIBBON:
    case MON_DATA_BEAUTY_RIBBON_SUPER:
    case MON_DATA_BEAUTY_RIBBON_HYPER:
    case MON_DATA_BEAUTY_RIBBON_MASTER:
    case MON_DATA_CUTE_RIBBON:
    case MON_DATA_CUTE_RIBBON_SUPER:
    case MON_DATA_CUTE_RIBBON_HYPER:
    case MON_DATA_CUTE_RIBBON_MASTER:
    case MON_DATA_SMART_RIBBON:
    case MON_DATA_SMART_RIBBON_SUPER:
    case MON_DATA_SMART_RIBBON_HYPER:
    case MON_DATA_SMART_RIBBON_MASTER:
    case MON_DATA_TOUGH_RIBBON:
    case MON_DATA_TOUGH_RIBBON_SUPER:
    case MON_DATA_TOUGH_RIBBON_HYPER:
    case MON_DATA_TOUGH_RIBBON_MASTER:
    case MON_DATA_CHAMPION_RIBBON:
    case MON_DATA_WINNING_RIBBON:
    case MON_DATA_VICTORY_RIBBON:
    case MON_DATA_ARTIST_RIBBON:
    case MON_DATA_EFFORT_RIBBON:
    case MON_DATA_MARINE_RIBBON:
    case MON_DATA_LAND_RIBBON:
    case MON_DATA_SKY_RIBBON:
    case MON_DATA_COUNTRY_RIBBON:
    case MON_DATA_NATIONAL_RIBBON:
    case MON_DATA_EARTH_RIBBON:
    case MON_DATA_WORLD_RIBBON:
    case MON_DATA_FATEFUL_ENCOUNTER:
    case MON_DATA_GENDER:
    case MON_DATA_FORM:
    case MON_DATA_UNUSED_113:
    case MON_DATA_UNUSED_114:
    case MON_DATA_NICKNAME:
    case MON_DATA_NICKNAME_STRING:
    case MON_DATA_NICKNAME_STRING_AND_FLAG:
    case MON_DATA_UNUSED_121:
    case MON_DATA_MET_GAME:
    case MON_DATA_SUPER_COOL_RIBBON:
    case MON_DATA_SUPER_COOL_RIBBON_GREAT:
    case MON_DATA_SUPER_COOL_RIBBON_ULTRA:
    case MON_DATA_SUPER_COOL_RIBBON_MASTER:
    case MON_DATA_SUPER_BEAUTY_RIBBON:
    case MON_DATA_SUPER_BEAUTY_RIBBON_GREAT:
    case MON_DATA_SUPER_BEAUTY_RIBBON_ULTRA:
    case MON_DATA_SUPER_BEAUTY_RIBBON_MASTER:
    case MON_DATA_SUPER_CUTE_RIBBON:
    case MON_DATA_SUPER_CUTE_RIBBON_GREAT:
    case MON_DATA_SUPER_CUTE_RIBBON_ULTRA:
    case MON_DATA_SUPER_CUTE_RIBBON_MASTER:
    case MON_DATA_SUPER_SMART_RIBBON:
    case MON_DATA_SUPER_SMART_RIBBON_GREAT:
    case MON_DATA_SUPER_SMART_RIBBON_ULTRA:
    case MON_DATA_SUPER_SMART_RIBBON_MASTER:
    case MON_DATA_SUPER_TOUGH_RIBBON:
    case MON_DATA_SUPER_TOUGH_RIBBON_GREAT:
    case MON_DATA_SUPER_TOUGH_RIBBON_ULTRA:
    case MON_DATA_SUPER_TOUGH_RIBBON_MASTER:
    case MON_DATA_UNUSED_RIBBON_143:
    case MON_DATA_OT_NAME:
    case MON_DATA_OT_NAME_STRING:
    case MON_DATA_EGG_YEAR:
    case MON_DATA_EGG_MONTH:
    case MON_DATA_EGG_DAY:
    case MON_DATA_MET_YEAR:
    case MON_DATA_MET_MONTH:
    case MON_DATA_MET_DAY:
    case MON_DATA_EGG_LOCATION:
    case MON_DATA_MET_LOCATION:
    case MON_DATA_POKERUS:
    case MON_DATA_POKEBALL:
    case MON_DATA_MET_LEVEL:
    case MON_DATA_OT_GENDER:
    case MON_DATA_MET_TERRAIN:
    case MON_DATA_UNUSED_159:
    case MON_DATA_COMBINED_IVS:
    case MON_DATA_NO_PRINT_GENDER:
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
    case MON_DATA_SPECIES_NAME:
    default:
        GF_ASSERT(0);
        break;
    }
}

SpeciesData *SpeciesData_FromMonForm(int monSpecies, int monForm, int heapID)
{
    SpeciesData *speciesData = Heap_Alloc(heapID, sizeof(SpeciesData));
    SpeciesData_LoadForm(monSpecies, monForm, speciesData);

    return speciesData;
}

SpeciesData *SpeciesData_FromMonSpecies(int monSpecies, int heapID)
{
    SpeciesData *speciesData = Heap_Alloc(heapID, sizeof(SpeciesData));
    SpeciesData_LoadSpecies(monSpecies, speciesData);

    return speciesData;
}

u32 SpeciesData_GetValue(SpeciesData *speciesData, enum SpeciesDataParam param)
{
    u32 result;

    GF_ASSERT(speciesData);

    switch (param) {
    case SPECIES_DATA_BASE_HP:
        result = speciesData->baseStats.hp;
        break;
    case SPECIES_DATA_BASE_ATK:
        result = speciesData->baseStats.attack;
        break;
    case SPECIES_DATA_BASE_DEF:
        result = speciesData->baseStats.defense;
        break;
    case SPECIES_DATA_BASE_SPEED:
        result = speciesData->baseStats.speed;
        break;
    case SPECIES_DATA_BASE_SP_ATK:
        result = speciesData->baseStats.spAttack;
        break;
    case SPECIES_DATA_BASE_SP_DEF:
        result = speciesData->baseStats.spDefense;
        break;
    case SPECIES_DATA_TYPE_1:
        result = speciesData->types[0];
        break;
    case SPECIES_DATA_TYPE_2:
        result = speciesData->types[1];
        break;
    case SPECIES_DATA_CATCH_RATE:
        result = speciesData->catchRate;
        break;
    case SPECIES_DATA_BASE_EXP_REWARD:
        result = speciesData->baseExpReward;
        break;
    case SPECIES_DATA_EV_HP_YIELD:
        result = speciesData->evYields.hp;
        break;
    case SPECIES_DATA_EV_ATK_YIELD:
        result = speciesData->evYields.attack;
        break;
    case SPECIES_DATA_EV_DEF_YIELD:
        result = speciesData->evYields.defense;
        break;
    case SPECIES_DATA_EV_SPEED_YIELD:
        result = speciesData->evYields.speed;
        break;
    case SPECIES_DATA_EV_SP_ATK_YIELD:
        result = speciesData->evYields.spAttack;
        break;
    case SPECIES_DATA_EV_SP_DEF_YIELD:
        result = speciesData->evYields.spDefense;
        break;
    case SPECIES_DATA_HELD_ITEM_COMMON:
        result = speciesData->wildHeldItems.common;
        break;
    case SPECIES_DATA_HELD_ITEM_RARE:
        result = speciesData->wildHeldItems.rare;
        break;
    case SPECIES_DATA_GENDER_RATIO:
        result = speciesData->genderRatio;
        break;
    case SPECIES_DATA_HATCH_CYCLES:
        result = speciesData->hatchCycles;
        break;
    case SPECIES_DATA_BASE_FRIENDSHIP:
        result = speciesData->baseFriendship;
        break;
    case SPECIES_DATA_EXP_RATE:
        result = speciesData->expRate;
        break;
    case SPECIES_DATA_EGG_GROUP_1:
        result = speciesData->eggGroups[0];
        break;
    case SPECIES_DATA_EGG_GROUP_2:
        result = speciesData->eggGroups[1];
        break;
    case SPECIES_DATA_ABILITY_1:
        result = speciesData->abilities[0];
        break;
    case SPECIES_DATA_ABILITY_2:
        result = speciesData->abilities[1];
        break;
    case SPECIES_DATA_SAFARI_FLEE_RATE:
        result = speciesData->safariFleeRate;
        break;
    case SPECIES_DATA_BODY_COLOR:
        result = speciesData->bodyColor;
        break;
    case SPECIES_DATA_FLIP_SPRITE:
        result = speciesData->flipSprite;
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_1:
        result = speciesData->tmLearnsetMasks[0];
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_2:
        result = speciesData->tmLearnsetMasks[1];
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_3:
        result = speciesData->tmLearnsetMasks[2];
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_4:
        result = speciesData->tmLearnsetMasks[3];
        break;
    }

    return result;
}

void SpeciesData_Free(SpeciesData *speciesData)
{
    GF_ASSERT(speciesData);
    Heap_Free(speciesData);
}

u32 SpeciesData_GetFormValue(int monSpecies, int monForm, enum SpeciesDataParam param)
{
    monSpecies = Pokemon_GetFormNarcIndex(monSpecies, monForm);

    SpeciesData *speciesData = SpeciesData_FromMonSpecies(monSpecies, HEAP_ID_SYSTEM);
    u32 result = SpeciesData_GetValue(speciesData, param);

    SpeciesData_Free(speciesData);

    return result;
}

u32 SpeciesData_GetSpeciesValue(int monSpecies, enum SpeciesDataParam param)
{
    SpeciesData *speciesData = SpeciesData_FromMonSpecies(monSpecies, HEAP_ID_SYSTEM);
    u32 result = SpeciesData_GetValue(speciesData, param);

    SpeciesData_Free(speciesData);

    return result;
}

u8 Pokemon_GetPercentToNextLevel(Pokemon *mon)
{
    BOOL recrypt = Pokemon_EnterDecryptionContext(mon);
    u16 monSpecies = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u8 monLevel = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
    u32 monCurrentLevelExp = Pokemon_GetSpeciesBaseExpAt(monSpecies, monLevel);
    u32 monNextLevelExp = Pokemon_GetSpeciesBaseExpAt(monSpecies, monLevel + 1);
    u32 monExp = Pokemon_GetData(mon, MON_DATA_EXPERIENCE, NULL);

    Pokemon_ExitDecryptionContext(mon, recrypt);
    u8 monPercentToNextLevel = ((monExp - monCurrentLevelExp) * 100) / (monNextLevelExp - monCurrentLevelExp);

    return monPercentToNextLevel;
}

u32 Pokemon_GetExpToNextLevel(Pokemon *mon)
{
    return BoxPokemon_GetExpToNextLevel(&mon->box);
}

static u32 BoxPokemon_GetExpToNextLevel(BoxPokemon *boxMon)
{
    u16 monSpecies = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u16 monNextlevel = BoxPokemon_GetLevel(boxMon) + 1;
    u32 monExp = BoxPokemon_GetData(boxMon, MON_DATA_EXPERIENCE, NULL);

    return Pokemon_GetSpeciesBaseExpAt(monSpecies, monNextlevel) - monExp;
}

u32 Pokemon_GetCurrentLevelBaseExp(Pokemon *mon)
{
    return Pokemon_GetSpeciesBaseExpAt(Pokemon_GetData(mon, MON_DATA_SPECIES, NULL), Pokemon_GetData(mon, MON_DATA_LEVEL, NULL));
}

u32 Pokemon_GetSpeciesBaseExpAt(int monSpecies, int monLevel)
{
    return Pokemon_GetExpRateBaseExpAt(SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_EXP_RATE), monLevel);
}

static void Pokemon_LoadExperienceTableOf(enum ExpRate monExpRate, u32 *monExpTable)
{
    GF_ASSERT(monExpRate < EXP_RATE_COUNT);
    NARC_ReadWholeMemberByIndexPair(monExpTable, NARC_INDEX_POKETOOL__PERSONAL__PL_GROWTBL, monExpRate);
}

static u32 Pokemon_GetExpRateBaseExpAt(enum ExpRate monExpRate, int monLevel)
{
    GF_ASSERT(monExpRate < EXP_RATE_COUNT);
    GF_ASSERT(monLevel <= MAX_POKEMON_LEVEL + 1);

    u32 *expTable = Heap_Alloc(HEAP_ID_SYSTEM, (MAX_POKEMON_LEVEL + 1) * 4);
    Pokemon_LoadExperienceTableOf(monExpRate, expTable);

    u32 result = expTable[monLevel];
    Heap_Free(expTable);

    return result;
}

u32 Pokemon_GetLevel(Pokemon *mon)
{
    return BoxPokemon_GetLevel(&mon->box);
}

u32 BoxPokemon_GetLevel(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    int monSpecies = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u32 monExp = BoxPokemon_GetData(boxMon, MON_DATA_EXPERIENCE, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    return Pokemon_GetSpeciesLevelAt(monSpecies, monExp);
}

u32 Pokemon_GetSpeciesLevelAt(u16 monSpecies, u32 monExp)
{
    SpeciesData *speciesData = SpeciesData_FromMonSpecies(monSpecies, HEAP_ID_SYSTEM);

    u32 monLevel = SpeciesData_GetLevelAt(speciesData, monSpecies, monExp);
    SpeciesData_Free(speciesData);

    return monLevel;
}

u32 SpeciesData_GetLevelAt(SpeciesData *speciesData, u16 unused_monSpecies, u32 monExp)
{
    static u32 monExpTable[MAX_POKEMON_LEVEL + 1];

    enum ExpRate monExpRate = SpeciesData_GetValue(speciesData, SPECIES_DATA_EXP_RATE);
    Pokemon_LoadExperienceTableOf(monExpRate, monExpTable);

    int i;
    for (i = 1; i < MAX_POKEMON_LEVEL + 1; i++) {
        if (monExpTable[i] > monExp) {
            break;
        }
    }

    return i - 1;
}

u8 Pokemon_GetNature(Pokemon *mon)
{
    return BoxPokemon_GetNature(&mon->box);
}

u8 BoxPokemon_GetNature(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    u32 monPersonality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    return Pokemon_GetNatureOf(monPersonality);
}

u8 Pokemon_GetNatureOf(u32 monPersonality)
{
    return (u8)(monPersonality % NATURE_COUNT);
}

static const s8 sNatureStatAffinities[][5] = {
    [NATURE_HARDY] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_LONELY] = {
        [STAT_ATTACK - 1] = 1,
        [STAT_DEFENSE - 1] = -1,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_BRAVE] = {
        [STAT_ATTACK - 1] = 1,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = -1,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_ADAMANT] = {
        [STAT_ATTACK - 1] = 1,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = -1,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_NAUGHTY] = {
        [STAT_ATTACK - 1] = 1,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = -1,
    },
    [NATURE_BOLD] = {
        [STAT_ATTACK - 1] = -1,
        [STAT_DEFENSE - 1] = 1,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_DOCILE] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_RELAXED] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 1,
        [STAT_SPEED - 1] = -1,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_IMPISH] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 1,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = -1,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_LAX] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 1,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = -1,
    },
    [NATURE_TIMID] = {
        [STAT_ATTACK - 1] = -1,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 1,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_HASTY] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = -1,
        [STAT_SPEED - 1] = 1,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_SERIOUS] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_JOLLY] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 1,
        [STAT_SPECIAL_ATTACK - 1] = -1,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_NAIVE] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 1,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = -1,
    },
    [NATURE_MODEST] = {
        [STAT_ATTACK - 1] = -1,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 1,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_MILD] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = -1,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 1,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_QUIET] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = -1,
        [STAT_SPECIAL_ATTACK - 1] = 1,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_BASHFUL] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    },
    [NATURE_RASH] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 1,
        [STAT_SPECIAL_DEFENSE - 1] = -1,
    },
    [NATURE_CALM] = {
        [STAT_ATTACK - 1] = -1,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 1,
    },
    [NATURE_GENTLE] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = -1,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 1,
    },
    [NATURE_SASSY] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = -1,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 1,
    },
    [NATURE_CAREFUL] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = -1,
        [STAT_SPECIAL_DEFENSE - 1] = 1,
    },
    [NATURE_QUIRKY] = {
        [STAT_ATTACK - 1] = 0,
        [STAT_DEFENSE - 1] = 0,
        [STAT_SPEED - 1] = 0,
        [STAT_SPECIAL_ATTACK - 1] = 0,
        [STAT_SPECIAL_DEFENSE - 1] = 0,
    }
};

static u16 Pokemon_GetNatureStatValue(u8 monNature, u16 monStatValue, u8 statType)
{
    if (statType < STAT_ATTACK || statType > STAT_SPECIAL_DEFENSE) {
        return monStatValue;
    }

    u16 result;
    switch (sNatureStatAffinities[monNature][statType - 1]) {
    case 1:
        result = monStatValue * 110;
        result /= 100;
        break;
    case -1:
        result = monStatValue * 90;
        result /= 100;
        break;
    default:
        result = monStatValue;
        break;
    }

    return result;
}

s8 Pokemon_GetStatAffinityOf(u8 monNature, u8 statType)
{
    return sNatureStatAffinities[monNature][statType - 1];
}

static const s8 Unk_020F05A0[][3] = {
    { 5, 3, 2 }, // ??? in battle overlay
    { 5, 3, 2 }, // unused?
    { 1, 1, 0 }, // unused?
    { 3, 2, 1 }, // ??? in battle overlay
    { 1, 1, 0 }, // ??? in unk_02084B70.c
    { 1, 1, 1 }, // walking 128 steps
    { -1, -1, -1 }, // fainting (opponent level difference < 30)
    { -5, -5, -10 }, // letting poison tick mon to 1HP
    { -5, -5, -10 }, // fainting (opponent level difference >= 30)
    { 3, 2, 1 } // ??? in unk_020933F8.c
};

void Pokemon_UpdateFriendship(Pokemon *mon, u8 param1, u16 param2)
{
    // TODO enum value (param 1 is method of gaining/losing friendship)
    if (param1 == 5) {
        if (LCRNG_Next() & 1) {
            return;
        }
    }

    u16 monSpeciesEgg = Pokemon_GetData(mon, MON_DATA_SPECIES_OR_EGG, NULL);

    if (monSpeciesEgg == SPECIES_NONE || monSpeciesEgg == SPECIES_EGG) {
        return;
    }

    u16 monHeldItem = Pokemon_GetData(mon, MON_DATA_HELD_ITEM, NULL);
    u8 itemHoldEffect = Item_LoadParam(monHeldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM);
    u8 v4 = 0;
    s16 monFriendship = Pokemon_GetData(mon, MON_DATA_FRIENDSHIP, NULL);

    if (monFriendship >= LOW_FRIENDSHIP_LIMIT) {
        v4++;
    }

    if (monFriendship >= MED_FRIENDSHIP_LIMIT) {
        v4++;
    }

    s8 v3 = Unk_020F05A0[param1][v4];

    if (v3 > 0 && Pokemon_GetData(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
        v3++;
    }

    if (v3 > 0 && Pokemon_GetData(mon, MON_DATA_EGG_LOCATION, NULL) == param2) {
        v3++;
    }

    if (v3 > 0) {
        if (itemHoldEffect == HOLD_EFFECT_FRIENDSHIP_UP) {
            v3 = v3 * 150 / 100;
        }
    }

    monFriendship += v3;

    if (monFriendship < 0) {
        monFriendship = 0;
    }

    if (monFriendship > MAX_FRIENDSHIP_VALUE) {
        monFriendship = MAX_FRIENDSHIP_VALUE;
    }

    Pokemon_SetData(mon, MON_DATA_FRIENDSHIP, &monFriendship);
}

u8 Pokemon_GetGender(Pokemon *mon)
{
    return BoxPokemon_GetGender(&mon->box);
}

u8 BoxPokemon_GetGender(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    u16 monSpecies = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u32 monPersonality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    return Pokemon_GetGenderOf(monSpecies, monPersonality);
}

u8 Pokemon_GetGenderOf(u16 monSpecies, u32 monPersonality)
{
    SpeciesData *speciesData = SpeciesData_FromMonSpecies(monSpecies, HEAP_ID_SYSTEM);
    u8 monGender = SpeciesData_GetGenderOf(speciesData, monSpecies, monPersonality);

    SpeciesData_Free(speciesData);

    return monGender;
}

u8 SpeciesData_GetGenderOf(SpeciesData *speciesData, u16 unused_monSpecies, u32 monPersonality)
{
    u8 monGender = SpeciesData_GetValue(speciesData, SPECIES_DATA_GENDER_RATIO);

    switch (monGender) {
    case GENDER_RATIO_MALE_ONLY:
        return GENDER_MALE;
    case GENDER_RATIO_FEMALE_ONLY:
        return GENDER_FEMALE;
    case GENDER_RATIO_NO_GENDER:
        return GENDER_NONE;
    }

    if (monGender > (monPersonality & 0xff)) {
        return GENDER_FEMALE;
    } else {
        return GENDER_MALE;
    }
}

// TODO return bool
u8 Pokemon_IsShiny(Pokemon *mon)
{
    return BoxPokemon_IsShiny(&mon->box);
}

// TODO return bool
static u8 BoxPokemon_IsShiny(BoxPokemon *boxMon)
{
    u32 monOTID = BoxPokemon_GetData(boxMon, MON_DATA_OT_ID, NULL);
    u32 monPersonality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);

    return Pokemon_IsPersonalityShiny(monOTID, monPersonality);
}

static inline BOOL Pokemon_InlineIsPersonalityShiny(u32 monOTID, u32 monPersonality)
{
    return (((monOTID & 0xFFFF0000) >> 16) ^ (monOTID & 0xFFFF) ^ ((monPersonality & 0xFFFF0000) >> 16) ^ (monPersonality & 0xFFFF)) < 8;
}

u8 Pokemon_IsPersonalityShiny(u32 monOTID, u32 monPersonality)
{
    return Pokemon_InlineIsPersonalityShiny(monOTID, monPersonality);
}

u32 Pokemon_FindShinyPersonality(u32 monOTID)
{
    // 1. Pre-compute the XOR of the two halves of the trainer ID. We only
    // care about the most-significant 13 bits, so truncate the last 3.
    monOTID = (((monOTID & 0xFFFF0000) >> 16) ^ (monOTID & 0xFFFF)) >> 3;

    int i;

    // 2. Randomize the least-significant 3-bits of each half of the
    // generated personality.
    u16 rndLow = LCRNG_Next() & 0x7;
    u16 rndHigh = LCRNG_Next() & 0x7;

    // 3. For each of the remaining 13 bits, pick some permutation of them
    // across both halves to be set to 1 such that the XOR of their bits
    // will XOR with the monOTID to 0.
    for (i = 0; i < 13; i++) {
        if (monOTID & FlagIndex(i)) {
            // Trainer ID XORs to 1; set one of the two personality bits to 1
            if (LCRNG_Next() & 1) {
                rndLow |= FlagIndex(i + 3);
            } else {
                rndHigh |= FlagIndex(i + 3);
            }
        } else if (LCRNG_Next() & 1) {
            // Trainer ID XORs to 0; set both of the two bits to either 0 or 1
            rndLow |= FlagIndex(i + 3);
            rndHigh |= FlagIndex(i + 3);
        }
    }

    return rndLow | (rndHigh << 16);
}

void Pokemon_BuildSpriteTemplate(PokemonSpriteTemplate *spriteTemplate, Pokemon *mon, u8 face)
{
    BoxPokemon_BuildSpriteTemplate(spriteTemplate, &mon->box, face, FALSE);
}

void Pokemon_BuildSpriteTemplateDP(PokemonSpriteTemplate *spriteTemplate, Pokemon *mon, u8 face)
{
    BoxPokemon_BuildSpriteTemplate(spriteTemplate, &mon->box, face, TRUE);
}

void BoxPokemon_BuildSpriteTemplate(PokemonSpriteTemplate *spriteTemplate, BoxPokemon *mon, u8 face, BOOL preferDP)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(mon);

    u16 monSpeciesEgg = BoxPokemon_GetData(mon, MON_DATA_SPECIES_OR_EGG, NULL);
    u8 monGender = BoxPokemon_GetGender(mon);
    u8 monShininess = BoxPokemon_IsShiny(mon);
    u32 monPersonality = BoxPokemon_GetData(mon, MON_DATA_PERSONALITY, NULL);

    u8 monForm;
    if (monSpeciesEgg == SPECIES_EGG) {
        if (BoxPokemon_GetData(mon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            monForm = 1;
        } else {
            monForm = 0;
        }
    } else {
        monForm = BoxPokemon_GetData(mon, MON_DATA_FORM, NULL);
    }

    if (preferDP == TRUE) {
        BuildPokemonSpriteTemplateDP(spriteTemplate, monSpeciesEgg, monGender, face, monShininess, monForm, monPersonality);
    } else {
        BuildPokemonSpriteTemplate(spriteTemplate, monSpeciesEgg, monGender, face, monShininess, monForm, monPersonality);
    }

    BoxPokemon_ExitDecryptionContext(mon, reencrypt);
}

void BuildPokemonSpriteTemplate(PokemonSpriteTemplate *spriteTemplate, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality)
{
    spriteTemplate->spindaSpots = 0;
    spriteTemplate->dummy = 0;
    spriteTemplate->personality = 0;
    form = Pokemon_SanitizeFormId(species, form);

    switch (species) {
    case SPECIES_BURMY:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 72 + (face / 2) + form * 2;
        spriteTemplate->palette = 166 + shiny + form * 2;
        break;

    case SPECIES_WORMADAM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 78 + (face / 2) + form * 2;
        spriteTemplate->palette = 172 + shiny + form * 2;
        break;

    case SPECIES_SHELLOS:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 84 + face + form;
        spriteTemplate->palette = 178 + shiny + form * 2;
        break;

    case SPECIES_GASTRODON:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 88 + face + form;
        spriteTemplate->palette = 182 + shiny + form * 2;
        break;

    case SPECIES_CHERRIM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 92 + face + form;
        spriteTemplate->palette = 186 + (shiny * 2) + form;
        break;

    case SPECIES_ARCEUS:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 96 + (face / 2) + form * 2;
        spriteTemplate->palette = 190 + shiny + form * 2;
        break;

    case SPECIES_CASTFORM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 64 + (face * 2) + form;
        spriteTemplate->palette = 158 + (shiny * 4) + form;
        break;

    case SPECIES_DEOXYS:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 0 + (face / 2) + form * 2;
        spriteTemplate->palette = 154 + shiny;
        break;

    case SPECIES_UNOWN:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 8 + (face / 2) + form * 2;
        spriteTemplate->palette = 156 + shiny;
        break;

    case SPECIES_EGG:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 132 + form;
        spriteTemplate->palette = 226 + form;
        break;

    case SPECIES_BAD_EGG:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 132;
        spriteTemplate->palette = 226;
        break;

    case SPECIES_SHAYMIN:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 134 + (face / 2) + form * 2;
        spriteTemplate->palette = 228 + shiny + form * 2;
        break;

    case SPECIES_ROTOM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 138 + (face / 2) + form * 2;
        spriteTemplate->palette = 232 + shiny + form * 2;
        break;

    case SPECIES_GIRATINA:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        spriteTemplate->character = 150 + (face / 2) + form * 2;
        spriteTemplate->palette = 244 + shiny + form * 2;
        break;

    default:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_POKEGRA;
        spriteTemplate->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0); // ternary must remain to match
        spriteTemplate->palette = species * 6 + 4 + shiny;

        if (species == SPECIES_SPINDA && face == FACE_FRONT) {
            spriteTemplate->spindaSpots = SPECIES_SPINDA;
            spriteTemplate->dummy = 0;
            spriteTemplate->personality = personality;
        }
    }
}

u8 Pokemon_SanitizeFormId(u16 monSpecies, u8 monForm)
{
    switch (monSpecies) {
    case SPECIES_BURMY:
        if (monForm > BURMY_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_WORMADAM:
        if (monForm > WORMADAM_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_SHELLOS:
        if (monForm > SHELLOS_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_GASTRODON:
        if (monForm > GASTRODON_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_CHERRIM:
        if (monForm > CHERRIM_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_ARCEUS:
        if (monForm > ARCEUS_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_CASTFORM:
        if (monForm > CASTFORM_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_DEOXYS:
        if (monForm > DEOXYS_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_UNOWN:
        if (monForm >= UNOWN_FORM_COUNT) {
            monForm = 0;
        }
        break;
    case SPECIES_EGG:
        if (monForm > EGG_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_SHAYMIN:
        if (monForm > SHAYMIN_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_ROTOM:
        if (monForm > ROTOM_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    case SPECIES_GIRATINA:
        if (monForm > GIRATINA_FORM_COUNT - 1) {
            monForm = 0;
        }
        break;
    }

    return monForm;
}

/**
 * @brief Build a PokemonSpriteTemplate for a Pokemon sprite, preferring sprites from
 * Diamond/Pearl over Platinum.
 *
 * This routine will still use sprites from Platinum for Pokemon variants which
 * did not exist in Diamond/Pearl, namely:
 * - Giratina-Origin
 * - Shaymin-Sky
 * - Rotom appliances
 *
 * @param spriteTemplate Pointer to the sprite template to be populated
 * @param species        The Pokemon's species
 * @param gender         The Pokemon's gender
 * @param face           Which face of the Pokemon the player sees
 * @param shiny          1 if the Pokemon is shiny, 0 if not
 * @param form           The Pokemon's form
 * @param personality    The Pokemon's personality value
 */
static void BuildPokemonSpriteTemplateDP(PokemonSpriteTemplate *spriteTemplate, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality)
{
    spriteTemplate->spindaSpots = 0;
    spriteTemplate->dummy = 0;
    spriteTemplate->personality = 0;

    form = Pokemon_SanitizeFormId(species, form);

    switch (species) {
    case SPECIES_BURMY:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 72 + (face / 2) + form * 2;
        spriteTemplate->palette = 146 + shiny + form * 2;
        break;

    case SPECIES_WORMADAM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 78 + (face / 2) + form * 2;
        spriteTemplate->palette = 152 + shiny + form * 2;
        break;

    case SPECIES_SHELLOS:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 84 + face + form;
        spriteTemplate->palette = 158 + shiny + form * 2;
        break;

    case SPECIES_GASTRODON:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 88 + face + form;
        spriteTemplate->palette = 162 + shiny + form * 2;
        break;

    case SPECIES_CHERRIM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 92 + face + form;
        spriteTemplate->palette = 166 + (shiny * 2) + form;
        break;

    case SPECIES_ARCEUS:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 96 + (face / 2) + form * 2;
        spriteTemplate->palette = 170 + shiny + form * 2;
        break;

    case SPECIES_CASTFORM:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 64 + (face * 2) + form;
        spriteTemplate->palette = 138 + (shiny * 4) + form;
        break;

    case SPECIES_DEOXYS:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 0 + (face / 2) + form * 2;
        spriteTemplate->palette = 134 + shiny;
        break;

    case SPECIES_UNOWN:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 8 + (face / 2) + form * 2;
        spriteTemplate->palette = 136 + shiny;
        break;

    case SPECIES_EGG:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 132 + form;
        spriteTemplate->palette = 206 + form;
        break;

    case SPECIES_BAD_EGG:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        spriteTemplate->character = 132;
        spriteTemplate->palette = 206;
        break;

    case SPECIES_SHAYMIN:
        if (form > 0) {
            spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
            spriteTemplate->character = 134 + (face / 2) + form * 2;
            spriteTemplate->palette = 230 + shiny;
        } else {
            spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
            spriteTemplate->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
            spriteTemplate->palette = species * 6 + 4 + shiny;
        }
        break;

    case SPECIES_ROTOM:
        if (form > 0) {
            spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
            spriteTemplate->character = 138 + (face / 2) + form * 2;
            spriteTemplate->palette = 232 + shiny + form * 2;
        } else {
            spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
            spriteTemplate->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
            spriteTemplate->palette = species * 6 + 4 + shiny;
        }
        break;

    case SPECIES_GIRATINA:
        if (form > 0) {
            spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
            spriteTemplate->character = 150 + (face / 2) + form * 2;
            spriteTemplate->palette = 244 + shiny + form * 2;
        } else {
            spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
            spriteTemplate->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
            spriteTemplate->palette = species * 6 + 4 + shiny;
        }
        break;

    default:
        spriteTemplate->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
        spriteTemplate->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
        spriteTemplate->palette = species * 6 + 4 + shiny;

        if (species == SPECIES_SPINDA && face == FACE_FRONT) {
            spriteTemplate->spindaSpots = SPECIES_SPINDA;
            spriteTemplate->dummy = 0;
            spriteTemplate->personality = personality;
        }

        break;
    }
}

u8 Pokemon_SpriteYOffset(Pokemon *mon, u8 face)
{
    return BoxPokemon_SpriteYOffset(&mon->box, face, FALSE);
}

u8 Pokemon_DPSpriteYOffset(Pokemon *mon, u8 face)
{
    return BoxPokemon_SpriteYOffset(&mon->box, face, TRUE);
}

u8 BoxPokemon_SpriteYOffset(BoxPokemon *boxMon, u8 face, BOOL preferDP)
{
    u16 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES_OR_EGG, NULL);
    u8 gender = BoxPokemon_GetGender(boxMon);
    u32 personality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);

    u8 form;
    if (species == SPECIES_EGG) {
        if (BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            form = 1;
        } else {
            form = 0;
        }
    } else {
        form = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    }

    if (preferDP == TRUE) {
        return LoadPokemonDPSpriteHeight(species, gender, face, form, personality);
    }

    return LoadPokemonSpriteYOffset(species, gender, face, form, personality);
}

u8 LoadPokemonSpriteYOffset(u16 species, u8 gender, u8 face, u8 form, u32 personality)
{
    form = Pokemon_SanitizeFormId(species, form);

    enum NarcID narcID;
    int memberIndex;
    switch (species) {
    case SPECIES_BURMY:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 72 + (face / 2) + form * 2;
        break;

    case SPECIES_WORMADAM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 78 + (face / 2) + form * 2;
        break;

    case SPECIES_SHELLOS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 84 + face + form;
        break;

    case SPECIES_GASTRODON:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 88 + face + form;
        break;

    case SPECIES_CHERRIM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 92 + face + form;
        break;

    case SPECIES_ARCEUS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 96 + (face / 2) + form * 2;
        break;

    case SPECIES_CASTFORM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 64 + face * 2 + form;
        break;

    case SPECIES_DEOXYS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 0 + (face / 2) + form * 2;
        break;

    case SPECIES_UNOWN:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 8 + (face / 2) + form * 2;
        break;

    case SPECIES_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 132 + form;
        break;

    case SPECIES_BAD_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 132;
        break;

    case SPECIES_SHAYMIN:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 136 + (face / 2) + form * 2;
        break;

    case SPECIES_ROTOM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 140 + (face / 2) + form * 2;
        break;

    case SPECIES_GIRATINA:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 152 + (face / 2) + form * 2;
        break;

    default:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT;
        memberIndex = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        break;
    }

    u8 result;
    NARC_ReadWholeMemberByIndexPair(&result, narcID, memberIndex);
    return result;
}

static u8 LoadPokemonDPSpriteHeight(u16 species, u8 gender, u8 face, u8 form, u32 personality)
{
    // TODO enum values?
    form = Pokemon_SanitizeFormId(species, form);

    enum NarcID narcID;
    int memberIndex;
    switch (species) {
    case SPECIES_BURMY:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 72 + (face / 2) + form * 2;
        break;

    case SPECIES_WORMADAM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 78 + (face / 2) + form * 2;
        break;

    case SPECIES_SHELLOS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 84 + face + form;
        break;

    case SPECIES_GASTRODON:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 88 + face + form;
        break;

    case SPECIES_CHERRIM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 92 + face + form;
        break;

    case SPECIES_ARCEUS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 96 + (face / 2) + form * 2;
        break;

    case SPECIES_CASTFORM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 64 + face * 2 + form;
        break;

    case SPECIES_DEOXYS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 0 + (face / 2) + form * 2;
        break;

    case SPECIES_UNOWN:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 8 + (face / 2) + form * 2;
        break;

    case SPECIES_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 132 + form;
        break;

    case SPECIES_BAD_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 132;
        break;

    case SPECIES_SHAYMIN:
        if (form > 0) {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            memberIndex = 136 + (face / 2) + form * 2;
        } else {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            memberIndex = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        }
        break;

    case SPECIES_ROTOM:
        if (form > 0) {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            memberIndex = 140 + (face / 2) + form * 2;
        } else {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            memberIndex = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        }
        break;

    case SPECIES_GIRATINA:
        if (form > 0) {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            memberIndex = 152 + (face / 2) + form * 2;
        } else {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            memberIndex = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        }
        break;

    default:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
        memberIndex = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        break;
    }

    u8 result;
    NARC_ReadWholeMemberByIndexPair(&result, narcID, memberIndex);
    return result;
}

void sub_0207697C(PokemonSpriteTemplate *param0, u16 param1)
{
    param0->narcID = 60;
    param0->character = param1 * 2;
    param0->palette = param1 * 2 + 1;
    param0->spindaSpots = 0;
    param0->dummy = 0;
    param0->personality = 0;
}

static const SpriteTemplate Unk_020F05E4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x4E2F, 0x4E2A, 0x4E27, 0x4E27, 0xffffffff, 0xffffffff },
    0x2,
    0x1
};

static const int Unk_020F0588[] = {
    0x0,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1
};

ManagedSprite *sub_02076994(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int heapID)
{
    SpriteTemplate v0;
    ManagedSprite *v1;
    NARC *narc;
    UnkStruct_ov5_021DE5D0 v3;
    int v4 = 1;

    sub_02076AAC(param5, param6, &v3);

    // TODO enum values?
    if (param5 == 102) {
        v4 = 2;
    }

    narc = NARC_ctor(v3.narcID, heapID);

    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, narc, v3.unk_04, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 20015 + param7);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param2, PLTTBUF_MAIN_OBJ, param0, param1, narc, v3.unk_08, FALSE, v4, NNS_G2D_VRAM_TYPE_2DMAIN, 20010 + param7);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, narc, v3.unk_0C, FALSE, 20007 + param7);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, narc, v3.unk_10, FALSE, 20007 + param7);
    NARC_dtor(narc);

    v0 = Unk_020F05E4;

    // TODO enum values?
    v0.resources[0] = 20015 + param7;
    v0.resources[1] = 20010 + param7;
    v0.resources[2] = 20007 + param7;
    v0.resources[3] = 20007 + param7;
    v0.priority = Unk_020F0588[param7];

    v1 = SpriteSystem_NewSprite(param0, param1, &v0);

    Sprite_SetExplicitPaletteOffsetAutoAdjust(v1->sprite, 0);
    ManagedSprite_SetPositionXY(v1, param3, param4);
    ManagedSprite_TickFrame(v1);
    ManagedSprite_SetAnimateFlag(v1, 1);

    return v1;
}

void sub_02076AAC(int param0, int param1, UnkStruct_ov5_021DE5D0 *param2)
{
    // TODO enum values?
    if (param1 == 2) {
        param2->narcID = NARC_INDEX_POKETOOL__TRGRA__TRFGRA;
        param2->unk_04 = 0 + param0 * 5;
        param2->unk_08 = 1 + param0 * 5;
        param2->unk_0C = 2 + param0 * 5;
        param2->unk_10 = 3 + param0 * 5;
        param2->unk_14 = 4 + param0 * 5;
    } else {
        param2->narcID = NARC_INDEX_POKETOOL__TRGRA__TRBGRA;
        param0 = sub_020788D0(param0);
        param2->unk_04 = 0 + param0 * 5;
        param2->unk_08 = 1 + param0 * 5;
        param2->unk_0C = 2 + param0 * 5;
        param2->unk_10 = 3 + param0 * 5;
        param2->unk_14 = 4 + param0 * 5;
    }
}

u32 Pokemon_GetStructSize(void)
{
    return (u32)sizeof(Pokemon);
}

u32 BoxPokemon_GetStructSize(void)
{
    return (u32)sizeof(BoxPokemon);
}

u8 Pokemon_GetForm(Pokemon *mon)
{
    return BoxPokemon_GetForm(&mon->box);
}

u8 BoxPokemon_GetForm(BoxPokemon *boxMon)
{
    return BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
}

BoxPokemon *Pokemon_GetBoxPokemon(Pokemon *mon)
{
    return &mon->box;
}

BOOL Pokemon_ShouldLevelUp(Pokemon *mon)
{
    u16 monSpecies = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u8 monNextLevel = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL) + 1;
    u32 monExp = Pokemon_GetData(mon, MON_DATA_EXPERIENCE, NULL);
    int monExpRate = SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_EXP_RATE);
    u32 maxExp = Pokemon_GetExpRateBaseExpAt(monExpRate, MAX_POKEMON_LEVEL);

    if (monExp > maxExp) {
        monExp = maxExp;
        Pokemon_SetData(mon, MON_DATA_EXPERIENCE, &monExp);
    }

    if (monNextLevel > MAX_POKEMON_LEVEL) {
        return FALSE;
    }

    maxExp = Pokemon_GetExpRateBaseExpAt(monExpRate, monNextLevel);

    if (monExp >= maxExp) {
        Pokemon_SetData(mon, MON_DATA_LEVEL, &monNextLevel);
        return TRUE;
    }

    return FALSE;
}

u16 Pokemon_GetEvolutionTargetSpecies(Party *party, Pokemon *mon, u8 evoClass, u16 evoParam, int *evoTypeResult)
{
    u16 targetSpecies = SPECIES_NONE;

    u16 monSpecies = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u16 monHeldItem = Pokemon_GetData(mon, MON_DATA_HELD_ITEM, NULL);
    u32 monPersonality = Pokemon_GetData(mon, MON_DATA_PERSONALITY, NULL);
    u8 monBeauty = Pokemon_GetData(mon, MON_DATA_BEAUTY, NULL);

    int i;
    u16 monFriendship;

    u16 monPersonalityUpper = (monPersonality & 0xFFFF0000) >> 16;
    u8 itemHoldEffect = Item_LoadParam(monHeldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM);

    if (monSpecies != SPECIES_KADABRA
        && itemHoldEffect == HOLD_EFFECT_NO_EVOLVE
        && evoClass != EVO_CLASS_BY_ITEM) {
        return SPECIES_NONE;
    }

    int stackVar;
    if (evoTypeResult == NULL) {
        evoTypeResult = &stackVar;
    }

    SpeciesEvolution *speciesEvolutions = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesEvolution) * MAX_EVOLUTIONS);
    LoadSpeciesEvolutions(monSpecies, speciesEvolutions);

    switch (evoClass) {
    case EVO_CLASS_BY_LEVEL: {
        u8 monLevel = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
        monFriendship = Pokemon_GetData(mon, MON_DATA_FRIENDSHIP, NULL);

        for (i = 0; i < MAX_EVOLUTIONS; i++) {
            switch (speciesEvolutions[i].method) {
            case EVO_LEVEL_HAPPINESS:
                if (EVOLVE_FRIENDSHIP_THRESHOLD <= monFriendship) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_HAPPINESS;
                }
                break;

            case EVO_LEVEL_HAPPINESS_DAY:
                if (IsNight() == FALSE && EVOLVE_FRIENDSHIP_THRESHOLD <= monFriendship) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_HAPPINESS_DAY;
                }
                break;

            case EVO_LEVEL_HAPPINESS_NIGHT:
                if (IsNight() == TRUE && EVOLVE_FRIENDSHIP_THRESHOLD <= monFriendship) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_HAPPINESS_NIGHT;
                }
                break;

            case EVO_LEVEL:
                if (speciesEvolutions[i].param <= monLevel) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL;
                }
                break;

            case EVO_LEVEL_ATK_GT_DEF:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (Pokemon_GetData(mon, MON_DATA_ATK, NULL) > Pokemon_GetData(mon, MON_DATA_DEF, NULL)) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_ATK_GT_DEF;
                    }
                }
                break;

            case EVO_LEVEL_ATK_EQ_DEF:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (Pokemon_GetData(mon, MON_DATA_ATK, NULL) == Pokemon_GetData(mon, MON_DATA_DEF, NULL)) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_ATK_EQ_DEF;
                    }
                }
                break;

            case EVO_LEVEL_ATK_LT_DEF:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (Pokemon_GetData(mon, MON_DATA_ATK, NULL) < Pokemon_GetData(mon, MON_DATA_DEF, NULL)) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_ATK_LT_DEF;
                    }
                }
                break;

            case EVO_LEVEL_PID_LOW:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (monPersonalityUpper % 10 < 5) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_PID_LOW;
                    }
                }
                break;

            case EVO_LEVEL_PID_HIGH:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (monPersonalityUpper % 10 >= 5) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_PID_HIGH;
                    }
                }
                break;

            case EVO_LEVEL_NINJASK:
                if (speciesEvolutions[i].param <= monLevel) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_NINJASK;
                }
                break;

            case EVO_LEVEL_SHEDINJA:
                *evoTypeResult = EVO_LEVEL_SHEDINJA;
                break;

            case EVO_LEVEL_BEAUTY:
                if (speciesEvolutions[i].param <= monBeauty) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_BEAUTY;
                }
                break;

            case EVO_LEVEL_WITH_HELD_ITEM_DAY:
                if (IsNight() == FALSE && speciesEvolutions[i].param == monHeldItem) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_WITH_HELD_ITEM_DAY;
                }
                break;

            case EVO_LEVEL_WITH_HELD_ITEM_NIGHT:
                if (IsNight() == TRUE && speciesEvolutions[i].param == monHeldItem) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_WITH_HELD_ITEM_NIGHT;
                }
                break;

            case EVO_LEVEL_KNOW_MOVE:
                if (Pokemon_HasMove(mon, speciesEvolutions[i].param) == TRUE) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_KNOW_MOVE;
                }
                break;

            case EVO_LEVEL_SPECIES_IN_PARTY:
                if (party != NULL) {
                    if (Party_HasSpecies(party, speciesEvolutions[i].param) == TRUE) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_SPECIES_IN_PARTY;
                    }
                }
                break;

            case EVO_LEVEL_MALE:
                if (Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_MALE && speciesEvolutions[i].param <= monLevel) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_MALE;
                }
                break;

            case EVO_LEVEL_FEMALE:
                if (Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_FEMALE && speciesEvolutions[i].param <= monLevel) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_FEMALE;
                }
                break;

            case EVO_LEVEL_MAGNETIC_FIELD:
                if (speciesEvolutions[i].method == evoParam) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_MAGNETIC_FIELD;
                }
                break;

            case EVO_LEVEL_MOSS_ROCK:
                if (speciesEvolutions[i].method == evoParam) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_MOSS_ROCK;
                }
                break;

            case EVO_LEVEL_ICE_ROCK:
                if (speciesEvolutions[i].method == evoParam) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_ICE_ROCK;
                }
                break;
            }

            if (targetSpecies) {
                break;
            }
        }
    } break;

    case EVO_CLASS_BY_TRADE:
        for (i = 0; i < MAX_EVOLUTIONS; i++) {
            switch (speciesEvolutions[i].method) {
            case EVO_TRADE:
                targetSpecies = speciesEvolutions[i].targetSpecies;
                *evoTypeResult = EVO_TRADE;
                break;

            case EVO_TRADE_WITH_HELD_ITEM:
                if (speciesEvolutions[i].param == monHeldItem) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_TRADE_WITH_HELD_ITEM;
                }
                break;
            }

            if (targetSpecies) {
                break;
            }
        }
        break;

    case EVO_CLASS_UNUSED_02:
    case EVO_CLASS_BY_ITEM:
        for (i = 0; i < MAX_EVOLUTIONS; i++) {
            if (speciesEvolutions[i].method == EVO_USE_ITEM && speciesEvolutions[i].param == evoParam) {
                targetSpecies = speciesEvolutions[i].targetSpecies;
                *evoTypeResult = EVO_NONE;
                break;
            }

            if (speciesEvolutions[i].method == EVO_USE_ITEM_MALE
                && Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_MALE
                && speciesEvolutions[i].param == evoParam) {
                targetSpecies = speciesEvolutions[i].targetSpecies;
                *evoTypeResult = EVO_NONE;
                break;
            }

            if (speciesEvolutions[i].method == EVO_USE_ITEM_FEMALE
                && Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_FEMALE
                && speciesEvolutions[i].param == evoParam) {
                targetSpecies = speciesEvolutions[i].targetSpecies;
                *evoTypeResult = EVO_NONE;
                break;
            }

            if (targetSpecies) {
                break;
            }
        }
        break;
    }

    Heap_Free(speciesEvolutions);
    return targetSpecies;
}

u16 Pokemon_GetBaseSpeciesFromPersonalData(const u16 species)
{
    u16 result = 0;
    GF_ASSERT(NATIONAL_DEX_COUNT + 1 > species);

    FSFile file;
    FS_InitFile(&file);
    FS_OpenFile(&file, "poketool/personal/pms.narc");
    FS_SeekFile(&file, species * 2, FS_SEEK_SET);
    FS_ReadFile(&file, &result, 2);
    FS_CloseFile(&file);

    return result;
}

u16 Pokemon_GetBaseSpeciesForBattle(const u16 species)
{
    switch (species) {
    case SPECIES_WOBBUFFET:
    case SPECIES_MARILL:
    case SPECIES_MR_MIME:
    case SPECIES_SUDOWOODO:
    case SPECIES_SNORLAX:
    case SPECIES_MANTINE:
    case SPECIES_ROSELIA:
    case SPECIES_CHANSEY:
    case SPECIES_CHIMECHO:
        return species;
        break;
    }

    return Pokemon_GetBaseSpeciesFromPersonalData(species);
}

static void BoxPokemon_SetDefaultMoves(BoxPokemon *boxMon)
{
    BOOL reencrypt; // must pre-declare to match
    u16 *monLevelUpMoves = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));
    reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    u16 monSpecies = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int monForm = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    u8 monLevel = BoxPokemon_GetLevel(boxMon);

    Pokemon_LoadLevelUpMovesOf(monSpecies, monForm, monLevelUpMoves);

    for (int i = 0; monLevelUpMoves[i] != LEARNSET_SENTINEL_ENTRY; i++) {
        if ((monLevelUpMoves[i] & 0xFE00) <= monLevel << 9) {
            u16 monLevelUpMoveID = monLevelUpMoves[i] & 0x1FF;
            if (BoxPokemon_AddMove(boxMon, monLevelUpMoveID) == LEARNSET_ALL_SLOTS_FILLED) {
                BoxPokemon_ReplaceMove(boxMon, monLevelUpMoveID);
            }
        } else {
            break;
        }
    }

    Heap_Free(monLevelUpMoves);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

u16 Pokemon_AddMove(Pokemon *mon, u16 moveID)
{
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);
    return BoxPokemon_AddMove(boxMon, moveID);
}

static u16 BoxPokemon_AddMove(BoxPokemon *boxMon, u16 moveID)
{
    u16 result = LEARNSET_ALL_SLOTS_FILLED;
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        u16 slotMove;
        if ((slotMove = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + i, NULL)) == MOVE_NONE) {
            BoxPokemon_SetMoveSlot(boxMon, moveID, i);
            result = moveID;
            break;
        } else {
            if (slotMove == moveID) {
                result = LEARNSET_MOVE_ALREADY_KNOWN;
                break;
            }
        }
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
    return result;
}

void Pokemon_ReplaceMove(Pokemon *mon, u16 moveID)
{
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);
    BoxPokemon_ReplaceMove(boxMon, moveID);
}

static void BoxPokemon_ReplaceMove(BoxPokemon *boxMon, u16 moveID)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    u16 moveIDs[LEARNED_MOVES_MAX];
    u8 movePPs[LEARNED_MOVES_MAX];
    u8 movePPUps[LEARNED_MOVES_MAX];

    // Bubble move slots 2 through 4 upwards
    for (int i = 0; i < LEARNED_MOVES_MAX - 1; i++) {
        moveIDs[i] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE2 + i, NULL);
        movePPs[i] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE2_PP + i, NULL);
        movePPUps[i] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE2_PP_UPS + i, NULL);
    }

    moveIDs[LEARNED_MOVES_MAX - 1] = moveID;
    movePPs[LEARNED_MOVES_MAX - 1] = MoveTable_LoadParam(moveID, MOVEATTRIBUTE_PP);
    movePPUps[LEARNED_MOVES_MAX - 1] = 0;

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + i, &moveIDs[i]);
        BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + i, &movePPs[i]);
        BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP_UPS + i, &movePPUps[i]);
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void Pokemon_ResetMoveSlot(Pokemon *mon, u16 moveID, u8 moveSlot)
{
    Pokemon_SetMoveSlot(mon, moveID, moveSlot);

    u32 moveMaxPP, movePPUps = 0;
    Pokemon_SetData(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &movePPUps);

    moveMaxPP = MoveTable_CalcMaxPP(moveID, 0);
    Pokemon_SetData(mon, MON_DATA_MOVE1_PP + moveSlot, &moveMaxPP);
}

void Pokemon_SetMoveSlot(Pokemon *mon, u16 moveID, u8 moveSlot)
{
    BoxPokemon_SetMoveSlot(&mon->box, moveID, moveSlot);
}

static void BoxPokemon_SetMoveSlot(BoxPokemon *boxMon, u16 moveID, u8 moveSlot)
{
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + moveSlot, &moveID);

    u8 movePPUps = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);
    u8 moveMaxPP = MoveTable_CalcMaxPP(moveID, movePPUps);

    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + moveSlot, &moveMaxPP);
}

u16 Pokemon_LevelUpMove(Pokemon *mon, int *index, u16 *moveID)
{
    u16 result = MOVE_NONE;
    u16 *monLevelUpMoves = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));
    u16 monSpecies = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    int monForm = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    u8 monLevel = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);

    Pokemon_LoadLevelUpMovesOf(monSpecies, monForm, monLevelUpMoves);

    if (monLevelUpMoves[*index] == LEARNSET_SENTINEL_ENTRY) {
        Heap_Free(monLevelUpMoves);
        return MOVE_NONE;
    }

    while ((monLevelUpMoves[*index] & 0xFE00) != monLevel << 9) {
        (*index)++;
        if (monLevelUpMoves[*index] == LEARNSET_SENTINEL_ENTRY) {
            Heap_Free(monLevelUpMoves);
            return MOVE_NONE;
        }
    }

    if ((monLevelUpMoves[*index] & 0xFE00) == monLevel << 9) {
        *moveID = monLevelUpMoves[*index] & 0x1FF;
        (*index)++;
        result = Pokemon_AddMove(mon, *moveID);
    }

    Heap_Free(monLevelUpMoves);
    return result;
}

void Pokemon_SwapMoveSlots(Pokemon *mon, int moveSlot1, int moveSlot2)
{
    BoxPokemon_SwapMoveSlots(&mon->box, moveSlot1, moveSlot2);
}

void BoxPokemon_SwapMoveSlots(BoxPokemon *boxMon, int moveSlot1, int moveSlot2)
{
    u16 moveIDs[2];
    u8 movePPs[2];
    u8 movePPUps[2];

    moveIDs[0] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + moveSlot1, NULL);
    movePPs[0] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP + moveSlot1, NULL);
    movePPUps[0] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot1, NULL);
    moveIDs[1] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + moveSlot2, NULL);
    movePPs[1] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP + moveSlot2, NULL);
    movePPUps[1] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot2, NULL);

    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + moveSlot1, &moveIDs[1]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + moveSlot1, &movePPs[1]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot1, &movePPUps[1]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + moveSlot2, &moveIDs[0]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + moveSlot2, &movePPs[0]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot2, &movePPUps[0]);
}

void Pokemon_ClearMoveSlot(Pokemon *mon, u32 moveSlot)
{
    u16 moveID;
    u8 movePP;
    u8 movePPUps;

    for (u32 i = moveSlot; i < 3; i++) {
        moveID = Pokemon_GetData(mon, MON_DATA_MOVE1 + i + 1, NULL);
        movePP = Pokemon_GetData(mon, MON_DATA_MOVE1_PP + i + 1, NULL);
        movePPUps = Pokemon_GetData(mon, MON_DATA_MOVE1_PP_UPS + i + 1, NULL);

        Pokemon_SetData(mon, MON_DATA_MOVE1 + i, &moveID);
        Pokemon_SetData(mon, MON_DATA_MOVE1_PP + i, &movePP);
        Pokemon_SetData(mon, MON_DATA_MOVE1_PP_UPS + i, &movePPUps);
    }

    moveID = 0;
    movePP = 0;
    movePPUps = 0;

    Pokemon_SetData(mon, MON_DATA_MOVE4, &moveID);
    Pokemon_SetData(mon, MON_DATA_MOVE4_PP, &movePP);
    Pokemon_SetData(mon, MON_DATA_MOVE4_PP_UPS, &movePPUps);
}

static BOOL Pokemon_HasMove(Pokemon *mon, u16 moveID)
{
    int i;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (Pokemon_GetData(mon, MON_DATA_MOVE1 + i, NULL) == moveID) {
            break;
        }
    }

    return i != 4;
}

void Pokemon_FromBoxPokemon(BoxPokemon *boxMon, Pokemon *mon)
{
    u32 zero = 0;

    mon->box = *boxMon;
    if (mon->box.boxDecrypted) {
        mon->box.partyDecrypted = TRUE;
    }

    Pokemon_SetData(mon, MON_DATA_STATUS, &zero);
    Pokemon_SetData(mon, MON_DATA_HP, &zero);
    Pokemon_SetData(mon, MON_DATA_MAX_HP, &zero);

    Mail *mail = Mail_New(HEAP_ID_SYSTEM);
    Pokemon_SetData(mon, MON_DATA_MAIL, mail);
    Heap_Free(mail);

    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE_ID, &zero);

    BallCapsule v2;
    MI_CpuClearFast(&v2, sizeof(BallCapsule));
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE, &v2);

    Pokemon_CalcLevelAndStats(mon);
}

u8 Party_GetMaxLevel(Party *party)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    u8 result = 1;

    for (int i = 0; i < currentPartyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetData(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            u8 monLevel = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);

            if (monLevel > result) {
                result = monLevel;
            }
        }
    }

    return result;
}

u16 Pokemon_SinnohDexNumber(u16 species)
{
    u16 result;

    NARC_ReadFromMemberByIndexPair(&result, NARC_INDEX_POKETOOL__PL_POKEZUKAN, 0, species * 2, 2);

    return result;
}

u16 Pokemon_NationalDexNumber(u16 sinnohDexNumber)
{
    u16 result = 0;

    if (sinnohDexNumber <= SINNOH_DEX_COUNT) {
        NARC_ReadFromMemberByIndexPair(&result, NARC_INDEX_POKETOOL__SHINZUKAN, 0, sinnohDexNumber * 2, 2);
    }

    return result;
}

void Pokemon_Copy(Pokemon *src, Pokemon *dest)
{
    *dest = *src;
    return;
}

void BoxPokemon_Copy(BoxPokemon *src, BoxPokemon *dest)
{
    *dest = *src;
    return;
}

void BoxPokemon_FromPokemon(Pokemon *src, BoxPokemon *dest)
{
    *dest = src->box;
    return;
}

s8 Pokemon_GetFlavorAffinity(Pokemon *mon, enum Flavor flavor)
{
    return BoxPokemon_GetFlavorAffinity(&mon->box, flavor);
}

static s8 BoxPokemon_GetFlavorAffinity(BoxPokemon *boxMon, enum Flavor flavor)
{
    return Pokemon_GetFlavorAffinityOf(BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL), flavor);
}

s8 Pokemon_GetFlavorAffinityOf(u32 monPersonality, enum Flavor flavor)
{
    u8 monNature = Pokemon_GetNatureOf(monPersonality);
    return sNatureFlavorAffinities[monNature][flavor];
}

int Pokemon_LoadLevelUpMoveIdsOf(int monSpecies, int monForm, u16 *monLevelUpMoveIDs)
{
    u16 *monLevelUpMoves = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));

    Pokemon_LoadLevelUpMovesOf(monSpecies, monForm, monLevelUpMoves);

    int result = 0;

    while (monLevelUpMoves[result] != LEARNSET_ALL_SLOTS_FILLED) {
        monLevelUpMoveIDs[result] = monLevelUpMoves[result] & 0x1FF;
        result++;
    }

    Heap_Free(monLevelUpMoves);
    return result;
}

void Pokemon_ApplyPokerus(Party *party)
{
    int currentPartyCount = Party_GetCurrentCount(party);
    u16 rand = LCRNG_Next();

    if (rand == 16384 || rand == 32768 || rand == 49152) {
        int partySlot;
        Pokemon *mon;
        do {
            partySlot = LCRNG_Next() % currentPartyCount;
            mon = Party_GetPokemonBySlotIndex(party, partySlot);

            if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetData(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
                break;
            } else {
                partySlot = currentPartyCount;
            }
        } while (partySlot == currentPartyCount);

        if (Pokemon_HasPokerus(party, FlagIndex(partySlot)) == 0) {
            u8 monPokerus;
            do {
                monPokerus = LCRNG_Next() & 0xff;
            } while ((monPokerus & 0x7) == 0);

            if (monPokerus & 0xf0) {
                monPokerus &= 0x7;
            }

            monPokerus |= (monPokerus << 4);
            monPokerus &= 0xf3;
            monPokerus++;

            Pokemon_SetData(mon, MON_DATA_POKERUS, &monPokerus);
        }
    }
}

u8 Pokemon_HasPokerus(Party *party, u8 param1)
{
    int partySlot = 0;
    int v1 = 1;

    u8 result = 0;
    if (param1) {
        do {
            if (param1 & 1) {
                Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

                if (Pokemon_GetData(mon, MON_DATA_POKERUS, NULL)) {
                    result |= v1;
                }
            }

            partySlot++;
            v1 = v1 << 1;
            param1 = param1 >> 1;
        } while (param1 != 0);
    } else {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

        if (Pokemon_GetData(mon, MON_DATA_POKERUS, NULL)) {
            result++;
        }
    }

    return result;
}

void Party_UpdatePokerusStatus(Party *party, s32 daysPassed)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    for (int i = 0; i < currentPartyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL)) {
            u8 monPokerus = Pokemon_GetData(mon, MON_DATA_POKERUS, NULL);

            if (monPokerus & 0xf) {
                if (((monPokerus & 0xf) < daysPassed) || (daysPassed > 4)) {
                    monPokerus &= 0xf0;
                } else {
                    monPokerus -= daysPassed;
                }

                if (monPokerus == 0) {
                    monPokerus = 0x10;
                }

                Pokemon_SetData(mon, MON_DATA_POKERUS, &monPokerus);
            }
        }
    }
}

void Pokemon_ValidatePokerus(Party *party)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    if (LCRNG_Next() % 3 == 0) {
        for (int i = 0; i < currentPartyCount; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

            if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL)) {
                u8 monPokerus = Pokemon_GetData(mon, MON_DATA_POKERUS, NULL);

                if (monPokerus & 0xf) {
                    if (i != 0) {
                        mon = Party_GetPokemonBySlotIndex(party, i - 1);

                        if ((Pokemon_GetData(mon, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            Pokemon_SetData(mon, MON_DATA_POKERUS, &monPokerus);
                        }
                    }

                    if (i < currentPartyCount - 1) {
                        mon = Party_GetPokemonBySlotIndex(party, i + 1);

                        if ((Pokemon_GetData(mon, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            Pokemon_SetData(mon, MON_DATA_POKERUS, &monPokerus);
                            i++;
                        }
                    }
                }
            }
        }
    }
}

BOOL Pokemon_InfectedWithPokerus(Pokemon *mon)
{
    return IsBoxPokemonInfectedWithPokerus(&mon->box);
}

static BOOL IsBoxPokemonInfectedWithPokerus(BoxPokemon *boxMon)
{
    return (BoxPokemon_GetData(boxMon, MON_DATA_POKERUS, NULL) & 0xf) != 0;
}

BOOL Pokemon_HasCuredPokerus(Pokemon *mon)
{
    return BoxPokemonHasCuredPokerus(&mon->box);
}

static BOOL BoxPokemonHasCuredPokerus(BoxPokemon *boxMon)
{
    u8 monPokerus = BoxPokemon_GetData(boxMon, MON_DATA_POKERUS, NULL);

    if (monPokerus & 0xF) {
        return FALSE;
    }

    return (monPokerus & 0xF0) != 0;
}

void Pokemon_SetArceusForm(Pokemon *mon)
{
    BoxPokemon_SetArceusForm(&mon->box);
}

void BoxPokemon_SetArceusForm(BoxPokemon *boxMon)
{
    int monSpecies = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int monAbility = BoxPokemon_GetData(boxMon, MON_DATA_ABILITY, NULL);
    int monHeldItem = BoxPokemon_GetData(boxMon, MON_DATA_HELD_ITEM, NULL);

    if (monSpecies == SPECIES_ARCEUS && monAbility == ABILITY_MULTITYPE) {
        int monForm = Pokemon_GetArceusTypeOf(Item_LoadParam(monHeldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM));
        BoxPokemon_SetData(boxMon, MON_DATA_FORM, &monForm);
    }
}

u8 Pokemon_GetArceusTypeOf(u16 itemHoldEffect)
{
    u8 type;

    switch (itemHoldEffect) {
    case HOLD_EFFECT_ARCEUS_FIRE:
        type = TYPE_FIRE;
        break;
    case HOLD_EFFECT_ARCEUS_WATER:
        type = TYPE_WATER;
        break;
    case HOLD_EFFECT_ARCEUS_ELECTRIC:
        type = TYPE_ELECTRIC;
        break;
    case HOLD_EFFECT_ARCEUS_GRASS:
        type = TYPE_GRASS;
        break;
    case HOLD_EFFECT_ARCEUS_ICE:
        type = TYPE_ICE;
        break;
    case HOLD_EFFECT_ARCEUS_FIGHTING:
        type = TYPE_FIGHTING;
        break;
    case HOLD_EFFECT_ARCEUS_POISON:
        type = TYPE_POISON;
        break;
    case HOLD_EFFECT_ARCEUS_GROUND:
        type = TYPE_GROUND;
        break;
    case HOLD_EFFECT_ARCEUS_FLYING:
        type = TYPE_FLYING;
        break;
    case HOLD_EFFECT_ARCEUS_PSYCHIC:
        type = TYPE_PSYCHIC;
        break;
    case HOLD_EFFECT_ARCEUS_BUG:
        type = TYPE_BUG;
        break;
    case HOLD_EFFECT_ARCEUS_ROCK:
        type = TYPE_ROCK;
        break;
    case HOLD_EFFECT_ARCEUS_GHOST:
        type = TYPE_GHOST;
        break;
    case HOLD_EFFECT_ARCEUS_DRAGON:
        type = TYPE_DRAGON;
        break;
    case HOLD_EFFECT_ARCEUS_DARK:
        type = TYPE_DARK;
        break;
    case HOLD_EFFECT_ARCEUS_STEEL:
        type = TYPE_STEEL;
        break;
    default:
        type = TYPE_NORMAL;
        break;
    }

    return type;
}

int Pokemon_SetGiratinaFormByHeldItem(Pokemon *mon)
{
    int result = BoxPokemon_SetGiratinaForm(&mon->box);

    if (result != -1) {
        Pokemon_CalcLevelAndStats(mon);
    }

    return result;
}

int BoxPokemon_SetGiratinaForm(BoxPokemon *boxMon)
{
    int species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int item = BoxPokemon_GetData(boxMon, MON_DATA_HELD_ITEM, NULL);

    if (species == SPECIES_GIRATINA) {
        int form = (item == ITEM_GRISEOUS_ORB) ? GIRATINA_FORM_ORIGIN : GIRATINA_FORM_ALTERED;

        BoxPokemon_SetData(boxMon, MON_DATA_FORM, &form);
        BoxPokemon_CalcAbility(boxMon);

        return form;
    }

    return -1;
}

void Pokemon_SetGiratinaOriginForm(Pokemon *mon)
{
    int form = GIRATINA_FORM_ORIGIN;

    if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) == SPECIES_GIRATINA) {
        BoxPokemon_SetData(&mon->box, MON_DATA_FORM, &form);
        BoxPokemon_CalcAbility(&mon->box);
        Pokemon_CalcLevelAndStats(mon);
    }
}

void Party_SetGiratinaForm(Party *party, int form)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    for (int i = 0; i < currentPartyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (form) {
            Pokemon_SetGiratinaOriginForm(mon);
        } else {
            Pokemon_SetGiratinaFormByHeldItem(mon);
        }
    }
}

void Pokemon_SetShayminForm(Pokemon *mon, int form)
{
    BoxPokemon_SetShayminForm(&mon->box, form);
    Pokemon_CalcLevelAndStats(mon);
}

void BoxPokemon_SetShayminForm(BoxPokemon *boxMon, int form)
{
    int species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_SHAYMIN) {
        GF_ASSERT(form <= SHAYMIN_FORM_COUNT - 1);

        BoxPokemon_SetData(boxMon, MON_DATA_FORM, &form);
        BoxPokemon_CalcAbility(boxMon);
    }
}

BOOL Pokemon_CanShayminSkyForm(Pokemon *mon)
{
    u32 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u32 monForm = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    u32 condition = Pokemon_GetData(mon, MON_DATA_STATUS, NULL);
    u32 currentHP = Pokemon_GetData(mon, MON_DATA_HP, NULL);
    u32 fatefulEncounter = Pokemon_GetData(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    RTCTime rtcTime;
    RTC_GetCurrentTime(&rtcTime);

    return species == SPECIES_SHAYMIN
        && monForm == SHAYMIN_FORM_LAND
        && currentHP > 0
        && fatefulEncounter == TRUE
        && (condition & MON_CONDITION_FREEZE) == FALSE
        && rtcTime.hour >= 4
        && rtcTime.hour < 20;
}

void Party_SetShayminLandForm(Party *party)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    for (int i = 0; i < currentPartyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        int species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
        int form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);

        if (species == SPECIES_SHAYMIN && form == SHAYMIN_FORM_SKY) {
            int newForm = SHAYMIN_FORM_LAND;
            Pokemon_SetShayminForm(mon, newForm);
        }
    }
}

BOOL Party_SetShayminForm(Party *party, int param1, const RTCTime *rtcTime)
{
    if (rtcTime->hour >= 20 || rtcTime->hour < 4) {
        s32 hours = rtcTime->hour;

        if (hours < 4) {
            hours += 24;
        }

        hours -= 20;
        s32 minutes = rtcTime->minute + hours * 60;

        param1++;

        if (minutes < param1) {
            Party_SetShayminLandForm(party);
            return TRUE;
        }

        return FALSE;
    } else {
        s32 minutes = rtcTime->minute + (rtcTime->hour - 4) * 60;

        if (minutes < param1) {
            Party_SetShayminLandForm(party);
            return TRUE;
        }

        return FALSE;
    }
}

BOOL Pokemon_SetRotomForm(Pokemon *mon, int form, int moveSlot)
{
    int monSpecies = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);

    if (monSpecies != SPECIES_ROTOM) {
        return FALSE;
    }

    int currentMonForm = Pokemon_GetData(mon, MON_DATA_FORM, NULL);

    static const u16 rotomFormMoves[] = {
        MOVE_NONE,
        MOVE_OVERHEAT,
        MOVE_HYDRO_PUMP,
        MOVE_BLIZZARD,
        MOVE_AIR_SLASH,
        MOVE_LEAF_STORM
    };

    int newFormMoveID = rotomFormMoves[form];

    int i;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        int j;
        int moveID = Pokemon_GetData(mon, MON_DATA_MOVE1 + i, NULL);

        for (j = 1; j < NELEMS(rotomFormMoves); j++) {
            if (moveID != MOVE_NONE && moveID == rotomFormMoves[j]) {
                if (newFormMoveID != MOVE_NONE) {
                    Pokemon_ResetMoveSlot(mon, newFormMoveID, i);
                    newFormMoveID = MOVE_NONE;
                    break;
                } else {
                    Pokemon_ClearMoveSlot(mon, i);
                    i--;
                    break;
                }
            }
        }
    }

    if (newFormMoveID != MOVE_NONE) {
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (Pokemon_GetData(mon, MON_DATA_MOVE1 + i, NULL) == MOVE_NONE) {
                Pokemon_ResetMoveSlot(mon, newFormMoveID, i);
                break;
            }
        }

        if (i == 4) {
            Pokemon_ResetMoveSlot(mon, newFormMoveID, moveSlot);
        }
    }

    if (Pokemon_GetData(mon, MON_DATA_MOVE1, NULL) == MOVE_NONE) {
        Pokemon_ResetMoveSlot(mon, MOVE_THUNDER_SHOCK, 0);
    }

    Pokemon_SetData(mon, MON_DATA_FORM, &form);
    Pokemon_CalcAbility(mon);
    Pokemon_CalcLevelAndStats(mon);

    return TRUE;
}

void Pokemon_LoadLevelUpMovesOf(int monSpecies, int monForm, u16 *monLevelUpMoves)
{
    monSpecies = Pokemon_GetFormNarcIndex(monSpecies, monForm);
    NARC_ReadWholeMemberByIndexPair(monLevelUpMoves, NARC_INDEX_POKETOOL__PERSONAL__WOTBL, monSpecies);
}

void PlayCryWithParams(ChatotCry *chatotCry, enum PokemonCryMod cryMod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID)
{
    if (species == SPECIES_CHATOT) {
        if (Sound_CanPlayChatotCry(cryMod) == FALSE) {
            Sound_SetUsingDefaultChatotCry(TRUE);
            Sound_PlayPokemonCryEx(cryMod, species, pan, volume, heapID, form);
        } else {
            if (forceDefaultChatot) {
                Sound_SetUsingDefaultChatotCry(TRUE);
            }

            Sound_PlayChatotCry(chatotCry, NULL, volume, pan);
        }

        return;
    }

    Sound_PlayPokemonCryEx(cryMod, species, pan, volume, heapID, form);
}

void Species_PlayDelayedCry(ChatotCry *chatotCry, enum PokemonCryMod cryMod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID, u8 delay)
{
    if (species == SPECIES_CHATOT) {
        if (Sound_CanPlayChatotCry(cryMod) == FALSE) {
            Sound_SetUsingDefaultChatotCry(TRUE);
            Sound_PlayDelayedPokemonCryEx(cryMod, species, pan, volume, heapID, delay, form);
        } else {
            if (forceDefaultChatot) {
                Sound_SetUsingDefaultChatotCry(TRUE);
            }

            Sound_PlayDelayedChatotCry(chatotCry, NULL, volume, pan, delay);
        }

        return;
    }

    Sound_PlayDelayedPokemonCryEx(cryMod, species, pan, volume, heapID, delay, form);
}

BOOL Pokemon_PlayCry(Pokemon *mon)
{
    int species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    int form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);

    return Sound_PlayPokemonCry(species, form);
}

void Pokemon_SetCatchData(Pokemon *mon, TrainerInfo *trainerInfo, int monPokeball, int metLocation, int metTerrain, enum HeapID heapID)
{
    InitializeBoxPokemonAfterCapture(&mon->box, trainerInfo, monPokeball, metLocation, metTerrain, heapID);

    if (monPokeball == ITEM_HEAL_BALL) {
        int monMaxHP = Pokemon_GetData(mon, MON_DATA_MAX_HP, NULL);
        Pokemon_SetData(mon, MON_DATA_HP, &monMaxHP);

        monMaxHP = 0;
        Pokemon_SetData(mon, MON_DATA_STATUS, &monMaxHP);
    }
}

static void InitializeBoxPokemonAfterCapture(BoxPokemon *boxMon, TrainerInfo *trainer, int monPokeball, int metLocation, int metTerrain, enum HeapID heapID)
{
    UpdateBoxMonStatusAndTrainerInfo(boxMon, trainer, 0, metLocation, heapID);
    BoxPokemon_SetData(boxMon, MON_DATA_MET_GAME, &gGameVersion);
    BoxPokemon_SetData(boxMon, MON_DATA_POKEBALL, &monPokeball);
    BoxPokemon_SetData(boxMon, MON_DATA_MET_TERRAIN, &metTerrain);
}

void Pokemon_UpdateAfterCatch(Pokemon *mon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5)
{
    PostCaptureBoxPokemonProcessing(&mon->box, param1, monPokeball, param3, param4, param5);
}

static void PostCaptureBoxPokemonProcessing(BoxPokemon *boxMon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5)
{
    InitializeBoxPokemonAfterCapture(boxMon, param1, monPokeball, param3, param4, param5);
}

static const u16 sHeldItemChance[][2] = {
    { 45, 95 },
    { 20, 80 }
};

void Pokemon_GiveHeldItem(Pokemon *mon, u32 battleType, int itemRates)
{
    if (battleType & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_FRONTIER)) {
        return;
    }

    u32 rand = LCRNG_Next() % 100;
    u16 monSpecies = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u16 monForm = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    u16 monItem1 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_HELD_ITEM_COMMON);
    u16 monItem2 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_HELD_ITEM_RARE);

    if (monItem1 == monItem2 && monItem1 != ITEM_NONE) {
        Pokemon_SetData(mon, MON_DATA_HELD_ITEM, &monItem1);
        return;
    }

    // Without CompoundEyes (itemRates == 0) 45% no item, 50% common item, 5% rare item
    // With CompoundEyes (itemRates == 1) 20% no item, 60% common item, 20% rare item
    if (rand < sHeldItemChance[itemRates][0]) {
        return;
    } else if (rand < sHeldItemChance[itemRates][1]) {
        Pokemon_SetData(mon, MON_DATA_HELD_ITEM, &monItem1);
    } else {
        Pokemon_SetData(mon, MON_DATA_HELD_ITEM, &monItem2);
    }
}

BOOL Pokemon_CanLearnTM(Pokemon *mon, u8 tmID)
{
    return CanBoxPokemonLearnTM(&mon->box, tmID);
}

static BOOL CanBoxPokemonLearnTM(BoxPokemon *boxMon, u8 tmID)
{
    u16 monSpeciesEgg = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES_OR_EGG, NULL);
    int monForm = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);

    return CanPokemonFormLearnTM(monSpeciesEgg, monForm, tmID);
}

BOOL CanPokemonFormLearnTM(u16 monSpecies, int monForm, u8 tmID)
{
    if (monSpecies == SPECIES_EGG) {
        return FALSE;
    }

    u32 tmFlag;
    u8 speciesDataAttribute;
    if (tmID < 32) {
        tmFlag = (1 << tmID);
        speciesDataAttribute = SPECIES_DATA_TM_LEARNSET_MASK_1;
    } else if (tmID < 64) {
        tmFlag = (1 << (tmID - 32));
        speciesDataAttribute = SPECIES_DATA_TM_LEARNSET_MASK_2;
    } else if (tmID < 96) {
        tmFlag = (1 << (tmID - 64));
        speciesDataAttribute = SPECIES_DATA_TM_LEARNSET_MASK_3;
    } else {
        tmFlag = (1 << (tmID - 96));
        speciesDataAttribute = SPECIES_DATA_TM_LEARNSET_MASK_4;
    }

    return (SpeciesData_GetFormValue(monSpecies, monForm, speciesDataAttribute) & tmFlag) != 0;
}

void Pokemon_CalcAbility(Pokemon *mon)
{
    BoxPokemon_CalcAbility(&mon->box);
}

static void BoxPokemon_CalcAbility(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    int monSpecies = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u32 monPersonality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);
    int monForm = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    int monAbility1 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_ABILITY_1);
    int monAbility2 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_ABILITY_2);

    if (monAbility2 != ABILITY_NONE) {
        if (monPersonality & 1) {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &monAbility2);
        } else {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &monAbility1);
        }
    } else {
        BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &monAbility1);
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void sub_020780C4(Pokemon *mon, u32 monPersonality)
{
    Pokemon *newMon = Pokemon_New(HEAP_ID_SYSTEM);

    Pokemon_Copy(mon, newMon);

    PokemonDataBlockA *newMonBlockA = BoxPokemon_GetDataBlock(&newMon->box, mon->box.personality, DATA_BLOCK_A);
    PokemonDataBlockB *newMonBlockB = BoxPokemon_GetDataBlock(&newMon->box, mon->box.personality, DATA_BLOCK_B);
    PokemonDataBlockC *newMonBlockC = BoxPokemon_GetDataBlock(&newMon->box, mon->box.personality, DATA_BLOCK_C);
    PokemonDataBlockD *newMonBlockD = BoxPokemon_GetDataBlock(&newMon->box, mon->box.personality, DATA_BLOCK_D);
    PokemonDataBlockA *monBlockA = BoxPokemon_GetDataBlock(&mon->box, monPersonality, DATA_BLOCK_A);
    PokemonDataBlockB *monBlockB = BoxPokemon_GetDataBlock(&mon->box, monPersonality, DATA_BLOCK_B);
    PokemonDataBlockC *monBlockC = BoxPokemon_GetDataBlock(&mon->box, monPersonality, DATA_BLOCK_C);
    PokemonDataBlockD *monBlockD = BoxPokemon_GetDataBlock(&mon->box, monPersonality, DATA_BLOCK_D);

    Pokemon_DecryptData(&newMon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, newMon->box.checksum);
    Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

    mon->box.personality = monPersonality;

    *monBlockA = *newMonBlockA;
    *monBlockB = *newMonBlockB;
    *monBlockC = *newMonBlockC;
    *monBlockD = *newMonBlockD;

    mon->box.checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

    Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    Heap_Free(newMon);
}

static void SpeciesData_LoadSpecies(int monSpecies, SpeciesData *speciesData)
{
    NARC_ReadWholeMemberByIndexPair(speciesData, NARC_INDEX_POKETOOL__PERSONAL__PL_PERSONAL, monSpecies);
}

static void SpeciesData_LoadForm(int monSpecies, int monForm, SpeciesData *speciesData)
{
    monSpecies = Pokemon_GetFormNarcIndex(monSpecies, monForm);
    NARC_ReadWholeMemberByIndexPair(speciesData, NARC_INDEX_POKETOOL__PERSONAL__PL_PERSONAL, monSpecies);
}

static void LoadSpeciesEvolutions(int monSpecies, SpeciesEvolution speciesEvolutions[MAX_EVOLUTIONS])
{
    NARC_ReadWholeMemberByIndexPair(speciesEvolutions, NARC_INDEX_POKETOOL__PERSONAL__EVO, monSpecies);
}

static void Pokemon_EncryptData(void *data, u32 bytes, u32 seed)
{
    EncodeData(data, bytes, seed);
}

static void Pokemon_DecryptData(void *data, u32 bytes, u32 seed)
{
    DecodeData(data, bytes, seed);
}

static u16 Pokemon_GetDataChecksum(void *data, u32 bytes)
{
    int i;
    u16 checksum = 0;

    u16 *dataWords = data;

    for (i = 0; i < bytes / 2; i++) {
        checksum += dataWords[i];
    }

    return checksum;
}

#define DATA_BLOCK_SHUFFLE_CASE(v1, v2, v3, v4)            \
    {                                                      \
        PokemonDataBlock *dataBlocks = boxMon->dataBlocks; \
        switch (dataBlockID) {                             \
        case DATA_BLOCK_A:                                 \
            result = &dataBlocks[v1];                      \
            break;                                         \
        case DATA_BLOCK_B:                                 \
            result = &dataBlocks[v2];                      \
            break;                                         \
        case DATA_BLOCK_C:                                 \
            result = &dataBlocks[v3];                      \
            break;                                         \
        case DATA_BLOCK_D:                                 \
            result = &dataBlocks[v4];                      \
            break;                                         \
        }                                                  \
        break;                                             \
    }

static void *BoxPokemon_GetDataBlock(BoxPokemon *boxMon, u32 personality, enum PokemonDataBlockID dataBlockID)
{
    personality = (personality & 0x3e000) >> 13;
    GF_ASSERT(personality <= 31);

    void *result;
    switch (personality) {
    case 0:
    case 24:
        DATA_BLOCK_SHUFFLE_CASE(0, 1, 2, 3)
    case 1:
    case 25:
        DATA_BLOCK_SHUFFLE_CASE(0, 1, 3, 2)
    case 2:
    case 26:
        DATA_BLOCK_SHUFFLE_CASE(0, 2, 1, 3)
    case 3:
    case 27:
        DATA_BLOCK_SHUFFLE_CASE(0, 3, 1, 2)
    case 4:
    case 28:
        DATA_BLOCK_SHUFFLE_CASE(0, 2, 3, 1)
    case 5:
    case 29:
        DATA_BLOCK_SHUFFLE_CASE(0, 3, 2, 1)
    case 6:
    case 30:
        DATA_BLOCK_SHUFFLE_CASE(1, 0, 2, 3)
    case 7:
    case 31:
        DATA_BLOCK_SHUFFLE_CASE(1, 0, 3, 2)
    case 8:
        DATA_BLOCK_SHUFFLE_CASE(2, 0, 1, 3)
    case 9:
        DATA_BLOCK_SHUFFLE_CASE(3, 0, 1, 2)
    case 10:
        DATA_BLOCK_SHUFFLE_CASE(2, 0, 3, 1)
    case 11:
        DATA_BLOCK_SHUFFLE_CASE(3, 0, 2, 1)
    case 12:
        DATA_BLOCK_SHUFFLE_CASE(1, 2, 0, 3)
    case 13:
        DATA_BLOCK_SHUFFLE_CASE(1, 3, 0, 2)
    case 14:
        DATA_BLOCK_SHUFFLE_CASE(2, 1, 0, 3)
    case 15:
        DATA_BLOCK_SHUFFLE_CASE(3, 1, 0, 2)
    case 16:
        DATA_BLOCK_SHUFFLE_CASE(2, 3, 0, 1)
    case 17:
        DATA_BLOCK_SHUFFLE_CASE(3, 2, 0, 1)
    case 18:
        DATA_BLOCK_SHUFFLE_CASE(1, 2, 3, 0)
    case 19:
        DATA_BLOCK_SHUFFLE_CASE(1, 3, 2, 0)
    case 20:
        DATA_BLOCK_SHUFFLE_CASE(2, 1, 3, 0)
    case 21:
        DATA_BLOCK_SHUFFLE_CASE(3, 1, 2, 0)
    case 22:
        DATA_BLOCK_SHUFFLE_CASE(2, 3, 1, 0)
    case 23:
        DATA_BLOCK_SHUFFLE_CASE(3, 2, 1, 0)
    }

    return result;
}

static int Pokemon_GetFormNarcIndex(int monSpecies, int monForm)
{
    // TODO enum values?
    switch (monSpecies) {
    case SPECIES_DEOXYS:
        if (monForm && monForm <= DEOXYS_FORM_COUNT - 1) {
            monSpecies = (496 - 1) + monForm;
        }
        break;
    case SPECIES_WORMADAM:
        if (monForm && monForm <= WORMADAM_FORM_COUNT - 1) {
            monSpecies = (499 - 1) + monForm;
        }
        break;
    case SPECIES_GIRATINA:
        if (monForm && monForm <= GIRATINA_FORM_COUNT - 1) {
            monSpecies = (501 - 1) + monForm;
        }
        break;
    case SPECIES_SHAYMIN:
        if (monForm && monForm <= SHAYMIN_FORM_COUNT - 1) {
            monSpecies = (502 - 1) + monForm;
        }
        break;
    case SPECIES_ROTOM:
        if (monForm && monForm <= ROTOM_FORM_COUNT - 1) {
            monSpecies = (503 - 1) + monForm;
        }
        break;
    default:
        break;
    }

    return monSpecies;
}

u32 FlagIndex(int num)
{
    int i;
    u32 flag = 1;

    GF_ASSERT(num < 32);

    for (i = 0; i < num; i++) {
        flag <<= 1;
    }

    return flag;
}

int LowestBit(u32 flag)
{
    int i;
    u32 mask = 1;

    for (i = 0; i < 32; i++) {
        if (flag & mask) {
            break;
        }

        mask <<= 1;
    }

    return i;
}

static const u16 sBattleFrontierBanlist[BATTLE_FRONTIER_BANLIST_SIZE] = {
    SPECIES_MEWTWO,
    SPECIES_MEW,
    SPECIES_LUGIA,
    SPECIES_HO_OH,
    SPECIES_CELEBI,
    SPECIES_KYOGRE,
    SPECIES_GROUDON,
    SPECIES_RAYQUAZA,
    SPECIES_JIRACHI,
    SPECIES_DEOXYS,
    SPECIES_DIALGA,
    SPECIES_PALKIA,
    SPECIES_GIRATINA,
    SPECIES_PHIONE,
    SPECIES_MANAPHY,
    SPECIES_DARKRAI,
    SPECIES_SHAYMIN,
    SPECIES_ARCEUS
};

BOOL Pokemon_IsOnBattleFrontierBanlist(u16 species)
{
    for (u32 i = 0; i < BATTLE_FRONTIER_BANLIST_SIZE; i++) {
        if (species == sBattleFrontierBanlist[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

u16 Pokemon_GetBattleFrontierBanlistEntry(u8 index)
{
    if (index >= BATTLE_FRONTIER_BANLIST_SIZE) {
        index = 0;
    }

    return sBattleFrontierBanlist[index];
}

BOOL Pokemon_IsBannedFromBattleFrontier(Pokemon *pokemon)
{
    u16 species = (u16)Pokemon_GetData(pokemon, MON_DATA_SPECIES, NULL);
    return Pokemon_IsOnBattleFrontierBanlist(species);
}

BOOL sub_0207884C(BoxPokemon *boxMon, TrainerInfo *param1, int heapID)
{
    u32 v0 = TrainerInfo_ID(param1);
    u32 monOTID = BoxPokemon_GetData(boxMon, MON_DATA_OT_ID, NULL);
    u32 v2 = TrainerInfo_Gender(param1);
    u32 monOtGender = BoxPokemon_GetData(boxMon, MON_DATA_OT_GENDER, NULL);
    String *v4 = TrainerInfo_NameNewString(param1, heapID);
    // TODO enum/const value?
    String *v5 = String_Init(8, heapID);
    BOOL v6 = FALSE;

    BoxPokemon_GetData(boxMon, MON_DATA_OT_NAME_STRING, v5);

    if (v0 == monOTID && v2 == monOtGender && String_Compare(v4, v5) == 0) {
        v6 = TRUE;
    }

    String_Free(v5);
    String_Free(v4);

    return v6;
}

int sub_020788D0(int param0)
{
    // TODO enum values?
    switch (param0) {
    case 0:
    case 1:
        break;
    case 63:
        param0 = 2;
        break;
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
        param0 = 3 + (param0 - 90);
        break;
    case 103:
    case 104:
        param0 = 8 + (param0 - 103);
        break;
    default:
        if (TrainerClass_Gender(param0) == 1) {
            param0 = 1;
        } else {
            param0 = 0;
        }
        break;
    }

    return param0;
}

void Pokemon_ClearBallCapsuleData(Pokemon *mon)
{
    u8 zero = 0;

    BallCapsule v1;
    MI_CpuClearFast(&v1, sizeof(BallCapsule));

    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE_ID, &zero);
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE, &v1);
}

void BoxPokemon_RestorePP(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + i, NULL)) {
            u8 moveMaxPP = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_MAX_PP + i, NULL);

            BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + i, &moveMaxPP);
        }
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

static inline int Pokemon_Face(int clientType)
{
    return (clientType & 1) ? 0 : 1;
}

void PokemonSprite_LoadAnimFrames(NARC *narc, SpriteAnimFrame *frames, u16 species, u16 clientType)
{
    int face = Pokemon_Face(clientType);

    SpeciesSpriteData data;
    NARC_ReadFromMember(narc, 0, species * sizeof(SpeciesSpriteData), sizeof(SpeciesSpriteData), &data);
    MI_CpuCopy8(data.faceAnims[face].frames, frames, sizeof(SpriteAnimFrame) * MAX_ANIMATION_FRAMES);
}

void PokemonSprite_LoadAnim(NARC *narc, PokemonAnimationSys *animationSys, PokemonSprite *sprite, u16 species, int face, int reverse, int frame)
{
    int faceType = (face == FACE_FRONT) ? 0 : 1;

    SpeciesSpriteData spriteData;
    NARC_ReadFromMember(narc, 0, species * sizeof(SpeciesSpriteData), sizeof(SpeciesSpriteData), &spriteData);

    PokeAnimationSettings settings;
    settings.animation = spriteData.faceAnims[faceType].animation;
    settings.startDelay = spriteData.faceAnims[faceType].startDelay;
    settings.reverse = reverse;

    PokeAnimation_Init(animationSys, sprite, &settings, frame);
}

void PokemonSprite_LoadCryDelay(NARC *narc, u8 *cryDelay, u16 species, u16 clientType)
{
    int face = Pokemon_Face(clientType);

    SpeciesSpriteData data;
    NARC_ReadFromMember(narc, 0, species * sizeof(SpeciesSpriteData), sizeof(SpeciesSpriteData), &data);

    *cryDelay = data.faceAnims[face].cryDelay;
}

void PokemonSprite_LoadYOffset(NARC *narc, s8 *yOffset, u16 species)
{
    SpeciesSpriteData data;

    NARC_ReadFromMember(narc, 0, species * sizeof(SpeciesSpriteData), sizeof(SpeciesSpriteData), &data);
    *yOffset = data.yOffset;
}

void PokemonSprite_LoadXOffsetShadow(NARC *narc, s8 *xOffsetShadow, u16 species)
{
    SpeciesSpriteData data;

    NARC_ReadFromMember(narc, 0, species * sizeof(SpeciesSpriteData), sizeof(SpeciesSpriteData), &data);
    *xOffsetShadow = data.xOffsetShadow;
}

void PokemonSprite_LoadShadowSize(NARC *narc, u8 *shadowSize, u16 species)
{
    SpeciesSpriteData data;

    NARC_ReadFromMember(narc, 0, species * sizeof(SpeciesSpriteData), sizeof(SpeciesSpriteData), &data);
    *shadowSize = data.shadowSize;
}

BOOL Pokemon_SetBallSeal(int param0, Pokemon *mon, int heapID)
{
    int v0 = param0;

    if (v0 == 0) {
        return FALSE;
    }

    NARC *narc = NARC_ctor(NARC_INDEX_APPLICATION__CUSTOM_BALL__EDIT__PL_CB_DATA, heapID);
    v0 = v0 - 1;
    int one = 1;

    BallCapsule v2;
    NARC_ReadFromMember(narc, 0, v0 * sizeof(BallCapsule), sizeof(BallCapsule), &v2);
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE_ID, &one);
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE, &v2);
    NARC_dtor(narc);

    return TRUE;
}

void sub_02078B40(Pokemon *mon, UnkStruct_02078B40 *param1)
{
    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    param1->personality = boxMon->personality;
    param1->partyDecrypted = FALSE;
    param1->boxDecrypted = FALSE;
    param1->checksumFailed = boxMon->checksumFailed;
    param1->species = blockA->species;
    param1->heldItem = blockA->heldItem;
    param1->otID = blockA->otID;
    param1->exp = blockA->exp;
    param1->friendship = blockA->friendship;
    param1->ability = blockA->ability;
    param1->hpEV = blockA->hpEV;
    param1->atkEV = blockA->atkEV;
    param1->defEV = blockA->defEV;
    param1->speedEV = blockA->speedEV;
    param1->spAtkEV = blockA->spAtkEV;
    param1->spDefEV = blockA->spDefEV;
    param1->originLanguage = blockA->originLanguage;

    int i;
    for (i = 0; i < 4; i++) {
        param1->unk_1C[i] = blockB->moves[i];
        param1->unk_24[i] = blockB->moveCurrentPPs[i];
        param1->unk_28[i] = blockB->movePPUps[i];
    }

    param1->hpIV = blockB->hpIV;
    param1->atkIV = blockB->atkIV;
    param1->defIV = blockB->defIV;
    param1->speedIV = blockB->speedIV;
    param1->spAtkIV = blockB->spAtkIV;
    param1->spDefIV = blockB->spDefIV;
    param1->isEgg = blockB->isEgg;
    param1->unk_2C_31 = blockB->hasNickname;
    param1->fatefulEncounter = blockB->fatefulEncounter;
    param1->gender = blockB->gender;
    param1->form = blockB->form;

    for (i = 0; i < 10 + 1; i++) {
        param1->unk_32[i] = blockC->nickname[i];
    }

    for (i = 0; i < 7 + 1; i++) {
        param1->unk_48[i] = blockD->otName[i];
    }

    param1->pokeball = blockD->pokeball;

    param1->unk_5C = mon->party.status;
    param1->level = mon->party.level;
    param1->unk_61 = mon->party.ballCapsuleID;
    param1->unk_62 = mon->party.hp;
    param1->unk_64 = mon->party.maxHP;
    param1->unk_66 = mon->party.attack;
    param1->unk_68 = mon->party.defense;
    param1->unk_6A = mon->party.speed;
    param1->unk_6C = mon->party.spAtk;
    param1->unk_6E = mon->party.spDef;

    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }
}

void sub_02078E0C(UnkStruct_02078B40 *param0, Pokemon *mon)
{
    MI_CpuClearFast(mon, sizeof(Pokemon));

    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_D);

    boxMon->personality = param0->personality;
    boxMon->partyDecrypted = FALSE;
    boxMon->boxDecrypted = FALSE;
    boxMon->checksumFailed = param0->checksumFailed;

    blockA->species = param0->species;
    blockA->heldItem = param0->heldItem;
    blockA->otID = param0->otID;
    blockA->exp = param0->exp;
    blockA->friendship = param0->friendship;
    blockA->ability = param0->ability;
    blockA->hpEV = param0->hpEV;
    blockA->atkEV = param0->atkEV;
    blockA->defEV = param0->defEV;
    blockA->speedEV = param0->speedEV;
    blockA->spAtkEV = param0->spAtkEV;
    blockA->spDefEV = param0->spDefEV;
    blockA->originLanguage = param0->originLanguage;

    int i;
    for (i = 0; i < 4; i++) {
        blockB->moves[i] = param0->unk_1C[i];
        blockB->moveCurrentPPs[i] = param0->unk_24[i];
        blockB->movePPUps[i] = param0->unk_28[i];
    }

    blockB->hpIV = param0->hpIV;
    blockB->atkIV = param0->atkIV;
    blockB->defIV = param0->defIV;
    blockB->speedIV = param0->speedIV;
    blockB->spAtkIV = param0->spAtkIV;
    blockB->spDefIV = param0->spDefIV;
    blockB->isEgg = param0->isEgg;
    blockB->hasNickname = param0->unk_2C_31;
    blockB->fatefulEncounter = param0->fatefulEncounter;
    blockB->gender = param0->gender;
    blockB->form = param0->form;

    for (i = 0; i < 10 + 1; i++) {
        blockC->nickname[i] = param0->unk_32[i];
    }

    for (i = 0; i < 7 + 1; i++) {
        blockD->otName[i] = param0->unk_48[i];
    }

    blockD->pokeball = param0->pokeball;

    mon->party.status = param0->unk_5C;
    mon->party.level = param0->level;
    mon->party.ballCapsuleID = param0->unk_61;
    mon->party.hp = param0->unk_62;
    mon->party.maxHP = param0->unk_64;
    mon->party.attack = param0->unk_66;
    mon->party.defense = param0->unk_68;
    mon->party.speed = param0->unk_6A;
    mon->party.spAtk = param0->unk_6C;
    mon->party.spDef = param0->unk_6E;

    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    mon->box.checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
    Pokemon_EncryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
}

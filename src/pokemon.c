#include "pokemon.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
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
#include "generated/species_data_params.h"

#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_defs/archived_poke_sprite_data.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/mail.h"
#include "struct_defs/poke_animation_settings.h"
#include "struct_defs/seal_case.h"
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
#include "strbuf.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_02015F84.h"
#include "unk_02017038.h"
#include "unk_0202C9F4.h"
#include "unk_02092494.h"

#define FATEFUL_ENCOUNTER_LOCATION 3002

// Columns: Spicy, Dry, Sweet, Bitter, Sour
// TODO enum here?
static const s8 sNatureFlavorAffinities[][5] = {
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x0, 0x0, -0x1 },
    { 0x1, 0x0, -0x1, 0x0, 0x0 },
    { 0x1, -0x1, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x0, -0x1, 0x0 },
    { -0x1, 0x0, 0x0, 0x0, 0x1 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, -0x1, 0x0, 0x1 },
    { 0x0, -0x1, 0x0, 0x0, 0x1 },
    { 0x0, 0x0, 0x0, -0x1, 0x1 },
    { -0x1, 0x0, 0x1, 0x0, 0x0 },
    { 0x0, 0x0, 0x1, 0x0, -0x1 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, -0x1, 0x1, 0x0, 0x0 },
    { 0x0, 0x0, 0x1, -0x1, 0x0 },
    { -0x1, 0x1, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x0, -0x1 },
    { 0x0, 0x1, -0x1, 0x0, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, -0x1, 0x0 },
    { -0x1, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, -0x1 },
    { 0x0, 0x0, -0x1, 0x1, 0x0 },
    { 0x0, -0x1, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
};

enum PokemonDataBlockID {
    DATA_BLOCK_A = 0,
    DATA_BLOCK_B,
    DATA_BLOCK_C,
    DATA_BLOCK_D
};

static void sub_02073E18(BoxPokemon *boxMon, int monSpecies, int monLevel, int monIVs, BOOL useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID);
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
static s8 BoxPokemon_GetFlavorAffinity(BoxPokemon *boxMon, int flavor);
static BOOL IsBoxPokemonInfectedWithPokerus(BoxPokemon *boxMon);
static BOOL BoxPokemonHasCuredPokerus(BoxPokemon *boxMon);
static void InitializeBoxPokemonAfterCapture(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int monPokeball, int metLocation, int metTerrain, enum HeapId heapID);
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

    sub_02073E18(&mon->box, monSpecies, monLevel, monIVs, useMonPersonalityParam, monPersonality, monOTIDSource, monOTID);
    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), 0);
    Pokemon_EncryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    Pokemon_SetValue(mon, MON_DATA_LEVEL, &monLevel);

    Mail *mail = Mail_New(HEAP_ID_SYSTEM);

    Pokemon_SetValue(mon, MON_DATA_MAIL, mail);
    Heap_Free(mail);

    u32 zero = 0;
    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE_ID, &zero);

    BallCapsule v2;
    MI_CpuClearFast(&v2, sizeof(BallCapsule));

    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE, &v2);
    Pokemon_CalcLevelAndStats(mon);
}

static void sub_02073E18(BoxPokemon *boxMon, int monSpecies, int monLevel, int monIVs, BOOL useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID)
{
    BoxPokemon_Init(boxMon);

    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    if (!useMonPersonalityParam) {
        monPersonality = (LCRNG_Next() | (LCRNG_Next() << 16));
    }

    BoxPokemon_SetValue(boxMon, MON_DATA_PERSONALITY, &monPersonality);

    // TODO likely should be an enum
    if (monOTIDSource == OTID_NOT_SHINY) {
        do {
            monOTID = (LCRNG_Next() | (LCRNG_Next() << 16));
        } while (Pokemon_InlineIsPersonalityShiny(monOTID, monPersonality));
    } else if (monOTIDSource != OTID_SET) {
        monOTID = 0;
    }

    BoxPokemon_SetValue(boxMon, MON_DATA_OT_ID, &monOTID);
    BoxPokemon_SetValue(boxMon, MON_DATA_LANGUAGE, &gGameLanguage);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPECIES, &monSpecies);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPECIES_NAME, NULL);

    u32 v1, v2; // TODO rename, these are used/reused as temp vars through the whole function.

    v1 = Pokemon_GetSpeciesBaseExpAt(monSpecies, monLevel);
    BoxPokemon_SetValue(boxMon, MON_DATA_EXP, &v1);

    v1 = SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_BASE_FRIENDSHIP);
    BoxPokemon_SetValue(boxMon, MON_DATA_FRIENDSHIP, &v1);

    BoxPokemon_SetValue(boxMon, MON_DATA_MET_LEVEL, &monLevel);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_GAME, &gGameVersion);

    v1 = ITEM_POKE_BALL;
    BoxPokemon_SetValue(boxMon, MON_DATA_POKEBALL, &v1);

    if (monIVs < INIT_IVS_RANDOM) {
        BoxPokemon_SetValue(boxMon, MON_DATA_HP_IV, &monIVs);
        BoxPokemon_SetValue(boxMon, MON_DATA_ATK_IV, &monIVs);
        BoxPokemon_SetValue(boxMon, MON_DATA_DEF_IV, &monIVs);
        BoxPokemon_SetValue(boxMon, MON_DATA_SPEED_IV, &monIVs);
        BoxPokemon_SetValue(boxMon, MON_DATA_SPATK_IV, &monIVs);
        BoxPokemon_SetValue(boxMon, MON_DATA_SPDEF_IV, &monIVs);
    } else {
        v1 = LCRNG_Next();
        v2 = (v1 & (0x1f << 0)) >> 0;
        BoxPokemon_SetValue(boxMon, MON_DATA_HP_IV, &v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        BoxPokemon_SetValue(boxMon, MON_DATA_ATK_IV, &v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        BoxPokemon_SetValue(boxMon, MON_DATA_DEF_IV, &v2);

        v1 = LCRNG_Next();
        v2 = (v1 & (0x1f << 0)) >> 0;
        BoxPokemon_SetValue(boxMon, MON_DATA_SPEED_IV, &v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        BoxPokemon_SetValue(boxMon, MON_DATA_SPATK_IV, &v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        BoxPokemon_SetValue(boxMon, MON_DATA_SPDEF_IV, &v2);
    }

    v1 = SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_ABILITY_1);
    v2 = SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_ABILITY_2);

    if (v2 != ABILITY_NONE) {
        if (monPersonality & 1) {
            BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, &v2);
        } else {
            BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, &v1);
        }
    } else {
        BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, &v1);
    }

    v1 = BoxPokemon_GetGender(boxMon);

    BoxPokemon_SetValue(boxMon, MON_DATA_GENDER, &v1);
    BoxPokemon_SetDefaultMoves(boxMon);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void sub_02074044(Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 monNature)
{
    u32 monPersonality;

    do {
        monPersonality = (LCRNG_Next() | (LCRNG_Next() << 16));
    } while (monNature != Pokemon_GetNatureOf(monPersonality));

    // TODO monOTIDSource probably an enum?
    Pokemon_InitWith(mon, monSpecies, monLevel, monIVs, TRUE, monPersonality, OTID_NOT_SET, 0);
}

void sub_02074088(Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 gender, u8 param5, u8 param6)
{
    u32 monPersonality;
    u16 unownLetter;

    // TODO enum value
    if (param6 && param6 < 29) {
        do {
            monPersonality = (LCRNG_Next() | (LCRNG_Next() << 16));
            unownLetter = (((monPersonality & 0x3000000) >> 18) | ((monPersonality & 0x30000) >> 12) | ((monPersonality & 0x300) >> 6) | (monPersonality & 0x3)) % 28;
        } while (param5 != Pokemon_GetNatureOf(monPersonality) || gender != Pokemon_GetGenderOf(monSpecies, monPersonality) || unownLetter != param6 - 1);
    } else {
        monPersonality = sub_02074128(monSpecies, gender, param5);
    }

    Pokemon_InitWith(mon, monSpecies, monLevel, monIVs, TRUE, monPersonality, OTID_NOT_SET, 0);
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
    Pokemon_SetValue(mon, MON_DATA_COMBINED_IVS, &monCombinedIVs);
    Pokemon_CalcLevelAndStats(mon);
}

void Pokemon_CalcLevelAndStats(Pokemon *mon)
{
    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);
    int monLevel = Pokemon_GetLevel(mon);

    Pokemon_SetValue(mon, MON_DATA_LEVEL, &monLevel);
    Pokemon_CalcStats(mon);
    Pokemon_ExitDecryptionContext(mon, reencrypt);
}

void Pokemon_CalcStats(Pokemon *mon)
{
    int monMaxHp;
    int monCurrentHp;
    int monHpIV, monAtkIV, monDefIV, monSpeedIV, monSpAtkIV, monSpDefIV;
    int monHpEV, monAtkEV, monDefEV, monSpeedEV, monSpAtkEV, monSpDefEV;

    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);

    int monLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    monMaxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    monCurrentHp = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);

    monHpIV = Pokemon_GetValue(mon, MON_DATA_HP_IV, NULL);
    monHpEV = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    monAtkIV = Pokemon_GetValue(mon, MON_DATA_ATK_IV, NULL);
    monAtkEV = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    monDefIV = Pokemon_GetValue(mon, MON_DATA_DEF_IV, NULL);
    monDefEV = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    monSpeedIV = Pokemon_GetValue(mon, MON_DATA_SPEED_IV, NULL);
    monSpeedEV = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    monSpAtkIV = Pokemon_GetValue(mon, MON_DATA_SPATK_IV, NULL);
    monSpAtkEV = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    monSpDefIV = Pokemon_GetValue(mon, MON_DATA_SPDEF_IV, NULL);
    monSpDefEV = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);

    int monForm = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    int monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    SpeciesData *speciesData = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesData));

    SpeciesData_LoadForm(monSpecies, monForm, speciesData);

    int newMaxHp;
    if (monSpecies == SPECIES_SHEDINJA) {
        newMaxHp = 1;
    } else {
        newMaxHp = ((2 * speciesData->baseStats.hp + monHpIV + monHpEV / 4) * monLevel / 100 + monLevel + 10);
    }

    Pokemon_SetValue(mon, MON_DATA_MAX_HP, &newMaxHp);

    // TODO inline func maybe
    int newAtk = ((2 * speciesData->baseStats.attack + monAtkIV + monAtkEV / 4) * monLevel / 100 + 5);
    newAtk = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newAtk, STAT_ATTACK);

    Pokemon_SetValue(mon, MON_DATA_ATK, &newAtk);

    int newDef = ((2 * speciesData->baseStats.defense + monDefIV + monDefEV / 4) * monLevel / 100 + 5);
    newDef = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newDef, STAT_DEFENSE);

    Pokemon_SetValue(mon, MON_DATA_DEF, &newDef);

    int newSpeed = ((2 * speciesData->baseStats.speed + monSpeedIV + monSpeedEV / 4) * monLevel / 100 + 5);
    newSpeed = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newSpeed, STAT_SPEED);

    Pokemon_SetValue(mon, MON_DATA_SPEED, &newSpeed);

    int newSpAtk = ((2 * speciesData->baseStats.spAttack + monSpAtkIV + monSpAtkEV / 4) * monLevel / 100 + 5);
    newSpAtk = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newSpAtk, STAT_SPECIAL_ATTACK);

    Pokemon_SetValue(mon, MON_DATA_SP_ATK, &newSpAtk);

    int newSpDef = ((2 * speciesData->baseStats.spDefense + monSpDefIV + monSpDefEV / 4) * monLevel / 100 + 5);
    newSpDef = Pokemon_GetNatureStatValue(Pokemon_GetNature(mon), newSpDef, STAT_SPECIAL_DEFENSE);

    Pokemon_SetValue(mon, MON_DATA_SP_DEF, &newSpDef);
    Heap_Free(speciesData);

    if (monCurrentHp != 0 || monMaxHp == 0) {
        if (monSpecies == SPECIES_SHEDINJA) {
            monCurrentHp = 1;
        } else if (monCurrentHp == 0) {
            monCurrentHp = newMaxHp;
        } else {
            monCurrentHp += newMaxHp - monMaxHp;
        }
    }

    if (monCurrentHp) {
        Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &monCurrentHp);
    }

    Pokemon_ExitDecryptionContext(mon, reencrypt);
}

u32 Pokemon_GetValue(Pokemon *mon, enum PokemonDataParam param, void *dest)
{
    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

        u16 checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            mon->box.invalidData = TRUE;
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
    case MON_DATA_STATUS_CONDITION:
        result = mon->party.status;
        break;

    case MON_DATA_LEVEL:
        result = mon->party.level;
        break;

    case MON_DATA_BALL_CAPSULE_ID:
        result = mon->party.ballCapsuleID;
        break;

    case MON_DATA_CURRENT_HP:
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

u32 BoxPokemon_GetValue(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest)
{
    if (boxMon->boxDecrypted == FALSE) {
        Pokemon_DecryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
        u16 checksum = Pokemon_GetDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != boxMon->checksum) {
            GF_ASSERT(checksum == boxMon->checksum);
            boxMon->invalidData = TRUE;
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
    u32 result = 0;

    PokemonDataBlockA *monDataBlockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *monDataBlockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *monDataBlockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *monDataBlockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    switch (param) {
    default:
        result = 0;
        break;

    case MON_DATA_PERSONALITY:
        result = boxMon->personality;
        break;

    case MON_DATA_IS_PARTY_DECRYPTED:
        result = boxMon->partyDecrypted;
        break;

    case MON_DATA_IS_BOX_DECRYPTED:
        result = boxMon->boxDecrypted;
        break;

    case MON_DATA_IS_DATA_INVALID:
        result = boxMon->invalidData;
        break;

    case MON_DATA_CHECKSUM:
        result = boxMon->checksum;
        break;

    case MON_DATA_SPECIES_EXISTS:
        result = (monDataBlockA->species != SPECIES_NONE);
        break;

    case MON_DATA_EGG_EXISTS:
        if (boxMon->invalidData) {
            result = boxMon->invalidData;
        } else {
            result = monDataBlockB->isEgg;
        }

        break;

    case MON_DATA_SPECIES_EGG:
        result = monDataBlockA->species;
        if (result != SPECIES_NONE && (monDataBlockB->isEgg || boxMon->invalidData)) {
            result = SPECIES_EGG;
        }

        break;

    case MON_DATA_LEVEL:
        result = Pokemon_GetSpeciesLevelAt(monDataBlockA->species, monDataBlockA->exp);
        break;

    case MON_DATA_SPECIES:
        if (boxMon->invalidData) {
            result = SPECIES_EGG;
        } else {
            result = monDataBlockA->species;
        }

        break;

    case MON_DATA_HELD_ITEM:
        result = monDataBlockA->heldItem;
        break;

    case MON_DATA_OT_ID:
        result = monDataBlockA->otID;
        break;

    case MON_DATA_EXP:
        result = monDataBlockA->exp;
        break;

    case MON_DATA_FRIENDSHIP:
        result = monDataBlockA->friendship;
        break;

    case MON_DATA_ABILITY:
        result = monDataBlockA->ability;
        break;

    case MON_DATA_MARKS:
        result = monDataBlockA->marks;
        break;

    case MON_DATA_LANGUAGE:
        result = monDataBlockA->originLanguage;
        break;

    case MON_DATA_HP_EV:
        result = monDataBlockA->hpEV;
        break;

    case MON_DATA_ATK_EV:
        result = monDataBlockA->atkEV;
        break;

    case MON_DATA_DEF_EV:
        result = monDataBlockA->defEV;
        break;

    case MON_DATA_SPEED_EV:
        result = monDataBlockA->speedEV;
        break;

    case MON_DATA_SPATK_EV:
        result = monDataBlockA->spAtkEV;
        break;

    case MON_DATA_SPDEF_EV:
        result = monDataBlockA->spDefEV;
        break;

    case MON_DATA_COOL:
        result = monDataBlockA->cool;
        break;

    case MON_DATA_BEAUTY:
        result = monDataBlockA->beauty;
        break;

    case MON_DATA_CUTE:
        result = monDataBlockA->cute;
        break;

    case MON_DATA_SMART:
        result = monDataBlockA->smart;
        break;

    case MON_DATA_TOUGH:
        result = monDataBlockA->tough;
        break;

    case MON_DATA_SHEEN:
        result = monDataBlockA->sheen;
        break;

    case MON_DATA_SINNOH_CHAMP_RIBBON:
    case MON_DATA_SINNOH_ABILITY_RIBBON:
    case MON_DATA_SINNOH_GREAT_ABILITY_RIBBON:
    case MON_DATA_SINNOH_DOUBLE_ABILITY_RIBBON:
    case MON_DATA_SINNOH_MULTI_ABILITY_RIBBON:
    case MON_DATA_SINNOH_PAIR_ABILITY_RIBBON:
    case MON_DATA_SINNOH_WORLD_ABILITY_RIBBON:
    case MON_DATA_SINNOH_ALERT_RIBBON:
    case MON_DATA_SINNOH_SHOCK_RIBBON:
    case MON_DATA_SINNOH_DOWNCAST_RIBBON:
    case MON_DATA_SINNOH_CARELESS_RIBBON:
    case MON_DATA_SINNOH_RELAX_RIBBON:
    case MON_DATA_SINNOH_SNOOZE_RIBBON:
    case MON_DATA_SINNOH_SMILE_RIBBON:
    case MON_DATA_SINNOH_GORGEOUS_RIBBON:
    case MON_DATA_SINNOH_ROYAL_RIBBON:
    case MON_DATA_SINNOH_GORGEOUS_ROYAL_RIBBON:
    case MON_DATA_SINNOH_FOOTPRINT_RIBBON:
    case MON_DATA_SINNOH_RECORD_RIBBON:
    case MON_DATA_SINNOH_HISTORY_RIBBON:
    case MON_DATA_SINNOH_LEGEND_RIBBON:
    case MON_DATA_SINNOH_RED_RIBBON:
    case MON_DATA_SINNOH_GREEN_RIBBON:
    case MON_DATA_SINNOH_BLUE_RIBBON:
    case MON_DATA_SINNOH_FESTIVAL_RIBBON:
    case MON_DATA_SINNOH_CARNIVAL_RIBBON:
    case MON_DATA_SINNOH_CLASSIC_RIBBON:
    case MON_DATA_SINNOH_PREMIER_RIBBON:
    case MON_DATA_SINNOH_RIBBON_DUMMY:
        result = GetRibbon(monDataBlockA->sinnohRibbons, param, MON_DATA_SINNOH_CHAMP_RIBBON);
        break;

    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        result = monDataBlockB->moves[param - MON_DATA_MOVE1];
        break;

    case MON_DATA_MOVE1_CUR_PP:
    case MON_DATA_MOVE2_CUR_PP:
    case MON_DATA_MOVE3_CUR_PP:
    case MON_DATA_MOVE4_CUR_PP:
        result = monDataBlockB->moveCurrentPPs[param - MON_DATA_MOVE1_CUR_PP];
        break;

    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        result = monDataBlockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS];
        break;

    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        result = MoveTable_CalcMaxPP(monDataBlockB->moves[param - MON_DATA_MOVE1_MAX_PP], monDataBlockB->movePPUps[param - MON_DATA_MOVE1_MAX_PP]);
        break;

    case MON_DATA_HP_IV:
        result = monDataBlockB->hpIV;
        break;

    case MON_DATA_ATK_IV:
        result = monDataBlockB->atkIV;
        break;

    case MON_DATA_DEF_IV:
        result = monDataBlockB->defIV;
        break;

    case MON_DATA_SPEED_IV:
        result = monDataBlockB->speedIV;
        break;

    case MON_DATA_SPATK_IV:
        result = monDataBlockB->spAtkIV;
        break;

    case MON_DATA_SPDEF_IV:
        result = monDataBlockB->spDefIV;
        break;

    case MON_DATA_IS_EGG:
        if (boxMon->invalidData) {
            result = boxMon->invalidData;
        } else {
            result = monDataBlockB->isEgg;
        }
        break;

    case MON_DATA_HAS_NICKNAME:
        result = monDataBlockB->hasNickname;
        break;

    case MON_DATA_HOENN_COOL_RIBBON:
    case MON_DATA_HOENN_COOL_RIBBON_SUPER:
    case MON_DATA_HOENN_COOL_RIBBON_HYPER:
    case MON_DATA_HOENN_COOL_RIBBON_MASTER:
    case MON_DATA_HOENN_BEAUTY_RIBBON:
    case MON_DATA_HOENN_BEAUTY_RIBBON_SUPER:
    case MON_DATA_HOENN_BEAUTY_RIBBON_HYPER:
    case MON_DATA_HOENN_BEAUTY_RIBBON_MASTER:
    case MON_DATA_HOENN_CUTE_RIBBON:
    case MON_DATA_HOENN_CUTE_RIBBON_SUPER:
    case MON_DATA_HOENN_CUTE_RIBBON_HYPER:
    case MON_DATA_HOENN_CUTE_RIBBON_MASTER:
    case MON_DATA_HOENN_SMART_RIBBON:
    case MON_DATA_HOENN_SMART_RIBBON_SUPER:
    case MON_DATA_HOENN_SMART_RIBBON_HYPER:
    case MON_DATA_HOENN_SMART_RIBBON_MASTER:
    case MON_DATA_HOENN_TOUGH_RIBBON:
    case MON_DATA_HOENN_TOUGH_RIBBON_SUPER:
    case MON_DATA_HOENN_TOUGH_RIBBON_HYPER:
    case MON_DATA_HOENN_TOUGH_RIBBON_MASTER:
    case MON_DATA_HOENN_CHAMPION_RIBBON:
    case MON_DATA_HOENN_WINNING_RIBBON:
    case MON_DATA_HOENN_VICTORY_RIBBON:
    case MON_DATA_HOENN_ARTIST_RIBBON:
    case MON_DATA_HOENN_EFFORT_RIBBON:
    case MON_DATA_HOENN_MARINE_RIBBON:
    case MON_DATA_HOENN_LAND_RIBBON:
    case MON_DATA_HOENN_SKY_RIBBON:
    case MON_DATA_HOENN_COUNTRY_RIBBON:
    case MON_DATA_HOENN_NATIONAL_RIBBON:
    case MON_DATA_HOENN_EARTH_RIBBON:
    case MON_DATA_HOENN_WORLD_RIBBON:
        result = GetRibbon(monDataBlockB->hoennRibbons, param, MON_DATA_HOENN_COOL_RIBBON);
        break;

    case MON_DATA_FATEFUL_ENCOUNTER:
        result = monDataBlockB->fatefulEncounter;
        break;

    case MON_DATA_GENDER:
        result = Pokemon_GetGenderOf(monDataBlockA->species, boxMon->personality);
        monDataBlockB->gender = result;
        boxMon->checksum = Pokemon_GetDataChecksum(&boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);
        break;

    case MON_DATA_FORM:
        result = monDataBlockB->form;
        break;

    case MON_DATA_DUMMY_B_1:
        result = monDataBlockB->dummy_19;
        break;

    case MON_DATA_DUMMY_B_2:
        result = monDataBlockB->dummy_1A;
        break;

    case MON_DATA_NICKNAME:
        if (boxMon->invalidData) {
            // TODO confirm this should be SPECIES_BAD_EGG (lines up with checksum failure check but not throughly checked this call tree)
            MessageLoader_GetSpeciesName(SPECIES_BAD_EGG, 0, dest);
        } else {
            charcode_t *buf = dest;

            for (result = 0; result < MON_NAME_LEN; result++) {
                buf[result] = monDataBlockC->nickname[result];
            }

            buf[result] = CHAR_EOS;
        }
        break;
    case MON_DATA_NICKNAME_STRBUF_AND_FLAG:
        result = monDataBlockB->hasNickname;
        // fall-through
    case MON_DATA_NICKNAME_STRBUF:
        if (boxMon->invalidData) {
            Strbuf *strbuf = MessageUtil_SpeciesName(SPECIES_BAD_EGG, HEAP_ID_SYSTEM);

            Strbuf_Copy(dest, strbuf);
            Strbuf_Free(strbuf);
        } else {
            Strbuf_CopyChars(dest, monDataBlockC->nickname);
        }
        break;

    case MON_DATA_MET_GAME_REGION_CODE:
        result = monDataBlockC->originCode;
        break;

    case MON_DATA_MET_GAME:
        result = monDataBlockC->originGame;
        break;

    case MON_DATA_SINNOH_SUPER_COOL_RIBBON:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_MASTER:
    case MON_DATA_CONTEST_RIBBON_DUMMY:
        result = GetRibbon(monDataBlockC->contestRibbons, param, MON_DATA_SINNOH_SUPER_COOL_RIBBON);
        break;

    case MON_DATA_OTNAME:
        u16 *otName = dest;

        for (result = 0; result < TRAINER_NAME_LEN; result++) {
            otName[result] = monDataBlockD->otName[result];
        }

        otName[result] = CHAR_EOS;
        break;

    case MON_DATA_OTNAME_STRBUF:
        Strbuf_CopyChars(dest, monDataBlockD->otName);
        break;

    case MON_DATA_MET_YEAR:
        result = monDataBlockD->metYear;
        break;

    case MON_DATA_MET_MONTH:
        result = monDataBlockD->metMonth;
        break;

    case MON_DATA_MET_DAY:
        result = monDataBlockD->metDay;
        break;

    case MON_DATA_HATCH_YEAR:
        result = monDataBlockD->hatchYear;
        break;

    case MON_DATA_HATCH_MONTH:
        result = monDataBlockD->hatchMonth;
        break;

    case MON_DATA_HATCH_DAY:
        result = monDataBlockD->hatchDay;
        break;

    case MON_DATA_MET_LOCATION:
    case MON_DATA_FATEFUL_MET_LOCATION:
        // TODO enum value?
        if (monDataBlockD->metLocation == FATEFUL_ENCOUNTER_LOCATION && monDataBlockB->fatefulMetLocation) {
            result = monDataBlockB->fatefulMetLocation;
        } else {
            result = monDataBlockD->metLocation;
        }
        break;

    case MON_DATA_HATCH_LOCATION:
    case MON_DATA_FATEFUL_HATCH_LOCATION:
        // TODO enum value?
        if (monDataBlockD->hatchLocation == FATEFUL_ENCOUNTER_LOCATION && monDataBlockB->fatefulHatchLocation) {
            result = monDataBlockB->fatefulHatchLocation;
        } else {
            result = monDataBlockD->hatchLocation;
        }
        break;

    case MON_DATA_POKERUS:
        result = monDataBlockD->pokerus;
        break;

    case MON_DATA_POKEBALL:
        result = monDataBlockD->pokeball;
        break;

    case MON_DATA_MET_LEVEL:
        result = monDataBlockD->metLevel;
        break;

    case MON_DATA_OT_GENDER:
        result = monDataBlockD->otGender;
        break;

    case MON_DATA_MET_TERRAIN:
        result = monDataBlockD->metTerrain;
        break;

    case MON_DATA_DUMMY_D_1:
        result = monDataBlockD->dummy_1E;
        break;

    case MON_DATA_COMBINED_IVS:
        result = (monDataBlockB->hpIV << 0)
            | (monDataBlockB->atkIV << 5)
            | (monDataBlockB->defIV << 10)
            | (monDataBlockB->speedIV << 15)
            | (monDataBlockB->spAtkIV << 20)
            | (monDataBlockB->spDefIV << 25);
        break;

    case MON_DATA_NIDORAN_HAS_NICKNAME:
        if ((monDataBlockA->species == SPECIES_NIDORAN_F || monDataBlockA->species == SPECIES_NIDORAN_M)
            && monDataBlockB->hasNickname == FALSE) {
            result = FALSE;
        } else {
            result = TRUE;
        }
        break;

    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
        if (monDataBlockA->species == SPECIES_ARCEUS && monDataBlockA->ability == ABILITY_MULTITYPE) {
            result = Pokemon_GetArceusTypeOf(Item_LoadParam(monDataBlockA->heldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM));
        } else {
            result = SpeciesData_GetFormValue(monDataBlockA->species, monDataBlockB->form, SPECIES_DATA_TYPE_1 + (param - MON_DATA_TYPE_1));
        }
        break;

    case MON_DATA_SPECIES_NAME:
        MessageLoader_GetSpeciesName(monDataBlockA->species, HEAP_ID_SYSTEM, dest);
        break;
    }

    return result;
}

void Pokemon_SetValue(Pokemon *mon, enum PokemonDataParam param, const void *value)
{
    if (mon->box.partyDecrypted == FALSE) {
        Pokemon_DecryptData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        Pokemon_DecryptData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
        u16 checksum = Pokemon_GetDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            mon->box.invalidData = TRUE;
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
    u32 *u32Value = value;
    u16 *u16Value = value;
    u8 *u8Value = value;

    switch (param) {
    case MON_DATA_STATUS_CONDITION:
        mon->party.status = *u32Value;
        break;

    case MON_DATA_LEVEL:
        mon->party.level = *u8Value;
        break;

    case MON_DATA_BALL_CAPSULE_ID:
        mon->party.ballCapsuleID = *u8Value;
        break;

    case MON_DATA_CURRENT_HP:
        mon->party.hp = *u16Value;
        break;

    case MON_DATA_MAX_HP:
        mon->party.maxHP = *u16Value;
        break;

    case MON_DATA_ATK:
        mon->party.attack = *u16Value;
        break;

    case MON_DATA_DEF:
        mon->party.defense = *u16Value;
        break;

    case MON_DATA_SPEED:
        mon->party.speed = *u16Value;
        break;

    case MON_DATA_SP_ATK:
        mon->party.spAtk = *u16Value;
        break;

    case MON_DATA_SP_DEF:
        mon->party.spDef = *u16Value;
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
}

void BoxPokemon_SetValue(BoxPokemon *boxMon, enum PokemonDataParam param, const void *value)
{
    if (boxMon->boxDecrypted == FALSE) {
        Pokemon_DecryptData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
        u16 checksum = Pokemon_GetDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != boxMon->checksum) {
            GF_ASSERT(checksum == boxMon->checksum);
            boxMon->invalidData = TRUE;
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

    PokemonDataBlockA *monDataBlockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *monDataBlockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *monDataBlockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *monDataBlockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

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

    case MON_DATA_IS_DATA_INVALID:
        boxMon->invalidData = *u8Value;
        break;

    case MON_DATA_CHECKSUM:
        boxMon->checksum = *u16Value;
        break;

    case MON_DATA_SPECIES:
        monDataBlockA->species = *u16Value;
        break;

    case MON_DATA_HELD_ITEM:
        monDataBlockA->heldItem = *u16Value;
        break;

    case MON_DATA_OT_ID:
        monDataBlockA->otID = *u32Value;
        break;

    case MON_DATA_EXP:
        monDataBlockA->exp = *u32Value;
        break;

    case MON_DATA_FRIENDSHIP:
        monDataBlockA->friendship = *u8Value;
        break;

    case MON_DATA_ABILITY:
        monDataBlockA->ability = *u8Value;
        break;

    case MON_DATA_MARKS:
        monDataBlockA->marks = *u8Value;
        break;

    case MON_DATA_LANGUAGE:
        monDataBlockA->originLanguage = *u8Value;
        break;

    case MON_DATA_HP_EV:
        monDataBlockA->hpEV = *u8Value;
        break;

    case MON_DATA_ATK_EV:
        monDataBlockA->atkEV = *u8Value;
        break;

    case MON_DATA_DEF_EV:
        monDataBlockA->defEV = *u8Value;
        break;

    case MON_DATA_SPEED_EV:
        monDataBlockA->speedEV = *u8Value;
        break;

    case MON_DATA_SPATK_EV:
        monDataBlockA->spAtkEV = *u8Value;
        break;

    case MON_DATA_SPDEF_EV:
        monDataBlockA->spDefEV = *u8Value;
        break;

    case MON_DATA_COOL:
        monDataBlockA->cool = *u8Value;
        break;

    case MON_DATA_BEAUTY:
        monDataBlockA->beauty = *u8Value;
        break;

    case MON_DATA_CUTE:
        monDataBlockA->cute = *u8Value;
        break;

    case MON_DATA_SMART:
        monDataBlockA->smart = *u8Value;
        break;

    case MON_DATA_TOUGH:
        monDataBlockA->tough = *u8Value;
        break;

    case MON_DATA_SHEEN:
        monDataBlockA->sheen = *u8Value;
        break;

    case MON_DATA_SINNOH_CHAMP_RIBBON:
    case MON_DATA_SINNOH_ABILITY_RIBBON:
    case MON_DATA_SINNOH_GREAT_ABILITY_RIBBON:
    case MON_DATA_SINNOH_DOUBLE_ABILITY_RIBBON:
    case MON_DATA_SINNOH_MULTI_ABILITY_RIBBON:
    case MON_DATA_SINNOH_PAIR_ABILITY_RIBBON:
    case MON_DATA_SINNOH_WORLD_ABILITY_RIBBON:
    case MON_DATA_SINNOH_ALERT_RIBBON:
    case MON_DATA_SINNOH_SHOCK_RIBBON:
    case MON_DATA_SINNOH_DOWNCAST_RIBBON:
    case MON_DATA_SINNOH_CARELESS_RIBBON:
    case MON_DATA_SINNOH_RELAX_RIBBON:
    case MON_DATA_SINNOH_SNOOZE_RIBBON:
    case MON_DATA_SINNOH_SMILE_RIBBON:
    case MON_DATA_SINNOH_GORGEOUS_RIBBON:
    case MON_DATA_SINNOH_ROYAL_RIBBON:
    case MON_DATA_SINNOH_GORGEOUS_ROYAL_RIBBON:
    case MON_DATA_SINNOH_FOOTPRINT_RIBBON:
    case MON_DATA_SINNOH_RECORD_RIBBON:
    case MON_DATA_SINNOH_HISTORY_RIBBON:
    case MON_DATA_SINNOH_LEGEND_RIBBON:
    case MON_DATA_SINNOH_RED_RIBBON:
    case MON_DATA_SINNOH_GREEN_RIBBON:
    case MON_DATA_SINNOH_BLUE_RIBBON:
    case MON_DATA_SINNOH_FESTIVAL_RIBBON:
    case MON_DATA_SINNOH_CARNIVAL_RIBBON:
    case MON_DATA_SINNOH_CLASSIC_RIBBON:
    case MON_DATA_SINNOH_PREMIER_RIBBON:
    case MON_DATA_SINNOH_RIBBON_DUMMY: {
        u64 bit = 1 << (param - MON_DATA_SINNOH_CHAMP_RIBBON);

        if (*u8Value) {
            monDataBlockA->sinnohRibbons |= bit;
        } else {
            monDataBlockA->sinnohRibbons &= (bit ^ 0xFFFFFFFF);
        }

        break;
    }

    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        monDataBlockB->moves[param - MON_DATA_MOVE1] = *u16Value;
        break;

    case MON_DATA_MOVE1_CUR_PP:
    case MON_DATA_MOVE2_CUR_PP:
    case MON_DATA_MOVE3_CUR_PP:
    case MON_DATA_MOVE4_CUR_PP:
        monDataBlockB->moveCurrentPPs[param - MON_DATA_MOVE1_CUR_PP] = *u8Value;
        break;

    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        monDataBlockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] = *u8Value;
        break;

    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;

    case MON_DATA_HP_IV:
        monDataBlockB->hpIV = *u8Value;
        break;

    case MON_DATA_ATK_IV:
        monDataBlockB->atkIV = *u8Value;
        break;

    case MON_DATA_DEF_IV:
        monDataBlockB->defIV = *u8Value;
        break;

    case MON_DATA_SPEED_IV:
        monDataBlockB->speedIV = *u8Value;
        break;

    case MON_DATA_SPATK_IV:
        monDataBlockB->spAtkIV = *u8Value;
        break;

    case MON_DATA_SPDEF_IV:
        monDataBlockB->spDefIV = *u8Value;
        break;

    case MON_DATA_IS_EGG:
        monDataBlockB->isEgg = *u8Value;
        break;

    case MON_DATA_HAS_NICKNAME:
        monDataBlockB->hasNickname = *u8Value;
        break;

    case MON_DATA_HOENN_COOL_RIBBON:
    case MON_DATA_HOENN_COOL_RIBBON_SUPER:
    case MON_DATA_HOENN_COOL_RIBBON_HYPER:
    case MON_DATA_HOENN_COOL_RIBBON_MASTER:
    case MON_DATA_HOENN_BEAUTY_RIBBON:
    case MON_DATA_HOENN_BEAUTY_RIBBON_SUPER:
    case MON_DATA_HOENN_BEAUTY_RIBBON_HYPER:
    case MON_DATA_HOENN_BEAUTY_RIBBON_MASTER:
    case MON_DATA_HOENN_CUTE_RIBBON:
    case MON_DATA_HOENN_CUTE_RIBBON_SUPER:
    case MON_DATA_HOENN_CUTE_RIBBON_HYPER:
    case MON_DATA_HOENN_CUTE_RIBBON_MASTER:
    case MON_DATA_HOENN_SMART_RIBBON:
    case MON_DATA_HOENN_SMART_RIBBON_SUPER:
    case MON_DATA_HOENN_SMART_RIBBON_HYPER:
    case MON_DATA_HOENN_SMART_RIBBON_MASTER:
    case MON_DATA_HOENN_TOUGH_RIBBON:
    case MON_DATA_HOENN_TOUGH_RIBBON_SUPER:
    case MON_DATA_HOENN_TOUGH_RIBBON_HYPER:
    case MON_DATA_HOENN_TOUGH_RIBBON_MASTER:
    case MON_DATA_HOENN_CHAMPION_RIBBON:
    case MON_DATA_HOENN_WINNING_RIBBON:
    case MON_DATA_HOENN_VICTORY_RIBBON:
    case MON_DATA_HOENN_ARTIST_RIBBON:
    case MON_DATA_HOENN_EFFORT_RIBBON:
    case MON_DATA_HOENN_MARINE_RIBBON:
    case MON_DATA_HOENN_LAND_RIBBON:
    case MON_DATA_HOENN_SKY_RIBBON:
    case MON_DATA_HOENN_COUNTRY_RIBBON:
    case MON_DATA_HOENN_NATIONAL_RIBBON:
    case MON_DATA_HOENN_EARTH_RIBBON:
    case MON_DATA_HOENN_WORLD_RIBBON: {
        u64 bit = 1 << (param - MON_DATA_HOENN_COOL_RIBBON);

        if (*u8Value) {
            monDataBlockB->hoennRibbons |= bit;
        } else {
            monDataBlockB->hoennRibbons &= (bit ^ 0xFFFFFFFF);
        }

        break;
    }

    case MON_DATA_FATEFUL_ENCOUNTER:
        monDataBlockB->fatefulEncounter = *u8Value;
        break;

    case MON_DATA_GENDER:
        monDataBlockB->gender = Pokemon_GetGenderOf(monDataBlockA->species, boxMon->personality);
        break;

    case MON_DATA_FORM:
        monDataBlockB->form = *u8Value;
        break;

    case MON_DATA_DUMMY_B_1:
        monDataBlockB->dummy_19 = *u8Value;
        break;

    case MON_DATA_DUMMY_B_2:
        monDataBlockB->dummy_1A = *u16Value;
        break;

    case MON_DATA_NICKNAME_AND_FLAG: {
        charcode_t baseName[MON_NAME_LEN + 1];

        MessageLoader_GetSpeciesName(monDataBlockA->species, HEAP_ID_SYSTEM, baseName);
        monDataBlockB->hasNickname = CharCode_Compare(baseName, u16Value);
    }
        // fall-through
    case MON_DATA_NICKNAME:
        for (int i = 0; i < NELEMS(monDataBlockC->nickname); i++) {
            monDataBlockC->nickname[i] = u16Value[i];
        }
        break;

    case MON_DATA_NICKNAME_STRBUF_AND_FLAG: {
        charcode_t baseName[MON_NAME_LEN + 1];
        charcode_t nickname[MON_NAME_LEN + 1];

        MessageLoader_GetSpeciesName(monDataBlockA->species, HEAP_ID_SYSTEM, baseName);
        Strbuf_ToChars(value, nickname, NELEMS(nickname));

        monDataBlockB->hasNickname = CharCode_Compare(baseName, nickname);
    }
        // fall-through
    case MON_DATA_NICKNAME_STRBUF:
        Strbuf_ToChars(value, monDataBlockC->nickname, NELEMS(monDataBlockC->nickname));
        break;

    case MON_DATA_MET_GAME_REGION_CODE:
        monDataBlockC->originCode = *u8Value;
        break;

    case MON_DATA_MET_GAME:
        monDataBlockC->originGame = *u8Value;
        break;

    case MON_DATA_SINNOH_SUPER_COOL_RIBBON:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_MASTER:
    case MON_DATA_CONTEST_RIBBON_DUMMY: {
        u64 bit = 1 << (param - MON_DATA_SINNOH_SUPER_COOL_RIBBON);

        if (*u8Value) {
            monDataBlockC->contestRibbons |= bit;
        } else {
            monDataBlockC->contestRibbons &= (bit ^ 0xFFFFFFFFFFFFFFFF);
        }

        break;
    }

    case MON_DATA_OTNAME:
        for (int i = 0; i < NELEMS(monDataBlockD->otName); i++) {
            monDataBlockD->otName[i] = u16Value[i];
        }
        break;

    case MON_DATA_OTNAME_STRBUF:
        Strbuf_ToChars(value, monDataBlockD->otName, NELEMS(monDataBlockD->otName));
        break;

    case MON_DATA_MET_YEAR:
        monDataBlockD->metYear = *u8Value;
        break;

    case MON_DATA_MET_MONTH:
        monDataBlockD->metMonth = *u8Value;
        break;

    case MON_DATA_MET_DAY:
        monDataBlockD->metDay = *u8Value;
        break;

    case MON_DATA_HATCH_YEAR:
        monDataBlockD->hatchYear = *u8Value;
        break;

    case MON_DATA_HATCH_MONTH:
        monDataBlockD->hatchMonth = *u8Value;
        break;

    case MON_DATA_HATCH_DAY:
        monDataBlockD->hatchDay = *u8Value;
        break;

    case MON_DATA_MET_LOCATION:
    case MON_DATA_FATEFUL_MET_LOCATION:
        if (*u16Value == 0 || sub_0201708C(*u16Value) == TRUE) {
            monDataBlockD->metLocation = *u16Value;
            monDataBlockB->fatefulMetLocation = *u16Value;
        } else {
            monDataBlockD->metLocation = FATEFUL_ENCOUNTER_LOCATION;
            monDataBlockB->fatefulMetLocation = *u16Value;
        }
        break;

    case MON_DATA_HATCH_LOCATION:
    case MON_DATA_FATEFUL_HATCH_LOCATION:
        if (*u16Value == 0 || sub_0201708C(*u16Value) == TRUE) {
            monDataBlockD->hatchLocation = *u16Value;
            monDataBlockB->fatefulHatchLocation = *u16Value;
        } else {
            monDataBlockD->hatchLocation = FATEFUL_ENCOUNTER_LOCATION;
            monDataBlockB->fatefulHatchLocation = *u16Value;
        }
        break;

    case MON_DATA_POKERUS:
        monDataBlockD->pokerus = *u8Value;
        break;

    case MON_DATA_POKEBALL:
        monDataBlockD->pokeball = *u8Value;
        break;

    case MON_DATA_MET_LEVEL:
        monDataBlockD->metLevel = *u8Value;
        break;

    case MON_DATA_OT_GENDER:
        monDataBlockD->otGender = *u8Value;
        break;

    case MON_DATA_MET_TERRAIN:
        monDataBlockD->metTerrain = *u8Value;
        break;

    case MON_DATA_DUMMY_D_1:
        monDataBlockD->dummy_1E = *u16Value;
        break;

    case MON_DATA_COMBINED_IVS:
        monDataBlockB->hpIV = (*u32Value >> 0) & 0x1F;
        monDataBlockB->atkIV = (*u32Value >> 5) & 0x1F;
        monDataBlockB->defIV = (*u32Value >> 10) & 0x1F;
        monDataBlockB->speedIV = (*u32Value >> 15) & 0x1F;
        monDataBlockB->spAtkIV = (*u32Value >> 20) & 0x1F;
        monDataBlockB->spDefIV = (*u32Value >> 25) & 0x1F;
        break;

    case MON_DATA_NIDORAN_HAS_NICKNAME:
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
        break;

    case MON_DATA_SPECIES_NAME: {
        Strbuf *strbuf = MessageUtil_SpeciesName(monDataBlockA->species, HEAP_ID_SYSTEM);

        Strbuf_ToChars(strbuf, monDataBlockC->nickname, NELEMS(monDataBlockC->nickname));
        Strbuf_Free(strbuf);

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
    case MON_DATA_CURRENT_HP:
        if (mon->party.hp + value > mon->party.maxHP) {
            mon->party.hp = mon->party.maxHP;
        } else {
            mon->party.hp += value;
        }
        break;
    case MON_DATA_STATUS_CONDITION:
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
    PokemonDataBlockA *monDataBlockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *monDataBlockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *monDataBlockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *monDataBlockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    // TODO consts for various maximum values?
    switch (param) {
    case MON_DATA_EXP:
        if (monDataBlockA->exp + value > Pokemon_GetSpeciesBaseExpAt(monDataBlockA->species, 100)) {
            monDataBlockA->exp = Pokemon_GetSpeciesBaseExpAt(monDataBlockA->species, 100);
        } else {
            monDataBlockA->exp += value;
        }
        break;
    case MON_DATA_FRIENDSHIP:
        int newValue;

        newValue = monDataBlockA->friendship;

        if (newValue + value > 255) {
            newValue = 255;
        }

        if (newValue + value < 0) {
            newValue = 0;
        } else {
            newValue += value;
        }

        monDataBlockA->friendship = newValue;
        break;
    case MON_DATA_HP_EV:
        monDataBlockA->hpEV += value;
        break;
    case MON_DATA_ATK_EV:
        monDataBlockA->atkEV += value;
        break;
    case MON_DATA_DEF_EV:
        monDataBlockA->defEV += value;
        break;
    case MON_DATA_SPEED_EV:
        monDataBlockA->speedEV += value;
        break;
    case MON_DATA_SPATK_EV:
        monDataBlockA->spAtkEV += value;
        break;
    case MON_DATA_SPDEF_EV:
        monDataBlockA->spDefEV += value;
        break;
    case MON_DATA_COOL:
        if (monDataBlockA->cool + value > 255) {
            monDataBlockA->cool = 255;
        } else {
            monDataBlockA->cool += value;
        }
        break;
    case MON_DATA_BEAUTY:
        if (monDataBlockA->beauty + value > 255) {
            monDataBlockA->beauty = 255;
        } else {
            monDataBlockA->beauty += value;
        }
        break;
    case MON_DATA_CUTE:
        if (monDataBlockA->cute + value > 255) {
            monDataBlockA->cute = 255;
        } else {
            monDataBlockA->cute += value;
        }
        break;
    case MON_DATA_SMART:
        if (monDataBlockA->smart + value > 255) {
            monDataBlockA->smart = 255;
        } else {
            monDataBlockA->smart += value;
        }
        break;
    case MON_DATA_TOUGH:
        if (monDataBlockA->tough + value > 255) {
            monDataBlockA->tough = 255;
        } else {
            monDataBlockA->tough += value;
        }
        break;
    case MON_DATA_SHEEN:
        if (monDataBlockA->sheen + value > 255) {
            monDataBlockA->sheen = 255;
        } else {
            monDataBlockA->sheen += value;
        }
        break;
    case MON_DATA_MOVE1_CUR_PP:
    case MON_DATA_MOVE2_CUR_PP:
    case MON_DATA_MOVE3_CUR_PP:
    case MON_DATA_MOVE4_CUR_PP:
        if (monDataBlockB->moveCurrentPPs[param - MON_DATA_MOVE1_CUR_PP] + value > MoveTable_CalcMaxPP(monDataBlockB->moves[param - MON_DATA_MOVE1_CUR_PP], monDataBlockB->movePPUps[param - MON_DATA_MOVE1_CUR_PP])) {
            monDataBlockB->moveCurrentPPs[param - MON_DATA_MOVE1_CUR_PP] = MoveTable_CalcMaxPP(monDataBlockB->moves[param - MON_DATA_MOVE1_CUR_PP], monDataBlockB->movePPUps[param - MON_DATA_MOVE1_CUR_PP]);
        } else {
            monDataBlockB->moveCurrentPPs[param - MON_DATA_MOVE1_CUR_PP] += value;
        }
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        if (monDataBlockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] + value > 3) {
            monDataBlockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] = 3;
        } else {
            monDataBlockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] += value;
        }
        break;
    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;
    case MON_DATA_HP_IV:
        if (monDataBlockB->hpIV + value > 31) {
            monDataBlockB->hpIV = 31;
        } else {
            monDataBlockB->hpIV += value;
        }
        break;
    case MON_DATA_ATK_IV:
        if (monDataBlockB->atkIV + value > 31) {
            monDataBlockB->atkIV = 31;
        } else {
            monDataBlockB->atkIV += value;
        }
        break;
    case MON_DATA_DEF_IV:
        if (monDataBlockB->defIV + value > 31) {
            monDataBlockB->defIV = 31;
        } else {
            monDataBlockB->defIV += value;
        }
        break;
    case MON_DATA_SPEED_IV:
        if (monDataBlockB->speedIV + value > 31) {
            monDataBlockB->speedIV = 31;
        } else {
            monDataBlockB->speedIV += value;
        }
        break;
    case MON_DATA_SPATK_IV:
        if (monDataBlockB->spAtkIV + value > 31) {
            monDataBlockB->spAtkIV = 31;
        } else {
            monDataBlockB->spAtkIV += value;
        }
        break;
    case MON_DATA_SPDEF_IV:
        if (monDataBlockB->spDefIV + value > 31) {
            monDataBlockB->spDefIV = 31;
        } else {
            monDataBlockB->spDefIV += value;
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
    case MON_DATA_MARKS:
    case MON_DATA_LANGUAGE:
    case MON_DATA_SINNOH_CHAMP_RIBBON:
    case MON_DATA_SINNOH_ABILITY_RIBBON:
    case MON_DATA_SINNOH_GREAT_ABILITY_RIBBON:
    case MON_DATA_SINNOH_DOUBLE_ABILITY_RIBBON:
    case MON_DATA_SINNOH_MULTI_ABILITY_RIBBON:
    case MON_DATA_SINNOH_PAIR_ABILITY_RIBBON:
    case MON_DATA_SINNOH_WORLD_ABILITY_RIBBON:
    case MON_DATA_SINNOH_ALERT_RIBBON:
    case MON_DATA_SINNOH_SHOCK_RIBBON:
    case MON_DATA_SINNOH_DOWNCAST_RIBBON:
    case MON_DATA_SINNOH_CARELESS_RIBBON:
    case MON_DATA_SINNOH_RELAX_RIBBON:
    case MON_DATA_SINNOH_SNOOZE_RIBBON:
    case MON_DATA_SINNOH_SMILE_RIBBON:
    case MON_DATA_SINNOH_GORGEOUS_RIBBON:
    case MON_DATA_SINNOH_ROYAL_RIBBON:
    case MON_DATA_SINNOH_GORGEOUS_ROYAL_RIBBON:
    case MON_DATA_SINNOH_FOOTPRINT_RIBBON:
    case MON_DATA_SINNOH_RECORD_RIBBON:
    case MON_DATA_SINNOH_HISTORY_RIBBON:
    case MON_DATA_SINNOH_LEGEND_RIBBON:
    case MON_DATA_SINNOH_RED_RIBBON:
    case MON_DATA_SINNOH_GREEN_RIBBON:
    case MON_DATA_SINNOH_BLUE_RIBBON:
    case MON_DATA_SINNOH_FESTIVAL_RIBBON:
    case MON_DATA_SINNOH_CARNIVAL_RIBBON:
    case MON_DATA_SINNOH_CLASSIC_RIBBON:
    case MON_DATA_SINNOH_PREMIER_RIBBON:
    case MON_DATA_SINNOH_RIBBON_DUMMY:
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
    case MON_DATA_IS_EGG:
    case MON_DATA_HAS_NICKNAME:
    case MON_DATA_HOENN_COOL_RIBBON:
    case MON_DATA_HOENN_COOL_RIBBON_SUPER:
    case MON_DATA_HOENN_COOL_RIBBON_HYPER:
    case MON_DATA_HOENN_COOL_RIBBON_MASTER:
    case MON_DATA_HOENN_BEAUTY_RIBBON:
    case MON_DATA_HOENN_BEAUTY_RIBBON_SUPER:
    case MON_DATA_HOENN_BEAUTY_RIBBON_HYPER:
    case MON_DATA_HOENN_BEAUTY_RIBBON_MASTER:
    case MON_DATA_HOENN_CUTE_RIBBON:
    case MON_DATA_HOENN_CUTE_RIBBON_SUPER:
    case MON_DATA_HOENN_CUTE_RIBBON_HYPER:
    case MON_DATA_HOENN_CUTE_RIBBON_MASTER:
    case MON_DATA_HOENN_SMART_RIBBON:
    case MON_DATA_HOENN_SMART_RIBBON_SUPER:
    case MON_DATA_HOENN_SMART_RIBBON_HYPER:
    case MON_DATA_HOENN_SMART_RIBBON_MASTER:
    case MON_DATA_HOENN_TOUGH_RIBBON:
    case MON_DATA_HOENN_TOUGH_RIBBON_SUPER:
    case MON_DATA_HOENN_TOUGH_RIBBON_HYPER:
    case MON_DATA_HOENN_TOUGH_RIBBON_MASTER:
    case MON_DATA_HOENN_CHAMPION_RIBBON:
    case MON_DATA_HOENN_WINNING_RIBBON:
    case MON_DATA_HOENN_VICTORY_RIBBON:
    case MON_DATA_HOENN_ARTIST_RIBBON:
    case MON_DATA_HOENN_EFFORT_RIBBON:
    case MON_DATA_HOENN_MARINE_RIBBON:
    case MON_DATA_HOENN_LAND_RIBBON:
    case MON_DATA_HOENN_SKY_RIBBON:
    case MON_DATA_HOENN_COUNTRY_RIBBON:
    case MON_DATA_HOENN_NATIONAL_RIBBON:
    case MON_DATA_HOENN_EARTH_RIBBON:
    case MON_DATA_HOENN_WORLD_RIBBON:
    case MON_DATA_FATEFUL_ENCOUNTER:
    case MON_DATA_GENDER:
    case MON_DATA_FORM:
    case MON_DATA_DUMMY_B_1:
    case MON_DATA_DUMMY_B_2:
    case MON_DATA_NICKNAME:
    case MON_DATA_NICKNAME_STRBUF:
    case MON_DATA_NICKNAME_STRBUF_AND_FLAG:
    case MON_DATA_MET_GAME_REGION_CODE:
    case MON_DATA_MET_GAME:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_COOL_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_CUTE_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_SMART_RIBBON_MASTER:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_GREAT:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_ULTRA:
    case MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_MASTER:
    case MON_DATA_CONTEST_RIBBON_DUMMY:
    case MON_DATA_OTNAME:
    case MON_DATA_OTNAME_STRBUF:
    case MON_DATA_MET_YEAR:
    case MON_DATA_MET_MONTH:
    case MON_DATA_MET_DAY:
    case MON_DATA_HATCH_YEAR:
    case MON_DATA_HATCH_MONTH:
    case MON_DATA_HATCH_DAY:
    case MON_DATA_MET_LOCATION:
    case MON_DATA_HATCH_LOCATION:
    case MON_DATA_POKERUS:
    case MON_DATA_POKEBALL:
    case MON_DATA_MET_LEVEL:
    case MON_DATA_OT_GENDER:
    case MON_DATA_MET_TERRAIN:
    case MON_DATA_DUMMY_D_1:
    case MON_DATA_COMBINED_IVS:
    case MON_DATA_NIDORAN_HAS_NICKNAME:
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
    u16 monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u8 monLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    u32 monCurrentLevelExp = Pokemon_GetSpeciesBaseExpAt(monSpecies, monLevel);
    u32 monNextLevelExp = Pokemon_GetSpeciesBaseExpAt(monSpecies, monLevel + 1);
    u32 monExp = Pokemon_GetValue(mon, MON_DATA_EXP, NULL);

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
    u16 monSpecies = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    u16 monNextlevel = BoxPokemon_GetLevel(boxMon) + 1;
    u32 monExp = BoxPokemon_GetValue(boxMon, MON_DATA_EXP, NULL);

    return Pokemon_GetSpeciesBaseExpAt(monSpecies, monNextlevel) - monExp;
}

u32 Pokemon_GetCurrentLevelBaseExp(Pokemon *mon)
{
    return Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL));
}

u32 Pokemon_GetSpeciesBaseExpAt(int monSpecies, int monLevel)
{
    return Pokemon_GetExpRateBaseExpAt(SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_EXP_RATE), monLevel);
}

static void Pokemon_LoadExperienceTableOf(enum ExpRate monExpRate, u32 *monExpTable)
{
    // TODO const for table size
    GF_ASSERT(monExpRate < 8);
    NARC_ReadWholeMemberByIndexPair(monExpTable, NARC_INDEX_POKETOOL__PERSONAL__PL_GROWTBL, monExpRate);
}

static u32 Pokemon_GetExpRateBaseExpAt(enum ExpRate monExpRate, int monLevel)
{
    // TODO const for table size
    GF_ASSERT(monExpRate < 8);
    GF_ASSERT(monLevel <= 101);

    u32 *expTable = Heap_Alloc(HEAP_ID_SYSTEM, 101 * 4);
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
    int monSpecies = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    u32 monExp = BoxPokemon_GetValue(boxMon, MON_DATA_EXP, NULL);

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
    // TODO const for table size
    static u32 monExpTable[101];

    enum ExpRate monExpRate = SpeciesData_GetValue(speciesData, SPECIES_DATA_EXP_RATE);
    Pokemon_LoadExperienceTableOf(monExpRate, monExpTable);

    int i;
    for (i = 1; i < 101; i++) {
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
    u32 monPersonality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    return Pokemon_GetNatureOf(monPersonality);
}

u8 Pokemon_GetNatureOf(u32 monPersonality)
{
    // TODO const for nature count/enum for natures?
    return (u8)(monPersonality % 25);
}

// TODO enum here?
static const s8 sNatureStatAffinities[][5] = {
    { 0, 0, 0, 0, 0 },
    { 1, -1, 0, 0, 0 },
    { 1, 0, -1, 0, 0 },
    { 1, 0, 0, -1, 0 },
    { 1, 0, 0, 0, -1 },
    { -1, 1, 0, 0, 0 },
    { 0, 0, 0, 0, 0 },
    { 0, 1, -1, 0, 0 },
    { 0, 1, 0, -1, 0 },
    { 0, 1, 0, 0, -1 },
    { -1, 0, 1, 0, 0 },
    { 0, -1, 1, 0, 0 },
    { 0, 0, 0, 0, 0 },
    { 0, 0, 1, -1, 0 },
    { 0, 0, 1, 0, -1 },
    { -1, 0, 0, 1, 0 },
    { 0, -1, 0, 1, 0 },
    { 0, 0, -1, 1, 0 },
    { 0, 0, 0, 0, 0 },
    { 0, 0, 0, 1, -1 },
    { -1, 0, 0, 0, 1 },
    { 0, -1, 0, 0, 1 },
    { 0, 0, -1, 0, 1 },
    { 0, 0, 0, -1, 1 },
    { 0, 0, 0, 0, 0 }
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

    u16 monSpeciesEgg = Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL);

    if (monSpeciesEgg == SPECIES_NONE || monSpeciesEgg == SPECIES_EGG) {
        return;
    }

    u16 monHeldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    u8 itemHoldEffect = Item_LoadParam(monHeldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM);
    u8 v4 = 0;
    s16 monFriendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (monFriendship >= 100) {
        v4++;
    }

    if (monFriendship >= 200) {
        v4++;
    }

    s8 v3 = Unk_020F05A0[param1][v4];

    if (v3 > 0 && Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
        v3++;
    }

    if (v3 > 0 && Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == param2) {
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

    if (monFriendship > 255) {
        monFriendship = 255;
    }

    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &monFriendship);
}

u8 Pokemon_GetGender(Pokemon *mon)
{
    return BoxPokemon_GetGender(&mon->box);
}

u8 BoxPokemon_GetGender(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    u16 monSpecies = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    u32 monPersonality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);

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
    u32 monOTID = BoxPokemon_GetValue(boxMon, MON_DATA_OT_ID, NULL);
    u32 monPersonality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);

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

    u16 monSpeciesEgg = BoxPokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL);
    u8 monGender = BoxPokemon_GetGender(mon);
    u8 monShininess = BoxPokemon_IsShiny(mon);
    u32 monPersonality = BoxPokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);

    u8 monForm;
    if (monSpeciesEgg == SPECIES_EGG) {
        if (BoxPokemon_GetValue(mon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            monForm = 1;
        } else {
            monForm = 0;
        }
    } else {
        monForm = BoxPokemon_GetValue(mon, MON_DATA_FORM, NULL);
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
    // TODO enum values?
    switch (monSpecies) {
    case SPECIES_BURMY:
        if (monForm > 2) {
            monForm = 0;
        }
        break;
    case SPECIES_WORMADAM:

        if (monForm > 2) {
            monForm = 0;
        }
        break;
    case SPECIES_SHELLOS:
        if (monForm > 1) {
            monForm = 0;
        }
        break;
    case SPECIES_GASTRODON:
        if (monForm > 1) {
            monForm = 0;
        }
        break;
    case SPECIES_CHERRIM:
        if (monForm > 1) {
            monForm = 0;
        }
        break;
    case SPECIES_ARCEUS:
        if (monForm > 17) {
            monForm = 0;
        }
        break;
    case SPECIES_CASTFORM:
        if (monForm > 3) {
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
        if (monForm > 1) {
            monForm = 0;
        }
        break;
    case SPECIES_SHAYMIN:
        if (monForm > 1) {
            monForm = 0;
        }
        break;
    case SPECIES_ROTOM:
        if (monForm > 5) {
            monForm = 0;
        }
        break;
    case SPECIES_GIRATINA:
        if (monForm > 1) {
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
    u16 species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EGG, NULL);
    u8 gender = BoxPokemon_GetGender(boxMon);
    u32 personality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);

    u8 form;
    if (species == SPECIES_EGG) {
        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            form = 1;
        } else {
            form = 0;
        }
    } else {
        form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
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
    return BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
}

BoxPokemon *Pokemon_GetBoxPokemon(Pokemon *mon)
{
    return &mon->box;
}

BOOL Pokemon_ShouldLevelUp(Pokemon *mon)
{
    u16 monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u8 monNextLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) + 1;
    u32 monExp = Pokemon_GetValue(mon, MON_DATA_EXP, NULL);
    int monExpRate = SpeciesData_GetSpeciesValue(monSpecies, SPECIES_DATA_EXP_RATE);
    // TODO const value?
    u32 maxExp = Pokemon_GetExpRateBaseExpAt(monExpRate, 100);

    if (monExp > maxExp) {
        monExp = maxExp;
        Pokemon_SetValue(mon, MON_DATA_EXP, &monExp);
    }

    // TODO const value?
    if (monNextLevel > 100) {
        return FALSE;
    }

    maxExp = Pokemon_GetExpRateBaseExpAt(monExpRate, monNextLevel);

    if (monExp >= maxExp) {
        Pokemon_SetValue(mon, MON_DATA_LEVEL, &monNextLevel);
        return TRUE;
    }

    return FALSE;
}

u16 Pokemon_GetEvolutionTargetSpecies(Party *party, Pokemon *mon, u8 evoClass, u16 evoParam, int *evoTypeResult)
{
    u16 targetSpecies = SPECIES_NONE;

    u16 monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u16 monHeldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    u32 monPersonality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
    u8 monBeauty = Pokemon_GetValue(mon, MON_DATA_BEAUTY, NULL);

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
        u8 monLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
        monFriendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

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
                    if (Pokemon_GetValue(mon, MON_DATA_ATK, NULL) > Pokemon_GetValue(mon, MON_DATA_DEF, NULL)) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_ATK_GT_DEF;
                    }
                }
                break;

            case EVO_LEVEL_ATK_EQ_DEF:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (Pokemon_GetValue(mon, MON_DATA_ATK, NULL) == Pokemon_GetValue(mon, MON_DATA_DEF, NULL)) {
                        targetSpecies = speciesEvolutions[i].targetSpecies;
                        *evoTypeResult = EVO_LEVEL_ATK_EQ_DEF;
                    }
                }
                break;

            case EVO_LEVEL_ATK_LT_DEF:
                if (speciesEvolutions[i].param <= monLevel) {
                    if (Pokemon_GetValue(mon, MON_DATA_ATK, NULL) < Pokemon_GetValue(mon, MON_DATA_DEF, NULL)) {
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
                if (Pokemon_GetValue(mon, MON_DATA_GENDER, NULL) == GENDER_MALE && speciesEvolutions[i].param <= monLevel) {
                    targetSpecies = speciesEvolutions[i].targetSpecies;
                    *evoTypeResult = EVO_LEVEL_MALE;
                }
                break;

            case EVO_LEVEL_FEMALE:
                if (Pokemon_GetValue(mon, MON_DATA_GENDER, NULL) == GENDER_FEMALE && speciesEvolutions[i].param <= monLevel) {
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
                && Pokemon_GetValue(mon, MON_DATA_GENDER, NULL) == GENDER_MALE
                && speciesEvolutions[i].param == evoParam) {
                targetSpecies = speciesEvolutions[i].targetSpecies;
                *evoTypeResult = EVO_NONE;
                break;
            }

            if (speciesEvolutions[i].method == EVO_USE_ITEM_FEMALE
                && Pokemon_GetValue(mon, MON_DATA_GENDER, NULL) == GENDER_FEMALE
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

u16 sub_02076F84(const u16 monSpecies)
{
    u16 result = 0;
    GF_ASSERT(NATIONAL_DEX_COUNT + 1 > monSpecies);

    FSFile file;
    FS_InitFile(&file);
    FS_OpenFile(&file, "poketool/personal/pms.narc");
    FS_SeekFile(&file, monSpecies * 2, FS_SEEK_SET);
    FS_ReadFile(&file, &result, 2);
    FS_CloseFile(&file);

    return result;
}

u16 sub_02076FD4(const u16 monSpecies)
{
    switch (monSpecies) {
    case SPECIES_WOBBUFFET:
    case SPECIES_MARILL:
    case SPECIES_MR_MIME:
    case SPECIES_SUDOWOODO:
    case SPECIES_SNORLAX:
    case SPECIES_MANTINE:
    case SPECIES_ROSELIA:
    case SPECIES_CHANSEY:
    case SPECIES_CHIMECHO:
        return monSpecies;
        break;
    }

    return sub_02076F84(monSpecies);
}

static void BoxPokemon_SetDefaultMoves(BoxPokemon *boxMon)
{
    BOOL reencrypt; // must pre-declare to match
    u16 *monLevelUpMoves = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));
    reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    u16 monSpecies = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int monForm = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
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
        if ((slotMove = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + i, NULL)) == MOVE_NONE) {
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
        moveIDs[i] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE2 + i, NULL);
        movePPs[i] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE2_CUR_PP + i, NULL);
        movePPUps[i] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE2_PP_UPS + i, NULL);
    }

    moveIDs[LEARNED_MOVES_MAX - 1] = moveID;
    movePPs[LEARNED_MOVES_MAX - 1] = MoveTable_LoadParam(moveID, MOVEATTRIBUTE_PP);
    movePPUps[LEARNED_MOVES_MAX - 1] = 0;

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1 + i, &moveIDs[i]);
        BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_CUR_PP + i, &movePPs[i]);
        BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_PP_UPS + i, &movePPUps[i]);
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

void Pokemon_ResetMoveSlot(Pokemon *mon, u16 moveID, u8 moveSlot)
{
    Pokemon_SetMoveSlot(mon, moveID, moveSlot);

    u32 moveMaxPP, movePPUps = 0;
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &movePPUps);

    moveMaxPP = MoveTable_CalcMaxPP(moveID, 0);
    Pokemon_SetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, &moveMaxPP);
}

void Pokemon_SetMoveSlot(Pokemon *mon, u16 moveID, u8 moveSlot)
{
    BoxPokemon_SetMoveSlot(&mon->box, moveID, moveSlot);
}

static void BoxPokemon_SetMoveSlot(BoxPokemon *boxMon, u16 moveID, u8 moveSlot)
{
    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1 + moveSlot, &moveID);

    u8 movePPUps = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);
    u8 moveMaxPP = MoveTable_CalcMaxPP(moveID, movePPUps);

    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot, &moveMaxPP);
}

u16 Pokemon_LevelUpMove(Pokemon *mon, int *index, u16 *moveID)
{
    u16 result = MOVE_NONE;
    u16 *monLevelUpMoves = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));
    u16 monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    int monForm = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    u8 monLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

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

    moveIDs[0] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + moveSlot1, NULL);
    movePPs[0] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot1, NULL);
    movePPUps[0] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot1, NULL);
    moveIDs[1] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + moveSlot2, NULL);
    movePPs[1] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot2, NULL);
    movePPUps[1] = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot2, NULL);

    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1 + moveSlot1, &moveIDs[1]);
    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot1, &movePPs[1]);
    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot1, &movePPUps[1]);
    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1 + moveSlot2, &moveIDs[0]);
    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot2, &movePPs[0]);
    BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot2, &movePPUps[0]);
}

void Pokemon_ClearMoveSlot(Pokemon *mon, u32 moveSlot)
{
    u16 moveID;
    u8 movePP;
    u8 movePPUps;

    for (u32 i = moveSlot; i < 3; i++) {
        moveID = Pokemon_GetValue(mon, MON_DATA_MOVE1 + i + 1, NULL);
        movePP = Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + i + 1, NULL);
        movePPUps = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + i + 1, NULL);

        Pokemon_SetValue(mon, MON_DATA_MOVE1 + i, &moveID);
        Pokemon_SetValue(mon, MON_DATA_MOVE1_CUR_PP + i, &movePP);
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + i, &movePPUps);
    }

    moveID = 0;
    movePP = 0;
    movePPUps = 0;

    Pokemon_SetValue(mon, MON_DATA_MOVE4, &moveID);
    Pokemon_SetValue(mon, MON_DATA_MOVE4_CUR_PP, &movePP);
    Pokemon_SetValue(mon, MON_DATA_MOVE4_PP_UPS, &movePPUps);
}

static BOOL Pokemon_HasMove(Pokemon *mon, u16 moveID)
{
    int i;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL) == moveID) {
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

    Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &zero);
    Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &zero);
    Pokemon_SetValue(mon, MON_DATA_MAX_HP, &zero);

    Mail *mail = Mail_New(HEAP_ID_SYSTEM);
    Pokemon_SetValue(mon, MON_DATA_MAIL, mail);
    Heap_Free(mail);

    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE_ID, &zero);

    BallCapsule v2;
    MI_CpuClearFast(&v2, sizeof(BallCapsule));
    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE, &v2);

    Pokemon_CalcLevelAndStats(mon);
}

u8 Party_GetMaxLevel(Party *party)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    u8 result = 1;

    for (int i = 0; i < currentPartyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            u8 monLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

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

    if (sinnohDexNumber <= LOCAL_DEX_COUNT) {
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

// TODO enums
s8 Pokemon_GetFlavorAffinity(Pokemon *mon, int flavor)
{
    return BoxPokemon_GetFlavorAffinity(&mon->box, flavor);
}

// TODO enums
static s8 BoxPokemon_GetFlavorAffinity(BoxPokemon *boxMon, int flavor)
{
    return Pokemon_GetFlavorAffinityOf(BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL), flavor);
}

// TODO enums
s8 Pokemon_GetFlavorAffinityOf(u32 monPersonality, int flavor)
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

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
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

            Pokemon_SetValue(mon, MON_DATA_POKERUS, &monPokerus);
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

                if (Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL)) {
                    result |= v1;
                }
            }

            partySlot++;
            v1 = v1 << 1;
            param1 = param1 >> 1;
        } while (param1 != 0);
    } else {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

        if (Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL)) {
            result++;
        }
    }

    return result;
}

void Party_UpdatePokerusStatus(Party *party, s32 param1)
{
    int currentPartyCount = Party_GetCurrentCount(party);

    for (int i = 0; i < currentPartyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)) {
            u8 monPokerus = Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL);

            if (monPokerus & 0xf) {
                if (((monPokerus & 0xf) < param1) || (param1 > 4)) {
                    monPokerus &= 0xf0;
                } else {
                    monPokerus -= param1;
                }

                if (monPokerus == 0) {
                    monPokerus = 0x10;
                }

                Pokemon_SetValue(mon, MON_DATA_POKERUS, &monPokerus);
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

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)) {
                u8 monPokerus = Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL);

                if (monPokerus & 0xf) {
                    if (i != 0) {
                        mon = Party_GetPokemonBySlotIndex(party, i - 1);

                        if ((Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            Pokemon_SetValue(mon, MON_DATA_POKERUS, &monPokerus);
                        }
                    }

                    if (i < currentPartyCount - 1) {
                        mon = Party_GetPokemonBySlotIndex(party, i + 1);

                        if ((Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            Pokemon_SetValue(mon, MON_DATA_POKERUS, &monPokerus);
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
    return (BoxPokemon_GetValue(boxMon, MON_DATA_POKERUS, NULL) & 0xf) != 0;
}

BOOL Pokemon_HasCuredPokerus(Pokemon *mon)
{
    return BoxPokemonHasCuredPokerus(&mon->box);
}

static BOOL BoxPokemonHasCuredPokerus(BoxPokemon *boxMon)
{
    u8 monPokerus = BoxPokemon_GetValue(boxMon, MON_DATA_POKERUS, NULL);

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
    int monSpecies = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int monAbility = BoxPokemon_GetValue(boxMon, MON_DATA_ABILITY, NULL);
    int monHeldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);

    if (monSpecies == SPECIES_ARCEUS && monAbility == ABILITY_MULTITYPE) {
        int monForm = Pokemon_GetArceusTypeOf(Item_LoadParam(monHeldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM));
        BoxPokemon_SetValue(boxMon, MON_DATA_FORM, &monForm);
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
    int species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);

    if (species == SPECIES_GIRATINA) {
        int form = (item == ITEM_GRISEOUS_ORB) ? GIRATINA_FORM_ORIGIN : GIRATINA_FORM_ALTERED;

        BoxPokemon_SetValue(boxMon, MON_DATA_FORM, &form);
        BoxPokemon_CalcAbility(boxMon);

        return form;
    }

    return -1;
}

void Pokemon_SetGiratinaOriginForm(Pokemon *mon)
{
    int form = GIRATINA_FORM_ORIGIN;

    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) == SPECIES_GIRATINA) {
        BoxPokemon_SetValue(&mon->box, MON_DATA_FORM, &form);
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
    int species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_SHAYMIN) {
        GF_ASSERT(form <= SHAYMIN_FORM_COUNT - 1);

        BoxPokemon_SetValue(boxMon, MON_DATA_FORM, &form);
        BoxPokemon_CalcAbility(boxMon);
    }
}

BOOL Pokemon_CanShayminSkyForm(Pokemon *mon)
{
    u32 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u32 monForm = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    u32 condition = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
    u32 currentHP = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
    u32 fatefulEncounter = Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    RTCTime rtcTime;
    GetCurrentTime(&rtcTime);

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
        int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        int form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

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
    int monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    if (monSpecies != SPECIES_ROTOM) {
        return FALSE;
    }

    int currentMonForm = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

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
        int moveID = Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL);

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
            if (Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL) == MOVE_NONE) {
                Pokemon_ResetMoveSlot(mon, newFormMoveID, i);
                break;
            }
        }

        if (i == 4) {
            Pokemon_ResetMoveSlot(mon, newFormMoveID, moveSlot);
        }
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE1, NULL) == MOVE_NONE) {
        Pokemon_ResetMoveSlot(mon, MOVE_THUNDER_SHOCK, 0);
    }

    Pokemon_SetValue(mon, MON_DATA_FORM, &form);
    Pokemon_CalcAbility(mon);
    Pokemon_CalcLevelAndStats(mon);

    return TRUE;
}

/* TODO:
    This function is annoying.
    It's used in exactly one other file (`unk_020997B8.c`), so it has to be public.
    The data structure of the NARC uses bitmasks that should probably be a struct,
    and calling code uses sentinel values that should probably be consts,
    but then we'd be polluting namespace for the sake of two .c files.
    Could define in each .c file, but then there's risk of these becoming desynced (This is the worse option imo).
*/
void Pokemon_LoadLevelUpMovesOf(int monSpecies, int monForm, u16 *monLevelUpMoves)
{
    monSpecies = Pokemon_GetFormNarcIndex(monSpecies, monForm);
    NARC_ReadWholeMemberByIndexPair(monLevelUpMoves, NARC_INDEX_POKETOOL__PERSONAL__WOTBL, monSpecies);
}

void Pokemon_PlayCry(ChatotCry *chatotCry, enum PokemonCryMod cryMod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID)
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

void Pokemon_PlayDelayedCry(ChatotCry *chatotCry, enum PokemonCryMod cryMod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID, u8 delay)
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

BOOL Pokemon_IsEligibleForAction(Pokemon *mon)
{
    int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    int form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    return Sound_PlayPokemonCry(species, form);
}

void Pokemon_SetCatchData(Pokemon *mon, TrainerInfo *trainerInfo, int monPokeball, int metLocation, int metTerrain, enum HeapId heapID)
{
    InitializeBoxPokemonAfterCapture(&mon->box, trainerInfo, monPokeball, metLocation, metTerrain, heapID);

    if (monPokeball == ITEM_HEAL_BALL) {
        int monMaxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &monMaxHP);

        monMaxHP = 0;
        Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &monMaxHP);
    }
}

static void InitializeBoxPokemonAfterCapture(BoxPokemon *boxMon, TrainerInfo *trainer, int monPokeball, int metLocation, int metTerrain, enum HeapId heapID)
{
    UpdateBoxMonStatusAndTrainerInfo(boxMon, trainer, 0, metLocation, heapID);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_GAME, &gGameVersion);
    BoxPokemon_SetValue(boxMon, MON_DATA_POKEBALL, &monPokeball);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_TERRAIN, &metTerrain);
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
    u16 monSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u16 monForm = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    u16 monItem1 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_HELD_ITEM_COMMON);
    u16 monItem2 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_HELD_ITEM_RARE);

    if (monItem1 == monItem2 && monItem1 != ITEM_NONE) {
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &monItem1);
        return;
    }

    // Without CompoundEyes (itemRates == 0) 45% no item, 50% common item, 5% rare item
    // With CompoundEyes (itemRates == 1) 20% no item, 60% common item, 20% rare item
    if (rand < sHeldItemChance[itemRates][0]) {
        return;
    } else if (rand < sHeldItemChance[itemRates][1]) {
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &monItem1);
    } else {
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &monItem2);
    }
}

BOOL Pokemon_CanLearnTM(Pokemon *mon, u8 tmID)
{
    return CanBoxPokemonLearnTM(&mon->box, tmID);
}

static BOOL CanBoxPokemonLearnTM(BoxPokemon *boxMon, u8 tmID)
{
    u16 monSpeciesEgg = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EGG, NULL);
    int monForm = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

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
    int monSpecies = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    u32 monPersonality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);
    int monForm = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
    int monAbility1 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_ABILITY_1);
    int monAbility2 = SpeciesData_GetFormValue(monSpecies, monForm, SPECIES_DATA_ABILITY_2);

    // TODO enum value?
    if (monAbility2 != ABILITY_NONE) {
        if (monPersonality & 1) {
            BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, &monAbility2);
        } else {
            BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, &monAbility1);
        }
    } else {
        BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, &monAbility1);
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

static const u16 Unk_020F05BE[18] = {
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

BOOL sub_02078804(u16 param0)
{
    for (u32 i = 0; i < NELEMS(Unk_020F05BE); i++) {
        if (param0 == Unk_020F05BE[i]) {
            return 1;
        }
    }

    return 0;
}

u16 sub_02078824(u8 index)
{
    if (index >= NELEMS(Unk_020F05BE)) {
        index = 0;
    }

    return Unk_020F05BE[index];
}

BOOL sub_02078838(Pokemon *mon)
{
    u16 monSpecies = (u16)Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    return sub_02078804(monSpecies);
}

BOOL sub_0207884C(BoxPokemon *boxMon, TrainerInfo *param1, int heapID)
{
    u32 v0 = TrainerInfo_ID(param1);
    u32 monOTID = BoxPokemon_GetValue(boxMon, MON_DATA_OT_ID, NULL);
    u32 v2 = TrainerInfo_Gender(param1);
    u32 monOtGender = BoxPokemon_GetValue(boxMon, MON_DATA_OT_GENDER, NULL);
    Strbuf *v4 = TrainerInfo_NameNewStrbuf(param1, heapID);
    // TODO enum/const value?
    Strbuf *v5 = Strbuf_Init(8, heapID);
    BOOL v6 = FALSE;

    BoxPokemon_GetValue(boxMon, MON_DATA_OTNAME_STRBUF, v5);

    if (v0 == monOTID && v2 == monOtGender && Strbuf_Compare(v4, v5) == 0) {
        v6 = TRUE;
    }

    Strbuf_Free(v5);
    Strbuf_Free(v4);

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

void sub_0207893C(Pokemon *mon)
{
    u8 zero = 0;

    BallCapsule v1;
    MI_CpuClearFast(&v1, sizeof(BallCapsule));

    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE_ID, &zero);
    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE, &v1);
}

void BoxPokemon_RestorePP(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + i, NULL)) {
            u8 moveMaxPP = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_MAX_PP + i, NULL);

            BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_CUR_PP + i, &moveMaxPP);
        }
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

static inline int Pokemon_Face(int clientType)
{
    return (clientType & 1) ? 0 : 1;
}

void PokeSprite_LoadAnimationFrames(NARC *narc, SpriteAnimationFrame *frames, u16 species, u16 clientType)
{
    int face = Pokemon_Face(clientType);

    ArchivedPokeSpriteData data;
    NARC_ReadFromMember(narc, 0, species * sizeof(ArchivedPokeSpriteData), sizeof(ArchivedPokeSpriteData), &data);
    MI_CpuCopy8(data.faces[face].frames, frames, sizeof(SpriteAnimationFrame) * MAX_ANIMATION_FRAMES);
}

void PokeSprite_LoadAnimation(NARC *narc, PokemonAnimationSys *animationSys, PokemonSprite *sprite, u16 species, int face, int reverse, int frame)
{
    int faceType = (face == FACE_FRONT) ? 0 : 1;

    ArchivedPokeSpriteData spriteData;
    NARC_ReadFromMember(narc, 0, species * sizeof(ArchivedPokeSpriteData), sizeof(ArchivedPokeSpriteData), &spriteData);

    PokeAnimationSettings settings;
    settings.animation = spriteData.faces[faceType].animation;
    settings.startDelay = spriteData.faces[faceType].startDelay;
    settings.reverse = reverse;

    PokeAnimation_Init(animationSys, sprite, &settings, frame);
}

void PokeSprite_LoadCryDelay(NARC *narc, u8 *cryDelay, u16 species, u16 clientType)
{
    int face = Pokemon_Face(clientType);

    ArchivedPokeSpriteData data;
    NARC_ReadFromMember(narc, 0, species * sizeof(ArchivedPokeSpriteData), sizeof(ArchivedPokeSpriteData), &data);

    *cryDelay = data.faces[face].cryDelay;
}

void PokeSprite_LoadYOffset(NARC *narc, s8 *yOffset, u16 species)
{
    ArchivedPokeSpriteData data;

    NARC_ReadFromMember(narc, 0, species * sizeof(ArchivedPokeSpriteData), sizeof(ArchivedPokeSpriteData), &data);
    *yOffset = data.yOffset;
}

void PokeSprite_LoadXOffsetShadow(NARC *narc, s8 *xOffsetShadow, u16 species)
{
    ArchivedPokeSpriteData data;

    NARC_ReadFromMember(narc, 0, species * sizeof(ArchivedPokeSpriteData), sizeof(ArchivedPokeSpriteData), &data);
    *xOffsetShadow = data.xOffsetShadow;
}

void PokeSprite_LoadShadowSize(NARC *narc, u8 *shadowSize, u16 species)
{
    ArchivedPokeSpriteData data;

    NARC_ReadFromMember(narc, 0, species * sizeof(ArchivedPokeSpriteData), sizeof(ArchivedPokeSpriteData), &data);
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
    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE_ID, &one);
    Pokemon_SetValue(mon, MON_DATA_BALL_CAPSULE, &v2);
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

    PokemonDataBlockA *monDataBlockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *monDataBlockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *monDataBlockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *monDataBlockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    param1->personality = boxMon->personality;
    param1->partyDecrypted = FALSE;
    param1->boxDecrypted = FALSE;
    param1->invalidData = boxMon->invalidData;
    param1->species = monDataBlockA->species;
    param1->heldItem = monDataBlockA->heldItem;
    param1->otID = monDataBlockA->otID;
    param1->exp = monDataBlockA->exp;
    param1->friendship = monDataBlockA->friendship;
    param1->ability = monDataBlockA->ability;
    param1->hpEV = monDataBlockA->hpEV;
    param1->atkEV = monDataBlockA->atkEV;
    param1->defEV = monDataBlockA->defEV;
    param1->speedEV = monDataBlockA->speedEV;
    param1->spAtkEV = monDataBlockA->spAtkEV;
    param1->spDefEV = monDataBlockA->spDefEV;
    param1->originLanguage = monDataBlockA->originLanguage;

    int i;
    for (i = 0; i < 4; i++) {
        param1->unk_1C[i] = monDataBlockB->moves[i];
        param1->unk_24[i] = monDataBlockB->moveCurrentPPs[i];
        param1->unk_28[i] = monDataBlockB->movePPUps[i];
    }

    param1->hpIV = monDataBlockB->hpIV;
    param1->atkIV = monDataBlockB->atkIV;
    param1->defIV = monDataBlockB->defIV;
    param1->speedIV = monDataBlockB->speedIV;
    param1->spAtkIV = monDataBlockB->spAtkIV;
    param1->spDefIV = monDataBlockB->spDefIV;
    param1->isEgg = monDataBlockB->isEgg;
    param1->unk_2C_31 = monDataBlockB->hasNickname;
    param1->fatefulEncounter = monDataBlockB->fatefulEncounter;
    param1->gender = monDataBlockB->gender;
    param1->form = monDataBlockB->form;

    for (i = 0; i < 10 + 1; i++) {
        param1->unk_32[i] = monDataBlockC->nickname[i];
    }

    for (i = 0; i < 7 + 1; i++) {
        param1->unk_48[i] = monDataBlockD->otName[i];
    }

    param1->pokeball = monDataBlockD->pokeball;

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

    PokemonDataBlockA *monDataBlockA = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_A);
    PokemonDataBlockB *monDataBlockB = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_B);
    PokemonDataBlockC *monDataBlockC = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_C);
    PokemonDataBlockD *monDataBlockD = BoxPokemon_GetDataBlock(boxMon, param0->personality, DATA_BLOCK_D);

    boxMon->personality = param0->personality;
    boxMon->partyDecrypted = FALSE;
    boxMon->boxDecrypted = FALSE;
    boxMon->invalidData = param0->invalidData;

    monDataBlockA->species = param0->species;
    monDataBlockA->heldItem = param0->heldItem;
    monDataBlockA->otID = param0->otID;
    monDataBlockA->exp = param0->exp;
    monDataBlockA->friendship = param0->friendship;
    monDataBlockA->ability = param0->ability;
    monDataBlockA->hpEV = param0->hpEV;
    monDataBlockA->atkEV = param0->atkEV;
    monDataBlockA->defEV = param0->defEV;
    monDataBlockA->speedEV = param0->speedEV;
    monDataBlockA->spAtkEV = param0->spAtkEV;
    monDataBlockA->spDefEV = param0->spDefEV;
    monDataBlockA->originLanguage = param0->originLanguage;

    int i;
    for (i = 0; i < 4; i++) {
        monDataBlockB->moves[i] = param0->unk_1C[i];
        monDataBlockB->moveCurrentPPs[i] = param0->unk_24[i];
        monDataBlockB->movePPUps[i] = param0->unk_28[i];
    }

    monDataBlockB->hpIV = param0->hpIV;
    monDataBlockB->atkIV = param0->atkIV;
    monDataBlockB->defIV = param0->defIV;
    monDataBlockB->speedIV = param0->speedIV;
    monDataBlockB->spAtkIV = param0->spAtkIV;
    monDataBlockB->spDefIV = param0->spDefIV;
    monDataBlockB->isEgg = param0->isEgg;
    monDataBlockB->hasNickname = param0->unk_2C_31;
    monDataBlockB->fatefulEncounter = param0->fatefulEncounter;
    monDataBlockB->gender = param0->gender;
    monDataBlockB->form = param0->form;

    for (i = 0; i < 10 + 1; i++) {
        monDataBlockC->nickname[i] = param0->unk_32[i];
    }

    for (i = 0; i < 7 + 1; i++) {
        monDataBlockD->otName[i] = param0->unk_48[i];
    }

    monDataBlockD->pokeball = param0->pokeball;

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

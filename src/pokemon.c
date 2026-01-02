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

enum PokemonDataBlockID {
    DATA_BLOCK_A = 0,
    DATA_BLOCK_B,
    DATA_BLOCK_C,
    DATA_BLOCK_D
};

static void BoxPokemon_InitWithParams(BoxPokemon *boxMon, int species, int level, int ivs, BOOL hasFixedPersonality, u32 personality, int otIDType, u32 otID);
static u32 Pokemon_GetDataInternal(Pokemon *mon, enum PokemonDataParam param, void *dest);
static u32 BoxPokemon_GetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest);
static void Pokemon_SetDataInternal(Pokemon *mon, enum PokemonDataParam param, void *value);
static void BoxPokemon_SetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, void *value);
static void Pokemon_IncreaseDataInternal(Pokemon *mon, enum PokemonDataParam param, int value);
static void BoxPokemon_AddDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, int value);
static u32 BoxPokemon_CalcExpToNextLevel(BoxPokemon *boxMon);
static void ExpRate_LoadTable(enum ExpRate monExpRate, u32 *monExpTable);
static u32 ExpRate_GetExpAtLevel(enum ExpRate rate, int monLevel);
static u16 Nature_ModifyStatValue(u8 nature, u16 value, u8 stat);
static u8 BoxPokemon_IsShiny(BoxPokemon *boxMon);
static inline BOOL Pokemon_InlineIsPersonalityShiny(u32 monOTID, u32 monPersonality);
static void Species_BuildSpriteTemplateDP(PokemonSpriteTemplate *template, u16 species, u8 gender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality);
static u8 Species_LoadSpriteYOffsetDP(u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality);
static void BoxPokemon_SetDefaultMoves(BoxPokemon *boxMon);
static u16 BoxPokemon_TryAppendMove(BoxPokemon *boxMon, u16 move);
static void BoxPokemon_ForceAppendMove(BoxPokemon *boxMon, u16 moveID);
static void BoxPokemon_SetMoveInSlot(BoxPokemon *boxMon, u16 move, u8 slot);
static BOOL Pokemon_HasMove(Pokemon *mon, u16 move);
static s8 BoxPokemon_GetFlavorAffinity(BoxPokemon *boxMon, enum Flavor flavor);
static BOOL BoxPokemon_HasPokerus(BoxPokemon *boxMon);
static BOOL BoxPokemon_IsImmuneToPokerus(BoxPokemon *boxMon);
static void InitializeBoxPokemonAfterCapture(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int monPokeball, int metLocation, int metTerrain, enum HeapID heapID);
static void PostCaptureBoxPokemonProcessing(BoxPokemon *boxMon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5);
static BOOL BoxPokemon_CanLearnTMHM(BoxPokemon *boxMon, u8 tmHM);
static void BoxPokemon_UpdateAbility(BoxPokemon *boxMon);
static void SpeciesData_LoadSpecies(int monSpecies, SpeciesData *speciesData);
static void SpeciesData_LoadForm(int monSpecies, int monForm, SpeciesData *speciesData);
static void Species_LoadEvolutions(int monSpecies, Evolution speciesEvolution[MAX_MON_EVOLUTIONS]);
static void MonEncryptSegment(void *data, u32 bytes, u32 seed);
static void MonDecryptSegment(void *data, u32 bytes, u32 seed);
static u16 Pokemon_GetDataChecksum(void *data, u32 size);
static void *BoxPokemon_GetDataBlock(BoxPokemon *boxMon, u32 personality, enum PokemonDataBlockID dataBlockID);
static int Species_GetFormNarcIndex(int monSpecies, int monForm);
static inline int Pokemon_Face(int num);

#define ENCRY_ARGS_PARTY(mon)  (u16 *)&(mon)->party, sizeof((mon)->party), (mon)->box.personality
#define ENCRY_ARGS_BOX(boxMon) (u16 *)&(boxMon)->dataBlocks, sizeof((boxMon)->dataBlocks), (boxMon)->checksum
#define ENCRYPT_PARTY(mon)     MonEncryptSegment(ENCRY_ARGS_PARTY(mon))
#define ENCRYPT_BOX(boxMon)    MonEncryptSegment(ENCRY_ARGS_BOX(boxMon))
#define DECRYPT_PARTY(mon)     MonDecryptSegment(ENCRY_ARGS_PARTY(mon))
#define DECRYPT_BOX(boxMon)    MonDecryptSegment(ENCRY_ARGS_BOX(boxMon))
#define CHECKSUM(boxMon)       Pokemon_GetDataChecksum((u16 *)(boxMon)->dataBlocks, sizeof((boxMon)->dataBlocks))

// clang-format off
static const s8 sNatureFlavorAffinities[NATURE_COUNT][FLAVOR_COUNT] = {
                    // Spicy  Dry Sweet Bitter Sour
    [NATURE_HARDY]   = {  0,   0,   0,    0,    0 },
    [NATURE_LONELY]  = { +1,   0,   0,    0,   -1 },
    [NATURE_BRAVE]   = { +1,   0,  -1,    0,    0 },
    [NATURE_ADAMANT] = { +1,  -1,   0,    0,    0 },
    [NATURE_NAUGHTY] = { +1,   0,   0,   -1,    0 },
    [NATURE_BOLD]    = { -1,   0,   0,    0,    1 },
    [NATURE_DOCILE]  = {  0,   0,   0,    0,    0 },
    [NATURE_RELAXED] = {  0,   0,  -1,    0,    1 },
    [NATURE_IMPISH]  = {  0,  -1,   0,    0,    1 },
    [NATURE_LAX]     = {  0,   0,   0,   -1,    1 },
    [NATURE_TIMID]   = { -1,   0,  +1,    0,    0 },
    [NATURE_HASTY]   = {  0,   0,  +1,    0,   -1 },
    [NATURE_SERIOUS] = {  0,   0,   0,    0,    0 },
    [NATURE_JOLLY]   = {  0,  -1,  +1,    0,    0 },
    [NATURE_NAIVE]   = {  0,   0,  +1,   -1,    0 },
    [NATURE_MODEST]  = { -1,  +1,   0,    0,    0 },
    [NATURE_MILD]    = {  0,  +1,   0,    0,   -1 },
    [NATURE_QUIET]   = {  0,  +1,  -1,    0,    0 },
    [NATURE_BASHFUL] = {  0,   0,   0,    0,    0 },
    [NATURE_RASH]    = {  0,  +1,   0,   -1,    0 },
    [NATURE_CALM]    = { -1,   0,   0,   +1,    0 },
    [NATURE_GENTLE]  = {  0,   0,   0,   +1,   -1 },
    [NATURE_SASSY]   = {  0,   0,  -1,   +1,    0 },
    [NATURE_CAREFUL] = {  0,  -1,   0,   +1,    0 },
    [NATURE_QUIRKY]  = {  0,   0,   0,    0,    0 },
};
// clang-format on

void Pokemon_Init(Pokemon *mon)
{
    MI_CpuClearFast(mon, sizeof(Pokemon));
    ENCRYPT_BOX(&mon->box);
    ENCRYPT_PARTY(mon);
}

void BoxPokemon_Init(BoxPokemon *boxMon)
{
    MI_CpuClearFast(boxMon, sizeof(BoxPokemon));
    ENCRYPT_BOX(boxMon);
}

int Pokemon_Size(void)
{
    return sizeof(Pokemon);
}

Pokemon *Pokemon_New(enum HeapID heapID)
{
    Pokemon *mon = Heap_Alloc(heapID, sizeof(Pokemon));
    Pokemon_Init(mon);
    return mon;
}

BOOL Pokemon_DecryptData(Pokemon *mon)
{
    BOOL wasDecrypted = FALSE;

    if (!mon->box.partyDecrypted) {
        wasDecrypted = TRUE;
        GF_ASSERT(!mon->box.boxDecrypted);
        mon->box.partyDecrypted = TRUE;
        mon->box.boxDecrypted = TRUE;
        DECRYPT_PARTY(mon);
        DECRYPT_BOX(&mon->box);
    }
    return wasDecrypted;
}

BOOL Pokemon_EncryptData(Pokemon *mon, BOOL encrypt)
{
    BOOL wasEncrypted = FALSE;

    if (mon->box.partyDecrypted == TRUE && encrypt == TRUE) {
        wasEncrypted = TRUE;
        mon->box.partyDecrypted = FALSE;
        mon->box.boxDecrypted = FALSE;
        ENCRYPT_PARTY(mon);
        mon->box.checksum = CHECKSUM(&mon->box);
        ENCRYPT_BOX(&mon->box);
    }
    return wasEncrypted;
}

BOOL BoxPokemon_DecryptData(BoxPokemon *boxMon)
{
    BOOL wasDecrypted = FALSE;

    if (!boxMon->boxDecrypted) {
        wasDecrypted = TRUE;
        boxMon->boxDecrypted = TRUE;
        DECRYPT_BOX(boxMon);
    }
    return wasDecrypted;
}

BOOL BoxPokemon_EncryptData(BoxPokemon *boxMon, BOOL encrypt)
{
    BOOL wasEncrypted = FALSE;

    if (boxMon->boxDecrypted == TRUE && encrypt == TRUE) {
        wasEncrypted = TRUE;
        boxMon->boxDecrypted = FALSE;
        boxMon->checksum = CHECKSUM(boxMon);
        ENCRYPT_BOX(boxMon);
    }
    return wasEncrypted;
}

void Pokemon_InitWithParams(Pokemon *mon, int species, int level, int ivs, BOOL hasFixedPersonality, int personality, int otIDType, int otID)
{
    Pokemon_Init(mon);

    BoxPokemon_InitWithParams(&mon->box, species, level, ivs, hasFixedPersonality, personality, otIDType, otID);
    // Not your average encryption call
    MonEncryptSegment((u16 *)&mon->party, sizeof(mon->party), 0);
    ENCRYPT_PARTY(mon);
    Pokemon_SetData(mon, MON_DATA_LEVEL, &level);

    Mail *mail = Mail_New(HEAP_ID_SYSTEM);
    Pokemon_SetData(mon, MON_DATA_MAIL, mail);
    Heap_Free(mail);

    u32 zero = 0;
    BallCapsule capsule;
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE_ID, &zero);
    MI_CpuClearFast(&capsule, sizeof(capsule));
    Pokemon_SetData(mon, MON_DATA_BALL_CAPSULE, &capsule);

    Pokemon_CalcLevelAndStats(mon);
}

static void BoxPokemon_InitWithParams(BoxPokemon *boxMon, int species, int level, int ivs, BOOL hasFixedPersonality, u32 personality, int otIDType, u32 otID)
{
    u32 var1, var2;
    BoxPokemon_Init(boxMon);
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    if (!hasFixedPersonality) {
        personality = (LCRNG_Next() | (LCRNG_Next() << 16));
    }
    BoxPokemon_SetData(boxMon, MON_DATA_PERSONALITY, &personality);

    if (otIDType == OT_ID_RANDOM_NO_SHINY) {
        do {
            otID = (LCRNG_Next() | (LCRNG_Next() << 16));
        } while (Pokemon_InlineIsPersonalityShiny(otID, personality));
    } else if (otIDType != OT_ID_PRESET) {
        otID = 0;
    }
    BoxPokemon_SetData(boxMon, MON_DATA_OT_ID, &otID);
    BoxPokemon_SetData(boxMon, MON_DATA_LANGUAGE, &gGameLanguage);
    BoxPokemon_SetData(boxMon, MON_DATA_SPECIES, &species);
    BoxPokemon_SetData(boxMon, MON_DATA_SPECIES_NAME, NULL);

    var1 = Species_GetExpAtLevel(species, level);
    BoxPokemon_SetData(boxMon, MON_DATA_EXPERIENCE, &var1);

    var1 = Species_GetValue(species, SPECIES_DATA_BASE_FRIENDSHIP);
    BoxPokemon_SetData(boxMon, MON_DATA_FRIENDSHIP, &var1);

    BoxPokemon_SetData(boxMon, MON_DATA_MET_LEVEL, &level);
    BoxPokemon_SetData(boxMon, MON_DATA_MET_GAME, &gGameVersion);

    var1 = ITEM_POKE_BALL;
    BoxPokemon_SetData(boxMon, MON_DATA_POKEBALL, &var1);

    if (ivs < INIT_IVS_RANDOM) {
        BoxPokemon_SetData(boxMon, MON_DATA_HP_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_ATK_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_DEF_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_SPEED_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_SPATK_IV, &ivs);
        BoxPokemon_SetData(boxMon, MON_DATA_SPDEF_IV, &ivs);
    } else {
        var1 = LCRNG_Next();
        var2 = (var1 & (0x1f << 0)) >> 0;
        BoxPokemon_SetData(boxMon, MON_DATA_HP_IV, &var2);

        var2 = (var1 & (0x1f << 5)) >> 5;
        BoxPokemon_SetData(boxMon, MON_DATA_ATK_IV, &var2);

        var2 = (var1 & (0x1f << 10)) >> 10;
        BoxPokemon_SetData(boxMon, MON_DATA_DEF_IV, &var2);

        var1 = LCRNG_Next();
        var2 = (var1 & (0x1f << 0)) >> 0;
        BoxPokemon_SetData(boxMon, MON_DATA_SPEED_IV, &var2);

        var2 = (var1 & (0x1f << 5)) >> 5;
        BoxPokemon_SetData(boxMon, MON_DATA_SPATK_IV, &var2);

        var2 = (var1 & (0x1f << 10)) >> 10;
        BoxPokemon_SetData(boxMon, MON_DATA_SPDEF_IV, &var2);
    }

    var1 = Species_GetValue(species, SPECIES_DATA_ABILITY_1);
    var2 = Species_GetValue(species, SPECIES_DATA_ABILITY_2);
    if (var2 != ABILITY_NONE) {
        if (personality & 1) {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &var2);
        } else {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &var1);
        }
    } else {
        BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &var1);
    }

    var1 = BoxPokemon_GetGender(boxMon);
    BoxPokemon_SetData(boxMon, MON_DATA_GENDER, &var1);
    BoxPokemon_SetDefaultMoves(boxMon);
    BoxPokemon_EncryptData(boxMon, reencrypt);
}

void Pokemon_InitWithNature(Pokemon *mon, u16 species, u8 level, u8 ivs, u8 nature)
{
    u32 personality;
    do {
        personality = (LCRNG_Next() | (LCRNG_Next() << 16));
    } while (nature != Personality_GetNature(personality));
    Pokemon_InitWithParams(mon, species, level, ivs, TRUE, personality, OT_ID_PLAYER_ID, 0);
}

void Pokemon_InitWithGenderNatureLetter(Pokemon *mon, u16 species, u8 level, u8 ivs, u8 gender, u8 nature, u8 letter)
{
    u32 personality = 0;
    u16 unownLetter = 0;

    if (letter != 0 && letter < UNOWN_FORM_COUNT + 1) {
        do {
            personality = (LCRNG_Next() | (LCRNG_Next() << 16));
            unownLetter = CALC_UNOWN_LETTER(personality);
        } while (nature != Personality_GetNature(personality) || gender != Species_GetGenderFromPersonality(species, personality) || unownLetter != letter - 1);
    } else {
        personality = Personality_CreateFromGenderAndNature(species, gender, nature);
    }
    Pokemon_InitWithParams(mon, species, level, ivs, TRUE, personality, OT_ID_PLAYER_ID, 0);
}

u32 Personality_CreateFromGenderAndNature(u16 species, u8 gender, u8 nature)
{
    int pid = nature;
    u8 ratio = Species_GetValue(species, SPECIES_DATA_GENDER_RATIO);
    switch (ratio) {
    case GENDER_RATIO_MALE_ONLY:
    case GENDER_RATIO_FEMALE_ONLY:
    case GENDER_RATIO_UNKNOWN:
        break;
    default:
        if (gender == GENDER_MALE) {
            // Smallest increment that forces the low byte to exceed the
            // gender ratio, thus making the mon male
            pid = 25 * ((ratio / 25) + 1);
            pid += nature;
        }
        break;
    }
    return pid;
}

void Pokemon_InitAndCalcStats(Pokemon *mon, u16 species, u8 level, u32 combinedIVs, u32 personality)
{
    Pokemon_InitWithParams(mon, species, level, 0, TRUE, personality, OT_ID_PLAYER_ID, 0);
    Pokemon_SetData(mon, MON_DATA_COMBINED_IVS, &combinedIVs);
    Pokemon_CalcLevelAndStats(mon);
}

void Pokemon_CalcLevelAndStats(Pokemon *mon)
{
    BOOL reencrypt = Pokemon_DecryptData(mon);
    int level = Pokemon_CalcLevel(mon);
    Pokemon_SetData(mon, MON_DATA_LEVEL, &level);
    Pokemon_CalcStats(mon);
    Pokemon_EncryptData(mon, reencrypt);
}

void Pokemon_CalcStats(Pokemon *mon)
{
    int maxHp, hp;
    int hpIV, atkIV, defIV, speedIV, spAtkIV, spDefIV;
    int hpEV, atkEV, defEV, speedEV, spAtkEV, spDefEV;
    int form, species;
    int newMaxHp;

    BOOL reencrypt = Pokemon_DecryptData(mon);

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
    newAtk = Nature_ModifyStatValue(Pokemon_GetNature(mon), newAtk, STAT_ATTACK);
    Pokemon_SetData(mon, MON_DATA_ATK, &newAtk);

    int newDef = (speciesData->baseStats.defense * 2 + defIV + defEV / 4) * level / 100 + 5;
    newDef = Nature_ModifyStatValue(Pokemon_GetNature(mon), newDef, STAT_DEFENSE);
    Pokemon_SetData(mon, MON_DATA_DEF, &newDef);

    int newSpeed = (speciesData->baseStats.speed * 2 + speedIV + speedEV / 4) * level / 100 + 5;
    newSpeed = Nature_ModifyStatValue(Pokemon_GetNature(mon), newSpeed, STAT_SPEED);
    Pokemon_SetData(mon, MON_DATA_SPEED, &newSpeed);

    int newSpAtk = (speciesData->baseStats.spAttack * 2 + spAtkIV + spAtkEV / 4) * level / 100 + 5;
    newSpAtk = Nature_ModifyStatValue(Pokemon_GetNature(mon), newSpAtk, STAT_SPECIAL_ATTACK);
    Pokemon_SetData(mon, MON_DATA_SP_ATK, &newSpAtk);

    int newSpDef = (speciesData->baseStats.spDefense * 2 + spDefIV + spDefEV / 4) * level / 100 + 5;
    newSpDef = Nature_ModifyStatValue(Pokemon_GetNature(mon), newSpDef, STAT_SPECIAL_DEFENSE);
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
    Pokemon_EncryptData(mon, reencrypt);
}

u32 Pokemon_GetData(Pokemon *mon, enum PokemonDataParam param, void *dest)
{
    u32 ret;
    u32 checksum;
    if (!mon->box.partyDecrypted) {
        DECRYPT_PARTY(mon);
        DECRYPT_BOX(&mon->box);
        checksum = CHECKSUM(&mon->box);
        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            mon->box.checksumFailed = TRUE;
        }
    }
    ret = Pokemon_GetDataInternal(mon, param, dest);
    if (!mon->box.partyDecrypted) {
        ENCRYPT_PARTY(mon);
        ENCRYPT_BOX(&mon->box);
    }
    return ret;
}

static u32 Pokemon_GetDataInternal(Pokemon *mon, enum PokemonDataParam param, void *dest)
{
    switch (param) {
    case MON_DATA_STATUS:
        return mon->party.status;
    case MON_DATA_LEVEL:
        return mon->party.level;
    case MON_DATA_BALL_CAPSULE_ID:
        return mon->party.ballCapsuleID;
    case MON_DATA_HP:
        return mon->party.hp;
    case MON_DATA_MAX_HP:
        return mon->party.maxHP;
    case MON_DATA_ATK:
        return mon->party.attack;
    case MON_DATA_DEF:
        return mon->party.defense;
    case MON_DATA_SPEED:
        return mon->party.speed;
    case MON_DATA_SP_ATK:
        return mon->party.spAtk;
    case MON_DATA_SP_DEF:
        return mon->party.spDef;
    case MON_DATA_MAIL:
        Mail_Copy(&mon->party.mail, dest);
        return TRUE;
    case MON_DATA_BALL_CAPSULE:
        BallCapsule_Copy(&mon->party.ballCapsule, dest);
        return TRUE;
    default:
        return BoxPokemon_GetDataInternal(&mon->box, param, dest);
    }
}

u32 BoxPokemon_GetData(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest)
{
    u32 ret;
    u32 checksum;
    if (!boxMon->boxDecrypted) {
        DECRYPT_BOX(boxMon);
        checksum = CHECKSUM(boxMon);
        if (checksum != boxMon->checksum) {
            GF_ASSERT(checksum == boxMon->checksum);
            boxMon->checksumFailed = TRUE;
        }
    }
    ret = BoxPokemon_GetDataInternal(boxMon, param, dest);
    if (!boxMon->boxDecrypted) {
        ENCRYPT_BOX(boxMon);
    }
    return ret;
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
        ret = Species_CalcLevelByExp(blockA->species, blockA->exp);
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
        ret = Species_GetGenderFromPersonality(blockA->species, boxMon->personality);
        blockB->gender = ret;
        boxMon->checksum = CHECKSUM(boxMon);
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
            MessageLoader_GetSpeciesName(SPECIES_BAD_EGG, 0, dest);
        } else {
            charcode_t *nickname = dest;
            for (ret = 0; ret < MON_NAME_LEN; ret++) {
                nickname[ret] = blockC->nickname[ret];
            }
            nickname[ret] = CHAR_EOS;
        }
        break;
    case MON_DATA_NICKNAME_STRING_AND_FLAG:
        ret = blockB->hasNickname;
        // fallthrough
    case MON_DATA_NICKNAME_STRING:
        if (boxMon->checksumFailed) {
            String *nickname = MessageUtil_SpeciesName(SPECIES_BAD_EGG, HEAP_ID_SYSTEM);
            String_Copy(dest, nickname);
            String_Free(nickname);
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
        if ((blockA->species == SPECIES_NIDORAN_F || blockA->species == SPECIES_NIDORAN_M) && !blockB->hasNickname) {
            ret = FALSE;
        } else {
            ret = TRUE;
        }
        break;
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
        if (blockA->species == SPECIES_ARCEUS && blockA->ability == ABILITY_MULTITYPE) {
            ret = HoldEffect_GetArceusType(Item_LoadParam(blockA->heldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM));
        } else {
            ret = Species_GetFormValue(blockA->species, blockB->form, SPECIES_DATA_TYPE_1 + (param - MON_DATA_TYPE_1));
        }
        break;
    case MON_DATA_SPECIES_NAME:
        MessageLoader_GetSpeciesName(blockA->species, HEAP_ID_SYSTEM, dest);
        break;
    }
    return ret;
}

void Pokemon_SetData(Pokemon *mon, enum PokemonDataParam param, void *value)
{
    u32 checksum;
    if (!mon->box.partyDecrypted) {
        DECRYPT_PARTY(mon);
        DECRYPT_BOX(&mon->box);
        checksum = CHECKSUM(&mon->box);
        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            mon->box.checksumFailed = TRUE;
            ENCRYPT_BOX(&mon->box);
            return;
        }
    }
    Pokemon_SetDataInternal(mon, param, value);
    if (!mon->box.partyDecrypted) {
        ENCRYPT_PARTY(mon);
        mon->box.checksum = CHECKSUM(&mon->box);
        ENCRYPT_BOX(&mon->box);
    }
}

static void Pokemon_SetDataInternal(Pokemon *mon, enum PokemonDataParam param, void *value)
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

void BoxPokemon_SetData(BoxPokemon *boxMon, enum PokemonDataParam param, void *value)
{
    u32 checksum;
    if (!boxMon->boxDecrypted) {
        DECRYPT_BOX(boxMon);
        checksum = CHECKSUM(boxMon);
        if (checksum != boxMon->checksum) {
            GF_ASSERT(checksum == boxMon->checksum);
            boxMon->checksumFailed = TRUE;
            ENCRYPT_BOX(boxMon);
            return;
        }
    }
    BoxPokemon_SetDataInternal(boxMon, param, value);
    if (!boxMon->boxDecrypted) {
        boxMon->checksum = CHECKSUM(boxMon);
        ENCRYPT_BOX(boxMon);
    }
}

static void BoxPokemon_SetDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, void *value)
{
#define VALUE(type) (*(const type *)value)
    u64 mask;
    u32 i;
    u16 namebuf[MON_NAME_LEN + 1];
    u16 namebuf2[MON_NAME_LEN + 1];
    u16 namebuf3[MON_NAME_LEN + 1];
    String *speciesName;

    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    switch (param) {
    case MON_DATA_PERSONALITY:
        boxMon->personality = VALUE(u32);
        break;
    case MON_DATA_IS_PARTY_DECRYPTED:
        GF_ASSERT(FALSE);
        boxMon->partyDecrypted = VALUE(u8);
        break;
    case MON_DATA_IS_BOX_DECRYPTED:
        GF_ASSERT(FALSE);
        boxMon->boxDecrypted = VALUE(u8);
        break;
    case MON_DATA_CHECKSUM_FAILED:
        boxMon->checksumFailed = VALUE(u8);
        break;
    case MON_DATA_CHECKSUM:
        boxMon->checksum = VALUE(u16);
        break;
    case MON_DATA_SPECIES:
        blockA->species = VALUE(u16);
        break;
    case MON_DATA_HELD_ITEM:
        blockA->heldItem = VALUE(u16);
        break;
    case MON_DATA_OT_ID:
        blockA->otID = VALUE(u32);
        break;
    case MON_DATA_EXPERIENCE:
        blockA->exp = VALUE(u32);
        break;
    case MON_DATA_FRIENDSHIP:
        blockA->friendship = VALUE(u8);
        break;
    case MON_DATA_ABILITY:
        blockA->ability = VALUE(u8);
        break;
    case MON_DATA_MARKINGS:
        blockA->markings = VALUE(u8);
        break;
    case MON_DATA_LANGUAGE:
        blockA->originLanguage = VALUE(u8);
        break;
    case MON_DATA_HP_EV:
        blockA->hpEV = VALUE(u8);
        break;
    case MON_DATA_ATK_EV:
        blockA->atkEV = VALUE(u8);
        break;
    case MON_DATA_DEF_EV:
        blockA->defEV = VALUE(u8);
        break;
    case MON_DATA_SPEED_EV:
        blockA->speedEV = VALUE(u8);
        break;
    case MON_DATA_SPATK_EV:
        blockA->spAtkEV = VALUE(u8);
        break;
    case MON_DATA_SPDEF_EV:
        blockA->spDefEV = VALUE(u8);
        break;
    case MON_DATA_COOL:
        blockA->cool = VALUE(u8);
        break;
    case MON_DATA_BEAUTY:
        blockA->beauty = VALUE(u8);
        break;
    case MON_DATA_CUTE:
        blockA->cute = VALUE(u8);
        break;
    case MON_DATA_SMART:
        blockA->smart = VALUE(u8);
        break;
    case MON_DATA_TOUGH:
        blockA->tough = VALUE(u8);
        break;
    case MON_DATA_SHEEN:
        blockA->sheen = VALUE(u8);
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
        mask = 1 << (param - MON_DATA_SINNOH_CHAMP_RIBBON);
        if (VALUE(u8)) {
            blockA->ribbonsDS1 |= mask;
        } else {
            blockA->ribbonsDS1 &= mask ^ 0xFFFFFFFF;
        }
        break;
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        blockB->moves[param - MON_DATA_MOVE1] = VALUE(u16);
        break;
    case MON_DATA_MOVE1_PP:
    case MON_DATA_MOVE2_PP:
    case MON_DATA_MOVE3_PP:
    case MON_DATA_MOVE4_PP:
        blockB->moveCurrentPPs[param - MON_DATA_MOVE1_PP] = VALUE(u8);
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        blockB->movePPUps[param - MON_DATA_MOVE1_PP_UPS] = VALUE(u8);
        break;
    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;
    case MON_DATA_HP_IV:
        blockB->hpIV = VALUE(u8);
        break;
    case MON_DATA_ATK_IV:
        blockB->atkIV = VALUE(u8);
        break;
    case MON_DATA_DEF_IV:
        blockB->defIV = VALUE(u8);
        break;
    case MON_DATA_SPEED_IV:
        blockB->speedIV = VALUE(u8);
        break;
    case MON_DATA_SPATK_IV:
        blockB->spAtkIV = VALUE(u8);
        break;
    case MON_DATA_SPDEF_IV:
        blockB->spDefIV = VALUE(u8);
        break;
    case MON_DATA_IS_EGG:
        blockB->isEgg = VALUE(u8);
        break;
    case MON_DATA_HAS_NICKNAME:
        blockB->hasNickname = VALUE(u8);
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
        mask = 1 << (param - MON_DATA_COOL_RIBBON);
        if (VALUE(u8)) {
            blockB->ribbonsGBA |= mask;
        } else {
            blockB->ribbonsGBA &= mask ^ 0xFFFFFFFF;
        }
        break;
    case MON_DATA_FATEFUL_ENCOUNTER:
        blockB->fatefulEncounter = VALUE(u8);
        break;
    case MON_DATA_GENDER:
        blockB->gender = Species_GetGenderFromPersonality(blockA->species, boxMon->personality);
        break;
    case MON_DATA_FORM:
        blockB->form = VALUE(u8);
        break;
    case MON_DATA_UNUSED_113:
        blockB->unused1 = VALUE(u8);
        break;
    case MON_DATA_UNUSED_114:
        blockB->unused2 = VALUE(u16);
        break;
    case MON_DATA_NICKNAME_AND_FLAG:
        MessageLoader_GetSpeciesName(blockA->species, HEAP_ID_SYSTEM, namebuf);
        blockB->hasNickname = CharCode_Compare(namebuf, value);
        // fallthrough
    case MON_DATA_NICKNAME:
        for (i = 0; i < MON_NAME_LEN + 1; i++) {
            blockC->nickname[i] = VALUE(u16);
            value = (void *const)((char *)value + 2);
        }
        break;
    case MON_DATA_NICKNAME_STRING_AND_FLAG:
        MessageLoader_GetSpeciesName(blockA->species, HEAP_ID_SYSTEM, namebuf2);
        String_ToChars(value, namebuf3, MON_NAME_LEN + 1);
        blockB->hasNickname = CharCode_Compare(namebuf2, namebuf3);
        // fallthrough
    case MON_DATA_NICKNAME_STRING:
        String_ToChars(value, blockC->nickname, MON_NAME_LEN + 1);
        break;
    case MON_DATA_UNUSED_121:
        blockC->unused = VALUE(u8);
        break;
    case MON_DATA_MET_GAME:
        blockC->originGame = VALUE(u8);
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
        mask = 1 << (param - MON_DATA_SUPER_COOL_RIBBON);
        if (VALUE(u8)) {
            blockC->ribbonsDS2 |= mask;
        } else {
            blockC->ribbonsDS2 &= mask ^ 0xFFFFFFFFFFFFFFFF;
        }
        break;
    case MON_DATA_OT_NAME:
        for (i = 0; i < TRAINER_NAME_LEN + 1; i++) {
            blockD->otName[i] = VALUE(u16);
            value = (void *)((char *)value + 2);
        }
        break;
    case MON_DATA_OT_NAME_STRING:
        String_ToChars(value, blockD->otName, TRAINER_NAME_LEN + 1);
        break;
    case MON_DATA_EGG_YEAR:
        blockD->eggYear = VALUE(u8);
        break;
    case MON_DATA_EGG_MONTH:
        blockD->eggMonth = VALUE(u8);
        break;
    case MON_DATA_EGG_DAY:
        blockD->eggDay = VALUE(u8);
        break;
    case MON_DATA_MET_YEAR:
        blockD->metYear = VALUE(u8);
        break;
    case MON_DATA_MET_MONTH:
        blockD->metMonth = VALUE(u8);
        break;
    case MON_DATA_MET_DAY:
        blockD->metDay = VALUE(u8);
        break;
    case MON_DATA_EGG_LOCATION:
    case MON_DATA_EGG_LOCATION_PTHGSS:
        if (VALUE(u16) == 0 || sub_0201708C(VALUE(u16)) == TRUE) {
            blockD->EggLocation_DP = VALUE(u16);
            blockB->EggLocation_PtHGSS = VALUE(u16);
        } else {
            blockD->EggLocation_DP = FATEFUL_ENCOUNTER_LOCATION;
            blockB->EggLocation_PtHGSS = VALUE(u16);
        }
        break;
    case MON_DATA_MET_LOCATION:
    case MON_DATA_MET_LOCATION_PTHGSS:
        if (VALUE(u16) == 0 || sub_0201708C(VALUE(u16)) == TRUE) {
            blockD->MetLocation_DP = VALUE(u16);
            blockB->MetLocation_PtHGSS = VALUE(u16);
        } else {
            blockD->MetLocation_DP = FATEFUL_ENCOUNTER_LOCATION;
            blockB->MetLocation_PtHGSS = VALUE(u16);
        }
        break;
    case MON_DATA_POKERUS:
        blockD->pokerus = VALUE(u8);
        break;
    case MON_DATA_POKEBALL:
        blockD->pokeball = VALUE(u8);
        break;
    case MON_DATA_MET_LEVEL:
        blockD->metLevel = VALUE(u8);
        break;
    case MON_DATA_OT_GENDER:
        blockD->otGender = VALUE(u8);
        break;
    case MON_DATA_MET_TERRAIN:
        blockD->metTerrain = VALUE(u8);
        break;
    case MON_DATA_UNUSED_159:
        blockD->unused = VALUE(u16);
        break;
    case MON_DATA_COMBINED_IVS:
        blockB->hpIV = (VALUE(u32) >> 0) & 0x1F;
        blockB->atkIV = (VALUE(u32) >> 5) & 0x1F;
        blockB->defIV = (VALUE(u32) >> 10) & 0x1F;
        blockB->speedIV = (VALUE(u32) >> 15) & 0x1F;
        blockB->spAtkIV = (VALUE(u32) >> 20) & 0x1F;
        blockB->spDefIV = (VALUE(u32) >> 25) & 0x1F;
        break;
    case MON_DATA_SPECIES_NAME:
        String *speciesName = MessageUtil_SpeciesName(blockA->species, HEAP_ID_SYSTEM);
        String_ToChars(speciesName, blockC->nickname, MON_NAME_LEN + 1);
        String_Free(speciesName);
        break;
    case MON_DATA_NO_PRINT_GENDER:
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
        break;
    }
#undef VALUE
}

void Pokemon_IncreaseData(Pokemon *mon, enum PokemonDataParam param, int value)
{
    u32 checksum;
    if (!mon->box.partyDecrypted) {
        DECRYPT_PARTY(mon);
        DECRYPT_BOX(&mon->box);
        checksum = CHECKSUM(&mon->box);
        if (checksum != mon->box.checksum) {
            GF_ASSERT(checksum == mon->box.checksum);
            ENCRYPT_BOX(&mon->box);
            return;
        }
    }
    Pokemon_IncreaseDataInternal(mon, param, value);
    if (!mon->box.partyDecrypted) {
        ENCRYPT_PARTY(mon);
        mon->box.checksum = CHECKSUM(&mon->box);
        ENCRYPT_BOX(&mon->box);
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
        GF_ASSERT(FALSE);
        break;
    default:
        BoxPokemon_AddDataInternal(&mon->box, param, value);
        break;
    }
}

static void BoxPokemon_AddDataInternal(BoxPokemon *boxMon, enum PokemonDataParam param, int value)
{
    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(boxMon, boxMon->personality, DATA_BLOCK_D);

    switch (param) {
    case MON_DATA_EXPERIENCE:
        if (blockA->exp + value > Species_GetExpAtLevel(blockA->species, MAX_MON_LEVEL)) {
            blockA->exp = Species_GetExpAtLevel(blockA->species, MAX_MON_LEVEL);
        } else {
            blockA->exp += value;
        }
        break;
    case MON_DATA_FRIENDSHIP:
        int friendship = blockA->friendship;
        if (friendship + value > MAX_FRIENDSHIP) {
            friendship = MAX_FRIENDSHIP;
        }
        friendship += value;
        if (friendship < 0) {
            friendship = 0;
        }
        blockA->friendship = friendship;
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
    case MON_DATA_CHECKSUM_FAILED:
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
    case MON_DATA_NICKNAME_AND_FLAG:
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
    case MON_DATA_STATUS:
    case MON_DATA_LEVEL:
    case MON_DATA_BALL_CAPSULE_ID:
    case MON_DATA_HP:
    case MON_DATA_MAX_HP:
    case MON_DATA_ATK:
    case MON_DATA_DEF:
    case MON_DATA_SPEED:
    case MON_DATA_SP_ATK:
    case MON_DATA_SP_DEF:
    case MON_DATA_MAIL:
    case MON_DATA_BALL_CAPSULE:
    case MON_DATA_SPECIES_EXISTS:
    case MON_DATA_SANITY_IS_EGG:
    case MON_DATA_SPECIES_OR_EGG:
    case MON_DATA_COMBINED_IVS:
    case MON_DATA_NO_PRINT_GENDER:
    case MON_DATA_TYPE_1:
    case MON_DATA_TYPE_2:
    case MON_DATA_SPECIES_NAME:
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

SpeciesData *SpeciesData_NewFromForm(int species, int form, enum HeapID heapID)
{
    SpeciesData *speciesData = Heap_Alloc(heapID, sizeof(SpeciesData));
    SpeciesData_LoadForm(species, form, speciesData);
    return speciesData;
}

SpeciesData *SpeciesData_NewFromSpecies(int species, enum HeapID heapID)
{
    SpeciesData *speciesData = Heap_Alloc(heapID, sizeof(SpeciesData));
    SpeciesData_LoadSpecies(species, speciesData);
    return speciesData;
}

int SpeciesData_GetValue(SpeciesData *speciesData, enum SpeciesDataParam param)
{
    u32 ret;
    GF_ASSERT(speciesData != NULL);
    switch (param) {
    case SPECIES_DATA_BASE_HP:
        ret = speciesData->baseStats.hp;
        break;
    case SPECIES_DATA_BASE_ATK:
        ret = speciesData->baseStats.attack;
        break;
    case SPECIES_DATA_BASE_DEF:
        ret = speciesData->baseStats.defense;
        break;
    case SPECIES_DATA_BASE_SPEED:
        ret = speciesData->baseStats.speed;
        break;
    case SPECIES_DATA_BASE_SP_ATK:
        ret = speciesData->baseStats.spAttack;
        break;
    case SPECIES_DATA_BASE_SP_DEF:
        ret = speciesData->baseStats.spDefense;
        break;
    case SPECIES_DATA_TYPE_1:
        ret = speciesData->types[0];
        break;
    case SPECIES_DATA_TYPE_2:
        ret = speciesData->types[1];
        break;
    case SPECIES_DATA_CATCH_RATE:
        ret = speciesData->catchRate;
        break;
    case SPECIES_DATA_EXP_YIELD:
        ret = speciesData->baseExpReward;
        break;
    case SPECIES_DATA_EV_HP_YIELD:
        ret = speciesData->evYields.hp;
        break;
    case SPECIES_DATA_EV_ATK_YIELD:
        ret = speciesData->evYields.attack;
        break;
    case SPECIES_DATA_EV_DEF_YIELD:
        ret = speciesData->evYields.defense;
        break;
    case SPECIES_DATA_EV_SPEED_YIELD:
        ret = speciesData->evYields.speed;
        break;
    case SPECIES_DATA_EV_SP_ATK_YIELD:
        ret = speciesData->evYields.spAttack;
        break;
    case SPECIES_DATA_EV_SP_DEF_YIELD:
        ret = speciesData->evYields.spDefense;
        break;
    case SPECIES_DATA_HELD_ITEM_COMMON:
        ret = speciesData->wildHeldItems.common;
        break;
    case SPECIES_DATA_HELD_ITEM_RARE:
        ret = speciesData->wildHeldItems.rare;
        break;
    case SPECIES_DATA_GENDER_RATIO:
        ret = speciesData->genderRatio;
        break;
    case SPECIES_DATA_EGG_CYCLES:
        ret = speciesData->hatchCycles;
        break;
    case SPECIES_DATA_BASE_FRIENDSHIP:
        ret = speciesData->baseFriendship;
        break;
    case SPECIES_DATA_EXP_RATE:
        ret = speciesData->expRate;
        break;
    case SPECIES_DATA_EGG_GROUP_1:
        ret = speciesData->eggGroups[0];
        break;
    case SPECIES_DATA_EGG_GROUP_2:
        ret = speciesData->eggGroups[1];
        break;
    case SPECIES_DATA_ABILITY_1:
        ret = speciesData->abilities[0];
        break;
    case SPECIES_DATA_ABILITY_2:
        ret = speciesData->abilities[1];
        break;
    case SPECIES_DATA_SAFARI_FLEE_RATE:
        ret = speciesData->safariFleeRate;
        break;
    case SPECIES_DATA_BODY_COLOR:
        ret = speciesData->bodyColor;
        break;
    case SPECIES_DATA_FLIP_SPRITE:
        ret = speciesData->flipSprite;
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_1:
        ret = speciesData->tmLearnsetMasks[0];
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_2:
        ret = speciesData->tmLearnsetMasks[1];
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_3:
        ret = speciesData->tmLearnsetMasks[2];
        break;
    case SPECIES_DATA_TM_LEARNSET_MASK_4:
        ret = speciesData->tmLearnsetMasks[3];
        break;
    }
    return ret;
}

void SpeciesData_Free(SpeciesData *speciesData)
{
    GF_ASSERT(speciesData != NULL);
    Heap_Free(speciesData);
}

u32 Species_GetFormValue(int species, int form, enum SpeciesDataParam param)
{
    SpeciesData *speciesData = SpeciesData_NewFromSpecies(Species_GetFormNarcIndex(species, form), HEAP_ID_SYSTEM);
    u32 result = SpeciesData_GetValue(speciesData, param);
    SpeciesData_Free(speciesData);
    return result;
}

int Species_GetValue(int species, enum SpeciesDataParam param)
{
    SpeciesData *speciesData = SpeciesData_NewFromSpecies(species, HEAP_ID_SYSTEM);
    int result = SpeciesData_GetValue(speciesData, param);
    SpeciesData_Free(speciesData);
    return result;
}

u8 Pokemon_CalcPercentToNextLevel(Pokemon *mon)
{
    BOOL recrypt = Pokemon_DecryptData(mon);
    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u8 level = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
    u32 curLevelExp = Species_GetExpAtLevel(species, level);
    u32 nextLevelExp = Species_GetExpAtLevel(species, level + 1);
    u32 curExp = Pokemon_GetData(mon, MON_DATA_EXPERIENCE, NULL);

    Pokemon_EncryptData(mon, recrypt);
    u8 percent = ((curExp - curLevelExp) * 100) / (nextLevelExp - curLevelExp);

    return percent;
}

u32 Pokemon_CalcExpToNextLevel(Pokemon *mon)
{
    return BoxPokemon_CalcExpToNextLevel(&mon->box);
}

static u32 BoxPokemon_CalcExpToNextLevel(BoxPokemon *boxMon)
{
    u16 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u16 nextLevel = BoxPokemon_CalcLevel(boxMon) + 1;
    u32 exp = BoxPokemon_GetData(boxMon, MON_DATA_EXPERIENCE, NULL);
    return Species_GetExpAtLevel(species, nextLevel) - exp;
}

u32 Pokemon_GetCurrentLevelBaseExp(Pokemon *mon)
{
    int species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    int level = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
    return Species_GetExpAtLevel(species, level);
}

u32 Species_GetExpAtLevel(int species, int level)
{
    return ExpRate_GetExpAtLevel(Species_GetValue(species, SPECIES_DATA_EXP_RATE), level);
}

static void ExpRate_LoadTable(enum ExpRate rate, u32 *dest)
{
    GF_ASSERT(rate < EXP_RATE_COUNT);
    NARC_ReadWholeMemberByIndexPair(dest, NARC_INDEX_POKETOOL__PERSONAL__PL_GROWTBL, rate);
}

static u32 ExpRate_GetExpAtLevel(enum ExpRate rate, int level)
{
    GF_ASSERT(rate < EXP_RATE_COUNT);
    GF_ASSERT(level <= MAX_MON_LEVEL + 1);

    u32 *expTable = Heap_Alloc(HEAP_ID_SYSTEM, (MAX_MON_LEVEL + 1) * 4);
    ExpRate_LoadTable(rate, expTable);

    u32 ret = expTable[level];
    Heap_Free(expTable);

    return ret;
}

int Pokemon_CalcLevel(Pokemon *mon)
{
    return BoxPokemon_CalcLevel(&mon->box);
}

int BoxPokemon_CalcLevel(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    int species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int exp = BoxPokemon_GetData(boxMon, MON_DATA_EXPERIENCE, NULL);
    BoxPokemon_EncryptData(boxMon, reencrypt);
    return Species_CalcLevelByExp(species, exp);
}

int Species_CalcLevelByExp(u16 species, u32 exp)
{
    SpeciesData *speciesData = SpeciesData_NewFromSpecies(species, HEAP_ID_SYSTEM);
    int level = SpeciesData_CalcLevelByExp(speciesData, species, exp);
    SpeciesData_Free(speciesData);
    return level;
}

int SpeciesData_CalcLevelByExp(SpeciesData *speciesData, u16 unused_species, u32 exp)
{
    static u32 table[MAX_MON_LEVEL + 1];
    ExpRate_LoadTable(SpeciesData_GetValue(speciesData, SPECIES_DATA_EXP_RATE), table);
    int i;
    for (i = 1; i < MAX_MON_LEVEL + 1; i++) {
        if (table[i] > exp) {
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
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    u32 personality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);
    BoxPokemon_EncryptData(boxMon, reencrypt);
    return Personality_GetNature(personality);
}

u8 Personality_GetNature(u32 personality)
{
    return (u8)(personality % NATURE_COUNT);
}

// clang-format off
static const s8 sNatureStatModifiers[NATURE_COUNT][5] = {
                    // Attack Defense Speed Sp.Atk Sp.Def
    [NATURE_HARDY]   = {  0,     0,     0,     0,    0 },
    [NATURE_LONELY]  = { +1,    -1,     0,     0,    0 },
    [NATURE_BRAVE]   = { +1,     0,    -1,     0,    0 },
    [NATURE_ADAMANT] = { +1,     0,     0,    -1,    0 },
    [NATURE_NAUGHTY] = { +1,     0,     0,     0,   -1 },
    [NATURE_BOLD]    = { -1,    +1,     0,     0,    0 },
    [NATURE_DOCILE]  = {  0,     0,     0,     0,    0 },
    [NATURE_RELAXED] = {  0,    +1,    -1,     0,    0 },
    [NATURE_IMPISH]  = {  0,    +1,     0,    -1,    0 },
    [NATURE_LAX]     = {  0,    +1,     0,     0,   -1 },
    [NATURE_TIMID]   = { -1,     0,    +1,     0,    0 },
    [NATURE_HASTY]   = {  0,    -1,    +1,     0,    0 },
    [NATURE_SERIOUS] = {  0,     0,     0,     0,    0 },
    [NATURE_JOLLY]   = {  0,     0,    +1,    -1,    0 },
    [NATURE_NAIVE]   = {  0,     0,    +1,     0,   -1 },
    [NATURE_MODEST]  = { -1,     0,     0,    +1,    0 },
    [NATURE_MILD]    = {  0,    -1,     0,    +1,    0 },
    [NATURE_QUIET]   = {  0,     0,    -1,    +1,    0 },
    [NATURE_BASHFUL] = {  0,     0,     0,     0,    0 },
    [NATURE_RASH]    = {  0,     0,     0,    +1,   -1 },
    [NATURE_CALM]    = { -1,     0,     0,     0,   +1 },
    [NATURE_GENTLE]  = {  0,    -1,     0,     0,   +1 },
    [NATURE_SASSY]   = {  0,     0,    -1,     0,   +1 },
    [NATURE_CAREFUL] = {  0,     0,     0,    -1,   +1 },
    [NATURE_QUIRKY]  = {  0,     0,     0,     0,    0 },
};
// clang-format on

static u16 Nature_ModifyStatValue(u8 nature, u16 value, u8 stat)
{
    u16 ret;
    // Dont modify HP, Accuracy, or Evasion by nature
    if (stat < STAT_ATTACK || stat > STAT_SPECIAL_DEFENSE) {
        return value;
    }

    switch (sNatureStatModifiers[nature][stat - 1]) {
    case 1:
        // NOTE: will overflow for n > 595 because the intermediate value is cast to u16 before the division.
        ret = value * 110;
        ret /= 100;
        break;
    case -1:
        // NOTE: will overflow for n > 728, see above
        ret = value * 90;
        ret /= 100;
        break;
    default:
        ret = value;
        break;
    }
    return ret;
}

s8 Nature_GetStatModifier(u8 nature, u8 stat)
{
    return sNatureStatModifiers[nature][stat - 1];
}

// clang-format off
static const s8 sFriendshipModifiers[FRIENDSHIP_EVENT_NUM][FRIENDSHIP_TIER_NUM] = {
    [FRIENDSHIP_EVENT_GROW_LEVEL] =     {  5,  3,   2 },
    [FRIENDSHIP_EVENT_VITAMIN] =        {  5,  3,   2 },
    [FRIENDSHIP_EVENT_BATTLE_ITEM] =    {  1,  1,   0 },
    [FRIENDSHIP_EVENT_LEAGUE_BATTLE] =  {  3,  2,   1 },
    [FRIENDSHIP_EVENT_LEARN_TMHM] =     {  1,  1,   0 },
    [FRIENDSHIP_EVENT_WALKING] =        {  1,  1,   1 },
    [FRIENDSHIP_EVENT_FAINT_SMALL] =    { -1, -1,  -1 },
    [FRIENDSHIP_EVENT_HEAL_FIELD_PSN] = { -5, -5, -10 },
    [FRIENDSHIP_EVENT_FAINT_LARGE] =    { -5, -5, -10 },
    [FRIENDHSIP_EVENT_CONTEST_WIN] =    {  3,  2,   1 },
};
// clang-format on

void Pokemon_UpdateFriendship(Pokemon *mon, u8 kind, u16 location)
{
    if (kind == FRIENDSHIP_EVENT_WALKING && (LCRNG_Next() & 1)) {
        return;
    }

    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES_OR_EGG, NULL);
    if (species == SPECIES_NONE || species == SPECIES_EGG) {
        return;
    }

    u16 item = Pokemon_GetData(mon, MON_DATA_HELD_ITEM, NULL);
    u8 effect = Item_LoadParam(item, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM);
    u8 tier = 0;
    s16 friendship = Pokemon_GetData(mon, MON_DATA_FRIENDSHIP, NULL);
    if (friendship >= LOW_FRIENDSHIP_LIMIT) {
        tier++;
    }
    if (friendship >= MED_FRIENDSHIP_LIMIT) {
        tier++;
    }

    s8 modifier = sFriendshipModifiers[kind][tier];
    if (modifier > 0 && Pokemon_GetData(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
        modifier++;
    }
    if (modifier > 0 && Pokemon_GetData(mon, MON_DATA_EGG_LOCATION, NULL) == location) {
        modifier++;
    }
    if (modifier > 0 && effect == HOLD_EFFECT_FRIENDSHIP_UP) {
        modifier = modifier * 150 / 100;
    }

    friendship += modifier;
    if (friendship < 0) {
        friendship = 0;
    }
    if (friendship > MAX_FRIENDSHIP) {
        friendship = MAX_FRIENDSHIP;
    }
    Pokemon_SetData(mon, MON_DATA_FRIENDSHIP, &friendship);
}

u8 Pokemon_GetGender(Pokemon *mon)
{
    return BoxPokemon_GetGender(&mon->box);
}

u8 BoxPokemon_GetGender(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    u16 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u32 personality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);
    BoxPokemon_EncryptData(boxMon, reencrypt);
    return Species_GetGenderFromPersonality(species, personality);
}

u8 Species_GetGenderFromPersonality(u16 species, u32 personality)
{
    SpeciesData *speciesData = SpeciesData_NewFromSpecies(species, HEAP_ID_SYSTEM);
    u8 gender = SpeciesData_GetGenderFromPersonality(speciesData, species, personality);
    SpeciesData_Free(speciesData);
    return gender;
}

u8 SpeciesData_GetGenderFromPersonality(SpeciesData *speciesData, u16 unused_species, u32 personality)
{
    u8 ratio = SpeciesData_GetValue(speciesData, SPECIES_DATA_GENDER_RATIO);
    switch (ratio) {
    case GENDER_RATIO_MALE_ONLY:
        return GENDER_MALE;
    case GENDER_RATIO_FEMALE_ONLY:
        return GENDER_FEMALE;
    case GENDER_RATIO_UNKNOWN:
        return GENDER_NONE;
    default:
        if (ratio > (personality & 0xff)) {
            return GENDER_FEMALE;
        } else {
            return GENDER_MALE;
        }
    }
}

// TODO: bool8?
u8 Pokemon_IsShiny(Pokemon *mon)
{
    return BoxPokemon_IsShiny(&mon->box);
}

// TODO: bool8?
static u8 BoxPokemon_IsShiny(BoxPokemon *boxMon)
{
    u32 otID = BoxPokemon_GetData(boxMon, MON_DATA_OT_ID, NULL);
    u32 personality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);
    return Personality_IsShiny(otID, personality);
}

static inline BOOL Pokemon_InlineIsPersonalityShiny(u32 monOTID, u32 monPersonality)
{
    return (((monOTID & 0xFFFF0000) >> 16) ^ (monOTID & 0xFFFF) ^ ((monPersonality & 0xFFFF0000) >> 16) ^ (monPersonality & 0xFFFF)) < 8;
}

u8 Personality_IsShiny(u32 otID, u32 personality)
{
    return Pokemon_InlineIsPersonalityShiny(otID, personality);
}

u32 Personality_GenerateShiny(u32 otID)
{
    // 1. Pre-compute the XOR of the two halves of the trainer ID. We only
    // care about the most-significant 13 bits, so truncate the last 3.
    otID = (((otID & 0xFFFF0000) >> 16) ^ (otID & 0xFFFF)) >> 3u;

    int i;

    // 2. Randomize the least-significant 3-bits of each half of the
    // generated personality.
    u16 rndLow = LCRNG_Next() & 7;
    u16 rndHigh = LCRNG_Next() & 7;

    // 3. For each of the remaining 13 bits, pick some permutation of them
    // across both halves to be set to 1 such that the XOR of their bits
    // will XOR with the monOTID to 0.
    for (i = 0; i < 13; i++) {
        if (FlagIndex(i) & otID) {
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

void Pokemon_BuildSpriteTemplate(PokemonSpriteTemplate *template, Pokemon *mon, u8 face)
{
    BoxPokemon_BuildSpriteTemplate(template, &mon->box, face, FALSE);
}

void Pokemon_BuildSpriteTemplateDP(PokemonSpriteTemplate *template, Pokemon *mon, u8 face)
{
    BoxPokemon_BuildSpriteTemplate(template, &mon->box, face, TRUE);
}

void BoxPokemon_BuildSpriteTemplate(PokemonSpriteTemplate *template, BoxPokemon *boxMon, u8 face, BOOL preferDP)
{
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    u16 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES_OR_EGG, NULL);
    u8 gender = BoxPokemon_GetGender(boxMon);
    u8 shiny = BoxPokemon_IsShiny(boxMon);
    u32 personality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);
    u8 form;
    if (species == SPECIES_EGG) {
        if (BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            form = EGG_FORM_MANAPHY;
        } else {
            form = EGG_FORM_BASE;
        }
    } else {
        form = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    }

    if (preferDP == TRUE) {
        Species_BuildSpriteTemplateDP(template, species, gender, face, shiny, form, personality);
    } else {
        Species_BuildSpriteTemplate(template, species, gender, face, shiny, form, personality);
    }
    BoxPokemon_EncryptData(boxMon, reencrypt);
}

void Species_BuildSpriteTemplate(PokemonSpriteTemplate *template, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality)
{
    template->species = SPECIES_NONE;
    template->isAnimated = FALSE;
    template->personality = 0;
    form = Species_SanitizeFormId(species, form);

    switch (species) {
    case SPECIES_BURMY:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 72 + (face / 2) + form * 2;
        template->palette = 166 + shiny + form * 2;
        break;
    case SPECIES_WORMADAM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 78 + (face / 2) + form * 2;
        template->palette = 172 + shiny + form * 2;
        break;
    case SPECIES_SHELLOS:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 84 + face + form;
        template->palette = 178 + shiny + form * 2;
        break;
    case SPECIES_GASTRODON:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 88 + face + form;
        template->palette = 182 + shiny + form * 2;
        break;
    case SPECIES_CHERRIM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 92 + face + form;
        template->palette = 186 + (shiny * 2) + form;
        break;
    case SPECIES_ARCEUS:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 96 + (face / 2) + form * 2;
        template->palette = 190 + shiny + form * 2;
        break;
    case SPECIES_CASTFORM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 64 + (face * 2) + form;
        template->palette = 158 + (shiny * 4) + form;
        break;
    case SPECIES_DEOXYS:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 0 + (face / 2) + form * 2;
        template->palette = 154 + shiny;
        break;
    case SPECIES_UNOWN:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 8 + (face / 2) + form * 2;
        template->palette = 156 + shiny;
        break;
    case SPECIES_EGG:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 132 + form;
        template->palette = 226 + form;
        break;
    case SPECIES_BAD_EGG:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 132;
        template->palette = 226;
        break;
    case SPECIES_SHAYMIN:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 134 + (face / 2) + form * 2;
        template->palette = 228 + shiny + form * 2;
        break;
    case SPECIES_ROTOM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 138 + (face / 2) + form * 2;
        template->palette = 232 + shiny + form * 2;
        break;
    case SPECIES_GIRATINA:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
        template->character = 150 + (face / 2) + form * 2;
        template->palette = 244 + shiny + form * 2;
        break;
    default:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_POKEGRA;
        template->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0); // ternary must remain to match
        template->palette = species * 6 + 4 + shiny;

        if (species == SPECIES_SPINDA && face == FACE_FRONT) {
            template->species = SPECIES_SPINDA;
            template->isAnimated = FALSE;
            template->personality = personality;
        }
    }
}

u8 Species_SanitizeFormId(u16 species, u8 form)
{
    switch (species) {
    case SPECIES_BURMY:
        if (form > BURMY_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_WORMADAM:
        if (form > WORMADAM_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_SHELLOS:
        if (form > SHELLOS_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_GASTRODON:
        if (form > GASTRODON_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_CHERRIM:
        if (form > CHERRIM_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_ARCEUS:
        if (form > ARCEUS_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_CASTFORM:
        if (form > CASTFORM_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_DEOXYS:
        if (form > DEOXYS_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_UNOWN:
        if (form >= UNOWN_FORM_COUNT) {
            form = 0;
        }
        break;
    case SPECIES_EGG:
        if (form > EGG_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_SHAYMIN:
        if (form > SHAYMIN_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_ROTOM:
        if (form > ROTOM_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    case SPECIES_GIRATINA:
        if (form > GIRATINA_FORM_COUNT - 1) {
            form = 0;
        }
        break;
    }

    return form;
}

/**
 * @brief Build a PokemonSpriteTemplate for a Pokemon sprite, preferring sprites from
 * Diamond/Pearl over Platinum/HGSS.
 *
 * This routine will still use sprites from Platinum for Pokemon variants which
 * did not exist in Diamond/Pearl, namely:
 * - Giratina-Origin
 * - Shaymin-Sky
 * - Rotom appliances
 *
 * @param template       Pointer to the sprite template to be populated
 * @param species        The Pokemon's species
 * @param gender         The Pokemon's gender
 * @param face           Which face of the Pokemon the player sees
 * @param shiny          1 if the Pokemon is shiny, 0 if not
 * @param form           The Pokemon's form
 * @param personality    The Pokemon's personality value
 */
static void Species_BuildSpriteTemplateDP(PokemonSpriteTemplate *template, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality)
{
    template->species = SPECIES_NONE;
    template->isAnimated = FALSE;
    template->personality = 0;
    form = Species_SanitizeFormId(species, form);
    switch (species) {
    case SPECIES_BURMY:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 72 + (face / 2) + form * 2;
        template->palette = 146 + shiny + form * 2;
        break;
    case SPECIES_WORMADAM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 78 + (face / 2) + form * 2;
        template->palette = 152 + shiny + form * 2;
        break;
    case SPECIES_SHELLOS:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 84 + face + form;
        template->palette = 158 + shiny + form * 2;
        break;
    case SPECIES_GASTRODON:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 88 + face + form;
        template->palette = 162 + shiny + form * 2;
        break;
    case SPECIES_CHERRIM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 92 + face + form;
        template->palette = 166 + (shiny * 2) + form;
        break;
    case SPECIES_ARCEUS:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 96 + (face / 2) + form * 2;
        template->palette = 170 + shiny + form * 2;
        break;
    case SPECIES_CASTFORM:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 64 + (face * 2) + form;
        template->palette = 138 + (shiny * 4) + form;
        break;
    case SPECIES_DEOXYS:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 0 + (face / 2) + form * 2;
        template->palette = 134 + shiny;
        break;
    case SPECIES_UNOWN:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 8 + (face / 2) + form * 2;
        template->palette = 136 + shiny;
        break;
    case SPECIES_EGG:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 132 + form;
        template->palette = 206 + form;
        break;
    case SPECIES_BAD_EGG:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__OTHERPOKE;
        template->character = 132;
        template->palette = 206;
        break;
    case SPECIES_SHAYMIN:
        if (form > 0) {
            template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
            template->character = 134 + (face / 2) + form * 2;
            template->palette = 230 + shiny;
        } else {
            template->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
            template->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
            template->palette = species * 6 + 4 + shiny;
        }
        break;
    case SPECIES_ROTOM:
        if (form > 0) {
            template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
            template->character = 138 + (face / 2) + form * 2;
            template->palette = 232 + shiny + form * 2;
        } else {
            template->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
            template->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
            template->palette = species * 6 + 4 + shiny;
        }
        break;
    case SPECIES_GIRATINA:
        if (form > 0) {
            template->narcID = NARC_INDEX_POKETOOL__POKEGRA__PL_OTHERPOKE;
            template->character = 150 + (face / 2) + form * 2;
            template->palette = 244 + shiny + form * 2;
        } else {
            template->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
            template->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
            template->palette = species * 6 + 4 + shiny;
        }
        break;
    default:
        template->narcID = NARC_INDEX_POKETOOL__POKEGRA__POKEGRA;
        template->character = species * 6 + face + (gender != GENDER_FEMALE ? 1 : 0);
        template->palette = species * 6 + 4 + shiny;
        if (species == SPECIES_SPINDA && face == FACE_FRONT) {
            template->species = SPECIES_SPINDA;
            template->isAnimated = FALSE;
            template->personality = personality;
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
            form = EGG_FORM_MANAPHY;
        } else {
            form = EGG_FORM_BASE;
        }
    } else {
        form = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    }

    if (preferDP == TRUE) {
        return Species_LoadSpriteYOffsetDP(species, gender, face, form, personality);
    }
    return Species_LoadSpriteYOffset(species, gender, face, form, personality);
}

u8 Species_LoadSpriteYOffset(u16 species, u8 gender, u8 face, u8 form, u32 personality)
{
    form = Species_SanitizeFormId(species, form);

    enum NarcID narcID;
    int fileID;
    switch (species) {
    case SPECIES_BURMY:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 72 + (face / 2) + form * 2;
        break;
    case SPECIES_WORMADAM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 78 + (face / 2) + form * 2;
        break;
    case SPECIES_SHELLOS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 84 + face + form;
        break;
    case SPECIES_GASTRODON:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 88 + face + form;
        break;
    case SPECIES_CHERRIM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 92 + face + form;
        break;
    case SPECIES_ARCEUS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 96 + (face / 2) + form * 2;
        break;
    case SPECIES_CASTFORM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 64 + face * 2 + form;
        break;
    case SPECIES_DEOXYS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 0 + (face / 2) + form * 2;
        break;
    case SPECIES_UNOWN:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 8 + (face / 2) + form * 2;
        break;
    case SPECIES_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 132 + form;
        break;
    case SPECIES_BAD_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 132;
        break;
    case SPECIES_SHAYMIN:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 136 + (face / 2) + form * 2;
        break;
    case SPECIES_ROTOM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 140 + (face / 2) + form * 2;
        break;
    case SPECIES_GIRATINA:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        fileID = 152 + (face / 2) + form * 2;
        break;
    default:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT;
        fileID = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        break;
    }

    u8 ret;
    NARC_ReadWholeMemberByIndexPair(&ret, narcID, fileID);
    return ret;
}

static u8 Species_LoadSpriteYOffsetDP(u16 species, u8 gender, u8 face, u8 form, u32 personality)
{
    form = Species_SanitizeFormId(species, form);

    enum NarcID narcID;
    int fileID;
    switch (species) {
    case SPECIES_BURMY:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 72 + (face / 2) + form * 2;
        break;
    case SPECIES_WORMADAM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 78 + (face / 2) + form * 2;
        break;
    case SPECIES_SHELLOS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 84 + face + form;
        break;
    case SPECIES_GASTRODON:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 88 + face + form;
        break;
    case SPECIES_CHERRIM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 92 + face + form;
        break;
    case SPECIES_ARCEUS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 96 + (face / 2) + form * 2;
        break;
    case SPECIES_CASTFORM:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 64 + face * 2 + form;
        break;
    case SPECIES_DEOXYS:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 0 + (face / 2) + form * 2;
        break;
    case SPECIES_UNOWN:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 8 + (face / 2) + form * 2;
        break;
    case SPECIES_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 132 + form;
        break;
    case SPECIES_BAD_EGG:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        fileID = 132;
        break;
    case SPECIES_SHAYMIN:
        if (form > 0) {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            fileID = 136 + (face / 2) + form * 2;
        } else {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            fileID = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        }
        break;
    case SPECIES_ROTOM:
        if (form > 0) {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            fileID = 140 + (face / 2) + form * 2;
        } else {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            fileID = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        }
        break;
    case SPECIES_GIRATINA:
        if (form > 0) {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            fileID = 152 + (face / 2) + form * 2;
        } else {
            narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            fileID = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        }
        break;
    default:
        narcID = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
        fileID = species * 4 + face + (gender != GENDER_FEMALE ? 1 : 0);
        break;
    }

    u8 ret;
    NARC_ReadWholeMemberByIndexPair(&ret, narcID, fileID);
    return ret;
}

void sub_0207697C(PokemonSpriteTemplate *template, u16 param1)
{
    template->narcID = 60;
    template->character = param1 * 2;
    template->palette = param1 * 2 + 1;
    template->species = SPECIES_NONE;
    template->isAnimated = FALSE;
    template->personality = 0;
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

u32 Pokemon_Size2(void)
{
    return sizeof(Pokemon);
}

u32 BoxPokemon_Size(void)
{
    return sizeof(BoxPokemon);
}

u8 Pokemon_GetForm(Pokemon *mon)
{
    return BoxPokemon_GetForm(&mon->box);
}

u8 BoxPokemon_GetForm(BoxPokemon *boxMon)
{
    return BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
}

BoxPokemon *Pokemon_GetBoxMon(Pokemon *mon)
{
    return &mon->box;
}

BOOL Pokemon_TryLevelUp(Pokemon *mon)
{
    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u8 nextLevel = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL) + 1;
    u32 exp = Pokemon_GetData(mon, MON_DATA_EXPERIENCE, NULL);
    int expRate = Species_GetValue(species, SPECIES_DATA_EXP_RATE);
    u32 maxExp = ExpRate_GetExpAtLevel(expRate, MAX_MON_LEVEL);

    if (exp > maxExp) {
        exp = maxExp;
        Pokemon_SetData(mon, MON_DATA_EXPERIENCE, &exp);
    }
    if (nextLevel > MAX_MON_LEVEL) {
        return FALSE;
    }
    if (exp >= ExpRate_GetExpAtLevel(expRate, nextLevel)) {
        Pokemon_SetData(mon, MON_DATA_LEVEL, &nextLevel);
        return TRUE;
    }
    return FALSE;
}

u16 Pokemon_GetEvolutionTarget(Party *party, Pokemon *mon, u8 context, u16 evoParam, int *methodRet)
{
    u16 targetSpecies = SPECIES_NONE;

    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u16 heldItem = Pokemon_GetData(mon, MON_DATA_HELD_ITEM, NULL);
    u32 personality = Pokemon_GetData(mon, MON_DATA_PERSONALITY, NULL);
    u8 beauty = Pokemon_GetData(mon, MON_DATA_BEAUTY, NULL);

    int i;
    u16 friendship;
    u16 personalityUpper = (personality & 0xFFFF0000) >> 16;
    u8 holdEffect = Item_LoadParam(heldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM);

    // Kadabra bypasses Everstone because he's just that broken.
    if (species != SPECIES_KADABRA
        && holdEffect == HOLD_EFFECT_NO_EVOLVE
        && context != EVO_CONTEXT_ITEM_USE) {
        return SPECIES_NONE;
    }

    int stackVar;
    if (methodRet == NULL) {
        methodRet = &stackVar;
    }
    Evolution *evolutions = Heap_Alloc(HEAP_ID_SYSTEM, MAX_MON_EVOLUTIONS * sizeof(Evolution));
    Species_LoadEvolutions(species, evolutions);
    switch (context) {
    case EVO_CONTEXT_LEVEL_UP:
        u8 level = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
        friendship = Pokemon_GetData(mon, MON_DATA_FRIENDSHIP, NULL);
        for (i = 0; i < MAX_MON_EVOLUTIONS; i++) {
            switch (evolutions[i].method) {
            case EVO_NONE:
            case EVO_TRADE:
            case EVO_TRADE_HELD_ITEM:
            case EVO_USE_ITEM:
            case EVO_USE_ITEM_MALE:
            case EVO_USE_ITEM_FEMALE:
                break;
            case EVO_LEVEL_FRIENDSHIP:
                if (friendship >= FRIENDSHIP_EVO_THRESHOLD) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_FRIENDSHIP;
                }
                break;
            case EVO_LEVEL_FRIENDSHIP_DAY:
                if (IsNight() == FALSE && friendship >= FRIENDSHIP_EVO_THRESHOLD) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_FRIENDSHIP_DAY;
                }
                break;
            case EVO_LEVEL_FRIENDSHIP_NIGHT:
                if (IsNight() == TRUE && friendship >= FRIENDSHIP_EVO_THRESHOLD) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_FRIENDSHIP_NIGHT;
                }
                break;
            case EVO_LEVEL:
                if (evolutions[i].param <= level) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL;
                }
                break;
            case EVO_LEVEL_ATK_GT_DEF:
                if (evolutions[i].param <= level && Pokemon_GetData(mon, MON_DATA_ATK, NULL) > Pokemon_GetData(mon, MON_DATA_DEF, NULL)) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_ATK_GT_DEF;
                }
                break;
            case EVO_LEVEL_ATK_EQ_DEF:
                if (evolutions[i].param <= level && Pokemon_GetData(mon, MON_DATA_ATK, NULL) == Pokemon_GetData(mon, MON_DATA_DEF, NULL)) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_ATK_EQ_DEF;
                }
                break;
            case EVO_LEVEL_ATK_LT_DEF:
                if (evolutions[i].param <= level && Pokemon_GetData(mon, MON_DATA_ATK, NULL) < Pokemon_GetData(mon, MON_DATA_DEF, NULL)) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_ATK_LT_DEF;
                }
                break;
            case EVO_LEVEL_PID_LOW:
                if (evolutions[i].param <= level && personalityUpper % 10 < 5) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_PID_LOW;
                }
                break;
            case EVO_LEVEL_PID_HIGH:
                if (evolutions[i].param <= level && personalityUpper % 10 >= 5) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_PID_HIGH;
                }
                break;
            case EVO_LEVEL_NINJASK:
                if (evolutions[i].param <= level) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_NINJASK;
                }
                break;
            case EVO_LEVEL_SHEDINJA:
                *methodRet = EVO_LEVEL_SHEDINJA;
                break;
            case EVO_LEVEL_BEAUTY:
                if (evolutions[i].param <= beauty) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_BEAUTY;
                }
                break;
            case EVO_LEVEL_HELD_ITEM_DAY:
                if (IsNight() == FALSE && evolutions[i].param == heldItem) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_HELD_ITEM_DAY;
                }
                break;
            case EVO_LEVEL_HELD_ITEM_NIGHT:
                if (IsNight() == TRUE && evolutions[i].param == heldItem) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_HELD_ITEM_NIGHT;
                }
                break;
            case EVO_LEVEL_KNOW_MOVE:
                if (Pokemon_HasMove(mon, evolutions[i].param) == TRUE) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_KNOW_MOVE;
                }
                break;
            case EVO_LEVEL_SPECIES_IN_PARTY:
                if (party != NULL && Party_HasSpecies(party, evolutions[i].param) == TRUE) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_SPECIES_IN_PARTY;
                }
                break;
            case EVO_LEVEL_MALE:
                if (Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_MALE && evolutions[i].param <= level) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_MALE;
                }
                break;
            case EVO_LEVEL_FEMALE:
                if (Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_FEMALE && evolutions[i].param <= level) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_FEMALE;
                }
                break;
            case EVO_LEVEL_MAGNETIC_FIELD:
                if (evoParam == evolutions[i].method) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_MAGNETIC_FIELD;
                }
                break;
            case EVO_LEVEL_MOSS_ROCK:
                if (evoParam == evolutions[i].method) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_MOSS_ROCK;
                }
                break;
            case EVO_LEVEL_ICE_ROCK:
                if (evoParam == evolutions[i].method) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_LEVEL_ICE_ROCK;
                }
                break;
            }

            if (targetSpecies != SPECIES_NONE) {
                break;
            }
        }
        break;
    case EVO_CONTEXT_TRADE:
        for (i = 0; i < MAX_MON_EVOLUTIONS; i++) {
            switch (evolutions[i].method) {
            case EVO_TRADE:
                targetSpecies = evolutions[i].target;
                *methodRet = EVO_TRADE;
                break;
            case EVO_TRADE_HELD_ITEM:
                if (heldItem == evolutions[i].param) {
                    targetSpecies = evolutions[i].target;
                    *methodRet = EVO_TRADE_HELD_ITEM;
                }
                break;
            }

            if (targetSpecies != SPECIES_NONE) {
                break;
            }
        }
        break;
    case EVO_CONTEXT_ITEM_CHECK:
    case EVO_CONTEXT_ITEM_USE:
        for (i = 0; i < MAX_MON_EVOLUTIONS; i++) {
            if (evolutions[i].method == EVO_USE_ITEM && evoParam == evolutions[i].param) {
                targetSpecies = evolutions[i].target;
                *methodRet = EVO_NONE;
                break;
            }
            if (evolutions[i].method == EVO_USE_ITEM_MALE
                && Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_MALE
                && evoParam == evolutions[i].param) {
                targetSpecies = evolutions[i].target;
                *methodRet = EVO_NONE;
                break;
            }
            if (evolutions[i].method == EVO_USE_ITEM_FEMALE
                && Pokemon_GetData(mon, MON_DATA_GENDER, NULL) == GENDER_FEMALE
                && evoParam == evolutions[i].param) {
                targetSpecies = evolutions[i].target;
                *methodRet = EVO_NONE;
                break;
            }

            if (targetSpecies != SPECIES_NONE) {
                break;
            }
        }
        break;
    }
    Heap_Free(evolutions);
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
    case SPECIES_CHANSEY:
    case SPECIES_MR_MIME:
    case SPECIES_SNORLAX:
    case SPECIES_MARILL:
    case SPECIES_SUDOWOODO:
    case SPECIES_WOBBUFFET:
    case SPECIES_MANTINE:
    case SPECIES_ROSELIA:
    case SPECIES_CHIMECHO:
        return species;
    default:
        return Pokemon_GetBaseSpeciesFromPersonalData(species);
    }
}

static void BoxPokemon_SetDefaultMoves(BoxPokemon *boxMon)
{
    BOOL reencrypt; // must pre-declare to match
    u16 *levelUpLearnset = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));
    reencrypt = BoxPokemon_DecryptData(boxMon);

    u16 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int form = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    u8 level = BoxPokemon_CalcLevel(boxMon);

    Species_LoadLevelUpLearnset(species, form, levelUpLearnset);

    for (int i = 0; levelUpLearnset[i] != LEARNSET_SENTINEL_ENTRY; i++) {
        if ((levelUpLearnset[i] & 0xFE00) > level << 9) {
            break;
        }
        u16 move = levelUpLearnset[i] & 0x1FF;
        if (BoxPokemon_TryAppendMove(boxMon, move) == LEARNSET_ALL_SLOTS_FILLED) {
            BoxPokemon_ForceAppendMove(boxMon, move);
        }
    }
    Heap_Free(levelUpLearnset);
    BoxPokemon_EncryptData(boxMon, reencrypt);
}

u16 Pokemon_TryAppendMove(Pokemon *mon, u16 move)
{
    return BoxPokemon_TryAppendMove(Pokemon_GetBoxMon(mon), move);
}

static u16 BoxPokemon_TryAppendMove(BoxPokemon *boxMon, u16 move)
{
    u16 ret = LEARNSET_ALL_SLOTS_FILLED;
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);

    for (int i = 0; i < MAX_MON_MOVES; i++) {
        u16 slotMove = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + i, NULL);
        if (slotMove == MOVE_NONE) {
            BoxPokemon_SetMoveInSlot(boxMon, move, i);
            ret = move;
            break;
        }
        if (slotMove == move) {
            ret = LEARNSET_MOVE_ALREADY_KNOWN;
            break;
        }
    }
    BoxPokemon_EncryptData(boxMon, reencrypt);
    return ret;
}

void Pokemon_ForceAppendMove(Pokemon *mon, u16 move)
{
    BoxPokemon_ForceAppendMove(Pokemon_GetBoxMon(mon), move);
}

static void BoxPokemon_ForceAppendMove(BoxPokemon *boxMon, u16 move)
{
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    u16 moves[MAX_MON_MOVES];
    u8 pp[MAX_MON_MOVES];
    u8 ppUp[MAX_MON_MOVES];

    // Bubble move slots 2 through 4 upwards
    for (int i = 0; i < MAX_MON_MOVES - 1; i++) {
        moves[i] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + i + 1, NULL);
        pp[i] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP + i + 1, NULL);
        ppUp[i] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + i + 1, NULL);
    }

    moves[MAX_MON_MOVES - 1] = move;
    pp[MAX_MON_MOVES - 1] = MoveTable_LoadParam(move, MOVEATTRIBUTE_PP);
    ppUp[MAX_MON_MOVES - 1] = 0;

    for (int i = 0; i < MAX_MON_MOVES; i++) {
        BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + i, &moves[i]);
        BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + i, &pp[i]);
        BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP_UPS + i, &ppUp[i]);
    }

    BoxPokemon_EncryptData(boxMon, reencrypt);
}

void Pokemon_SetMoveInSlot_ResetPPUp(Pokemon *mon, u16 move, u8 slot)
{
    Pokemon_SetMoveInSlot(mon, move, slot);
    int pp, ppUp = 0;
    Pokemon_SetData(mon, MON_DATA_MOVE1_PP_UPS + slot, &ppUp);
    pp = MoveTable_CalcMaxPP(move, 0);
    Pokemon_SetData(mon, MON_DATA_MOVE1_PP + slot, &pp);
}

void Pokemon_SetMoveInSlot(Pokemon *mon, u16 move, u8 slot)
{
    BoxPokemon_SetMoveInSlot(&mon->box, move, slot);
}

static void BoxPokemon_SetMoveInSlot(BoxPokemon *boxMon, u16 move, u8 slot)
{
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + slot, &move);

    u8 ppUps = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + slot, NULL);
    u8 pp = MoveTable_CalcMaxPP(move, ppUps);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + slot, &pp);
}

u16 Pokemon_TryLevelUpMove(Pokemon *mon, int *index, u16 *move)
{
    u16 ret = MOVE_NONE;
    u16 *levelUpLearnset = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));
    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    int form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    u8 level = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
    Species_LoadLevelUpLearnset(species, form, levelUpLearnset);

    if (levelUpLearnset[*index] == LEARNSET_SENTINEL_ENTRY) {
        Heap_Free(levelUpLearnset);
        return MOVE_NONE;
    }

    while ((levelUpLearnset[*index] & 0xFE00) != level << 9) {
        (*index)++;
        if (levelUpLearnset[*index] == LEARNSET_SENTINEL_ENTRY) {
            Heap_Free(levelUpLearnset);
            return MOVE_NONE;
        }
    }

    if ((levelUpLearnset[*index] & 0xFE00) == level << 9) {
        *move = levelUpLearnset[*index] & 0x1FF;
        (*index)++;
        ret = Pokemon_TryAppendMove(mon, *move);
    }
    Heap_Free(levelUpLearnset);
    return ret;
}

void Pokemon_SwapMoveSlots(Pokemon *mon, int slot1, int slot2)
{
    BoxPokemon_SwapMoveSlots(&mon->box, slot1, slot2);
}

void BoxPokemon_SwapMoveSlots(BoxPokemon *boxMon, int slot1, int slot2)
{
    u16 moves[2];
    u8 pp[2];
    u8 ppUp[2];

    moves[0] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + slot1, NULL);
    pp[0] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP + slot1, NULL);
    ppUp[0] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + slot1, NULL);
    moves[1] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + slot2, NULL);
    pp[1] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP + slot2, NULL);
    ppUp[1] = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_PP_UPS + slot2, NULL);

    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + slot1, &moves[1]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + slot1, &pp[1]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP_UPS + slot1, &ppUp[1]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1 + slot2, &moves[0]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + slot2, &pp[0]);
    BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP_UPS + slot2, &ppUp[0]);
}

void Pokemon_ClearMoveSlot(Pokemon *mon, u32 slot)
{
    u16 move;
    u8 pp;
    u8 ppUp;

    for (u32 i = slot; i < MAX_MON_MOVES - 1; i++) {
        move = Pokemon_GetData(mon, MON_DATA_MOVE1 + i + 1, NULL);
        pp = Pokemon_GetData(mon, MON_DATA_MOVE1_PP + i + 1, NULL);
        ppUp = Pokemon_GetData(mon, MON_DATA_MOVE1_PP_UPS + i + 1, NULL);
        Pokemon_SetData(mon, MON_DATA_MOVE1 + i, &move);
        Pokemon_SetData(mon, MON_DATA_MOVE1_PP + i, &pp);
        Pokemon_SetData(mon, MON_DATA_MOVE1_PP_UPS + i, &ppUp);
    }

    move = MOVE_NONE;
    pp = 0;
    ppUp = 0;
    Pokemon_SetData(mon, MON_DATA_MOVE1 + MAX_MON_MOVES - 1, &move);
    Pokemon_SetData(mon, MON_DATA_MOVE1_PP + MAX_MON_MOVES - 1, &pp);
    Pokemon_SetData(mon, MON_DATA_MOVE1_PP_UPS + MAX_MON_MOVES - 1, &ppUp);
}

static BOOL Pokemon_HasMove(Pokemon *mon, u16 move)
{
    int i;
    for (i = 0; i < MAX_MON_MOVES; i++) {
        if (Pokemon_GetData(mon, MON_DATA_MOVE1 + i, NULL) == move) {
            break;
        }
    }
    return i != MAX_MON_MOVES;
}

void BoxPokemon_CopyToPokemon(BoxPokemon *src, Pokemon *dest)
{
    u32 zero = 0;

    dest->box = *src;
    if (dest->box.boxDecrypted) {
        dest->box.partyDecrypted = TRUE;
    }
    Pokemon_SetData(dest, MON_DATA_STATUS, &zero);
    Pokemon_SetData(dest, MON_DATA_HP, &zero);
    Pokemon_SetData(dest, MON_DATA_MAX_HP, &zero);

    Mail *mail = Mail_New(HEAP_ID_SYSTEM);
    Pokemon_SetData(dest, MON_DATA_MAIL, mail);
    Heap_Free(mail);

    BallCapsule capsule;
    Pokemon_SetData(dest, MON_DATA_BALL_CAPSULE_ID, &zero);
    MI_CpuClearFast(&capsule, sizeof(capsule));
    Pokemon_SetData(dest, MON_DATA_BALL_CAPSULE, &capsule);

    Pokemon_CalcLevelAndStats(dest);
}

u8 Party_GetMaxLevel(Party *party)
{
    int count = Party_GetCurrentCount(party);
    u8 ret = 1;

    for (int i = 0; i < count; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) != SPECIES_NONE
            && !Pokemon_GetData(mon, MON_DATA_IS_EGG, NULL)) {
            u8 level = Pokemon_GetData(mon, MON_DATA_LEVEL, NULL);
            if (level > ret) {
                ret = level;
            }
        }
    }
    return ret;
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
}

void BoxPokemon_Copy(BoxPokemon *src, BoxPokemon *dest)
{
    *dest = *src;
}

void Pokemon_CopyToBoxPokemon(Pokemon *src, BoxPokemon *dest)
{
    *dest = src->box;
}

s8 Pokemon_GetFlavorAffinity(Pokemon *mon, enum Flavor flavor)
{
    return BoxPokemon_GetFlavorAffinity(&mon->box, flavor);
}

static s8 BoxPokemon_GetFlavorAffinity(BoxPokemon *boxMon, enum Flavor flavor)
{
    return Personality_GetFlavorAffinity(BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL), flavor);
}

s8 Personality_GetFlavorAffinity(u32 personality, enum Flavor flavor)
{
    return sNatureFlavorAffinities[Personality_GetNature(personality)][flavor];
}

int Pokemon_LoadLevelUpMoveIdsOf(int monSpecies, int monForm, u16 *monLevelUpMoveIDs)
{
    u16 *monLevelUpMoves = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(SpeciesLearnset));

    Species_LoadLevelUpLearnset(monSpecies, monForm, monLevelUpMoves);

    int result = 0;

    while (monLevelUpMoves[result] != LEARNSET_ALL_SLOTS_FILLED) {
        monLevelUpMoveIDs[result] = monLevelUpMoves[result] & 0x1FF;
        result++;
    }

    Heap_Free(monLevelUpMoves);
    return result;
}

void Party_GivePokerusAtRandom(Party *party)
{
    int count = Party_GetCurrentCount(party);
    int slot;
    Pokemon *mon;
    u8 pokerus;
    switch (LCRNG_Next()) {
    case 0x4000:
    case 0x8000:
    case 0xC000:
        do {
            slot = LCRNG_Next() % count;
            mon = Party_GetPokemonBySlotIndex(party, slot);
        } while (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) == SPECIES_NONE || Pokemon_GetData(mon, MON_DATA_IS_EGG, NULL));

        if (!Party_MaskHasPokerus(party, FlagIndex(slot))) {
            do {
                pokerus = LCRNG_Next();
            } while (!(pokerus & 0x7));
            if (pokerus & 0xf0) {
                pokerus &= 0x7;
            }
            pokerus |= pokerus << 4;
            pokerus &= 0xf3;
            pokerus++;
            Pokemon_SetData(mon, MON_DATA_POKERUS, &pokerus);
        }
    }
}

u8 Party_MaskHasPokerus(Party *party, u8 partyMask)
{
    int slot = 0;
    u32 flag = 1;
    u8 ret = 0;
    Pokemon *mon;
    if (partyMask != 0) {
        do {
            if (partyMask & 1) {
                mon = Party_GetPokemonBySlotIndex(party, slot);
                if (Pokemon_GetData(mon, MON_DATA_POKERUS, NULL)) {
                    ret |= flag;
                }
            }
            slot++;
            flag <<= 1;
            partyMask >>= 1;
        } while (partyMask != 0);
    } else {
        mon = Party_GetPokemonBySlotIndex(party, slot);
        if (Pokemon_GetData(mon, MON_DATA_POKERUS, NULL)) {
            ret++;
        }
    }
    return ret;
}

void Party_UpdatePokerus(Party *party, int daysPassed)
{
    int count = Party_GetCurrentCount(party);
    for (int i = 0; i < count; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
            u8 pokerus = Pokemon_GetData(mon, MON_DATA_POKERUS, NULL);
            if (pokerus & 0xf) {
                if ((pokerus & 0xf) < daysPassed || daysPassed > 4) {
                    pokerus &= 0xf0;
                } else {
                    pokerus -= daysPassed;
                }

                if (pokerus == 0) {
                    pokerus = 0x10; // immune
                }
                Pokemon_SetData(mon, MON_DATA_POKERUS, &pokerus);
            }
        }
    }
}

void Party_SpreadPokerus(Party *party)
{
    int count = Party_GetCurrentCount(party);
    if ((LCRNG_Next() % 3) == 0) {
        for (int i = 0; i < count; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
            if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
                u8 pokerus = Pokemon_GetData(mon, MON_DATA_POKERUS, NULL);
                if (pokerus & 0xf) {
                    if (i != 0) {
                        mon = Party_GetPokemonBySlotIndex(party, i - 1);
                        if (!(Pokemon_GetData(mon, MON_DATA_POKERUS, NULL) & 0xf0)) {
                            Pokemon_SetData(mon, MON_DATA_POKERUS, &pokerus);
                        }
                    }

                    if (i < count - 1) {
                        mon = Party_GetPokemonBySlotIndex(party, i + 1);
                        if (!(Pokemon_GetData(mon, MON_DATA_POKERUS, NULL) & 0xf0)) {
                            Pokemon_SetData(mon, MON_DATA_POKERUS, &pokerus);
                            i++; // don't infect the rest of the party
                        }
                    }
                }
            }
        }
    }
}

BOOL Pokemon_HasPokerus(Pokemon *mon)
{
    return BoxPokemon_HasPokerus(&mon->box);
}

static BOOL BoxPokemon_HasPokerus(BoxPokemon *boxMon)
{
    return (BoxPokemon_GetData(boxMon, MON_DATA_POKERUS, NULL) & 0xf) != 0;
}

BOOL Pokemon_IsImmuneToPokerus(Pokemon *mon)
{
    return BoxPokemon_IsImmuneToPokerus(&mon->box);
}

static BOOL BoxPokemon_IsImmuneToPokerus(BoxPokemon *boxMon)
{
    u8 pokerus = BoxPokemon_GetData(boxMon, MON_DATA_POKERUS, NULL);
    if (pokerus & 0xF) {
        return FALSE;
    }
    if (pokerus & 0xF0) {
        return TRUE;
    }
    return FALSE;
}

void Pokemon_UpdateArceusForm(Pokemon *mon)
{
    BoxPokemon_UpdateArceusForm(&mon->box);
}

void BoxPokemon_UpdateArceusForm(BoxPokemon *boxMon)
{
    u32 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    u32 ability = BoxPokemon_GetData(boxMon, MON_DATA_ABILITY, NULL);
    u32 heldItem = BoxPokemon_GetData(boxMon, MON_DATA_HELD_ITEM, NULL);
    if (species == SPECIES_ARCEUS && ability == ABILITY_MULTITYPE) {
        u32 form = HoldEffect_GetArceusType(Item_LoadParam(heldItem, ITEM_PARAM_HOLD_EFFECT, HEAP_ID_SYSTEM));
        BoxPokemon_SetData(boxMon, MON_DATA_FORM, &form);
    }
}

u8 HoldEffect_GetArceusType(u16 holdEffect)
{
    switch (holdEffect) {
    case HOLD_EFFECT_ARCEUS_FIRE:
        return TYPE_FIRE;
    case HOLD_EFFECT_ARCEUS_WATER:
        return TYPE_WATER;
    case HOLD_EFFECT_ARCEUS_ELECTRIC:
        return TYPE_ELECTRIC;
    case HOLD_EFFECT_ARCEUS_GRASS:
        return TYPE_GRASS;
    case HOLD_EFFECT_ARCEUS_ICE:
        return TYPE_ICE;
    case HOLD_EFFECT_ARCEUS_FIGHTING:
        return TYPE_FIGHTING;
    case HOLD_EFFECT_ARCEUS_POISON:
        return TYPE_POISON;
    case HOLD_EFFECT_ARCEUS_GROUND:
        return TYPE_GROUND;
    case HOLD_EFFECT_ARCEUS_FLYING:
        return TYPE_FLYING;
    case HOLD_EFFECT_ARCEUS_PSYCHIC:
        return TYPE_PSYCHIC;
    case HOLD_EFFECT_ARCEUS_BUG:
        return TYPE_BUG;
    case HOLD_EFFECT_ARCEUS_ROCK:
        return TYPE_ROCK;
    case HOLD_EFFECT_ARCEUS_GHOST:
        return TYPE_GHOST;
    case HOLD_EFFECT_ARCEUS_DRAGON:
        return TYPE_DRAGON;
    case HOLD_EFFECT_ARCEUS_DARK:
        return TYPE_DARK;
    case HOLD_EFFECT_ARCEUS_STEEL:
        return TYPE_STEEL;
    default:
        return TYPE_NORMAL;
    }
}

s32 Pokemon_UpdateGiratinaForm(Pokemon *mon)
{
    s32 ret = BoxPokemon_UpdateGiratinaForm(&mon->box);
    if (ret != -1) {
        Pokemon_CalcLevelAndStats(mon);
    }
    return ret;
}

s32 BoxPokemon_UpdateGiratinaForm(BoxPokemon *boxMon)
{
    int species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int item = BoxPokemon_GetData(boxMon, MON_DATA_HELD_ITEM, NULL);
    if (species == SPECIES_GIRATINA) {
        int form;
        if (item == ITEM_GRISEOUS_ORB) {
            form = GIRATINA_FORM_ORIGIN;
        } else {
            form = GIRATINA_FORM_ALTERED;
        }
        BoxPokemon_SetData(boxMon, MON_DATA_FORM, &form);
        BoxPokemon_UpdateAbility(boxMon);
        return form;
    }
    return -1;
}

void Pokemon_ForceSetGiratinaOriginForm(Pokemon *mon)
{
    s32 form = GIRATINA_FORM_ORIGIN;
    if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) == SPECIES_GIRATINA) {
        BoxPokemon_SetData(&mon->box, MON_DATA_FORM, &form);
        BoxPokemon_UpdateAbility(&mon->box);
        Pokemon_CalcLevelAndStats(mon);
    }
}

void Party_UpdateGiratinaForms(Party *party, BOOL forceOrigin)
{
    int count = Party_GetCurrentCount(party);
    for (int i = 0; i < count; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        if (forceOrigin) {
            Pokemon_ForceSetGiratinaOriginForm(mon);
        } else {
            Pokemon_UpdateGiratinaForm(mon);
        }
    }
}

void Pokemon_UpdateShayminForm(Pokemon *mon, int form)
{
    BoxPokemon_UpdateShayminForm(&mon->box, form);
    Pokemon_CalcLevelAndStats(mon);
}

void BoxPokemon_UpdateShayminForm(BoxPokemon *boxMon, int form)
{
    if (BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_SHAYMIN) {
        GF_ASSERT(form <= SHAYMIN_FORM_COUNT - 1);
        BoxPokemon_SetData(boxMon, MON_DATA_FORM, &form);
        BoxPokemon_UpdateAbility(boxMon);
    }
}

BOOL Pokemon_CanShayminSkyForm(Pokemon *mon)
{
    u32 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u32 form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    u32 status = Pokemon_GetData(mon, MON_DATA_STATUS, NULL);
    u32 hp = Pokemon_GetData(mon, MON_DATA_HP, NULL);
    BOOL fatefulEncounter = Pokemon_GetData(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    RTCTime time;
    RTC_GetCurrentTime(&time);

    if (species == SPECIES_SHAYMIN
        && form == SHAYMIN_FORM_LAND
        && hp > 0
        && fatefulEncounter == TRUE
        && !(status & MON_CONDITION_FREEZE)
        && time.hour >= 4
        && time.hour < 20) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void Party_SetShayminLandForms(Party *party)
{
    int count = Party_GetCurrentCount(party);
    for (int i = 0; i < count; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        int species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
        int form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
        if (species == SPECIES_SHAYMIN && form == SHAYMIN_FORM_SKY) {
            Pokemon_UpdateShayminForm(mon, SHAYMIN_FORM_LAND);
        }
    }
}

BOOL Party_UpdateShayminForms(Party *party, int minutesDiff, const RTCTime *time)
{
    s32 hour, minutes;
    if (time->hour >= 20 || time->hour < 4) {
        hour = time->hour;
        if (hour < 4) {
            hour += 24;
        }
        minutes = time->minute + 60 * (hour - 20);
        if (minutes < minutesDiff + 1) {
            Party_SetShayminLandForms(party);
            return TRUE;
        }
        return FALSE;
    } else {
        minutes = time->minute + (time->hour - 4) * 60;
        if (minutes < minutesDiff) {
            Party_SetShayminLandForms(party);
            return TRUE;
        }
        return FALSE;
    }
}

BOOL Pokemon_UpdateRotomForm(Pokemon *mon, int form, int moveSlot)
{
    static const u16 rotomFormMoves[ROTOM_FORM_COUNT] = {
        [ROTOM_FORM_BASE] = MOVE_NONE,
        [ROTOM_FORM_HEAT] = MOVE_OVERHEAT,
        [ROTOM_FORM_WASH] = MOVE_HYDRO_PUMP,
        [ROTOM_FORM_FROST] = MOVE_BLIZZARD,
        [ROTOM_FORM_FAN] = MOVE_AIR_SLASH,
        [ROTOM_FORM_MOW] = MOVE_LEAF_STORM,
    };

    if (Pokemon_GetData(mon, MON_DATA_SPECIES, NULL) != SPECIES_ROTOM) {
        return FALSE;
    }

    // Unused call
    Pokemon_GetData(mon, MON_DATA_FORM, NULL);

    int newMove = rotomFormMoves[form];
    int i, j;
    for (i = 0; i < MAX_MON_MOVES; i++) {
        int curMove = Pokemon_GetData(mon, MON_DATA_MOVE1 + i, NULL);
        for (j = ROTOM_FORM_HEAT; j < NELEMS(rotomFormMoves); j++) {
            if (curMove != MOVE_NONE && curMove == rotomFormMoves[j]) {
                if (newMove != MOVE_NONE) {
                    Pokemon_SetMoveInSlot_ResetPPUp(mon, newMove, i);
                    newMove = MOVE_NONE;
                } else {
                    Pokemon_ClearMoveSlot(mon, i);
                    i--;
                }
                break;
            }
        }
    }

    if (newMove != MOVE_NONE) {
        for (i = 0; i < MAX_MON_MOVES; i++) {
            if (Pokemon_GetData(mon, MON_DATA_MOVE1 + i, NULL) == MOVE_NONE) {
                Pokemon_SetMoveInSlot_ResetPPUp(mon, newMove, i);
                break;
            }
        }

        if (i == MAX_MON_MOVES) {
            Pokemon_SetMoveInSlot_ResetPPUp(mon, newMove, moveSlot);
        }
    }

    if (Pokemon_GetData(mon, MON_DATA_MOVE1, NULL) == MOVE_NONE) {
        Pokemon_SetMoveInSlot_ResetPPUp(mon, MOVE_THUNDER_SHOCK, 0);
    }
    Pokemon_SetData(mon, MON_DATA_FORM, &form);
    Pokemon_UpdateAbility(mon);
    Pokemon_CalcLevelAndStats(mon);
    return TRUE;
}

void Species_LoadLevelUpLearnset(int monSpecies, int monForm, u16 *monLevelUpMoves)
{
    monSpecies = Species_GetFormNarcIndex(monSpecies, monForm);
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

static const u16 sHeldItemOdds[][2] = {
    { 45, 95 }, // Without CompoundEyes (itemRates == 0) 45% no item, 50% common item, 5% rare item
    { 20, 80 }, // With CompoundEyes (itemRates == 1) 20% no item, 60% common item, 20% rare item
};

void Pokemon_GiveWildHeldItem(Pokemon *mon, u32 battleType, int itemRates)
{
    if (battleType & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_FRONTIER)) {
        return;
    }

    u32 rand = LCRNG_Next() % 100;
    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    u16 form = Pokemon_GetData(mon, MON_DATA_FORM, NULL);
    u16 item1 = Species_GetFormValue(species, form, SPECIES_DATA_HELD_ITEM_COMMON);
    u16 item2 = Species_GetFormValue(species, form, SPECIES_DATA_HELD_ITEM_RARE);

    if (item1 == item2 && item1 != ITEM_NONE) {
        Pokemon_SetData(mon, MON_DATA_HELD_ITEM, &item1);
        return;
    }

    if (rand < sHeldItemOdds[itemRates][0]) {
        return;
    } else if (rand < sHeldItemOdds[itemRates][1]) {
        Pokemon_SetData(mon, MON_DATA_HELD_ITEM, &item1);
    } else {
        Pokemon_SetData(mon, MON_DATA_HELD_ITEM, &item2);
    }
}

BOOL Pokemon_CanLearnTMHM(Pokemon *mon, u8 tmHM)
{
    return BoxPokemon_CanLearnTMHM(&mon->box, tmHM);
}

static BOOL BoxPokemon_CanLearnTMHM(BoxPokemon *boxMon, u8 tmHM)
{
    u16 species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES_OR_EGG, NULL);
    int form = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);

    return Species_CanLearnTMHM(species, form, tmHM);
}

BOOL Species_CanLearnTMHM(u16 species, int form, u8 tmHM)
{
    if (species == SPECIES_EGG) {
        return FALSE;
    }

    u32 mask;
    int param;
    if (tmHM < 32) {
        mask = (1 << tmHM);
        param = SPECIES_DATA_TM_LEARNSET_MASK_1;
    } else if (tmHM < 64) {
        mask = (1 << (tmHM - 32));
        param = SPECIES_DATA_TM_LEARNSET_MASK_2;
    } else if (tmHM < 96) {
        mask = (1 << (tmHM - 64));
        param = SPECIES_DATA_TM_LEARNSET_MASK_3;
    } else {
        mask = (1 << (tmHM - 96));
        param = SPECIES_DATA_TM_LEARNSET_MASK_4;
    }

    return (Species_GetFormValue(species, form, param) & mask) != 0;
}

void Pokemon_UpdateAbility(Pokemon *mon)
{
    BoxPokemon_UpdateAbility(&mon->box);
}

static void BoxPokemon_UpdateAbility(BoxPokemon *boxMon)
{
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    int species = BoxPokemon_GetData(boxMon, MON_DATA_SPECIES, NULL);
    int personality = BoxPokemon_GetData(boxMon, MON_DATA_PERSONALITY, NULL);
    int form = BoxPokemon_GetData(boxMon, MON_DATA_FORM, NULL);
    int ability1 = Species_GetFormValue(species, form, SPECIES_DATA_ABILITY_1);
    int ability2 = Species_GetFormValue(species, form, SPECIES_DATA_ABILITY_2);

    if (ability2 != ABILITY_NONE) {
        if (personality & 1) {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &ability2);
        } else {
            BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &ability1);
        }
    } else {
        BoxPokemon_SetData(boxMon, MON_DATA_ABILITY, &ability1);
    }
    BoxPokemon_EncryptData(boxMon, reencrypt);
}

void Pokemon_SetPersonality(Pokemon *mon, u32 personality)
{
    Pokemon *tmpMon = Pokemon_New(HEAP_ID_SYSTEM);
    Pokemon_Copy(mon, tmpMon);

    PokemonDataBlockA *tmpBlockA = BoxPokemon_GetDataBlock(&tmpMon->box, mon->box.personality, DATA_BLOCK_A);
    PokemonDataBlockB *tmpBlockB = BoxPokemon_GetDataBlock(&tmpMon->box, mon->box.personality, DATA_BLOCK_B);
    PokemonDataBlockC *tmpBlockC = BoxPokemon_GetDataBlock(&tmpMon->box, mon->box.personality, DATA_BLOCK_C);
    PokemonDataBlockD *tmpBlockD = BoxPokemon_GetDataBlock(&tmpMon->box, mon->box.personality, DATA_BLOCK_D);
    PokemonDataBlockA *blockA = BoxPokemon_GetDataBlock(&mon->box, personality, DATA_BLOCK_A);
    PokemonDataBlockB *blockB = BoxPokemon_GetDataBlock(&mon->box, personality, DATA_BLOCK_B);
    PokemonDataBlockC *blockC = BoxPokemon_GetDataBlock(&mon->box, personality, DATA_BLOCK_C);
    PokemonDataBlockD *blockD = BoxPokemon_GetDataBlock(&mon->box, personality, DATA_BLOCK_D);

    DECRYPT_BOX(&tmpMon->box);
    DECRYPT_PARTY(mon);
    DECRYPT_BOX(&mon->box);

    mon->box.personality = personality;

    *blockA = *tmpBlockA;
    *blockB = *tmpBlockB;
    *blockC = *tmpBlockC;
    *blockD = *tmpBlockD;

    mon->box.checksum = CHECKSUM(&mon->box);
    ENCRYPT_BOX(&mon->box);
    ENCRYPT_PARTY(mon);
    Heap_Free(tmpMon);
}

static void SpeciesData_LoadSpecies(int species, SpeciesData *speciesData)
{
    NARC_ReadWholeMemberByIndexPair(speciesData, NARC_INDEX_POKETOOL__PERSONAL__PL_PERSONAL, species);
}

static void SpeciesData_LoadForm(int species, int form, SpeciesData *speciesData)
{
    NARC_ReadWholeMemberByIndexPair(speciesData, NARC_INDEX_POKETOOL__PERSONAL__PL_PERSONAL, Species_GetFormNarcIndex(species, form));
}

static void Species_LoadEvolutions(int monSpecies, Evolution speciesEvolutions[MAX_MON_EVOLUTIONS])
{
    NARC_ReadWholeMemberByIndexPair(speciesEvolutions, NARC_INDEX_POKETOOL__PERSONAL__EVO, monSpecies);
}

static void MonEncryptSegment(void *data, u32 bytes, u32 seed)
{
    EncodeData(data, bytes, seed);
}

static void MonDecryptSegment(void *data, u32 bytes, u32 seed)
{
    DecodeData(data, bytes, seed);
}

static u16 Pokemon_GetDataChecksum(void *data, u32 size)
{
    int i;
    u16 *dataWords = data;
    u16 ret = 0;
    for (i = 0; i < size / 2; i++) {
        ret += dataWords[i];
    }
    return ret;
}

#define SUBSTRUCT_CASE(v1, v2, v3, v4)                     \
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
        SUBSTRUCT_CASE(0, 1, 2, 3)
    case 1:
    case 25:
        SUBSTRUCT_CASE(0, 1, 3, 2)
    case 2:
    case 26:
        SUBSTRUCT_CASE(0, 2, 1, 3)
    case 3:
    case 27:
        SUBSTRUCT_CASE(0, 3, 1, 2)
    case 4:
    case 28:
        SUBSTRUCT_CASE(0, 2, 3, 1)
    case 5:
    case 29:
        SUBSTRUCT_CASE(0, 3, 2, 1)
    case 6:
    case 30:
        SUBSTRUCT_CASE(1, 0, 2, 3)
    case 7:
    case 31:
        SUBSTRUCT_CASE(1, 0, 3, 2)
    case 8:
        SUBSTRUCT_CASE(2, 0, 1, 3)
    case 9:
        SUBSTRUCT_CASE(3, 0, 1, 2)
    case 10:
        SUBSTRUCT_CASE(2, 0, 3, 1)
    case 11:
        SUBSTRUCT_CASE(3, 0, 2, 1)
    case 12:
        SUBSTRUCT_CASE(1, 2, 0, 3)
    case 13:
        SUBSTRUCT_CASE(1, 3, 0, 2)
    case 14:
        SUBSTRUCT_CASE(2, 1, 0, 3)
    case 15:
        SUBSTRUCT_CASE(3, 1, 0, 2)
    case 16:
        SUBSTRUCT_CASE(2, 3, 0, 1)
    case 17:
        SUBSTRUCT_CASE(3, 2, 0, 1)
    case 18:
        SUBSTRUCT_CASE(1, 2, 3, 0)
    case 19:
        SUBSTRUCT_CASE(1, 3, 2, 0)
    case 20:
        SUBSTRUCT_CASE(2, 1, 3, 0)
    case 21:
        SUBSTRUCT_CASE(3, 1, 2, 0)
    case 22:
        SUBSTRUCT_CASE(2, 3, 1, 0)
    case 23:
        SUBSTRUCT_CASE(3, 2, 1, 0)
    }
    return result;
}

static int Species_GetFormNarcIndex(int monSpecies, int monForm)
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
    SPECIES_ARCEUS,
};

BOOL Species_IsBattleFrontierBanned(u16 species)
{
    for (u32 i = 0; i < BATTLE_FRONTIER_BANLIST_SIZE; i++) {
        if (species == sBattleFrontierBanlist[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

u16 BattleFrontier_GetBanlistEntry(u8 index)
{
    if (index >= BATTLE_FRONTIER_BANLIST_SIZE) {
        index = 0;
    }
    return sBattleFrontierBanlist[index];
}

BOOL Pokemon_IsBattleFrontierBanned(Pokemon *mon)
{
    u16 species = Pokemon_GetData(mon, MON_DATA_SPECIES, NULL);
    return Species_IsBattleFrontierBanned(species);
}

BOOL BoxPokemon_BelongsToPlayer(BoxPokemon *boxMon, TrainerInfo *player, enum HeapID heapID)
{
    u32 playerID = TrainerInfo_ID(player);
    u32 otID = BoxPokemon_GetData(boxMon, MON_DATA_OT_ID, NULL);
    u32 playerGender = TrainerInfo_Gender(player);
    u32 otGender = BoxPokemon_GetData(boxMon, MON_DATA_OT_GENDER, NULL);
    String *playerName = TrainerInfo_NameNewString(player, heapID);
    String *otName = String_Init(TRAINER_NAME_LEN + 1, heapID);
    BOOL ret = FALSE;
    BoxPokemon_GetData(boxMon, MON_DATA_OT_NAME_STRING, otName);
    if (playerID == otID && playerGender == otGender && String_Compare(playerName, otName) == 0) {
        ret = TRUE;
    }
    String_Free(otName);
    String_Free(playerName);
    return ret;
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
    BOOL reencrypt = BoxPokemon_DecryptData(boxMon);
    for (int i = 0; i < MAX_MON_MOVES; i++) {
        if (BoxPokemon_GetData(boxMon, MON_DATA_MOVE1 + i, NULL) != MOVE_NONE) {
            u8 pp = BoxPokemon_GetData(boxMon, MON_DATA_MOVE1_MAX_PP + i, NULL);
            BoxPokemon_SetData(boxMon, MON_DATA_MOVE1_PP + i, &pp);
        }
    }
    BoxPokemon_EncryptData(boxMon, reencrypt);
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
        MonDecryptSegment(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        MonDecryptSegment(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    BoxPokemon *boxMon = Pokemon_GetBoxMon(mon);

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
        ENCRYPT_PARTY(mon);
        ENCRYPT_BOX(&mon->box);
    }
}

void sub_02078E0C(UnkStruct_02078B40 *param0, Pokemon *mon)
{
    MI_CpuClearFast(mon, sizeof(Pokemon));

    BoxPokemon *boxMon = Pokemon_GetBoxMon(mon);

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

    ENCRYPT_PARTY(mon);
    mon->box.checksum = CHECKSUM(&mon->box);
    ENCRYPT_BOX(&mon->box);
}

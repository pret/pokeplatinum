#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_02007C10.h"
#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/box_pokemon.h"
#include "struct_defs/party_pokemon.h"
#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"
#include "struct_defs/pokemon_personal_data.h"
#include "struct_defs/pokemon_evolution_data.h"
#include "struct_defs/struct_020789BC.h"
#include "struct_defs/struct_020789F4.h"
#include "struct_defs/struct_02078B40.h"
#include "overlay005/struct_ov5_021DE5D0.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_020021B0.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "narc.h"
#include "message.h"
#include "unk_0200B29C.h"
#include "unk_0200C6E4.h"
#include "unk_0201378C.h"
#include "unk_02015F84.h"
#include "unk_02017038.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_02025E68.h"
#include "unk_02028124.h"
#include "unk_0202C9F4.h"
#include "pokemon.h"
#include "move_table.h"
#include "unk_02079170.h"
#include "party.h"
#include "item.h"
#include "unk_02092494.h"

#include "constants/pokemon.h"
#include "constants/species.h"
#include "constants/items.h"
#include "constants/moves.h"

static const s8 Unk_020F0695[][5] = {
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

static u32 GetMonDataAttribute(Pokemon *mon, int monDataAttribute, void *dest);
static u32 GetBoxMonDataAttribute(BoxPokemon *boxMon, int monDataAttribute, void *dest);
static void SetMonDataAttribute(Pokemon *mon, int monDataAttribute, const void *value);
static void SetBoxMonDataAttribute(BoxPokemon *boxMon, int monDataAttribute, const void *value);
static void IncreaseMonDataAttribute(Pokemon *mon, int monDataAttribute, int value);
static void IncreaseBoxMonDataAttribute(BoxPokemon *boxMon, int monDataAttribute, int value);
static u32 GetMonExpRateLevelExp(int monExpRate, int monLevel);
static u16 GetNatureAdjustedStatValue(u8 monNature, u16 monStatValue, u8 statType);
static void LoadMonPersonalData(int monSpecies, PokemonPersonalData *monPersonalData);
static void LoadMonFormPersonalData(int monSpecies, int monForm, PokemonPersonalData *monPersonalData);
static void LoadMonEvolutionData(int monSpecies, PokemonEvolutionData *monEvolutionData);
static void EncryptMonData(void *data, u32 bytes, u32 seed);
static void DecryptMonData(void *data, u32 bytes, u32 seed);
static u16 GetMonDataChecksum(void *data, u32 bytes);
static void * GetBoxMonDataBlock(BoxPokemon *boxMon, u32 personality, u8 dataBlockID);
static int GetMonFormNarcIndex(int monSpecies, int monForm);
static void sub_02076300(UnkStruct_02008A90 *param0, u16 monSpecies, u8 monGender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality);
static u8 sub_020767BC(u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality);

void ZeroMonData (Pokemon *mon)
{
    MI_CpuClearFast(mon, sizeof(Pokemon));
    EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
}

void ZeroBoxMonData (BoxPokemon *boxMon)
{
    MI_CpuClearFast(boxMon, sizeof(BoxPokemon));
    EncryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
}

int PokemonStructSize (void)
{
    return sizeof(Pokemon);
}

Pokemon * AllocMonZeroed (u32 heapID)
{
    Pokemon * mon = Heap_AllocFromHeap(heapID, sizeof(Pokemon));
    ZeroMonData(mon);
    return mon;
}

BOOL DecryptMon (Pokemon *mon)
{
    BOOL wasDecrypted;

    wasDecrypted = 0;

    if (mon->box.partyDecrypted == 0) {
        wasDecrypted = 1;
        GF_ASSERT(mon->box.boxDecrypted == 0);

        mon->box.partyDecrypted = 1;
        mon->box.boxDecrypted = 1;

        DecryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        DecryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    return wasDecrypted;
}

BOOL EncryptMon (Pokemon *mon, BOOL encrypt)
{
    BOOL wasEncrypted;

    wasEncrypted = 0;

    if ((mon->box.partyDecrypted == 1) && (encrypt == 1)) {
        wasEncrypted = 1;
        mon->box.partyDecrypted = 0;
        mon->box.boxDecrypted = 0;

        EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        mon->box.checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
        EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    return wasEncrypted;
}

BOOL DecryptBoxMon (BoxPokemon *boxMon)
{
    BOOL wasDecrypted;

    wasDecrypted = 0;

    if (boxMon->boxDecrypted == 0) {
        wasDecrypted = 1;
        boxMon->boxDecrypted = 1;
        DecryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }

    return wasDecrypted;
}

BOOL EncryptBoxMon (BoxPokemon *boxMon, BOOL encrypt)
{
    BOOL wasEncrypted;

    wasEncrypted = 0;

    if ((boxMon->boxDecrypted == 1) && (encrypt == 1)) {
        wasEncrypted = 1;

        boxMon->boxDecrypted = 0;
        boxMon->checksum = GetMonDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        EncryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }

    return wasEncrypted;
}

void sub_02073D80 (Pokemon *mon, int monSpecies, int monLevel, int monIVs, int useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID)
{
    u32 zero;
    UnkStruct_0202818C *v1;
    UnkStruct_0202CA28 v2;

    ZeroMonData(mon);

    sub_02073E18(&mon->box, monSpecies, monLevel, monIVs, useMonPersonalityParam, monPersonality, monOTIDSource, monOTID);
    EncryptMonData(&mon->party, sizeof(PartyPokemon), 0);
    EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    SetMonData(mon, MON_DATA_LEVEL, &monLevel);

    v1 = sub_0202818C(0);

    SetMonData(mon, MON_DATA_170, v1);
    Heap_FreeToHeap(v1);

    zero = 0;
    SetMonData(mon, MON_DATA_162, &zero);

    MI_CpuClearFast(&v2, sizeof(UnkStruct_0202CA28));

    SetMonData(mon, MON_DATA_171, &v2);
    CalculateMonLevelAndStats(mon);
}

void sub_02073E18 (BoxPokemon *boxMon, int monSpecies, int monLevel, int monIVs, int useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID)
{
    u32 v1, v2;
    BOOL reencrypt;

    ZeroBoxMonData(boxMon);

    reencrypt = DecryptBoxMon(boxMon);

    if (!useMonPersonalityParam) {
        monPersonality = (LCRNG_Next() | (LCRNG_Next() << 16));
    }

    SetBoxMonData(boxMon, MON_DATA_PERSONALITY, &monPersonality);

    if (monOTIDSource == 2) {
        do {
            monOTID = (LCRNG_Next() | (LCRNG_Next() << 16));
        } while ((((monOTID & 0xffff0000) >> 16) ^ (monOTID & 0xffff) ^ ((monPersonality & 0xffff0000) >> 16) ^ (monPersonality & 0xffff)) < 8);
    } else if (monOTIDSource != 1) {
        monOTID = 0;
    }

    SetBoxMonData(boxMon, MON_DATA_OT_ID, &monOTID);
    SetBoxMonData(boxMon, MON_DATA_LANGUAGE, &Unk_020E4C44);
    SetBoxMonData(boxMon, MON_DATA_SPECIES, &monSpecies);
    SetBoxMonData(boxMon, MON_DATA_179, NULL);

    v1 = GetMonSpeciesLevelExp(monSpecies, monLevel);
    SetBoxMonData(boxMon, MON_DATA_EXP, &v1);

    v1 = GetMonSpeciesPersonalDataAttribute(monSpecies, MON_DATA_PERSONAL_BASE_FRIENDSHIP);
    SetBoxMonData(boxMon, MON_DATA_FRIENDSHIP, &v1);

    SetBoxMonData(boxMon, MON_DATA_MET_LEVEL, &monLevel);
    SetBoxMonData(boxMon, MON_DATA_MET_GAME, &Unk_020E4C40);

    v1 = 4;
    SetBoxMonData(boxMon, MON_DATA_POKEBALL, &v1);

    if (monIVs < 32) {
        SetBoxMonData(boxMon, MON_DATA_HP_IV, &monIVs);
        SetBoxMonData(boxMon, MON_DATA_ATK_IV, &monIVs);
        SetBoxMonData(boxMon, MON_DATA_DEF_IV, &monIVs);
        SetBoxMonData(boxMon, MON_DATA_SPEED_IV, &monIVs);
        SetBoxMonData(boxMon, MON_DATA_SPATK_IV, &monIVs);
        SetBoxMonData(boxMon, MON_DATA_SPDEF_IV, &monIVs);
    } else {
        v1 = LCRNG_Next();
        v2 = (v1 & (0x1f << 0)) >> 0;
        SetBoxMonData(boxMon, MON_DATA_HP_IV, &v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        SetBoxMonData(boxMon, MON_DATA_ATK_IV, &v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        SetBoxMonData(boxMon, MON_DATA_DEF_IV, &v2);

        v1 = LCRNG_Next();
        v2 = (v1 & (0x1f << 0)) >> 0;
        SetBoxMonData(boxMon, MON_DATA_SPEED_IV, &v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        SetBoxMonData(boxMon, MON_DATA_SPATK_IV, &v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        SetBoxMonData(boxMon, MON_DATA_SPDEF_IV, &v2);
    }

    v1 = GetMonSpeciesPersonalDataAttribute(monSpecies, MON_DATA_PERSONAL_ABILITY_1);
    v2 = GetMonSpeciesPersonalDataAttribute(monSpecies, MON_DATA_PERSONAL_ABILITY_2);

    if (v2 != 0) {
        if (monPersonality & 1) {
            SetBoxMonData(boxMon, MON_DATA_ABILITY, &v2);
        } else {
            SetBoxMonData(boxMon, MON_DATA_ABILITY, &v1);
        }
    } else {
        SetBoxMonData(boxMon, MON_DATA_ABILITY, &v1);
    }

    v1 = GetBoxMonGender(boxMon);

    SetBoxMonData(boxMon, MON_DATA_GENDER, &v1);
    SetBoxMonDefaultMoves(boxMon);
    EncryptBoxMon(boxMon, reencrypt);
}

void sub_02074044 (Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 monNature)
{
    u32 monPersonality;

    do {
        monPersonality = (LCRNG_Next() | (LCRNG_Next() << 16));
    } while (monNature != GetNatureFromPersonality(monPersonality));

    sub_02073D80(mon, monSpecies, monLevel, monIVs, 1, monPersonality, 0, 0);
}

void sub_02074088 (Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 param4, u8 param5, u8 param6)
{
    u32 monPersonality;
    u16 unownLetter;

    if ((param6) && (param6 < 29)) {
        do {
            monPersonality = (LCRNG_Next() | (LCRNG_Next() << 16));
            unownLetter = (((monPersonality & 0x3000000) >> 18) | ((monPersonality & 0x30000) >> 12) | ((monPersonality & 0x300) >> 6) | (monPersonality & 0x3)) % 28;
        } while ((param5 != GetNatureFromPersonality(monPersonality)) || (param4 != GetMonPersonalityGender(monSpecies, monPersonality)) || (unownLetter != (param6 - 1)));
    } else {
        monPersonality = sub_02074128(monSpecies, param4, param5);
    }

    sub_02073D80(mon, monSpecies, monLevel, monIVs, 1, monPersonality, 0, 0);
}

u32 sub_02074128 (u16 monSpecies, u8 param1, u8 param2)
{
    u8 monGenderChance;
    u32 result;

    monGenderChance = GetMonSpeciesPersonalDataAttribute(monSpecies, MON_DATA_PERSONAL_GENDER);

    switch (monGenderChance) {
    case 0:
    case 254:
    case 255:
        result = param2;
        break;
    default:
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

void sub_02074158 (Pokemon *mon, u16 monSpecies, u8 monLevel, u32 monCombinedIVs, u32 monPersonality)
{
    sub_02073D80(mon, monSpecies, monLevel, 0, 1, monPersonality, 0, 0);
    SetMonData(mon, MON_DATA_COMBINED_IVS, &monCombinedIVs);
    CalculateMonLevelAndStats(mon);
}

void CalculateMonLevelAndStats (Pokemon *mon)
{
    int monLevel;
    BOOL reencrypt;

    reencrypt = DecryptMon(mon);
    monLevel = GetMonLevel(mon);

    SetMonData(mon, MON_DATA_LEVEL, &monLevel);
    CalculateMonStats(mon);
    EncryptMon(mon, reencrypt);
}

void CalculateMonStats (Pokemon *mon)
{
    int monMaxHp, monCurrentHp, newMaxHp;
    int newAtk, newDef, newSpeed, newSpAtk, newSpDef;
    int monHpIV, monAtkIV, monDefIV, monSpeedIV, monSpAtkIV, monSpDefIV;
    int monHpEV, monAtkEV, monDefEV, monSpeedEV, monSpAtkEV, monSpDefEV;
    int monSpecies;
    int monLevel;
    int monForm;
    PokemonPersonalData *monPersonalData;
    BOOL reencrypt;

    reencrypt = DecryptMon(mon);

    monLevel = GetMonData(mon, MON_DATA_LEVEL, 0);
    monMaxHp = GetMonData(mon, MON_DATA_MAX_HP, 0);
    monCurrentHp = GetMonData(mon, MON_DATA_CURRENT_HP, 0);
    monHpIV = GetMonData(mon, MON_DATA_HP_IV, 0);
    monHpEV = GetMonData(mon, MON_DATA_HP_EV, 0);
    monAtkIV = GetMonData(mon, MON_DATA_ATK_IV, 0);
    monAtkEV = GetMonData(mon, MON_DATA_ATK_EV, 0);
    monDefIV = GetMonData(mon, MON_DATA_DEF_IV, 0);
    monDefEV = GetMonData(mon, MON_DATA_DEF_EV, 0);
    monSpeedIV = GetMonData(mon, MON_DATA_SPEED_IV, 0);
    monSpeedEV = GetMonData(mon, MON_DATA_SPEED_EV, 0);
    monSpAtkIV = GetMonData(mon, MON_DATA_SPATK_IV, 0);
    monSpAtkEV = GetMonData(mon, MON_DATA_SPATK_EV, 0);
    monSpDefIV = GetMonData(mon, MON_DATA_SPDEF_IV, 0);
    monSpDefEV = GetMonData(mon, MON_DATA_SPDEF_EV, 0);
    monForm = GetMonData(mon, MON_DATA_FORM, 0);
    monSpecies = GetMonData(mon, MON_DATA_SPECIES, 0);
    monPersonalData = Heap_AllocFromHeap(0, sizeof(PokemonPersonalData));

    LoadMonFormPersonalData(monSpecies, monForm, monPersonalData);

    if (monSpecies == SPECIES_SHEDINJA) {
        newMaxHp = 1;
    } else {
        newMaxHp = ((2 * monPersonalData->baseHp + monHpIV + monHpEV / 4) * monLevel / 100 + monLevel + 10);
    }

    SetMonData(mon, MON_DATA_MAX_HP, &newMaxHp);

    newAtk = ((2 * monPersonalData->baseAtk + monAtkIV + monAtkEV / 4) * monLevel / 100 + 5);
    newAtk = GetNatureAdjustedStatValue(GetMonNature(mon), newAtk, 0x1);

    SetMonData(mon, MON_DATA_ATK, &newAtk);

    newDef = ((2 * monPersonalData->baseDef + monDefIV + monDefEV / 4) * monLevel / 100 + 5);
    newDef = GetNatureAdjustedStatValue(GetMonNature(mon), newDef, 0x2);

    SetMonData(mon, MON_DATA_DEF, &newDef);

    newSpeed = ((2 * monPersonalData->baseSpeed + monSpeedIV + monSpeedEV / 4) * monLevel / 100 + 5);
    newSpeed = GetNatureAdjustedStatValue(GetMonNature(mon), newSpeed, 0x3);

    SetMonData(mon, MON_DATA_SPEED, &newSpeed);

    newSpAtk = ((2 * monPersonalData->baseSpAtk + monSpAtkIV + monSpAtkEV / 4) * monLevel / 100 + 5);
    newSpAtk = GetNatureAdjustedStatValue(GetMonNature(mon), newSpAtk, 0x4);

    SetMonData(mon, MON_DATA_SP_ATK, &newSpAtk);

    newSpDef = ((2 * monPersonalData->baseSpDef + monSpDefIV + monSpDefEV / 4) * monLevel / 100 + 5);
    newSpDef = GetNatureAdjustedStatValue(GetMonNature(mon), newSpDef, 0x5);

    SetMonData(mon, MON_DATA_SP_DEF, &newSpDef);
    Heap_FreeToHeap(monPersonalData);

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
        SetMonData(mon, MON_DATA_CURRENT_HP, &monCurrentHp);
    }

    EncryptMon(mon, reencrypt);
}

u32 GetMonData (Pokemon *mon, int monDataAttribute, void *dest)
{
    u32 result;
    u16 checksum;

    if (mon->box.partyDecrypted == 0) {
        DecryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        DecryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

        checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT((checksum == mon->box.checksum));
            mon->box.invalidData = 1;
        }
    }

    result = GetMonDataAttribute(mon, monDataAttribute, dest);

    if (mon->box.partyDecrypted == 0) {
        EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    return result;
}

static u32 GetMonDataAttribute (Pokemon *mon, int monDataAttribute, void *dest)
{
    u32 result = 0;

    switch (monDataAttribute) {
    case MON_DATA_160:
        result = mon->party.unk_00;
        break;
    case MON_DATA_LEVEL:
        result = mon->party.level;
        break;
    case MON_DATA_162:
        result = mon->party.unk_05;
        break;
    case MON_DATA_CURRENT_HP:
        result = mon->party.unk_06;
        break;
    case MON_DATA_MAX_HP:
        result = mon->party.unk_08;
        break;
    case MON_DATA_ATK:
        result = mon->party.unk_0A;
        break;
    case MON_DATA_DEF:
        result = mon->party.unk_0C;
        break;
    case MON_DATA_SPEED:
        result = mon->party.unk_0E;
        break;
    case MON_DATA_SP_ATK:
        result = mon->party.unk_10;
        break;
    case MON_DATA_SP_DEF:
        result = mon->party.unk_12;
        break;
    case MON_DATA_170:
        sub_020281A0(&mon->party.unk_14, dest);
        result = 1;
        break;
    case MON_DATA_171:
        sub_0202CA10(&mon->party.unk_4C, dest);
        result = 1;
        break;
    default:
        result = GetBoxMonDataAttribute(&mon->box, monDataAttribute, dest);
        break;
    }

    return result;
}

u32 GetBoxMonData (BoxPokemon *boxMon, int monDataAttribute, void *dest)
{
    u16 checksum;
    u32 result;

    if (boxMon->boxDecrypted == 0) {
        DecryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
        checksum = GetMonDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != boxMon->checksum) {
            GF_ASSERT((checksum == boxMon->checksum));
            boxMon->invalidData = 1;
        }
    }

    result = GetBoxMonDataAttribute(boxMon, monDataAttribute, dest);

    if (boxMon->boxDecrypted == 0) {
        EncryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }

    return result;
}

static u32 GetBoxMonDataAttribute (BoxPokemon *boxMon, int monDataAttribute, void *dest)
{
    u32 result = 0;
    u64 v1;
    PokemonDataBlockA *monDataBlockA;
    PokemonDataBlockB *monDataBlockB;
    PokemonDataBlockC *monDataBlockC;
    PokemonDataBlockD *monDataBlockD;

    monDataBlockA = GetBoxMonDataBlock(boxMon, boxMon->personality, 0);
    monDataBlockB = GetBoxMonDataBlock(boxMon, boxMon->personality, 1);
    monDataBlockC = GetBoxMonDataBlock(boxMon, boxMon->personality, 2);
    monDataBlockD = GetBoxMonDataBlock(boxMon, boxMon->personality, 3);

    switch (monDataAttribute) {
    default:
        result = 0;
        break;
    case MON_DATA_PERSONALITY:
        result = boxMon->personality;
        break;
    case MON_DATA_1:
        result = boxMon->partyDecrypted;
        break;
    case MON_DATA_2:
        result = boxMon->boxDecrypted;
        break;
    case MON_DATA_3:
        result = boxMon->invalidData;
        break;
    case MON_DATA_4:
        result = boxMon->checksum;
        break;
    case MON_DATA_172:
        result = (monDataBlockA->species != SPECIES_NONE);
        break;
    case MON_DATA_173:
        if (boxMon->invalidData) {
            result = boxMon->invalidData;
        } else {
            result = monDataBlockB->isEgg;
        }
        break;
    case MON_DATA_SPECIES_EGG:
        result = monDataBlockA->species;

        if (result == 0) {
            break;
        } else if ((monDataBlockB->isEgg) || (boxMon->invalidData)) {
            result = SPECIES_EGG;
        }
        break;
    case MON_DATA_LEVEL:
        result = GetMonSpeciesLevel(monDataBlockA->species, monDataBlockA->exp);
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
    case MON_DATA_11:
        result = monDataBlockA->unk_0E;
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
    case MON_DATA_25:
    case MON_DATA_26:
    case MON_DATA_27:
    case MON_DATA_28:
    case MON_DATA_29:
    case MON_DATA_30:
    case MON_DATA_31:
    case MON_DATA_32:
    case MON_DATA_33:
    case MON_DATA_34:
    case MON_DATA_35:
    case MON_DATA_36:
    case MON_DATA_37:
    case MON_DATA_38:
    case MON_DATA_39:
    case MON_DATA_40:
    case MON_DATA_41:
    case MON_DATA_42:
    case MON_DATA_43:
    case MON_DATA_44:
    case MON_DATA_45:
    case MON_DATA_46:
    case MON_DATA_47:
    case MON_DATA_48:
    case MON_DATA_49:
    case MON_DATA_50:
    case MON_DATA_51:
    case MON_DATA_52:
    case MON_DATA_53:
        v1 = 1;
        result = ((monDataBlockA->unk_1C & (v1 << monDataAttribute - MON_DATA_25)) != 0);
        break;
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        result = monDataBlockB->moves[monDataAttribute - MON_DATA_MOVE1];
        break;
    case MON_DATA_MOVE1_CUR_PP:
    case MON_DATA_MOVE2_CUR_PP:
    case MON_DATA_MOVE3_CUR_PP:
    case MON_DATA_MOVE4_CUR_PP:
        result = monDataBlockB->moveCurrentPPs[monDataAttribute - MON_DATA_MOVE1_CUR_PP];
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        result = monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_PP_UPS];
        break;
    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        result = MoveTable_CalcMaxPP(monDataBlockB->moves[monDataAttribute - MON_DATA_MOVE1_MAX_PP], monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_MAX_PP]);
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
    case MON_DATA_77:
        result = monDataBlockB->unk_10_31;
        break;
    case MON_DATA_78:
    case MON_DATA_79:
    case MON_DATA_80:
    case MON_DATA_81:
    case MON_DATA_82:
    case MON_DATA_83:
    case MON_DATA_84:
    case MON_DATA_85:
    case MON_DATA_86:
    case MON_DATA_87:
    case MON_DATA_88:
    case MON_DATA_89:
    case MON_DATA_90:
    case MON_DATA_91:
    case MON_DATA_92:
    case MON_DATA_93:
    case MON_DATA_94:
    case MON_DATA_95:
    case MON_DATA_96:
    case MON_DATA_97:
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
        v1 = 1;
        result = ((monDataBlockB->unk_14 & (v1 << monDataAttribute - MON_DATA_78)) != 0);
        break;
    case MON_DATA_FATEFUL_ENCOUNTER:
        result = monDataBlockB->fatefulEncounter;
        break;
    case MON_DATA_GENDER:
        result = GetMonPersonalityGender(monDataBlockA->species, boxMon->personality);
        monDataBlockB->gender = result;
        boxMon->checksum = GetMonDataChecksum(&boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);
        break;
    case MON_DATA_FORM:
        result = monDataBlockB->form;
        break;
    case MON_DATA_113:
        result = monDataBlockB->unk_19;
        break;
    case MON_DATA_114:
        result = monDataBlockB->unk_1A;
        break;
    case MON_DATA_117:
        if (boxMon->invalidData) {
            MessageLoader_GetSpeciesName(495, 0, dest);
        } else {
            u16 *v6 = dest;

            for (result = 0; result < 10; result++) {
                v6[result] = monDataBlockC->unk_00[result];
            }

            v6[result] = 0xffff;
        }
        break;
    case MON_DATA_120:
        result = monDataBlockB->unk_10_31;
    case MON_DATA_119:
        if (boxMon->invalidData) {
            Strbuf *strbuf = sub_0200B32C(495, 0);

            Strbuf_Copy(dest, strbuf);
            Strbuf_Free(strbuf);
        } else {
            Strbuf_CopyChars(dest, monDataBlockC->unk_00);
        }
        break;
    case MON_DATA_121:
        result = monDataBlockC->unk_16;
        break;
    case MON_DATA_MET_GAME:
        result = monDataBlockC->originGame;
        break;
    case MON_DATA_123:
    case MON_DATA_124:
    case MON_DATA_125:
    case MON_DATA_126:
    case MON_DATA_127:
    case MON_DATA_128:
    case MON_DATA_129:
    case MON_DATA_130:
    case MON_DATA_131:
    case MON_DATA_132:
    case MON_DATA_133:
    case MON_DATA_134:
    case MON_DATA_135:
    case MON_DATA_136:
    case MON_DATA_137:
    case MON_DATA_138:
    case MON_DATA_139:
    case MON_DATA_140:
    case MON_DATA_141:
    case MON_DATA_142:
    case MON_DATA_143:
        v1 = 1;
        result = ((monDataBlockC->unk_18 & (v1 << monDataAttribute - MON_DATA_123)) != 0);
        break;
    case MON_DATA_144:
        u16 *v8 = dest;

        for (result = 0; result < 7; result++) {
            v8[result] = monDataBlockD->unk_00[result];
        }

        v8[result] = 0xffff;
        break;
    case MON_DATA_145:
        Strbuf_CopyChars(dest, monDataBlockD->unk_00);
        break;
    case MON_DATA_146:
        result = monDataBlockD->unk_10;
        break;
    case MON_DATA_147:
        result = monDataBlockD->unk_11;
        break;
    case MON_DATA_148:
        result = monDataBlockD->unk_12;
        break;
    case MON_DATA_149:
        result = monDataBlockD->unk_13;
        break;
    case MON_DATA_150:
        result = monDataBlockD->unk_14;
        break;
    case MON_DATA_151:
        result = monDataBlockD->unk_15;
        break;
    case MON_DATA_152:
    case MON_DATA_115:
        if ((monDataBlockD->unk_16 == 3002) && (monDataBlockB->unk_1C)) {
            result = monDataBlockB->unk_1C;
        } else {
            result = monDataBlockD->unk_16;
        }
        break;
    case MON_DATA_153:
    case MON_DATA_116:
        if ((monDataBlockD->unk_18 == 3002) && (monDataBlockB->unk_1E)) {
            result = monDataBlockB->unk_1E;
        } else {
            result = monDataBlockD->unk_18;
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
    case MON_DATA_158:
        result = monDataBlockD->unk_1D;
        break;
    case MON_DATA_159:
        result = monDataBlockD->unk_1E;
        break;
    case MON_DATA_COMBINED_IVS:
        result = (monDataBlockB->hpIV << 0) | (monDataBlockB->atkIV << 5) | (monDataBlockB->defIV << 10) | (monDataBlockB->speedIV << 15) | (monDataBlockB->spAtkIV << 20) | (monDataBlockB->spDefIV << 25);
        break;
    case MON_DATA_176:
        if (((monDataBlockA->species == SPECIES_NIDORAN_F) || (monDataBlockA->species == SPECIES_NIDORAN_M)) && (monDataBlockB->unk_10_31 == 0)) {
            result = 0;
        } else {
            result = 1;
        }
        break;
    case MON_DATA_177:
    case MON_DATA_178:
        if ((monDataBlockA->species == SPECIES_ARCEUS) && (monDataBlockA->ability == 121)) {
            result = GetArceusItemType(Item_LoadParam(monDataBlockA->heldItem, 1, 0));
        } else {
            result = GetMonFormPersonalDataAttribute(monDataBlockA->species, monDataBlockB->form, 6 + (monDataAttribute - 177));
        }
        break;
    case MON_DATA_179:
        MessageLoader_GetSpeciesName(monDataBlockA->species, 0, dest);
        break;
    }

    return result;
}

void SetMonData (Pokemon *mon, int monDataAttribute, const void *value)
{
    u16 checksum;

    if (mon->box.partyDecrypted == 0) {
        DecryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        DecryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
        checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT((checksum == mon->box.checksum));
            mon->box.invalidData = 1;
            EncryptMonData(mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
            return;
        }
    }

    SetMonDataAttribute(mon, monDataAttribute, value);

    if (mon->box.partyDecrypted == 0) {
        EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        mon->box.checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
        EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }
}

static void SetMonDataAttribute (Pokemon *mon, int monDataAttribute, const void *value)
{
    u32 *u32Value = value;
    u16 *u16Value = value;
    u8 *u8Value = value;

    switch (monDataAttribute) {
    case MON_DATA_160:
        mon->party.unk_00 = u32Value[0];
        break;
    case MON_DATA_LEVEL:
        mon->party.level = u8Value[0];
        break;
    case MON_DATA_162:
        mon->party.unk_05 = u8Value[0];
        break;
    case MON_DATA_CURRENT_HP:
        mon->party.unk_06 = u16Value[0];
        break;
    case MON_DATA_MAX_HP:
        mon->party.unk_08 = u16Value[0];
        break;
    case MON_DATA_ATK:
        mon->party.unk_0A = u16Value[0];
        break;
    case MON_DATA_DEF:
        mon->party.unk_0C = u16Value[0];
        break;
    case MON_DATA_SPEED:
        mon->party.unk_0E = u16Value[0];
        break;
    case MON_DATA_SP_ATK:
        mon->party.unk_10 = u16Value[0];
        break;
    case MON_DATA_SP_DEF:
        mon->party.unk_12 = u16Value[0];
        break;
    case MON_DATA_170:
        sub_020281A0(value, &mon->party.unk_14);
        break;
    case MON_DATA_171:
        sub_0202CA10(value, &mon->party.unk_4C);
        break;
    default:
        SetBoxMonDataAttribute(&mon->box, monDataAttribute, value);
        break;
    }
}

void SetBoxMonData (BoxPokemon *boxMon, int monDataAttribute, const void *value)
{
    u16 checksum;

    if (boxMon->boxDecrypted == 0) {
        DecryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
        checksum = GetMonDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != boxMon->checksum) {
            GF_ASSERT((checksum == boxMon->checksum));
            boxMon->invalidData = 1;
            EncryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
            return;
        }
    }

    SetBoxMonDataAttribute(boxMon, monDataAttribute, value);

    if (boxMon->boxDecrypted == 0) {
        boxMon->checksum = GetMonDataChecksum(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4);
        EncryptMonData(boxMon->dataBlocks, sizeof(PokemonDataBlock) * 4, boxMon->checksum);
    }
}

static void SetBoxMonDataAttribute (BoxPokemon *boxMon, int monDataAttribute, const void *value)
{
    int i;
    u64 v1;
    u16 v2;
    u32 *u32Value = value;
    u16 *u16Value = value;
    u8 *u8Value = value;
    PokemonDataBlockA *monDataBlockA;
    PokemonDataBlockB *monDataBlockB;
    PokemonDataBlockC *monDataBlockC;
    PokemonDataBlockD *monDataBlockD;

    monDataBlockA = GetBoxMonDataBlock(boxMon, boxMon->personality, 0);
    monDataBlockB = GetBoxMonDataBlock(boxMon, boxMon->personality, 1);
    monDataBlockC = GetBoxMonDataBlock(boxMon, boxMon->personality, 2);
    monDataBlockD = GetBoxMonDataBlock(boxMon, boxMon->personality, 3);

    switch (monDataAttribute) {
    case MON_DATA_PERSONALITY:
        boxMon->personality = u32Value[0];
        break;
    case MON_DATA_1:
        GF_ASSERT(0);
        boxMon->partyDecrypted = u8Value[0];
        break;
    case MON_DATA_2:
        GF_ASSERT(0);
        boxMon->boxDecrypted = u8Value[0];
        break;
    case MON_DATA_3:
        boxMon->invalidData = u8Value[0];
        break;
    case MON_DATA_4:
        boxMon->checksum = u16Value[0];
        break;
    case MON_DATA_SPECIES:
        monDataBlockA->species = u16Value[0];
        break;
    case MON_DATA_HELD_ITEM:
        monDataBlockA->heldItem = u16Value[0];
        break;
    case MON_DATA_OT_ID:
        monDataBlockA->otID = u32Value[0];
        break;
    case MON_DATA_EXP:
        monDataBlockA->exp = u32Value[0];
        break;
    case MON_DATA_FRIENDSHIP:
        monDataBlockA->friendship = u8Value[0];
        break;
    case MON_DATA_ABILITY:
        monDataBlockA->ability = u8Value[0];
        break;
    case MON_DATA_11:
        monDataBlockA->unk_0E = u8Value[0];
        break;
    case MON_DATA_LANGUAGE:
        monDataBlockA->originLanguage = u8Value[0];
        break;
    case MON_DATA_HP_EV:
        monDataBlockA->hpEV = u8Value[0];
        break;
    case MON_DATA_ATK_EV:
        monDataBlockA->atkEV = u8Value[0];
        break;
    case MON_DATA_DEF_EV:
        monDataBlockA->defEV = u8Value[0];
        break;
    case MON_DATA_SPEED_EV:
        monDataBlockA->speedEV = u8Value[0];
        break;
    case MON_DATA_SPATK_EV:
        monDataBlockA->spAtkEV = u8Value[0];
        break;
    case MON_DATA_SPDEF_EV:
        monDataBlockA->spDefEV = u8Value[0];
        break;
    case MON_DATA_COOL:
        monDataBlockA->cool = u8Value[0];
        break;
    case MON_DATA_BEAUTY:
        monDataBlockA->beauty = u8Value[0];
        break;
    case MON_DATA_CUTE:
        monDataBlockA->cute = u8Value[0];
        break;
    case MON_DATA_SMART:
        monDataBlockA->smart = u8Value[0];
        break;
    case MON_DATA_TOUGH:
        monDataBlockA->tough = u8Value[0];
        break;
    case MON_DATA_SHEEN:
        monDataBlockA->sheen = u8Value[0];
        break;
    case MON_DATA_25:
    case MON_DATA_26:
    case MON_DATA_27:
    case MON_DATA_28:
    case MON_DATA_29:
    case MON_DATA_30:
    case MON_DATA_31:
    case MON_DATA_32:
    case MON_DATA_33:
    case MON_DATA_34:
    case MON_DATA_35:
    case MON_DATA_36:
    case MON_DATA_37:
    case MON_DATA_38:
    case MON_DATA_39:
    case MON_DATA_40:
    case MON_DATA_41:
    case MON_DATA_42:
    case MON_DATA_43:
    case MON_DATA_44:
    case MON_DATA_45:
    case MON_DATA_46:
    case MON_DATA_47:
    case MON_DATA_48:
    case MON_DATA_49:
    case MON_DATA_50:
    case MON_DATA_51:
    case MON_DATA_52:
    case MON_DATA_53:
        v1 = 1 << (monDataAttribute - MON_DATA_25);

        if (u8Value[0]) {
            monDataBlockA->unk_1C |= v1;
        } else {
            monDataBlockA->unk_1C &= (v1 ^ 0xffffffff);
        }
        break;
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
        monDataBlockB->moves[monDataAttribute - MON_DATA_MOVE1] = u16Value[0];
        break;
    case MON_DATA_MOVE1_CUR_PP:
    case MON_DATA_MOVE2_CUR_PP:
    case MON_DATA_MOVE3_CUR_PP:
    case MON_DATA_MOVE4_CUR_PP:
        monDataBlockB->moveCurrentPPs[monDataAttribute - MON_DATA_MOVE1_CUR_PP] = u8Value[0];
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_PP_UPS] = u8Value[0];
        break;
    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;
    case MON_DATA_HP_IV:
        monDataBlockB->hpIV = u8Value[0];
        break;
    case MON_DATA_ATK_IV:
        monDataBlockB->atkIV = u8Value[0];
        break;
    case MON_DATA_DEF_IV:
        monDataBlockB->defIV = u8Value[0];
        break;
    case MON_DATA_SPEED_IV:
        monDataBlockB->speedIV = u8Value[0];
        break;
    case MON_DATA_SPATK_IV:
        monDataBlockB->spAtkIV = u8Value[0];
        break;
    case MON_DATA_SPDEF_IV:
        monDataBlockB->spDefIV = u8Value[0];
        break;
    case MON_DATA_IS_EGG:
        monDataBlockB->isEgg = u8Value[0];
        break;
    case MON_DATA_77:
        monDataBlockB->unk_10_31 = u8Value[0];
        break;
    case MON_DATA_78:
    case MON_DATA_79:
    case MON_DATA_80:
    case MON_DATA_81:
    case MON_DATA_82:
    case MON_DATA_83:
    case MON_DATA_84:
    case MON_DATA_85:
    case MON_DATA_86:
    case MON_DATA_87:
    case MON_DATA_88:
    case MON_DATA_89:
    case MON_DATA_90:
    case MON_DATA_91:
    case MON_DATA_92:
    case MON_DATA_93:
    case MON_DATA_94:
    case MON_DATA_95:
    case MON_DATA_96:
    case MON_DATA_97:
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
        v1 = 1 << (monDataAttribute - MON_DATA_78);

        if (u8Value[0]) {
            monDataBlockB->unk_14 |= v1;
        } else {
            monDataBlockB->unk_14 &= (v1 ^ 0xffffffff);
        }
        break;
    case MON_DATA_FATEFUL_ENCOUNTER:
        monDataBlockB->fatefulEncounter = u8Value[0];
        break;
    case MON_DATA_GENDER:
        monDataBlockB->gender = GetMonPersonalityGender(monDataBlockA->species, boxMon->personality);
        break;
    case MON_DATA_FORM:
        monDataBlockB->form = u8Value[0];
        break;
    case MON_DATA_113:
        monDataBlockB->unk_19 = u8Value[0];
        break;
    case MON_DATA_114:
        monDataBlockB->unk_1A = u16Value[0];
        break;
    case MON_DATA_118:
    {
        u16 v10[10 + 1];

        MessageLoader_GetSpeciesName(monDataBlockA->species, 0, &v10[0]);
        monDataBlockB->unk_10_31 = sub_0200220C(v10, &u16Value[0]);
    }
    case MON_DATA_117:
        for (i = 0; i < NELEMS(monDataBlockC->unk_00); i++) {
            monDataBlockC->unk_00[i] = u16Value[i];
        }
        break;
    case MON_DATA_120:
    {
        u16 v11[10 + 1];
        u16 v12[10 + 1];

        MessageLoader_GetSpeciesName(monDataBlockA->species, 0, &v11[0]);
        Strbuf_ToChars(value, &v12[0], NELEMS(v12));

        monDataBlockB->unk_10_31 = sub_0200220C(v11, v12);
    }
    case MON_DATA_119:
        Strbuf_ToChars(value, monDataBlockC->unk_00, NELEMS(monDataBlockC->unk_00));
        break;
    case MON_DATA_121:
        monDataBlockC->unk_16 = u8Value[0];
        break;
    case MON_DATA_MET_GAME:
        monDataBlockC->originGame = u8Value[0];
        break;
    case MON_DATA_123:
    case MON_DATA_124:
    case MON_DATA_125:
    case MON_DATA_126:
    case MON_DATA_127:
    case MON_DATA_128:
    case MON_DATA_129:
    case MON_DATA_130:
    case MON_DATA_131:
    case MON_DATA_132:
    case MON_DATA_133:
    case MON_DATA_134:
    case MON_DATA_135:
    case MON_DATA_136:
    case MON_DATA_137:
    case MON_DATA_138:
    case MON_DATA_139:
    case MON_DATA_140:
    case MON_DATA_141:
    case MON_DATA_142:
    case MON_DATA_143:
        v1 = 1 << (monDataAttribute - MON_DATA_123);

        if (u8Value[0]) {
            monDataBlockC->unk_18 |= v1;
        } else {
            monDataBlockC->unk_18 &= (v1 ^ 0xffffffffffffffff);
        }
        break;
    case MON_DATA_144:
        for (i = 0; i < NELEMS(monDataBlockD->unk_00); i++) {
            monDataBlockD->unk_00[i] = u16Value[i];
        }
        break;
    case MON_DATA_145:
        Strbuf_ToChars(value, monDataBlockD->unk_00, NELEMS(monDataBlockD->unk_00));
        break;
    case MON_DATA_146:
        monDataBlockD->unk_10 = u8Value[0];
        break;
    case MON_DATA_147:
        monDataBlockD->unk_11 = u8Value[0];
        break;
    case MON_DATA_148:
        monDataBlockD->unk_12 = u8Value[0];
        break;
    case MON_DATA_149:
        monDataBlockD->unk_13 = u8Value[0];
        break;
    case MON_DATA_150:
        monDataBlockD->unk_14 = u8Value[0];
        break;
    case MON_DATA_151:
        monDataBlockD->unk_15 = u8Value[0];
        break;
    case MON_DATA_152:
    case MON_DATA_115:
        if ((u16Value[0] == 0) || (sub_0201708C(u16Value[0]) == 1)) {
            monDataBlockD->unk_16 = u16Value[0];
            monDataBlockB->unk_1C = u16Value[0];
        } else {
            monDataBlockD->unk_16 = 3002;
            monDataBlockB->unk_1C = u16Value[0];
        }
        break;
    case MON_DATA_153:
    case MON_DATA_116:
        if ((u16Value[0] == 0) || (sub_0201708C(u16Value[0]) == 1)) {
            monDataBlockD->unk_18 = u16Value[0];
            monDataBlockB->unk_1E = u16Value[0];
        } else {
            monDataBlockD->unk_18 = 3002;
            monDataBlockB->unk_1E = u16Value[0];
        }
        break;
    case MON_DATA_POKERUS:
        monDataBlockD->pokerus = u8Value[0];
        break;
    case MON_DATA_POKEBALL:
        monDataBlockD->pokeball = u8Value[0];
        break;
    case MON_DATA_MET_LEVEL:
        monDataBlockD->metLevel = u8Value[0];
        break;
    case MON_DATA_OT_GENDER:
        monDataBlockD->otGender = u8Value[0];
        break;
    case MON_DATA_158:
        monDataBlockD->unk_1D = u8Value[0];
        break;
    case MON_DATA_159:
        monDataBlockD->unk_1E = u16Value[0];
        break;
    case MON_DATA_COMBINED_IVS:
        monDataBlockB->hpIV = (u32Value[0] >> 0) & 0x1f;
        monDataBlockB->atkIV = (u32Value[0] >> 5) & 0x1f;
        monDataBlockB->defIV = (u32Value[0] >> 10) & 0x1f;
        monDataBlockB->speedIV = (u32Value[0] >> 15) & 0x1f;
        monDataBlockB->spAtkIV = (u32Value[0] >> 20) & 0x1f;
        monDataBlockB->spDefIV = (u32Value[0] >> 25) & 0x1f;
        break;
    case MON_DATA_176:
    case MON_DATA_177:
    case MON_DATA_178:
        break;
    case MON_DATA_179:
    {
        Strbuf *strbuf;

        strbuf = sub_0200B32C(monDataBlockA->species, 0);

        Strbuf_ToChars(strbuf, monDataBlockC->unk_00, NELEMS(monDataBlockC->unk_00));
        Strbuf_Free(strbuf);
    }
    break;
    }
}

void IncreaseMonData (Pokemon *mon, int monDataAttribute, int value)
{
    u16 checksum;

    if (mon->box.partyDecrypted == 0) {
        DecryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        DecryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

        checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

        if (checksum != mon->box.checksum) {
            GF_ASSERT((checksum == mon->box.checksum));
            EncryptMonData(mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
            return;
        }
    }

    IncreaseMonDataAttribute(mon, monDataAttribute, value);

    if (mon->box.partyDecrypted == 0) {
        EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        mon->box.checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
        EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }
}

static void IncreaseMonDataAttribute (Pokemon *mon, int monDataAttribute, int value)
{
    switch (monDataAttribute) {
    case MON_DATA_CURRENT_HP:
        if ((mon->party.unk_06 + value) > mon->party.unk_08) {
            mon->party.unk_06 = mon->party.unk_08;
        } else {
            mon->party.unk_06 += value;
        }
        break;
    case MON_DATA_160:
    case MON_DATA_LEVEL:
    case MON_DATA_162:
    case MON_DATA_MAX_HP:
    case MON_DATA_ATK:
    case MON_DATA_DEF:
    case MON_DATA_SPEED:
    case MON_DATA_SP_ATK:
    case MON_DATA_SP_DEF:
    case MON_DATA_170:
        GF_ASSERT(0);
        break;
    default:
        IncreaseBoxMonDataAttribute(&mon->box, monDataAttribute, value);
        break;
    }
}

static void IncreaseBoxMonDataAttribute (BoxPokemon *boxMon, int monDataAttribute, int value)
{
    PokemonDataBlockA *monDataBlockA;
    PokemonDataBlockB *monDataBlockB;
    PokemonDataBlockC *monDataBlockC;
    PokemonDataBlockD *monDataBlockD;

    monDataBlockA = GetBoxMonDataBlock(boxMon, boxMon->personality, 0);
    monDataBlockB = GetBoxMonDataBlock(boxMon, boxMon->personality, 1);
    monDataBlockC = GetBoxMonDataBlock(boxMon, boxMon->personality, 2);
    monDataBlockD = GetBoxMonDataBlock(boxMon, boxMon->personality, 3);

    switch (monDataAttribute) {
    case MON_DATA_EXP:
        if ((monDataBlockA->exp + value) > GetMonSpeciesLevelExp(monDataBlockA->species, 100)) {
            monDataBlockA->exp = GetMonSpeciesLevelExp(monDataBlockA->species, 100);
        } else {
            monDataBlockA->exp += value;
        }
        break;
    case MON_DATA_FRIENDSHIP:
        int newValue;

        newValue = monDataBlockA->friendship;

        if ((newValue + value) > 255) {
            newValue = 255;
        }

        if ((newValue + value) < 0) {
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
        if ((monDataBlockA->cool + value) > 255) {
            monDataBlockA->cool = 255;
        } else {
            monDataBlockA->cool += value;
        }
        break;
    case MON_DATA_BEAUTY:
        if ((monDataBlockA->beauty + value) > 255) {
            monDataBlockA->beauty = 255;
        } else {
            monDataBlockA->beauty += value;
        }
        break;
    case MON_DATA_CUTE:
        if ((monDataBlockA->cute + value) > 255) {
            monDataBlockA->cute = 255;
        } else {
            monDataBlockA->cute += value;
        }
        break;
    case MON_DATA_SMART:
        if ((monDataBlockA->smart + value) > 255) {
            monDataBlockA->smart = 255;
        } else {
            monDataBlockA->smart += value;
        }
        break;
    case MON_DATA_TOUGH:
        if ((monDataBlockA->tough + value) > 255) {
            monDataBlockA->tough = 255;
        } else {
            monDataBlockA->tough += value;
        }
        break;
    case MON_DATA_SHEEN:
        if ((monDataBlockA->sheen + value) > 255) {
            monDataBlockA->sheen = 255;
        } else {
            monDataBlockA->sheen += value;
        }
        break;
    case MON_DATA_MOVE1_CUR_PP:
    case MON_DATA_MOVE2_CUR_PP:
    case MON_DATA_MOVE3_CUR_PP:
    case MON_DATA_MOVE4_CUR_PP:
        if ((monDataBlockB->moveCurrentPPs[monDataAttribute - MON_DATA_MOVE1_CUR_PP] + value) > MoveTable_CalcMaxPP(monDataBlockB->moves[monDataAttribute - MON_DATA_MOVE1_CUR_PP], monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_CUR_PP])) {
            monDataBlockB->moveCurrentPPs[monDataAttribute - MON_DATA_MOVE1_CUR_PP] = MoveTable_CalcMaxPP(monDataBlockB->moves[monDataAttribute - MON_DATA_MOVE1_CUR_PP], monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_CUR_PP]);
        } else {
            monDataBlockB->moveCurrentPPs[monDataAttribute - MON_DATA_MOVE1_CUR_PP] += value;
        }
        break;
    case MON_DATA_MOVE1_PP_UPS:
    case MON_DATA_MOVE2_PP_UPS:
    case MON_DATA_MOVE3_PP_UPS:
    case MON_DATA_MOVE4_PP_UPS:
        if ((monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_PP_UPS] + value) > 3) {
            monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_PP_UPS] = 3;
        } else {
            monDataBlockB->movePPUps[monDataAttribute - MON_DATA_MOVE1_PP_UPS] += value;
        }
        break;
    case MON_DATA_MOVE1_MAX_PP:
    case MON_DATA_MOVE2_MAX_PP:
    case MON_DATA_MOVE3_MAX_PP:
    case MON_DATA_MOVE4_MAX_PP:
        break;
    case MON_DATA_HP_IV:
        if ((monDataBlockB->hpIV + value) > 31) {
            monDataBlockB->hpIV = 31;
        } else {
            monDataBlockB->hpIV += value;
        }
        break;
    case MON_DATA_ATK_IV:
        if ((monDataBlockB->atkIV + value) > 31) {
            monDataBlockB->atkIV = 31;
        } else {
            monDataBlockB->atkIV += value;
        }
        break;
    case MON_DATA_DEF_IV:
        if ((monDataBlockB->defIV + value) > 31) {
            monDataBlockB->defIV = 31;
        } else {
            monDataBlockB->defIV += value;
        }
        break;
    case MON_DATA_SPEED_IV:
        if ((monDataBlockB->speedIV + value) > 31) {
            monDataBlockB->speedIV = 31;
        } else {
            monDataBlockB->speedIV += value;
        }
        break;
    case MON_DATA_SPATK_IV:
        if ((monDataBlockB->spAtkIV + value) > 31) {
            monDataBlockB->spAtkIV = 31;
        } else {
            monDataBlockB->spAtkIV += value;
        }
        break;
    case MON_DATA_SPDEF_IV:
        if ((monDataBlockB->spDefIV + value) > 31) {
            monDataBlockB->spDefIV = 31;
        } else {
            monDataBlockB->spDefIV += value;
        }
        break;
    case MON_DATA_PERSONALITY:
    case MON_DATA_1:
    case MON_DATA_2:
    case MON_DATA_4:
    case MON_DATA_SPECIES:
    case MON_DATA_HELD_ITEM:
    case MON_DATA_OT_ID:
    case MON_DATA_ABILITY:
    case MON_DATA_11:
    case MON_DATA_LANGUAGE:
    case MON_DATA_25:
    case MON_DATA_26:
    case MON_DATA_27:
    case MON_DATA_28:
    case MON_DATA_29:
    case MON_DATA_30:
    case MON_DATA_31:
    case MON_DATA_32:
    case MON_DATA_33:
    case MON_DATA_34:
    case MON_DATA_35:
    case MON_DATA_36:
    case MON_DATA_37:
    case MON_DATA_38:
    case MON_DATA_39:
    case MON_DATA_40:
    case MON_DATA_41:
    case MON_DATA_42:
    case MON_DATA_43:
    case MON_DATA_44:
    case MON_DATA_45:
    case MON_DATA_46:
    case MON_DATA_47:
    case MON_DATA_48:
    case MON_DATA_49:
    case MON_DATA_50:
    case MON_DATA_51:
    case MON_DATA_52:
    case MON_DATA_53:
    case MON_DATA_MOVE1:
    case MON_DATA_MOVE2:
    case MON_DATA_MOVE3:
    case MON_DATA_MOVE4:
    case MON_DATA_IS_EGG:
    case MON_DATA_77:
    case MON_DATA_78:
    case MON_DATA_79:
    case MON_DATA_80:
    case MON_DATA_81:
    case MON_DATA_82:
    case MON_DATA_83:
    case MON_DATA_84:
    case MON_DATA_85:
    case MON_DATA_86:
    case MON_DATA_87:
    case MON_DATA_88:
    case MON_DATA_89:
    case MON_DATA_90:
    case MON_DATA_91:
    case MON_DATA_92:
    case MON_DATA_93:
    case MON_DATA_94:
    case MON_DATA_95:
    case MON_DATA_96:
    case MON_DATA_97:
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
    case MON_DATA_113:
    case MON_DATA_114:
    case MON_DATA_117:
    case MON_DATA_119:
    case MON_DATA_120:
    case MON_DATA_121:
    case MON_DATA_MET_GAME:
    case MON_DATA_123:
    case MON_DATA_124:
    case MON_DATA_125:
    case MON_DATA_126:
    case MON_DATA_127:
    case MON_DATA_128:
    case MON_DATA_129:
    case MON_DATA_130:
    case MON_DATA_131:
    case MON_DATA_132:
    case MON_DATA_133:
    case MON_DATA_134:
    case MON_DATA_135:
    case MON_DATA_136:
    case MON_DATA_137:
    case MON_DATA_138:
    case MON_DATA_139:
    case MON_DATA_140:
    case MON_DATA_141:
    case MON_DATA_142:
    case MON_DATA_143:
    case MON_DATA_144:
    case MON_DATA_145:
    case MON_DATA_146:
    case MON_DATA_147:
    case MON_DATA_148:
    case MON_DATA_149:
    case MON_DATA_150:
    case MON_DATA_151:
    case MON_DATA_152:
    case MON_DATA_153:
    case MON_DATA_POKERUS:
    case MON_DATA_POKEBALL:
    case MON_DATA_MET_LEVEL:
    case MON_DATA_OT_GENDER:
    case MON_DATA_158:
    case MON_DATA_159:
    case MON_DATA_COMBINED_IVS:
    case MON_DATA_176:
    case MON_DATA_177:
    case MON_DATA_178:
    case MON_DATA_179:
    default:
        GF_ASSERT(0);
        break;
    }
}

PokemonPersonalData * GetMonFormPersonalData (int monSpecies, int monForm, int heapID)
{
    PokemonPersonalData *monPersonalData;

    monPersonalData = Heap_AllocFromHeap(heapID, sizeof(PokemonPersonalData));
    LoadMonFormPersonalData(monSpecies, monForm, monPersonalData);

    return monPersonalData;
}

PokemonPersonalData * GetMonPersonalData (int monSpecies, int heapID)
{
    PokemonPersonalData *monPersonalData;

    monPersonalData = Heap_AllocFromHeap(heapID, sizeof(PokemonPersonalData));
    LoadMonPersonalData(monSpecies, monPersonalData);

    return monPersonalData;
}

u32 GetMonPersonalDataAttribute (PokemonPersonalData *monPersonalData, int monPersonalDataAttribute)
{
    u32 result;

    GF_ASSERT(monPersonalData);

    switch (monPersonalDataAttribute) {
    case MON_DATA_PERSONAL_BASE_HP:
        result = monPersonalData->baseHp;
        break;
    case MON_DATA_PERSONAL_BASE_ATK:
        result = monPersonalData->baseAtk;
        break;
    case MON_DATA_PERSONAL_BASE_DEF:
        result = monPersonalData->baseDef;
        break;
    case MON_DATA_PERSONAL_BASE_SPEED:
        result = monPersonalData->baseSpeed;
        break;
    case MON_DATA_PERSONAL_BASE_SP_ATK:
        result = monPersonalData->baseSpAtk;
        break;
    case MON_DATA_PERSONAL_BASE_SP_DEF:
        result = monPersonalData->baseSpDef;
        break;
    case MON_DATA_PERSONAL_TYPE_1:
        result = monPersonalData->type1;
        break;
    case MON_DATA_PERSONAL_TYPE_2:
        result = monPersonalData->type2;
        break;
    case MON_DATA_PERSONAL_CATCH_RATE:
        result = monPersonalData->catchRate;
        break;
    case MON_DATA_PERSONAL_BASE_EXP:
        result = monPersonalData->baseExp;
        break;
    case MON_DATA_PERSONAL_EV_HP_YIELD:
        result = monPersonalData->evHpYield;
        break;
    case MON_DATA_PERSONAL_EV_ATK_YIELD:
        result = monPersonalData->evAtkYield;
        break;
    case MON_DATA_PERSONAL_EV_DEF_YIELD:
        result = monPersonalData->evDefYield;
        break;
    case MON_DATA_PERSONAL_EV_SPEED_YIELD:
        result = monPersonalData->evSpeedYield;
        break;
    case MON_DATA_PERSONAL_EV_SP_ATK_YIELD:
        result = monPersonalData->evSpAtkYield;
        break;
    case MON_DATA_PERSONAL_EV_SP_DEF_YIELD:
        result = monPersonalData->evSpDefYield;
        break;
    case MON_DATA_PERSONAL_ITEM1:
        result = monPersonalData->item1;
        break;
    case MON_DATA_PERSONAL_ITEM2:
        result = monPersonalData->item2;
        break;
    case MON_DATA_PERSONAL_GENDER:
        result = monPersonalData->gender;
        break;
    case MON_DATA_PERSONAL_HATCH_CYCLE:
        result = monPersonalData->hatchCycles;
        break;
    case MON_DATA_PERSONAL_BASE_FRIENDSHIP:
        result = monPersonalData->baseFriendship;
        break;
    case MON_DATA_PERSONAL_EXP_RATE:
        result = monPersonalData->expRate;
        break;
    case MON_DATA_PERSONAL_EGG_GROUP_1:
        result = monPersonalData->eggGroup1;
        break;
    case MON_DATA_PERSONAL_EGG_GROUP_2:
        result = monPersonalData->eggGroup2;
        break;
    case MON_DATA_PERSONAL_ABILITY_1:
        result = monPersonalData->ability1;
        break;
    case MON_DATA_PERSONAL_ABILITY_2:
        result = monPersonalData->ability2;
        break;
    case MON_DATA_PERSONAL_GREAT_MARSH_FLEE_RATE:
        result = monPersonalData->greatMarshFleeRate;
        break;
    case MON_DATA_PERSONAL_COLOR:
        result = monPersonalData->color;
        break;
    case MON_DATA_PERSONAL_INVERSE:
        result = monPersonalData->inverse;
        break;
    case MON_DATA_PERSONAL_TM_LEARNSET_MASK_1:
        result = monPersonalData->tmLearnsetMask1;
        break;
    case MON_DATA_PERSONAL_TM_LEARNSET_MASK_2:
        result = monPersonalData->tmLearnsetMask2;
        break;
    case MON_DATA_PERSONAL_TM_LEARNSET_MASK_3:
        result = monPersonalData->tmLearnsetMask3;
        break;
    case MON_DATA_PERSONAL_TM_LEARNSET_MASK_4:
        result = monPersonalData->tmLearnsetMask4;
        break;
    }

    return result;
}

void FreeMonPersonalData (PokemonPersonalData *monPersonalData)
{
    GF_ASSERT(monPersonalData);
    Heap_FreeToHeap(monPersonalData);
}

u32 GetMonFormPersonalDataAttribute (int monSpecies, int monForm, int monPersonalDataAttribute)
{
    u32 result;
    PokemonPersonalData *monPersonalData;

    monSpecies = GetMonFormNarcIndex(monSpecies, monForm);

    monPersonalData = GetMonPersonalData(monSpecies, 0);
    result = GetMonPersonalDataAttribute(monPersonalData, monPersonalDataAttribute);

    FreeMonPersonalData(monPersonalData);

    return result;
}

u32 GetMonSpeciesPersonalDataAttribute (int monSpecies, int monPersonalDataAttribute)
{
    u32 result;
    PokemonPersonalData *monPersonalData;

    monPersonalData = GetMonPersonalData(monSpecies, 0);
    result = GetMonPersonalDataAttribute(monPersonalData, monPersonalDataAttribute);

    FreeMonPersonalData(monPersonalData);

    return result;
}

u8 GetMonPercentToNextLevel (Pokemon *mon)
{
    u16 monSpecies;
    u8 monLevel;
    u32 monCurrentLevelExp;
    u32 monExp;
    u32 monNextLevelExp;
    u8 monPercentToNextLevel;
    BOOL recrypt;

    recrypt = DecryptMon(mon);
    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monLevel = GetMonData(mon, MON_DATA_LEVEL, NULL);
    monCurrentLevelExp = GetMonSpeciesLevelExp(monSpecies, monLevel);
    monNextLevelExp = GetMonSpeciesLevelExp(monSpecies, monLevel + 1);
    monExp = GetMonData(mon, MON_DATA_EXP, NULL);

    EncryptMon(mon, recrypt);
    monPercentToNextLevel = ((monExp - monCurrentLevelExp) * 100) / (monNextLevelExp - monCurrentLevelExp);

    return monPercentToNextLevel;
}

u32 GetMonExpToNextLevel (Pokemon *mon)
{
    return GetBoxMonExpToNextLevel(&mon->box);
}

u32 GetBoxMonExpToNextLevel (BoxPokemon *boxMon)
{
    u16 monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    u16 monNextlevel = GetBoxMonLevel(boxMon) + 1;
    u32 monExp = GetBoxMonData(boxMon, MON_DATA_EXP, NULL);

    return GetMonSpeciesLevelExp(monSpecies, monNextlevel) - monExp;
}

u32 GetMonCurrentLevelExp (Pokemon *mon)
{
    return GetMonSpeciesLevelExp(GetMonData(mon, MON_DATA_SPECIES, NULL), GetMonData(mon, MON_DATA_LEVEL, NULL));
}

u32 GetMonSpeciesLevelExp (int monSpecies, int monLevel)
{
    return GetMonExpRateLevelExp(GetMonSpeciesPersonalDataAttribute(monSpecies, MON_DATA_PERSONAL_EXP_RATE), monLevel);
}

void LoadMonExperienceTable (int monExpRate, u32 *monExpTable)
{
    GF_ASSERT(monExpRate < 8);
    NARC_ReadWholeMemberByIndexPair(monExpTable, NARC_INDEX_POKETOOL__PERSONAL__PL_GROWTBL, monExpRate);
}

u32 GetMonExpRateLevelExp (int monExpRate, int monLevel)
{
    u32 result;
    u32 *expTable;

    GF_ASSERT(monExpRate < 8);
    GF_ASSERT(monLevel <= 101);

    expTable = Heap_AllocFromHeap(0, 101 * 4);
    LoadMonExperienceTable(monExpRate, expTable);

    result = expTable[monLevel];
    Heap_FreeToHeap(expTable);

    return result;
}

u32 GetMonLevel (Pokemon *mon)
{
    return GetBoxMonLevel(&mon->box);
}

u32 GetBoxMonLevel (BoxPokemon *boxMon)
{
    int monSpecies;
    u32 monExp;
    BOOL reencrypt;

    reencrypt = DecryptBoxMon(boxMon);
    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, 0);
    monExp = GetBoxMonData(boxMon, MON_DATA_EXP, 0);

    EncryptBoxMon(boxMon, reencrypt);

    return GetMonSpeciesLevel(monSpecies, monExp);
}

u32 GetMonSpeciesLevel (u16 monSpecies, u32 monExp)
{
    u32 monLevel;
    PokemonPersonalData *monPersonalData = GetMonPersonalData(monSpecies, 0);

    monLevel = GetMonPersonalDataLevel(monPersonalData, monSpecies, monExp);
    FreeMonPersonalData(monPersonalData);

    return monLevel;
}

u32 GetMonPersonalDataLevel (PokemonPersonalData *monPersonalData, u16 unused_monSpecies, u32 monExp)
{
    static u32 monExpTable[101];
    int monExpRate, i;

    monExpRate = GetMonPersonalDataAttribute(monPersonalData, MON_DATA_PERSONAL_EXP_RATE);
    LoadMonExperienceTable(monExpRate, monExpTable);

    for (i = 1; i < 101; i++) {
        if (monExpTable[i] > monExp) {
            break;
        }
    }

    return i - 1;
}

u8 GetMonNature (Pokemon *mon)
{
    return GetBoxMonNature(&mon->box);
}

u8 GetBoxMonNature (BoxPokemon *boxMon)
{
    BOOL reencrypt;
    u32 monPersonality;

    reencrypt = DecryptBoxMon(boxMon);
    monPersonality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, 0);

    EncryptBoxMon(boxMon, reencrypt);

    return GetNatureFromPersonality(monPersonality);
}

u8 GetNatureFromPersonality (u32 monPersonality)
{
    return (u8)(monPersonality % 25);
}

static const s8 sNatureStatAffinities[][5] = {
    {0, 0, 0, 0, 0},
    {1, -1, 0, 0, 0},
    {1, 0, -1, 0, 0},
    {1, 0, 0, -1, 0},
    {1, 0, 0, 0, -1},
    {-1, 1, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 1, -1, 0, 0},
    {0, 1, 0, -1, 0},
    {0, 1, 0, 0, -1},
    {-1, 0, 1, 0, 0},
    {0, -1, 1, 0, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 1, -1, 0},
    {0, 0, 1, 0, -1},
    {-1, 0, 0, 1, 0},
    {0, -1, 0, 1, 0},
    {0, 0, -1, 1, 0},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 1, -1},
    {-1, 0, 0, 0, 1},
    {0, -1, 0, 0, 1},
    {0, 0, -1, 0, 1},
    {0, 0, 0, -1, 1},
    {0, 0, 0, 0, 0}
};

u16 GetNatureAdjustedStatValue (u8 monNature, u16 monStatValue, u8 statType)
{
    u16 result;

    if ((statType < 0x1) || (statType > 0x5)) {
        return monStatValue;
    }

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

s8 GetNatureStatAffinity (u8 monNature, u8 statType)
{
    return sNatureStatAffinities[monNature][statType - 1];
}

static const s8 Unk_020F05A0[][3] = {
    {0x5, 0x3, 0x2},
    {0x5, 0x3, 0x2},
    {0x1, 0x1, 0x0},
    {0x3, 0x2, 0x1},
    {0x1, 0x1, 0x0},
    {0x1, 0x1, 0x1},
    {-1, -1, -1},
    {-5, -5, -10},
    {-5, -5, -10},
    {0x3, 0x2, 0x1}
};

void sub_02075C74 (Pokemon *mon, u8 param1, u16 param2)
{
    u16 monSpeciesEgg;
    u16 monHeldItem;
    s16 monFriendship;
    s8 v3;
    u8 v4;
    u8 itemHoldEffect;

    if (param1 == 5) {
        if (LCRNG_Next() & 1) {
            return;
        }
    }

    monSpeciesEgg = GetMonData(mon, MON_DATA_SPECIES_EGG, NULL);

    if ((monSpeciesEgg == SPECIES_NONE) || (monSpeciesEgg == SPECIES_EGG)) {
        return;
    }

    monHeldItem = GetMonData(mon, MON_DATA_HELD_ITEM, NULL);
    itemHoldEffect = Item_LoadParam(monHeldItem, 1, 0);
    v4 = 0;
    monFriendship = GetMonData(mon, MON_DATA_FRIENDSHIP, NULL);

    if (monFriendship >= 100) {
        v4++;
    }

    if (monFriendship >= 200) {
        v4++;
    }

    v3 = Unk_020F05A0[param1][v4];

    if ((v3 > 0) && (GetMonData(mon, MON_DATA_POKEBALL, NULL) == 11)) {
        v3++;
    }

    if ((v3 > 0) && (GetMonData(mon, MON_DATA_152, NULL) == param2)) {
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

    SetMonData(mon, MON_DATA_FRIENDSHIP, &monFriendship);
}

u8 GetMonGender (Pokemon *mon)
{
    return GetBoxMonGender(&mon->box);
}

u8 GetBoxMonGender (BoxPokemon *boxMon)
{
    u16 monSpecies;
    u32 monPersonality;
    int reencrypt;

    reencrypt = DecryptBoxMon(boxMon);
    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, 0);
    monPersonality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, 0);

    EncryptBoxMon(boxMon, reencrypt);

    return GetMonPersonalityGender(monSpecies, monPersonality);
}

u8 GetMonPersonalityGender (u16 monSpecies, u32 monPersonality)
{
    PokemonPersonalData *monPersonalData;
    u8 monGender;

    monPersonalData = GetMonPersonalData(monSpecies, 0);
    monGender = GetMonPersonalDataGender(monPersonalData, monSpecies, monPersonality);

    FreeMonPersonalData(monPersonalData);

    return monGender;
}

u8 GetMonPersonalDataGender (PokemonPersonalData *monPersonalData, u16 unused_monSpecies, u32 monPersonality)
{
    u8 monGender = GetMonPersonalDataAttribute(monPersonalData, MON_DATA_PERSONAL_GENDER);

    switch (monGender) {
    case 0:
        return 0;
    case 254:
        return 1;
    case 255:
        return 2;
    }

    if (monGender > (monPersonality & 0xff)) {
        return 1;
    } else {
        return 0;
    }
}

u8 GetMonShininess (Pokemon *mon)
{
    return GetBoxMonShininess(&mon->box);
}

u8 GetBoxMonShininess (BoxPokemon *boxMon)
{
    u32 monOTID;
    u32 monPersonality;

    monOTID = GetBoxMonData(boxMon, MON_DATA_OT_ID, 0);
    monPersonality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, 0);

    return GetMonPersonalityShininess(monOTID, monPersonality);
}

u8 GetMonPersonalityShininess (u32 monOTID, u32 monPersonality)
{
    return (((monOTID & 0xffff0000) >> 16) ^ (monOTID & 0xffff) ^ ((monPersonality & 0xffff0000) >> 16) ^ (monPersonality & 0xffff)) < 8;
}

u32 sub_02075E64 (u32 param0)
{
    int i;
    u32 result;
    u16 v2;
    u16 v3;

    param0 = (((param0 & 0xffff0000) >> 16) ^ (param0 & 0xffff)) >> 3;

    v2 = LCRNG_Next() & 0x7;
    v3 = LCRNG_Next() & 0x7;

    for (i = 0; i < 13; i++) {
        if (param0 & GetSingleBitMask(i)) {
            if (LCRNG_Next() & 1) {
                v2 |= GetSingleBitMask(i + 3);
            } else {
                v3 |= GetSingleBitMask(i + 3);
            }
        } else {
            if (LCRNG_Next() & 1) {
                v2 |= GetSingleBitMask(i + 3);
                v3 |= GetSingleBitMask(i + 3);
            }
        }
    }

    result = v2 | (v3 << 16);

    return result;
}

void sub_02075EF4 (UnkStruct_02008A90 *param0, Pokemon *mon, u8 param2)
{
    sub_02075F0C(param0, &mon->box, param2, 0);
}

void sub_02075F00 (UnkStruct_02008A90 *param0, Pokemon *mon, u8 param2)
{
    sub_02075F0C(param0, &mon->box, param2, 1);
}

void sub_02075F0C (UnkStruct_02008A90 *param0, BoxPokemon *boxMon, u8 param2, int param3)
{
    BOOL reencrypt;
    u16 monSpeciesEgg;
    u8 monGender, monShininess, monForm;
    u32 monPersonality;

    reencrypt = DecryptBoxMon(boxMon);
    monSpeciesEgg = GetBoxMonData(boxMon, MON_DATA_SPECIES_EGG, NULL);
    monGender = GetBoxMonGender(boxMon);
    monShininess = GetBoxMonShininess(boxMon);
    monPersonality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, NULL);

    if (monSpeciesEgg == SPECIES_EGG) {
        if (GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            monForm = 1;
        } else {
            monForm = 0;
        }
    } else {
        monForm = GetBoxMonData(boxMon, MON_DATA_FORM, NULL);
    }

    if (param3 == 1) {
        sub_02076300(param0, monSpeciesEgg, monGender, param2, monShininess, monForm, monPersonality);
    } else {
        sub_02075FB4(param0, monSpeciesEgg, monGender, param2, monShininess, monForm, monPersonality);
    }

    EncryptBoxMon(boxMon, reencrypt);
}

void sub_02075FB4 (UnkStruct_02008A90 *param0, u16 monSpecies, u8 monGender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality)
{
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    monForm = SanitizeFormId(monSpecies, monForm);

    switch (monSpecies) {
    case SPECIES_BURMY:
        param0->unk_00 = 117;
        param0->unk_02 = 72 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 166 + monShininess + monForm * 2;
        break;
    case SPECIES_WORMADAM:
        param0->unk_00 = 117;
        param0->unk_02 = 78 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 172 + monShininess + monForm * 2;
        break;
    case SPECIES_SHELLOS:
        param0->unk_00 = 117;
        param0->unk_02 = 84 + param3 + monForm;
        param0->unk_04 = 178 + monShininess + monForm * 2;
        break;
    case SPECIES_GASTRODON:
        param0->unk_00 = 117;
        param0->unk_02 = 88 + param3 + monForm;
        param0->unk_04 = 182 + monShininess + monForm * 2;
        break;
    case SPECIES_CHERRIM:
        param0->unk_00 = 117;
        param0->unk_02 = 92 + param3 + monForm;
        param0->unk_04 = 186 + (monShininess * 2) + monForm;
        break;
    case SPECIES_ARCEUS:
        param0->unk_00 = 117;
        param0->unk_02 = 96 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 190 + monShininess + monForm * 2;
        break;
    case SPECIES_CASTFORM:
        param0->unk_00 = 117;
        param0->unk_02 = 64 + (param3 * 2) + monForm;
        param0->unk_04 = 158 + (monShininess * 4) + monForm;
        break;
    case SPECIES_DEOXYS:
        param0->unk_00 = 117;
        param0->unk_02 = 0 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 154 + monShininess;
        break;
    case SPECIES_UNOWN:
        param0->unk_00 = 117;
        param0->unk_02 = 8 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 156 + monShininess;
        break;
    case SPECIES_EGG:
        param0->unk_00 = 117;
        param0->unk_02 = 132 + monForm;
        param0->unk_04 = 226 + monForm;
        break;
    case SPECIES_BAD_EGG:
        param0->unk_00 = 117;
        param0->unk_02 = 132;
        param0->unk_04 = 226;
        break;
    case SPECIES_SHAYMIN:
        param0->unk_00 = 117;
        param0->unk_02 = 134 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 228 + monShininess + monForm * 2;
        break;
    case SPECIES_ROTOM:
        param0->unk_00 = 117;
        param0->unk_02 = 138 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 232 + monShininess + monForm * 2;
        break;
    case SPECIES_GIRATINA:
        param0->unk_00 = 117;
        param0->unk_02 = 150 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 244 + monShininess + monForm * 2;
        break;
    default:
        param0->unk_00 = 4;
        param0->unk_02 = monSpecies * 6 + param3 + ((monGender != 1) ? 1 : 0);
        param0->unk_04 = monSpecies * 6 + 4 + monShininess;

        if ((monSpecies == SPECIES_SPINDA) && (param3 == 2)) {
            param0->unk_06 = 327;
            param0->unk_08 = 0;
            param0->unk_0C = monPersonality;
        }

        break;
    }
}

u8 SanitizeFormId (u16 monSpecies, u8 monForm)
{
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
        if (monForm > 3) {
            monForm = 0;
        }
        break;
    case SPECIES_UNOWN:
        if (monForm >= 28) {
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

static void sub_02076300 (UnkStruct_02008A90 *param0, u16 monSpecies, u8 monGender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality)
{
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;

    monForm = SanitizeFormId(monSpecies, monForm);

    switch (monSpecies) {
    case SPECIES_BURMY:
        param0->unk_00 = 166;
        param0->unk_02 = 72 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 146 + monShininess + monForm * 2;
        break;
    case SPECIES_WORMADAM:
        param0->unk_00 = 166;
        param0->unk_02 = 78 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 152 + monShininess + monForm * 2;
        break;
    case SPECIES_SHELLOS:
        param0->unk_00 = 166;
        param0->unk_02 = 84 + param3 + monForm;
        param0->unk_04 = 158 + monShininess + monForm * 2;
        break;
    case SPECIES_GASTRODON:
        param0->unk_00 = 166;
        param0->unk_02 = 88 + param3 + monForm;
        param0->unk_04 = 162 + monShininess + monForm * 2;
        break;
    case SPECIES_CHERRIM:
        param0->unk_00 = 166;
        param0->unk_02 = 92 + param3 + monForm;
        param0->unk_04 = 166 + (monShininess * 2) + monForm;
        break;
    case SPECIES_ARCEUS:
        param0->unk_00 = 166;
        param0->unk_02 = 96 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 170 + monShininess + monForm * 2;
        break;
    case SPECIES_CASTFORM:
        param0->unk_00 = 166;
        param0->unk_02 = 64 + (param3 * 2) + monForm;
        param0->unk_04 = 138 + (monShininess * 4) + monForm;
        break;
    case SPECIES_DEOXYS:
        param0->unk_00 = 166;
        param0->unk_02 = 0 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 134 + monShininess;
        break;
    case SPECIES_UNOWN:
        param0->unk_00 = 166;
        param0->unk_02 = 8 + (param3 / 2) + monForm * 2;
        param0->unk_04 = 136 + monShininess;
        break;
    case SPECIES_EGG:
        param0->unk_00 = 166;
        param0->unk_02 = 132 + monForm;
        param0->unk_04 = 206 + monForm;
        break;
    case SPECIES_BAD_EGG:
        param0->unk_00 = 166;
        param0->unk_02 = 132;
        param0->unk_04 = 206;
        break;
    case SPECIES_SHAYMIN:
        if (monForm > 0) {
            param0->unk_00 = 117;
            param0->unk_02 = 134 + (param3 / 2) + monForm * 2;
            param0->unk_04 = 230 + monShininess;
        } else {
            param0->unk_00 = 165;
            param0->unk_02 = monSpecies * 6 + param3 + ((monGender != 1) ? 1 : 0);
            param0->unk_04 = monSpecies * 6 + 4 + monShininess;
        }
        break;
    case SPECIES_ROTOM:
        if (monForm > 0) {
            param0->unk_00 = 117;
            param0->unk_02 = 138 + (param3 / 2) + monForm * 2;
            param0->unk_04 = 232 + monShininess + monForm * 2;
        } else {
            param0->unk_00 = 165;
            param0->unk_02 = monSpecies * 6 + param3 + ((monGender != 1) ? 1 : 0);
            param0->unk_04 = monSpecies * 6 + 4 + monShininess;
        }
        break;
    case SPECIES_GIRATINA:
        if (monForm > 0) {
            param0->unk_00 = 117;
            param0->unk_02 = 150 + (param3 / 2) + monForm * 2;
            param0->unk_04 = 244 + monShininess + monForm * 2;
        } else {
            param0->unk_00 = 165;
            param0->unk_02 = monSpecies * 6 + param3 + ((monGender != 1) ? 1 : 0);
            param0->unk_04 = monSpecies * 6 + 4 + monShininess;
        }
        break;
    default:
        param0->unk_00 = 165;
        param0->unk_02 = monSpecies * 6 + param3 + ((monGender != 1) ? 1 : 0);
        param0->unk_04 = monSpecies * 6 + 4 + monShininess;

        if ((monSpecies == SPECIES_SPINDA) && (param3 == 2)) {
            param0->unk_06 = 327;
            param0->unk_08 = 0;
            param0->unk_0C = monPersonality;
        }

        break;
    }
}

u8 sub_020765AC (Pokemon *mon, u8 param1)
{
    return sub_020765C4(&mon->box, param1, 0);
}

u8 sub_020765B8 (Pokemon *mon, u8 param1)
{
    return sub_020765C4(&mon->box, param1, 1);
}

u8 sub_020765C4 (BoxPokemon *boxMon, u8 param1, int param2)
{
    u16 monSpeciesEgg;
    u8 monGender;
    u8 monForm;
    u32 monPersonality;

    monSpeciesEgg = GetBoxMonData(boxMon, MON_DATA_SPECIES_EGG, NULL);
    monGender = GetBoxMonGender(boxMon);
    monPersonality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, NULL);

    if (monSpeciesEgg == SPECIES_EGG) {
        if (GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            monForm = 1;
        } else {
            monForm = 0;
        }
    } else {
        monForm = GetBoxMonData(boxMon, MON_DATA_FORM, NULL);
    }

    if (param2 == 1) {
        return sub_020767BC(monSpeciesEgg, monGender, param1, monForm, monPersonality);
    }

    return sub_02076648(monSpeciesEgg, monGender, param1, monForm, monPersonality);
}

u8 sub_02076648 (u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality)
{
    int narcIndex;
    int memberIndex;
    u8 result;

    monForm = SanitizeFormId(monSpecies, monForm);

    switch (monSpecies) {
    case SPECIES_BURMY:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 72 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_WORMADAM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 78 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_SHELLOS:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 84 + param2 + monForm;
        break;
    case SPECIES_GASTRODON:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 88 + param2 + monForm;
        break;
    case SPECIES_CHERRIM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 92 + param2 + monForm;
        break;
    case SPECIES_ARCEUS:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 96 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_CASTFORM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 64 + param2 * 2 + monForm;
        break;
    case SPECIES_DEOXYS:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 0 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_UNOWN:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 8 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_EGG:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 132 + monForm;
        break;
    case SPECIES_BAD_EGG:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 132;
        break;
    case SPECIES_SHAYMIN:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 136 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_ROTOM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 140 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_GIRATINA:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
        memberIndex = 152 + (param2 / 2) + monForm * 2;
        break;
    default:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT;
        memberIndex = monSpecies * 4 + param2 + ((monGender != 1) ? 1 : 0);
        break;
    }

    NARC_ReadWholeMemberByIndexPair(&result, narcIndex, memberIndex);

    return result;
}

static u8 sub_020767BC (u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality)
{
    int narcIndex;
    int memberIndex;
    u8 result;

    monForm = SanitizeFormId(monSpecies, monForm);

    switch (monSpecies) {
    case SPECIES_BURMY:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 72 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_WORMADAM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 78 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_SHELLOS:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 84 + param2 + monForm;
        break;
    case SPECIES_GASTRODON:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 88 + param2 + monForm;
        break;
    case SPECIES_CHERRIM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 92 + param2 + monForm;
        break;
    case SPECIES_ARCEUS:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 96 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_CASTFORM:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 64 + param2 * 2 + monForm;
        break;
    case SPECIES_DEOXYS:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 0 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_UNOWN:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 8 + (param2 / 2) + monForm * 2;
        break;
    case SPECIES_EGG:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 132 + monForm;
        break;
    case SPECIES_BAD_EGG:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT_O;
        memberIndex = 132;
        break;
    case SPECIES_SHAYMIN:
        if (monForm > 0) {
            narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            memberIndex = 136 + (param2 / 2) + monForm * 2;
        } else {
            narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            memberIndex = monSpecies * 4 + param2 + ((monGender != 1) ? 1 : 0);
        }
        break;
    case SPECIES_ROTOM:
        if (monForm > 0) {
            narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            memberIndex = 140 + (param2 / 2) + monForm * 2;
        } else {
            narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            memberIndex = monSpecies * 4 + param2 + ((monGender != 1) ? 1 : 0);
        }
        break;
    case SPECIES_GIRATINA:
        if (monForm > 0) {
            narcIndex = NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O;
            memberIndex = 152 + (param2 / 2) + monForm * 2;
        } else {
            narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
            memberIndex = monSpecies * 4 + param2 + ((monGender != 1) ? 1 : 0);
        }
        break;
    default:
        narcIndex = NARC_INDEX_POKETOOL__POKEGRA__DP_HEIGHT;
        memberIndex = monSpecies * 4 + param2 + ((monGender != 1) ? 1 : 0);
        break;
    }

    NARC_ReadWholeMemberByIndexPair(&result, narcIndex, memberIndex);

    return result;
}

void sub_0207697C (UnkStruct_02008A90 *param0, u16 param1)
{
    param0->unk_00 = 60;
    param0->unk_02 = param1 * 2;
    param0->unk_04 = param1 * 2 + 1;
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
}

static const UnkStruct_ov104_0223F9E0 Unk_020F05E4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4E2F, 0x4E2A, 0x4E27, 0x4E27, 0xffffffff, 0xffffffff},
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

UnkStruct_0200D0F4 * sub_02076994 (UnkStruct_0200C6E4 *param0, UnkStruct_0200C704 *param1, UnkStruct_02002F38 *param2, int param3, int param4, int param5, int param6, int param7, int heapID)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200D0F4 *v1;
    NARC *narc;
    UnkStruct_ov5_021DE5D0 v3;
    int v4 = 1;

    sub_02076AAC(param5, param6, &v3);

    if (param5 == 102) {
        v4 = 2;
    }

    narc = NARC_ctor(v3.unk_00, heapID);

    sub_0200CC3C(param0, param1, narc, v3.unk_04, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 20015 + param7);
    sub_0200CDC4(param2, 2, param0, param1, narc, v3.unk_08, 0, v4, NNS_G2D_VRAM_TYPE_2DMAIN, 20010 + param7);
    sub_0200CE24(param0, param1, narc, v3.unk_0C, 0, 20007 + param7);
    sub_0200CE54(param0, param1, narc, v3.unk_10, 0, 20007 + param7);
    NARC_dtor(narc);

    v0 = Unk_020F05E4;

    v0.unk_14[0] = 20015 + param7;
    v0.unk_14[1] = 20010 + param7;
    v0.unk_14[2] = 20007 + param7;
    v0.unk_14[3] = 20007 + param7;
    v0.unk_08 = Unk_020F0588[param7];

    v1 = sub_0200CE6C(param0, param1, &v0);

    sub_02021F24(v1->unk_00, 0);
    sub_0200D4C4(v1, param3, param4);
    sub_0200D330(v1);
    sub_0200D390(v1, 1);

    return v1;
}

void sub_02076AAC (int param0, int param1, UnkStruct_ov5_021DE5D0 *param2)
{
    if (param1 == 2) {
        param2->unk_00 = 60;
        param2->unk_04 = 0 + param0 * 5;
        param2->unk_08 = 1 + param0 * 5;
        param2->unk_0C = 2 + param0 * 5;
        param2->unk_10 = 3 + param0 * 5;
        param2->unk_14 = 4 + param0 * 5;
    } else {
        param2->unk_00 = 6;
        param0 = sub_020788D0(param0);
        param2->unk_04 = 0 + param0 * 5;
        param2->unk_08 = 1 + param0 * 5;
        param2->unk_0C = 2 + param0 * 5;
        param2->unk_10 = 3 + param0 * 5;
        param2->unk_14 = 4 + param0 * 5;
    }
}

u32 GetPokemonStructSize (void)
{
    return (u32)sizeof(Pokemon);
}

u32 GetBoxPokemonStructSize (void)
{
    return (u32)sizeof(BoxPokemon);
}

u8 GetMonForm (Pokemon *mon)
{
    return GetBoxMonForm(&mon->box);
}

u8 GetBoxMonForm (BoxPokemon *boxMon)
{
    return GetBoxMonData(boxMon, MON_DATA_FORM, NULL);
}

BoxPokemon * GetBoxMon (Pokemon *mon)
{
    return &mon->box;
}

u8 sub_02076B14 (Pokemon *mon)
{
    u16 monSpecies;
    u8 monNextLevel;
    u32 monExp;
    u32 maxExp;
    int monExpRate;

    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monNextLevel = GetMonData(mon, MON_DATA_LEVEL, NULL) + 1;
    monExp = GetMonData(mon, MON_DATA_EXP, NULL);
    monExpRate = GetMonSpeciesPersonalDataAttribute(monSpecies, MON_DATA_PERSONAL_EXP_RATE);
    maxExp = GetMonExpRateLevelExp(monExpRate, 100);

    if (monExp > maxExp) {
        monExp = maxExp;
        SetMonData(mon, MON_DATA_EXP, &monExp);
    }

    if (monNextLevel > 100) {
        return 0;
    }

    maxExp = GetMonExpRateLevelExp(monExpRate, monNextLevel);

    if (monExp >= maxExp) {
        SetMonData(mon, MON_DATA_LEVEL, &monNextLevel);
        return 1;
    }

    return 0;
}

u16 sub_02076B94 (Party *party, Pokemon *mon, u8 evoTypeList, u16 evoParam, int *evoTypeResult)
{
    u16 monSpecies;
    u16 monHeldItem;
    u8 monLevel;
    int i;
    u16 targetSpecies = 0;
    u16 monFriendship;
    u32 monPersonality;
    u8 itemHoldEffect;
    u8 monBeauty;
    u16 monPersonalityUpper = 0;
    PokemonEvolutionData *monEvolutionData;
    int v11;

    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monHeldItem = GetMonData(mon, MON_DATA_HELD_ITEM, NULL);
    monPersonality = GetMonData(mon, MON_DATA_PERSONALITY, NULL);
    monBeauty = GetMonData(mon, MON_DATA_BEAUTY, NULL);
    monPersonalityUpper = (monPersonality & 0xffff0000) >> 16;
    itemHoldEffect = Item_LoadParam(monHeldItem, 1, 0);

    if (monSpecies != SPECIES_KADABRA) {
        if ((itemHoldEffect == HOLD_EFFECT_NO_EVOLVE) && (evoTypeList != 3)) {
            return 0;
        }
    }

    if (evoTypeResult == NULL) {
        evoTypeResult = &v11;
    }

    monEvolutionData = Heap_AllocFromHeap(0, sizeof(PokemonEvolutionData));
    LoadMonEvolutionData(monSpecies, monEvolutionData);

    switch (evoTypeList) {
    case 0:
        monLevel = GetMonData(mon, MON_DATA_LEVEL, NULL);
        monFriendship = GetMonData(mon, MON_DATA_FRIENDSHIP, NULL);

        for (i = 0; i < 7; i++) {
            switch (monEvolutionData->methods[i].type) {
            case 1:  // high friendship
                if (220 <= monFriendship) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 1;
                }
                break;
            case 2:  // high friendship && daytime
                if ((sub_02013948() == 0) && (220 <= monFriendship)) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 2;
                }
                break;
            case 3:  // high friendship && nighttime
                if ((sub_02013948() == 1) && (220 <= monFriendship)) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 3;
                }
                break;
            case 4:  // above level param
                if (monEvolutionData->methods[i].param <= monLevel) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 4;
                }
                break;
            case 8:  // tyrogue evo to hitmonlee: above level param && attack > defense
                if (monEvolutionData->methods[i].param <= monLevel) {
                    if ((GetMonData(mon, MON_DATA_ATK, NULL)) > (GetMonData(mon, MON_DATA_DEF, NULL))) {
                        targetSpecies = monEvolutionData->methods[i].targetSpecies;
                        evoTypeResult[0] = 8;
                    }
                }
                break;
            case 9:  // tyrogue evo to hitmontop: above level param && attack == defense
                if (monEvolutionData->methods[i].param <= monLevel) {
                    if ((GetMonData(mon, MON_DATA_ATK, NULL)) == (GetMonData(mon, MON_DATA_DEF, NULL))) {
                        targetSpecies = monEvolutionData->methods[i].targetSpecies;
                        evoTypeResult[0] = 9;
                    }
                }
                break;
            case 10:  // tyrogue evo to hitmonchan: above level param && attack < defense
                if (monEvolutionData->methods[i].param <= monLevel) {
                    if ((GetMonData(mon, MON_DATA_ATK, NULL)) < (GetMonData(mon, MON_DATA_DEF, NULL))) {
                        targetSpecies = monEvolutionData->methods[i].targetSpecies;
                        evoTypeResult[0] = 10;
                    }
                }
                break;
            case 11:  // wurmple evo to silcoon: above level param && upper16 of personality % 10 < 5
                if (monEvolutionData->methods[i].param <= monLevel) {
                    if ((monPersonalityUpper % 10) < 5) {
                        targetSpecies = monEvolutionData->methods[i].targetSpecies;
                        evoTypeResult[0] = 11;
                    }
                }
                break;
            case 12:  // wurmple evo to cascoon: above level param && upper16 of personality % 10 >= 5
                if (monEvolutionData->methods[i].param <= monLevel) {
                    if ((monPersonalityUpper % 10) >= 5) {
                        targetSpecies = monEvolutionData->methods[i].targetSpecies;
                        evoTypeResult[0] = 12;
                    }
                }
                break;
            case 13:  // nincada evo to ninjask: above level param
                if (monEvolutionData->methods[i].param <= monLevel) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 13;
                }
                break;
            case 14:  // nincada evo to shedinja: ???
                evoTypeResult[0] = 14;
                break;
            case 15:  // feebas evo: beauty > param
                if (monEvolutionData->methods[i].param <= monBeauty) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 15;
                }
                break;
            case 18:  // happiny evo: hold param && daytime
                if ((sub_02013948() == 0) && (monEvolutionData->methods[i].param == monHeldItem)) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 18;
                }
                break;
            case 19:  // sneasel and gligar evo: hold param && nighttime
                if ((sub_02013948() == 1) && (monEvolutionData->methods[i].param == monHeldItem)) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 19;
                }
                break;
            case 20:  // lickitung, tangela etc. evo: after param learned
                if (MonHasMove(mon, monEvolutionData->methods[i].param) == 1) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 20;
                }
                break;
            case 21:  // mantyke evo: have param in party
                if (party != NULL) {
                    if (Party_HasSpecies(party, monEvolutionData->methods[i].param) == 1) {
                        targetSpecies = monEvolutionData->methods[i].targetSpecies;
                        evoTypeResult[0] = 21;
                    }
                }
                break;
            case 22:  // burmy evo to mothim: above level param && male
                if ((GetMonData(mon, MON_DATA_GENDER, NULL) == 0) && (monEvolutionData->methods[i].param <= monLevel)) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 22;
                }
                break;
            case 23:  // burmy evo to wormadam, combee evo to vespiquen: above level param && female
                if ((GetMonData(mon, MON_DATA_GENDER, NULL) == 1) && (monEvolutionData->methods[i].param <= monLevel)) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 23;
                }
                break;
            case 24:  // magneton and nosepass evo: custom check
                if (monEvolutionData->methods[i].type == evoParam) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 24;
                }
                break;
            case 25:  // eevee evo to leafeon: custom check
                if (monEvolutionData->methods[i].type == evoParam) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 25;
                }
                break;
            case 26:  // eevee evo to glaceon: custom check
                if (monEvolutionData->methods[i].type == evoParam) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 26;
                }
                break;
            }

            if (targetSpecies) {
                break;
            }
        }
        break;
    case 1:
        for (i = 0; i < 7; i++) {
            switch (monEvolutionData->methods[i].type) {
            case 5:  // kadabra etc. evo: trade
                targetSpecies = monEvolutionData->methods[i].targetSpecies;
                evoTypeResult[0] = 5;
                break;
            case 6:  // poliwhirl evo to politoed etc.: trade holding param
                if (monEvolutionData->methods[i].param == monHeldItem) {
                    targetSpecies = monEvolutionData->methods[i].targetSpecies;
                    evoTypeResult[0] = 6;
                }
                break;
            }

            if (targetSpecies) {
                break;
            }
        }
        break;
    case 2:
    case 3:
        for (i = 0; i < 7; i++) {
            // use param
            if ((monEvolutionData->methods[i].type == 7) && (monEvolutionData->methods[i].param == evoParam)) {
                targetSpecies = monEvolutionData->methods[i].targetSpecies;
                evoTypeResult[0] = 0;
                break;
            }
            // kirlia evo to gallade: use param && male
            if ((monEvolutionData->methods[i].type == 16) && (GetMonData(mon, MON_DATA_GENDER, NULL) == 0) && (monEvolutionData->methods[i].param == evoParam)) {
                targetSpecies = monEvolutionData->methods[i].targetSpecies;
                evoTypeResult[0] = 0;
                break;
            }
            // snorunt evo to froslass: use param && female
            if ((monEvolutionData->methods[i].type == 17) && (GetMonData(mon, MON_DATA_GENDER, NULL) == 1) && (monEvolutionData->methods[i].param == evoParam)) {
                targetSpecies = monEvolutionData->methods[i].targetSpecies;
                evoTypeResult[0] = 0;
                break;
            }

            if (targetSpecies) {
                break;
            }
        }
        break;
    }

    Heap_FreeToHeap(monEvolutionData);
    return targetSpecies;
}

u16 sub_02076F84 (const u16 monSpecies)
{
    FSFile file;
    u16 result = 0;

    GF_ASSERT((493 + 1) > monSpecies);

    FS_InitFile(&file);
    FS_OpenFile(&file, "poketool/personal/pms.narc");
    FS_SeekFile(&file, monSpecies * 2, FS_SEEK_SET);
    FS_ReadFile(&file, &result, 2);
    FS_CloseFile(&file);

    return result;
}

u16 sub_02076FD4 (const u16 monSpecies)
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

void SetBoxMonDefaultMoves (BoxPokemon *boxMon)
{
    BOOL reencrypt;
    int i;
    u16 monSpecies;
    u16 monLevelUpMoveID;
    int monForm;
    u16 moveID;
    u8 monLevel;
    u16 *monLevelUpMoves = Heap_AllocFromHeap(0, 44);

    reencrypt = DecryptBoxMon(boxMon);
    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, 0);
    monForm = GetBoxMonData(boxMon, MON_DATA_FORM, 0);
    monLevel = GetBoxMonLevel(boxMon);

    LoadMonLevelUpMoves(monSpecies, monForm, monLevelUpMoves);

    i = 0;

    while (monLevelUpMoves[i] != 0xffff) {
        if ((monLevelUpMoves[i] & 0xfe00) <= (monLevel << 9)) {
            monLevelUpMoveID = monLevelUpMoves[i] & 0x1ff;
            moveID = AddBoxMonMove(boxMon, monLevelUpMoveID);

            if (moveID == 0xffff) {
                ReplaceBoxMonMove(boxMon, monLevelUpMoveID);
            }
        } else {
            break;
        }

        i++;
    }

    Heap_FreeToHeap(monLevelUpMoves);
    EncryptBoxMon(boxMon, reencrypt);
}

u16 AddMonMove (Pokemon *mon, u16 moveID)
{
    BoxPokemon *boxMon = GetBoxMon(mon);
    return AddBoxMonMove(boxMon, moveID);
}

u16 AddBoxMonMove (BoxPokemon *boxMon, u16 moveID)
{
    int i;
    u16 slotMove;
    u16 result;
    BOOL reencrypt;

    result = 0xffff;

    reencrypt = DecryptBoxMon(boxMon);

    for (i = 0; i < 4; i++) {
        if ((slotMove = GetBoxMonData(boxMon, MON_DATA_MOVE1 + i, NULL)) == 0) {
            SetBoxMonMove(boxMon, moveID, i);
            result = moveID;
            break;
        } else {
            if (slotMove == moveID) {
                result = 0xfffe;
                break;
            }
        }
    }

    EncryptBoxMon(boxMon, reencrypt);

    return result;
}

void ReplaceMonMove (Pokemon *mon, u16 moveID)
{
    BoxPokemon *boxMon = GetBoxMon(mon);
    ReplaceBoxMonMove(boxMon, moveID);
}

void ReplaceBoxMonMove (BoxPokemon *boxMon, u16 moveID)
{
    int i;
    u16 moveIDs[4];
    u8 movePPs[4];
    u8 movePPUps[4];
    BOOL reencrypt;

    reencrypt = DecryptBoxMon(boxMon);

    for (i = 0; i < 3; i++) {
        moveIDs[i] = GetBoxMonData(boxMon, MON_DATA_MOVE2 + i, NULL);
        movePPs[i] = GetBoxMonData(boxMon, MON_DATA_MOVE2_CUR_PP + i, NULL);
        movePPUps[i] = GetBoxMonData(boxMon, MON_DATA_MOVE2_PP_UPS + i, NULL);
    }

    moveIDs[3] = moveID;
    movePPs[3] = MoveTable_LoadParam(moveID, 5);
    movePPUps[3] = 0;

    for (i = 0; i < 4; i++) {
        SetBoxMonData(boxMon, MON_DATA_MOVE1 + i, &moveIDs[i]);
        SetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + i, &movePPs[i]);
        SetBoxMonData(boxMon, MON_DATA_MOVE1_PP_UPS + i, &movePPUps[i]);
    }

    EncryptBoxMon(boxMon, reencrypt);
}

void ResetMonMove (Pokemon *mon, u16 moveID, u8 moveSlot)
{
    u32 moveMaxPP, movePPUps;

    SetMonMove(mon, moveID, moveSlot);

    movePPUps = 0;
    SetMonData(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &movePPUps);

    moveMaxPP = MoveTable_CalcMaxPP(moveID, 0);
    SetMonData(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, &moveMaxPP);

    return;
}

void SetMonMove (Pokemon *mon, u16 moveID, u8 moveSlot)
{
    SetBoxMonMove(&mon->box, moveID, moveSlot);
}

void SetBoxMonMove (BoxPokemon *boxMon, u16 moveID, u8 moveSlot)
{
    u8 moveMaxPP;
    u8 movePPUps;

    SetBoxMonData(boxMon, MON_DATA_MOVE1 + moveSlot, &moveID);

    movePPUps = GetBoxMonData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);
    moveMaxPP = MoveTable_CalcMaxPP(moveID, movePPUps);

    SetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot, &moveMaxPP);
}

u16 sub_0207727C (Pokemon *mon, int *index, u16 *moveID)
{
    u16 result = 0x0;
    u16 monSpecies;
    int monForm;
    u8 monLevel;
    u16 *monLevelUpMoves = Heap_AllocFromHeap(0, 44);

    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monForm = GetMonData(mon, MON_DATA_FORM, NULL);
    monLevel = GetMonData(mon, MON_DATA_LEVEL, NULL);

    LoadMonLevelUpMoves(monSpecies, monForm, monLevelUpMoves);

    if (monLevelUpMoves[index[0]] == 0xffff) {
        Heap_FreeToHeap(monLevelUpMoves);
        return 0x0;
    }

    while ((monLevelUpMoves[index[0]] & 0xfe00) != (monLevel << 9)) {
        index[0]++;

        if (monLevelUpMoves[index[0]] == 0xffff) {
            Heap_FreeToHeap(monLevelUpMoves);
            return 0x0;
        }
    }

    if ((monLevelUpMoves[index[0]] & 0xfe00) == (monLevel << 9)) {
        moveID[0] = monLevelUpMoves[index[0]] & 0x1ff;
        index[0]++;

        result = AddMonMove(mon, moveID[0]);
    }

    Heap_FreeToHeap(monLevelUpMoves);

    return result;
}

void SwapMonMoves (Pokemon *mon, int moveSlot1, int moveSlot2)
{
    SwapBoxMonMoves(&mon->box, moveSlot1, moveSlot2);
}

void SwapBoxMonMoves (BoxPokemon *boxMon, int moveSlot1, int moveSlot2)
{
    u16 moveIDs[2];
    u8 movePPs[2];
    u8 movePPUps[2];

    moveIDs[0] = GetBoxMonData(boxMon, MON_DATA_MOVE1 + moveSlot1, NULL);
    movePPs[0] = GetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot1, NULL);
    movePPUps[0] = GetBoxMonData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot1, NULL);
    moveIDs[1] = GetBoxMonData(boxMon, MON_DATA_MOVE1 + moveSlot2, NULL);
    movePPs[1] = GetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot2, NULL);
    movePPUps[1] = GetBoxMonData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot2, NULL);

    SetBoxMonData(boxMon, MON_DATA_MOVE1 + moveSlot1, &moveIDs[1]);
    SetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot1, &movePPs[1]);
    SetBoxMonData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot1, &movePPUps[1]);
    SetBoxMonData(boxMon, MON_DATA_MOVE1 + moveSlot2, &moveIDs[0]);
    SetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + moveSlot2, &movePPs[0]);
    SetBoxMonData(boxMon, MON_DATA_MOVE1_PP_UPS + moveSlot2, &movePPUps[0]);
}

void DeleteMonMove (Pokemon *mon, u32 moveSlot)
{
    u32 i;
    u16 moveID;
    u8 movePP;
    u8 movePPUps;

    for (i = moveSlot; i < 3; i++) {
        moveID = GetMonData(mon, MON_DATA_MOVE1 + i + 1, NULL);
        movePP = GetMonData(mon, MON_DATA_MOVE1_CUR_PP + i + 1, NULL);
        movePPUps = GetMonData(mon, MON_DATA_MOVE1_PP_UPS + i + 1, NULL);

        SetMonData(mon, MON_DATA_MOVE1 + i, &moveID);
        SetMonData(mon, MON_DATA_MOVE1_CUR_PP + i, &movePP);
        SetMonData(mon, MON_DATA_MOVE1_PP_UPS + i, &movePPUps);
    }

    moveID = 0;
    movePP = 0;
    movePPUps = 0;

    SetMonData(mon, MON_DATA_MOVE4, &moveID);
    SetMonData(mon, MON_DATA_MOVE4_CUR_PP, &movePP);
    SetMonData(mon, MON_DATA_MOVE4_PP_UPS, &movePPUps);
}

BOOL MonHasMove (Pokemon *mon, u16 moveID)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (GetMonData(mon, MON_DATA_MOVE1 + i, NULL) == moveID) {
            break;
        }
    }

    return i != 4;
}

void sub_020774C8 (BoxPokemon *boxMon, Pokemon *mon)
{
    u32 zero = 0;
    UnkStruct_0202818C *v1;
    UnkStruct_0202CA28 v2;

    mon->box = *boxMon;

    if (mon->box.boxDecrypted) {
        mon->box.partyDecrypted = 1;
    }

    SetMonData(mon, MON_DATA_160, &zero);
    SetMonData(mon, MON_DATA_CURRENT_HP, &zero);
    SetMonData(mon, MON_DATA_MAX_HP, &zero);

    v1 = sub_0202818C(0);

    SetMonData(mon, MON_DATA_170, v1);
    Heap_FreeToHeap(v1);
    SetMonData(mon, MON_DATA_162, &zero);

    MI_CpuClearFast(&v2, sizeof(UnkStruct_0202CA28));

    SetMonData(mon, MON_DATA_171, &v2);
    CalculateMonLevelAndStats(mon);
}

u8 GetPartyHighestLevel (Party *party)
{
    u8 result, monLevel;
    int i, currentPartyCount;
    Pokemon *mon;

    currentPartyCount = Party_GetCurrentCount(party);
    result = 1;

    for (i = 0; i < currentPartyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);

        if ((GetMonData(mon, MON_DATA_SPECIES, NULL)) && (GetMonData(mon, MON_DATA_IS_EGG, NULL) == 0)) {
            monLevel = GetMonData(mon, MON_DATA_LEVEL, NULL);

            if (monLevel > result) {
                result = monLevel;
            }
        }
    }

    return result;
}

u16 sub_020775A4 (u16 param0)
{
    u16 result;

    NARC_ReadFromMemberByIndexPair(&result, NARC_INDEX_POKETOOL__PL_POKEZUKAN, 0, param0 * 2, 2);

    return result;
}

u16 sub_020775C4 (u16 param0)
{
    u16 result = 0;

    if (param0 <= 210) {
        NARC_ReadFromMemberByIndexPair(&result, NARC_INDEX_POKETOOL__SHINZUKAN, 0, param0 * 2, 2);
    }

    return result;
}

void sub_020775EC (Pokemon *src, Pokemon *dest)
{
    *dest = *src;
    return;
}

void sub_02077604 (BoxPokemon *src, BoxPokemon *dest)
{
    *dest = *src;
    return;
}

void sub_02077618 (Pokemon *src, BoxPokemon *dest)
{
    *dest = src->box;
    return;
}

s8 sub_0207762C (Pokemon *mon, int param1)
{
    return sub_02077634(&mon->box, param1);
}

s8 sub_02077634 (BoxPokemon *boxMon, int param1)
{
    return sub_02077648(GetBoxMonData(boxMon, MON_DATA_PERSONALITY, NULL), param1);
}

s8 sub_02077648 (u32 monPersonality, int param1)
{
    u8 monNature;

    monNature = GetNatureFromPersonality(monPersonality);
    return Unk_020F0695[monNature][param1];
}

int GetMonLevelUpMoveIDs (int monSpecies, int monForm, u16 *monLevelUpMoveIDs)
{
    int result;
    u16 *monLevelUpMoves = Heap_AllocFromHeap(0, 44);

    LoadMonLevelUpMoves(monSpecies, monForm, monLevelUpMoves);

    result = 0;

    while (monLevelUpMoves[result] != 0xffff) {
        monLevelUpMoveIDs[result] = monLevelUpMoves[result] & 0x1ff;
        result++;
    }

    Heap_FreeToHeap(monLevelUpMoves);
    return result;
}

void sub_020776B0 (Party *party)
{
    u16 rand;
    u8 monPokerus;
    Pokemon *mon;
    int currentPartyCount;
    int partySlot;

    currentPartyCount = Party_GetCurrentCount(party);
    rand = LCRNG_Next();

    if ((rand == 16384) || (rand == 32768) || (rand == 49152)) {
        do {
            partySlot = LCRNG_Next() % currentPartyCount;
            mon = Party_GetPokemonBySlotIndex(party, partySlot);

            if ((GetMonData(mon, MON_DATA_SPECIES, NULL)) && (GetMonData(mon, MON_DATA_IS_EGG, NULL) == 0)) {
                break;
            } else {
                partySlot = currentPartyCount;
            }
        } while (partySlot == currentPartyCount);

        if (sub_02077758(party, GetSingleBitMask(partySlot)) == 0) {
            do {
                monPokerus = LCRNG_Next() & 0xff;
            } while ((monPokerus & 0x7) == 0);

            if (monPokerus & 0xf0) {
                monPokerus &= 0x7;
            }

            monPokerus |= (monPokerus << 4);
            monPokerus &= 0xf3;
            monPokerus++;

            SetMonData(mon, MON_DATA_POKERUS, &monPokerus);
        }
    }
}

u8 sub_02077758 (Party *party, u8 param1)
{
    int partySlot = 0;
    int v1 = 1;
    u8 result = 0;
    Pokemon *mon;

    if (param1) {
        do {
            if (param1 & 1) {
                mon = Party_GetPokemonBySlotIndex(party, partySlot);

                if (GetMonData(mon, MON_DATA_POKERUS, NULL)) {
                    result |= v1;
                }
            }

            partySlot++;
            v1 = v1 << 1;
            param1 = param1 >> 1;
        } while (param1 != 0);
    } else {
        mon = Party_GetPokemonBySlotIndex(party, partySlot);

        if (GetMonData(mon, MON_DATA_POKERUS, NULL)) {
            result++;
        }
    }

    return result;
}

void sub_020777B4 (Party *party, s32 param1)
{
    int i;
    int currentPartyCount;
    u8 monPokerus;
    Pokemon *mon;

    currentPartyCount = Party_GetCurrentCount(party);

    for (i = 0; i < currentPartyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);

        if (GetMonData(mon, MON_DATA_SPECIES, NULL)) {
            monPokerus = GetMonData(mon, MON_DATA_POKERUS, NULL);

            if (monPokerus & 0xf) {
                if (((monPokerus & 0xf) < param1) || (param1 > 4)) {
                    monPokerus &= 0xf0;
                } else {
                    monPokerus -= param1;
                }

                if (monPokerus == 0) {
                    monPokerus = 0x10;
                }

                SetMonData(mon, MON_DATA_POKERUS, &monPokerus);
            }
        }
    }
}

void sub_0207782C (Party *party)
{
    int i;
    int currentPartyCount;
    u8 monPokerus;
    Pokemon *mon;

    currentPartyCount = Party_GetCurrentCount(party);

    if (LCRNG_Next() % 3 == 0) {
        for (i = 0; i < currentPartyCount; i++) {
            mon = Party_GetPokemonBySlotIndex(party, i);

            if (GetMonData(mon, MON_DATA_SPECIES, NULL)) {
                monPokerus = GetMonData(mon, MON_DATA_POKERUS, NULL);

                if (monPokerus & 0xf) {
                    if (i != 0) {
                        mon = Party_GetPokemonBySlotIndex(party, i - 1);

                        if ((GetMonData(mon, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            SetMonData(mon, MON_DATA_POKERUS, &monPokerus);
                        }
                    }

                    if (i < currentPartyCount - 1) {
                        mon = Party_GetPokemonBySlotIndex(party, i + 1);

                        if ((GetMonData(mon, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            SetMonData(mon, MON_DATA_POKERUS, &monPokerus);
                            i++;
                        }
                    }
                }
            }
        }
    }
}

BOOL sub_020778D8 (Pokemon *mon)
{
    return sub_020778E0(&mon->box);
}

BOOL sub_020778E0 (BoxPokemon *boxMon)
{
    return (GetBoxMonData(boxMon, MON_DATA_POKERUS, NULL) & 0xf) != 0;
}

BOOL sub_020778F8 (Pokemon *mon)
{
    return sub_02077900(&mon->box);
}

BOOL sub_02077900 (BoxPokemon *boxMon)
{
    u8 monPokerus;

    monPokerus = GetBoxMonData(boxMon, MON_DATA_POKERUS, NULL);

    if (monPokerus & 0xf) {
        return 0;
    }

    return (monPokerus & 0xf0) != 0;
}

void SetArceusForm (Pokemon *mon)
{
    SetBoxArceusForm(&mon->box);
}

void SetBoxArceusForm (BoxPokemon *boxMon)
{
    int monSpecies;
    int monAbility;
    int monHeldItem;
    int monForm;

    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    monAbility = GetBoxMonData(boxMon, MON_DATA_ABILITY, NULL);
    monHeldItem = GetBoxMonData(boxMon, MON_DATA_HELD_ITEM, NULL);

    if ((monSpecies == SPECIES_ARCEUS) && (monAbility == 121)) {
        monForm = GetArceusItemType(Item_LoadParam(monHeldItem, 1, 0));
        SetBoxMonData(boxMon, MON_DATA_FORM, &monForm);
    }
}

u8 GetArceusItemType (u16 itemHoldEffect)
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
    case HOLD_EFFECT_ARCEUS_FIGHT:
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

int SetGiratinaForm (Pokemon *mon)
{
    int result;

    result = SetBoxGiratinaForm(&mon->box);

    if (result != -1) {
        CalculateMonLevelAndStats(mon);
    }

    return result;
}

int SetBoxGiratinaForm (BoxPokemon *boxMon)
{
    int monSpecies;
    int monHeldItem;
    int monForm;

    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    monHeldItem = GetBoxMonData(boxMon, MON_DATA_HELD_ITEM, NULL);

    if (monSpecies == SPECIES_GIRATINA) {
        monForm = (monHeldItem == ITEM_GRISEOUS_ORB) ? 1 : 0;

        SetBoxMonData(boxMon, MON_DATA_FORM, &monForm);
        CalculateBoxMonAbility(boxMon);

        return monForm;
    }

    return -1;
}

void SetGiratinaOriginForm (Pokemon *mon)
{
    int monForm = 1;

    if (GetMonData(mon, MON_DATA_SPECIES, NULL) == SPECIES_GIRATINA) {
        SetBoxMonData(&mon->box, MON_DATA_FORM, &monForm);
        CalculateBoxMonAbility(&mon->box);
        CalculateMonLevelAndStats(mon);
    }
}

void SetPartyGiratinaForm (Party *party, int param1)
{
    int i, currentPartyCount;
    Pokemon *mon;

    currentPartyCount = Party_GetCurrentCount(party);

    for (i = 0; i < currentPartyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);

        if (param1) {
            SetGiratinaOriginForm(mon);
        } else {
            SetGiratinaForm(mon);
        }
    }
}

void SetShayminForm (Pokemon *mon, int monForm)
{
    SetBoxShayminForm(&mon->box, monForm);
    CalculateMonLevelAndStats(mon);
}

void SetBoxShayminForm (BoxPokemon *boxMon, int monForm)
{
    int monSpecies;

    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);

    if (monSpecies == SPECIES_SHAYMIN) {
        GF_ASSERT(monForm <= 1);

        SetBoxMonData(boxMon, MON_DATA_FORM, &monForm);
        CalculateBoxMonAbility(boxMon);
    }
}

BOOL CanShayminSkyForm (Pokemon *mon)
{
    u32 monSpecies, monForm, v2, monCurrentHP, monFatefulEncounter;
    RTCTime rtcTime;

    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monForm = GetMonData(mon, MON_DATA_FORM, NULL);
    v2 = GetMonData(mon, MON_DATA_160, NULL);
    monCurrentHP = GetMonData(mon, MON_DATA_CURRENT_HP, NULL);
    monFatefulEncounter = GetMonData(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    sub_02013880(&rtcTime);

    if ((monSpecies == SPECIES_SHAYMIN) && (monForm == 0) && (monCurrentHP > 0) && (monFatefulEncounter == 1) && ((v2 & 0x20) == 0) && ((rtcTime.hour >= 4) && (rtcTime.hour < 20))) {
        return 1;
    }

    return 0;
}

void SetShayminLandForm (Party *party)
{
    int i, currentPartyCount, monSpecies, monForm;
    Pokemon *mon;
    int zero = 0;

    currentPartyCount = Party_GetCurrentCount(party);

    for (i = 0; i < currentPartyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);
        monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
        monForm = GetMonData(mon, MON_DATA_FORM, NULL);

        if ((monSpecies == SPECIES_SHAYMIN) && (monForm == 1)) {
            SetShayminForm(mon, zero);
        }
    }
}

BOOL SetPartyShayminForm (Party *party, int param1, const RTCTime *rtcTime)
{
    s32 hours, minutes;

    if ((rtcTime->hour >= 20) || (rtcTime->hour < 4)) {
        hours = rtcTime->hour;

        if (hours < 4) {
            hours += 24;
        }

        hours -= 20;
        minutes = rtcTime->minute + hours * 60;

        param1++;

        if (minutes < param1) {
            SetShayminLandForm(party);
            return 1;
        }

        return 0;
    } else {
        minutes = rtcTime->minute + (rtcTime->hour - 4) * 60;

        if (minutes < param1) {
            SetShayminLandForm(party);
            return 1;
        }

        return 0;
    }
}

BOOL SetRotomForm (Pokemon *mon, int monForm, int moveSlot)
{
    int monSpecies, currentMonForm;

    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);

    if (monSpecies != SPECIES_ROTOM) {
        return 0;
    }

    currentMonForm = GetMonData(mon, MON_DATA_FORM, NULL);

    {
        int i, j, newFormMoveID, moveID;
        static const u16 rotomFormMoves[] = {
            MOVE_NONE,
            MOVE_OVERHEAT,
            MOVE_HYDRO_PUMP,
            MOVE_BLIZZARD,
            MOVE_AIR_SLASH,
            MOVE_LEAF_STORM
        };

        newFormMoveID = rotomFormMoves[monForm];

        for (i = 0; i < 4; i++) {
            moveID = GetMonData(mon, MON_DATA_MOVE1 + i, NULL);

            for (j = 1; j < NELEMS(rotomFormMoves); j++) {
                if ((moveID != 0) && (moveID == rotomFormMoves[j])) {
                    if (newFormMoveID != 0) {
                        ResetMonMove(mon, newFormMoveID, i);
                        newFormMoveID = 0;
                        break;
                    } else {
                        DeleteMonMove(mon, i);
                        i--;
                        break;
                    }
                }
            }
        }

        if (newFormMoveID != 0) {
            for (i = 0; i < 4; i++) {
                if (GetMonData(mon, MON_DATA_MOVE1 + i, NULL) == 0) {
                    ResetMonMove(mon, newFormMoveID, i);
                    break;
                }
            }

            if (i == 4) {
                ResetMonMove(mon, newFormMoveID, moveSlot);
            }
        }

        if (GetMonData(mon, MON_DATA_MOVE1, NULL) == 0) {
            ResetMonMove(mon, MOVE_THUNDER_SHOCK, 0);
        }
    }

    SetMonData(mon, MON_DATA_FORM, &monForm);
    CalculateMonAbility(mon);
    CalculateMonLevelAndStats(mon);

    return 1;
}

void LoadMonLevelUpMoves (int monSpecies, int monForm, u16 *monLevelUpMoves)
{
    monSpecies = GetMonFormNarcIndex(monSpecies, monForm);
    NARC_ReadWholeMemberByIndexPair(monLevelUpMoves, NARC_INDEX_POKETOOL__PERSONAL__WOTBL, monSpecies);
}

void sub_02077D3C (UnkStruct_0202CC84 *param0, int param1, u16 monSpecies, int param3, int param4, int param5, int param6, int param7)
{
    if (monSpecies == SPECIES_CHATOT) {
        if (sub_020064C8(param1) == 0) {
            sub_020063D4(1);
            sub_020059D0(param1, monSpecies, param4, param5, param7, param3);
        } else {
            if (param6) {
                sub_020063D4(1);
            }

            sub_020063E4(param0, NULL, param5, param4);
        }
    } else {
        sub_020059D0(param1, monSpecies, param4, param5, param7, param3);
    }
}

void sub_02077DB4 (UnkStruct_0202CC84 *param0, int param1, u16 monSpecies, int param3, int param4, int param5, int param6, int param7, u8 param8)
{
    if (monSpecies == SPECIES_CHATOT) {
        if (sub_020064C8(param1) == 0) {
            sub_020063D4(1);
            sub_02005F4C(param1, monSpecies, param4, param5, param7, param8, param3);
        } else {
            if (param6) {
                sub_020063D4(1);
            }

            sub_02006438(param0, NULL, param5, param4, param8);
        }
    } else {
        sub_02005F4C(param1, monSpecies, param4, param5, param7, param8, param3);
    }
}

BOOL sub_02077E3C (Pokemon *mon)
{
    int monSpecies, monForm;

    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monForm = GetMonData(mon, MON_DATA_FORM, NULL);

    return sub_02005844(monSpecies, monForm);
}

void sub_02077E64 (Pokemon *mon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5)
{
    int monMaxHP;

    sub_02077EA4(&mon->box, param1, monPokeball, param3, param4, param5);

    if (monPokeball == ITEM_HEAL_BALL) {
        monMaxHP = GetMonData(mon, MON_DATA_MAX_HP, NULL);
        SetMonData(mon, MON_DATA_CURRENT_HP, &monMaxHP);

        monMaxHP = 0;
        SetMonData(mon, MON_DATA_160, &monMaxHP);
    }
}

void sub_02077EA4 (BoxPokemon *boxMon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5)
{
    sub_0209305C(boxMon, param1, 0, param3, param5);
    SetBoxMonData(boxMon, MON_DATA_MET_GAME, &Unk_020E4C40);
    SetBoxMonData(boxMon, MON_DATA_POKEBALL, &monPokeball);
    SetBoxMonData(boxMon, MON_DATA_158, &param4);
}

void sub_02077EE4 (Pokemon *mon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5)
{
    sub_02077EF8(&mon->box, param1, monPokeball, param3, param4, param5);
}

void sub_02077EF8 (BoxPokemon *boxMon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5)
{
    sub_02077EA4(boxMon, param1, monPokeball, param3, param4, param5);
}

static const u16 sHeldItemChance[][2] = {
    {45, 95},
    {20, 80}
};

void sub_02077F0C (Pokemon *mon, u32 param1, int param2)
{
    u32 rand;
    u16 monSpecies;
    u16 monForm;
    u16 monItem1, monItem2;

    if (param1 & ((0x1 | 0x80))) {
        return;
    }

    rand = LCRNG_Next() % 100;
    monSpecies = GetMonData(mon, MON_DATA_SPECIES, NULL);
    monForm = GetMonData(mon, MON_DATA_FORM, NULL);
    monItem1 = GetMonFormPersonalDataAttribute(monSpecies, monForm, MON_DATA_PERSONAL_ITEM1);
    monItem2 = GetMonFormPersonalDataAttribute(monSpecies, monForm, MON_DATA_PERSONAL_ITEM2);

    if ((monItem1 == monItem2) && (monItem1 != 0)) {
        SetMonData(mon, MON_DATA_HELD_ITEM, &monItem1);
        return;
    }

    if (rand < sHeldItemChance[param2][0]) {
        return;
    } else if (rand < sHeldItemChance[param2][1]) {
        SetMonData(mon, MON_DATA_HELD_ITEM, &monItem1);
    } else {
        SetMonData(mon, MON_DATA_HELD_ITEM, &monItem2);
    }
}

BOOL CanMonLearnTM (Pokemon *mon, u8 tmID)
{
    return CanBoxMonLearnTM(&mon->box, tmID);
}

BOOL CanBoxMonLearnTM (BoxPokemon *boxMon, u8 tmID)
{
    u16 monSpeciesEgg;
    int monForm;

    monSpeciesEgg = GetBoxMonData(boxMon, MON_DATA_SPECIES_EGG, NULL);
    monForm = GetBoxMonData(boxMon, MON_DATA_FORM, NULL);

    return CanMonSpeciesLearnTM(monSpeciesEgg, monForm, tmID);
}

BOOL CanMonSpeciesLearnTM (u16 monSpecies, int monForm, u8 tmID)
{
    u32 tmFlag;
    u8 monPersonalDataAttribute;

    if (monSpecies == SPECIES_EGG) {
        return 0;
    }

    if (tmID < 32) {
        tmFlag = (1 << tmID);
        monPersonalDataAttribute = MON_DATA_PERSONAL_TM_LEARNSET_MASK_1;
    } else if (tmID < 64) {
        tmFlag = (1 << (tmID - 32));
        monPersonalDataAttribute = MON_DATA_PERSONAL_TM_LEARNSET_MASK_2;
    } else if (tmID < 96) {
        tmFlag = (1 << (tmID - 64));
        monPersonalDataAttribute = MON_DATA_PERSONAL_TM_LEARNSET_MASK_3;
    } else {
        tmFlag = (1 << (tmID - 96));
        monPersonalDataAttribute = MON_DATA_PERSONAL_TM_LEARNSET_MASK_4;
    }

    return (GetMonFormPersonalDataAttribute(monSpecies, monForm, monPersonalDataAttribute) & tmFlag) != 0;
}

void CalculateMonAbility (Pokemon *mon)
{
    CalculateBoxMonAbility(&mon->box);
}

void CalculateBoxMonAbility (BoxPokemon *boxMon)
{
    BOOL reencrypt;
    int monSpecies, monForm;
    int monAbility1, monAbility2;
    u32 monPersonality;

    reencrypt = DecryptBoxMon(boxMon);
    monSpecies = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    monPersonality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, NULL);
    monForm = GetBoxMonData(boxMon, MON_DATA_FORM, NULL);
    monAbility1 = GetMonFormPersonalDataAttribute(monSpecies, monForm, MON_DATA_PERSONAL_ABILITY_1);
    monAbility2 = GetMonFormPersonalDataAttribute(monSpecies, monForm, MON_DATA_PERSONAL_ABILITY_2);

    if (monAbility2 != 0) {
        if (monPersonality & 1) {
            SetBoxMonData(boxMon, MON_DATA_ABILITY, &monAbility2);
        } else {
            SetBoxMonData(boxMon, MON_DATA_ABILITY, &monAbility1);
        }
    } else {
        SetBoxMonData(boxMon, MON_DATA_ABILITY, &monAbility1);
    }

    EncryptBoxMon(boxMon, reencrypt);
}

void sub_020780C4 (Pokemon *mon, u32 monPersonality)
{
    Pokemon *newMon;
    PokemonDataBlockA *newMonBlockA;
    PokemonDataBlockB *newMonBlockB;
    PokemonDataBlockC *newMonBlockC;
    PokemonDataBlockD *newMonBlockD;
    PokemonDataBlockA *monBlockA;
    PokemonDataBlockB *monBlockB;
    PokemonDataBlockC *monBlockC;
    PokemonDataBlockD *monBlockD;

    newMon = AllocMonZeroed(0);

    sub_020775EC(mon, newMon);

    newMonBlockA = GetBoxMonDataBlock(&newMon->box, mon->box.personality, 0);
    newMonBlockB = GetBoxMonDataBlock(&newMon->box, mon->box.personality, 1);
    newMonBlockC = GetBoxMonDataBlock(&newMon->box, mon->box.personality, 2);
    newMonBlockD = GetBoxMonDataBlock(&newMon->box, mon->box.personality, 3);
    monBlockA = GetBoxMonDataBlock(&mon->box, monPersonality, 0);
    monBlockB = GetBoxMonDataBlock(&mon->box, monPersonality, 1);
    monBlockC = GetBoxMonDataBlock(&mon->box, monPersonality, 2);
    monBlockD = GetBoxMonDataBlock(&mon->box, monPersonality, 3);

    DecryptMonData(&newMon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, newMon->box.checksum);
    DecryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    DecryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);

    mon->box.personality = monPersonality;

    *monBlockA = *newMonBlockA;
    *monBlockB = *newMonBlockB;
    *monBlockC = *newMonBlockC;
    *monBlockD = *newMonBlockD;

    mon->box.checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);

    EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    Heap_FreeToHeap(newMon);
}

static void LoadMonPersonalData (int monSpecies, PokemonPersonalData *monPersonalData)
{
    NARC_ReadWholeMemberByIndexPair(monPersonalData, NARC_INDEX_POKETOOL__PERSONAL__PL_PERSONAL, monSpecies);
}

static void LoadMonFormPersonalData (int monSpecies, int monForm, PokemonPersonalData *monPersonalData)
{
    monSpecies = GetMonFormNarcIndex(monSpecies, monForm);
    NARC_ReadWholeMemberByIndexPair(monPersonalData, NARC_INDEX_POKETOOL__PERSONAL__PL_PERSONAL, monSpecies);
}

static void LoadMonEvolutionData (int monSpecies, PokemonEvolutionData *monEvolutionData)
{
    NARC_ReadWholeMemberByIndexPair(monEvolutionData, NARC_INDEX_POKETOOL__PERSONAL__EVO, monSpecies);
}

static void EncryptMonData (void *data, u32 bytes, u32 seed)
{
    EncryptData(data, bytes, seed);
}

static void DecryptMonData (void *data, u32 bytes, u32 seed)
{
    DecryptData(data, bytes, seed);
}

static u16 GetMonDataChecksum (void *data, u32 bytes)
{
    int i;
    u16 *dataWords = data;
    u16 checksum = 0;

    for (i = 0; i < bytes / 2; i++) {
        checksum += dataWords[i];
    }

    return checksum;
}

#define DATA_BLOCK_SHUFFLE_CASE(v1, v2, v3, v4)                         \
{                                                                       \
        PokemonDataBlock *dataBlocks = boxMon->dataBlocks;              \
        switch (dataBlockID)                                            \
        {                                                               \
        case 0:                                                         \
            result = &dataBlocks[v1];                                   \
            break;                                                      \
        case 1:                                                         \
            result = &dataBlocks[v2];                                   \
            break;                                                      \
        case 2:                                                         \
            result = &dataBlocks[v3];                                   \
            break;                                                      \
        case 3:                                                         \
            result = &dataBlocks[v4];                                   \
            break;                                                      \
        }                                                               \
        break;                                                          \
}

static void * GetBoxMonDataBlock (BoxPokemon *boxMon, u32 personality, u8 dataBlockID)
{
    void *result;

    personality = (personality & 0x3e000) >> 13;

    GF_ASSERT(personality <= 31);

    switch (personality) {
    case 0:
    case 24:
        DATA_BLOCK_SHUFFLE_CASE(0,1,2,3)
    case 1:
    case 25:
        DATA_BLOCK_SHUFFLE_CASE(0,1,3,2)
    case 2:
    case 26:
        DATA_BLOCK_SHUFFLE_CASE(0,2,1,3)
    case  3:
    case 27:
        DATA_BLOCK_SHUFFLE_CASE(0,3,1,2)
    case  4:
    case 28:
        DATA_BLOCK_SHUFFLE_CASE(0,2,3,1)
    case  5:
    case 29:
        DATA_BLOCK_SHUFFLE_CASE(0,3,2,1)
    case  6:
    case 30:
        DATA_BLOCK_SHUFFLE_CASE(1,0,2,3)
    case  7:
    case 31:
        DATA_BLOCK_SHUFFLE_CASE(1,0,3,2)
    case  8:
        DATA_BLOCK_SHUFFLE_CASE(2,0,1,3)
    case  9:
        DATA_BLOCK_SHUFFLE_CASE(3,0,1,2)
    case 10:
        DATA_BLOCK_SHUFFLE_CASE(2,0,3,1)
    case 11:
        DATA_BLOCK_SHUFFLE_CASE(3,0,2,1)
    case 12:
        DATA_BLOCK_SHUFFLE_CASE(1,2,0,3)
    case 13:
        DATA_BLOCK_SHUFFLE_CASE(1,3,0,2)
    case 14:
        DATA_BLOCK_SHUFFLE_CASE(2,1,0,3)
    case 15:
        DATA_BLOCK_SHUFFLE_CASE(3,1,0,2)
    case 16:
        DATA_BLOCK_SHUFFLE_CASE(2,3,0,1)
    case 17:
        DATA_BLOCK_SHUFFLE_CASE(3,2,0,1)
    case 18:
        DATA_BLOCK_SHUFFLE_CASE(1,2,3,0)
    case 19:
        DATA_BLOCK_SHUFFLE_CASE(1,3,2,0)
    case 20:
        DATA_BLOCK_SHUFFLE_CASE(2,1,3,0)
    case 21:
        DATA_BLOCK_SHUFFLE_CASE(3,1,2,0)
    case 22:
        DATA_BLOCK_SHUFFLE_CASE(2,3,1,0)
    case 23:
        DATA_BLOCK_SHUFFLE_CASE(3,2,1,0)
    }

    return result;
}

static int GetMonFormNarcIndex (int monSpecies, int monForm)
{
    switch (monSpecies) {
    case SPECIES_DEOXYS:
        if ((monForm) && (monForm <= 3)) {
            monSpecies = (496 - 1) + monForm;
        }
        break;
    case SPECIES_WORMADAM:
        if ((monForm) && (monForm <= 2)) {
            monSpecies = (499 - 1) + monForm;
        }
        break;
    case SPECIES_GIRATINA:
        if ((monForm) && (monForm <= 1)) {
            monSpecies = (501 - 1) + monForm;
        }
        break;
    case SPECIES_SHAYMIN:
        if ((monForm) && (monForm <= 1)) {
            monSpecies = (502 - 1) + monForm;
        }
        break;
    case SPECIES_ROTOM:
        if ((monForm) && (monForm <= 5)) {
            monSpecies = (503 - 1) + monForm;
        }
        break;
    default:
        break;
    }

    return monSpecies;
}

u32 GetSingleBitMask (int index)
{
    int i;
    u32 bitMask = 1;

    GF_ASSERT(index < 32);

    for (i = 0; i < index; i++) {
        bitMask <<= 1;
    }

    return bitMask;
}

int GetLowestSetBitIndex (u32 num)
{
    int i;
    u32 bit = 1;

    for (i = 0; i < 32; i++) {
        if (num & bit) {
            break;
        }

        bit <<= 1;
    }

    return i;
}

static const u16 Unk_020F05BE[18] = {
    0x96,
    0x97,
    0xF9,
    0xFA,
    0xFB,
    0x17E,
    0x17F,
    0x180,
    0x181,
    0x182,
    0x1E3,
    0x1E4,
    0x1E7,
    0x1E9,
    0x1EA,
    0x1EB,
    0x1EC,
    0x1ED
};

BOOL sub_02078804 (u16 param0)
{
    u32 i;

    for (i = 0; i < NELEMS(Unk_020F05BE); i++) {
        if (param0 == Unk_020F05BE[i]) {
            return 1;
        }
    }

    return 0;
}

u16 sub_02078824 (u8 index)
{
    if (index >= NELEMS(Unk_020F05BE)) {
        index = 0;
    }

    return Unk_020F05BE[index];
}

BOOL sub_02078838 (Pokemon *mon)
{
    u16 monSpecies = (u16)GetMonData(mon, MON_DATA_SPECIES, NULL);
    return sub_02078804(monSpecies);
}

BOOL sub_0207884C (BoxPokemon *boxMon, UnkStruct_02025E6C *param1, int heapID)
{
    u32 v0 = sub_02025F20(param1);
    u32 monOTID = GetBoxMonData(boxMon, MON_DATA_OT_ID, NULL);
    u32 v2 = sub_02025F30(param1);
    u32 monOtGender = GetBoxMonData(boxMon, MON_DATA_OT_GENDER, NULL);
    Strbuf *v4 = sub_02025F04(param1, heapID);
    Strbuf *v5 = Strbuf_Init(8, heapID);
    BOOL v6 = 0;

    GetBoxMonData(boxMon, MON_DATA_145, v5);

    if ((v0 == monOTID) && (v2 == monOtGender) && (Strbuf_Compare(v4, v5) == 0)) {
        v6 = 1;
    }

    Strbuf_Free(v5);
    Strbuf_Free(v4);

    return v6;
}

int sub_020788D0 (int param0)
{
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
        if (sub_020793AC(param0) == 1) {
            param0 = 1;
        } else {
            param0 = 0;
        }
        break;
    }

    return param0;
}

void sub_0207893C (Pokemon *mon)
{
    u8 zero;
    UnkStruct_0202CA28 v1;

    zero = 0;

    MI_CpuClearFast(&v1, sizeof(UnkStruct_0202CA28));

    SetMonData(mon, MON_DATA_162, &zero);
    SetMonData(mon, MON_DATA_171, &v1);
}

void sub_0207896C (BoxPokemon *boxMon)
{
    BOOL reencrypt;
    int i;

    reencrypt = DecryptBoxMon(boxMon);

    for (i = 0; i < 4; i++) {
        if (GetBoxMonData(boxMon, MON_DATA_MOVE1 + i, NULL)) {
            u8 moveMaxPP = GetBoxMonData(boxMon, MON_DATA_MOVE1_MAX_PP + i, NULL);

            SetBoxMonData(boxMon, MON_DATA_MOVE1_CUR_PP + i, &moveMaxPP);
        }
    }

    EncryptBoxMon(boxMon, reencrypt);
}

static inline int GetLowestBitInverse (int num)
{
    int result;

    result = (num & 0x1) ? 0 : 1;
    return result;
}

void sub_020789BC (NARC *narc, UnkStruct_02007C10 *param1, u16 param2, u16 param3)
{
    UnkStruct_020789BC v0;
    int v1;

    v1 = GetLowestBitInverse(param3);

    NARC_ReadFromMember(narc, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    MI_CpuCopy8(&v0.unk_00[v1].unk_03[0], param1, sizeof(UnkStruct_02007C10) * 10);
}

void sub_020789F4 (NARC *narc, UnkStruct_02015F84 *param1, UnkStruct_02007C7C *param2, u16 param3, int param4, int param5, int param6)
{
    UnkStruct_020789F4 v0;
    UnkStruct_020789BC v1;
    int v2;
    int v3;

    v3 = (param4 == 2) ? 0 : 1;

    NARC_ReadFromMember(narc, 0, param3 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v1);

    v0.unk_00 = v1.unk_00[v3].unk_01;
    v0.unk_02 = v1.unk_00[v3].unk_02;
    v0.unk_04 = param5;

    sub_02015FCC(param1, param2, &v0, param6);
}

void sub_02078A4C (NARC *narc, u8 *param1, u16 param2, u16 param3)
{
    UnkStruct_020789BC v0;
    int v1;

    v1 = GetLowestBitInverse(param3);
    NARC_ReadFromMember(narc, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);

    *param1 = v0.unk_00[v1].unk_00;
}

void sub_02078A80 (NARC *narc, s8 *param1, u16 param2)
{
    UnkStruct_020789BC v0;

    NARC_ReadFromMember(narc, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    *param1 = v0.unk_56;
}

void sub_02078AA4 (NARC *narc, s8 *param1, u16 param2)
{
    UnkStruct_020789BC v0;

    NARC_ReadFromMember(narc, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    *param1 = v0.unk_57;
}

void sub_02078AC8 (NARC *narc, u8 *param1, u16 param2)
{
    UnkStruct_020789BC v0;

    NARC_ReadFromMember(narc, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    *param1 = v0.unk_58;
}

BOOL sub_02078AEC (int param0, Pokemon *mon, int heapID)
{
    int v0;
    int one;
    UnkStruct_0202CA28 v2;
    NARC *narc;

    v0 = param0;

    if (v0 == 0) {
        return 0;
    }

    narc = NARC_ctor(NARC_INDEX_APPLICATION__CUSTOM_BALL__EDIT__PL_CB_DATA, heapID);
    v0 = v0 - 1;
    one = 1;

    NARC_ReadFromMember(narc, 0, v0 * sizeof(UnkStruct_0202CA28), sizeof(UnkStruct_0202CA28), &v2);
    SetMonData(mon, MON_DATA_162, &one);
    SetMonData(mon, MON_DATA_171, &v2);
    NARC_dtor(narc);

    return 1;
}

void sub_02078B40 (Pokemon *mon, UnkStruct_02078B40 *param1)
{
    BoxPokemon *boxMon;
    PokemonDataBlockA *monDataBlockA;
    PokemonDataBlockB *monDataBlockB;
    PokemonDataBlockC *monDataBlockC;
    PokemonDataBlockD *monDataBlockD;
    int i;

    if (mon->box.partyDecrypted == 0) {
        DecryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        DecryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }

    boxMon = GetBoxMon(mon);
    monDataBlockA = GetBoxMonDataBlock(boxMon, boxMon->personality, 0);
    monDataBlockB = GetBoxMonDataBlock(boxMon, boxMon->personality, 1);
    monDataBlockC = GetBoxMonDataBlock(boxMon, boxMon->personality, 2);
    monDataBlockD = GetBoxMonDataBlock(boxMon, boxMon->personality, 3);

    param1->personality = boxMon->personality;
    param1->partyDecrypted = 0;
    param1->boxDecrypted = 0;
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
    param1->unk_2C_31 = monDataBlockB->unk_10_31;
    param1->fatefulEncounter = monDataBlockB->fatefulEncounter;
    param1->gender = monDataBlockB->gender;
    param1->form = monDataBlockB->form;

    for (i = 0; i < 10 + 1; i++) {
        param1->unk_32[i] = monDataBlockC->unk_00[i];
    }

    for (i = 0; i < 7 + 1; i++) {
        param1->unk_48[i] = monDataBlockD->unk_00[i];
    }

    param1->pokeball = monDataBlockD->pokeball;

    param1->unk_5C = mon->party.unk_00;
    param1->level = mon->party.level;
    param1->unk_61 = mon->party.unk_05;
    param1->unk_62 = mon->party.unk_06;
    param1->unk_64 = mon->party.unk_08;
    param1->unk_66 = mon->party.unk_0A;
    param1->unk_68 = mon->party.unk_0C;
    param1->unk_6A = mon->party.unk_0E;
    param1->unk_6C = mon->party.unk_10;
    param1->unk_6E = mon->party.unk_12;

    if (mon->box.partyDecrypted == 0) {
        EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
        EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
    }
}

void sub_02078E0C (UnkStruct_02078B40 *param0, Pokemon *mon)
{
    BoxPokemon *boxMon;
    PokemonDataBlockA *monDataBlockA;
    PokemonDataBlockB *monDataBlockB;
    PokemonDataBlockC *monDataBlockC;
    PokemonDataBlockD *monDataBlockD;
    int i;

    MI_CpuClearFast(mon, sizeof(Pokemon));

    boxMon = GetBoxMon(mon);
    monDataBlockA = GetBoxMonDataBlock(boxMon, param0->personality, 0);
    monDataBlockB = GetBoxMonDataBlock(boxMon, param0->personality, 1);
    monDataBlockC = GetBoxMonDataBlock(boxMon, param0->personality, 2);
    monDataBlockD = GetBoxMonDataBlock(boxMon, param0->personality, 3);

    boxMon->personality = param0->personality;
    boxMon->partyDecrypted = 0;
    boxMon->boxDecrypted = 0;
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
    monDataBlockB->unk_10_31 = param0->unk_2C_31;
    monDataBlockB->fatefulEncounter = param0->fatefulEncounter;
    monDataBlockB->gender = param0->gender;
    monDataBlockB->form = param0->form;

    for (i = 0; i < 10 + 1; i++) {
        monDataBlockC->unk_00[i] = param0->unk_32[i];
    }

    for (i = 0; i < 7 + 1; i++) {
        monDataBlockD->unk_00[i] = param0->unk_48[i];
    }

    monDataBlockD->pokeball = param0->pokeball;

    mon->party.unk_00 = param0->unk_5C;
    mon->party.level = param0->level;
    mon->party.unk_05 = param0->unk_61;
    mon->party.unk_06 = param0->unk_62;
    mon->party.unk_08 = param0->unk_64;
    mon->party.unk_0A = param0->unk_66;
    mon->party.unk_0C = param0->unk_68;
    mon->party.unk_0E = param0->unk_6A;
    mon->party.unk_10 = param0->unk_6C;
    mon->party.unk_12 = param0->unk_6E;

    EncryptMonData(&mon->party, sizeof(PartyPokemon), mon->box.personality);
    mon->box.checksum = GetMonDataChecksum(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4);
    EncryptMonData(&mon->box.dataBlocks, sizeof(PokemonDataBlock) * 4, mon->box.checksum);
}

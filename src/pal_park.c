#include "global.h"

#include "data_021BF67C.h"
#include "struct_defs/struct_02073C74_sub1.h"

#include "overlay097/struct_ov97_0223685C.h"

#include "unk_02073C2C.h"
#include "item.h"
#include "pal_park.h"
#include "pokemon.h"
#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_0223635C.h"
#include "overlay097/ov97_022392E4.h"

#include "constants/items.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/gba/pokemon.h"
#include "constants/gba/species.h"

typedef struct {
    u8 unk_00[8];
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A[4];
    u16 unk_0E;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u16 unk_14_0 : 3;
    u16 unk_14_3 : 5;
    u16 unk_14_8 : 1;
    u16 unk_14_9 : 1;
    u16 unk_14_10 : 1;
    u16 unk_14_11 : 1;
    u16  : 4;
} UnkStruct_ov97_0223635C;

u32 ov97_0223635C (void)
{
    UnkStruct_ov97_0223635C * v0 = ov97_02236350();
    return v0->unk_0A[3] << 24 | v0->unk_0A[2] << 16 | v0->unk_0A[1] << 8 | v0->unk_0A[0];
}

u8 * ov97_02236378 (void)
{
    UnkStruct_ov97_0223635C * v0 = ov97_02236350();
    return v0->unk_00;
}

#define GBA_TO_DS_SPECIES(name) { GBA_##name, name }

struct {
    u16 speciesGBA;
    u16 speciesDS;
} GBAToDSSpeciesArray[] = {
    GBA_TO_DS_SPECIES(SPECIES_TREECKO),
    GBA_TO_DS_SPECIES(SPECIES_GROVYLE),
    GBA_TO_DS_SPECIES(SPECIES_SCEPTILE),
    GBA_TO_DS_SPECIES(SPECIES_TORCHIC),
    GBA_TO_DS_SPECIES(SPECIES_COMBUSKEN),
    GBA_TO_DS_SPECIES(SPECIES_BLAZIKEN),
    GBA_TO_DS_SPECIES(SPECIES_MUDKIP),
    GBA_TO_DS_SPECIES(SPECIES_MARSHTOMP),
    GBA_TO_DS_SPECIES(SPECIES_SWAMPERT),
    GBA_TO_DS_SPECIES(SPECIES_POOCHYENA),
    GBA_TO_DS_SPECIES(SPECIES_MIGHTYENA),
    GBA_TO_DS_SPECIES(SPECIES_ZIGZAGOON),
    GBA_TO_DS_SPECIES(SPECIES_LINOONE),
    GBA_TO_DS_SPECIES(SPECIES_WURMPLE),
    GBA_TO_DS_SPECIES(SPECIES_SILCOON),
    GBA_TO_DS_SPECIES(SPECIES_BEAUTIFLY),
    GBA_TO_DS_SPECIES(SPECIES_CASCOON),
    GBA_TO_DS_SPECIES(SPECIES_DUSTOX),
    GBA_TO_DS_SPECIES(SPECIES_LOTAD),
    GBA_TO_DS_SPECIES(SPECIES_LOMBRE),
    GBA_TO_DS_SPECIES(SPECIES_LUDICOLO),
    GBA_TO_DS_SPECIES(SPECIES_SEEDOT),
    GBA_TO_DS_SPECIES(SPECIES_NUZLEAF),
    GBA_TO_DS_SPECIES(SPECIES_SHIFTRY),
    GBA_TO_DS_SPECIES(SPECIES_NINCADA),
    GBA_TO_DS_SPECIES(SPECIES_NINJASK),
    GBA_TO_DS_SPECIES(SPECIES_SHEDINJA),
    GBA_TO_DS_SPECIES(SPECIES_TAILLOW),
    GBA_TO_DS_SPECIES(SPECIES_SWELLOW),
    GBA_TO_DS_SPECIES(SPECIES_SHROOMISH),
    GBA_TO_DS_SPECIES(SPECIES_BRELOOM),
    GBA_TO_DS_SPECIES(SPECIES_SPINDA),
    GBA_TO_DS_SPECIES(SPECIES_WINGULL),
    GBA_TO_DS_SPECIES(SPECIES_PELIPPER),
    GBA_TO_DS_SPECIES(SPECIES_SURSKIT),
    GBA_TO_DS_SPECIES(SPECIES_MASQUERAIN),
    GBA_TO_DS_SPECIES(SPECIES_WAILMER),
    GBA_TO_DS_SPECIES(SPECIES_WAILORD),
    GBA_TO_DS_SPECIES(SPECIES_SKITTY),
    GBA_TO_DS_SPECIES(SPECIES_DELCATTY),
    GBA_TO_DS_SPECIES(SPECIES_KECLEON),
    GBA_TO_DS_SPECIES(SPECIES_BALTOY),
    GBA_TO_DS_SPECIES(SPECIES_CLAYDOL),
    GBA_TO_DS_SPECIES(SPECIES_NOSEPASS),
    GBA_TO_DS_SPECIES(SPECIES_TORKOAL),
    GBA_TO_DS_SPECIES(SPECIES_SABLEYE),
    GBA_TO_DS_SPECIES(SPECIES_BARBOACH),
    GBA_TO_DS_SPECIES(SPECIES_WHISCASH),
    GBA_TO_DS_SPECIES(SPECIES_LUVDISC),
    GBA_TO_DS_SPECIES(SPECIES_CORPHISH),
    GBA_TO_DS_SPECIES(SPECIES_CRAWDAUNT),
    GBA_TO_DS_SPECIES(SPECIES_FEEBAS),
    GBA_TO_DS_SPECIES(SPECIES_MILOTIC),
    GBA_TO_DS_SPECIES(SPECIES_CARVANHA),
    GBA_TO_DS_SPECIES(SPECIES_SHARPEDO),
    GBA_TO_DS_SPECIES(SPECIES_TRAPINCH),
    GBA_TO_DS_SPECIES(SPECIES_VIBRAVA),
    GBA_TO_DS_SPECIES(SPECIES_FLYGON),
    GBA_TO_DS_SPECIES(SPECIES_MAKUHITA),
    GBA_TO_DS_SPECIES(SPECIES_HARIYAMA),
    GBA_TO_DS_SPECIES(SPECIES_ELECTRIKE),
    GBA_TO_DS_SPECIES(SPECIES_MANECTRIC),
    GBA_TO_DS_SPECIES(SPECIES_NUMEL),
    GBA_TO_DS_SPECIES(SPECIES_CAMERUPT),
    GBA_TO_DS_SPECIES(SPECIES_SPHEAL),
    GBA_TO_DS_SPECIES(SPECIES_SEALEO),
    GBA_TO_DS_SPECIES(SPECIES_WALREIN),
    GBA_TO_DS_SPECIES(SPECIES_CACNEA),
    GBA_TO_DS_SPECIES(SPECIES_CACTURNE),
    GBA_TO_DS_SPECIES(SPECIES_SNORUNT),
    GBA_TO_DS_SPECIES(SPECIES_GLALIE),
    GBA_TO_DS_SPECIES(SPECIES_LUNATONE),
    GBA_TO_DS_SPECIES(SPECIES_SOLROCK),
    GBA_TO_DS_SPECIES(SPECIES_AZURILL),
    GBA_TO_DS_SPECIES(SPECIES_SPOINK),
    GBA_TO_DS_SPECIES(SPECIES_GRUMPIG),
    GBA_TO_DS_SPECIES(SPECIES_PLUSLE),
    GBA_TO_DS_SPECIES(SPECIES_MINUN),
    GBA_TO_DS_SPECIES(SPECIES_MAWILE),
    GBA_TO_DS_SPECIES(SPECIES_MEDITITE),
    GBA_TO_DS_SPECIES(SPECIES_MEDICHAM),
    GBA_TO_DS_SPECIES(SPECIES_SWABLU),
    GBA_TO_DS_SPECIES(SPECIES_ALTARIA),
    GBA_TO_DS_SPECIES(SPECIES_WYNAUT),
    GBA_TO_DS_SPECIES(SPECIES_DUSKULL),
    GBA_TO_DS_SPECIES(SPECIES_DUSCLOPS),
    GBA_TO_DS_SPECIES(SPECIES_ROSELIA),
    GBA_TO_DS_SPECIES(SPECIES_SLAKOTH),
    GBA_TO_DS_SPECIES(SPECIES_VIGOROTH),
    GBA_TO_DS_SPECIES(SPECIES_SLAKING),
    GBA_TO_DS_SPECIES(SPECIES_GULPIN),
    GBA_TO_DS_SPECIES(SPECIES_SWALOT),
    GBA_TO_DS_SPECIES(SPECIES_TROPIUS),
    GBA_TO_DS_SPECIES(SPECIES_WHISMUR),
    GBA_TO_DS_SPECIES(SPECIES_LOUDRED),
    GBA_TO_DS_SPECIES(SPECIES_EXPLOUD),
    GBA_TO_DS_SPECIES(SPECIES_CLAMPERL),
    GBA_TO_DS_SPECIES(SPECIES_HUNTAIL),
    GBA_TO_DS_SPECIES(SPECIES_GOREBYSS),
    GBA_TO_DS_SPECIES(SPECIES_ABSOL),
    GBA_TO_DS_SPECIES(SPECIES_SHUPPET),
    GBA_TO_DS_SPECIES(SPECIES_BANETTE),
    GBA_TO_DS_SPECIES(SPECIES_SEVIPER),
    GBA_TO_DS_SPECIES(SPECIES_ZANGOOSE),
    GBA_TO_DS_SPECIES(SPECIES_RELICANTH),
    GBA_TO_DS_SPECIES(SPECIES_ARON),
    GBA_TO_DS_SPECIES(SPECIES_LAIRON),
    GBA_TO_DS_SPECIES(SPECIES_AGGRON),
    GBA_TO_DS_SPECIES(SPECIES_CASTFORM),
    GBA_TO_DS_SPECIES(SPECIES_VOLBEAT),
    GBA_TO_DS_SPECIES(SPECIES_ILLUMISE),
    GBA_TO_DS_SPECIES(SPECIES_LILEEP),
    GBA_TO_DS_SPECIES(SPECIES_CRADILY),
    GBA_TO_DS_SPECIES(SPECIES_ANORITH),
    GBA_TO_DS_SPECIES(SPECIES_ARMALDO),
    GBA_TO_DS_SPECIES(SPECIES_RALTS),
    GBA_TO_DS_SPECIES(SPECIES_KIRLIA),
    GBA_TO_DS_SPECIES(SPECIES_GARDEVOIR),
    GBA_TO_DS_SPECIES(SPECIES_BAGON),
    GBA_TO_DS_SPECIES(SPECIES_SHELGON),
    GBA_TO_DS_SPECIES(SPECIES_SALAMENCE),
    GBA_TO_DS_SPECIES(SPECIES_BELDUM),
    GBA_TO_DS_SPECIES(SPECIES_METANG),
    GBA_TO_DS_SPECIES(SPECIES_METAGROSS),
    GBA_TO_DS_SPECIES(SPECIES_REGIROCK),
    GBA_TO_DS_SPECIES(SPECIES_REGICE),
    GBA_TO_DS_SPECIES(SPECIES_REGISTEEL),
    GBA_TO_DS_SPECIES(SPECIES_KYOGRE),
    GBA_TO_DS_SPECIES(SPECIES_GROUDON),
    GBA_TO_DS_SPECIES(SPECIES_RAYQUAZA),
    GBA_TO_DS_SPECIES(SPECIES_LATIAS),
    GBA_TO_DS_SPECIES(SPECIES_LATIOS),
    GBA_TO_DS_SPECIES(SPECIES_JIRACHI),
    GBA_TO_DS_SPECIES(SPECIES_DEOXYS),
    GBA_TO_DS_SPECIES(SPECIES_CHIMECHO),

    // The following IDs are not valid in Gen 3, but should they be migrated,
    // would become the indicated species.
    { 0x19C, SPECIES_BURMY },
    { 0x19D, SPECIES_WORMADAM },
    { 0x19E, SPECIES_MOTHIM },
    { 0x19F, SPECIES_COMBEE },
    { 0x1A0, SPECIES_VESPIQUEN },
    { 0x1A1, SPECIES_PACHIRISU },
    { 0x1A2, SPECIES_BUIZEL },
    { 0x1A3, SPECIES_FLOATZEL },
    { 0x1A4, SPECIES_CHERUBI }
};

void BoxMonGBAToBoxMon(BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon);

static u16 Unk_ov97_0223ECA0[] = {
	0x10,
	0x11,
	0x12,
	0x1D,
	0x1E,
	0x1F,
	0x20,
	0x21,
	0x22,
	0x23,
	0x24,
	0x2E,
	0x2F,
	0x30,
	0x31,
	0x34,
	0x35,
	0x38,
	0x39,
	0x42,
	0x43,
	0x44,
	0x56,
	0x57,
	0x5A,
	0x5B,
	0x60,
	0x61,
	0x6A,
	0x6B,
	0x72,
	0x73,
	0x74,
	0x75,
	0x7A,
	0x7B,
	0x7C,
	0x7F,
	0x80,
	0x85,
	0x86,
	0x87,
	0x88,
	0x89,
	0xAD,
	0xBB,
	0xBC,
	0xBD,
	0xBF,
	0xC0,
	0xC4,
	0xC5,
	0xC6,
	0xD2,
	0xD4,
	0xD5,
	0xD8,
	0xD9,
	0xDC,
	0xDD,
	0xDF,
	0xE0,
	0xE6,
	0xE9,
	0xEA,
	0xEB,
	0xEC,
	0xED,
	0xEE,
	0xF1,
	0x105,
	0x106,
	0x107,
	0x108,
	0x11D,
	0x11E,
	0x12C,
	0x12D,
	0x12E,
	0x13A,
	0x142,
	0x143,
	0x147,
	0x153,
	0x154,
	0x161,
	0x162,
	0x165,
	0x167,
	0x169,
	0x16A,
	0x16B,
	0x16C,
	0x16D
};


#define GBA_SUBSTRUCT_CASE(n, v1, v2, v3, substruct3)                               \
case n:                                                                     \
    {                                                                       \
    PokemonGBASubstruct * substructs0 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs1 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs2 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs3 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs4 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs5 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs6 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs7 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs8 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs9 = boxMonGBA->secure.substructs;  \
    PokemonGBASubstruct * substructs10 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs11 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs12 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs13 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs14 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs15 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs16 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs17 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs18 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs19 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs20 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs21 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs22 = boxMonGBA->secure.substructs; \
    PokemonGBASubstruct * substructs23 = boxMonGBA->secure.substructs; \
                                                                        \
        switch (substructType)                                          \
        {                                                               \
        case 0:                                                         \
            substruct = &substructs ## n [v1];                          \
            break;                                                      \
        case 1:                                                         \
            substruct = &substructs ## n [v2];                          \
            break;                                                      \
        case 2:                                                         \
            substruct = &substructs ## n [v3];                          \
            break;                                                      \
        case 3:                                                         \
            substruct = &substructs ## n [substruct3];                          \
            break;                                                      \
        }                                                               \
        break;                                                          \
    }

static PokemonGBASubstruct * GetGBASubstruct(BoxPokemonGBA *boxMonGBA, u32 personality, u8 substructType)
{
    PokemonGBASubstruct * substruct = NULL;

    switch (personality % 24)
    {
        GBA_SUBSTRUCT_CASE( 0,0,1,2,3)
        GBA_SUBSTRUCT_CASE( 1,0,1,3,2)
        GBA_SUBSTRUCT_CASE( 2,0,2,1,3)
        GBA_SUBSTRUCT_CASE( 3,0,3,1,2)
        GBA_SUBSTRUCT_CASE( 4,0,2,3,1)
        GBA_SUBSTRUCT_CASE( 5,0,3,2,1)
        GBA_SUBSTRUCT_CASE( 6,1,0,2,3)
        GBA_SUBSTRUCT_CASE( 7,1,0,3,2)
        GBA_SUBSTRUCT_CASE( 8,2,0,1,3)
        GBA_SUBSTRUCT_CASE( 9,3,0,1,2)
        GBA_SUBSTRUCT_CASE(10,2,0,3,1)
        GBA_SUBSTRUCT_CASE(11,3,0,2,1)
        GBA_SUBSTRUCT_CASE(12,1,2,0,3)
        GBA_SUBSTRUCT_CASE(13,1,3,0,2)
        GBA_SUBSTRUCT_CASE(14,2,1,0,3)
        GBA_SUBSTRUCT_CASE(15,3,1,0,2)
        GBA_SUBSTRUCT_CASE(16,2,3,0,1)
        GBA_SUBSTRUCT_CASE(17,3,2,0,1)
        GBA_SUBSTRUCT_CASE(18,1,2,3,0)
        GBA_SUBSTRUCT_CASE(19,1,3,2,0)
        GBA_SUBSTRUCT_CASE(20,2,1,3,0)
        GBA_SUBSTRUCT_CASE(21,3,1,2,0)
        GBA_SUBSTRUCT_CASE(22,2,3,1,0)
        GBA_SUBSTRUCT_CASE(23,3,2,1,0)
    }

    return substruct;
}

static void DecryptBoxMonGBA (BoxPokemonGBA *boxMonGBA)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&boxMonGBA->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= boxMonGBA->otId;
        v1[v0] ^= boxMonGBA->personality;
    }
}

static void EncryptBoxMonGBA (BoxPokemonGBA *boxMonGBA)
{
    int v0;
    u32 * v1;

    v1 = (u32 *)&boxMonGBA->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= boxMonGBA->personality;
        v1[v0] ^= boxMonGBA->otId;
    }
}

static u16 CalculateBoxMonGBAChecksum (BoxPokemonGBA *boxMonGBA)
{
    int i;
    u16 * substruct0;
    u16 * substruct1;
    u16 * substruct2;
    u16 * substruct3;
    u16 checksum = 0;

    substruct0 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 0);
    substruct1 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 1);
    substruct2 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 2);
    substruct3 = (u16 *)GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 3);

    for (i = 0; i < 12 / 2; i++)
        checksum += substruct0[i];

    for (i = 0; i < 12 / 2; i++)
        checksum += substruct1[i];

    for (i = 0; i < 12 / 2; i++)
        checksum += substruct2[i];

    for (i = 0; i < 12 / 2; i++)
        checksum += substruct3[i];

    return checksum;
}

u32 PalPark_GetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, u8 * param2)
{
    u32 retVal = 0;
    PokemonGBASubstruct0 * substruct0 = 0;
    PokemonGBASubstruct1 * substruct1 = 0;
    PokemonGBASubstruct2 * substruct2 = 0;
    PokemonGBASubstruct3 * substruct3 = 0;
    u16 checksum;

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
    {
        substruct0 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 0)->type0);
        substruct1 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 1)->type1);
        substruct2 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 2)->type2);
        substruct3 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 3)->type3);

        DecryptBoxMonGBA(boxMonGBA);
        checksum = CalculateBoxMonGBAChecksum(boxMonGBA);

        if (checksum != boxMonGBA->checksum) {
            boxMonGBA->isBadEgg = TRUE;
            boxMonGBA->isEgg = TRUE;
            substruct3->isEgg = TRUE;
        }
    }

    switch (field) {
    case MON_GBA_DATA_PERSONALITY:
        retVal = boxMonGBA->personality;
        break;
    case MON_GBA_DATA_OT_ID:
        retVal = boxMonGBA->otId;
        break;
    case MON_GBA_DATA_NICKNAME:
        if (boxMonGBA->isBadEgg)
            retVal = 0;
        else {
            for (retVal = 0; retVal < POKEMON_NAME_LENGTH; retVal++) {
                param2[retVal] = boxMonGBA->nickname[retVal];
            }
        }

        param2[retVal] = 0xff;
        break;
    case MON_GBA_DATA_LANGUAGE:
        retVal = boxMonGBA->language;
        break;
    case MON_GBA_DATA_SANITY_IS_BAD_EGG:
        retVal = boxMonGBA->isBadEgg;
        break;
    case MON_GBA_DATA_SANITY_HAS_SPECIES:
        retVal = boxMonGBA->hasSpecies;
        break;
    case MON_GBA_DATA_SANITY_IS_EGG:
        retVal = boxMonGBA->isEgg;
        break;
    case MON_GBA_DATA_OT_NAME:
        for (retVal = 0; retVal < PLAYER_NAME_LENGTH; retVal++)
            param2[retVal] = boxMonGBA->otName[retVal];

        param2[retVal] = 0xffff;
        break;
    case MON_GBA_DATA_MARKINGS:
        retVal = boxMonGBA->markings;
        break;
    case MON_GBA_DATA_CHECKSUM:
        retVal = boxMonGBA->checksum;
        break;
    case MON_GBA_DATA_ENCRYPT_SEPARATOR:
        retVal = boxMonGBA->unknown;
        break;
    case MON_GBA_DATA_SPECIES:
        if (boxMonGBA->isBadEgg)
            retVal = GBA_SPECIES_EGG;
        else
            retVal = substruct0->species;
        break;
    case MON_GBA_DATA_HELD_ITEM:
        retVal = substruct0->heldItem;
        break;
    case MON_GBA_DATA_EXP:
        retVal = substruct0->experience;
        break;
    case MON_GBA_DATA_PP_BONUSES:
        retVal = substruct0->ppBonuses;
        break;
    case MON_GBA_DATA_FRIENDSHIP:
        retVal = substruct0->friendship;
        break;
    case MON_GBA_DATA_MOVE1:
    case MON_GBA_DATA_MOVE2:
    case MON_GBA_DATA_MOVE3:
    case MON_GBA_DATA_MOVE4:
        retVal = substruct1->moves[field - MON_GBA_DATA_MOVE1];
        break;
    case MON_GBA_DATA_PP1:
    case MON_GBA_DATA_PP2:
    case MON_GBA_DATA_PP3:
    case MON_GBA_DATA_PP4:
        retVal = substruct1->pp[field - MON_GBA_DATA_PP1];
        break;
    case MON_GBA_DATA_HP_EV:
        retVal = substruct2->hpEV;
        break;
    case MON_GBA_DATA_ATK_EV:
        retVal = substruct2->attackEV;
        break;
    case MON_GBA_DATA_DEF_EV:
        retVal = substruct2->defenseEV;
        break;
    case MON_GBA_DATA_SPEED_EV:
        retVal = substruct2->speedEV;
        break;
    case MON_GBA_DATA_SPATK_EV:
        retVal = substruct2->spAttackEV;
        break;
    case MON_GBA_DATA_SPDEF_EV:
        retVal = substruct2->spDefenseEV;
        break;
    case MON_GBA_DATA_COOL:
        retVal = substruct2->cool;
        break;
    case MON_GBA_DATA_BEAUTY:
        retVal = substruct2->beauty;
        break;
    case MON_GBA_DATA_CUTE:
        retVal = substruct2->cute;
        break;
    case MON_GBA_DATA_SMART:
        retVal = substruct2->smart;
        break;
    case MON_GBA_DATA_TOUGH:
        retVal = substruct2->tough;
        break;
    case MON_GBA_DATA_SHEEN:
        retVal = substruct2->sheen;
        break;
    case MON_GBA_DATA_POKERUS:
        retVal = substruct3->pokerus;
        break;
    case MON_GBA_DATA_MET_LOCATION:
        retVal = substruct3->metLocation;
        break;
    case MON_GBA_DATA_MET_LEVEL:
        retVal = substruct3->metLevel;
        break;
    case MON_GBA_DATA_MET_GAME:
        retVal = substruct3->metGame;
        break;
    case MON_GBA_DATA_POKEBALL:
        retVal = substruct3->pokeball;
        break;
    case MON_GBA_DATA_OT_GENDER:
        retVal = substruct3->otGender;
        break;
    case MON_GBA_DATA_HP_IV:
        retVal = substruct3->hpIV;
        break;
    case MON_GBA_DATA_ATK_IV:
        retVal = substruct3->attackIV;
        break;
    case MON_GBA_DATA_DEF_IV:
        retVal = substruct3->defenseIV;
        break;
    case MON_GBA_DATA_SPEED_IV:
        retVal = substruct3->speedIV;
        break;
    case MON_GBA_DATA_SPATK_IV:
        retVal = substruct3->spAttackIV;
        break;
    case MON_GBA_DATA_SPDEF_IV:
        retVal = substruct3->spDefenseIV;
        break;
    case MON_GBA_DATA_IS_EGG:
        retVal = substruct3->isEgg;
        break;
    case MON_GBA_DATA_ABILITY_NUM:
        retVal = substruct3->abilityNum;
        break;
    case MON_GBA_DATA_COOL_RIBBON:
        retVal = substruct3->coolRibbon;
        break;
    case MON_GBA_DATA_BEAUTY_RIBBON:
        retVal = substruct3->beautyRibbon;
        break;
    case MON_GBA_DATA_CUTE_RIBBON:
        retVal = substruct3->cuteRibbon;
        break;
    case MON_GBA_DATA_SMART_RIBBON:
        retVal = substruct3->smartRibbon;
        break;
    case MON_GBA_DATA_TOUGH_RIBBON:
        retVal = substruct3->toughRibbon;
        break;
    case MON_GBA_DATA_CHAMPION_RIBBON:
        retVal = substruct3->championRibbon;
        break;
    case MON_GBA_DATA_WINNING_RIBBON:
        retVal = substruct3->winningRibbon;
        break;
    case MON_GBA_DATA_VICTORY_RIBBON:
        retVal = substruct3->victoryRibbon;
        break;
    case MON_GBA_DATA_ARTIST_RIBBON:
        retVal = substruct3->artistRibbon;
        break;
    case MON_GBA_DATA_EFFORT_RIBBON:
        retVal = substruct3->effortRibbon;
        break;
    case MON_GBA_DATA_MARINE_RIBBON:
        retVal = substruct3->marineRibbon;
        break;
    case MON_GBA_DATA_LAND_RIBBON:
        retVal = substruct3->landRibbon;
        break;
    case MON_GBA_DATA_SKY_RIBBON:
        retVal = substruct3->skyRibbon;
        break;
    case MON_GBA_DATA_COUNTRY_RIBBON:
        retVal = substruct3->countryRibbon;
        break;
    case MON_GBA_DATA_NATIONAL_RIBBON:
        retVal = substruct3->nationalRibbon;
        break;
    case MON_GBA_DATA_EARTH_RIBBON:
        retVal = substruct3->earthRibbon;
        break;
    case MON_GBA_DATA_WORLD_RIBBON:
        retVal = substruct3->worldRibbon;
        break;
    case MON_GBA_DATA_UNUSED_RIBBONS:
        retVal = substruct3->unusedRibbons;
        break;
    case MON_GBA_DATA_MODERN_FATEFUL_ENCOUNTER:
        retVal = substruct3->modernFatefulEncounter;
        break;
    case MON_GBA_DATA_SPECIES2:
        retVal = substruct0->species;

        if (retVal == SPECIES_NONE)
            break;

        if ((substruct3->isEgg) || (boxMonGBA->isBadEgg))
            retVal = GBA_SPECIES_EGG;

        break;
    case MON_GBA_DATA_IVS:
        retVal = substruct3->hpIV
              | (substruct3->attackIV << 5)
              | (substruct3->defenseIV << 10)
              | (substruct3->speedIV << 15)
              | (substruct3->spAttackIV << 20)
              | (substruct3->spDefenseIV << 25);
        break;
    }

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
        EncryptBoxMonGBA(boxMonGBA);

    return retVal;
}

void PalPark_SetGBABoxPokemonData(BoxPokemonGBA *boxMonGBA, int field, const u8 *data)
{
    int v0;
    u32 v1;
    PokemonGBASubstruct0 * substruct0 = 0;
    PokemonGBASubstruct1 * substruct1 = 0;
    PokemonGBASubstruct2 * substruct2 = 0;
    PokemonGBASubstruct3 * substruct3 = 0;
    u16 v6;

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
    {
        substruct0 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 0)->type0);
        substruct1 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 1)->type1);
        substruct2 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 2)->type2);
        substruct3 = &(GetGBASubstruct(boxMonGBA, boxMonGBA->personality, 3)->type3);

        DecryptBoxMonGBA(boxMonGBA);
        v6 = CalculateBoxMonGBAChecksum(boxMonGBA);

        if (v6 != boxMonGBA->checksum) {
            boxMonGBA->isBadEgg = TRUE;
            boxMonGBA->isEgg = TRUE;
            substruct3->isEgg = TRUE;
            EncryptBoxMonGBA(boxMonGBA);
            return;
        }
    }

    switch (field) {
    case MON_GBA_DATA_NICKNAME:
        for (v0 = 0; v0 < POKEMON_NAME_LENGTH; v0++) {
            boxMonGBA->nickname[v0] = data[v0];
        }
        break;
    case MON_GBA_DATA_LANGUAGE:
        boxMonGBA->language = data[0];
        break;
    case MON_GBA_DATA_SANITY_IS_BAD_EGG:
        boxMonGBA->isBadEgg = data[0];
        break;
    case MON_GBA_DATA_SANITY_HAS_SPECIES:
        boxMonGBA->hasSpecies = data[0];
        break;
    case MON_GBA_DATA_SANITY_IS_EGG:
        boxMonGBA->isEgg = data[0];
        break;
    case MON_GBA_DATA_OT_NAME:
        for (v0 = 0; v0 < PLAYER_NAME_LENGTH; v0++)
            boxMonGBA->otName[v0] = data[v0];
        break;
    case MON_GBA_DATA_SPECIES:
        substruct0->species = data[0] + (data[1] << 8);

        if (substruct0->species)
            boxMonGBA->hasSpecies = TRUE;
        else
            boxMonGBA->hasSpecies = FALSE;
        break;
    }

    if (field > MON_GBA_DATA_ENCRYPT_SEPARATOR)
    {
        boxMonGBA->checksum = CalculateBoxMonGBAChecksum(boxMonGBA);
        EncryptBoxMonGBA(boxMonGBA);
    }
}

int PalPark_GBAToDSSpecies(int speciesGBA)
{
    int i;

    if (speciesGBA < GBA_SPECIES_TREECKO)
        return speciesGBA;

    for (i = 0; i < NELEMS(GBAToDSSpeciesArray); i++)
    {
        if (GBAToDSSpeciesArray[i].speciesGBA == speciesGBA)
            return GBAToDSSpeciesArray[i].speciesDS;
    }

    return speciesGBA;
}

u32 ov97_02236E00 (BoxPokemonGBA *boxMonGBA)
{
    int species;
    u32 exp;

    species = PalPark_GBAToDSSpecies(PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPECIES, 0));
    exp = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EXP, 0);

    return sub_02075B78(species, exp);
}

static int ov97_02236E28 (BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon)
{
    int v0;
    int v1;
    u16 species;
    int abilityNum;

    species = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    abilityNum = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ABILITY_NUM, NULL);
    v1 = sub_020759F0(species, 25);

    if (v1) {
        for (v0 = 0; v0 < (sizeof(Unk_ov97_0223ECA0) / 2); v0++) {
            if (Unk_ov97_0223ECA0[v0] == species) {
                v1 = sub_020759F0(species, 24);
                break;
            }
        }

        if ((v0 == (sizeof(Unk_ov97_0223ECA0) / 2)) && ((abilityNum & 1) == 0)) {
            v1 = sub_020759F0(species, 24);
        }
    } else {
        v1 = sub_020759F0(species, 24);
    }

    return v1;
}

void BoxMonGBAToBoxMon(BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon)
{
    BOOL v0;
    u32 value;
    int i, contestRibbons;
    int v4;
    u8 v5[10 + 1];
    u16 v6[12];

    sub_02073C54(boxMon);

    v0 = sub_02073D20(boxMon);
    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_PERSONALITY, NULL);

    SetBoxMonData(boxMon, MON_DATA_PERSONALITY, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPECIES, NULL);
    value = PalPark_GBAToDSSpecies(value);

    SetBoxMonData(boxMon, MON_DATA_SPECIES, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_HELD_ITEM, NULL);

    if (value != ITEM_NONE)
        value = Item_GBAIdToItemId(value);

    SetBoxMonData(boxMon, MON_DATA_HELD_ITEM, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_OT_ID, NULL);
    SetBoxMonData(boxMon, MON_DATA_OT_ID, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EXP, NULL);
    SetBoxMonData(boxMon, MON_DATA_EXP, (u8 *)&value);

    value = 70;
    SetBoxMonData(boxMon, MON_DATA_FRIENDSHIP, (u8 *)&value);

    value = ov97_02236E28(boxMonGBA, boxMon);
    SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MARKINGS, NULL);
    SetBoxMonData(boxMon, MON_DATA_11, (u8 *)&value);

    v4 = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_LANGUAGE, NULL);
    SetBoxMonData(boxMon, MON_DATA_LANGUAGE, (u8 *)&v4);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_HP_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_HP_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ATK_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_ATK_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_DEF_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_DEF_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPEED_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPEED_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPATK_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPATK_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPDEF_EV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPDEF_EV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_COOL, NULL);
    SetBoxMonData(boxMon, MON_DATA_COOL, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_BEAUTY, NULL);
    SetBoxMonData(boxMon, MON_DATA_BEAUTY, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_CUTE, NULL);
    SetBoxMonData(boxMon, MON_DATA_CUTE, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SMART, NULL);
    SetBoxMonData(boxMon, MON_DATA_SMART, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_TOUGH, NULL);
    SetBoxMonData(boxMon, MON_DATA_TOUGH, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SHEEN, NULL);
    SetBoxMonData(boxMon, MON_DATA_SHEEN, (u8 *)&value);

    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MOVE1 + i, NULL);

        if (value > GBA_NUM_MOVES) {
            (void)0;
        }

        SetBoxMonData(boxMon, MON_DATA_MOVE1 + i, (u8 *)&value);

        value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_PP_BONUSES, NULL);
        value = (value & (0x3 << (i * 2))) >> (i * 2);

        SetBoxMonData(boxMon, MON_DATA_62 + i, (u8 *)&value);

        value = sub_02074570(boxMon, MON_GBA_DATA_IVS + i, NULL);
        SetBoxMonData(boxMon, MON_DATA_58 + i, (u8 *)&value);
    }

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_HP_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_HP_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ATK_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_ATK_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_DEF_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_DEF_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPEED_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPEED_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPATK_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPATK_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SPDEF_IV, NULL);
    SetBoxMonData(boxMon, MON_DATA_SPDEF_IV, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_IS_EGG, NULL);
    SetBoxMonData(boxMon, MON_DATA_IS_EGG, (u8 *)&value);

    contestRibbons = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_COOL_RIBBON, NULL);

    if (contestRibbons <= 4) {
        for (i = 0; i < contestRibbons; i++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_78 + i, (u8 *)&value);
        }
    }

    contestRibbons = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_BEAUTY_RIBBON, NULL);

    if (contestRibbons <= 4) {
        for (i = 0; i < contestRibbons; i++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_82 + i, (u8 *)&value);
        }
    }

    contestRibbons = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_CUTE_RIBBON, NULL);

    if (contestRibbons <= 4) {
        for (i = 0; i < contestRibbons; i++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_86 + i, (u8 *)&value);
        }
    }

    contestRibbons = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SMART_RIBBON, NULL);

    if (contestRibbons <= 4) {
        for (i = 0; i < contestRibbons; i++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_90 + i, (u8 *)&value);
        }
    }

    contestRibbons = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_TOUGH_RIBBON, NULL);

    if (contestRibbons <= 4) {
        for (i = 0; i < contestRibbons; i++) {
            value = 1;
            SetBoxMonData(boxMon, MON_DATA_94 + i, (u8 *)&value);
        }
    }

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_CHAMPION_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_CHAMPION_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_WINNING_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_WINNING_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_VICTORY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_VICTORY_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_ARTIST_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_ARTIST_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EFFORT_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_EFFORT_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MARINE_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_MARINE_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_LAND_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_LAND_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_SKY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_SKY_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_COUNTRY_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_COUNTRY_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_NATIONAL_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_NATIONAL_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_EARTH_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_EARTH_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_WORLD_RIBBON, NULL);
    SetBoxMonData(boxMon, MON_DATA_WORLD_RIBBON, (u8 *)&value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MODERN_FATEFUL_ENCOUNTER, NULL);
    SetBoxMonData(boxMon, MON_DATA_FATEFUL_ENCOUNTER, (u8 *)&value);

    value = sub_02075D74(boxMon);
    SetBoxMonData(boxMon, MON_DATA_111, (u8 *)&value);

    if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_UNOWN) {
        value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_PERSONALITY, NULL);
        value = GET_UNOWN_LETTER(value);

        SetBoxMonData(boxMon, MON_DATA_FORM, (u8 *)&value);
    }

    if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_DEOXYS) {
        switch (Unk_021BF67C.gameId) {
        default:
        case VERSION_RUBY:
        case VERSION_SAPPHIRE:
            value = DEOXYS_FORM_NORMAL;
            break;
        case VERSION_FIRE_RED:
            value = DEOXYS_FORM_ATTACK;
            break;
        case VERSION_LEAF_GREEN:
            value = DEOXYS_FORM_DEFENSE;
            break;
        case VERSION_EMERALD:
            value = DEOXYS_FORM_SPEED;
            break;
        }

        SetBoxMonData(boxMon, MON_DATA_FORM, (u8 *)&value);
    }

    PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_NICKNAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 12, v4);

    SetBoxMonData(boxMon, MON_DATA_118, &v6[0]);

    if (PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_LANGUAGE, NULL) != Unk_020E4C44) {
        value = 1;
        SetBoxMonData(boxMon, MON_DATA_77, &value);
    }

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MET_GAME, NULL);
    SetBoxMonData(boxMon, MON_DATA_MET_GAME, &value);

    PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_OT_NAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 8, v4);

    SetBoxMonData(boxMon, MON_DATA_144, &v6[0]);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MET_LOCATION, NULL);
    SetBoxMonData(boxMon, MON_DATA_153, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_POKERUS, NULL);
    SetBoxMonData(boxMon, MON_DATA_POKERUS, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_POKEBALL, NULL);
    SetBoxMonData(boxMon, MON_DATA_POKEBALL, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_MET_LEVEL, NULL);
    SetBoxMonData(boxMon, MON_DATA_MET_LEVEL, &value);

    value = PalPark_GetGBABoxMonData(boxMonGBA, MON_GBA_DATA_OT_GENDER, NULL);
    SetBoxMonData(boxMon, MON_DATA_OT_GENDER, &value);
    sub_02073D48(boxMon, v0);
}

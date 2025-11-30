#include "main_menu/gba_pokemon.h"

#include <nitro.h>
#include <string.h>

#include "constants/gba/pokemon.h"
#include "constants/gba/species.h"
#include "constants/species.h"
#include "generated/abilities.h"

#include "main_menu/gba_convert_string.h"
#include "main_menu/gba_save.h"

#include "item.h"
#include "pokemon.h"
#include "system.h"

typedef struct {
    u16 gbaSpecies;
    u16 ndsSpecies;
} GBAToDSSpeciesStruct;

GBAToDSSpeciesStruct sGBAToDSSpecies[] = {
    { GBA_SPECIES_TREECKO, SPECIES_TREECKO },
    { GBA_SPECIES_GROVYLE, SPECIES_GROVYLE },
    { GBA_SPECIES_SCEPTILE, SPECIES_SCEPTILE },
    { GBA_SPECIES_TORCHIC, SPECIES_TORCHIC },
    { GBA_SPECIES_COMBUSKEN, SPECIES_COMBUSKEN },
    { GBA_SPECIES_BLAZIKEN, SPECIES_BLAZIKEN },
    { GBA_SPECIES_MUDKIP, SPECIES_MUDKIP },
    { GBA_SPECIES_MARSHTOMP, SPECIES_MARSHTOMP },
    { GBA_SPECIES_SWAMPERT, SPECIES_SWAMPERT },
    { GBA_SPECIES_POOCHYENA, SPECIES_POOCHYENA },
    { GBA_SPECIES_MIGHTYENA, SPECIES_MIGHTYENA },
    { GBA_SPECIES_ZIGZAGOON, SPECIES_ZIGZAGOON },
    { GBA_SPECIES_LINOONE, SPECIES_LINOONE },
    { GBA_SPECIES_WURMPLE, SPECIES_WURMPLE },
    { GBA_SPECIES_SILCOON, SPECIES_SILCOON },
    { GBA_SPECIES_BEAUTIFLY, SPECIES_BEAUTIFLY },
    { GBA_SPECIES_CASCOON, SPECIES_CASCOON },
    { GBA_SPECIES_DUSTOX, SPECIES_DUSTOX },
    { GBA_SPECIES_LOTAD, SPECIES_LOTAD },
    { GBA_SPECIES_LOMBRE, SPECIES_LOMBRE },
    { GBA_SPECIES_LUDICOLO, SPECIES_LUDICOLO },
    { GBA_SPECIES_SEEDOT, SPECIES_SEEDOT },
    { GBA_SPECIES_NUZLEAF, SPECIES_NUZLEAF },
    { GBA_SPECIES_SHIFTRY, SPECIES_SHIFTRY },
    { GBA_SPECIES_NINCADA, SPECIES_NINCADA },
    { GBA_SPECIES_NINJASK, SPECIES_NINJASK },
    { GBA_SPECIES_SHEDINJA, SPECIES_SHEDINJA },
    { GBA_SPECIES_TAILLOW, SPECIES_TAILLOW },
    { GBA_SPECIES_SWELLOW, SPECIES_SWELLOW },
    { GBA_SPECIES_SHROOMISH, SPECIES_SHROOMISH },
    { GBA_SPECIES_BRELOOM, SPECIES_BRELOOM },
    { GBA_SPECIES_SPINDA, SPECIES_SPINDA },
    { GBA_SPECIES_WINGULL, SPECIES_WINGULL },
    { GBA_SPECIES_PELIPPER, SPECIES_PELIPPER },
    { GBA_SPECIES_SURSKIT, SPECIES_SURSKIT },
    { GBA_SPECIES_MASQUERAIN, SPECIES_MASQUERAIN },
    { GBA_SPECIES_WAILMER, SPECIES_WAILMER },
    { GBA_SPECIES_WAILORD, SPECIES_WAILORD },
    { GBA_SPECIES_SKITTY, SPECIES_SKITTY },
    { GBA_SPECIES_DELCATTY, SPECIES_DELCATTY },
    { GBA_SPECIES_KECLEON, SPECIES_KECLEON },
    { GBA_SPECIES_BALTOY, SPECIES_BALTOY },
    { GBA_SPECIES_CLAYDOL, SPECIES_CLAYDOL },
    { GBA_SPECIES_NOSEPASS, SPECIES_NOSEPASS },
    { GBA_SPECIES_TORKOAL, SPECIES_TORKOAL },
    { GBA_SPECIES_SABLEYE, SPECIES_SABLEYE },
    { GBA_SPECIES_BARBOACH, SPECIES_BARBOACH },
    { GBA_SPECIES_WHISCASH, SPECIES_WHISCASH },
    { GBA_SPECIES_LUVDISC, SPECIES_LUVDISC },
    { GBA_SPECIES_CORPHISH, SPECIES_CORPHISH },
    { GBA_SPECIES_CRAWDAUNT, SPECIES_CRAWDAUNT },
    { GBA_SPECIES_FEEBAS, SPECIES_FEEBAS },
    { GBA_SPECIES_MILOTIC, SPECIES_MILOTIC },
    { GBA_SPECIES_CARVANHA, SPECIES_CARVANHA },
    { GBA_SPECIES_SHARPEDO, SPECIES_SHARPEDO },
    { GBA_SPECIES_TRAPINCH, SPECIES_TRAPINCH },
    { GBA_SPECIES_VIBRAVA, SPECIES_VIBRAVA },
    { GBA_SPECIES_FLYGON, SPECIES_FLYGON },
    { GBA_SPECIES_MAKUHITA, SPECIES_MAKUHITA },
    { GBA_SPECIES_HARIYAMA, SPECIES_HARIYAMA },
    { GBA_SPECIES_ELECTRIKE, SPECIES_ELECTRIKE },
    { GBA_SPECIES_MANECTRIC, SPECIES_MANECTRIC },
    { GBA_SPECIES_NUMEL, SPECIES_NUMEL },
    { GBA_SPECIES_CAMERUPT, SPECIES_CAMERUPT },
    { GBA_SPECIES_SPHEAL, SPECIES_SPHEAL },
    { GBA_SPECIES_SEALEO, SPECIES_SEALEO },
    { GBA_SPECIES_WALREIN, SPECIES_WALREIN },
    { GBA_SPECIES_CACNEA, SPECIES_CACNEA },
    { GBA_SPECIES_CACTURNE, SPECIES_CACTURNE },
    { GBA_SPECIES_SNORUNT, SPECIES_SNORUNT },
    { GBA_SPECIES_GLALIE, SPECIES_GLALIE },
    { GBA_SPECIES_LUNATONE, SPECIES_LUNATONE },
    { GBA_SPECIES_SOLROCK, SPECIES_SOLROCK },
    { GBA_SPECIES_AZURILL, SPECIES_AZURILL },
    { GBA_SPECIES_SPOINK, SPECIES_SPOINK },
    { GBA_SPECIES_GRUMPIG, SPECIES_GRUMPIG },
    { GBA_SPECIES_PLUSLE, SPECIES_PLUSLE },
    { GBA_SPECIES_MINUN, SPECIES_MINUN },
    { GBA_SPECIES_MAWILE, SPECIES_MAWILE },
    { GBA_SPECIES_MEDITITE, SPECIES_MEDITITE },
    { GBA_SPECIES_MEDICHAM, SPECIES_MEDICHAM },
    { GBA_SPECIES_SWABLU, SPECIES_SWABLU },
    { GBA_SPECIES_ALTARIA, SPECIES_ALTARIA },
    { GBA_SPECIES_WYNAUT, SPECIES_WYNAUT },
    { GBA_SPECIES_DUSKULL, SPECIES_DUSKULL },
    { GBA_SPECIES_DUSCLOPS, SPECIES_DUSCLOPS },
    { GBA_SPECIES_ROSELIA, SPECIES_ROSELIA },
    { GBA_SPECIES_SLAKOTH, SPECIES_SLAKOTH },
    { GBA_SPECIES_VIGOROTH, SPECIES_VIGOROTH },
    { GBA_SPECIES_SLAKING, SPECIES_SLAKING },
    { GBA_SPECIES_GULPIN, SPECIES_GULPIN },
    { GBA_SPECIES_SWALOT, SPECIES_SWALOT },
    { GBA_SPECIES_TROPIUS, SPECIES_TROPIUS },
    { GBA_SPECIES_WHISMUR, SPECIES_WHISMUR },
    { GBA_SPECIES_LOUDRED, SPECIES_LOUDRED },
    { GBA_SPECIES_EXPLOUD, SPECIES_EXPLOUD },
    { GBA_SPECIES_CLAMPERL, SPECIES_CLAMPERL },
    { GBA_SPECIES_HUNTAIL, SPECIES_HUNTAIL },
    { GBA_SPECIES_GOREBYSS, SPECIES_GOREBYSS },
    { GBA_SPECIES_ABSOL, SPECIES_ABSOL },
    { GBA_SPECIES_SHUPPET, SPECIES_SHUPPET },
    { GBA_SPECIES_BANETTE, SPECIES_BANETTE },
    { GBA_SPECIES_SEVIPER, SPECIES_SEVIPER },
    { GBA_SPECIES_ZANGOOSE, SPECIES_ZANGOOSE },
    { GBA_SPECIES_RELICANTH, SPECIES_RELICANTH },
    { GBA_SPECIES_ARON, SPECIES_ARON },
    { GBA_SPECIES_LAIRON, SPECIES_LAIRON },
    { GBA_SPECIES_AGGRON, SPECIES_AGGRON },
    { GBA_SPECIES_CASTFORM, SPECIES_CASTFORM },
    { GBA_SPECIES_VOLBEAT, SPECIES_VOLBEAT },
    { GBA_SPECIES_ILLUMISE, SPECIES_ILLUMISE },
    { GBA_SPECIES_LILEEP, SPECIES_LILEEP },
    { GBA_SPECIES_CRADILY, SPECIES_CRADILY },
    { GBA_SPECIES_ANORITH, SPECIES_ANORITH },
    { GBA_SPECIES_ARMALDO, SPECIES_ARMALDO },
    { GBA_SPECIES_RALTS, SPECIES_RALTS },
    { GBA_SPECIES_KIRLIA, SPECIES_KIRLIA },
    { GBA_SPECIES_GARDEVOIR, SPECIES_GARDEVOIR },
    { GBA_SPECIES_BAGON, SPECIES_BAGON },
    { GBA_SPECIES_SHELGON, SPECIES_SHELGON },
    { GBA_SPECIES_SALAMENCE, SPECIES_SALAMENCE },
    { GBA_SPECIES_BELDUM, SPECIES_BELDUM },
    { GBA_SPECIES_METANG, SPECIES_METANG },
    { GBA_SPECIES_METAGROSS, SPECIES_METAGROSS },
    { GBA_SPECIES_REGIROCK, SPECIES_REGIROCK },
    { GBA_SPECIES_REGICE, SPECIES_REGICE },
    { GBA_SPECIES_REGISTEEL, SPECIES_REGISTEEL },
    { GBA_SPECIES_KYOGRE, SPECIES_KYOGRE },
    { GBA_SPECIES_GROUDON, SPECIES_GROUDON },
    { GBA_SPECIES_RAYQUAZA, SPECIES_RAYQUAZA },
    { GBA_SPECIES_LATIAS, SPECIES_LATIAS },
    { GBA_SPECIES_LATIOS, SPECIES_LATIOS },
    { GBA_SPECIES_JIRACHI, SPECIES_JIRACHI },
    { GBA_SPECIES_DEOXYS, SPECIES_DEOXYS },
    { GBA_SPECIES_CHIMECHO, SPECIES_CHIMECHO },
    { GBA_SPECIES_EGG, 0x19C },
    { 0x19D, 0x19D },
    { 0x19E, 0x19E },
    { 0x19F, 0x19F },
    { 0x1A0, 0x1A0 },
    { 0x1A1, 0x1A1 },
    { 0x1A2, 0x1A2 },
    { 0x1A3, 0x1A3 },
    { 0x1A4, 0x1A4 }
};

static u16 sSpeciesWithNewAbilities[] = {
    SPECIES_PIDGEY,
    SPECIES_PIDGEOTTO,
    SPECIES_PIDGEOT,
    SPECIES_NIDORAN_F,
    SPECIES_NIDORINA,
    SPECIES_NIDOQUEEN,
    SPECIES_NIDORAN_M,
    SPECIES_NIDORINO,
    SPECIES_NIDOKING,
    SPECIES_CLEFAIRY,
    SPECIES_CLEFABLE,
    SPECIES_PARAS,
    SPECIES_PARASECT,
    SPECIES_VENONAT,
    SPECIES_VENOMOTH,
    SPECIES_MEOWTH,
    SPECIES_PERSIAN,
    SPECIES_MANKEY,
    SPECIES_PRIMEAPE,
    SPECIES_MACHOP,
    SPECIES_MACHOKE,
    SPECIES_MACHAMP,
    SPECIES_SEEL,
    SPECIES_DEWGONG,
    SPECIES_SHELLDER,
    SPECIES_CLOYSTER,
    SPECIES_DROWZEE,
    SPECIES_HYPNO,
    SPECIES_HITMONLEE,
    SPECIES_HITMONCHAN,
    SPECIES_TANGELA,
    SPECIES_KANGASKHAN,
    SPECIES_HORSEA,
    SPECIES_SEADRA,
    SPECIES_MR_MIME,
    SPECIES_SCYTHER,
    SPECIES_JYNX,
    SPECIES_PINSIR,
    SPECIES_TAUROS,
    SPECIES_EEVEE,
    SPECIES_VAPOREON,
    SPECIES_JOLTEON,
    SPECIES_FLAREON,
    SPECIES_PORYGON,
    SPECIES_CLEFFA,
    SPECIES_HOPPIP,
    SPECIES_SKIPLOOM,
    SPECIES_JUMPLUFF,
    SPECIES_SUNKERN,
    SPECIES_SUNFLORA,
    SPECIES_ESPEON,
    SPECIES_UMBREON,
    SPECIES_MURKROW,
    SPECIES_GRANBULL,
    SPECIES_SCIZOR,
    SPECIES_SHUCKLE,
    SPECIES_TEDDIURSA,
    SPECIES_URSARING,
    SPECIES_SWINUB,
    SPECIES_PILOSWINE,
    SPECIES_REMORAID,
    SPECIES_OCTILLERY,
    SPECIES_KINGDRA,
    SPECIES_PORYGON2,
    SPECIES_STANTLER,
    SPECIES_SMEARGLE,
    SPECIES_TYROGUE,
    SPECIES_HITMONTOP,
    SPECIES_SMOOCHUM,
    SPECIES_MILTANK,
    SPECIES_POOCHYENA,
    SPECIES_MIGHTYENA,
    SPECIES_ZIGZAGOON,
    SPECIES_LINOONE,
    SPECIES_SHROOMISH,
    SPECIES_BRELOOM,
    SPECIES_SKITTY,
    SPECIES_DELCATTY,
    SPECIES_SABLEYE,
    SPECIES_ILLUMISE,
    SPECIES_NUMEL,
    SPECIES_CAMERUPT,
    SPECIES_SPINDA,
    SPECIES_BARBOACH,
    SPECIES_WHISCASH,
    SPECIES_SHUPPET,
    SPECIES_BANETTE,
    SPECIES_TROPIUS,
    SPECIES_ABSOL,
    SPECIES_SNORUNT,
    SPECIES_GLALIE,
    SPECIES_SPHEAL,
    SPECIES_SEALEO,
    SPECIES_WALREIN,
};

#define SUBSTRUCT_CASE(n, v1, v2, v3, v4)                                       \
    case n: {                                                                   \
        union GBAPokemonSubstruct *substructs0 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs1 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs2 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs3 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs4 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs5 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs6 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs7 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs8 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs9 = gbaBoxMon->secure.substructs;  \
        union GBAPokemonSubstruct *substructs10 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs11 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs12 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs13 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs14 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs15 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs16 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs17 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs18 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs19 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs20 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs21 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs22 = gbaBoxMon->secure.substructs; \
        union GBAPokemonSubstruct *substructs23 = gbaBoxMon->secure.substructs; \
                                                                                \
        switch (substructType) {                                                \
        case 0:                                                                 \
            substruct = &substructs##n[v1];                                     \
            break;                                                              \
        case 1:                                                                 \
            substruct = &substructs##n[v2];                                     \
            break;                                                              \
        case 2:                                                                 \
            substruct = &substructs##n[v3];                                     \
            break;                                                              \
        case 3:                                                                 \
            substruct = &substructs##n[v4];                                     \
            break;                                                              \
        }                                                                       \
        break;                                                                  \
    }

static union GBAPokemonSubstruct *GetGBASubstruct(GBABoxPokemon *gbaBoxMon, u32 personality, u8 substructType)
{
    union GBAPokemonSubstruct *substruct = NULL;

    switch (personality % 24) {
        SUBSTRUCT_CASE(0, 0, 1, 2, 3)
        SUBSTRUCT_CASE(1, 0, 1, 3, 2)
        SUBSTRUCT_CASE(2, 0, 2, 1, 3)
        SUBSTRUCT_CASE(3, 0, 3, 1, 2)
        SUBSTRUCT_CASE(4, 0, 2, 3, 1)
        SUBSTRUCT_CASE(5, 0, 3, 2, 1)
        SUBSTRUCT_CASE(6, 1, 0, 2, 3)
        SUBSTRUCT_CASE(7, 1, 0, 3, 2)
        SUBSTRUCT_CASE(8, 2, 0, 1, 3)
        SUBSTRUCT_CASE(9, 3, 0, 1, 2)
        SUBSTRUCT_CASE(10, 2, 0, 3, 1)
        SUBSTRUCT_CASE(11, 3, 0, 2, 1)
        SUBSTRUCT_CASE(12, 1, 2, 0, 3)
        SUBSTRUCT_CASE(13, 1, 3, 0, 2)
        SUBSTRUCT_CASE(14, 2, 1, 0, 3)
        SUBSTRUCT_CASE(15, 3, 1, 0, 2)
        SUBSTRUCT_CASE(16, 2, 3, 0, 1)
        SUBSTRUCT_CASE(17, 3, 2, 0, 1)
        SUBSTRUCT_CASE(18, 1, 2, 3, 0)
        SUBSTRUCT_CASE(19, 1, 3, 2, 0)
        SUBSTRUCT_CASE(20, 2, 1, 3, 0)
        SUBSTRUCT_CASE(21, 3, 1, 2, 0)
        SUBSTRUCT_CASE(22, 2, 3, 1, 0)
        SUBSTRUCT_CASE(23, 3, 2, 1, 0)
    }

    return substruct;
}

static void GBADecryptBoxMon(GBABoxPokemon *gbaBoxMon)
{
    int v0;
    u32 *v1 = (u32 *)&gbaBoxMon->secure;

    for (v0 = 0; v0 < (sizeof(GBAPokemonSubstruct0) + sizeof(GBAPokemonSubstruct1) + sizeof(GBAPokemonSubstruct2) + sizeof(GBAPokemonSubstruct3)) / 4; v0++) {
        v1[v0] ^= gbaBoxMon->otId;
        v1[v0] ^= gbaBoxMon->personality;
    }
}

static void GBAEncryptBoxMon(GBABoxPokemon *gbaBoxMon)
{
    int v0;
    u32 *v1 = (u32 *)&gbaBoxMon->secure;

    for (v0 = 0; v0 < (sizeof(GBAPokemonSubstruct0) + sizeof(GBAPokemonSubstruct1) + sizeof(GBAPokemonSubstruct2) + sizeof(GBAPokemonSubstruct3)) / 4; v0++) {
        v1[v0] ^= gbaBoxMon->personality;
        v1[v0] ^= gbaBoxMon->otId;
    }
}

static u16 CalculateGBABoxMonChecksum(GBABoxPokemon *gbaBoxMon)
{
    u16 checksum = 0;
    union GBAPokemonSubstruct *substruct0 = GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 0);
    union GBAPokemonSubstruct *substruct1 = GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 1);
    union GBAPokemonSubstruct *substruct2 = GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 2);
    union GBAPokemonSubstruct *substruct3 = GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 3);
    s32 i;

    for (i = 0; i < (s32)NELEMS(substruct0->raw); i++) {
        checksum += substruct0->raw[i];
    }

    for (i = 0; i < (s32)NELEMS(substruct1->raw); i++) {
        checksum += substruct1->raw[i];
    }

    for (i = 0; i < (s32)NELEMS(substruct2->raw); i++) {
        checksum += substruct2->raw[i];
    }

    for (i = 0; i < (s32)NELEMS(substruct3->raw); i++) {
        checksum += substruct3->raw[i];
    }

    return checksum;
}

u32 GBABoxPokemon_GetData(GBABoxPokemon *gbaBoxMon, int field, u8 *param2)
{
    u32 retVal = 0;
    GBAPokemonSubstruct0 *substruct0 = 0;
    GBAPokemonSubstruct1 *substruct1 = 0;
    GBAPokemonSubstruct2 *substruct2 = 0;
    GBAPokemonSubstruct3 *substruct3 = 0;
    u16 checksum;

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        substruct0 = (GBAPokemonSubstruct0 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 0);
        substruct1 = (GBAPokemonSubstruct1 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 1);
        substruct2 = (GBAPokemonSubstruct2 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 2);
        substruct3 = (GBAPokemonSubstruct3 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 3);

        GBADecryptBoxMon(gbaBoxMon);
        checksum = CalculateGBABoxMonChecksum(gbaBoxMon);

        if (checksum != gbaBoxMon->checksum) {
            gbaBoxMon->isBadEgg = TRUE;
            gbaBoxMon->isEgg = TRUE;
            substruct3->isEgg = TRUE;
        }
    }

    switch (field) {
    case GBA_MON_DATA_PERSONALITY:
        retVal = gbaBoxMon->personality;
        break;
    case GBA_MON_DATA_OT_ID:
        retVal = gbaBoxMon->otId;
        break;
    case GBA_MON_DATA_NICKNAME:
        if (gbaBoxMon->isBadEgg) {
            retVal = 0;
        } else {
            for (retVal = 0; retVal < 10; retVal++) {
                param2[retVal] = gbaBoxMon->nickname[retVal];
            }
        }

        param2[retVal] = 0xff;
        break;
    case GBA_MON_DATA_LANGUAGE:
        retVal = gbaBoxMon->language;
        break;
    case GBA_MON_DATA_SANITY_IS_BAD_EGG:
        retVal = gbaBoxMon->isBadEgg;
        break;
    case GBA_MON_DATA_SANITY_HAS_SPECIES:
        retVal = gbaBoxMon->hasSpecies;
        break;
    case GBA_MON_DATA_SANITY_IS_EGG:
        retVal = gbaBoxMon->isEgg;
        break;
    case GBA_MON_DATA_OT_NAME:
        for (retVal = 0; retVal < 7; retVal++) {
            param2[retVal] = gbaBoxMon->otName[retVal];
        }

        param2[retVal] = 0xffff;
        break;
    case GBA_MON_DATA_MARKINGS:
        retVal = gbaBoxMon->markings;
        break;
    case GBA_MON_DATA_CHECKSUM:
        retVal = gbaBoxMon->checksum;
        break;
    case GBA_MON_DATA_ENCRYPT_SEPARATOR:
        retVal = gbaBoxMon->unknown;
        break;
    case GBA_MON_DATA_SPECIES:
        if (gbaBoxMon->isBadEgg) {
            retVal = GBA_SPECIES_EGG;
        } else {
            retVal = substruct0->species;
        }
        break;
    case GBA_MON_DATA_HELD_ITEM:
        retVal = substruct0->heldItem;
        break;
    case GBA_MON_DATA_EXP:
        retVal = substruct0->experience;
        break;
    case GBA_MON_DATA_PP_BONUSES:
        retVal = substruct0->ppBonuses;
        break;
    case GBA_MON_DATA_FRIENDSHIP:
        retVal = substruct0->friendship;
        break;
    case GBA_MON_DATA_MOVE1:
    case GBA_MON_DATA_MOVE2:
    case GBA_MON_DATA_MOVE3:
    case GBA_MON_DATA_MOVE4:
        retVal = substruct1->moves[field - GBA_MON_DATA_MOVE1];
        break;
    case GBA_MON_DATA_PP1:
    case GBA_MON_DATA_PP2:
    case GBA_MON_DATA_PP3:
    case GBA_MON_DATA_PP4:
        retVal = substruct1->pp[field - GBA_MON_DATA_PP1];
        break;
    case GBA_MON_DATA_HP_EV:
        retVal = substruct2->hpEV;
        break;
    case GBA_MON_DATA_ATK_EV:
        retVal = substruct2->attackEV;
        break;
    case GBA_MON_DATA_DEF_EV:
        retVal = substruct2->defenseEV;
        break;
    case GBA_MON_DATA_SPEED_EV:
        retVal = substruct2->speedEV;
        break;
    case GBA_MON_DATA_SPATK_EV:
        retVal = substruct2->spAttackEV;
        break;
    case GBA_MON_DATA_SPDEF_EV:
        retVal = substruct2->spDefenseEV;
        break;
    case GBA_MON_DATA_COOL:
        retVal = substruct2->cool;
        break;
    case GBA_MON_DATA_BEAUTY:
        retVal = substruct2->beauty;
        break;
    case GBA_MON_DATA_CUTE:
        retVal = substruct2->cute;
        break;
    case GBA_MON_DATA_SMART:
        retVal = substruct2->smart;
        break;
    case GBA_MON_DATA_TOUGH:
        retVal = substruct2->tough;
        break;
    case GBA_MON_DATA_SHEEN:
        retVal = substruct2->sheen;
        break;
    case GBA_MON_DATA_POKERUS:
        retVal = substruct3->pokerus;
        break;
    case GBA_MON_DATA_MET_LOCATION:
        retVal = substruct3->metLocation;
        break;
    case GBA_MON_DATA_MET_LEVEL:
        retVal = substruct3->metLevel;
        break;
    case GBA_MON_DATA_MET_GAME:
        retVal = substruct3->metGame;
        break;
    case GBA_MON_DATA_POKEBALL:
        retVal = substruct3->pokeball;
        break;
    case GBA_MON_DATA_OT_GENDER:
        retVal = substruct3->otGender;
        break;
    case GBA_MON_DATA_HP_IV:
        retVal = substruct3->hpIV;
        break;
    case GBA_MON_DATA_ATK_IV:
        retVal = substruct3->attackIV;
        break;
    case GBA_MON_DATA_DEF_IV:
        retVal = substruct3->defenseIV;
        break;
    case GBA_MON_DATA_SPEED_IV:
        retVal = substruct3->speedIV;
        break;
    case GBA_MON_DATA_SPATK_IV:
        retVal = substruct3->spAttackIV;
        break;
    case GBA_MON_DATA_SPDEF_IV:
        retVal = substruct3->spDefenseIV;
        break;
    case GBA_MON_DATA_IS_EGG:
        retVal = substruct3->isEgg;
        break;
    case GBA_MON_DATA_ABILITY_NUM:
        retVal = substruct3->abilityNum;
        break;
    case GBA_MON_DATA_COOL_RIBBON:
        retVal = substruct3->coolRibbon;
        break;
    case GBA_MON_DATA_BEAUTY_RIBBON:
        retVal = substruct3->beautyRibbon;
        break;
    case GBA_MON_DATA_CUTE_RIBBON:
        retVal = substruct3->cuteRibbon;
        break;
    case GBA_MON_DATA_SMART_RIBBON:
        retVal = substruct3->smartRibbon;
        break;
    case GBA_MON_DATA_TOUGH_RIBBON:
        retVal = substruct3->toughRibbon;
        break;
    case GBA_MON_DATA_CHAMPION_RIBBON:
        retVal = substruct3->championRibbon;
        break;
    case GBA_MON_DATA_WINNING_RIBBON:
        retVal = substruct3->winningRibbon;
        break;
    case GBA_MON_DATA_VICTORY_RIBBON:
        retVal = substruct3->victoryRibbon;
        break;
    case GBA_MON_DATA_ARTIST_RIBBON:
        retVal = substruct3->artistRibbon;
        break;
    case GBA_MON_DATA_EFFORT_RIBBON:
        retVal = substruct3->effortRibbon;
        break;
    case GBA_MON_DATA_MARINE_RIBBON:
        retVal = substruct3->marineRibbon;
        break;
    case GBA_MON_DATA_LAND_RIBBON:
        retVal = substruct3->landRibbon;
        break;
    case GBA_MON_DATA_SKY_RIBBON:
        retVal = substruct3->skyRibbon;
        break;
    case GBA_MON_DATA_COUNTRY_RIBBON:
        retVal = substruct3->countryRibbon;
        break;
    case GBA_MON_DATA_NATIONAL_RIBBON:
        retVal = substruct3->nationalRibbon;
        break;
    case GBA_MON_DATA_EARTH_RIBBON:
        retVal = substruct3->earthRibbon;
        break;
    case GBA_MON_DATA_WORLD_RIBBON:
        retVal = substruct3->worldRibbon;
        break;
    case GBA_MON_DATA_UNUSED_RIBBONS:
        retVal = substruct3->unusedRibbons;
        break;
    case GBA_MON_DATA_MODERN_FATEFUL_ENCOUNTER:
        retVal = substruct3->modernFatefulEncounter;
        break;
    case GBA_MON_DATA_SPECIES_OR_EGG:
        retVal = substruct0->species;

        if (retVal == SPECIES_NONE) {
            break;
        }

        if (substruct3->isEgg || gbaBoxMon->isBadEgg) {
            retVal = GBA_SPECIES_EGG;
        }

        break;
    case GBA_MON_DATA_IVS:
        retVal = substruct3->hpIV
            | (substruct3->attackIV << 5)
            | (substruct3->defenseIV << 10)
            | (substruct3->speedIV << 15)
            | (substruct3->spAttackIV << 20)
            | (substruct3->spDefenseIV << 25);
        break;
    }

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        GBAEncryptBoxMon(gbaBoxMon);
    }

    return retVal;
}

#define SET8(lhs)  (lhs) = *dataArg
#define SET16(lhs) (lhs) = dataArg[0] + (dataArg[1] << 8)
#define SET32(lhs) (lhs) = dataArg[0] + (dataArg[1] << 8) + (dataArg[2] << 16) + (dataArg[3] << 24)

void GBABoxPokemon_SetData(GBABoxPokemon *gbaBoxMon, int field, const u8 *dataArg)
{
    GBAPokemonSubstruct0 *substruct0 = 0;
    GBAPokemonSubstruct1 *substruct1 = 0;
    GBAPokemonSubstruct2 *substruct2 = 0;
    GBAPokemonSubstruct3 *substruct3 = 0;
    u16 checksum;

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        substruct0 = (GBAPokemonSubstruct0 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 0);
        substruct1 = (GBAPokemonSubstruct1 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 1);
        substruct2 = (GBAPokemonSubstruct2 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 2);
        substruct3 = (GBAPokemonSubstruct3 *)GetGBASubstruct(gbaBoxMon, gbaBoxMon->personality, 3);

        GBADecryptBoxMon(gbaBoxMon);
        checksum = CalculateGBABoxMonChecksum(gbaBoxMon);

        if (checksum != gbaBoxMon->checksum) {
            gbaBoxMon->isBadEgg = TRUE;
            gbaBoxMon->isEgg = TRUE;
            substruct3->isEgg = TRUE;
            GBAEncryptBoxMon(gbaBoxMon);
            return;
        }
    }

    switch (field) {
    case GBA_MON_DATA_NICKNAME: {
        s32 i;
        for (i = 0; i < MON_NAME_LEN; i++) {
            gbaBoxMon->nickname[i] = dataArg[i];
        }
        break;
    }
    case GBA_MON_DATA_LANGUAGE:
        SET8(gbaBoxMon->language);
        break;
    case GBA_MON_DATA_SANITY_IS_BAD_EGG:
        SET8(gbaBoxMon->isBadEgg);
        break;
    case GBA_MON_DATA_SANITY_HAS_SPECIES:
        SET8(gbaBoxMon->hasSpecies);
        break;
    case GBA_MON_DATA_SANITY_IS_EGG:
        SET8(gbaBoxMon->isEgg);
        break;
    case GBA_MON_DATA_OT_NAME: {
        s32 i;
        for (i = 0; i < TRAINER_NAME_LEN; i++) {
            gbaBoxMon->otName[i] = dataArg[i];
        }
        break;
    }
    case GBA_MON_DATA_SPECIES: {
        SET16(substruct0->species);
        if (substruct0->species) {
            gbaBoxMon->hasSpecies = TRUE;
        } else {
            gbaBoxMon->hasSpecies = FALSE;
        }
        break;
    }
    }

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        gbaBoxMon->checksum = CalculateGBABoxMonChecksum(gbaBoxMon);
        GBAEncryptBoxMon(gbaBoxMon);
    }
}

int GBAPokemon_ConvertSpeciesToDS(int species)
{
    int i;

    if (species < GBA_SPECIES_TREECKO) {
        return species;
    }

    for (i = 0; i < sizeof(sGBAToDSSpecies) / sizeof(GBAToDSSpeciesStruct); i++) {
        if (sGBAToDSSpecies[i].gbaSpecies == species) {
            return sGBAToDSSpecies[i].ndsSpecies;
        }
    }

    return species;
}

u32 GBABoxPokemon_GetLevel(GBABoxPokemon *gbaBoxMon)
{
    int species = GBAPokemon_ConvertSpeciesToDS(GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPECIES, NULL));
    u32 exp = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_EXP, NULL);

    return Pokemon_GetSpeciesLevelAt(species, exp);
}

static int ConvertBoxMonGBAtoDSAbility(GBABoxPokemon *gbaBoxMon, BoxPokemon *boxMon)
{
    int i;
    int ability;
    u16 species;
    int abilityNum;

    species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    abilityNum = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_ABILITY_NUM, NULL);
    ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_2);

    if (ability != ABILITY_NONE) {
        for (i = 0; i < (NELEMS(sSpeciesWithNewAbilities)); i++) {
            if (sSpeciesWithNewAbilities[i] == species) {
                ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
                break;
            }
        }

        if ((i == (NELEMS(sSpeciesWithNewAbilities))) && ((abilityNum & 1) == 0)) {
            ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
    }

    return ability;
}

void BoxMonGBAToBoxMon(GBABoxPokemon *gbaBoxMon, BoxPokemon *boxMon)
{
    BOOL reencrypt;
    u32 value;
    int i, v3;
    int language;
    u8 gbaNickname[GBA_MON_NAME_LEN + 1];
    u16 dsNickName[MON_NAME_LEN + 2];

    BoxPokemon_Init(boxMon);
    reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_PERSONALITY, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_PERSONALITY, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPECIES, NULL);
    value = GBAPokemon_ConvertSpeciesToDS(value);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPECIES, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_HELD_ITEM, NULL);
    if (value) {
        value = Item_FromGBAID(value);
    }
    BoxPokemon_SetValue(boxMon, MON_DATA_HELD_ITEM, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_OT_ID, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_OT_ID, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_EXP, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_EXPERIENCE, (u8 *)&value);

    value = BASE_FRIENDSHIP_VALUE;
    BoxPokemon_SetValue(boxMon, MON_DATA_FRIENDSHIP, (u8 *)&value);

    value = ConvertBoxMonGBAtoDSAbility(gbaBoxMon, boxMon);
    BoxPokemon_SetValue(boxMon, MON_DATA_ABILITY, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MARKINGS, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MARKINGS, (u8 *)&value);

    language = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_LANGUAGE, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_LANGUAGE, (u8 *)&language);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_HP_EV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_HP_EV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_ATK_EV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_ATK_EV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_DEF_EV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_DEF_EV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPEED_EV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPEED_EV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPATK_EV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPATK_EV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPDEF_EV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPDEF_EV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_COOL, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_COOL, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_BEAUTY, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_BEAUTY, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_CUTE, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_CUTE, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SMART, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SMART, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_TOUGH, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_TOUGH, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SHEEN, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SHEEN, (u8 *)&value);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MOVE1 + i, NULL);
        if (value > GBA_NUM_VALID_MOVES) {
            (void)0;
        }
        BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1 + i, (u8 *)&value);

        value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_PP_BONUSES, NULL);
        value = (value & (0x3 << (i * 2))) >> (i * 2);
        BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_PP_UPS + i, (u8 *)&value);

        value = BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1_MAX_PP + i, NULL);
        BoxPokemon_SetValue(boxMon, MON_DATA_MOVE1_PP + i, (u8 *)&value);
    }

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_HP_IV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_HP_IV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_ATK_IV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_ATK_IV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_DEF_IV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_DEF_IV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPEED_IV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPEED_IV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPATK_IV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPATK_IV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SPDEF_IV, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SPDEF_IV, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_IS_EGG, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_IS_EGG, (u8 *)&value);

    v3 = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_COOL_RIBBON, NULL);
    if (v3 <= 4) {
        for (i = 0; i < v3; i++) {
            value = 1;
            BoxPokemon_SetValue(boxMon, MON_DATA_COOL_RIBBON + i, (u8 *)&value);
        }
    }

    v3 = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_BEAUTY_RIBBON, NULL);
    if (v3 <= 4) {
        for (i = 0; i < v3; i++) {
            value = 1;
            BoxPokemon_SetValue(boxMon, MON_DATA_BEAUTY_RIBBON + i, (u8 *)&value);
        }
    }

    v3 = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_CUTE_RIBBON, NULL);
    if (v3 <= 4) {
        for (i = 0; i < v3; i++) {
            value = 1;
            BoxPokemon_SetValue(boxMon, MON_DATA_CUTE_RIBBON + i, (u8 *)&value);
        }
    }

    v3 = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SMART_RIBBON, NULL);
    if (v3 <= 4) {
        for (i = 0; i < v3; i++) {
            value = 1;
            BoxPokemon_SetValue(boxMon, MON_DATA_SMART_RIBBON + i, (u8 *)&value);
        }
    }

    v3 = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_TOUGH_RIBBON, NULL);
    if (v3 <= 4) {
        for (i = 0; i < v3; i++) {
            value = 1;
            BoxPokemon_SetValue(boxMon, MON_DATA_TOUGH_RIBBON + i, (u8 *)&value);
        }
    }

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_CHAMPION_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_CHAMPION_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_WINNING_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_WINNING_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_VICTORY_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_VICTORY_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_ARTIST_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_ARTIST_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_EFFORT_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_EFFORT_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MARINE_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MARINE_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_LAND_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_LAND_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_SKY_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_SKY_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_COUNTRY_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_COUNTRY_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_NATIONAL_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_NATIONAL_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_EARTH_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_EARTH_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_WORLD_RIBBON, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_WORLD_RIBBON, (u8 *)&value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MODERN_FATEFUL_ENCOUNTER, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_FATEFUL_ENCOUNTER, (u8 *)&value);

    value = BoxPokemon_GetGender(boxMon);
    BoxPokemon_SetValue(boxMon, MON_DATA_GENDER, (u8 *)&value);

    if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_UNOWN) {
        value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_PERSONALITY, NULL);
        value = (((value & 0x3000000) >> 18) | ((value & 0x30000) >> 12) | ((value & 0x300) >> 6) | (value & 0x3)) % 28;

        BoxPokemon_SetValue(boxMon, MON_DATA_FORM, (u8 *)&value);
    }

    if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_DEOXYS) {
        switch (gSystem.gbaCartridgeVersion) {
        default:
        case VERSION_RUBY:
        case VERSION_SAPPHIRE:
            value = 0;
            break;
        case VERSION_FIRERED:
            value = 1;
            break;
        case VERSION_LEAFGREEN:
            value = 2;
            break;
        case VERSION_EMERALD:
            value = 3;
            break;
        }

        BoxPokemon_SetValue(boxMon, MON_DATA_FORM, (u8 *)&value);
    }

    GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_NICKNAME, gbaNickname);
    GBA_ConvertStringToDS(gbaNickname, dsNickName, MON_NAME_LEN + 2, language);
    BoxPokemon_SetValue(boxMon, MON_DATA_NICKNAME_AND_FLAG, dsNickName);

    if (GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_LANGUAGE, NULL) != gGameLanguage) {
        value = 1;
        BoxPokemon_SetValue(boxMon, MON_DATA_HAS_NICKNAME, &value);
    }

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MET_GAME, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_GAME, &value);

    GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_OT_NAME, gbaNickname);
    GBA_ConvertStringToDS(gbaNickname, dsNickName, GBA_PLAYER_NAME_LEN + 1, language);
    BoxPokemon_SetValue(boxMon, MON_DATA_OT_NAME, dsNickName);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MET_LOCATION, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_LOCATION, &value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_POKERUS, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_POKERUS, &value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_POKEBALL, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_POKEBALL, &value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_MET_LEVEL, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_LEVEL, &value);

    value = GBABoxPokemon_GetData(gbaBoxMon, GBA_MON_DATA_OT_GENDER, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_OT_GENDER, &value);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

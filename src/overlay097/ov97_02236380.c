#include "overlay097/ov97_02236380.h"

#include <nitro.h>
#include <string.h>

#include "constants/gba/pokemon.h"
#include "constants/gba/species.h"
#include "constants/species.h"

#include "overlay097/box_pokemon_gba.h"
#include "overlay097/ov97_022392E4.h"

#include "item.h"
#include "pokemon.h"
#include "system.h"

typedef struct {
    u16 gbaSpecies;
    u16 ndsSpecies;
} GBAToDSSpeciesStruct;

GBAToDSSpeciesStruct sGBAToDSSpecies[] = {
    { GBA_SPECIES_TREECKO,      SPECIES_TREECKO },
    { GBA_SPECIES_GROVYLE,      SPECIES_GROVYLE },
    { GBA_SPECIES_SCEPTILE,     SPECIES_SCEPTILE },
    { GBA_SPECIES_TORCHIC,      SPECIES_TORCHIC },
    { GBA_SPECIES_COMBUSKEN,    SPECIES_COMBUSKEN },
    { GBA_SPECIES_BLAZIKEN,     SPECIES_BLAZIKEN },
    { GBA_SPECIES_MUDKIP,       SPECIES_MUDKIP },
    { GBA_SPECIES_MARSHTOMP,    SPECIES_MARSHTOMP },
    { GBA_SPECIES_SWAMPERT,     SPECIES_SWAMPERT },
    { GBA_SPECIES_POOCHYENA,    SPECIES_POOCHYENA },
    { GBA_SPECIES_MIGHTYENA,    SPECIES_MIGHTYENA },
    { GBA_SPECIES_ZIGZAGOON,    SPECIES_ZIGZAGOON },
    { GBA_SPECIES_LINOONE,      SPECIES_LINOONE },
    { GBA_SPECIES_WURMPLE,      SPECIES_WURMPLE },
    { GBA_SPECIES_SILCOON,      SPECIES_SILCOON },
    { GBA_SPECIES_BEAUTIFLY,    SPECIES_BEAUTIFLY },
    { GBA_SPECIES_CASCOON,      SPECIES_CASCOON },
    { GBA_SPECIES_DUSTOX,       SPECIES_DUSTOX },
    { GBA_SPECIES_LOTAD,        SPECIES_LOTAD },
    { GBA_SPECIES_LOMBRE,       SPECIES_LOMBRE },
    { GBA_SPECIES_LUDICOLO,     SPECIES_LUDICOLO },
    { GBA_SPECIES_SEEDOT,       SPECIES_SEEDOT },
    { GBA_SPECIES_NUZLEAF,      SPECIES_NUZLEAF },
    { GBA_SPECIES_SHIFTRY,      SPECIES_SHIFTRY },
    { GBA_SPECIES_NINCADA,      SPECIES_NINCADA },
    { GBA_SPECIES_NINJASK,      SPECIES_NINJASK },
    { GBA_SPECIES_SHEDINJA,     SPECIES_SHEDINJA },
    { GBA_SPECIES_TAILLOW,      SPECIES_TAILLOW },
    { GBA_SPECIES_SWELLOW,      SPECIES_SWELLOW },
    { GBA_SPECIES_SHROOMISH,    SPECIES_SHROOMISH },
    { GBA_SPECIES_BRELOOM,      SPECIES_BRELOOM },
    { GBA_SPECIES_SPINDA,       SPECIES_SPINDA },
    { GBA_SPECIES_WINGULL,      SPECIES_WINGULL },
    { GBA_SPECIES_PELIPPER,     SPECIES_PELIPPER },
    { GBA_SPECIES_SURSKIT,      SPECIES_SURSKIT },
    { GBA_SPECIES_MASQUERAIN,   SPECIES_MASQUERAIN },
    { GBA_SPECIES_WAILMER,      SPECIES_WAILMER },
    { GBA_SPECIES_WAILORD,      SPECIES_WAILORD },
    { GBA_SPECIES_SKITTY,       SPECIES_SKITTY },
    { GBA_SPECIES_DELCATTY,     SPECIES_DELCATTY },
    { GBA_SPECIES_KECLEON,      SPECIES_KECLEON },
    { GBA_SPECIES_BALTOY,       SPECIES_BALTOY },
    { GBA_SPECIES_CLAYDOL,      SPECIES_CLAYDOL },
    { GBA_SPECIES_NOSEPASS,     SPECIES_NOSEPASS },
    { GBA_SPECIES_TORKOAL,      SPECIES_TORKOAL },
    { GBA_SPECIES_SABLEYE,      SPECIES_SABLEYE },
    { GBA_SPECIES_BARBOACH,     SPECIES_BARBOACH },
    { GBA_SPECIES_WHISCASH,     SPECIES_WHISCASH },
    { GBA_SPECIES_LUVDISC,      SPECIES_LUVDISC },
    { GBA_SPECIES_CORPHISH,     SPECIES_CORPHISH },
    { GBA_SPECIES_CRAWDAUNT,    SPECIES_CRAWDAUNT },
    { GBA_SPECIES_FEEBAS,       SPECIES_FEEBAS },
    { GBA_SPECIES_MILOTIC,      SPECIES_MILOTIC },
    { GBA_SPECIES_CARVANHA,     SPECIES_CARVANHA },
    { GBA_SPECIES_SHARPEDO,     SPECIES_SHARPEDO },
    { GBA_SPECIES_TRAPINCH,     SPECIES_TRAPINCH },
    { GBA_SPECIES_VIBRAVA,      SPECIES_VIBRAVA },
    { GBA_SPECIES_FLYGON,       SPECIES_FLYGON },
    { GBA_SPECIES_MAKUHITA,     SPECIES_MAKUHITA },
    { GBA_SPECIES_HARIYAMA,     SPECIES_HARIYAMA },
    { GBA_SPECIES_ELECTRIKE,    SPECIES_ELECTRIKE },
    { GBA_SPECIES_MANECTRIC,    SPECIES_MANECTRIC },
    { GBA_SPECIES_NUMEL,        SPECIES_NUMEL },
    { GBA_SPECIES_CAMERUPT,     SPECIES_CAMERUPT },
    { GBA_SPECIES_SPHEAL,       SPECIES_SPHEAL },
    { GBA_SPECIES_SEALEO,       SPECIES_SEALEO },
    { GBA_SPECIES_WALREIN,      SPECIES_WALREIN },
    { GBA_SPECIES_CACNEA,       SPECIES_CACNEA },
    { GBA_SPECIES_CACTURNE,     SPECIES_CACTURNE },
    { GBA_SPECIES_SNORUNT,      SPECIES_SNORUNT },
    { GBA_SPECIES_GLALIE,       SPECIES_GLALIE },
    { GBA_SPECIES_LUNATONE,     SPECIES_LUNATONE },
    { GBA_SPECIES_SOLROCK,      SPECIES_SOLROCK },
    { GBA_SPECIES_AZURILL,      SPECIES_AZURILL },
    { GBA_SPECIES_SPOINK,       SPECIES_SPOINK },
    { GBA_SPECIES_GRUMPIG,      SPECIES_GRUMPIG },
    { GBA_SPECIES_PLUSLE,       SPECIES_PLUSLE },
    { GBA_SPECIES_MINUN,        SPECIES_MINUN },
    { GBA_SPECIES_MAWILE,       SPECIES_MAWILE },
    { GBA_SPECIES_MEDITITE,     SPECIES_MEDITITE },
    { GBA_SPECIES_MEDICHAM,     SPECIES_MEDICHAM },
    { GBA_SPECIES_SWABLU,       SPECIES_SWABLU },
    { GBA_SPECIES_ALTARIA,      SPECIES_ALTARIA },
    { GBA_SPECIES_WYNAUT,       SPECIES_WYNAUT },
    { GBA_SPECIES_DUSKULL,      SPECIES_DUSKULL },
    { GBA_SPECIES_DUSCLOPS,     SPECIES_DUSCLOPS },
    { GBA_SPECIES_ROSELIA,      SPECIES_ROSELIA },
    { GBA_SPECIES_SLAKOTH,      SPECIES_SLAKOTH },
    { GBA_SPECIES_VIGOROTH,     SPECIES_VIGOROTH },
    { GBA_SPECIES_SLAKING,      SPECIES_SLAKING },
    { GBA_SPECIES_GULPIN,       SPECIES_GULPIN },
    { GBA_SPECIES_SWALOT,       SPECIES_SWALOT },
    { GBA_SPECIES_TROPIUS,      SPECIES_TROPIUS },
    { GBA_SPECIES_WHISMUR,      SPECIES_WHISMUR },
    { GBA_SPECIES_LOUDRED,      SPECIES_LOUDRED },
    { GBA_SPECIES_EXPLOUD,      SPECIES_EXPLOUD },
    { GBA_SPECIES_CLAMPERL,     SPECIES_CLAMPERL },
    { GBA_SPECIES_HUNTAIL,      SPECIES_HUNTAIL },
    { GBA_SPECIES_GOREBYSS,     SPECIES_GOREBYSS },
    { GBA_SPECIES_ABSOL,        SPECIES_ABSOL },
    { GBA_SPECIES_SHUPPET,      SPECIES_SHUPPET },
    { GBA_SPECIES_BANETTE,      SPECIES_BANETTE },
    { GBA_SPECIES_SEVIPER,      SPECIES_SEVIPER },
    { GBA_SPECIES_ZANGOOSE,     SPECIES_ZANGOOSE },
    { GBA_SPECIES_RELICANTH,    SPECIES_RELICANTH },
    { GBA_SPECIES_ARON,         SPECIES_ARON },
    { GBA_SPECIES_LAIRON,       SPECIES_LAIRON },
    { GBA_SPECIES_AGGRON,       SPECIES_AGGRON },
    { GBA_SPECIES_CASTFORM,     SPECIES_CASTFORM },
    { GBA_SPECIES_VOLBEAT,      SPECIES_VOLBEAT },
    { GBA_SPECIES_ILLUMISE,     SPECIES_ILLUMISE },
    { GBA_SPECIES_LILEEP,       SPECIES_LILEEP },
    { GBA_SPECIES_CRADILY,      SPECIES_CRADILY },
    { GBA_SPECIES_ANORITH,      SPECIES_ANORITH },
    { GBA_SPECIES_ARMALDO,      SPECIES_ARMALDO },
    { GBA_SPECIES_RALTS,        SPECIES_RALTS },
    { GBA_SPECIES_KIRLIA,       SPECIES_KIRLIA },
    { GBA_SPECIES_GARDEVOIR,    SPECIES_GARDEVOIR },
    { GBA_SPECIES_BAGON,        SPECIES_BAGON },
    { GBA_SPECIES_SHELGON,      SPECIES_SHELGON },
    { GBA_SPECIES_SALAMENCE,    SPECIES_SALAMENCE },
    { GBA_SPECIES_BELDUM,       SPECIES_BELDUM },
    { GBA_SPECIES_METANG,       SPECIES_METANG },
    { GBA_SPECIES_METAGROSS,    SPECIES_METAGROSS },
    { GBA_SPECIES_REGIROCK,     SPECIES_REGIROCK },
    { GBA_SPECIES_REGICE,       SPECIES_REGICE },
    { GBA_SPECIES_REGISTEEL,    SPECIES_REGISTEEL },
    { GBA_SPECIES_KYOGRE,       SPECIES_KYOGRE },
    { GBA_SPECIES_GROUDON,      SPECIES_GROUDON },
    { GBA_SPECIES_RAYQUAZA,     SPECIES_RAYQUAZA },
    { GBA_SPECIES_LATIAS,       SPECIES_LATIAS },
    { GBA_SPECIES_LATIOS,       SPECIES_LATIOS },
    { GBA_SPECIES_JIRACHI,      SPECIES_JIRACHI },
    { GBA_SPECIES_DEOXYS,       SPECIES_DEOXYS },
    { GBA_SPECIES_CHIMECHO,     SPECIES_CHIMECHO },
    { GBA_SPECIES_EGG,          0x19C },
    { 0x19D,                    0x19D },
    { 0x19E,                    0x19E },
    { 0x19F,                    0x19F },
    { 0x1A0,                    0x1A0 },
    { 0x1A1,                    0x1A1 },
    { 0x1A2,                    0x1A2 },
    { 0x1A3,                    0x1A3 },
    { 0x1A4,                    0x1A4 }
};

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_1;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_2;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_3;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_4;

typedef struct {
    PokemonGBASubstruct0 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_5;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_6;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_7;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_8;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_9;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_10;

typedef struct {
    PokemonGBASubstruct1 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_11;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_12;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_13;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct3 unk_24;
} UnkStruct_ov97_02236380_14;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct3 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_15;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_16;

typedef struct {
    PokemonGBASubstruct2 unk_00;
    PokemonGBASubstruct3 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_17;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_18;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct0 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_19;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct2 unk_24;
} UnkStruct_ov97_02236380_20;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct1 unk_0C;
    PokemonGBASubstruct2 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_21;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct0 unk_18;
    PokemonGBASubstruct1 unk_24;
} UnkStruct_ov97_02236380_22;

typedef struct {
    PokemonGBASubstruct3 unk_00;
    PokemonGBASubstruct2 unk_0C;
    PokemonGBASubstruct1 unk_18;
    PokemonGBASubstruct0 unk_24;
} UnkStruct_ov97_02236380_23;

void BoxMonGBAToBoxMon(BoxPokemonGBA *param0, BoxPokemon *param1);

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

static u32 ov97_02236380(BoxPokemonGBA *param0, u32 param1, u8 param2)
{
    u32 v0 = 0;
    UnkStruct_ov97_02236380 *v1;
    UnkStruct_ov97_02236380_1 *v2;
    UnkStruct_ov97_02236380_2 *v3;
    UnkStruct_ov97_02236380_3 *v4;
    UnkStruct_ov97_02236380_4 *v5;
    UnkStruct_ov97_02236380_5 *v6;
    UnkStruct_ov97_02236380_6 *v7;
    UnkStruct_ov97_02236380_7 *v8;
    UnkStruct_ov97_02236380_8 *v9;
    UnkStruct_ov97_02236380_9 *v10;
    UnkStruct_ov97_02236380_10 *v11;
    UnkStruct_ov97_02236380_11 *v12;
    UnkStruct_ov97_02236380_12 *v13;
    UnkStruct_ov97_02236380_13 *v14;
    UnkStruct_ov97_02236380_14 *v15;
    UnkStruct_ov97_02236380_15 *v16;
    UnkStruct_ov97_02236380_16 *v17;
    UnkStruct_ov97_02236380_17 *v18;
    UnkStruct_ov97_02236380_18 *v19;
    UnkStruct_ov97_02236380_19 *v20;
    UnkStruct_ov97_02236380_20 *v21;
    UnkStruct_ov97_02236380_21 *v22;
    UnkStruct_ov97_02236380_22 *v23;
    UnkStruct_ov97_02236380_23 *v24;

    switch (param1 % 24) {
    case 0:
        v1 = (UnkStruct_ov97_02236380 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v1->unk_00;
            break;
        case 1:
            v0 = (u32)&v1->unk_0C;
            break;
        case 2:
            v0 = (u32)&v1->unk_18;
            break;
        case 3:
            v0 = (u32)&v1->unk_24;
            break;
        }
        break;
    case 1:
        v2 = (UnkStruct_ov97_02236380_1 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v2->unk_00;
            break;
        case 1:
            v0 = (u32)&v2->unk_0C;
            break;
        case 2:
            v0 = (u32)&v2->unk_24;
            break;
        case 3:
            v0 = (u32)&v2->unk_18;
            break;
        }
        break;
    case 2:
        v3 = (UnkStruct_ov97_02236380_2 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v3->unk_00;
            break;
        case 1:
            v0 = (u32)&v3->unk_18;
            break;
        case 2:
            v0 = (u32)&v3->unk_0C;
            break;
        case 3:
            v0 = (u32)&v3->unk_24;
            break;
        }
        break;
    case 3:
        v4 = (UnkStruct_ov97_02236380_3 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v4->unk_00;
            break;
        case 1:
            v0 = (u32)&v4->unk_24;
            break;
        case 2:
            v0 = (u32)&v4->unk_0C;
            break;
        case 3:
            v0 = (u32)&v4->unk_18;
            break;
        }
        break;
    case 4:
        v5 = (UnkStruct_ov97_02236380_4 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v5->unk_00;
            break;
        case 1:
            v0 = (u32)&v5->unk_18;
            break;
        case 2:
            v0 = (u32)&v5->unk_24;
            break;
        case 3:
            v0 = (u32)&v5->unk_0C;
            break;
        }
        break;
    case 5:
        v6 = (UnkStruct_ov97_02236380_5 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v6->unk_00;
            break;
        case 1:
            v0 = (u32)&v6->unk_24;
            break;
        case 2:
            v0 = (u32)&v6->unk_18;
            break;
        case 3:
            v0 = (u32)&v6->unk_0C;
            break;
        }
        break;
    case 6:
        v7 = (UnkStruct_ov97_02236380_6 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v7->unk_0C;
            break;
        case 1:
            v0 = (u32)&v7->unk_00;
            break;
        case 2:
            v0 = (u32)&v7->unk_18;
            break;
        case 3:
            v0 = (u32)&v7->unk_24;
            break;
        }
        break;
    case 7:
        v8 = (UnkStruct_ov97_02236380_7 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v8->unk_0C;
            break;
        case 1:
            v0 = (u32)&v8->unk_00;
            break;
        case 2:
            v0 = (u32)&v8->unk_24;
            break;
        case 3:
            v0 = (u32)&v8->unk_18;
            break;
        }
        break;
    case 8:
        v9 = (UnkStruct_ov97_02236380_8 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v9->unk_18;
            break;
        case 1:
            v0 = (u32)&v9->unk_00;
            break;
        case 2:
            v0 = (u32)&v9->unk_0C;
            break;
        case 3:
            v0 = (u32)&v9->unk_24;
            break;
        }
        break;
    case 9:
        v10 = (UnkStruct_ov97_02236380_9 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v10->unk_24;
            break;
        case 1:
            v0 = (u32)&v10->unk_00;
            break;
        case 2:
            v0 = (u32)&v10->unk_0C;
            break;
        case 3:
            v0 = (u32)&v10->unk_18;
            break;
        }
        break;
    case 10:
        v11 = (UnkStruct_ov97_02236380_10 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v11->unk_18;
            break;
        case 1:
            v0 = (u32)&v11->unk_00;
            break;
        case 2:
            v0 = (u32)&v11->unk_24;
            break;
        case 3:
            v0 = (u32)&v11->unk_0C;
            break;
        }
        break;
    case 11:
        v12 = (UnkStruct_ov97_02236380_11 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v12->unk_24;
            break;
        case 1:
            v0 = (u32)&v12->unk_00;
            break;
        case 2:
            v0 = (u32)&v12->unk_18;
            break;
        case 3:
            v0 = (u32)&v12->unk_0C;
            break;
        }
        break;
    case 12:
        v13 = (UnkStruct_ov97_02236380_12 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v13->unk_0C;
            break;
        case 1:
            v0 = (u32)&v13->unk_18;
            break;
        case 2:
            v0 = (u32)&v13->unk_00;
            break;
        case 3:
            v0 = (u32)&v13->unk_24;
            break;
        }
        break;
    case 13:
        v14 = (UnkStruct_ov97_02236380_13 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v14->unk_0C;
            break;
        case 1:
            v0 = (u32)&v14->unk_24;
            break;
        case 2:
            v0 = (u32)&v14->unk_00;
            break;
        case 3:
            v0 = (u32)&v14->unk_18;
            break;
        }
        break;
    case 14:
        v15 = (UnkStruct_ov97_02236380_14 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v15->unk_18;
            break;
        case 1:
            v0 = (u32)&v15->unk_0C;
            break;
        case 2:
            v0 = (u32)&v15->unk_00;
            break;
        case 3:
            v0 = (u32)&v15->unk_24;
            break;
        }
        break;
    case 15:
        v16 = (UnkStruct_ov97_02236380_15 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v16->unk_24;
            break;
        case 1:
            v0 = (u32)&v16->unk_0C;
            break;
        case 2:
            v0 = (u32)&v16->unk_00;
            break;
        case 3:
            v0 = (u32)&v16->unk_18;
            break;
        }
        break;
    case 16:
        v17 = (UnkStruct_ov97_02236380_16 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v17->unk_18;
            break;
        case 1:
            v0 = (u32)&v17->unk_24;
            break;
        case 2:
            v0 = (u32)&v17->unk_00;
            break;
        case 3:
            v0 = (u32)&v17->unk_0C;
            break;
        }
        break;
    case 17:
        v18 = (UnkStruct_ov97_02236380_17 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v18->unk_24;
            break;
        case 1:
            v0 = (u32)&v18->unk_18;
            break;
        case 2:
            v0 = (u32)&v18->unk_00;
            break;
        case 3:
            v0 = (u32)&v18->unk_0C;
            break;
        }
        break;
    case 18:
        v19 = (UnkStruct_ov97_02236380_18 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v19->unk_0C;
            break;
        case 1:
            v0 = (u32)&v19->unk_18;
            break;
        case 2:
            v0 = (u32)&v19->unk_24;
            break;
        case 3:
            v0 = (u32)&v19->unk_00;
            break;
        }
        break;
    case 19:
        v20 = (UnkStruct_ov97_02236380_19 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v20->unk_0C;
            break;
        case 1:
            v0 = (u32)&v20->unk_24;
            break;
        case 2:
            v0 = (u32)&v20->unk_18;
            break;
        case 3:
            v0 = (u32)&v20->unk_00;
            break;
        }
        break;
    case 20:
        v21 = (UnkStruct_ov97_02236380_20 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v21->unk_18;
            break;
        case 1:
            v0 = (u32)&v21->unk_0C;
            break;
        case 2:
            v0 = (u32)&v21->unk_24;
            break;
        case 3:
            v0 = (u32)&v21->unk_00;
            break;
        }
        break;
    case 21:
        v22 = (UnkStruct_ov97_02236380_21 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v22->unk_24;
            break;
        case 1:
            v0 = (u32)&v22->unk_0C;
            break;
        case 2:
            v0 = (u32)&v22->unk_18;
            break;
        case 3:
            v0 = (u32)&v22->unk_00;
            break;
        }
        break;
    case 22:
        v23 = (UnkStruct_ov97_02236380_22 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v23->unk_18;
            break;
        case 1:
            v0 = (u32)&v23->unk_24;
            break;
        case 2:
            v0 = (u32)&v23->unk_0C;
            break;
        case 3:
            v0 = (u32)&v23->unk_00;
            break;
        }
        break;
    case 23:
        v24 = (UnkStruct_ov97_02236380_23 *)param0->secure;

        switch (param2) {
        case 0:
            v0 = (u32)&v24->unk_24;
            break;
        case 1:
            v0 = (u32)&v24->unk_18;
            break;
        case 2:
            v0 = (u32)&v24->unk_0C;
            break;
        case 3:
            v0 = (u32)&v24->unk_00;
            break;
        }
        break;
    }

    return v0;
}

static void GBADecryptBoxMon(BoxPokemonGBA *param0)
{
    int v0;
    u32 *v1;

    v1 = (u32 *)&param0->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= param0->otId;
        v1[v0] ^= param0->personality;
    }
}

static void GBAEncryptBoxMon(BoxPokemonGBA *param0)
{
    int v0;
    u32 *v1;

    v1 = (u32 *)&param0->secure;

    for (v0 = 0; v0 < (sizeof(PokemonGBASubstruct0) + sizeof(PokemonGBASubstruct1) + sizeof(PokemonGBASubstruct2) + sizeof(PokemonGBASubstruct3)) / 4; v0++) {
        v1[v0] ^= param0->personality;
        v1[v0] ^= param0->otId;
    }
}

static u16 ov97_0223689C(BoxPokemonGBA *param0)
{
    int v0;
    u16 *v1;
    u16 *v2;
    u16 *v3;
    u16 *v4;
    u16 v5 = 0;

    v1 = (u16 *)ov97_02236380(param0, param0->personality, 0);
    v2 = (u16 *)ov97_02236380(param0, param0->personality, 1);
    v3 = (u16 *)ov97_02236380(param0, param0->personality, 2);
    v4 = (u16 *)ov97_02236380(param0, param0->personality, 3);

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v1[v0];
    }

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v2[v0];
    }

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v3[v0];
    }

    for (v0 = 0; v0 < 12 / 2; v0++) {
        v5 += v4[v0];
    }

    return v5;
}

u32 GetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, u8 *param2)
{
    u32 retVal = 0;
    PokemonGBASubstruct0 *substruct0 = 0;
    PokemonGBASubstruct1 *substruct1 = 0;
    PokemonGBASubstruct2 *substruct2 = 0;
    PokemonGBASubstruct3 *substruct3 = 0;
    u16 checksum;

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        substruct0 = (PokemonGBASubstruct0 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 0);
        substruct1 = (PokemonGBASubstruct1 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 1);
        substruct2 = (PokemonGBASubstruct2 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 2);
        substruct3 = (PokemonGBASubstruct3 *)ov97_02236380(boxMonGBA, boxMonGBA->personality, 3);

        GBADecryptBoxMon(boxMonGBA);
        checksum = ov97_0223689C(boxMonGBA);

        if (checksum != boxMonGBA->checksum) {
            boxMonGBA->isBadEgg = TRUE;
            boxMonGBA->isEgg = TRUE;
            substruct3->isEgg = TRUE;
        }
    }

    switch (field) {
    case GBA_MON_DATA_PERSONALITY:
        retVal = boxMonGBA->personality;
        break;
    case GBA_MON_DATA_OT_ID:
        retVal = boxMonGBA->otId;
        break;
    case GBA_MON_DATA_NICKNAME:
        if (boxMonGBA->isBadEgg) {
            retVal = 0;
        } else {
            for (retVal = 0; retVal < 10; retVal++) {
                param2[retVal] = boxMonGBA->nickname[retVal];
            }
        }

        param2[retVal] = 0xff;
        break;
    case GBA_MON_DATA_LANGUAGE:
        retVal = boxMonGBA->language;
        break;
    case GBA_MON_DATA_SANITY_IS_BAD_EGG:
        retVal = boxMonGBA->isBadEgg;
        break;
    case GBA_MON_DATA_SANITY_HAS_SPECIES:
        retVal = boxMonGBA->hasSpecies;
        break;
    case GBA_MON_DATA_SANITY_IS_EGG:
        retVal = boxMonGBA->isEgg;
        break;
    case GBA_MON_DATA_OT_NAME:
        for (retVal = 0; retVal < 7; retVal++) {
            param2[retVal] = boxMonGBA->otName[retVal];
        }

        param2[retVal] = 0xffff;
        break;
    case GBA_MON_DATA_MARKINGS:
        retVal = boxMonGBA->markings;
        break;
    case GBA_MON_DATA_CHECKSUM:
        retVal = boxMonGBA->checksum;
        break;
    case GBA_MON_DATA_ENCRYPT_SEPARATOR:
        retVal = boxMonGBA->unknown;
        break;
    case GBA_MON_DATA_SPECIES:
        if (boxMonGBA->isBadEgg) {
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

        if (substruct3->isEgg || boxMonGBA->isBadEgg) {
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
        GBAEncryptBoxMon(boxMonGBA);
    }

    return retVal;
}

void SetGBABoxMonData(BoxPokemonGBA *boxMon, int field, const u8 *dataArg)
{
    int v0;
    u32 v1;
    PokemonGBASubstruct0 *v2 = 0;
    PokemonGBASubstruct1 *v3 = 0;
    PokemonGBASubstruct2 *v4 = 0;
    PokemonGBASubstruct3 *v5 = 0;
    u16 v6;

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        v2 = (PokemonGBASubstruct0 *)ov97_02236380(boxMon, boxMon->personality, 0);
        v3 = (PokemonGBASubstruct1 *)ov97_02236380(boxMon, boxMon->personality, 1);
        v4 = (PokemonGBASubstruct2 *)ov97_02236380(boxMon, boxMon->personality, 2);
        v5 = (PokemonGBASubstruct3 *)ov97_02236380(boxMon, boxMon->personality, 3);

        GBADecryptBoxMon(boxMon);
        v6 = ov97_0223689C(boxMon);

        if (v6 != boxMon->checksum) {
            boxMon->isBadEgg = 1;
            boxMon->isEgg = 1;
            v5->isEgg = 1;
            GBAEncryptBoxMon(boxMon);
            return;
        }
    }

    switch (field) {
    case GBA_MON_DATA_NICKNAME:
        for (v0 = 0; v0 < 10; v0++) {
            boxMon->nickname[v0] = dataArg[v0];
        }
        break;
    case GBA_MON_DATA_LANGUAGE:
        boxMon->language = dataArg[0];
        break;
    case GBA_MON_DATA_SANITY_IS_BAD_EGG:
        boxMon->isBadEgg = dataArg[0];
        break;
    case GBA_MON_DATA_SANITY_HAS_SPECIES:
        boxMon->hasSpecies = dataArg[0];
        break;
    case GBA_MON_DATA_SANITY_IS_EGG:
        boxMon->isEgg = dataArg[0];
        break;
    case GBA_MON_DATA_OT_NAME:
        for (v0 = 0; v0 < 7; v0++) {
            boxMon->otName[v0] = dataArg[v0];
        }
        break;
    case GBA_MON_DATA_SPECIES:
        v2->species = dataArg[0] + (dataArg[1] << 8);

        if (v2->species) {
            boxMon->hasSpecies = 1;
        } else {
            boxMon->hasSpecies = 0;
        }
        break;
    }

    if (field > GBA_MON_DATA_ENCRYPT_SEPARATOR) {
        boxMon->checksum = ov97_0223689C(boxMon);
        GBAEncryptBoxMon(boxMon);
    }
}

int ConvertGBASpeciesToDS(int species)
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

u32 ov97_02236E00(BoxPokemonGBA *param0)
{
    int v0;
    u32 v1;

    v0 = ConvertGBASpeciesToDS(GetGBABoxMonData(param0, GBA_MON_DATA_SPECIES, 0));
    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_EXP, 0);

    return Pokemon_GetSpeciesLevelAt(v0, v1);
}

static int ov97_02236E28(BoxPokemonGBA *boxMonGBA, BoxPokemon *boxMon)
{
    int v0;
    int ability;
    u16 species;
    int v3;

    species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    v3 = GetGBABoxMonData(boxMonGBA, GBA_MON_DATA_ABILITY_NUM, NULL);
    ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_2);

    if (ability) {
        for (v0 = 0; v0 < (sizeof(Unk_ov97_0223ECA0) / 2); v0++) {
            if (Unk_ov97_0223ECA0[v0] == species) {
                ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
                break;
            }
        }

        if ((v0 == (sizeof(Unk_ov97_0223ECA0) / 2)) && ((v3 & 1) == 0)) {
            ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        ability = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_ABILITY_1);
    }

    return ability;
}

void BoxMonGBAToBoxMon(BoxPokemonGBA *param0, BoxPokemon *param1)
{
    BOOL v0;
    u32 v1;
    int v2, v3;
    int v4;
    u8 v5[10 + 1];
    u16 v6[12];

    BoxPokemon_Init(param1);

    v0 = BoxPokemon_EnterDecryptionContext(param1);
    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_PERSONALITY, NULL);

    BoxPokemon_SetValue(param1, MON_DATA_PERSONALITY, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPECIES, NULL);
    v1 = ConvertGBASpeciesToDS(v1);

    BoxPokemon_SetValue(param1, MON_DATA_SPECIES, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_HELD_ITEM, NULL);

    if (v1) {
        v1 = Item_FromGBAID(v1);
    }

    BoxPokemon_SetValue(param1, MON_DATA_HELD_ITEM, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_OT_ID, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_OT_ID, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_EXP, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_EXP, (u8 *)&v1);

    v1 = 70;
    BoxPokemon_SetValue(param1, MON_DATA_FRIENDSHIP, (u8 *)&v1);

    v1 = ov97_02236E28(param0, param1);
    BoxPokemon_SetValue(param1, MON_DATA_ABILITY, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MARKINGS, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_MARKS, (u8 *)&v1);

    v4 = GetGBABoxMonData(param0, GBA_MON_DATA_LANGUAGE, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_LANGUAGE, (u8 *)&v4);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_HP_EV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HP_EV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_ATK_EV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_ATK_EV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_DEF_EV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_DEF_EV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPEED_EV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SPEED_EV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPATK_EV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SPATK_EV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPDEF_EV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SPDEF_EV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_COOL, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_COOL, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_BEAUTY, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_BEAUTY, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_CUTE, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_CUTE, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SMART, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SMART, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_TOUGH, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_TOUGH, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SHEEN, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SHEEN, (u8 *)&v1);

    for (v2 = 0; v2 < LEARNED_MOVES_MAX; v2++) {
        v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MOVE1 + v2, NULL);

        if (v1 > 354) {
            (void)0;
        }

        BoxPokemon_SetValue(param1, MON_DATA_MOVE1 + v2, (u8 *)&v1);

        v1 = GetGBABoxMonData(param0, GBA_MON_DATA_PP_BONUSES, NULL);
        v1 = (v1 & (0x3 << (v2 * 2))) >> (v2 * 2);

        BoxPokemon_SetValue(param1, MON_DATA_MOVE1_PP_UPS + v2, (u8 *)&v1);

        v1 = BoxPokemon_GetValue(param1, MON_DATA_MOVE1_MAX_PP + v2, NULL);
        BoxPokemon_SetValue(param1, MON_DATA_MOVE1_CUR_PP + v2, (u8 *)&v1);
    }

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_HP_IV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HP_IV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_ATK_IV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_ATK_IV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_DEF_IV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_DEF_IV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPEED_IV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SPEED_IV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPATK_IV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SPATK_IV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SPDEF_IV, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_SPDEF_IV, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_IS_EGG, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_IS_EGG, (u8 *)&v1);

    v3 = GetGBABoxMonData(param0, GBA_MON_DATA_COOL_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            BoxPokemon_SetValue(param1, MON_DATA_HOENN_COOL_RIBBON + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, GBA_MON_DATA_BEAUTY_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            BoxPokemon_SetValue(param1, MON_DATA_HOENN_BEAUTY_RIBBON + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, GBA_MON_DATA_CUTE_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            BoxPokemon_SetValue(param1, MON_DATA_HOENN_CUTE_RIBBON + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, GBA_MON_DATA_SMART_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            BoxPokemon_SetValue(param1, MON_DATA_HOENN_SMART_RIBBON + v2, (u8 *)&v1);
        }
    }

    v3 = GetGBABoxMonData(param0, GBA_MON_DATA_TOUGH_RIBBON, NULL);

    if (v3 <= 4) {
        for (v2 = 0; v2 < v3; v2++) {
            v1 = 1;
            BoxPokemon_SetValue(param1, MON_DATA_HOENN_TOUGH_RIBBON + v2, (u8 *)&v1);
        }
    }

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_CHAMPION_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_CHAMPION_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_WINNING_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_WINNING_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_VICTORY_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_VICTORY_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_ARTIST_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_ARTIST_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_EFFORT_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_EFFORT_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MARINE_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_MARINE_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_LAND_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_LAND_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_SKY_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_SKY_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_COUNTRY_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_COUNTRY_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_NATIONAL_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_NATIONAL_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_EARTH_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_EARTH_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_WORLD_RIBBON, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HOENN_WORLD_RIBBON, (u8 *)&v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MODERN_FATEFUL_ENCOUNTER, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, (u8 *)&v1);

    v1 = BoxPokemon_GetGender(param1);
    BoxPokemon_SetValue(param1, MON_DATA_GENDER, (u8 *)&v1);

    if (BoxPokemon_GetValue(param1, MON_DATA_SPECIES, NULL) == SPECIES_UNOWN) {
        v1 = GetGBABoxMonData(param0, GBA_MON_DATA_PERSONALITY, NULL);
        v1 = GETUNOWN (((v1 & 0x3000000) >> 18) | ((v1 & 0x30000) >> 12) | ((v1 & 0x300) >> 6) | (v1 & 0x3)) % 28;

        BoxPokemon_SetValue(param1, MON_DATA_FORM, (u8 *)&v1);
    }

    if (BoxPokemon_GetValue(param1, MON_DATA_SPECIES, NULL) == SPECIES_DEOXYS) {
        switch (gSystem.gbaCartridgeVersion) {
        default:
        case RUBY:
        case SAPPHIRE:
            v1 = 0;
            break;
        case FIRERED:
            v1 = 1;
            break;
        case LEAFGREEN:
            v1 = 2;
            break;
        case EMERALD:
            v1 = 3;
            break;
        }

        BoxPokemon_SetValue(param1, MON_DATA_FORM, (u8 *)&v1);
    }

    GetGBABoxMonData(param0, GBA_MON_DATA_NICKNAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 12, v4);

    BoxPokemon_SetValue(param1, MON_DATA_NICKNAME_AND_FLAG, &v6[0]);

    if (GetGBABoxMonData(param0, GBA_MON_DATA_LANGUAGE, NULL) != gGameLanguage) {
        v1 = 1;
        BoxPokemon_SetValue(param1, MON_DATA_HAS_NICKNAME, &v1);
    }

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MET_GAME, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_MET_GAME, &v1);

    GetGBABoxMonData(param0, GBA_MON_DATA_OT_NAME, &v5[0]);
    ov97_0223936C(&v5[0], &v6[0], 8, v4);

    BoxPokemon_SetValue(param1, MON_DATA_OTNAME, &v6[0]);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MET_LOCATION, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_HATCH_LOCATION, &v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_POKERUS, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_POKERUS, &v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_POKEBALL, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_POKEBALL, &v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_MET_LEVEL, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_MET_LEVEL, &v1);

    v1 = GetGBABoxMonData(param0, GBA_MON_DATA_OT_GENDER, NULL);
    BoxPokemon_SetValue(param1, MON_DATA_OT_GENDER, &v1);
    BoxPokemon_ExitDecryptionContext(param1, v0);
}

#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "unk_0203E724.h"

#include "unk_0201D15C.h"
#include "unk_0204CDDC.h"
#include "unk_020507CC.h"
#include "unk_0206AFE0.h"

#include "constants/species.h"

BOOL sub_0204CF68(UnkStruct_0203E724 * param0);
BOOL sub_0204CF8C(UnkStruct_0203E724 * param0);
BOOL sub_0204CFC4(UnkStruct_0203E724 * param0);

BOOL sub_0204CDDC (UnkStruct_0203E724 * param0)
{
    sub_0206B218(SaveData_Events(param0->unk_34->saveData));
    return 0;
}

BOOL sub_0204CDF0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206B228(SaveData_Events(param0->unk_34->saveData));
    return 0;
}

static const u16 Unk_020EBF84[6][10] = {
    {0x0, 0x5, 0x15, 0x6, 0x1A, 0xD, 0x19, 0x1F, 0x10, 0x21}, // Chimchar, Monferno, Infernape
    {0x2, 0x13, 0x14, 0x18, 0x11, 0x0, 0x17, 0x1D, 0x1C, 0xF}, // Piplup, Prinplup, Empoleon
    {0x9, 0x8, 0x3, 0x6, 0x16, 0x1E, 0x11, 0x7, 0xE, 0x20}, // Turtwig, Grotle, Torterra
    {0xC, 0x12, 0x15, 0xD, 0x1F, 0x8, 0x19, 0x18, 0x1B, 0x7}, // Psyduck, Buneary, Drifloon
    {0x5, 0x3, 0x1A, 0x13, 0x14, 0x1, 0xB, 0x10, 0x16, 0xF}, // Pikachu, Clefairy, Pachirisu, Happiny
    {0xC, 0x1E, 0x2, 0x14, 0x1D, 0x4, 0x9, 0x1B, 0xE, 0xA} // Jigglypuff, Torchic, Skitty, Shroomish
};

BOOL sub_0204CE1C (UnkStruct_0203E724 * ctx)
{
    u8 i, j;
    u16 rand;
    u16 *result = inline_0204FCAC(ctx);
    u16 species = inline_02049538(ctx);

    rand = LCRNG_Next() % 100;

    if (rand < 15) {
        j = 0;
    } else if (rand < (15 + 15)) {
        j = 1;
    } else if (rand < (15 + 15 + 15)) {
        j = 2;
    } else if (rand < (15 + 15 + 15 + 15)) {
        j = 3;
    } else if (rand < (15 + 15 + 15 + 15 + 10)) {
        j = 4;
    } else if (rand < (15 + 15 + 15 + 15 + 10 + 10)) {
        j = 5;
    } else if (rand < (15 + 15 + 15 + 15 + 10 + 10 + 8)) {
        j = 6;
    } else if (rand < (15 + 15 + 15 + 15 + 10 + 10 + 8 + 5)) {
        j = 7;
    } else if (rand < (15 + 15 + 15 + 15 + 10 + 10 + 8 + 5 + 5)) {
        j = 8;
    } else {
        j = 9;
    }

    switch (species) {
    case SPECIES_CHIMCHAR:
    case SPECIES_MONFERNO:
    case SPECIES_INFERNAPE:
        i = 0;
        break;
    case SPECIES_PIPLUP:
    case SPECIES_PRINPLUP:
    case SPECIES_EMPOLEON:
        i = 1;
        break;
    case SPECIES_TURTWIG:
    case SPECIES_GROTLE:
    case SPECIES_TORTERRA:
        i = 2;
        break;
    case SPECIES_PSYDUCK:
    case SPECIES_BUNEARY:
    case SPECIES_DRIFLOON:
        i = 3;
        break;
    case SPECIES_PIKACHU:
    case SPECIES_CLEFAIRY:
    case SPECIES_PACHIRISU:
    case SPECIES_HAPPINY:
        i = 4;
        break;
    case SPECIES_JIGGLYPUFF:
    case SPECIES_TORCHIC:
    case SPECIES_SKITTY:
    case SPECIES_SHROOMISH:
        i = 5;
        break;

    default:
        i = 0;
    }

    *result = Unk_020EBF84[i][j];

    return 0;
}

static const u16 Unk_020EBF64[] = {
    0xB0,
    0xAF,
    0xB1,
    0xB2,
    0xB3,
    0xB4,
    0xB5,
    0xB6,
    0xB7,
    0xB,
    0x7,
    0xA,
    0x10,
    0x1B,
    0x20,
    0x21
};

BOOL sub_0204CF68 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = (LCRNG_Next() % (NELEMS(Unk_020EBF64)));
    return 0;
}

BOOL sub_0204CF8C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    if (v0 < 9) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

BOOL sub_0204CFC4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = Unk_020EBF64[v0];
    return 0;
}

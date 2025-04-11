#include "unk_0204CDDC.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/accessories.h"

#include "field_script_context.h"
#include "inlines.h"
#include "math.h"
#include "system_vars.h"
#include "vars_flags.h"

BOOL ScrCmd_ClearAmitySquareStepCount(ScriptContext *ctx)
{
    SystemVars_ClearAmitySquareStepCount(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_GetAmitySquareStepCount(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemVars_GetAmitySquareStepCount(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

static const u16 Unk_020EBF84[6][10] = {
    { ACCESSORY_WHITE_FLUFF, ACCESSORY_ORANGE_FLUFF, ACCESSORY_WHITE_FEATHER, ACCESSORY_ROUND_PEBBLE, ACCESSORY_SMALL_LEAF, ACCESSORY_BLUE_SCALE, ACCESSORY_WHITE_BEARD, ACCESSORY_THIN_MUSHROOM, ACCESSORY_BIG_SCALE, ACCESSORY_STUMP }, // Chimchar, Monferno, Infernape
    { ACCESSORY_PINK_FLUFF, ACCESSORY_RED_FEATHER, ACCESSORY_YELLOW_FEATHER, ACCESSORY_BLACK_BEARD, ACCESSORY_NARROW_SCALE, ACCESSORY_WHITE_FLUFF, ACCESSORY_WHITE_MOUSTACHE, ACCESSORY_SHED_CLAW, ACCESSORY_NARROW_LEAF, ACCESSORY_PURPLE_SCALE }, // Piplup, Prinplup, Empoleon
    { ACCESSORY_JAGGED_BOULDER, ACCESSORY_SNAGGY_PEBBLE, ACCESSORY_BROWN_FLUFF, ACCESSORY_ROUND_PEBBLE, ACCESSORY_BLACK_MOUSTACHE, ACCESSORY_SHED_HOWN, ACCESSORY_NARROW_SCALE, ACCESSORY_GLITTER_BOULDER, ACCESSORY_GREEN_SCALE, ACCESSORY_THICK_MUSHROOM }, // Turtwig, Grotle, Torterra
    { ACCESSORY_PINK_SCALE, ACCESSORY_BLUE_FEATHER, ACCESSORY_WHITE_FEATHER, ACCESSORY_BLUE_SCALE, ACCESSORY_THIN_MUSHROOM, ACCESSORY_SNAGGY_PEBBLE, ACCESSORY_WHITE_BEARD, ACCESSORY_BLACK_BEARD, ACCESSORY_BIG_LEAF, ACCESSORY_GLITTER_BOULDER }, // Psyduck, Buneary, Drifloon
    { ACCESSORY_ORANGE_FLUFF, ACCESSORY_BROWN_FLUFF, ACCESSORY_SMALL_LEAF, ACCESSORY_RED_FEATHER, ACCESSORY_YELLOW_FEATHER, ACCESSORY_YELLOW_FLUFF, ACCESSORY_MINI_PEBBLE, ACCESSORY_BIG_SCALE, ACCESSORY_BLACK_MOUSTACHE, ACCESSORY_PURPLE_SCALE }, // Pikachu, Clefairy, Pachirisu, Happiny
    { ACCESSORY_PINK_SCALE, ACCESSORY_SHED_HOWN, ACCESSORY_PINK_FLUFF, ACCESSORY_YELLOW_FEATHER, ACCESSORY_SHED_CLAW, ACCESSORY_BLACK_FLUFF, ACCESSORY_JAGGED_BOULDER, ACCESSORY_BIG_LEAF, ACCESSORY_GREEN_SCALE, ACCESSORY_BLACK_PEBBLE } // Jigglypuff, Torchic, Skitty, Shroomish
};

BOOL ScrCmd_217(ScriptContext *ctx)
{
    u8 i, j;
    u16 rand;
    u16 *result = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);

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
    ITEM_MAGOST_BERRY,
    ITEM_CORNN_BERRY,
    ITEM_RABUTA_BERRY,
    ITEM_NOMEL_BERRY,
    ITEM_SPELON_BERRY,
    ITEM_PAMTRE_BERRY,
    ITEM_WATMEL_BERRY,
    ITEM_DURIN_BERRY,
    ITEM_BELUE_BERRY,
    ACCESSORY_MINI_PEBBLE,
    ACCESSORY_GLITTER_BOULDER,
    ACCESSORY_BLACK_PEBBLE,
    ACCESSORY_BIG_SCALE,
    ACCESSORY_BIG_LEAF,
    ACCESSORY_THICK_MUSHROOM,
    ACCESSORY_STUMP
};

BOOL ScrCmd_2DF(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = (LCRNG_Next() % (NELEMS(Unk_020EBF64)));
    return 0;
}

BOOL ScrCmd_2E0(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    if (v0 < 9) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

BOOL ScrCmd_2E1(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = Unk_020EBF64[v0];
    return 0;
}

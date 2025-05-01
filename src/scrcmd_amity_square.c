#include "scrcmd_amity_square.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/accessories.h"

#include "field_script_context.h"
#include "inlines.h"
#include "math_util.h"
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

// clang-format off
static const u16 sMonFindableAccessories[NUM_FINDABLE_ACCESSORY_POOLS][NUM_ACCESSORIES_FINDABLE_BY_MON] = {
    { // Chimchar, Monferno, Infernape
        /* 15% */ ACCESSORY_WHITE_FLUFF, ACCESSORY_ORANGE_FLUFF, ACCESSORY_WHITE_FEATHER, ACCESSORY_ROUND_PEBBLE,
        /* 10% */ ACCESSORY_SMALL_LEAF, ACCESSORY_BLUE_SCALE,
        /*  8% */ ACCESSORY_WHITE_BEARD,
        /*  5% */ ACCESSORY_THIN_MUSHROOM, ACCESSORY_BIG_SCALE,
        /*  2% */ ACCESSORY_STUMP
    },
    { // Piplup, Prinplup, Empoleon
        /* 15% */ ACCESSORY_PINK_FLUFF, ACCESSORY_RED_FEATHER, ACCESSORY_YELLOW_FEATHER, ACCESSORY_BLACK_BEARD,
        /* 10% */ ACCESSORY_NARROW_SCALE, ACCESSORY_WHITE_FLUFF,
        /*  8% */ ACCESSORY_WHITE_MOUSTACHE,
        /*  5% */ ACCESSORY_SHED_CLAW, ACCESSORY_NARROW_LEAF,
        /*  2% */ ACCESSORY_PURPLE_SCALE,
    },
    { // Turtwig, Grotle, Torterra
        /* 15% */ ACCESSORY_JAGGED_BOULDER, ACCESSORY_SNAGGY_PEBBLE, ACCESSORY_BROWN_FLUFF, ACCESSORY_ROUND_PEBBLE,
        /* 10% */ ACCESSORY_BLACK_MOUSTACHE, ACCESSORY_SHED_HOWN,
        /*  8% */ ACCESSORY_NARROW_SCALE,
        /*  5% */ ACCESSORY_GLITTER_BOULDER, ACCESSORY_GREEN_SCALE,
        /*  2% */ ACCESSORY_THICK_MUSHROOM,
    },
    { // Psyduck, Buneary, Drifloon
        /* 15% */ ACCESSORY_PINK_SCALE, ACCESSORY_BLUE_FEATHER, ACCESSORY_WHITE_FEATHER, ACCESSORY_BLUE_SCALE,
        /* 10% */ ACCESSORY_THIN_MUSHROOM, ACCESSORY_SNAGGY_PEBBLE,
        /*  8% */ ACCESSORY_WHITE_BEARD,
        /*  5% */ ACCESSORY_BLACK_BEARD, ACCESSORY_BIG_LEAF,
        /*  2% */ ACCESSORY_GLITTER_BOULDER,
    },
    { // Pikachu, Clefairy, Pachirisu, Happiny
        /* 15% */ ACCESSORY_ORANGE_FLUFF, ACCESSORY_BROWN_FLUFF, ACCESSORY_SMALL_LEAF, ACCESSORY_RED_FEATHER,
        /* 10% */ ACCESSORY_YELLOW_FEATHER, ACCESSORY_YELLOW_FLUFF,
        /*  8% */ ACCESSORY_MINI_PEBBLE,
        /*  5% */ ACCESSORY_BIG_SCALE, ACCESSORY_BLACK_MOUSTACHE,
        /*  2% */ ACCESSORY_PURPLE_SCALE,
    },
    { // Jigglypuff, Torchic, Skitty, Shroomish
        /* 15% */ ACCESSORY_PINK_SCALE, ACCESSORY_SHED_HOWN, ACCESSORY_PINK_FLUFF, ACCESSORY_YELLOW_FEATHER,
        /* 10% */ ACCESSORY_SHED_CLAW, ACCESSORY_BLACK_FLUFF,
        /*  8% */ ACCESSORY_JAGGED_BOULDER,
        /*  5% */ ACCESSORY_BIG_LEAF, ACCESSORY_GREEN_SCALE,
        /*  2% */ ACCESSORY_BLACK_PEBBLE,
    },
};
// clang-format on

BOOL ScrCmd_CalcAmitySquareFoundAccessory(ScriptContext *ctx)
{
    u8 findableAccessoryPool, findableAccessoryIndex;
    u16 *destFoundAccessoryID = ScriptContext_GetVarPointer(ctx);
    u16 followerSpecies = ScriptContext_GetVar(ctx);

    u16 rand = LCRNG_Next() % 100;

    if (rand < 15) {
        findableAccessoryIndex = 0;
    } else if (rand < 30) {
        findableAccessoryIndex = 1;
    } else if (rand < 45) {
        findableAccessoryIndex = 2;
    } else if (rand < 60) {
        findableAccessoryIndex = 3;
    } else if (rand < 70) {
        findableAccessoryIndex = 4;
    } else if (rand < 80) {
        findableAccessoryIndex = 5;
    } else if (rand < 88) {
        findableAccessoryIndex = 6;
    } else if (rand < 93) {
        findableAccessoryIndex = 7;
    } else if (rand < 98) {
        findableAccessoryIndex = 8;
    } else {
        findableAccessoryIndex = 9;
    }

    switch (followerSpecies) {
    case SPECIES_CHIMCHAR:
    case SPECIES_MONFERNO:
    case SPECIES_INFERNAPE:
        findableAccessoryPool = 0;
        break;
    case SPECIES_PIPLUP:
    case SPECIES_PRINPLUP:
    case SPECIES_EMPOLEON:
        findableAccessoryPool = 1;
        break;
    case SPECIES_TURTWIG:
    case SPECIES_GROTLE:
    case SPECIES_TORTERRA:
        findableAccessoryPool = 2;
        break;
    case SPECIES_PSYDUCK:
    case SPECIES_BUNEARY:
    case SPECIES_DRIFLOON:
        findableAccessoryPool = 3;
        break;
    case SPECIES_PIKACHU:
    case SPECIES_CLEFAIRY:
    case SPECIES_PACHIRISU:
    case SPECIES_HAPPINY:
        findableAccessoryPool = 4;
        break;
    case SPECIES_JIGGLYPUFF:
    case SPECIES_TORCHIC:
    case SPECIES_SKITTY:
    case SPECIES_SHROOMISH:
        findableAccessoryPool = 5;
        break;

    default:
        findableAccessoryPool = 0;
    }

    *destFoundAccessoryID = sMonFindableAccessories[findableAccessoryPool][findableAccessoryIndex];

    return FALSE;
}

static const u16 sBerryAndAccesoryManOptions[] = {
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

BOOL ScrCmd_CalcAmitySquareBerryAndAccessoryManOptionID(ScriptContext *ctx)
{
    u16 *destBerryAndAccessoryManOptionID = ScriptContext_GetVarPointer(ctx);

    *destBerryAndAccessoryManOptionID = LCRNG_Next() % (NELEMS(sBerryAndAccesoryManOptions));
    return FALSE;
}

BOOL ScrCmd_CheckAmitySquareManGiftIsAccesory(ScriptContext *ctx)
{
    u16 giftID = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (giftID < 9) {
        *destVar = FALSE;
    } else {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_GetAmitySquareBerryOrAccessoryIDFromMan(ScriptContext *ctx)
{
    u16 berryAndAccessoryManOptionID = ScriptContext_GetVar(ctx);
    u16 *destBerryOrAccessoryID = ScriptContext_GetVarPointer(ctx);

    *destBerryOrAccessoryID = sBerryAndAccesoryManOptions[berryAndAccessoryManOptionID];
    return FALSE;
}

#include "scrcmd_fossil.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "field/field_system.h"

#include "bag.h"
#include "field_script_context.h"
#include "inlines.h"

static const struct {
    u16 item;
    u16 species;
} sFossilItemToSpeciesMapping[7] = {
    { .item = ITEM_OLD_AMBER, .species = SPECIES_AERODACTYL },
    { .item = ITEM_HELIX_FOSSIL, .species = SPECIES_OMANYTE },
    { .item = ITEM_DOME_FOSSIL, .species = SPECIES_KABUTO },
    { .item = ITEM_ROOT_FOSSIL, .species = SPECIES_LILEEP },
    { .item = ITEM_CLAW_FOSSIL, .species = SPECIES_ANORITH },
    { .item = ITEM_ARMOR_FOSSIL, .species = SPECIES_SHIELDON },
    { .item = ITEM_SKULL_FOSSIL, .species = SPECIES_CRANIDOS },
};
BOOL ScrCmd_GetFossilCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 i;
    u16 totalCount;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    for (i = 0, totalCount = 0; i < 7; i++) {
        totalCount += Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), sFossilItemToSpeciesMapping[i].item, HEAP_ID_FIELD1);
    }

    *destVar = totalCount;

    return FALSE;
}

BOOL ScrCmd_GetSpeciesFromFossil(ScriptContext *ctx)
{
    u16 i;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 inputItemID = ScriptContext_GetVar(ctx);

    *destVar = 0;

    for (i = 0; i < 7; i++) {
        if (sFossilItemToSpeciesMapping[i].item == inputItemID) {
            *destVar = sFossilItemToSpeciesMapping[i].species;
            break;
        }
    }

    return FALSE;
}

BOOL ScrCmd_FindFossilAtThreshold(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 i;
    u16 currentCount;
    u16 *outItemID = ScriptContext_GetVarPointer(ctx);
    u16 *outIndex = ScriptContext_GetVarPointer(ctx);
    u16 threshold = ScriptContext_GetVar(ctx);

    *outItemID = 0;
    *outIndex = 0;

    for (i = 0, currentCount = 0; i < 7; i++) {
        currentCount += Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), sFossilItemToSpeciesMapping[i].item, HEAP_ID_FIELD1);

        if (currentCount >= threshold) {
            *outItemID = sFossilItemToSpeciesMapping[i].item;
            *outIndex = i;
            break;
        }
    }

    return FALSE;
}

BOOL ScrCmd_Dummy_1F2(ScriptContext *ctx)
{
    return FALSE;
}

BOOL ScrCmd_Dummy_1F3(ScriptContext *ctx)
{
    return FALSE;
}

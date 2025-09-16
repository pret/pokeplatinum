#include "scrcmd_fossil.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "field/field_system.h"

#include "bag.h"
#include "field_script_context.h"
#include "inlines.h"

const u16 sFossilItemToSpeciesMapping[7][2] = {
    { ITEM_OLD_AMBER, SPECIES_AERODACTYL },
    { ITEM_HELIX_FOSSIL, SPECIES_OMANYTE },
    { ITEM_DOME_FOSSIL, SPECIES_KABUTO },
    { ITEM_ROOT_FOSSIL, SPECIES_LILEEP },
    { ITEM_CLAW_FOSSIL, SPECIES_ANORITH },
    { ITEM_ARMOR_FOSSIL, SPECIES_SHIELDON },
    { ITEM_SKULL_FOSSIL, SPECIES_CRANIDOS }
};

BOOL ScrCmd_GetFossilCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 i;
    u16 totalCount;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    for (i = 0, totalCount = 0; i < 7; i++) {
        totalCount += Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), sFossilItemToSpeciesMapping[i][0], HEAP_ID_FIELD1);
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
        if (sFossilItemToSpeciesMapping[i][0] == inputItemID) {
            *destVar = sFossilItemToSpeciesMapping[i][1];
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
        currentCount += Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), sFossilItemToSpeciesMapping[i][0], HEAP_ID_FIELD1);

        if (currentCount >= threshold) {
            *outItemID = sFossilItemToSpeciesMapping[i][0];
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

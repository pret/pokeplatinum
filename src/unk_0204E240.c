#include "unk_0204E240.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "field/field_system.h"

#include "bag.h"
#include "field_script_context.h"
#include "inlines.h"

const u16 sFossilItemToTypeMapping[7][2] = {
    { ITEM_OLD_AMBER, FOSSIL_TYPE_OLD_AMBER }, // dataID 0x67 → 0x8E
    { ITEM_HELIX_FOSSIL, FOSSIL_TYPE_HELIX }, // dataID 0x65 → 0x8A
    { ITEM_DOME_FOSSIL, FOSSIL_TYPE_DOME }, // dataID 0x66 → 0x8C
    { ITEM_ROOT_FOSSIL, FOSSIL_TYPE_ROOT }, // dataID 0x63 → 0x159
    { ITEM_CLAW_FOSSIL, FOSSIL_TYPE_CLAW }, // dataID 0x64 → 0x15B
    { ITEM_ARMOR_FOSSIL, FOSSIL_TYPE_ARMOR }, // dataID 0x68 → 0x19A
    { ITEM_SKULL_FOSSIL, FOSSIL_TYPE_SKULL } // dataID 0x69 → 0x198
};

BOOL ScrCmd_GetFossilCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 i;
    u16 dummy, totalCount; // dummy variable to preserve hash
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    for (i = 0, totalCount = 0; i < 7; i++) {
        totalCount += Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), sFossilItemToTypeMapping[i][0], HEAP_ID_FIELD1);
    }

    *destVar = totalCount;

    return 0;
}

BOOL ScrCmd_GetFossilTypeID(ScriptContext *ctx)
{
    u16 i;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 inputItemID = ScriptContext_GetVar(ctx);

    *destVar = 0;

    for (i = 0; i < 7; i++) {
        if (sFossilItemToTypeMapping[i][0] == inputItemID) {
            *destVar = sFossilItemToTypeMapping[i][1];
            break;
        }
    }

    return 0;
}

BOOL ScrCmd_FindFossilAtThreshold(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u8 i;
    u16 dummy, currentCount;
    u16 *outItemID = ScriptContext_GetVarPointer(ctx);
    u16 *outIndex = ScriptContext_GetVarPointer(ctx);
    u16 threshold = ScriptContext_GetVar(ctx);

    *outItemID = 0;
    *outIndex = 0;

    for (i = 0, currentCount = 0; i < 7; i++) {
        currentCount += Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), sFossilItemToTypeMapping[i][0], HEAP_ID_FIELD1);

        if (currentCount >= threshold) {
            *outItemID = sFossilItemToTypeMapping[i][0];
            *outIndex = i;
            break;
        }
    }

    return 0;
}

BOOL ScrCmd_Unused_1F2(ScriptContext *ctx)
{
    return 0;
}

BOOL ScrCmd_Unused_1F3(ScriptContext *ctx)
{
    return 0;
}

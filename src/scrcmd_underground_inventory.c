#include "scrcmd_underground_inventory.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/underground.h"

#include "field/field_system.h"

#include "field_script_context.h"
#include "inlines.h"
#include "savedata.h"
#include "unk_0202854C.h"

BOOL ScrCmd_SendGoodToPC(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 goodID = ScriptContext_GetVar(ctx);
    u16 unused = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Underground *underground = SaveData_GetUnderground(saveData);
    *destVar = Underground_TryAddGoodPC(underground, goodID);

    return FALSE;
}

BOOL ScrCmd_Dummy084(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_CheckHasRoomForGoodsInPC(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 unused = ScriptContext_GetVar(ctx);
    u16 unused2 = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Underground *underground = SaveData_GetUnderground(saveData);
    *destVar = Underground_IsRoomForGoodsInPC(underground, unused);

    return FALSE;
}

BOOL ScrCmd_Dummy086(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_GiveTrap(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 trapID = ScriptContext_GetVar(ctx);
    u16 unused = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Underground *underground = SaveData_GetUnderground(saveData);
    *destVar = Underground_TryAddTrap(underground, trapID);

    return FALSE;
}

BOOL ScrCmd_Dummy088(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy089(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy08A(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy08B(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    Underground *dummy4 = SaveData_GetUnderground(saveData);

    return FALSE;
}

BOOL ScrCmd_Dummy08C(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy08D(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy08E(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_GiveSphere(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 type = ScriptContext_GetVar(ctx);
    u16 size = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Underground *underground = SaveData_GetUnderground(saveData);
    *destVar = Underground_TryAddSphere(underground, type, size);
    return FALSE;
}

BOOL ScrCmd_Dummy090(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy091(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy092(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 dummy = ScriptContext_GetVar(ctx);
    u16 dummy2 = ScriptContext_GetVar(ctx);
    u16 *dummy3 = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

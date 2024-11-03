#include "unk_0204E3CC.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "consts/badges.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/struct_0205EC34.h"

#include "field_overworld_state.h"
#include "field_script_context.h"
#include "inlines.h"
#include "player_avatar.h"
#include "save_player.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "vars_flags.h"

BOOL ScrCmd_157(ScriptContext *param0)
{
    const PokedexData *pokedex = SaveData_Pokedex(param0->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = Pokedex_IsObtained(pokedex);
    return FALSE;
}

BOOL ScrCmd_158(ScriptContext *param0)
{
    PokedexData *v0 = SaveData_Pokedex(param0->fieldSystem->saveData);

    sub_02027540(v0);
    return 0;
}

BOOL ScrCmd_159(ScriptContext *param0)
{
    FieldOverworldState *v0;
    PlayerData *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    v0 = SaveData_GetFieldOverworldState(param0->fieldSystem->saveData);
    v1 = FieldOverworldState_GetPlayerData(v0);
    *v2 = PlayerData_HasRunningShoes(v1);

    return 0;
}

BOOL ScrCmd_15A(ScriptContext *param0)
{
    FieldOverworldState *v0;
    PlayerData *v1;

    v0 = SaveData_GetFieldOverworldState(param0->fieldSystem->saveData);
    v1 = FieldOverworldState_GetPlayerData(v0);

    PlayerData_SetRunningShoes(v1, 1);
    return 0;
}

BOOL ScrCmd_CheckBadge(ScriptContext *ctx)
{
    u16 badgeNum = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    GF_ASSERT(badgeNum < MAX_BADGES);
    *destVar = TrainerInfo_HasBadge(SaveData_GetTrainerInfo(ctx->fieldSystem->saveData), badgeNum);

    return FALSE;
}

BOOL ScrCmd_15C(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    GF_ASSERT(v0 < 8);
    TrainerInfo_SetBadge(SaveData_GetTrainerInfo(param0->fieldSystem->saveData), v0);

    return 0;
}

BOOL ScrCmd_CheckBagAcquired(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemFlag_CheckBagAcquired(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

const u8 Unk_020EC064[8] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7
};

BOOL ScrCmd_15D(ScriptContext *param0)
{
    u16 v0, v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    for (v0 = 0, v1 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->fieldSystem->saveData), Unk_020EC064[v0]) == 1) {
            v1++;
        }
    }

    *v2 = v1;
    return 0;
}

BOOL ScrCmd_GiveBag(ScriptContext *ctx)
{
    SystemFlag_SetBagAcquired(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_CheckHasPartner(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_SetHasPartner(ScriptContext *ctx)
{
    SystemFlag_SetHasPartner(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_ClearHasPartner(ScriptContext *ctx)
{
    SystemFlag_ClearHasPartner(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_CheckStepFlag(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemFlag_CheckStep(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_SetStepFlag(ScriptContext *ctx)
{
    SystemFlag_SetStep(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_ClearStepFlag(ScriptContext *ctx)
{
    SystemFlag_ClearStep(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_CheckGameCompleted(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_SetGameCompleted(ScriptContext *ctx)
{
    SystemFlag_SetGameCompleted(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_Strength(ScriptContext *ctx)
{
    u16 *destVar;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);

    switch (ScriptContext_ReadByte(ctx)) {
    case 1:
        SystemFlag_HandleStrengthActive(varsFlags, HANDLE_FLAG_SET);
        break;

    case 0:
        SystemFlag_HandleStrengthActive(varsFlags, HANDLE_FLAG_CLEAR);
        break;

    case 2:
        destVar = ScriptContext_GetVarPointer(ctx);
        *destVar = SystemFlag_HandleStrengthActive(varsFlags, HANDLE_FLAG_CHECK);
        break;

    default:
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

BOOL ScrCmd_Flash(ScriptContext *ctx)
{
    u16 *destVar;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);

    switch (ScriptContext_ReadByte(ctx)) {
    case 1:
        SystemFlag_SetFlashActive(varsFlags);
        break;

    case 0:
        SystemFlag_ClearFlashActive(varsFlags);
        break;

    case 2:
        destVar = ScriptContext_GetVarPointer(ctx);
        *destVar = SystemFlag_CheckFlashActive(varsFlags);
        break;

    default:
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

BOOL ScrCmd_Defog(ScriptContext *ctx)
{
    u16 *destVar;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);

    switch (ScriptContext_ReadByte(ctx)) {
    case 1:
        SystemFlag_SetDefogActive(varsFlags);
        break;

    case 0:
        SystemFlag_ClearDefogActive(varsFlags);
        break;

    case 2:
        destVar = ScriptContext_GetVarPointer(ctx);
        *destVar = SystemFlag_CheckDefogActive(varsFlags);
        break;

    default:
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

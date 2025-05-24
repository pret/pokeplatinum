#include "scrcmd_system_flags.h"

#include "generated/badges.h"

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/pokedex.h"
#include "struct_defs/struct_0205EC34.h"

#include "field_overworld_state.h"
#include "field_script_context.h"
#include "inlines.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "save_player.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "vars_flags.h"

BOOL ScrCmd_CheckPokedexAcquired(ScriptContext *ctx)
{
    const Pokedex *pokedex = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = Pokedex_IsObtained(pokedex);
    return FALSE;
}

BOOL ScrCmd_GivePokedex(ScriptContext *ctx)
{
    Pokedex *pokedex = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    Pokedex_ObtainPokedex(pokedex);
    return FALSE;
}

BOOL ScrCmd_CheckRunningShoesAcquired(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    FieldOverworldState *overworldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);
    PlayerData *playerData = FieldOverworldState_GetPlayerData(overworldState);
    *destVar = PlayerData_HasRunningShoes(playerData);
    return FALSE;
}

BOOL ScrCmd_GiveRunningShoes(ScriptContext *ctx)
{
    FieldOverworldState *overworldState = SaveData_GetFieldOverworldState(ctx->fieldSystem->saveData);
    PlayerData *playerData = FieldOverworldState_GetPlayerData(overworldState);
    PlayerData_SetRunningShoes(playerData, TRUE);
    return FALSE;
}

BOOL ScrCmd_CheckBadgeAcquired(ScriptContext *ctx)
{
    u16 badgeNum = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    GF_ASSERT(badgeNum < MAX_BADGES);
    *destVar = TrainerInfo_HasBadge(SaveData_GetTrainerInfo(ctx->fieldSystem->saveData), badgeNum);

    return FALSE;
}

BOOL ScrCmd_GiveBadge(ScriptContext *ctx)
{
    u16 badgeNum = ScriptContext_GetVar(ctx);

    GF_ASSERT(badgeNum < MAX_BADGES);
    TrainerInfo_SetBadge(SaveData_GetTrainerInfo(ctx->fieldSystem->saveData), badgeNum);

    return FALSE;
}

BOOL ScrCmd_CheckBagAcquired(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = SystemFlag_CheckBagAcquired(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

// Game Freak moment.
static const u8 sBadgeIDs[MAX_BADGES] = {
    BADGE_ID_COAL,
    BADGE_ID_FOREST,
    BADGE_ID_COBBLE,
    BADGE_ID_FEN,
    BADGE_ID_RELIC,
    BADGE_ID_MINE,
    BADGE_ID_ICICLE,
    BADGE_ID_BEACON,
};

BOOL ScrCmd_CountBadgesAcquired(ScriptContext *ctx)
{
    u16 i, count;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    for (i = 0, count = 0; i < MAX_BADGES; i++) {
        if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(ctx->fieldSystem->saveData), sBadgeIDs[i]) == TRUE) {
            count++;
        }
    }

    *destVar = count;
    return FALSE;
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

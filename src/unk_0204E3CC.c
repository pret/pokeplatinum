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
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0206A8DC.h"
#include "vars_flags.h"

BOOL ScrCmd_157(ScriptContext *param0)
{
    const PokedexData *pokedex = SaveData_Pokedex(param0->fieldSystem->saveData);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = Pokedex_Obtained(pokedex);
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

BOOL ScrCmd_15E(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A938(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
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

BOOL ScrCmd_15F(ScriptContext *param0)
{
    sub_0206A92C(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_160(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A984(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_161(ScriptContext *param0)
{
    sub_0206A964(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_162(ScriptContext *param0)
{
    sub_0206A974(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_163(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A9B4(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_164(ScriptContext *param0)
{
    sub_0206A994(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_165(ScriptContext *param0)
{
    sub_0206A9A4(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_166(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A954(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_167(ScriptContext *param0)
{
    sub_0206A944(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_1CF(ScriptContext *param0)
{
    u8 v0;
    u16 *v1;
    VarsFlags *v2 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    v0 = ScriptContext_ReadByte(param0);

    switch (v0) {
    case 1:
        inline_0204E650(v2);
        break;
    case 0:
        inline_0204E650_1(v2);
        break;
    case 2:
        v1 = ScriptContext_GetVarPointer(param0);
        *v1 = inline_0204E650_2(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

BOOL ScrCmd_1D0(ScriptContext *param0)
{
    u8 v0;
    u16 *v1;
    VarsFlags *v2 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    v0 = ScriptContext_ReadByte(param0);

    switch (v0) {
    case 1:
        sub_0206AEBC(v2);
        break;
    case 0:
        sub_0206AECC(v2);
        break;
    case 2:
        v1 = ScriptContext_GetVarPointer(param0);
        *v1 = Overworld_IsFlashActive(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

BOOL ScrCmd_1D1(ScriptContext *param0)
{
    u8 v0;
    u16 *v1;
    VarsFlags *v2 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    v0 = ScriptContext_ReadByte(param0);

    switch (v0) {
    case 1:
        sub_0206AEEC(v2);
        break;
    case 0:
        sub_0206AEFC(v2);
        break;
    case 2:
        v1 = ScriptContext_GetVarPointer(param0);
        *v1 = Overworld_IsDefogActive(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020507E4_decl.h"

#include "field_script_context.h"
#include "struct_defs/struct_0205EC34.h"

#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0203A6DC.h"
#include "unk_0204E3CC.h"
#include "unk_020507CC.h"
#include "player_avatar.h"
#include "unk_0206A8DC.h"

#include <nitro/code16.h>

BOOL ScrCmd_157 (ScriptContext * param0)
{
    const PokedexData * v0 = SaveData_Pokedex(param0->fieldSys->saveData);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02027520(v0);
    return 0;
}

BOOL ScrCmd_158 (ScriptContext * param0)
{
    PokedexData * v0 = SaveData_Pokedex(param0->fieldSys->saveData);

    sub_02027540(v0);
    return 0;
}

BOOL ScrCmd_159 (ScriptContext * param0)
{
    UnkStruct_0203A790 * v0;
    PlayerData * v1;
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    v0 = sub_0203A790(param0->fieldSys->saveData);
    v1 = sub_0203A780(v0);
    *v2 = PlayerData_HasRunningShoes(v1);

    return 0;
}

BOOL ScrCmd_15A (ScriptContext * param0)
{
    UnkStruct_0203A790 * v0;
    PlayerData * v1;

    v0 = sub_0203A790(param0->fieldSys->saveData);
    v1 = sub_0203A780(v0);

    PlayerData_SetRunningShoes(v1, 1);
    return 0;
}

BOOL ScrCmd_15B (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    GF_ASSERT(v0 < 8);
    * v1 = TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->fieldSys->saveData), v0);

    return 0;
}

BOOL ScrCmd_15C (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    GF_ASSERT(v0 < 8);
    TrainerInfo_SetBadge(SaveData_GetTrainerInfo(param0->fieldSys->saveData), v0);

    return 0;
}

BOOL ScrCmd_15E (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A938(SaveData_Events(param0->fieldSys->saveData));
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

BOOL ScrCmd_15D (ScriptContext * param0)
{
    u16 v0, v1;
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    for (v0 = 0, v1 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->fieldSys->saveData), Unk_020EC064[v0]) == 1) {
            v1++;
        }
    }

    *v2 = v1;
    return 0;
}

BOOL ScrCmd_15F (ScriptContext * param0)
{
    sub_0206A92C(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_160 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A984(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_161 (ScriptContext * param0)
{
    sub_0206A964(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_162 (ScriptContext * param0)
{
    sub_0206A974(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_163 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A9B4(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_164 (ScriptContext * param0)
{
    sub_0206A994(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_165 (ScriptContext * param0)
{
    sub_0206A9A4(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_166 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_0206A954(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_167 (ScriptContext * param0)
{
    sub_0206A944(SaveData_Events(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_1CF (ScriptContext * param0)
{
    u8 v0;
    u16 * v1;
    UnkStruct_020507E4 * v2 = SaveData_Events(param0->fieldSys->saveData);

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

BOOL ScrCmd_1D0 (ScriptContext * param0)
{
    u8 v0;
    u16 * v1;
    UnkStruct_020507E4 * v2 = SaveData_Events(param0->fieldSys->saveData);

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
        *v1 = sub_0206AEDC(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

BOOL ScrCmd_1D1 (ScriptContext * param0)
{
    u8 v0;
    u16 * v1;
    UnkStruct_020507E4 * v2 = SaveData_Events(param0->fieldSys->saveData);

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
        *v1 = sub_0206AF0C(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

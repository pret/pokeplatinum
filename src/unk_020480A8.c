#include "unk_020480A8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020797DC_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "field_script_context.h"
#include "inlines.h"
#include "party.h"
#include "pokemon.h"
#include "system_vars.h"
#include "unk_020797C8.h"
#include "vars_flags.h"

static u8 sub_02048268(u16 param0, u16 param1);

BOOL ScrCmd_GetJubilifeLotteryTrainerID(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *resultVar = ScriptContext_GetVarPointer(ctx);
    u32 trainerID = SystemVars_GetJubilifeLotteryTrainerID(varsFlags);
    *resultVar = LO_HALF(trainerID);
    return FALSE;
}

BOOL ScrCmd_24F(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    BoxPokemon *v2;
    PCBoxes *v3 = SaveData_PCBoxes(fieldSystem->saveData);
    u16 *v4 = ScriptContext_GetVarPointer(param0);
    u16 *v5 = ScriptContext_GetVarPointer(param0);
    u16 *v6 = ScriptContext_GetVarPointer(param0);
    u16 v7 = ScriptContext_GetVar(param0);
    u16 v8, v9, v10;
    u16 v11, v12;
    u16 v13, v14;
    u32 v15;
    u8 v16;
    u32 v17, v18, v19;

    v8 = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    for (v11 = 0, v12 = 0, v9 = 0; v9 < v8; v9++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v9);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            v15 = (Pokemon_GetValue(v1, MON_DATA_OT_ID, NULL) & 0xffff);

            v16 = sub_02048268(v7, v15);

            if ((v16 > 0) && (v11 < v16)) {
                v11 = v16;
                v12 = v9;
            }
        }
    }

    for (v13 = 0, v14 = 0, v18 = 0; v18 < 18; v18++) {
        for (v17 = 0; v17 < (5 * 6); v17++) {
            v2 = sub_02079C9C(v3, v18, v17);
            v19 = BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL);

            if (v19) {
                if (BoxPokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0) {
                    v15 = (BoxPokemon_GetValue(v2, MON_DATA_OT_ID, NULL) & 0xffff);

                    v16 = sub_02048268(v7, v15);

                    if ((v16 > 0) && (v13 < v16)) {
                        v13 = v16;
                        v14 = v18 * (5 * 6) + v17;
                    }
                }
            }
        }
    }

    if ((v11 == 0) && (v13 == 0)) {
        *v4 = 0;
        *v5 = 0;
        *v6 = 0;
    } else {
        if (v11 >= v13) {
            *v4 = v12;
            *v5 = v11;
            *v6 = 0;
        } else {
            *v4 = v14;
            *v5 = v13;
            *v6 = 1;
        }
    }

    return 0;
}

BOOL ScrCmd_RandomizeJubilifeLottery(ScriptContext *ctx)
{
    SystemVars_RandomizeJubilifeLotteryTrainerID(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

static u16 Unk_021C07F0 = 0, Unk_021C07F2 = 0;

static u8 sub_02048268(u16 param0, u16 param1)
{
    u8 v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        Unk_021C07F0 = param0 % 10;
        Unk_021C07F2 = param1 % 10;

        if ((param0 % 10) != (param1 % 10)) {
            break;
        }

        param0 /= 10;
        param1 /= 10;
        v1++;
    }

    return v1;
}

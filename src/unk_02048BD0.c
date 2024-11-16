#include "unk_02048BD0.h"

#include <nitro.h>
#include <string.h>

#include "field_script_context.h"
#include "inlines.h"
#include "math.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0203D1B8.h"
#include "unk_0206CCB0.h"

BOOL ScrCmd_21D(ScriptContext *param0)
{
    StringTemplate **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    RecordMixedRNG *v1 = SaveData_GetRecordMixedRNG(param0->fieldSystem->saveData);
    SaveData *v2 = param0->fieldSystem->saveData;

    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0: {
        u16 v3;
        u16 *v4;

        v3 = ScriptContext_GetVar(param0);
        v4 = ScriptContext_GetVarPointer(param0);
        *v4 = RecordMixedRNG_IsEntryValid(v1, v3);

        return 0;
    } break;
    case 1: {
        u16 v5;
        u16 *v6;

        v5 = ScriptContext_GetVar(param0);
        v6 = ScriptContext_GetVarPointer(param0);
        *v6 = RecordMixedRNG_IsEntryEqualToOverride(v1, v5);

        return 0;
    } break;
    case 2: {
        u16 v7, v8;

        v7 = ScriptContext_GetVar(param0);
        v8 = ScriptContext_GetVar(param0);

        StringTemplate_SetUnionGroupName(*v0, v2, v7, v8, 0);
    } break;
    case 3: {
        u16 v9, v10;

        v9 = ScriptContext_GetVar(param0);
        v10 = ScriptContext_GetVar(param0);

        StringTemplate_SetUnionGroupName(*v0, v2, v9, v10, 1);
    } break;
    case 4: {
        const u16 *v11;

        v11 = RecordMixedRNG_GetEntryName(v1, 0, 0);
        sub_0203DFE8(param0->task, 5, 0, 7, 0, v11, ScriptContext_GetVarPointer(param0));
    }
        return 1;
    case 5: {
        u16 v12 = ScriptContext_GetVar(param0);
        BOOL v13 = RecordMixedRNG_IsEntryValid(v1, 1);

        RecordMixedRNG_CopyEntry(v1, v12, 1);

        if (v13) {
            sub_0206D430(param0->fieldSystem);
        }
    }
        return 0;
    case 6: {
        Strbuf *v14 = Strbuf_Init(64, 32);
        TrainerInfo *v15 = SaveData_GetTrainerInfo(param0->fieldSystem->saveData);

        TrainerInfo_NameStrbuf(v15, v14);
        RecordMixedRNG_GetEntryNameAsStrbuf(v1, 0, 1, v14);
        RecordMixedRNG_SetEntryGender(v1, 0, TrainerInfo_Gender(v15));
        RecordMixedRNG_SetEntryCountryCode(v1, 0, GAME_LANGUAGE);
        RecordMixedRNG_SetEntrySeed(v1, 0, MTRNG_Next());
        Strbuf_Free(v14);
        RecordMixedRNG_CopyEntry(v1, 0, 1);
        sub_0206D424(param0->fieldSystem);
    } break;
    }

    return 0;
}

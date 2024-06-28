#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "savedata.h"

#include "string_template.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202B37C.h"
#include "unk_0203D1B8.h"
#include "field_script_context.h"
#include "script_manager.h"
#include "unk_02048BD0.h"
#include "unk_0206CCB0.h"

BOOL ScrCmd_21D (ScriptContext * param0)
{
    StringTemplate ** v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    UnkStruct_0202B4A0 * v1 = sub_0202B4A0(param0->fieldSystem->saveData);
    SaveData * v2 = param0->fieldSystem->saveData;

    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
    {
        u16 v3;
        u16 * v4;

        v3 = ScriptContext_GetVar(param0);
        v4 = ScriptContext_GetVarPointer(param0);
        *v4 = sub_0202B4AC(v1, v3);

        return 0;
    }
    break;
    case 1:
    {
        u16 v5;
        u16 * v6;

        v5 = ScriptContext_GetVar(param0);
        v6 = ScriptContext_GetVarPointer(param0);
        *v6 = sub_0202B4C4(v1, v5);

        return 0;
    }
    break;
    case 2:
    {
        u16 v7, v8;

        v7 = ScriptContext_GetVar(param0);
        v8 = ScriptContext_GetVar(param0);

        StringTemplate_SetUnionGroupName(*v0, v2, v7, v8, 0);
    }
    break;
    case 3:
    {
        u16 v9, v10;

        v9 = ScriptContext_GetVar(param0);
        v10 = ScriptContext_GetVar(param0);

        StringTemplate_SetUnionGroupName(*v0, v2, v9, v10, 1);
    }
    break;
    case 4:
    {
        const u16 * v11;

        v11 = sub_0202B42C(v1, 0, 0);
        sub_0203DFE8(param0->taskManager, 5, 0, 7, 0, v11, ScriptContext_GetVarPointer(param0));
    }
        return 1;
    case 5:
    {
        u16 v12 = ScriptContext_GetVar(param0);
        BOOL v13 = sub_0202B4AC(v1, 1);

        sub_0202B384(v1, v12, 1);

        if (v13) {
            sub_0206D430(param0->fieldSystem);
        }
    }
        return 0;
    case 6:
    {
        Strbuf* v14 = Strbuf_Init(64, 32);
        TrainerInfo * v15 = SaveData_GetTrainerInfo(param0->fieldSystem->saveData);

        TrainerInfo_NameStrbuf(v15, v14);
        sub_0202B444(v1, 0, 1, v14);
        sub_0202B470(v1, 0, TrainerInfo_Gender(v15));
        sub_0202B494(v1, 0, GAME_LANGUAGE);
        sub_0202B40C(v1, 0, MTRNG_Next());
        Strbuf_Free(v14);
        sub_0202B384(v1, 0, 1);
        sub_0206D424(param0->fieldSystem);
    }
    break;
    }

    return 0;
}

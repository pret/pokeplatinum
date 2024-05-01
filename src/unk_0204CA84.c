#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "trainer_info.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "savedata.h"

#include "field/field_system.h"

#include "savedata.h"
#include "unk_02025E08.h"
#include "unk_020261E4.h"
#include "unk_0203CC84.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_0204CA84.h"
#include "party.h"
#include "overlay005/ov5_021E622C.h"

BOOL ScrCmd_16D (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    StringTemplate ** v2 = sub_0203F098(v0, 15);

    ov5_021E72BC(sub_02026310(v1), *v2);

    return 0;
}

BOOL ScrCmd_16E (ScriptContext * param0)
{
    u16 * v0;
    FieldSystem * v1 = param0->fieldSys;
    SaveData * v2 = v1->saveData;
    UnkStruct_02026310 * v3;

    v0 = ScriptContext_GetVarPointer(param0);
    v3 = (UnkStruct_02026310 *)(SaveData_SaveTable(v2, 8));
    *v0 = ov5_021E73C8(v3);

    return 0;
}

BOOL ScrCmd_1A8 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    UnkStruct_02026310 * v2;

    v2 = (UnkStruct_02026310 *)(SaveData_SaveTable(v1, 8));
    ov5_021E6B40(v2);

    return 0;
}

BOOL ScrCmd_1A9 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    UnkStruct_02026310 * v2 = (UnkStruct_02026310 *)(SaveData_SaveTable(v1, 8));
    Party * v3 = Party_GetFromSavedata(v0->saveData);
    TrainerInfo * v4 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSys));

    ov5_021E6EA8(v2, v3, v4);
    return 0;
}

BOOL ScrCmd_1A4 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    UnkStruct_02026310 * v1;
    Party * v2;
    StringTemplate ** v3 = sub_0203F098(v0, 15);
    SaveData * v4 = v0->saveData;
    u16 * v5 = ScriptContext_GetVarPointer(param0);
    u8 v6 = ScriptContext_GetVar(param0);

    v1 = (UnkStruct_02026310 *)(SaveData_SaveTable(v4, 8));
    v2 = Party_GetFromSavedata(v0->saveData);
    *v5 = ov5_021E64F8(v2, *v3, v1, v6);

    return 0;
}

BOOL ScrCmd_1AA (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    UnkStruct_02026310 * v1;
    StringTemplate ** v2 = sub_0203F098(v0, 15);
    SaveData * v3 = v0->saveData;
    u16 * v4 = ScriptContext_GetVarPointer(param0);
    u8 v5 = ScriptContext_GetVar(param0);

    v1 = (UnkStruct_02026310 *)(SaveData_SaveTable(v3, 8));
    *v4 = ov5_021E6630(v1, v5, *v2);

    return 0;
}

BOOL ScrCmd_1AE (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    UnkStruct_02026310 * v2;
    StringTemplate ** v3 = sub_0203F098(param0->fieldSys, 15);
    u16 * v4 = ScriptContext_GetVarPointer(param0);
    u16 v5 = ScriptContext_GetVar(param0);

    v2 = (UnkStruct_02026310 *)(SaveData_SaveTable(v1, 8));
    *v4 = ov5_021E6640(v2, v5, *v3);

    return 0;
}

BOOL ScrCmd_1AF (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    Party * v1;
    StringTemplate ** v2 = sub_0203F098(param0->fieldSys, 15);
    u16 v3 = ScriptContext_ReadHalfWord(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 * v5 = ScriptContext_GetVarPointer(param0);

    v1 = Party_GetFromSavedata(v0->saveData);
    *v5 = ov5_021E73A0(v1, v4, *v2);

    return 0;
}

BOOL ScrCmd_1B0 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    UnkStruct_02026310 * v2;
    Party * v3;
    u8 v4 = ScriptContext_GetVar(param0);

    v3 = Party_GetFromSavedata(v0->saveData);
    v2 = (UnkStruct_02026310 *)(SaveData_SaveTable(v1, 8));

    ov5_021E6358(v3, v4, v2, v1);

    return 0;
}

BOOL ScrCmd_1BC (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    StringTemplate ** v2 = sub_0203F098(param0->fieldSys, 15);
    u8 v3 = ScriptContext_GetVar(param0);
    u8 v4 = ScriptContext_GetVar(param0);
    u8 v5 = ScriptContext_GetVar(param0);
    u8 v6 = ScriptContext_GetVar(param0);

    ov5_021E7308(sub_02026310(v1), v3, v4, v5, v6, *v2);
    return 0;
}

BOOL ScrCmd_1BE (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    UnkStruct_02026310 * v2;
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    v2 = (UnkStruct_02026310 *)(SaveData_SaveTable(v1, 8));
    *v3 = ov5_021E7420(v2);

    return 0;
}

BOOL ScrCmd_1BF (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    SaveData * v1 = v0->saveData;
    UnkStruct_02026310 * v2;
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    v2 = (UnkStruct_02026310 *)(SaveData_SaveTable(v1, 8));
    *v3 = sub_02026234(v2);

    return 0;
}

BOOL ScrCmd_1A5 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    return 0;
}

BOOL ScrCmd_1A6 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    return 0;
}

BOOL ScrCmd_1A7 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    return 0;
}

BOOL ScrCmd_1AD (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    return 0;
}

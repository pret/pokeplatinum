#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02093800.h"

#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay006/ov6_02247A0C.h"

#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "map_header.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_020298BC.h"
#include "unk_0202CC64.h"
#include "unk_0206A8DC.h"
#include "unk_020933F8.h"
#include "vars_flags.h"

static BOOL sub_02046CE0(ScriptContext *param0);
static BOOL sub_02046FDC(ScriptContext *param0);
static BOOL sub_02047404(ScriptContext *param0);
BOOL ScrCmd_0F8(ScriptContext *param0);
BOOL ScrCmd_0F9(ScriptContext *param0);
BOOL ScrCmd_0FA(ScriptContext *param0);
BOOL ScrCmd_0FB(ScriptContext *param0);
BOOL ScrCmd_0FC(ScriptContext *param0);
BOOL ScrCmd_0FD(ScriptContext *param0);
BOOL ScrCmd_0FE(ScriptContext *param0);
BOOL ScrCmd_100(ScriptContext *param0);
BOOL ScrCmd_101(ScriptContext *param0);
BOOL ScrCmd_102(ScriptContext *param0);
BOOL ScrCmd_103(ScriptContext *param0);
BOOL ScrCmd_104(ScriptContext *param0);
BOOL ScrCmd_105(ScriptContext *param0);
BOOL ScrCmd_106(ScriptContext *param0);
BOOL ScrCmd_107(ScriptContext *param0);
BOOL ScrCmd_108(ScriptContext *param0);
BOOL ScrCmd_109(ScriptContext *param0);
BOOL ScrCmd_10A(ScriptContext *param0);
BOOL ScrCmd_10B(ScriptContext *param0);
BOOL ScrCmd_111(ScriptContext *param0);
BOOL ScrCmd_112(ScriptContext *param0);
BOOL ScrCmd_113(ScriptContext *param0);
BOOL ScrCmd_114(ScriptContext *param0);
BOOL ScrCmd_115(ScriptContext *param0);
BOOL ScrCmd_116(ScriptContext *param0);
BOOL ScrCmd_117(ScriptContext *param0);
BOOL ScrCmd_118(ScriptContext *param0);
BOOL ScrCmd_0FF(ScriptContext *param0);
BOOL ScrCmd_10C(ScriptContext *param0);
BOOL ScrCmd_110(ScriptContext *param0);
BOOL ScrCmd_10D(ScriptContext *param0);
BOOL ScrCmd_10E(ScriptContext *param0);
BOOL ScrCmd_10F(ScriptContext *param0);

BOOL ScrCmd_0F8(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02094754(*v0, v1);
    return 0;
}

BOOL ScrCmd_0F9(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v1 = ScriptContext_GetVar(param0);

    param0->data[0] = v1;

    ScriptContext_Pause(param0, sub_02046CE0);
    return 1;
}

static BOOL sub_02046CE0(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    return sub_0209476C(*v0, param0->data[0]);
}

BOOL ScrCmd_0FA(ScriptContext *param0)
{
    Strbuf *v0;
    Pokemon *v1;
    void **v2 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    TrainerInfo *v3 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u16 v6 = ScriptContext_GetVar(param0);
    u16 v7 = ScriptContext_GetVar(param0);
    UnkStruct_02093800 v8;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v7);
    v0 = TrainerInfo_NameNewStrbuf(v3, 4);

    v8.unk_00 = v5;
    v8.unk_01 = v4;
    v8.unk_02 = v6;
    v8.unk_03 = sub_0206A954(SaveData_GetVarsFlags(param0->fieldSystem->saveData));
    v8.unk_04 = sub_02027474(SaveData_Pokedex(param0->fieldSystem->saveData));
    v8.unk_05 = v7;
    v8.unk_08 = v1;
    v8.unk_0C = v0;
    v8.unk_10 = v3;
    v8.unk_14 = sub_0202A750(param0->fieldSystem->saveData);
    v8.unk_18 = SaveData_Options(param0->fieldSystem->saveData);
    v8.unk_1C = param0->fieldSystem->saveData;
    v8.unk_20 = GetChatotCryDataFromSave(param0->fieldSystem->saveData);

    *v2 = sub_02093800(&v8);

    Strbuf_Free(v0);

    return 0;
}

BOOL ScrCmd_0FB(ScriptContext *param0)
{
    Pokemon *v0;
    void **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v2 = ScriptContext_GetVar(param0);
    u32 v3 = MapHeader_GetMapLabelTextID(param0->fieldSystem->location->mapId);

    sub_02094C44(*v1, param0->fieldSystem->saveData, v3, param0->fieldSystem->journal);
    sub_02093AD4(*v1);

    return 0;
}

BOOL ScrCmd_0FC(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    sub_02094630(*v0, v2, *v1, v3);

    return 0;
}

BOOL ScrCmd_0FD(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    sub_02094648(*v0, v2, *v1, v3);

    return 0;
}

BOOL ScrCmd_0FE(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    sub_02094680(*v0, v2, *v1, v3);

    return 0;
}

BOOL ScrCmd_0FF(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    StringTemplate_SetNumber(*v1, v3, v2, 1, 0, 1);
    return 0;
}

BOOL ScrCmd_100(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    sub_020943B0(*v0);
    ScriptContext_Pause(param0, sub_02046FDC);

    return 1;
}

static BOOL sub_02046FDC(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    return sub_020944CC(*v0);
}

BOOL ScrCmd_101(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    sub_020933F8(param0->taskManager, *v0);
    return 1;
}

BOOL ScrCmd_102(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_020946A4(*v0, *v1, v2);
    return 0;
}

BOOL ScrCmd_103(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_020946CC(*v0, *v1, v2);
    return 0;
}

BOOL ScrCmd_104(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_020946F0(*v0, *v1, v2);
    return 0;
}

BOOL ScrCmd_105(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02094750(*v0);
    return 0;
}

BOOL ScrCmd_106(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_02094720(*v0, *v1, v2);
    return 0;
}

BOOL ScrCmd_107(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02094790(*v0);
    return 0;
}

BOOL ScrCmd_108(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_020947A4(*v0);
    return 0;
}

BOOL ScrCmd_109(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_020947C8(*v0);
    return 0;
}

BOOL ScrCmd_10A(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_020947D8(*v0, v1);
    return 0;
}

BOOL ScrCmd_10B(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_020947F0(*v0, v1);
    return 0;
}

BOOL ScrCmd_10C(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02094804(*v0);
    return 0;
}

BOOL ScrCmd_110(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);

    sub_02094828(*v0, v1, v2, v3, v4);
    return 0;
}

BOOL ScrCmd_10D(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02094868(*v0);
    return 0;
}

BOOL ScrCmd_10E(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_02094898(*v0, *v1, v2, 11);
    return 0;
}

BOOL ScrCmd_10F(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02094904(*v0);
    return 0;
}

BOOL ScrCmd_117(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    sub_02094850(*v0);
    return 0;
}

BOOL ScrCmd_118(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    sub_02094860(*v0);
    return 0;
}

BOOL ScrCmd_111(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02094A58(*v0, v1);
    return 0;
}

BOOL ScrCmd_112(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    ScriptContext_Pause(param0, sub_02047404);
    return 1;
}

static BOOL sub_02047404(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    if (sub_02094B1C(*v0) == 1) {
        return 1;
    }

    return 0;
}

BOOL ScrCmd_113(ScriptContext *param0)
{
    HBlankSystem_Stop(param0->fieldSystem->unk_04->hBlankSystem);
    return 0;
}

BOOL ScrCmd_114(ScriptContext *param0)
{
    HBlankSystem_Start(param0->fieldSystem->unk_04->hBlankSystem);
    return 0;
}

BOOL ScrCmd_115(ScriptContext *param0)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *v1 = ScriptContext_GetVarPointer(param0);
    int v2, v3, v4, v5, v6;

    sub_02094BB4(*v0, &v2, &v3, &v4, &v5, &v6);

    if ((v3 == 1) || (v4 == 1) || (v5 == 1) || (v6 == 1)) {
        *v1 = 1;
    } else {
        *v1 = 0;
    }

    return 0;
}

BOOL ScrCmd_116(ScriptContext *param0)
{
    ov6_02247A0C(param0->taskManager);
    return 1;
}

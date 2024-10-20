#include "unk_020494DC.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_defs/struct_02049A68.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DC018.h"

#include "communication_system.h"
#include "field_script_context.h"
#include "field_system.h"
#include "game_records.h"
#include "inlines.h"
#include "savedata.h"
#include "script_manager.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "unk_020363E8.h"
#include "unk_02049D08.h"
#include "unk_0204AEE8.h"
#include "unk_0205DFC4.h"
#include "unk_0206B9D8.h"
#include "unk_0209BA80.h"

static u16 sub_02049AE0(UnkStruct_0204AFC4 *param0, u8 param1);

BOOL ScrCmd_1DB(ScriptContext *param0)
{
    u16 v0, v1;

    v0 = ScriptContext_ReadHalfWord(param0);
    v1 = ScriptContext_ReadHalfWord(param0);

    param0->fieldSystem->unk_AC = sub_0204A124(FieldSystem_SaveData(param0->fieldSystem), v0, v1);
    return 0;
}

BOOL ScrCmd_1DA(ScriptContext *param0)
{
    sub_0204A110(&(param0->fieldSystem->unk_AC));
    return 0;
}

BOOL ScrCmd_1DC(ScriptContext *param0)
{
    UnkStruct_0204AFC4 *v0;

    sub_0204A32C(param0->fieldSystem->unk_AC);
    param0->fieldSystem->unk_AC = NULL;

    return 0;
}

BOOL ScrCmd_1DD(ScriptContext *param0)
{
    u16 v0, v1, v2;
    u16 *v3, *v4;
    void **v5;
    UnkStruct_0204AFC4 *v6;

    v0 = ScriptContext_ReadHalfWord(param0);
    v1 = ScriptContext_GetVar(param0);
    v2 = ScriptContext_ReadHalfWord(param0);
    v3 = FieldSystem_GetVarPointer(param0->fieldSystem, v2);
    v6 = param0->fieldSystem->unk_AC;

    switch (v0) {
    case 1:
        if (v1 == 0) {
            *v3 = sub_02049EC4(v6->unk_0E, param0->fieldSystem->saveData, 1);
        } else {
            *v3 = sub_02049EC4(v1, param0->fieldSystem->saveData, 1);
        }
        break;
    case 2:
        sub_02049F8C();
        break;
    case 3:
        sub_02049F98(sub_0202D740(param0->fieldSystem->saveData));
        break;
    case 4:
        *v3 = sub_02049FA0(sub_0202D740(param0->fieldSystem->saveData));
        break;
    case 5:
        sub_02049FA8(param0->fieldSystem);
        break;
    case 6:
        sub_02049FE8(param0->fieldSystem);
        break;
    case 8:
        *v3 = sub_02049FF8(param0->fieldSystem->saveData, v1);
        break;
    case 9:
        *v3 = sub_0204AABC(NULL, param0->fieldSystem->saveData, 2);
        break;
    case 10:
        *v3 = sub_0204AABC(NULL, param0->fieldSystem->saveData, 0);
        break;
    case 11:
        sub_0204A030(param0->fieldSystem->saveData, v1);
        break;
    case 12:
        *v3 = sub_0204A050(param0->fieldSystem->saveData);
        break;
    case 14:
        *v3 = sub_0204A064(param0->fieldSystem->saveData);
        break;
    case 15:
        *v3 = sub_0204A100(param0->fieldSystem->saveData);
        break;
    case 16:
        sub_0206BCE4(param0->taskManager, v1, v2, *v3);
        return 1;
    case (30 + 0):
        v5 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);
        sub_0204A358(v6, param0->taskManager, v5);
        return 1;
    case (30 + 1):
        v5 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);
        *v3 = sub_0204A378(v6, v5, param0->fieldSystem->saveData);
        break;
    case (30 + 2):
        *v3 = sub_0204A410(v6, param0->fieldSystem->saveData);
        break;
    case (30 + 5):
        *v3 = sub_0204A57C(v6);
        break;
    case (30 + 7):
        sub_0204A660(v6, param0->fieldSystem->saveData);
        break;
    case (30 + 8):
        sub_0204A7A4(v6, param0->fieldSystem->saveData, param0->fieldSystem->journal);
        break;
    case (30 + 9):
        sub_0204A8C8(v6);
        break;
    case (30 + 26):
        sub_0204A97C(v6);
        break;
    case (30 + 11):
        *v3 = sub_0204A9E0(v6, v1);
        break;
    case (30 + 13):
        *v3 = (u16)sub_0204A9F8(v6);
        break;
    case (30 + 15):
        *v3 = sub_0204A9FC(v6);
        break;
    case (30 + 17):
        sub_0204AA7C(v6, param0->fieldSystem->saveData);
        break;
    case (30 + 18):
        *v3 = sub_0204AB68(v6, param0->fieldSystem->saveData);
        break;
    case (30 + 19):
        *v3 = sub_0204ABA0(v6, param0->fieldSystem->saveData);
        break;
    case (30 + 20):
        v6->unk_10_5 = v1;
        break;
    case (30 + 21):
        *v3 = v6->unk_10_5;
        break;
    case (30 + 22):
        sub_0204A4C8(v6, param0->fieldSystem->saveData);
        break;
    case (30 + 23):
        *v3 = v6->unk_2A[v1];
        break;
    case (30 + 24):
        *v3 = sub_0204AABC(v6, param0->fieldSystem->saveData, 1);
        break;
    case (30 + 25):
        *v3 = sub_02049AE0(v6, v1);
        break;
    case (30 + 27):
        *v3 = sub_0204ABF4(v6, param0->fieldSystem->saveData);
        break;
    case 100:
        if (v6 == NULL) {
            *v3 = 1;
        } else {
            *v3 = 0;
        }
        break;
    case (30 + 28):
        MI_CpuClear8(v6->unk_884, 70);
        break;
    default:
        GF_ASSERT(FALSE);
        *v3 = 0;
        break;
    }

    return 0;
}

BOOL ScrCmd_1DE(ScriptContext *param0)
{
    u16 v0, v1;
    u16 *v2, *v3;
    UnkStruct_0204AFC4 *v4 = param0->fieldSystem->unk_AC;

    v0 = ScriptContext_GetVar(param0);
    v1 = ScriptContext_GetVar(param0);
    v2 = FieldSystem_GetVarPointer(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));
    v3 = FieldSystem_GetVarPointer(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));

    *v2 = v4->unk_298[v0].unk_30[v1].unk_00_val1_0;
    *v3 = v4->unk_298[v0].unk_30[v1].unk_04[0];

    return 0;
}

BOOL ScrCmd_1DF(ScriptContext *param0)
{
    u16 v0, v1, v2;
    u16 *v3;

    v0 = ScriptContext_ReadHalfWord(param0);
    v3 = FieldSystem_GetVarPointer(param0->fieldSystem, v0);
    *v3 = sub_0206BDBC(param0->fieldSystem->saveData);

    return 0;
}

BOOL ScrCmd_1E0(ScriptContext *param0)
{
    u16 v0, v1, v2;
    u16 *v3;

    v0 = ScriptContext_ReadHalfWord(param0);
    v3 = FieldSystem_GetVarPointer(param0->fieldSystem, v0);
    *v3 = sub_0206BF04(param0->fieldSystem->saveData);

    return 0;
}

BOOL ScrCmd_1E1(ScriptContext *param0)
{
    int v0, v1;
    const TrainerInfo *v2;
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 *v5 = ScriptContext_GetVarPointer(param0);
    UnkStruct_0204AFC4 *v6 = param0->fieldSystem->unk_AC;

    *v5 = 0;

    switch (v3) {
    case 0:
        v0 = 62;
        sub_0204B060(param0->fieldSystem->unk_AC, param0->fieldSystem->saveData);
        break;
    case 1:
        v0 = 63;
        sub_0204B0BC(param0->fieldSystem->unk_AC);
        break;
    case 2:
        v0 = 64;
        sub_0204B0D4(param0->fieldSystem->unk_AC, v4);
        break;
    }

    if (sub_0205E6D8(param0->fieldSystem->saveData) == 1) {
        if (sub_02036614(CommSys_CurNetId(), v6->unk_83E) == 1) {
            *v5 = 1;
        } else {
            return 1;
        }
    } else {
        sub_0209BA80(v6);

        v1 = 70;

        if (CommSys_SendData(v0, v6->unk_83E, v1) == 1) {
            *v5 = 1;
        }
    }

    return 0;
}

static BOOL sub_02049A20(ScriptContext *param0);

BOOL ScrCmd_1E2(ScriptContext *param0)
{
    u16 v0;
    u16 v1;
    UnkStruct_0204AFC4 *v2 = param0->fieldSystem->unk_AC;

    v1 = ScriptContext_GetVar(param0);
    v0 = ScriptContext_ReadHalfWord(param0);

    if (sub_0205E6D8(param0->fieldSystem->saveData) == 1) {
        sub_0206BD88(param0->fieldSystem->unk_10, v1, v0);
    } else {
        v2->unk_8DA = v0;
        v2->unk_8D5 = v1;

        ScriptContext_Pause(param0, sub_02049A20);
    }

    return 1;
}

static BOOL sub_02049A20(ScriptContext *param0)
{
    u8 v0;
    UnkStruct_0204AFC4 *v1 = param0->fieldSystem->unk_AC;
    u16 *v2 = FieldSystem_GetVarPointer(param0->fieldSystem, v1->unk_8DA);

    if (v1->unk_8D5 == 1) {
        v0 = 1;
    } else {
        v0 = 2;
    }

    if (v1->unk_8D4 == v0) {
        v1->unk_8D4 = 0;
        *v2 = v1->unk_8D8;

        return 1;
    }

    return 0;
}

BOOL ScrCmd_1E3(ScriptContext *param0)
{
    UnkStruct_02049A68 v0;
    u16 *v1 = FieldSystem_GetVarPointer(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));
    u16 *v2 = FieldSystem_GetVarPointer(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));

    sub_0202D708(sub_0202D764(param0->fieldSystem->saveData), &v0);

    *v1 = v0.unk_00;
    *v2 = v0.unk_04;

    return 0;
}

BOOL ScrCmd_1E4(ScriptContext *param0)
{
    u16 *v0 = FieldSystem_GetVarPointer(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));

    *v0 = sub_0202D5F0(sub_0202D764(param0->fieldSystem->saveData));
    return 0;
}

static u16 sub_02049AE0(UnkStruct_0204AFC4 *param0, u8 param1)
{
    static const u16 v0[] = {
        0x8d,
        0x91,
        0x8e,
        0x8f,
        0x90
    };

    if (param1 == 2) {
        return param0->unk_10_5;
    }

    if (param1 == 1) {
        if (param0->unk_0F == 2) {
            return v0[param0->unk_10_5];
        } else {
            if (param0->unk_12) {
                return 0x61;
            } else {
                return 0x0;
            }
        }
    }

    if (param0->unk_11) {
        return 0x61;
    } else {
        return 0x0;
    }
}

BOOL ScrCmd_294(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u8 v1 = ScriptContext_ReadByte(param0);
    u8 v2 = ScriptContext_ReadByte(param0);
    Window **v3;

    v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_COIN_WINDOW);
    *v3 = ov5_021DD140(param0->fieldSystem, v1, v2);

    return 0;
}

BOOL ScrCmd_295(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Window **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_COIN_WINDOW);

    ov5_021DD084(*v1);
    return 0;
}

BOOL ScrCmd_296(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Window **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_COIN_WINDOW);

    ov5_021DD1A4(param0->fieldSystem, *v1);
    return 0;
}

BOOL ScrCmd_297(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0202D230(sub_0202D750(v1), 0, 0);
    return 0;
}

BOOL ScrCmd_298(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 v2 = ScriptContext_GetVar(param0);

    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(param0->fieldSystem->saveData), RECORD_UNK_068, v2);
    sub_0202D230(sub_0202D750(v1), v2, 5);

    return 0;
}

BOOL ScrCmd_299(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 v2 = ScriptContext_GetVar(param0);

    GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(param0->fieldSystem->saveData), RECORD_UNK_069, v2);
    sub_0202D230(sub_0202D750(v1), v2, 6);

    return 0;
}

BOOL ScrCmd_29A(ScriptContext *param0)
{
    u16 v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v2 = fieldSystem->saveData;
    u16 v3 = ScriptContext_GetVar(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);

    v0 = sub_0202D230(
        sub_0202D750(v2), 0, 0);

    if (v0 < v3) {
        *v4 = 0;
    } else {
        *v4 = 1;
    }

    return 0;
}

BOOL ScrCmd_29B(ScriptContext *param0)
{
    u8 v0 = 0;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);
    static const u16 v5[][2] = {
        { 0x2E, 0x1 },
        { 0x31, 0x1 },
        { 0x2F, 0x1 },
        { 0x34, 0x1 },
        { 0x30, 0x1 },
        { 0x2D, 0x1 },
        { 0x121, 0x10 },
        { 0x122, 0x10 },
        { 0x123, 0x10 },
        { 0x124, 0x10 },
        { 0x125, 0x10 },
        { 0x126, 0x10 },
        { 0x110, 0x10 },
        { 0x111, 0x10 },
        { 0xD6, 0x20 },
        { 0x10F, 0x20 },
        { 0xD5, 0x30 },
        { 0xDC, 0x30 },
        { 0xE6, 0x30 },
        { 0xE8, 0x30 },
        { 0x10A, 0x30 },
        { 0x113, 0x30 },
        { 0x11F, 0x30 },
        { 0x146, 0x30 },
        { 0x147, 0x30 },
        { 0x32, 0x30 },
        { 0x14D, 0x20 },
        { 0x190, 0x20 },
        { 0x184, 0x20 },
        { 0x174, 0x20 },
        { 0x16F, 0x28 },
        { 0x166, 0x28 },
        { 0x14F, 0x30 },
        { 0x14B, 0x30 },
        { 0x198, 0x40 },
        { 0x165, 0x40 },
        { 0x17C, 0x40 },
        { 0x16B, 0x50 },
        { 0x182, 0x50 },
        { 0x18E, 0x50 },
        { 0x161, 0x50 }
    };

    if (v1 == 1) {
        v0 = 26;
    } else {
        v0 = 0;
    }

    *v3 = v5[v0 + v2][0];
    *v4 = v5[v0 + v2][1];

    return 0;
}

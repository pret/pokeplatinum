#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022339B4.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02234130.h"
#include "overlay104/struct_ov104_0223ADA0.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay105/ov105_02241AE0.h"

#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0202FF4C.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(overlay105);

#include <nitro/code16.h>

static BOOL ov104_0223394C(FrontierScriptContext *param0);
static void ov104_022338B4(SysTask *param0, void *param1);
static void ov104_02233478(void *param0);

BOOL FrontierScrCmd_5C(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = ov104_022339B4(v1->saveData, v2, v3, v4);

    sub_0209B980(param0->unk_00->unk_00, v0);

    return 0;
}

BOOL FrontierScrCmd_5D(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02233B98(v0, v1);

    return 0;
}

BOOL FrontierScrCmd_5E(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022340D0(v0);

    return 0;
}

BOOL FrontierScrCmd_5F(FrontierScriptContext *param0)
{
    int v0;
    UnkStruct_ov104_0223ADA0 *v1;
    UnkStruct_ov104_02234130 *v2;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay105);

    static const ApplicationManagerTemplate v4 = {
        ov105_02241AE0,
        ov105_02241BD8,
        ov105_02241F54,
        FS_OVERLAY_ID(overlay105)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_02234130));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02234130));

    v2->saveData = v3->saveData;
    v2->unk_04 = v1->unk_04;
    v2->unk_05 = v1->unk_05;
    v2->unk_06 = 0;
    v2->unk_08 = v1->unk_4D4;
    v2->unk_0C = v1->unk_4D8;
    v2->unk_1C = v1;

    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02233478);
    return 1;
}

BOOL FrontierScrCmd_60(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    FieldBattleDTO *v1 = v0->unk_4FC;

    v0->unk_14 = CheckPlayerWonBattle(v1->resultMask);

    FieldBattleDTO_Free(v1);
    return 0;
}

BOOL FrontierScrCmd_61(FrontierScriptContext *param0)
{
    FieldBattleDTO *v0;
    UnkStruct_ov104_0223ADA0 *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223ABA0(v1, v2);

    v1->unk_4FC = v0;
    sub_0209B988(param0->unk_00->unk_00, &gBattleApplicationTemplate, v0, 0, NULL);

    return 1;
}

BOOL FrontierScrCmd_62(FrontierScriptContext *param0)
{
    int v0;
    UnkStruct_ov104_0223ADA0 *v1;
    UnkStruct_ov104_02234130 *v2;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay105);

    static const ApplicationManagerTemplate v4 = {
        ov105_02241AE0,
        ov105_02241BD8,
        ov105_02241F54,
        FS_OVERLAY_ID(overlay105)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);

    for (v0 = 0; v0 < 6; v0++) {
        v1->unk_4DC[v0] = 0;
    }

    v2 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_02234130));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02234130));

    v2->saveData = v3->saveData;
    v2->unk_04 = v1->unk_04;
    v2->unk_05 = v1->unk_05;
    v2->unk_06 = 1;
    v2->unk_08 = v1->unk_4D4;
    v2->unk_0C = v1->unk_4D8;
    v2->unk_1C = v1;

    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02233478);
    return 1;
}

static void ov104_02233478(void *param0)
{
    int v0;
    UnkStruct_ov104_02234130 *v1 = param0;

    ov104_0223410C(v1->unk_1C, param0);
    Heap_Free(param0);

    return;
}

BOOL FrontierScrCmd_63(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223449C(v0);

    return 0;
}

BOOL FrontierScrCmd_64(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02234570(v0);

    return 0;
}

BOOL FrontierScrCmd_65(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022346A4(v0);

    return 0;
}

BOOL FrontierScrCmd_66(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223470C(v0);

    return 0;
}

BOOL FrontierScrCmd_67(FrontierScriptContext *param0)
{
    int v0[18];
    UnkStruct_ov104_0223C4CC *v1;
    String *v2;
    Pokemon *v3;
    UnkStruct_ov104_0223ADA0 *v4;
    u8 v5, v6;
    u32 v7, v8, v9;
    int v10, v11;
    u8 v12 = FrontierScriptContext_ReadByte(param0);
    u8 v13 = FrontierScriptContext_ReadByte(param0);
    u8 v14 = FrontierScriptContext_ReadByte(param0);
    u16 *v15 = FrontierScriptContext_TryGetVarPointer(param0);

    v4 = sub_0209B978(param0->unk_00->unk_00);
    v1 = ov104_0222E924(param0->unk_00);

    switch (v12) {
    case 0:
        v4->unk_07 = v13;
        break;
    case 1:
        v4->unk_05 = v13;
        break;
    case 2:
        v4->unk_04 = v13;
        break;
    case 3:
        *v15 = v4->unk_4DC[v13];
        break;
    case 4:
        *v15 = v4->unk_0C;
        break;
    case 5:
        if (v4->unk_0C < 9999) {
            v4->unk_0C++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *v15 = sub_0202FF68(v4->unk_4F4);
        break;
    case 10:
        ov104_02234148(v4, 2);
        break;
    case 14:
        *v15 = ov104_02234430(v4);
        break;
    case 15:
        *v15 = v4->unk_3F0[v13].species;
        break;
    case 16:
        *v15 = v4->unk_3F0[v13].moves[v14];
        break;
    case 17:
        v3 = Pokemon_New(HEAP_ID_FIELD2);
        ov104_0222DF40(&v4->unk_3F0[v13], v3, ov104_0223ADA0(v4));
        *v15 = Pokemon_GetValue(v3, MON_DATA_TYPE_1, NULL);
        Heap_Free(v3);
        break;
    case 18:
        v5 = ov104_0223AA74(v4->unk_04, 1);

        for (v10 = 0; v10 < (17 + 1); v10++) {
            v0[v10] = 0;
        }

        v3 = Pokemon_New(HEAP_ID_FIELD2);

        for (v10 = 0; v10 < v5; v10++) {
            ov104_0222DF40(&v4->unk_3F0[v10], v3, ov104_0223ADA0(v4));

            v7 = Pokemon_GetValue(v3, MON_DATA_TYPE_1, NULL);
            v8 = Pokemon_GetValue(v3, MON_DATA_TYPE_2, NULL);

            if (v7 == v8) {
                v8 = 0xff;
            }

            v0[v7]++;

            if (v8 != 0xff) {
                v0[v8]++;
            }
        }

        Heap_Free(v3);

        v9 = 0;

        for (v10 = 0; v10 < (17 + 1); v10++) {
            if (v0[v9] < v0[v10]) {
                v9 = v10;
            }
        }

        if (v0[v9] <= 1) {
            *v15 = 0xff;
        } else {
            *v15 = v9;
        }
        break;
    case 19:
        *v15 = ov104_0223AF34(v4);
        break;
    case 20:
        *v15 = ov104_02234440(v4, v13);
        break;
    case 21:
        ov104_02234474(v4);
        break;
    case 22:
        ov104_02234480(v4);
        break;
    case 23:
        *v15 = ov104_0223443C(v4);
        break;
    case 24:
        *v15 = v4->unk_57C;
        break;
    case 26:
        *v15 = v4->unk_57D;
        break;
    case 27:
        sub_0209BA80(v4);
        break;
    case 28:
        *v15 = BattleFactory_IsMultiplayerChallenge(v4->unk_04);
        break;
    case 29:
        *v15 = v4->unk_04;
        break;
    case 30:
        Bg_ChangeTilemapRectPalette(v1->unk_00, 3, 3, 10, 26, 11, v13);
        Bg_ScheduleTilemapTransfer(v1->unk_00, 3);
        break;
    case 31:
        v4->unk_500 = SysTask_Start(ov104_022338B4, ov104_0222E924(param0->unk_00), 5);
        break;
    case 32:
        if (v4->unk_500 != NULL) {
            SysTask_Done(v4->unk_500);
            v4->unk_500 = NULL;
        }
        break;
    case 33:
        ov104_0222E278(&(v4->unk_34[0]), v4->unk_18[v4->unk_06], HEAP_ID_FIELD2, 178);
        ov104_0222E278(&(v4->unk_34[1]), v4->unk_18[v4->unk_06 + 7], HEAP_ID_FIELD2, 178);
        break;
    case 34:
        v6 = ov104_0223AA50(v4->unk_04);

        for (v10 = 0; v10 < v6; v10++) {
            v3 = Party_GetPokemonBySlotIndex(v4->unk_4D4, v10);
            StringTemplate_SetSpeciesName(param0->unk_00->strTemplate, v10, Pokemon_GetBoxPokemon(v3));
        }
        break;
    case 35:
        *v15 = ov104_022347F8(v4);
        break;
    case 36:
        ov104_02234790(v4);
        break;
    case 37:
        *v15 = 0;

        if (v4->unk_04 == 0) {
            if ((v4->unk_0C + 1) == 21) {
                *v15 = 1;
            } else if ((v4->unk_0C + 1) == 49) {
                *v15 = 2;
            }
        }
        break;
    case 38:
        ov104_0223AE30(v4);
        break;
    case 39:
        ov104_0222E330(v4->unk_3F0, v4->unk_3D2, v4->unk_3DA, v4->unk_3E0, NULL, 4, 11, 179);
        break;
    case 40:
        ov104_0223ADB0(v4);
        break;
    case 41:
        *v15 = v4->unk_0B;
        v4->unk_0B = 1;
        break;
    }

    return 0;
}

void ov104_022338B4(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov104_0223C4CC *v1 = param1;

    v0 = Bg_GetYOffset(v1->unk_00, 2);

    if (v0 >= 255) {
        Bg_ScheduleScroll(v1->unk_00, 2, 3, 0);
    } else {
        Bg_ScheduleScroll(v1->unk_00, 2, 4, 1);
    }

    return;
}

BOOL FrontierScrCmd_68(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0;
    u16 *v1 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_14;

    return 0;
}

BOOL FrontierScrCmd_69(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v3 = ov104_022347A4(v0, v1, v2);

    return 1;
}

BOOL FrontierScrCmd_6A(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_0223394C);

    return 1;
}

static BOOL ov104_0223394C(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223ADA0 *v0;
    u16 v1 = FrontierScriptContext_TryGetVar(param0, param0->data[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_702 >= 2) {
        v0->unk_702 = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_6B(FrontierScriptContext *param0)
{
    u16 *v0;
    UnkStruct_ov104_0223ADA0 *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);
    u16 v3 = FrontierScriptContext_ReadByte(param0);

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_34[v3].trDataDTO.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}

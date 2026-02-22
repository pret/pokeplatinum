#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"

#include "applications/frontier/battle_hall/main.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02234DB4.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02235208.h"
#include "overlay104/struct_ov104_0223B5C0.h"
#include "savedata/save_table.h"

#include "field_battle_data_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "sound.h"
#include "tv_episode_segment.h"
#include "unk_02030108.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_hall_app);

#include <nitro/code16.h>

static BOOL ov104_02234CEC(FrontierScriptContext *param0);
static void ov104_02234A08(void *param0);

BOOL FrontierScrCmd_8B(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);
    u16 v5 = FrontierScriptContext_GetVar(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = ov104_02234DB4(v1->saveData, v2, v3, v4, v5);

    sub_0209B980(param0->unk_00->unk_00, v0);

    return 0;
}

BOOL FrontierScrCmd_8C(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022350B0(v0, v1);

    return 0;
}

BOOL FrontierScrCmd_8D(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02235190(v0);

    return 0;
}

BOOL FrontierScrCmd_OpenBattleHallApp(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v5 = sub_0209B970(ctx->unk_00->unk_00);

    FS_EXTERN_OVERLAY(battle_hall_app);

    static const ApplicationManagerTemplate sBattleHallAppTemplate = {
        BattleHallApp_Init,
        BattleHallApp_Main,
        BattleHallApp_Exit,
        FS_OVERLAY_ID(battle_hall_app)
    };

    UnkStruct_ov104_0223B5C0 *v3 = sub_0209B978(ctx->unk_00->unk_00);
    UnkStruct_ov104_02235208 *v4 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_02235208));

    MI_CpuClear8(v4, sizeof(UnkStruct_ov104_02235208));

    v4->saveData = v5->saveData;
    v4->unk_04 = v3->unk_04;
    v4->unk_10 = v3;
    v4->unk_08 = &v3->unk_704[v3->unk_04][0];
    v4->party = v3->unk_264;
    v4->unk_18 = v3->unk_08;
    v4->unk_05 = v3->unk_6F5;
    v4->unk_14 = &v3->unk_D84[0];

    Party_Init(v4->party);

    Party *party = SaveData_GetParty(v5->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, v3->unk_260[0]);

    Party_AddPokemon(v4->party, mon);

    if (v4->unk_04 == 1) {
        mon = Party_GetPokemonBySlotIndex(party, v3->unk_260[1]);
        Party_AddPokemon(v4->party, mon);
    } else if ((v4->unk_04 == 2) || (v4->unk_04 == 3)) {
        Party_AddPokemon(v4->party, v3->unk_D8C);
    }

    sub_0209B988(ctx->unk_00->unk_00, &sBattleHallAppTemplate, v4, 0, ov104_02234A08);
    return TRUE;
}

BOOL FrontierScrCmd_8F(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0 = sub_0209B978(param0->unk_00->unk_00);
    FieldBattleDTO *v1 = v0->unk_700;

    v0->unk_14 = CheckPlayerWonBattle(v1->resultMask);
    FieldBattleDTO_Free(v1);

    return 0;
}

BOOL FrontierScrCmd_90(FrontierScriptContext *param0)
{
    FieldBattleDTO *v0;
    UnkStruct_ov104_0223B5C0 *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223B250(v1, v2);

    v1->unk_700 = v0;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
    sub_0209B988(param0->unk_00->unk_00, &gBattleApplicationTemplate, v0, 0, NULL);

    return 1;
}

static void ov104_02234A08(void *param0)
{
    int v0;
    Pokemon *v1;
    UnkStruct_ov104_02235208 *v2 = param0;

    ov104_022351CC(v2->unk_10, param0);
    Heap_Free(param0);

    return;
}

BOOL FrontierScrCmd_91(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    Pokemon *v1;
    Party *v2;
    UnkStruct_ov104_0223B5C0 *v3;
    u8 v4, v5;
    u32 v6;
    int v7;
    u8 v8 = FrontierScriptContext_ReadByte(param0);
    u8 v9 = FrontierScriptContext_ReadByte(param0);
    u8 v10 = FrontierScriptContext_ReadByte(param0);
    u16 *v11 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    v3 = sub_0209B978(param0->unk_00->unk_00);

    switch (v8) {
    case 2:
        v3->unk_04 = v9;
        break;
    case 3:
        *v11 = v3->unk_6F2;
        break;
    case 4:
        *v11 = v3->unk_08;
        break;
    case 5:
        if (v3->unk_08 < 9999) {
            v3->unk_08++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *v11 = sub_02030124(v3->unk_6F8);
        break;
    case 10:
        ov104_0223526C(v3, 2);
        break;
    case 14:
        *v11 = ov104_022354B0(v3);
        break;
    case 19:
        if (v3->unk_04 == 2) {
            *v11 = 10;
        } else {
            *v11 = v3->unk_0A;
        }
        break;
    case 20:
        *v11 = ov104_022354C0(v3, v9);
        break;
    case 21:
        ov104_022354F4(v3);
        break;
    case 22:
        ov104_02235518(v3);
        break;
    case 23:
        *v11 = ov104_022354BC(v3);
        break;
    case 24:
        *v11 = v3->unk_D88;
        break;
    case 27:
        v2 = SaveData_GetParty(v0->saveData);
        v5 = ov104_0223B500(v3->unk_04);

        for (v7 = 0; v7 < v5; v7++) {
            v1 = Party_GetPokemonBySlotIndex(v2, v3->unk_260[v7]);
            Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &v3->unk_728[v7]);
        }
        break;
    case 28:
        v4 = BattleHall_GetRankOfType(v3->unk_6F5, &v3->unk_704[v3->unk_04][0]);

        if (v4 < 10) {
            sub_02030204(v3->unk_6F5, &v3->unk_704[v3->unk_04][0], v4 + 1);
        }
        break;
    case 29:
        sub_0209BA80(v3);
        break;
    case 30:
        *v11 = BattleFrontier_IsMultiPlayerChallenge(v3->unk_04);
        break;
    case 17:
        *v11 = v3->unk_04;
        break;
    case 31:
        if (v9 == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        } else {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 32:
        ov104_0222E278(&(v3->unk_40[0]), v3->unk_18[v3->unk_05 * 2], HEAP_ID_FIELD2, 178);
        ov104_0222E278(&(v3->unk_40[1]), v3->unk_18[v3->unk_05 * 2 + 1], HEAP_ID_FIELD2, 178);
        break;
    case 33:
        *v11 = BattleHall_GetRankOfType(v3->unk_6F5, &v3->unk_704[v3->unk_04][0]);
        break;
    case 34:
        *v11 = ov104_02235578(v3);
        break;
    case 15:
        v2 = SaveData_GetParty(v0->saveData);
        v1 = Party_GetPokemonBySlotIndex(v2, v3->unk_260[0]);
        *v11 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
        break;
    case 35:
        ov104_022356A0(v3);
        break;
    case 36:
        ov104_022356F4(v3);
        break;
    case 37:
        *v11 = 0;

        if (v3->unk_04 == 0) {
            if ((v3->unk_08 + 1) == 50) {
                *v11 = 1;
            } else if ((v3->unk_08 + 1) == 170) {
                *v11 = 2;
            }
        }
        break;
    case 38:
        break;
    }

    return 0;
}

BOOL FrontierScrCmd_92(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0;
    u16 *v1 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_14;

    return 0;
}

BOOL FrontierScrCmd_93(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v3 = ov104_02235534(v0, v1, v2);

    return 1;
}

BOOL FrontierScrCmd_94(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_02234CEC);

    return 1;
}

static BOOL ov104_02234CEC(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0;
    u16 v1 = FrontierScriptContext_TryGetVar(param0, param0->data[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_D90 >= 2) {
        v0->unk_D90 = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_95(FrontierScriptContext *param0)
{
    u16 *v0;
    UnkStruct_ov104_0223B5C0 *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);
    u16 v3 = FrontierScriptContext_ReadByte(param0);

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_40[v3].trDataDTO.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}

BOOL FrontierScrCmd_76(FrontierScriptContext *param0)
{
    UnkStruct_ov104_0223B5C0 *v0;
    u16 *v1 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223520C(v0, v1);

    return 1;
}

BOOL FrontierScrCmd_C7(FrontierScriptContext *param0)
{
    TVBroadcast *broadcast;
    u16 v1;
    Party *v2;
    Pokemon *v3;
    UnkStruct_ov104_0223B5C0 *v4;
    UnkStruct_ov104_02230BE4 *v5 = sub_0209B970(param0->unk_00->unk_00);

    v4 = sub_0209B978(param0->unk_00->unk_00);
    v2 = SaveData_GetParty(v5->saveData);
    v3 = Party_GetPokemonBySlotIndex(v2, v4->unk_260[0]);
    v1 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

    if (v4->unk_04 == 0) {
        broadcast = SaveData_GetTVBroadcast(v5->saveData);
        sub_0206D048(broadcast, v3);
    }

    return 0;
}

#include "overlay104/frscrcmd_battle_hall.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "constants/battle_hall_functions.h"

#include "struct_decls/tv_broadcast.h"

#include "applications/frontier/battle_hall/main.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02234DB4.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_battle_hall.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "savedata/save_table.h"

#include "field_battle_data_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "sound.h"
#include "tv_segment.h"
#include "unk_02030108.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_hall_app);

#include <nitro/code16.h>

static BOOL ov104_02234CEC(FrontierScriptContext *param0);
static void StoreBattleHallAppResult(void *data);

BOOL FrontierScrCmd_8B(FrontierScriptContext *param0)
{
    BattleHall *v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);
    u16 v5 = FrontierScriptContext_GetVar(param0);

    v1 = sub_0209B970(param0->scriptMan->unk_00);
    v0 = ov104_02234DB4(v1->saveData, v2, v3, v4, v5);

    sub_0209B980(param0->scriptMan->unk_00, v0);

    return 0;
}

BOOL FrontierScrCmd_8C(FrontierScriptContext *param0)
{
    BattleHall *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);

    v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_022350B0(v0, v1);

    return 0;
}

BOOL FrontierScrCmd_8D(FrontierScriptContext *param0)
{
    BattleHall *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_02235190(v0);

    return 0;
}

BOOL FrontierScrCmd_OpenBattleHallApp(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v5 = sub_0209B970(ctx->scriptMan->unk_00);

    FS_EXTERN_OVERLAY(battle_hall_app);

    static const ApplicationManagerTemplate sBattleHallAppTemplate = {
        BattleHallApp_Init,
        BattleHallApp_Main,
        BattleHallApp_Exit,
        FS_OVERLAY_ID(battle_hall_app)
    };

    BattleHall *battleHall = sub_0209B978(ctx->scriptMan->unk_00);
    BattleHallAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleHallAppArgs));

    MI_CpuClear8(args, sizeof(BattleHallAppArgs));

    args->saveData = v5->saveData;
    args->challengeType = battleHall->challengeType;
    args->battleHall = battleHall;
    args->typeRanks = &battleHall->unk_704[battleHall->challengeType][0];
    args->party = battleHall->unk_264;
    args->currentStreak = battleHall->currentStreak;
    args->cursorPos = battleHall->selectedTypeIdx;
    args->partnersLevel = &battleHall->unk_D84[0];

    Party_Init(args->party);

    Party *party = SaveData_GetParty(v5->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleHall->unk_260[0]);

    Party_AddPokemon(args->party, mon);

    if (args->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        mon = Party_GetPokemonBySlotIndex(party, battleHall->unk_260[1]);
        Party_AddPokemon(args->party, mon);
    } else if (args->challengeType == FRONTIER_CHALLENGE_MULTI || args->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        Party_AddPokemon(args->party, battleHall->unk_D8C);
    }

    sub_0209B988(ctx->scriptMan->unk_00, &sBattleHallAppTemplate, args, 0, StoreBattleHallAppResult);
    return TRUE;
}

BOOL FrontierScrCmd_BattleHall_CheckWonBattle(FrontierScriptContext *ctx)
{
    BattleHall *battleHall = sub_0209B978(ctx->scriptMan->unk_00);
    FieldBattleDTO *dto = battleHall->unk_700;

    battleHall->wonBattle = CheckPlayerWonBattle(dto->resultMask);
    FieldBattleDTO_Free(dto);

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_StartBattle(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(ctx->scriptMan->unk_00);
    BattleHall *battleHall = sub_0209B978(ctx->scriptMan->unk_00);

    FieldBattleDTO *v0 = ov104_0223B250(battleHall, v2);
    battleHall->unk_700 = v0;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
    sub_0209B988(ctx->scriptMan->unk_00, &gBattleApplicationTemplate, v0, 0, NULL);

    return TRUE;
}

static void StoreBattleHallAppResult(void *data)
{
    BattleHallAppArgs *args = data;
    BattleHall_GetTypeSelectionAppResult(args->battleHall, data);
    Heap_Free(data);
}

BOOL FrontierScrCmd_CallBattleHallFunction(FrontierScriptContext *ctx)
{
    u8 v4, partySize;
    u32 v6;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(ctx->scriptMan->unk_00);
    BattleHall *battleHall = sub_0209B978(ctx->scriptMan->unk_00);

    switch (command) {
    case BH_FUNC_SET_CHALLENGE_TYPE:
        battleHall->challengeType = arg1;
        break;
    case BH_FUNC_GET_SELECTED_TYPE_INDEX:
        *returnVar = battleHall->selectedTypeIdx2;
        break;
    case BH_FUNC_GET_CURRENT_STREAK:
        *returnVar = battleHall->currentStreak;
        break;
    case BH_FUNC_INCREMENT_CURRENT_STEAK:
        if (battleHall->currentStreak < 9999) {
            battleHall->currentStreak++;
        }
        break;
    case BH_FUNC_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case BH_FUNC_UNK_9:
        *returnVar = sub_02030124(battleHall->unk_6F8);
        break;
    case BH_FUNC_UNK_10:
        ov104_0223526C(battleHall, 2);
        break;
    case BH_FUNC_UNK_14:
        *returnVar = ov104_022354B0(battleHall);
        break;
    case BH_FUNC_UNK_19:
        if (battleHall->challengeType == 2) {
            *returnVar = 10;
        } else {
            *returnVar = battleHall->unk_0A;
        }
        break;
    case BH_FUNC_UNK_20:
        *returnVar = ov104_022354C0(battleHall, arg1);
        break;
    case BH_FUNC_UNK_21:
        ov104_022354F4(battleHall);
        break;
    case BH_FUNC_UNK_22:
        ov104_02235518(battleHall);
        break;
    case BH_FUNC_UNK_23:
        *returnVar = ov104_022354BC(battleHall);
        break;
    case BH_FUNC_UNK_24:
        *returnVar = battleHall->unk_D88;
        break;
    case BH_FUNC_UPDATE_HELD_ITEMS: {
        Party *party = SaveData_GetParty(v0->saveData);
        partySize = BattleHall_GetPartySize(battleHall->challengeType);

        for (int i = 0; i < partySize; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleHall->unk_260[i]);
            Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &battleHall->unk_728[i]);
        }
    } break;
    case BH_FUNC_UNK_28:
        v4 = BattleHall_GetRankOfType(battleHall->selectedTypeIdx, &battleHall->unk_704[battleHall->challengeType][0]);

        if (v4 < 10) {
            sub_02030204(battleHall->selectedTypeIdx, &battleHall->unk_704[battleHall->challengeType][0], v4 + 1);
        }
        break;
    case BH_FUNC_UNK_29:
        sub_0209BA80(battleHall);
        break;
    case BH_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *returnVar = BattleHall_IsMultiPlayerChallenge(battleHall->challengeType);
        break;
    case BH_FUNC_GET_CHALLENGE_TYPE:
        *returnVar = battleHall->challengeType;
        break;
    case BH_FUNC_TOGGLE_ENGINE_LAYER:
        if (arg1 == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        } else {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        }
        break;
    case BH_FUNC_UNK_32:
        ov104_0222E278(&(battleHall->unk_40[0]), battleHall->unk_18[battleHall->unk_05 * 2], HEAP_ID_FIELD2, 178);
        ov104_0222E278(&(battleHall->unk_40[1]), battleHall->unk_18[battleHall->unk_05 * 2 + 1], HEAP_ID_FIELD2, 178);
        break;
    case BH_FUNC_UNK_33:
        *returnVar = BattleHall_GetRankOfType(battleHall->selectedTypeIdx, &battleHall->unk_704[battleHall->challengeType][0]);
        break;
    case BH_FUNC_UNK_34:
        *returnVar = ov104_02235578(battleHall);
        break;
    case BH_FUNC_UNK_15: {
        Party *v2 = SaveData_GetParty(v0->saveData);
        Pokemon *v1 = Party_GetPokemonBySlotIndex(v2, battleHall->unk_260[0]);
        *returnVar = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    } break;
    case BH_FUNC_UNK_35:
        ov104_022356A0(battleHall);
        break;
    case BH_FUNC_SET_BASE_LEVEL:
        BattleHall_CalcPlayerLevelSqrt(battleHall);
        break;
    case BH_FUNC_UNK_37:
        *returnVar = 0;

        if (battleHall->challengeType == 0) {
            if ((battleHall->currentStreak + 1) == 50) {
                *returnVar = 1;
            } else if ((battleHall->currentStreak + 1) == 170) {
                *returnVar = 2;
            }
        }
        break;
    case BH_FUNC_DUMMY:
        break;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_GetBattleResult(FrontierScriptContext *param0)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(param0);

    BattleHall *battleHall = sub_0209B978(param0->scriptMan->unk_00);
    *destVar = battleHall->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_93(FrontierScriptContext *param0)
{
    BattleHall *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->scriptMan->unk_00);
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
    BattleHall *v0;
    u16 v1 = FrontierScriptContext_TryGetVar(param0, param0->data[0]);

    v0 = sub_0209B978(param0->scriptMan->unk_00);

    if (v0->unk_D90 >= 2) {
        v0->unk_D90 = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_95(FrontierScriptContext *param0)
{
    u16 *v0;
    BattleHall *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->scriptMan->unk_00);
    u16 v3 = FrontierScriptContext_ReadByte(param0);

    v1 = sub_0209B978(param0->scriptMan->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_40[v3].trDataDTO.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}

BOOL FrontierScrCmd_BattleHall_UpdateWinRecord(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    BattleHall *battleHall = sub_0209B978(ctx->scriptMan->unk_00);
    BattleHall_UpdateWinRecordForCurrentMon(battleHall, destVar);

    return TRUE;
}

BOOL FrontierScrCmd_C7(FrontierScriptContext *param0)
{
    TVBroadcast *broadcast;
    u16 v1;
    Party *v2;
    Pokemon *v3;
    BattleHall *v4;
    UnkStruct_ov104_02230BE4 *v5 = sub_0209B970(param0->scriptMan->unk_00);

    v4 = sub_0209B978(param0->scriptMan->unk_00);
    v2 = SaveData_GetParty(v5->saveData);
    v3 = Party_GetPokemonBySlotIndex(v2, v4->unk_260[0]);
    v1 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

    if (v4->challengeType == 0) {
        broadcast = SaveData_GetTVBroadcast(v5->saveData);
        sub_0206D048(broadcast, v3);
    }

    return 0;
}

#include "overlay104/frscrcmd_battle_factory.h"

#include <nitro.h>

#include "constants/battle_factory_functions.h"
#include "constants/heap.h"

#include "applications/frontier/battle_factory/main.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022339B4.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/struct_battle_factory.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "battle_frontier.h"
#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "battle_factory_save.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_factory_app);

#include <nitro/code16.h>

static BOOL ov104_0223394C(FrontierScriptContext *param0);
static void ov104_022338B4(SysTask *param0, void *param1);
static void StoreBattleFactoryAppResult(void *data);

BOOL FrontierScrCmd_5C(FrontierScriptContext *param0)
{
    BattleFactory *v0;
    FieldFrontierDTO *fieldData;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);

    fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);
    v0 = ov104_022339B4(fieldData->saveData, v2, v3, v4);

    BattleFrontier_SetFacilityStruct(param0->scriptMan->frontier, v0);

    return 0;
}

BOOL FrontierScrCmd_5D(FrontierScriptContext *param0)
{
    BattleFactory *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_02233B98(v0, v1);

    return 0;
}

BOOL FrontierScrCmd_5E(FrontierScriptContext *param0)
{
    BattleFactory *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_022340D0(v0);

    return 0;
}

BOOL FrontierScrCmd_OpenBattleFactoryAppInitial(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_factory_app);

    static const ApplicationManagerTemplate sBattleFactoryAppTemplate = {
        BattleFactoryApp_Init,
        BattleFactoryApp_Main,
        BattleFactoryApp_Exit,
        FS_OVERLAY_ID(battle_factory_app)
    };

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactoryAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleFactoryAppArgs));

    MI_CpuClear8(args, sizeof(BattleFactoryAppArgs));

    args->saveData = fieldData->saveData;
    args->challengeType = battleFactory->challengeType;
    args->unk_05 = battleFactory->isOpenLevel;
    args->isExchangeMode = FALSE;
    args->personalParty = battleFactory->playersParty;
    args->receivableParty = battleFactory->opponentsParty;
    args->battleFactory = battleFactory;

    sub_0209B988(ctx->scriptMan->frontier, &sBattleFactoryAppTemplate, args, 0, StoreBattleFactoryAppResult);
    return TRUE;
}

BOOL FrontierScrCmd_BattleFactory_CleanupBattle(FrontierScriptContext *ctx)
{
    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldBattleDTO *dto = battleFactory->dto;

    battleFactory->wonBattle = CheckPlayerWonBattle(dto->resultMask);

    FieldBattleDTO_Free(dto);
    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_StartBattle(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    FieldBattleDTO *dto = FieldBattleDTO_NewBattleFactory(battleFactory, fieldData);
    battleFactory->dto = dto;

    sub_0209B988(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);

    return TRUE;
}

BOOL FrontierScrCmd_OpenBattleFactoryAppForTrade(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_factory_app);

    static const ApplicationManagerTemplate sBattleFactoryAppTradeTemplate = {
        BattleFactoryApp_Init,
        BattleFactoryApp_Main,
        BattleFactoryApp_Exit,
        FS_OVERLAY_ID(battle_factory_app)
    };

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    for (int i = 0; i < 6; i++) {
        battleFactory->unk_4DC[i] = 0;
    }

    BattleFactoryAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleFactoryAppArgs));
    MI_CpuClear8(args, sizeof(BattleFactoryAppArgs));

    args->saveData = fieldData->saveData;
    args->challengeType = battleFactory->challengeType;
    args->unk_05 = battleFactory->isOpenLevel;
    args->isExchangeMode = TRUE;
    args->personalParty = battleFactory->playersParty;
    args->receivableParty = battleFactory->opponentsParty;
    args->battleFactory = battleFactory;

    sub_0209B988(ctx->scriptMan->frontier, &sBattleFactoryAppTradeTemplate, args, 0, StoreBattleFactoryAppResult);
    return TRUE;
}

static void StoreBattleFactoryAppResult(void *data)
{
    BattleFactoryAppArgs *args = data;
    BattleFactory_GetMonSelectionAppResult(args->battleFactory, data);
    Heap_Free(data);
}

BOOL FrontierScrCmd_63(FrontierScriptContext *param0)
{
    BattleFactory *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_0223449C(v0);

    return 0;
}

BOOL FrontierScrCmd_64(FrontierScriptContext *param0)
{
    BattleFactory *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_02234570(v0);

    return 0;
}

BOOL FrontierScrCmd_65(FrontierScriptContext *param0)
{
    BattleFactory *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_022346A4(v0);

    return 0;
}

BOOL FrontierScrCmd_66(FrontierScriptContext *param0)
{
    BattleFactory *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_0223470C(v0);

    return 0;
}

BOOL FrontierScrCmd_CallBattleFactoryFunction(FrontierScriptContext *ctx)
{
    int i;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(ctx->scriptMan);

    switch (command) {
    case BF_FUNC_UNK_0:
        battleFactory->unk_07 = arg1;
        break;
    case BF_FUNC_UNK_1:
        battleFactory->isOpenLevel = arg1;
        break;
    case BF_FUNC_SET_CHALLENGE_TYPE:
        battleFactory->challengeType = arg1;
        break;
    case BF_FUNC_UNK_3:
        *returnVar = battleFactory->unk_4DC[arg1];
        break;
    case BF_FUNC_GET_CURRENT_STREAK:
        *returnVar = battleFactory->currentStreak;
        break;
    case BF_FUNC_INCREMENT_CURRENT_STREAK:
        if (battleFactory->currentStreak < 9999) {
            battleFactory->currentStreak++;
        }
        break;
    case BF_FUNC_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case BF_FUNC_UNK_9:
        *returnVar = BattleFactorySave_HasSaved(battleFactory->factorySave);
        break;
    case BF_FUNC_UNK_10:
        ov104_02234148(battleFactory, 2);
        break;
    case BF_FUNC_UNK_14:
        *returnVar = ov104_02234430(battleFactory);
        break;
    case BF_FUNC_UNK_15:
        *returnVar = battleFactory->unk_3F0[arg1].species;
        break;
    case BF_FUNC_UNK_16:
        *returnVar = battleFactory->unk_3F0[arg1].moves[arg2];
        break;
    case BF_FUNC_UNK_17: {
        Pokemon *v3 = Pokemon_New(HEAP_ID_FIELD2);
        FrontierPokemonDataDTO_InitPokemon(&battleFactory->unk_3F0[arg1], v3, BattleFactory_GetPokemonLevel(battleFactory));
        *returnVar = Pokemon_GetValue(v3, MON_DATA_TYPE_1, NULL);
        Heap_Free(v3);
    } break;
    case BF_FUNC_UNK_18: {
        int v0[18];
        u8 v5 = BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 1);

        for (i = 0; i < (17 + 1); i++) {
            v0[i] = 0;
        }

        Pokemon *v3 = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < v5; i++) {
            FrontierPokemonDataDTO_InitPokemon(&battleFactory->unk_3F0[i], v3, BattleFactory_GetPokemonLevel(battleFactory));

            u32 v7 = Pokemon_GetValue(v3, MON_DATA_TYPE_1, NULL);
            u32 v8 = Pokemon_GetValue(v3, MON_DATA_TYPE_2, NULL);

            if (v7 == v8) {
                v8 = 0xff;
            }

            v0[v7]++;

            if (v8 != 0xff) {
                v0[v8]++;
            }
        }

        Heap_Free(v3);

        u32 v9 = 0;

        for (i = 0; i < (17 + 1); i++) {
            if (v0[v9] < v0[i]) {
                v9 = i;
            }
        }

        if (v0[v9] <= 1) {
            *returnVar = 0xff;
        } else {
            *returnVar = v9;
        }
    } break;
    case BF_FUNC_UNK_19:
        *returnVar = ov104_0223AF34(battleFactory);
        break;
    case BF_FUNC_UNK_20:
        *returnVar = ov104_02234440(battleFactory, arg1);
        break;
    case BF_FUNC_UNK_21:
        ov104_02234474(battleFactory);
        break;
    case BF_FUNC_UNK_22:
        ov104_02234480(battleFactory);
        break;
    case BF_FUNC_UNK_23:
        *returnVar = ov104_0223443C(battleFactory);
        break;
    case BF_FUNC_UNK_24:
        *returnVar = battleFactory->unk_57C;
        break;
    case BF_FUNC_UNK_26:
        *returnVar = battleFactory->unk_57D;
        break;
    case BF_FUNC_UNK_27:
        sub_0209BA80(battleFactory);
        break;
    case BF_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *returnVar = BattleFactory_IsMultiplayerChallenge(battleFactory->challengeType);
        break;
    case BF_FUNC_GET_CHALLENGE_TYPE:
        *returnVar = battleFactory->challengeType;
        break;
    case BF_FUNC_UNK_30:
        Bg_ChangeTilemapRectPalette(graphics->bgConfig, 3, 3, 10, 26, 11, arg1);
        Bg_ScheduleTilemapTransfer(graphics->bgConfig, 3);
        break;
    case BF_FUNC_UNK_31:
        battleFactory->unk_500 = SysTask_Start(ov104_022338B4, FrontierScriptManager_GetGraphics(ctx->scriptMan), 5);
        break;
    case BF_FUNC_UNK_32:
        if (battleFactory->unk_500 != NULL) {
            SysTask_Done(battleFactory->unk_500);
            battleFactory->unk_500 = NULL;
        }
        break;
    case BF_FUNC_UNK_33:
        BattleFrontier_LoadTrainer(&(battleFactory->unk_34[0]), battleFactory->trainerIDs[battleFactory->unk_06], HEAP_ID_FIELD2, 178);
        BattleFrontier_LoadTrainer(&(battleFactory->unk_34[1]), battleFactory->trainerIDs[battleFactory->unk_06 + 7], HEAP_ID_FIELD2, 178);
        break;
    case BF_FUNC_UNK_34: {
        u8 v6 = BattleFactory_GetPlayerPartySize(battleFactory->challengeType);

        for (i = 0; i < v6; i++) {
            Pokemon *v3 = Party_GetPokemonBySlotIndex(battleFactory->playersParty, i);
            StringTemplate_SetSpeciesName(ctx->scriptMan->strTemplate, i, Pokemon_GetBoxPokemon(v3));
        }
    } break;
    case BF_FUNC_UNK_35:
        *returnVar = ov104_022347F8(battleFactory);
        break;
    case BF_FUNC_UNK_36:
        ov104_02234790(battleFactory);
        break;
    case BF_FUNC_UNK_37:
        *returnVar = 0;

        if (battleFactory->challengeType == 0) {
            if ((battleFactory->currentStreak + 1) == 21) {
                *returnVar = 1;
            } else if ((battleFactory->currentStreak + 1) == 49) {
                *returnVar = 2;
            }
        }
        break;
    case BF_FUNC_UNK_38:
        ov104_0223AE30(battleFactory);
        break;
    case BF_FUNC_UNK_39:
        ov104_0222E330(battleFactory->unk_3F0, battleFactory->unk_3D2, battleFactory->unk_3DA, battleFactory->unk_3E0, NULL, 4, 11, 179);
        break;
    case BF_FUNC_UNK_40:
        ov104_0223ADB0(battleFactory);
        break;
    case BF_FUNC_UNK_41:
        *returnVar = battleFactory->unk_0B;
        battleFactory->unk_0B = 1;
        break;
    }

    return FALSE;
}

void ov104_022338B4(SysTask *param0, void *param1)
{
    int v0;
    FrontierGraphics *v1 = param1;

    v0 = Bg_GetYOffset(v1->bgConfig, 2);

    if (v0 >= 255) {
        Bg_ScheduleScroll(v1->bgConfig, 2, 3, 0);
    } else {
        Bg_ScheduleScroll(v1->bgConfig, 2, 4, 1);
    }

    return;
}

BOOL FrontierScrCmd_BattleFactory_CheckWonBattle(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *destVar = battleFactory->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_69(FrontierScriptContext *param0)
{
    BattleFactory *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
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
    BattleFactory *v0;
    u16 v1 = FrontierScriptContext_TryGetVar(param0, param0->data[0]);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v0->unk_702 >= 2) {
        v0->unk_702 = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_6B(FrontierScriptContext *param0)
{
    u16 *v0;
    BattleFactory *v1;
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);
    u16 v3 = FrontierScriptContext_ReadByte(param0);

    v1 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_34[v3].trDataDTO.introMsg;

    BattleFrontier_PrintNormalTrainerMessage(param0, v0);
    return 1;
}

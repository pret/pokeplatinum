#include "overlay104/frscrcmd_battle_arcade.h"

#include <nitro.h>

#include "constants/battle_arcade_functions.h"
#include "constants/battle_frontier.h"

#include "applications/frontier/battle_arcade/main.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay104/battle_castle_helpers.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/frontier_particle_system.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02237DD8.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_battle_arcade.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223C634.h"

#include "battle_frontier.h"
#include "communication_information.h"
#include "field_battle_data_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "particle_system.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "sprite.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02030494.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_arcade_app);

#include <nitro/code16.h>

static BOOL ov104_02237D18(FrontierScriptContext *param0);
static void SetupBattleArcadeAppArgs(BattleArcadeAppArgs *args, BattleArcade *battleArcade);
static void ov104_02237C30(SPLEmitter *param0);
static void ov104_02237C0C(FrontierScriptContext *param0, BattleArcade *param1, u16 param2);
static void StoreBattleArcadeAppResults(void *data);

BOOL FrontierScrCmd_B8(FrontierScriptContext *param0)
{
    BattleArcade *v0;
    FieldFrontierDTO *fieldData;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);
    u16 v5 = FrontierScriptContext_GetVar(param0);
    u16 v6 = FrontierScriptContext_GetVar(param0);
    u16 *v7 = FrontierScriptContext_TryGetVarPointer(param0);

    fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);
    v0 = ov104_02237DD8(fieldData->saveData, v2, v3, v4, v5, v6, v7);

    BattleFrontier_SetFacilityStruct(param0->scriptMan->frontier, v0);
    return 0;
}

BOOL FrontierScrCmd_B9(FrontierScriptContext *param0)
{
    BattleArcade *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_0223806C(v0, v1);

    return 0;
}

BOOL FrontierScrCmd_BA(FrontierScriptContext *param0)
{
    BattleArcade *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_02238210(v0);

    return 0;
}

BOOL FrontierScrCmd_OpenBattleArcadeApp(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_arcade_app);

    static const ApplicationManagerTemplate sBattleArcadeAppTemplate = {
        BattleArcadeApp_Init,
        BattleArcadeApp_Main,
        BattleArcadeApp_Exit,
        FS_OVERLAY_ID(battle_arcade_app)
    };

    BattleArcade *battleArcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcadeAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleArcadeAppArgs));

    MI_CpuClear8(args, sizeof(BattleArcadeAppArgs));
    args->saveData = fieldData->saveData;

    SetupBattleArcadeAppArgs(args, battleArcade);
    sub_0209B988(ctx->scriptMan->frontier, &sBattleArcadeAppTemplate, args, 0, StoreBattleArcadeAppResults);

    return TRUE;
}

BOOL FrontierScrCmd_BattleArcade_CleanupBattle(FrontierScriptContext *ctx)
{
    int i, partyIdx1, partyIdx2, numMons, stat;

    BattleArcade *battleArcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldBattleDTO *dto = battleArcade->dto;

    battleArcade->unk_1D = ov104_02238538(battleArcade, dto->parties[0], dto->parties[2], dto->totalTurnsElapsed);
    battleArcade->wonBattle = CheckPlayerWonBattle(dto->resultMask);

    if (battleArcade->activeEffect == ARCADE_EFFECT_SWAP_MONS) {
        partyIdx1 = BATTLER_ENEMY_1;
        partyIdx2 = BATTLER_ENEMY_2;
    } else {
        partyIdx1 = BATTLER_PLAYER_1;
        partyIdx2 = BATTLER_PLAYER_2;
    }

    ov104_02239054(dto->parties[partyIdx1], battleArcade->playersParty, 0, 0);
    ov104_02239054(dto->parties[partyIdx1], battleArcade->playersParty, 1, 1);

    if (!BattleCastle_IsMultiPlayerChallenge(battleArcade->challengeType)) {
        ov104_02239054(dto->parties[partyIdx1], battleArcade->playersParty, 2, 2);
    } else {
        ov104_02239054(dto->parties[partyIdx2], battleArcade->playersParty, 0, 2);
        ov104_02239054(dto->parties[partyIdx2], battleArcade->playersParty, 1, 3);
    }

    if (battleArcade->activeEffect == ARCADE_EFFECT_ALLY_LEVEL_UP) {
        u8 numMons = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, FRONTIER_CHALLENGE_DOUBLE);

        for (i = 0; i < numMons; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(battleArcade->playersParty, i);
            u32 level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
            level -= 3;

            u32 exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);
            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
            Pokemon_CalcLevelAndStats(mon);
        }
    }

    numMons = Party_GetCurrentCount(battleArcade->playersParty);
    for (i = 0; i < numMons; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(battleArcade->playersParty, i);

        stat = battleArcade->monHP[i];
        Pokemon_SetValue(mon, MON_DATA_MAX_HP, &stat);
        Pokemon_SetValue(mon, MON_DATA_HP, &stat);

        stat = battleArcade->monAtk[i];
        Pokemon_SetValue(mon, MON_DATA_ATK, &stat);

        stat = battleArcade->monDef[i];
        Pokemon_SetValue(mon, MON_DATA_DEF, &stat);

        stat = battleArcade->monSpeed[i];
        Pokemon_SetValue(mon, MON_DATA_SPEED, &stat);

        stat = battleArcade->monSpAtk[i];
        Pokemon_SetValue(mon, MON_DATA_SP_ATK, &stat);

        stat = battleArcade->monSpDef[i];
        Pokemon_SetValue(mon, MON_DATA_SP_DEF, &stat);
    }

    FieldBattleDTO_Free(dto);
    return FALSE;
}

BOOL FrontierScrCmd_BattleArcade_StartBattle(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleArcade *battleArcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    FieldBattleDTO *dto = FieldBattleDTO_NewBattleArcade(battleArcade, fieldData);
    battleArcade->dto = dto;

    sub_0209B988(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);
    return TRUE;
}

static void SetupBattleArcadeAppArgs(BattleArcadeAppArgs *args, BattleArcade *battleArcade)
{
    args->challengeType = battleArcade->challengeType;
    args->round = ov104_0223C124(battleArcade);
    args->unk_14 = &battleArcade->unk_20;
    args->selectedEffect = &battleArcade->activeEffect;
    args->unk_07 = battleArcade->unk_1D;
    args->currentStreak = battleArcade->currentStreak;
    args->partnersStreak = battleArcade->unk_A78;
    args->rouletteSpeed = &battleArcade->unk_1C;
    args->party = battleArcade->playersParty;
    args->opponentsParty = battleArcade->opponentsParty;
    args->battleArcade = battleArcade;
    battleArcade->weather = 0;
    args->unk_08 = &battleArcade->weather;
    args->randomizeCursorMovement = battleArcade->unk_12;
    battleArcade->unk_12 = 0;
    battleArcade->unk_1F = 0;

    int numMons = Party_GetCurrentCount(battleArcade->playersParty);
    for (int i = 0; i < numMons; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(battleArcade->playersParty, i);

        battleArcade->monHP[i] = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        battleArcade->monAtk[i] = Pokemon_GetValue(mon, MON_DATA_ATK, NULL);
        battleArcade->monDef[i] = Pokemon_GetValue(mon, MON_DATA_DEF, NULL);
        battleArcade->monSpeed[i] = Pokemon_GetValue(mon, MON_DATA_SPEED, NULL);
        battleArcade->monSpAtk[i] = Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL);
        battleArcade->monSpDef[i] = Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL);
    }
}

static void StoreBattleArcadeAppResults(void *data)
{
    BattleArcadeAppArgs *args = data;

    BattleArcade_StoreAppResults(args->battleArcade, data);
    Heap_Free(data);
}

BOOL FrontierScrCmd_BD(FrontierScriptContext *param0)
{
    BattleArcade *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_022384D4(v0);

    return 0;
}

BOOL FrontierScrCmd_BE(FrontierScriptContext *param0)
{
    BattleArcade *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_022384DC(v0);

    return 0;
}

BOOL FrontierScrCmd_CallBattleArcadeFunction(FrontierScriptContext *ctx)
{
    Pokemon *v1;
    int v11;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_GetVar(ctx);
    u8 arg2 = FrontierScriptContext_GetVar(ctx);
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleArcade *battleArcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(ctx->scriptMan);

    switch (command) {
    case BA_FUNC_SET_CHALLENGE_TYPE:
        battleArcade->challengeType = arg1;
        break;
    case BA_FUNC_UNK_3:
        *destVar = battleArcade->appCursorPos[arg1];
        break;
    case BA_FUNC_UNK_4:
        *destVar = battleArcade->currentStreak;
        break;
    case BA_FUNC_INCREMENT_CURRENT_STREAK:
        if (battleArcade->currentStreak < 9999) {
            battleArcade->currentStreak++;
        }
        break;
    case BA_FUNC_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case BA_FUNC_UNK_9:
        *destVar = sub_020304B0(battleArcade->unk_08);
        break;
    case BA_FUNC_UNK_10:
        ov104_02238278(battleArcade, 2);
        break;
    case BA_FUNC_UNK_12:
        *destVar = ov104_0223C0BC(battleArcade, battleArcade->activeEffect);
        break;
    case BA_FUNC_UNK_14:
        *destVar = ov104_02238454(battleArcade);
        break;
    case BA_FUNC_UNK_15:
        if (arg1 == 0) {
            v1 = Party_GetPokemonBySlotIndex(battleArcade->playersParty, 0);
        } else {
            v1 = Party_GetPokemonBySlotIndex(battleArcade->opponentsParty, 0);
        }

        *destVar = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);
        break;
    case BA_FUNC_UNK_16:
        *destVar = battleArcade->activeEffect;
        break;
    case BA_FUNC_UNK_18: {
        Party *v2 = SaveData_GetParty(fieldData->saveData);

        for (v11 = 0; v11 < 3; v11++) {
            v1 = Party_GetPokemonBySlotIndex(v2, battleArcade->unk_2C[v11]);
            Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &battleArcade->unk_412[v11]);
        }
    } break;
    case BA_FUNC_UNK_19:
        *destVar = ov104_0223C124(battleArcade);
        break;
    case BA_FUNC_UNK_20:
        *destVar = ov104_02238464(battleArcade, arg1);
        break;
    case BA_FUNC_UNK_21:
        ov104_022384A8(battleArcade);
        break;
    case BA_FUNC_UNK_22:
        ov104_022384B4(battleArcade);
        break;
    case BA_FUNC_UNK_23:
        *destVar = ov104_02238460(battleArcade);
        break;
    case BA_FUNC_UNK_24:
        *destVar = battleArcade->unk_A74;
        break;
    case BA_FUNC_UNK_25:
        if (battleArcade->activeEffect == 27) {
            u8 v4 = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, 1);
            u8 v5 = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 1);

            {
                VecFx32 v21;
                VecFx32 v22;
                Sprite *v23;
                Sprite *v24;

                for (v11 = 0; v11 < v4; v11++) {
                    v23 = battleArcade->unk_30[v11]->sprite;
                    v21 = *(Sprite_GetPosition((const Sprite *)v23));

                    v24 = battleArcade->unk_40[v11]->sprite;
                    v22 = *(Sprite_GetPosition((const Sprite *)v24));

                    Sprite_SetPosition(v23, &v22);
                    Sprite_SetPosition(v24, &v21);

                    v23 = battleArcade->unk_50[v11]->sprite;
                    v21 = *(Sprite_GetPosition((const Sprite *)v23));

                    v24 = battleArcade->unk_60[v11]->sprite;
                    v22 = *(Sprite_GetPosition((const Sprite *)v24));

                    Sprite_SetPosition(v23, &v22);
                    Sprite_SetPosition(v24, &v21);
                }
            }
        }
        break;
    case BA_FUNC_UNK_6:
        sub_0209BA80(battleArcade);
        break;
    case BA_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *destVar = BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType);
        break;
    case BA_FUNC_GET_CHALLENGE_TYPE:
        *destVar = battleArcade->challengeType;
        break;
    case BA_FUNC_UNK_29:
        ov104_02232EC0(graphics);
        break;
    case BA_FUNC_UNK_30:
        ov104_02232F28(graphics);
        break;
    case BA_FUNC_UNK_31:
        ov104_02238764(battleArcade, graphics, arg1);

        u8 v4 = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, 1);
        u8 v5 = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 1);

        if (arg1 == 0) {
            for (v11 = 0; v11 < v4; v11++) {
                Sprite_SetExplicitPriority(battleArcade->unk_30[v11]->sprite, 2);
            }
        } else {
            for (v11 = 0; v11 < v5; v11++) {
                Sprite_SetExplicitPriority(battleArcade->unk_40[v11]->sprite, 2);
            }
        }
        break;
    case BA_FUNC_UNK_32:
        ov104_02238814(battleArcade, graphics, arg1);
        break;
    case BA_FUNC_UNK_33:
        ov104_02232FEC(graphics);
        break;
    case BA_FUNC_UNK_34:
        ov104_0223307C(graphics);
        break;
    case BA_FUNC_UNK_35:
        ov104_022388DC(battleArcade, graphics, arg1);
        break;
    case BA_FUNC_UNK_36:
        ov104_022389A0(battleArcade, graphics, arg1);
        break;
    case BA_FUNC_UNK_11:
        ov104_02238658(battleArcade, graphics);
        break;
    case BA_FUNC_UNK_37:
        if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == 1) {
            ov104_02238728(battleArcade, graphics);
        }
        break;
    case BA_FUNC_UNK_38: {
        u8 v6 = BattleArcade_GetCategoryFromEffect(battleArcade->activeEffect);

        TrainerInfo *v16;
        if (v6 == 0) {
            StringTemplate_SetFrontierTrainerName(ctx->scriptMan->strTemplate, arg1, battleArcade->trainerIDs[ov104_02238498(battleArcade, arg2)]);
        } else {
            if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == 0) {
                v16 = SaveData_GetTrainerInfo(fieldData->saveData);
            } else {
                v16 = CommInfo_TrainerInfo(arg2);
            }

            StringTemplate_SetPlayerName(ctx->scriptMan->strTemplate, arg1, v16);
        }
    } break;
    case BA_FUNC_UNK_39:
        battleArcade->unk_A7A = arg2;
        ov104_02237C0C(ctx, battleArcade, arg1);
        break;
    case BA_FUNC_UNK_40:
        BattleFrontier_LoadTrainer(&(battleArcade->unk_F4[0]), battleArcade->trainerIDs[battleArcade->unk_11], HEAP_ID_FIELD2, 178);
        BattleFrontier_LoadTrainer(&(battleArcade->unk_F4[1]), battleArcade->trainerIDs[battleArcade->unk_11 + 7], HEAP_ID_FIELD2, 178);
        break;
    case BA_FUNC_UNK_41:
        ov104_0223886C(battleArcade, graphics, arg1, arg2);
        break;
    case BA_FUNC_UNK_42:
        ov104_022388A4(battleArcade, graphics, arg1, arg2);
        break;
    case BA_FUNC_UNK_43:
        ov104_02238AB4(arg1, arg2);
        break;
    case BA_FUNC_UNK_44:
        if (arg1 == 0) {
            PaletteData_Blend(graphics->plttData, 2, 0, 16 * 16, arg1, 0x0);
        } else {
            {
                u32 v25;
                UnkStruct_ov104_0223C634 *v26;
                Sprite *v27;

                v26 = ov104_0223D5A8(ctx->scriptMan->frontier, arg2);
                v25 = ov63_0222D050(v26->sprite);

                PaletteData_Blend(graphics->plttData, 2, v25 * 16, 16, arg1, 0x0);
            }
        }
        break;
    case BA_FUNC_UNK_45:
        *destVar = ov104_02239014(battleArcade);
        break;
    case BA_FUNC_UNK_46:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        break;
    case BA_FUNC_UNK_47:
        *destVar = battleArcade->unk_1F;
        break;
    case BA_FUNC_UNK_48:
        *destVar = 0;

        if (battleArcade->challengeType == 0) {
            if ((battleArcade->currentStreak + 1) == 21) {
                *destVar = 1;
            } else if ((battleArcade->currentStreak + 1) == 49) {
                *destVar = 2;
            }
        }
        break;
    case BA_FUNC_UNK_49:
        ov104_0222E330(battleArcade->unk_330, battleArcade->unk_314, battleArcade->unk_31C, battleArcade->unk_320, NULL, 4, 11, 179);
        break;
    case BA_FUNC_UNK_50:
        ov104_0223C04C(battleArcade);
        break;
    case BA_FUNC_UNK_51:
        *destVar = battleArcade->unk_1E;
        battleArcade->unk_1E = 1;
        break;
    case BA_FUNC_UNK_52:
        battleArcade->unk_A7C = 0;
        break;
    }

    return FALSE;
}

static void ov104_02237C0C(FrontierScriptContext *param0, BattleArcade *param1, u16 param2)
{
    FrontierScriptManager *v0 = param0->scriptMan;
    FrontierGraphics *v1 = FrontierScriptManager_GetGraphics(param0->scriptMan);
    ParticleSystem *v2 = FrontierParticleSystem_GetParticleSystem(v1->particleSys, 0);
    ParticleSystem_CreateEmitterWithCallback(v2, param2, ov104_02237C30, param1);

    return;
}

static void ov104_02237C30(SPLEmitter *param0)
{
    VecFx32 v0;
    VecFx16 v1;
    BattleArcade *v2 = ParticleSystem_GetEmitterCallbackParam();
    const VecFx32 v3[] = { FX32_ONE * -1, 0, 0 };

    if (v2->unk_A7A == 1) {
        ParticleSystem_GetEmitterAxis(param0, &v1);
        v1.x *= -1;

        SPLEmitter_SetAxis(param0, &v1);
        SPLEmitter_SetPos(param0, v3);
    }

    return;
}

BOOL FrontierScrCmd_BattleArcade_CheckWonBattle(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleArcade *battleArcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *destVar = battleArcade->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_C1(FrontierScriptContext *param0)
{
    BattleArcade *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    *v3 = ov104_02238B40(v0, v1, v2);

    return 1;
}

BOOL FrontierScrCmd_C2(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_02237D18);

    return 1;
}

static BOOL ov104_02237D18(FrontierScriptContext *param0)
{
    BattleArcade *v0;
    u16 v1 = FrontierScriptContext_TryGetVar(param0, param0->data[0]);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v0->unk_A7C >= 2) {
        v0->unk_A7C = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_C4(FrontierScriptContext *param0)
{
    u16 *v0;
    BattleArcade *v1;
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);
    u16 v3 = FrontierScriptContext_ReadByte(param0);

    v1 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_F4[v3].trDataDTO.introMsg;
    BattleFrontier_PrintNormalTrainerMessage(param0, v0);

    return 1;
}

BOOL FrontierScrCmd_C5(FrontierScriptContext *param0)
{
    BattleArcade *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_02238B88(v0, v0->activeEffect);

    return 1;
}

BOOL FrontierScrCmd_C6(FrontierScriptContext *param0)
{
    BattleArcade *v0;
    FrontierGraphics *v1 = FrontierScriptManager_GetGraphics(param0->scriptMan);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_022389F4(v0, v1, v2, v3, v4);

    return 0;
}

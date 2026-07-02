#include "overlay104/frscrcmd_battle_arcade.h"

#include <nitro.h>

#include "constants/battle_arcade_functions.h"
#include "constants/battle_frontier.h"

#include "applications/frontier/battle_arcade/main.h"
#include "global/utility.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay104/battle_castle_helpers.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/frontier_opponents.h"
#include "overlay104/frontier_particle_system.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/frscrcmd.h"
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

static BOOL WaitForCommResponses(FrontierScriptContext *ctx);
static void SetupBattleArcadeAppArgs(BattleArcadeAppArgs *args, BattleArcade *battleArcade);
static void EmitterCallback(SPLEmitter *emitter);
static void CreateEmitter(FrontierScriptContext *ctx, BattleArcade *arcade, u16 resourceID);
static void StoreBattleArcadeAppResults(void *data);

BOOL FrontierScrCmd_InitBattleArcade(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 partySlot1 = FrontierScriptContext_GetVar(ctx);
    u16 partySlot2 = FrontierScriptContext_GetVar(ctx);
    u16 partySlot3 = FrontierScriptContext_GetVar(ctx);
    u16 *v7 = FrontierScriptContext_TryGetVarPointer(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleArcade *arcade = BattleArcade_Init(fieldData->saveData, resumingFromSave, challengeType, partySlot1, partySlot2, partySlot3, v7);

    BattleFrontier_SetFacilityStruct(ctx->scriptMan->frontier, arcade);
    return FALSE;
}

BOOL FrontierScrCmd_BattleArcade_LoadTrainersForRound(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);

    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcade_LoadTrainersForRound(arcade, resumingFromSave);

    return FALSE;
}

BOOL FrontierScrCmd_FreeBattleArcade(FrontierScriptContext *ctx)
{
    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcade_Free(arcade);

    return FALSE;
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

    battleArcade->performance = BattleArcade_GetPerformance(battleArcade, dto->parties[0], dto->parties[2], dto->totalTurnsElapsed);
    battleArcade->wonBattle = CheckPlayerWonBattle(dto->resultMask);

    if (battleArcade->activeEffect == ARCADE_EFFECT_SWAP_MONS) {
        partyIdx1 = BATTLER_ENEMY_1;
        partyIdx2 = BATTLER_ENEMY_2;
    } else {
        partyIdx1 = BATTLER_PLAYER_1;
        partyIdx2 = BATTLER_PLAYER_2;
    }

    BattleArcade_SaveItemsAfterBattle(dto->parties[partyIdx1], battleArcade->playersParty, 0, 0);
    BattleArcade_SaveItemsAfterBattle(dto->parties[partyIdx1], battleArcade->playersParty, 1, 1);

    if (!BattleCastle_IsMultiPlayerChallenge(battleArcade->challengeType)) {
        BattleArcade_SaveItemsAfterBattle(dto->parties[partyIdx1], battleArcade->playersParty, 2, 2);
    } else {
        BattleArcade_SaveItemsAfterBattle(dto->parties[partyIdx2], battleArcade->playersParty, 0, 2);
        BattleArcade_SaveItemsAfterBattle(dto->parties[partyIdx2], battleArcade->playersParty, 1, 3);
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

    FieldBattleDTO *dto = BattleArcade_SetupBattle(battleArcade, fieldData);
    battleArcade->dto = dto;

    sub_0209B988(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);
    return TRUE;
}

static void SetupBattleArcadeAppArgs(BattleArcadeAppArgs *args, BattleArcade *battleArcade)
{
    args->challengeType = battleArcade->challengeType;
    args->round = BattleArcade_GetCurrentRound(battleArcade);
    args->randomIndex = &battleArcade->randomIndex;
    args->selectedEffect = &battleArcade->activeEffect;
    args->performance = battleArcade->performance;
    args->currentStreak = battleArcade->currentStreak;
    args->partnersStreak = battleArcade->unk_A78;
    args->rouletteSpeed = &battleArcade->rouletteSpeed;
    args->party = battleArcade->playersParty;
    args->opponentsParty = battleArcade->opponentsParty;
    args->battleArcade = battleArcade;
    battleArcade->weather = OVERWORLD_WEATHER_CLEAR;
    args->weather = &battleArcade->weather;
    args->randomizeCursorMovement = battleArcade->cursorRandomized;
    battleArcade->cursorRandomized = FALSE;
    battleArcade->immuneToEffect = FALSE;

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

BOOL FrontierScrCmd_BattleArcade_SetupFirstOpponent(FrontierScriptContext *ctx)
{
    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcade_SetupFirstOpponentsParty(arcade);

    return FALSE;
}

BOOL FrontierScrCmd_BattleArcade_SetupNextOpponent(FrontierScriptContext *ctx)
{
    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcade_SetupNextOpponentsParty(arcade);

    return FALSE;
}

BOOL FrontierScrCmd_CallBattleArcadeFunction(FrontierScriptContext *ctx)
{
    Pokemon *mon;
    int i;
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
    case BA_FUNC_GET_APP_CURSOR_POS:
        *destVar = battleArcade->appCursorPos[arg1];
        break;
    case BA_FUNC_GET_CURRENT_STREAK:
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
    case BA_FUNC_HAS_SAVED:
        *destVar = BattleArcadeSave_HasSaved(battleArcade->arcadeSave);
        break;
    case BA_FUNC_QUICKSAVE:
        BattleArcade_Save(battleArcade, 2);
        break;
    case BA_FUNC_GET_FREE_BP:
        *destVar = BattleArcade_GetFreeBPFromEvent(battleArcade, battleArcade->activeEffect);
        break;
    case BA_FUNC_INCREMENT_CURRENT_BATTLE:
        *destVar = BattleArcade_IncrementCurrentBattle(battleArcade);
        break;
    case BA_FUNC_GET_HELD_ITEM:
        if (arg1 == 0) {
            mon = Party_GetPokemonBySlotIndex(battleArcade->playersParty, 0);
        } else {
            mon = Party_GetPokemonBySlotIndex(battleArcade->opponentsParty, 0);
        }

        *destVar = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        break;
    case BA_FUNC_GET_ACTIVE_EFFECT:
        *destVar = battleArcade->activeEffect;
        break;
    case BA_FUNC_RESTORE_HELD_ITEMS: {
        Party *party = SaveData_GetParty(fieldData->saveData);

        for (i = 0; i < ARCADE_PARTY_SIZE_SOLO; i++) {
            mon = Party_GetPokemonBySlotIndex(party, battleArcade->partySlots[i]);
            Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &battleArcade->savedHeldItems[i]);
        }
    } break;
    case BA_FUNC_GET_CURRENT_ROUND:
        *destVar = BattleArcade_GetCurrentRound(battleArcade);
        break;
    case BA_FUNC_GET_OPPONENT_OBJECT_ID:
        *destVar = BattleArcade_GetNextOpponentObjectID(battleArcade, arg1);
        break;
    case BA_FUNC_SAVE_ON_LOSS:
        BattleArcade_SaveOnLoss(battleArcade);
        break;
    case BA_FUNC_SAVE_ON_COMPLETING_ROUND:
        BattleArcade_SaveOnCompletingRound(battleArcade);
        break;
    case BA_FUNC_GET_CURRENT_BATTLE:
        *destVar = BattleArcade_GetCurrentBattle(battleArcade);
        break;
    case BA_FUNC_UNK_24:
        *destVar = battleArcade->unk_A74;
        break;
    case BA_FUNC_SWAP_MON_SPRITES:
        if (battleArcade->activeEffect == ARCADE_EFFECT_SWAP_MONS) {
            u8 playerPartySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, TRUE);
            u8 opponentPartySize = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, TRUE);

            for (i = 0; i < playerPartySize; i++) {
                Sprite *sprite1 = battleArcade->playerMonSprites[i]->sprite;
                VecFx32 position1 = *Sprite_GetPosition(sprite1);

                Sprite *sprite2 = battleArcade->opponentMonSprites[i]->sprite;
                VecFx32 position2 = *Sprite_GetPosition(sprite2);

                Sprite_SetPosition(sprite1, &position2);
                Sprite_SetPosition(sprite2, &position1);

                sprite1 = battleArcade->playerItemSprites[i]->sprite;
                position1 = *Sprite_GetPosition(sprite1);

                sprite2 = battleArcade->opponentItemSprites[i]->sprite;
                position2 = *Sprite_GetPosition(sprite2);

                Sprite_SetPosition(sprite1, &position2);
                Sprite_SetPosition(sprite2, &position1);
            }
        }
        break;
    case BA_FUNC_INIT_COMM_MANAGER:
        sub_0209BA80(battleArcade);
        break;
    case BA_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *destVar = BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType);
        break;
    case BA_FUNC_GET_CHALLENGE_TYPE:
        *destVar = battleArcade->challengeType;
        break;
    case BA_FUNC_LOAD_MON_SPRITE_DATA:
        BattleFrontier_LoadMonSpriteData(graphics);
        break;
    case BA_FUNC_UNLOAD_MON_SPRITE_DATA:
        BattleFrontier_UnloadMonSpriteData(graphics);
        break;
    case BA_FUNC_CREATE_MON_SPRITES:
        BattleArcade_CreateMonSprites(battleArcade, graphics, arg1);

        u8 playerPartySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, TRUE);
        u8 opponentPartySize = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, TRUE);

        if (arg1 == 0) {
            for (i = 0; i < playerPartySize; i++) {
                Sprite_SetExplicitPriority(battleArcade->playerMonSprites[i]->sprite, 2);
            }
        } else {
            for (i = 0; i < opponentPartySize; i++) {
                Sprite_SetExplicitPriority(battleArcade->opponentMonSprites[i]->sprite, 2);
            }
        }
        break;
    case BA_FUNC_DELETE_MON_SPRITES:
        BattleArcade_DeleteMonSprites(battleArcade, graphics, arg1);
        break;
    case BA_FUNC_LOAD_ITEM_SPRITE_DATA:
        BattleFrontier_LoadItemSpriteData(graphics);
        break;
    case BA_FUNC_UNLOAD_ITEM_SPRITE_DATA:
        BattleFrontier_UnloadItemSpriteData(graphics);
        break;
    case BA_FUNC_CREATE_ITEM_SPRITES:
        BattleArcade_CreateItemSprites(battleArcade, graphics, arg1);
        break;
    case BA_FUNC_DELETE_ITEM_SPRITES:
        BattleArcade_DeleteItemSprites(battleArcade, graphics, arg1);
        break;
    case BA_FUNC_SET_EFFECT_BACKGROUND:
        BattleArcade_UpdateBackgroundForEffect(battleArcade, graphics);
        break;
    case BA_FUNC_LOAD_NORMAL_BACKGROUND:
        if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == TRUE) {
            BattleArcade_LoadNormalBackground(battleArcade, graphics);
        }
        break;
    case BA_FUNC_SET_NAME_OF_AFFECTED_TRAINER: {
        u8 effectCategory = BattleArcade_GetCategoryFromEffect(battleArcade->activeEffect);

        TrainerInfo *trainerInfo;
        if (effectCategory == ARCADE_EFFECT_CATEGORY_FOE) {
            StringTemplate_SetFrontierTrainerName(ctx->scriptMan->strTemplate, arg1, battleArcade->trainerIDs[BattleArcade_GetTrainerOffset(battleArcade, arg2)]);
        } else {
            if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == FALSE) {
                trainerInfo = SaveData_GetTrainerInfo(fieldData->saveData);
            } else {
                trainerInfo = CommInfo_TrainerInfo(arg2);
            }

            StringTemplate_SetPlayerName(ctx->scriptMan->strTemplate, arg1, trainerInfo);
        }
    } break;
    case BA_FUNC_CREATE_EMITTER:
        battleArcade->unk_A7A = arg2;
        CreateEmitter(ctx, battleArcade, arg1);
        break;
    case BA_FUNC_LOAD_TRAINERS:
        BattleFrontier_LoadTrainer(&(battleArcade->opponents[0]), battleArcade->trainerIDs[battleArcade->currentBattle], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        BattleFrontier_LoadTrainer(&(battleArcade->opponents[1]), battleArcade->trainerIDs[battleArcade->currentBattle + ARCADE_BATTLES_PER_ROUND], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        break;
    case BA_FUNC_SET_DRAW_FLAG_PLAYER_MON:
        BattleArcade_SetPlayerMonSpriteDrawFlag(battleArcade, graphics, arg1, arg2);
        break;
    case BA_FUNC_SET_DRAW_FLAG_OPPONENT_MON:
        BattleArcade_SetOpponentMonSpriteDrawFlag(battleArcade, graphics, arg1, arg2);
        break;
    case BA_FUNC_SET_PALETTE:
        BattleArcade_SetPalette(arg1, arg2);
        break;
    case BA_FUNC_UNK_44:
        if (arg1 == 0) {
            PaletteData_Blend(graphics->plttData, PLTTBUF_MAIN_OBJ, 0, 16 * 16, arg1, 0);
        } else {
            UnkStruct_ov104_0223C634 *v26 = ov104_0223D5A8(ctx->scriptMan->frontier, arg2);
            u32 v25 = ov63_0222D050(v26->sprite);

            PaletteData_Blend(graphics->plttData, PLTTBUF_MAIN_OBJ, v25 * 16, 16, arg1, 0);
        }
        break;
    case BA_FUNC_GET_EARNED_BP:
        *destVar = BattleArcade_GetEarnedBP(battleArcade);
        break;
    case BA_FUNC_DISABLE_BG2_LAYER:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        break;
    case BA_FUNC_CHECK_IMMUNE_TO_EFFECT:
        *destVar = battleArcade->immuneToEffect;
        break;
    case BA_FUNC_GET_NEXT_BATTLE_TYPE:
        *destVar = FRONTIER_NEXT_BATTLE_NORMAL;

        if (battleArcade->challengeType == FRONTIER_CHALLENGE_SINGLE) {
            if (battleArcade->currentStreak + 1 == ARCADE_STREAK_SILVER_BATTLE) {
                *destVar = FRONTIER_NEXT_BATTLE_SILVER;
            } else if (battleArcade->currentStreak + 1 == ARCADE_STREAK_GOLD_BATTLE) {
                *destVar = FRONTIER_NEXT_BATTLE_GOLD;
            }
        }
        break;
    case BA_FUNC_CREATE_OPPONENT_MONS:
        BattleFrontier_LoadFrontierPokemon(battleArcade->opponentMons, battleArcade->monSetIDs, battleArcade->opponentMonIVs, battleArcade->opponentMonPersonalities, NULL, 4, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
        break;
    case BA_FUNC_SETUP_OPPONENTS_PARTY:
        BattleArcade_SetupOpponentsParty(battleArcade);
        break;
    case BA_FUNC_CHECK_SEEN_STAR_INTRO:
        *destVar = battleArcade->seenArcadeStarIntro;
        battleArcade->seenArcadeStarIntro = TRUE;
        break;
    case BA_FUNC_CLEAR_MSGS_RECEIVED:
        battleArcade->msgsReceived = 0;
        break;
    }

    return FALSE;
}

static void CreateEmitter(FrontierScriptContext *ctx, BattleArcade *arcade, u16 resourceID)
{
    FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(ctx->scriptMan);
    ParticleSystem *ps = FrontierParticleSystem_GetParticleSystem(graphics->particleSys, 0);
    ParticleSystem_CreateEmitterWithCallback(ps, resourceID, EmitterCallback, arcade);
}

static void EmitterCallback(SPLEmitter *emitter)
{
    VecFx16 axis;
    BattleArcade *arcade = ParticleSystem_GetEmitterCallbackParam();
    const VecFx32 pos[] = { FX32_CONST(-1), 0, 0 };

    if (arcade->unk_A7A == 1) {
        ParticleSystem_GetEmitterAxis(emitter, &axis);
        axis.x *= -1;

        SPLEmitter_SetAxis(emitter, &axis);
        SPLEmitter_SetPos(emitter, pos);
    }
}

BOOL FrontierScrCmd_BattleArcade_CheckWonBattle(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleArcade *battleArcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *destVar = battleArcade->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_BattleArcade_SendCommMessage(FrontierScriptContext *ctx)
{
    u16 command = FrontierScriptContext_GetVar(ctx);
    u16 arg = FrontierScriptContext_GetVar(ctx);
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *success = BattleArcade_SendCommMessage(arcade, command, arg);

    return TRUE;
}

BOOL FrontierScrCmd_BattleArcade_WaitForCommResponses(FrontierScriptContext *ctx)
{
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, WaitForCommResponses);

    return TRUE;
}

static BOOL WaitForCommResponses(FrontierScriptContext *ctx)
{
    UNUSED(FrontierScriptContext_TryGetVar(ctx, ctx->data[0]));

    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (arcade->msgsReceived >= 2) {
        arcade->msgsReceived = 0;
        return TRUE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleArcade_PrintTrainerIntro(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    u16 index = FrontierScriptContext_ReadByte(ctx);

    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (arcade == NULL) {
        return FALSE;
    }

    u16 *introMsg = arcade->opponents[index].trainer.introMsg;

    BattleFrontier_PrintNormalTrainerMessage(ctx, introMsg);
    return TRUE;
}

BOOL FrontierScrCmd_ApplyArcadeEffect(FrontierScriptContext *ctx)
{
    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcade_ApplyEffect(arcade, arcade->activeEffect);

    return TRUE;
}

BOOL FrontierScrCmd_SetItemDrawFlag(FrontierScriptContext *ctx)
{
    FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(ctx->scriptMan);
    u16 isOpponent = FrontierScriptContext_GetVar(ctx);
    u16 slot = FrontierScriptContext_GetVar(ctx);
    u16 draw = FrontierScriptContext_GetVar(ctx);

    BattleArcade *arcade = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleArcade_SetItemDrawFlag(arcade, graphics, isOpponent, slot, draw);

    return FALSE;
}

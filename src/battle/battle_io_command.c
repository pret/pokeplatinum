#include "battle/battle_io_command.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_controller.h"
#include "generated/battle_boot_states.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"
#include "struct_defs/move_animation.h"

#include "battle/battle_controller.h"
#include "battle/battle_cursor.h"
#include "battle/battle_display.h"
#include "battle/battle_message.h"
#include "battle/battle_system.h"
#include "battle/common.h"
#include "battle/healthbar.h"
#include "battle/message_defs.h"
#include "battle/ov16_02264798.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0223C2C0.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle_anim/ov12_02235E94.h"
#include "battle_anim/ov12_022380BC.h"
#include "battle_anim/struct_ov12_02237728.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "flags.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"

typedef void (*BattleCommandPtr)(BattleSystem *, BattlerData *);

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1);
void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225C104(BattleSystem *battleSys, BattlerData *battlerData, int param2);
void ov16_0225C038(BattleSystem *battleSys, BattlerData *battlerData, int ballID, int unused);
static void BtlIOCmd_None(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetupUI(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetEncounter(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowEncounter(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowPokemon(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ReturnPokemon(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_OpenCaptureBall(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_DeletePokemon(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetTrainerEncounter(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ThrowTrainerBall(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideTrainerOut(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideTrainerIn(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetCommandSelection(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowMoveSelectMenu(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowTargetSelectMenu(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowBagMenu(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowPartyMenu(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowYesNoMenu(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintAttackMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintBattleMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetMoveAnimation(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_FlickerBattler(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_UpdateHPGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_UpdateExpGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PlayFaintingSequence(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PlaySound(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_FadeOut(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ToggleVanish(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetStatusIcon(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintTrainerMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintRecallMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintSendOutMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintBattleStartMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintLeadMonMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PlayLevelUpAnimation(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetAlertMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_RefreshHPGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_UpdatePartyMon(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C558(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_StopGaugeAnimation(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_RefreshPartyStatus(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ForgetMove(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SetMosaic(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ChangeWeatherForm(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_UpdateBg(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ClearTouchScreen(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_HideBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ShowPartyGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_HidePartyGauge(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_LoadPartyGaugeGraphics(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_FreePartyGaugeGraphics(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_IncrementRecord(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintLinkWaitMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_RestoreSprite(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SpriteToOAM(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_OAMToSprite(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintResultMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintEscapeMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintForfeitMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_RefreshSprite(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_FlyMoveHitSoundEffect(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PlayMusic(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SubmitResult(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_ClearMessageBox(BattleSystem *battleSys, BattlerData *battlerData);
static void ZeroDataBuffer(BattlerData *battlerData);

extern const u8 Unk_ov16_0226F174[];

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1)
{
    BattlerData *battlerData;

    battlerData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlerData));
    MI_CpuClearFast(battlerData, sizeof(BattlerData));

    battlerData->battler = param1->unk_00;
    battlerData->battlerType = param1->unk_01;
    battlerData->narc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_BATTLE);

    return battlerData;
}

void ov16_0225C038(BattleSystem *battleSys, BattlerData *battlerData, int ballID, int unused)
{
    BallThrow ballThrow;

    if (BattleSystem_GetBattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    if ((battlerData->battlerType & BATTLER_THEM) && (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_TRAINER) == FALSE) {
        return;
    }

    ballThrow.type = Unk_ov16_0226F174[battlerData->battlerType];
    ballThrow.heapID = HEAP_ID_BATTLE;
    ballThrow.mode = 4;
    ballThrow.target = battlerData->battler;
    ballThrow.ballID = ballID;
    ballThrow.cellActorSys = BattleSystem_GetSpriteSystem(battleSys);
    ballThrow.paletteSys = BattleSystem_GetPaletteData(battleSys);
    ballThrow.surface = 0;
    ballThrow.bgPrio = 1;

    battlerData->ballRotation = ov12_02237728(&ballThrow);

    ov12_02237E34(battlerData->ballRotation, 100);
    ov12_02237E40(battlerData->ballRotation, 2);
    ov12_02237E0C(battlerData->ballRotation, 0);
    ov12_02237E30(battlerData->ballRotation, 0);
}

static const BattleCommandPtr sBattleCommands[] = {
    [BATTLE_COMMAND_NONE] = BtlIOCmd_None,
    [BATTLE_COMMAND_SETUP_UI] = BtlIOCmd_SetupUI,
    [BATTLE_COMMAND_SET_ENCOUNTER] = BtlIOCmd_SetEncounter,
    [BATTLE_COMMAND_SHOW_ENCOUNTER] = BtlIOCmd_ShowEncounter,
    [BATTLE_COMMAND_SHOW_POKEMON] = BtlIOCmd_ShowPokemon,
    [BATTLE_COMMAND_RETURN_POKEMON] = BtlIOCmd_ReturnPokemon,
    [BATTLE_COMMAND_OPEN_CAPTURE_BALL] = BtlIOCmd_OpenCaptureBall,
    [BATTLE_COMMAND_DELETE_POKEMON] = BtlIOCmd_DeletePokemon,
    [BATTLE_COMMAND_SET_TRAINER_ENCOUNTER] = BtlIOCmd_SetTrainerEncounter,
    [BATTLE_COMMAND_THROW_TRAINER_BALL] = BtlIOCmd_ThrowTrainerBall,
    [BATTLE_COMMAND_SLIDE_TRAINER_OUT] = BtlIOCmd_SlideTrainerOut,
    [BATTLE_COMMAND_SLIDE_TRAINER_IN] = BtlIOCmd_SlideTrainerIn,
    [BATTLE_COMMAND_SLIDE_HEALTHBAR_IN] = BtlIOCmd_SlideHealthbarIn,
    [BATTLE_COMMAND_SLIDE_HEALTHBAR_OUT] = BtlIOCmd_SlideHealthbarOut,
    [BATTLE_COMMAND_SET_COMMAND_SELECTION] = BtlIOCmd_SetCommandSelection,
    [BATTLE_COMMAND_SHOW_MOVE_SELECT_MENU] = BtlIOCmd_ShowMoveSelectMenu,
    [BATTLE_COMMAND_SHOW_TARGET_SELECT_MENU] = BtlIOCmd_ShowTargetSelectMenu,
    [BATTLE_COMMAND_SHOW_BAG_MENU] = BtlIOCmd_ShowBagMenu,
    [BATTLE_COMMAND_SHOW_PARTY_MENU] = BtlIOCmd_ShowPartyMenu,
    [BATTLE_COMMAND_SHOW_YES_NO_MENU] = BtlIOCmd_ShowYesNoMenu,
    [BATTLE_COMMAND_PRINT_ATTACK_MESSAGE] = BtlIOCmd_PrintAttackMessage,
    [BATTLE_COMMAND_PRINT_MESSAGE] = BtlIOCmd_PrintBattleMessage,
    [BATTLE_COMMAND_SET_MOVE_ANIMATION] = BtlIOCmd_SetMoveAnimation,
    [BATTLE_COMMAND_FLICKER_BATTLER] = BtlIOCmd_FlickerBattler,
    [BATTLE_COMMAND_UPDATE_HP_GAUGE] = BtlIOCmd_UpdateHPGauge,
    [BATTLE_COMMAND_UPDATE_EXP_GAUGE] = BtlIOCmd_UpdateExpGauge,
    [BATTLE_COMMAND_PLAY_FAINTING_SEQUENCE] = BtlIOCmd_PlayFaintingSequence,
    [BATTLE_COMMAND_PLAY_SOUND] = BtlIOCmd_PlaySound,
    [BATTLE_COMMAND_FADE_OUT] = BtlIOCmd_FadeOut,
    [BATTLE_COMMAND_TOGGLE_VANISH] = BtlIOCmd_ToggleVanish,
    [BATTLE_COMMAND_SET_STATUS_ICON] = BtlIOCmd_SetStatusIcon,
    [BATTLE_COMMAND_PRINT_TRAINER_MESSAGE] = BtlIOCmd_PrintTrainerMessage,
    [BATTLE_COMMAND_PRINT_RECALL_MESSAGE] = BtlIOCmd_PrintRecallMessage,
    [BATTLE_COMMAND_PRINT_SEND_OUT_MESSAGE] = BtlIOCmd_PrintSendOutMessage,
    [BATTLE_COMMAND_PRINT_BATTLE_START_MESSAGE] = BtlIOCmd_PrintBattleStartMessage,
    [BATTLE_COMMAND_PRINT_LEAD_MON_MESSAGE] = BtlIOCmd_PrintLeadMonMessage,
    [BATTLE_COMMAND_PLAY_LEVEL_UP_ANIMATION] = BtlIOCmd_PlayLevelUpAnimation,
    [BATTLE_COMMAND_SET_ALERT_MESSAGE] = BtlIOCmd_SetAlertMessage,
    [BATTLE_COMMAND_REFRESH_HP_GAUGE] = BtlIOCmd_RefreshHPGauge,
    [BATTLE_COMMAND_UPDATE_PARTY_MON] = BtlIOCmd_UpdatePartyMon,
    [BATTLE_COMMAND_40] = ov16_0225C558,
    [BATTLE_COMMAND_STOP_GAUGE_ANIMATION] = BtlIOCmd_StopGaugeAnimation,
    [BATTLE_COMMAND_REFRESH_PARTY_STATUS] = BtlIOCmd_RefreshPartyStatus,
    [BATTLE_COMMAND_FORGET_MOVE] = BtlIOCmd_ForgetMove,
    [BATTLE_COMMAND_SET_MOSAIC] = BtlIOCmd_SetMosaic,
    [BATTLE_COMMAND_CHANGE_WEATHER_FORM] = BtlIOCmd_ChangeWeatherForm,
    [BATTLE_COMMAND_UPDATE_BG] = BtlIOCmd_UpdateBg,
    [BATTLE_COMMAND_CLEAR_TOUCH_SCREEN] = BtlIOCmd_ClearTouchScreen,
    [BATTLE_COMMAND_SHOW_BATTLE_START_PARTY_GAUGE] = BtlIOCmd_ShowBattleStartPartyGauge,
    [BATTLE_COMMAND_HIDE_BATTLE_START_PARTY_GAUGE] = BtlIOCmd_HideBattleStartPartyGauge,
    [BATTLE_COMMAND_SHOW_PARTY_GAUGE] = BtlIOCmd_ShowPartyGauge,
    [BATTLE_COMMAND_HIDE_PARTY_GAUGE] = BtlIOCmd_HidePartyGauge,
    [BATTLE_COMMAND_LOAD_PARTY_GAUGE_GRAPHICS] = BtlIOCmd_LoadPartyGaugeGraphics,
    [BATTLE_COMMAND_FREE_PARTY_GAUGE_GRAPHICS] = BtlIOCmd_FreePartyGaugeGraphics,
    [BATTLE_COMMAND_INCREMENT_RECORD] = BtlIOCmd_IncrementRecord,
    [BATTLE_COMMAND_PRINT_LINK_WAIT_MESSAGE] = BtlIOCmd_PrintLinkWaitMessage,
    [BATTLE_COMMAND_RESTORE_SPRITE] = BtlIOCmd_RestoreSprite,
    [BATTLE_COMMAND_SPRITE_TO_OAM] = BtlIOCmd_SpriteToOAM,
    [BATTLE_COMMAND_OAM_TO_SPRITE] = BtlIOCmd_OAMToSprite,
    [BATTLE_COMMAND_PRINT_RESULT_MESSAGE] = BtlIOCmd_PrintResultMessage,
    [BATTLE_COMMAND_PRINT_ESCAPE_MESSAGE] = BtlIOCmd_PrintEscapeMessage,
    [BATTLE_COMMAND_PRINT_FORFEIT_MESSAGE] = BtlIOCmd_PrintForfeitMessage,
    [BATTLE_COMMAND_REFRESH_SPRITE] = BtlIOCmd_RefreshSprite,
    [BATTLE_COMMAND_FLY_MOVE_HIT_SOUND_EFFECT] = BtlIOCmd_FlyMoveHitSoundEffect,
    [BATTLE_COMMAND_PLAY_MUSIC] = BtlIOCmd_PlayMusic,
    [BATTLE_COMMAND_SUBMIT_RESULT] = BtlIOCmd_SubmitResult,
    [BATTLE_COMMAND_CLEAR_MESSAGE_BOX] = BtlIOCmd_ClearMessageBox
};

void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *battlerData)
{
    if (battlerData->data[0]) {
        battlerData->unk_1A4 = 0;
        sBattleCommands[battlerData->data[0]](battleSys, battlerData);
    }
}

void ov16_0225C104(BattleSystem *battleSys, BattlerData *battlerData, int param2)
{
    if (param2 != 2) {
        ov16_02267360(&battlerData->healthbar);
    }

    if (battlerData->managedSprite) {
        Sprite_DeleteAndFreeResources(battlerData->managedSprite);
    }

    ov16_022647D8(battlerData);

    NARC_dtor(battlerData->narc);
    Heap_Free(battlerData);
}

static void BtlIOCmd_None(BattleSystem *battleSys, BattlerData *battlerData)
{
    return;
}

static void BtlIOCmd_SetupUI(BattleSystem *battleSys, BattlerData *battlerData)
{
    UISetupMessage *message = (UISetupMessage *)&battlerData->data[0];

    BattleSystem_SetSeedDTO(battleSys, message->seed);
    ov16_0225CBB8(battleSys, battlerData);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_SETUP_UI);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetEncounter(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonEncounterMessage *message = (MonEncounterMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskSetEncounter(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowEncounter(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonShowMessage *message = (MonShowMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowEncounter(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowPokemon(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonShowMessage *message = (MonShowMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowPokemon(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ReturnPokemon(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonReturnMessage *message = (MonReturnMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskReturnPokemon(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_OpenCaptureBall(BattleSystem *battleSys, BattlerData *battlerData)
{
    OpenCaptureBallMessage *message = (OpenCaptureBallMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskOpenCaptureBall(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_DeletePokemon(BattleSystem *battleSys, BattlerData *battlerData)
{
    PokemonSprite_Delete(battlerData->monSprite);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_DELETE_POKEMON);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetTrainerEncounter(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerEncounterMessage *message = (TrainerEncounterMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskSetTrainerEncounter(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ThrowTrainerBall(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerThrowBallMessage *message = (TrainerThrowBallMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskThrowTrainerBall(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SlideTrainerOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_InitTaskSlideTrainerOut(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SlideTrainerIn(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerSlideInMessage *message = (TrainerSlideInMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskSlideTrainerIn(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

/**
 * @brief Slide a healthbar in on the screen.
 *
 * @param battleSys
 * @param battlerData
 */
static void BtlIOCmd_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData)
{
    HealthbarData *healthbar = (HealthbarData *)&battlerData->data[0];

    BattleDisplay_InitTaskSlideHealthbarIn(battleSys, battlerData, healthbar);
    ZeroDataBuffer(battlerData);
}

/**
 * @brief Slide a healthbar out of the screen.
 *
 * @param battleSys
 * @param battlerData
 */
static void BtlIOCmd_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_InitTaskSlideHealthbarOut(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetCommandSelection(BattleSystem *battleSys, BattlerData *battlerData)
{
    CommandSetMessage *message = (CommandSetMessage *)&battlerData->data[0];

    ov16_0223F290(battleSys, message->switchingOrCanPickCommandMask);
    BattleDisplay_InitTaskSetCommandSelection(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowMoveSelectMenu(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveSelectMenuMessage *message = (MoveSelectMenuMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowMoveSelectMenu(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowTargetSelectMenu(BattleSystem *battleSys, BattlerData *battlerData)
{
    TargetSelectMenuMessage *message = (TargetSelectMenuMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowTargetSelectMenu(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowBagMenu(BattleSystem *battleSys, BattlerData *battlerData)
{
    BagMenuMessage *message = (BagMenuMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowBagMenu(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowPartyMenu(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyMenuMessage *message = (PartyMenuMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowPartyMenu(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowYesNoMenu(BattleSystem *battleSys, BattlerData *battlerData)
{
    YesNoMenuMessage *message = (YesNoMenuMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskShowYesNoMenu(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintAttackMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    AttackMsgMessage *message = (AttackMsgMessage *)&battlerData->data[0];

    BattleDisplay_PrintAttackMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

/**
 * @brief Print a message to the screen.
 *
 * @param battleSys
 * @param battlerData
 */
static void BtlIOCmd_PrintBattleMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessage *battleMsg = (BattleMessage *)&battlerData->data[0];

    BattleDisplay_PrintMessage(battleSys, battlerData, battleMsg);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetMoveAnimation(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveAnimation *moveAnim = (MoveAnimation *)&battlerData->data[0];

    BattleDisplay_InitTaskSetMoveAnimation(battleSys, battlerData, moveAnim);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_FlickerBattler(BattleSystem *battleSys, BattlerData *battlerData)
{
    if (PokemonSprite_GetAttribute(battlerData->monSprite, MON_SPRITE_HIDE) == TRUE) {
        BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_FLICKER_BATTLER);
    } else {
        BattleDisplay_InitTaskFlickerBattler(battleSys, battlerData);
    }

    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_UpdateHPGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    HPGaugeUpdateMessage *message = (HPGaugeUpdateMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskUpdateHPGauge(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_UpdateExpGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    ExpGaugeUpdateMessage *message = (ExpGaugeUpdateMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskUpdateExpGauge(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PlayFaintingSequence(BattleSystem *battleSys, BattlerData *battlerData)
{
    FaintingSequenceMessage *message = (FaintingSequenceMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskPlayFaintingSequence(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PlaySound(BattleSystem *battleSys, BattlerData *battlerData)
{
    PlaySoundMessage *message = (PlaySoundMessage *)&battlerData->data[0];

    BattleDisplay_PlaySound(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_FadeOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_InitTaskFadeOut(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ToggleVanish(BattleSystem *battleSys, BattlerData *battlerData)
{
    ToggleVanishMessage *message = (ToggleVanishMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskToggleVanish(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetStatusIcon(BattleSystem *battleSys, BattlerData *battlerData)
{
    SetStatusIconMessage *message = (SetStatusIconMessage *)&battlerData->data[0];

    BattleDisplay_SetStatusIcon(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintTrainerMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerMsgMessage *message = (TrainerMsgMessage *)&battlerData->data[0];

    BattleDisplay_PrintTrainerMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintRecallMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    RecallMsgMessage *message = (RecallMsgMessage *)&battlerData->data[0];

    BattleDisplay_PrintRecallMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintSendOutMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    SendOutMsgMessage *message = (SendOutMsgMessage *)&battlerData->data[0];

    BattleDisplay_PrintSendOutMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintBattleStartMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_PrintBattleStartMessage(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintLeadMonMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    LeadMonMsgMessage *message = (LeadMonMsgMessage *)&battlerData->data[0];

    BattleDisplay_PrintLeadMonMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PlayLevelUpAnimation(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_InitTaskPlayLevelUpAnimation(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetAlertMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    AlertMsgMessage *message = (AlertMsgMessage *)&battlerData->data[0];

    BattleDisplay_SetAlertMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_RefreshHPGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    RefreshHPGaugeMessage *message = (RefreshHPGaugeMessage *)&battlerData->data[0];

    BattleDisplay_RefreshHPGauge(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_UpdatePartyMon(BattleSystem *battleSys, BattlerData *battlerData)
{
    UpdatePartyMonMessage *message = (UpdatePartyMonMessage *)&battlerData->data[0];
    int i;
    Pokemon *mon = BattleSystem_GetPartyPokemon(battleSys, battlerData->battler, message->partySlot);

    if ((message->statusVolatile & VOLATILE_CONDITION_TRANSFORM) == FALSE) {
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if ((message->mimickedMoveSlot & FlagIndex(i)) == FALSE) {
                Pokemon_SetValue(mon, MON_DATA_MOVE1 + i, (u8 *)&message->moves[i]);
                Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + i, (u8 *)&message->ppCur[i]);
            }
        }
    }

    if ((message->knockedOffItemsMask & FlagIndex(message->partySlot)) == FALSE) {
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, (u8 *)&message->heldItem);
    }

    Pokemon_SetValue(mon, MON_DATA_HP, (u8 *)&message->curHP);
    Pokemon_SetValue(mon, MON_DATA_STATUS, (u8 *)&message->status);

    if (message->updateForm) {
        Pokemon_SetValue(mon, MON_DATA_FORM, (u8 *)&message->formNum);
    }

    if (message->updateStats) {
        Pokemon_SetValue(mon, MON_DATA_ABILITY, (u8 *)&message->ability);
        Pokemon_CalcLevelAndStats(mon);
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C558(BattleSystem *battleSys, BattlerData *battlerData)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    UnkStruct_ov16_02268A14 *v1 = ov16_0223E02C(battleSys);

    if (battlerData->bootState == BATTLER_BOOT_STATE_NORMAL) {
        if ((battleType & BATTLE_TYPE_2vs2)
            || ((battleType & BATTLE_TYPE_2vs2) == FALSE && battlerData->battlerType != BATTLER_TYPE_PLAYER_SIDE_SLOT_2)) {
            ov16_0226947C(v1, -0xd00, 0);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, battlerData->data[0]);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_StopGaugeAnimation(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_022675AC(&battlerData->healthbar);
    ov16_022647D8(battlerData);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, battlerData->data[0]);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_RefreshPartyStatus(BattleSystem *battleSys, BattlerData *battlerData)
{
    RefreshPartyStatusMessage *message = (RefreshPartyStatusMessage *)&battlerData->data[0];
    Pokemon *mon;
    int i, partyCount, ability;
    u32 v5 = 0;
    partyCount = BattleSystem_GetPartyCount(battleSys, battlerData->battler);

    for (i = 0; i < partyCount; i++) {
        mon = BattleSystem_GetPartyPokemon(battleSys, battlerData->battler, i);

        if (message->ability == ABILITY_MOLD_BREAKER) {
            ability = ABILITY_NONE;
        } else {
            ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);
        }

        if (message->move != MOVE_HEAL_BELL || (message->move == MOVE_HEAL_BELL && ability != ABILITY_SOUNDPROOF)) {
            Pokemon_SetValue(mon, MON_DATA_STATUS, (u8 *)&v5);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ForgetMove(BattleSystem *battleSys, BattlerData *battlerData)
{
    ForgetMoveMessage *message = (ForgetMoveMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskForgetMove(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SetMosaic(BattleSystem *battleSys, BattlerData *battlerData)
{
    MosaicSetMessage *message = (MosaicSetMessage *)&battlerData->data[0];

    BattleDisplay_InitTaskSetMosaic(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ChangeWeatherForm(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonChangeFormMessage *message = (MonChangeFormMessage *)&battlerData->data[0];
    PokemonSpriteTemplate monSpriteTemplate;
    PokemonSpriteTemplate *monSpriteTemplatePtr;
    int y;
    int face;

    if (battlerData->battlerType & BATTLER_THEM) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    BuildPokemonSpriteTemplate(&monSpriteTemplate, message->species, message->gender, face, message->isShiny, message->formNum, message->personality);

    monSpriteTemplatePtr = PokemonSprite_GetTemplate(battlerData->monSprite);
    *monSpriteTemplatePtr = monSpriteTemplate;

    PokemonSprite_ScheduleReloadFromNARC(battlerData->monSprite);
    CharacterSprite_LoadPokemonSprite(monSpriteTemplatePtr->narcID, monSpriteTemplatePtr->character, HEAP_ID_BATTLE, PokemonSpriteData_GetTiles(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler), message->personality, FALSE, face, monSpriteTemplatePtr->spindaSpots);

    PokemonSpriteData_SetNarcID(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler, monSpriteTemplatePtr->narcID);
    PokemonSpriteData_SetPalette(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler, monSpriteTemplatePtr->palette);

    y = LoadPokemonSpriteYOffset(message->species, message->gender, face, message->formNum, message->personality);
    PokemonSpriteData_SetYOffset(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler, y);

    y = ov12_022384CC(battlerData->battlerType, 1) + y;
    PokemonSprite_SetAttribute(battlerData->monSprite, MON_SPRITE_Y_CENTER, y);

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_UpdateBg(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0223EF8C(battleSys);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_UPDATE_BG);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ClearTouchScreen(BattleSystem *battleSys, BattlerData *battlerData)
{
    if (battlerData->bootState == BATTLER_BOOT_STATE_NORMAL) {
        UnkStruct_ov16_02268A14 *v0;
        int partner;
        Healthbar *healthbar;
        NARC *v3 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
        NARC *v4 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
        v0 = ov16_0223E02C(battleSys);

        ov16_02268C04(v3, v4, v0, 0, 0, NULL);
        ov16_0226BCCC(v0, 0);

        NARC_dtor(v3);
        NARC_dtor(v4);

        partner = BattleSystem_GetPartner(battleSys, battlerData->battler);

        if (partner != battlerData->battler) {
            healthbar = BattleSystem_GetHealthbar(battleSys, partner);
            ov16_0226846C(healthbar);
        }

        ov16_022675AC(&battlerData->healthbar);
        ov16_02269218(v0);
        ov16_022647D8(battlerData);
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_CLEAR_TOUCH_SCREEN);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *data = (PartyGaugeData *)&battlerData->data[0];

    BattleDisplay_InitTaskShowBattleStartPartyGauge(battleSys, battlerData, data);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_HideBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *data = (PartyGaugeData *)&battlerData->data[0];

    BattleDisplay_InitTaskHideBattleStartPartyGauge(battleSys, battlerData, data);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ShowPartyGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *data = (PartyGaugeData *)&battlerData->data[0];

    if (BattleSystem_GetBattlerSide(battleSys, battlerData->battler)) {
        BattleDisplay_InitTaskShowPartyGauge(battleSys, battlerData, data);
    } else {
        BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_SHOW_PARTY_GAUGE);
    }

    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_HidePartyGauge(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *data = (PartyGaugeData *)&battlerData->data[0];

    if (BattleSystem_GetBattlerSide(battleSys, battlerData->battler)) {
        BattleDisplay_InitTaskHidePartyGauge(battleSys, battlerData, data);
    } else {
        BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_HIDE_PARTY_GAUGE);
    }

    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_LoadPartyGaugeGraphics(BattleSystem *battleSys, BattlerData *battlerData)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(battleSys);

    PartyGauge_LoadGraphics(spriteSys, spriteMan, paletteData);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_LOAD_PARTY_GAUGE_GRAPHICS);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_FreePartyGaugeGraphics(BattleSystem *battleSys, BattlerData *battlerData)
{
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(battleSys);

    PartyGauge_FreeGraphics(spriteMan);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_FREE_PARTY_GAUGE_GRAPHICS);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_IncrementRecord(BattleSystem *battleSys, BattlerData *battlerData)
{
    RecordIncrementMessage *message = (RecordIncrementMessage *)&battlerData->data[0];

    if (message->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
        if (battlerData->bootState == BATTLER_BOOT_STATE_NORMAL) {
            BattleSystem_TryIncrementRecordValue(battleSys, message->record);
        }
    } else {
        if (battlerData->bootState != BATTLER_BOOT_STATE_NORMAL) {
            BattleSystem_TryIncrementRecordValue(battleSys, message->record);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintLinkWaitMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    LinkWaitMsgMessage *message = (LinkWaitMsgMessage *)&battlerData->data[0];

    ov16_0223F638(battleSys, message->unk_02, message->unk_04);
    BattleDisplay_PrintLinkWaitMessage(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_RestoreSprite(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveAnimation *moveAnim = (MoveAnimation *)&battlerData->data[0];

    BattleDisplay_RestoreSprite(battleSys, battlerData, moveAnim);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SpriteToOAM(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_InitTaskSpriteToOAM(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_OAMToSprite(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_InitTaskOAMToSprite(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintResultMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleDisplay_PrintResultMessage(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintEscapeMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    EscapeMsgMessage *message = (EscapeMsgMessage *)&battlerData->data[0];

    ov16_0223F638(battleSys, message->unk_02, message->unk_04);
    BattleDisplay_PrintEscapeMessage(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PrintForfeitMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    ForfeitMsgMessage *message = (ForfeitMsgMessage *)&battlerData->data[0];

    ov16_0223F638(battleSys, message->unk_02, message->unk_04);
    BattleDisplay_PrintForfeitMessage(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_RefreshSprite(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveAnimation *moveAnim = (MoveAnimation *)&battlerData->data[0];

    BattleDisplay_RefreshSprite(battleSys, battlerData, moveAnim);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_FlyMoveHitSoundEffect(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveHitSoundMessage *message = (MoveHitSoundMessage *)&battlerData->data[0];

    BattleDisplay_FlyMoveHitSoundEffect(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_PlayMusic(BattleSystem *battleSys, BattlerData *battlerData)
{
    MusicPlayMessage *message = (MusicPlayMessage *)&battlerData->data[0];

    BattleDisplay_PlayMusic(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_SubmitResult(BattleSystem *battleSys, BattlerData *battlerData)
{
    ResultSubmitMessage *message = (ResultSubmitMessage *)&battlerData->data[0];
    Party *party;
    Pokemon *mon;
    int slot;
    int battler;
    int playerHP = 0;
    int enemyHP = 0;

    ov16_0223F638(battleSys, message->unk_02, message->unk_08);

    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
        BattleSystem_SetResultMask(battleSys, message->resultMask);
    } else {
        for (battler = 0; battler < BattleSystem_GetMaxBattlers(battleSys); battler++) {
            party = BattleSystem_GetParty(battleSys, battler);

            for (slot = 0; slot < Party_GetCurrentCount(party); slot++) {
                mon = Party_GetPokemonBySlotIndex(party, slot);

                if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
                    if (BattleSystem_GetBattlerSide(battleSys, battler)) {
                        enemyHP += Pokemon_GetValue(mon, MON_DATA_HP, NULL);
                    } else {
                        playerHP += Pokemon_GetValue(mon, MON_DATA_HP, NULL);
                    }
                }
            }
        }

        if (playerHP == 0 && enemyHP == 0) {
            BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_DRAW);
        } else if (playerHP == 0) {
            BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_LOSE);
        } else {
            BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_WIN);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void BtlIOCmd_ClearMessageBox(BattleSystem *battleSys, BattlerData *battlerData)
{
    Window *window = BattleSystem_GetWindow(battleSys, 0);

    Window_FillTilemap(window, 0xFF);
    Window_LoadTiles(window);

    BattleController_EmitClearCommand(battleSys, battlerData->battler, BATTLE_COMMAND_CLEAR_MESSAGE_BOX);
    ZeroDataBuffer(battlerData);
}

static void ZeroDataBuffer(BattlerData *battlerData)
{
    battlerData->data[0] = 0;
}

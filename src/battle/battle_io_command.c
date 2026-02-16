#include "battle/battle_io_command.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_controller.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/battler_data.h"
#include "struct_defs/battler_data.h"

#include "battle/battle_controller.h"
#include "battle/battle_cursor.h"
#include "battle/battle_display.h"
#include "battle/battle_message.h"
#include "battle/battle_system.h"
#include "battle/healthbar.h"
#include "battle/message_defs.h"
#include "battle/ov16_02264798.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0223C2C0.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022674C4.h"
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

typedef void (*UnkFuncPtr_ov16_0226F068)(BattleSystem *, BattlerData *);

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1);
void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225C104(BattleSystem *battleSys, BattlerData *battlerData, int param2);
void ov16_0225C038(BattleSystem *battleSys, BattlerData *battlerData, int param2, int param3);
static void ov16_0225C138(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C13C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C168(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C17C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C190(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C1A4(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C1B8(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C1CC(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C1F0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C204(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C218(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C228(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C260(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C288(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C29C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C2B0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C2C4(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C2D8(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C2EC(BattleSystem *battleSys, BattlerData *battlerData);
static void BtlIOCmd_PrintBattleMessage(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C314(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C328(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C35C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C370(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C384(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C398(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C3AC(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C3BC(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C3D0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C3E4(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C3F8(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C40C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C420(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C430(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C444(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C454(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C468(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C47C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C558(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C5B0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C5E0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C65C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C670(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C684(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C77C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C79C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C840(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C854(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C868(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C8A4(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C8E0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C91C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C940(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C988(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C9AC(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C9C0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C9D0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C9E0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225C9F0(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225CA14(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225CA38(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225CA4C(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225CA60(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225CA74(BattleSystem *battleSys, BattlerData *battlerData);
static void ov16_0225CB80(BattleSystem *battleSys, BattlerData *battlerData);
static void ZeroDataBuffer(BattlerData *battlerData);

extern const u8 Unk_ov16_0226F174[];

BattlerData *ov16_0225BFFC(BattleSystem *battleSys, UnkStruct_ov16_0223C2C0 *param1)
{
    BattlerData *battlerData;
    int v1;

    battlerData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlerData));
    MI_CpuClearFast(battlerData, sizeof(BattlerData));

    battlerData->battler = param1->unk_00;
    battlerData->battlerType = param1->unk_01;
    battlerData->narc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_BATTLE);

    return battlerData;
}

void ov16_0225C038(BattleSystem *battleSys, BattlerData *battlerData, int param2, int param3)
{
    BallThrow v0;
    s16 v1, v2;

    if (BattleSystem_GetBattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    if ((battlerData->battlerType & 0x1) && ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_TRAINER) == FALSE)) {
        return;
    }

    v0.type = Unk_ov16_0226F174[battlerData->battlerType];
    v0.heapID = HEAP_ID_BATTLE;
    v0.mode = 4;
    v0.target = battlerData->battler;
    v0.ballID = param2;
    v0.cellActorSys = BattleSystem_GetSpriteSystem(battleSys);
    v0.paletteSys = BattleSystem_GetPaletteData(battleSys);
    v0.surface = 0;
    v0.bgPrio = 1;

    battlerData->ballRotation = ov12_02237728(&v0);

    ov12_02237E34(battlerData->ballRotation, 100);
    ov12_02237E40(battlerData->ballRotation, 2);
    ov12_02237E0C(battlerData->ballRotation, 0);
    ov12_02237E30(battlerData->ballRotation, 0);
}

static const UnkFuncPtr_ov16_0226F068 Unk_ov16_0226F068[] = {
    [BATTLE_COMMAND_NONE] = ov16_0225C138,
    [BATTLE_COMMAND_SETUP_UI] = ov16_0225C13C,
    [BATTLE_COMMAND_SET_ENCOUNTER] = ov16_0225C168,
    [BATTLE_COMMAND_SHOW_ENCOUNTER] = ov16_0225C17C,
    [BATTLE_COMMAND_SHOW_POKEMON] = ov16_0225C190,
    [BATTLE_COMMAND_RETURN_POKEMON] = ov16_0225C1A4,
    [BATTLE_COMMAND_OPEN_CAPTURE_BALL] = ov16_0225C1B8,
    [BATTLE_COMMAND_DELETE_POKEMON] = ov16_0225C1CC,
    [BATTLE_COMMAND_SET_TRAINER_ENCOUNTER] = ov16_0225C1F0,
    [BATTLE_COMMAND_THROW_TRAINER_BALL] = ov16_0225C204,
    [BATTLE_COMMAND_SLIDE_TRAINER_OUT] = ov16_0225C218,
    [BATTLE_COMMAND_SLIDE_TRAINER_IN] = ov16_0225C228,
    [BATTLE_COMMAND_SLIDE_HEALTHBAR_IN] = BtlIOCmd_SlideHealthbarIn,
    [BATTLE_COMMAND_SLIDE_HEALTHBAR_OUT] = BtlIOCmd_SlideHealthbarOut,
    [BATTLE_COMMAND_SET_COMMAND_SELECTION] = ov16_0225C260,
    [BATTLE_COMMAND_SHOW_MOVE_SELECT_MENU] = ov16_0225C288,
    [BATTLE_COMMAND_SHOW_TARGET_SELECT_MENU] = ov16_0225C29C,
    [BATTLE_COMMAND_SHOW_BAG_MENU] = ov16_0225C2B0,
    [BATTLE_COMMAND_SHOW_PARTY_MENU] = ov16_0225C2C4,
    [BATTLE_COMMAND_SHOW_YES_NO_MENU] = ov16_0225C2D8,
    [BATTLE_COMMAND_PRINT_ATTACK_MESSAGE] = ov16_0225C2EC,
    [BATTLE_COMMAND_PRINT_MESSAGE] = BtlIOCmd_PrintBattleMessage,
    [BATTLE_COMMAND_SET_MOVE_ANIMATION] = ov16_0225C314,
    [BATTLE_COMMAND_FLICKER_BATTLER] = ov16_0225C328,
    [BATTLE_COMMAND_UPDATE_HP_GAUGE] = ov16_0225C35C,
    [BATTLE_COMMAND_UPDATE_EXP_GAUGE] = ov16_0225C370,
    [BATTLE_COMMAND_PLAY_FAINTING_SEQUENCE] = ov16_0225C384,
    [BATTLE_COMMAND_PLAY_SOUND] = ov16_0225C398,
    [BATTLE_COMMAND_FADE_OUT] = ov16_0225C3AC,
    [BATTLE_COMMAND_TOGGLE_VANISH] = ov16_0225C3BC,
    [BATTLE_COMMAND_SET_STATUS_ICON] = ov16_0225C3D0,
    [BATTLE_COMMAND_TRAINER_MESSAGE] = ov16_0225C3E4,
    [BATTLE_COMMAND_PRINT_RECALL_MESSAGE] = ov16_0225C3F8,
    [BATTLE_COMMAND_PRINT_SEND_OUT_MESSAGE] = ov16_0225C40C,
    [BATTLE_COMMAND_PRINT_BATTLE_START_MESSAGE] = ov16_0225C420,
    [BATTLE_COMMAND_PRINT_LEAD_MON_MESSAGE] = ov16_0225C430,
    [BATTLE_COMMAND_PLAY_LEVEL_UP_ANIMATION] = ov16_0225C444,
    [BATTLE_COMMAND_SET_ALERT_MESSAGE] = ov16_0225C454,
    [BATTLE_COMMAND_REFRESH_HP_GAUGE] = ov16_0225C468,
    [BATTLE_COMMAND_UPDATE_PARTY_MON] = ov16_0225C47C,
    [BATTLE_COMMAND_40] = ov16_0225C558,
    [BATTLE_COMMAND_STOP_GAUGE_ANIMATION] = ov16_0225C5B0,
    [BATTLE_COMMAND_REFRESH_PARTY_STATUS] = ov16_0225C5E0,
    [BATTLE_COMMAND_FORGET_MOVE] = ov16_0225C65C,
    [BATTLE_COMMAND_SET_MOSAIC] = ov16_0225C670,
    [BATTLE_COMMAND_CHANGE_WEATHER_FORM] = ov16_0225C684,
    [BATTLE_COMMAND_UPDATE_BG] = ov16_0225C77C,
    [BATTLE_COMMAND_CLEAR_TOUCH_SCREEN] = ov16_0225C79C,
    [BATTLE_COMMAND_SHOW_BATTLE_START_PARTY_GAUGE] = ov16_0225C840,
    [BATTLE_COMMAND_HIDE_BATTLE_START_PARTY_GAUGE] = ov16_0225C854,
    [BATTLE_COMMAND_SHOW_PARTY_GAUGE] = ov16_0225C868,
    [BATTLE_COMMAND_HIDE_PARTY_GAUGE] = ov16_0225C8A4,
    [BATTLE_COMMAND_LOAD_PARTY_GAUGE_GRAPHICS] = ov16_0225C8E0,
    [BATTLE_COMMAND_FREE_PARTY_GAUGE_GRAPHICS] = ov16_0225C91C,
    [BATTLE_COMMAND_INCREMENT_RECORD] = ov16_0225C940,
    [BATTLE_COMMAND_LINK_WAIT_MESSAGE] = ov16_0225C988,
    [BATTLE_COMMAND_RESTORE_SPRITE] = ov16_0225C9AC,
    [BATTLE_COMMAND_SPRITE_TO_OAM] = ov16_0225C9C0,
    [BATTLE_COMMAND_OAM_TO_SPRITE] = ov16_0225C9D0,
    [BATTLE_COMMAND_RESULT_MESSAGE] = ov16_0225C9E0,
    [BATTLE_COMMAND_ESCAPE_MESSAGE] = ov16_0225C9F0,
    [BATTLE_COMMAND_FORFEIT_MESSAGE] = ov16_0225CA14,
    [BATTLE_COMMAND_REFRESH_SPRITE] = ov16_0225CA38,
    [BATTLE_COMMAND_FLY_MOVE_HIT_SOUND_EFFECT] = ov16_0225CA4C,
    [BATTLE_COMMAND_PLAY_MUSIC] = ov16_0225CA60,
    [BATTLE_COMMAND_SUBMIT_RESULT] = ov16_0225CA74,
    [BATTLE_COMMAND_CLEAR_MESSAGE_BOX] = ov16_0225CB80
};

void ov16_0225C0DC(BattleSystem *battleSys, BattlerData *battlerData)
{
    if (battlerData->data[0]) {
        battlerData->unk_1A4 = 0;
        Unk_ov16_0226F068[battlerData->data[0]](battleSys, battlerData);
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

static void ov16_0225C138(BattleSystem *battleSys, BattlerData *battlerData)
{
    return;
}

static void ov16_0225C13C(BattleSystem *battleSys, BattlerData *battlerData)
{
    UISetupMessage *message = (UISetupMessage *)&battlerData->data[0];

    BattleSystem_SetSeedDTO(battleSys, message->unk_04);
    ov16_0225CBB8(battleSys, battlerData);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, 1);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C168(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonEncounterMessage *message = (MonEncounterMessage *)&battlerData->data[0];

    ov16_0225CBDC(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C17C(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonShowMessage *message = (MonShowMessage *)&battlerData->data[0];

    ov16_0225CE1C(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C190(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonShowMessage *message = (MonShowMessage *)&battlerData->data[0];

    ov16_0225CF70(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C1A4(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonReturnMessage *message = (MonReturnMessage *)&battlerData->data[0];

    ov16_0225D118(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C1B8(BattleSystem *battleSys, BattlerData *battlerData)
{
    CaptureOpenBallMessage *message = (CaptureOpenBallMessage *)&battlerData->data[0];

    ov16_0225D1C4(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C1CC(BattleSystem *battleSys, BattlerData *battlerData)
{
    PokemonSprite_Delete(battlerData->monSprite);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, 7);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C1F0(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerEncounterMessage *message = (TrainerEncounterMessage *)&battlerData->data[0];

    ov16_0225D228(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C204(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerThrowBallMessage *message = (TrainerThrowBallMessage *)&battlerData->data[0];

    ov16_0225D360(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C218(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225D3CC(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C228(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerSlideInMessage *message = (TrainerSlideInMessage *)&battlerData->data[0];

    ov16_0225D414(battleSys, battlerData, message);
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

    BattleDisplay_SlideHealthbarIn(battleSys, battlerData, healthbar);
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
    BattleDisplay_SlideHealthbarOut(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C260(BattleSystem *battleSys, BattlerData *battlerData)
{
    CommandSetMessage *message = (CommandSetMessage *)&battlerData->data[0];

    ov16_0223F290(battleSys, message->unk_29);
    ov16_0225D5B8(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C288(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveSelectMenuMessage *message = (MoveSelectMenuMessage *)&battlerData->data[0];

    ov16_0225D698(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C29C(BattleSystem *battleSys, BattlerData *battlerData)
{
    TargetSelectMenuMessage *message = (TargetSelectMenuMessage *)&battlerData->data[0];

    ov16_0225D708(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C2B0(BattleSystem *battleSys, BattlerData *battlerData)
{
    BagMenuMessage *message = (BagMenuMessage *)&battlerData->data[0];

    ov16_0225D794(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C2C4(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyMenuMessage *message = (PartyMenuMessage *)&battlerData->data[0];

    ov16_0225D840(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C2D8(BattleSystem *battleSys, BattlerData *battlerData)
{
    YesNoMenuMessage *message = (YesNoMenuMessage *)&battlerData->data[0];

    ov16_0225D8AC(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C2EC(BattleSystem *battleSys, BattlerData *battlerData)
{
    AttackMsgMessage *message = (AttackMsgMessage *)&battlerData->data[0];

    ov16_0225D8F0(battleSys, battlerData, message);
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

static void ov16_0225C314(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveAnimation *v0 = (MoveAnimation *)&battlerData->data[0];

    ov16_0225D9A8(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C328(BattleSystem *battleSys, BattlerData *battlerData)
{
    if (PokemonSprite_GetAttribute(battlerData->monSprite, MON_SPRITE_HIDE) == 1) {
        BattleController_EmitClearCommand(battleSys, battlerData->battler, 23);
    } else {
        ov16_0225DA44(battleSys, battlerData);
    }

    ZeroDataBuffer(battlerData);
}

static void ov16_0225C35C(BattleSystem *battleSys, BattlerData *battlerData)
{
    HPGaugeUpdateMessage *message = (HPGaugeUpdateMessage *)&battlerData->data[0];

    ov16_0225DA74(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C370(BattleSystem *battleSys, BattlerData *battlerData)
{
    ExpGaugeUpdateMessage *message = (ExpGaugeUpdateMessage *)&battlerData->data[0];

    ov16_0225DB00(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C384(BattleSystem *battleSys, BattlerData *battlerData)
{
    FaintingSequenceMessage *message = (FaintingSequenceMessage *)&battlerData->data[0];

    ov16_0225DB74(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C398(BattleSystem *battleSys, BattlerData *battlerData)
{
    PlaySoundMessage *message = (PlaySoundMessage *)&battlerData->data[0];

    ov16_0225DC4C(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C3AC(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225DC7C(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C3BC(BattleSystem *battleSys, BattlerData *battlerData)
{
    ToggleVanishMessage *v0 = (ToggleVanishMessage *)&battlerData->data[0];

    ov16_0225DCB0(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C3D0(BattleSystem *battleSys, BattlerData *battlerData)
{
    SetStatusIconMessage *v0 = (SetStatusIconMessage *)&battlerData->data[0];

    ov16_0225DD44(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C3E4(BattleSystem *battleSys, BattlerData *battlerData)
{
    TrainerMsgMessage *message = (TrainerMsgMessage *)&battlerData->data[0];

    ov16_0225DD7C(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C3F8(BattleSystem *battleSys, BattlerData *battlerData)
{
    RecallMsgMessage *v0 = (RecallMsgMessage *)&battlerData->data[0];

    ov16_0225DDD8(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C40C(BattleSystem *battleSys, BattlerData *battlerData)
{
    SendOutMsgMessage *v0 = (SendOutMsgMessage *)&battlerData->data[0];

    ov16_0225DE30(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C420(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225DE88(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C430(BattleSystem *battleSys, BattlerData *battlerData)
{
    LeadMonMsgMessage *v0 = (LeadMonMsgMessage *)&battlerData->data[0];

    ov16_0225DEDC(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C444(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225DF34(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C454(BattleSystem *battleSys, BattlerData *battlerData)
{
    AlertMsgMessage *v0 = (AlertMsgMessage *)&battlerData->data[0];

    ov16_0225DF6C(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C468(BattleSystem *battleSys, BattlerData *battlerData)
{
    RefreshHPGaugeMessage *v0 = (RefreshHPGaugeMessage *)&battlerData->data[0];

    ov16_0225E008(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C47C(BattleSystem *battleSys, BattlerData *battlerData)
{
    UpdatePartyMonMessage *message = (UpdatePartyMonMessage *)&battlerData->data[0];
    int v1;
    Pokemon *v2 = BattleSystem_GetPartyPokemon(battleSys, battlerData->battler, message->partySlot);

    if ((message->statusVolatile & 0x200000) == 0) {
        for (v1 = 0; v1 < LEARNED_MOVES_MAX; v1++) {
            if ((message->mimickedMoveSlot & FlagIndex(v1)) == 0) {
                Pokemon_SetValue(v2, MON_DATA_MOVE1 + v1, (u8 *)&message->moves[v1]);
                Pokemon_SetValue(v2, MON_DATA_MOVE1_PP + v1, (u8 *)&message->ppCur[v1]);
            }
        }
    }

    if ((message->knockedOffItemsMask & FlagIndex(message->partySlot)) == 0) {
        Pokemon_SetValue(v2, MON_DATA_HELD_ITEM, (u8 *)&message->heldItem);
    }

    Pokemon_SetValue(v2, MON_DATA_HP, (u8 *)&message->curHP);
    Pokemon_SetValue(v2, MON_DATA_STATUS, (u8 *)&message->status);

    if (message->updateForm) {
        Pokemon_SetValue(v2, MON_DATA_FORM, (u8 *)&message->formNum);
    }

    if (message->updateStats) {
        Pokemon_SetValue(v2, MON_DATA_ABILITY, (u8 *)&message->ability);
        Pokemon_CalcLevelAndStats(v2);
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C558(BattleSystem *battleSys, BattlerData *battlerData)
{
    u32 battleType;
    UnkStruct_ov16_02268A14 *v1;

    battleType = BattleSystem_GetBattleType(battleSys);
    v1 = ov16_0223E02C(battleSys);

    if (battlerData->bootState == 0x0) {
        if ((battleType & BATTLE_TYPE_2vs2) || (((battleType & BATTLE_TYPE_2vs2) == 0) && (battlerData->battlerType != 4))) {
            ov16_0226947C(v1, -0xd00, 0);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, battlerData->data[0]);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C5B0(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_022675AC(&battlerData->healthbar);
    ov16_022647D8(battlerData);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, battlerData->data[0]);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C5E0(BattleSystem *battleSys, BattlerData *battlerData)
{
    RefreshPartyStatusMessage *message = (RefreshPartyStatusMessage *)&battlerData->data[0];
    Pokemon *v1;
    int v2, v3, v4;
    u32 v5 = 0;
    v3 = BattleSystem_GetPartyCount(battleSys, battlerData->battler);

    for (v2 = 0; v2 < v3; v2++) {
        v1 = BattleSystem_GetPartyPokemon(battleSys, battlerData->battler, v2);

        if (message->ability == 104) {
            v4 = ABILITY_NONE;
        } else {
            v4 = Pokemon_GetValue(v1, MON_DATA_ABILITY, NULL);
        }

        if ((message->move != 215) || ((message->move == 215) && (v4 != ABILITY_SOUNDPROOF))) {
            Pokemon_SetValue(v1, MON_DATA_STATUS, (u8 *)&v5);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C65C(BattleSystem *battleSys, BattlerData *battlerData)
{
    ForgetMoveMessage *v0 = (ForgetMoveMessage *)&battlerData->data[0];

    ov16_0225E0BC(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C670(BattleSystem *battleSys, BattlerData *battlerData)
{
    MosaicSetMessage *v0 = (MosaicSetMessage *)&battlerData->data[0];

    ov16_0225E0F4(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C684(BattleSystem *battleSys, BattlerData *battlerData)
{
    MonChangeFormMessage *message = (MonChangeFormMessage *)&battlerData->data[0];
    PokemonSpriteTemplate v1;
    PokemonSpriteTemplate *v2;
    int v3;
    int v4;

    if (battlerData->battlerType & 0x1) {
        v4 = 2;
    } else {
        v4 = 0;
    }

    BuildPokemonSpriteTemplate(&v1, message->species, message->gender, v4, message->isShiny, message->formNum, message->personality);

    v2 = PokemonSprite_GetTemplate(battlerData->monSprite);
    *v2 = v1;

    PokemonSprite_ScheduleReloadFromNARC(battlerData->monSprite);
    CharacterSprite_LoadPokemonSprite(v2->narcID, v2->character, HEAP_ID_BATTLE, PokemonSpriteData_GetTiles(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler), message->personality, FALSE, v4, v2->spindaSpots);

    PokemonSpriteData_SetNarcID(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler, v2->narcID);
    PokemonSpriteData_SetPalette(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler, v2->palette);

    v3 = LoadPokemonSpriteYOffset(message->species, message->gender, v4, message->formNum, message->personality);
    PokemonSpriteData_SetYOffset(BattleSystem_GetPokemonSpriteData(battleSys), battlerData->battler, v3);

    v3 = ov12_022384CC(battlerData->battlerType, 1) + v3;
    PokemonSprite_SetAttribute(battlerData->monSprite, MON_SPRITE_Y_CENTER, v3);

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C77C(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0223EF8C(battleSys);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, 46);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C79C(BattleSystem *battleSys, BattlerData *battlerData)
{
    if (battlerData->bootState == 0x0) {
        {
            UnkStruct_ov16_02268A14 *v0;
            int v1;
            Healthbar *v2;
            NARC *v3;
            NARC *v4;

            v3 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            v4 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
            v0 = ov16_0223E02C(battleSys);

            ov16_02268C04(v3, v4, v0, 0, 0, NULL);
            ov16_0226BCCC(v0, 0);

            NARC_dtor(v3);
            NARC_dtor(v4);

            v1 = BattleSystem_GetPartner(battleSys, battlerData->battler);

            if (v1 != battlerData->battler) {
                v2 = BattleSystem_GetHealthbar(battleSys, v1);
                ov16_0226846C(v2);
            }

            ov16_022675AC(&battlerData->healthbar);
            ov16_02269218(v0);
            ov16_022647D8(battlerData);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, 47);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C840(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&battlerData->data[0];

    BattleDisplay_ShowBattleStartPartyGauge(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C854(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&battlerData->data[0];

    BattleDisplay_HideBattleStartPartyGauge(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C868(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&battlerData->data[0];

    if (BattleSystem_GetBattlerSide(battleSys, battlerData->battler)) {
        BattleDisplay_ShowPartyGauge(battleSys, battlerData, v0);
    } else {
        BattleController_EmitClearCommand(battleSys, battlerData->battler, 50);
    }

    ZeroDataBuffer(battlerData);
}

static void ov16_0225C8A4(BattleSystem *battleSys, BattlerData *battlerData)
{
    PartyGaugeData *v0 = (PartyGaugeData *)&battlerData->data[0];

    if (BattleSystem_GetBattlerSide(battleSys, battlerData->battler)) {
        BattleDisplay_HidePartyGauge(battleSys, battlerData, v0);
    } else {
        BattleController_EmitClearCommand(battleSys, battlerData->battler, 51);
    }

    ZeroDataBuffer(battlerData);
}

static void ov16_0225C8E0(BattleSystem *battleSys, BattlerData *battlerData)
{
    SpriteSystem *v0 = BattleSystem_GetSpriteSystem(battleSys);
    SpriteManager *v1 = BattleSystem_GetSpriteManager(battleSys);
    PaletteData *v2 = BattleSystem_GetPaletteData(battleSys);

    PartyGauge_LoadGraphics(v0, v1, v2);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, 52);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C91C(BattleSystem *battleSys, BattlerData *battlerData)
{
    SpriteManager *v0 = BattleSystem_GetSpriteManager(battleSys);

    PartyGauge_FreeGraphics(v0);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, 53);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C940(BattleSystem *battleSys, BattlerData *battlerData)
{
    RecordIncrementMessage *message = (RecordIncrementMessage *)&battlerData->data[0];

    if (message->battlerType == 0) {
        if (battlerData->bootState == 0x0) {
            BattleSystem_TryIncrementRecordValue(battleSys, message->record);
        }
    } else {
        if (battlerData->bootState != 0x0) {
            BattleSystem_TryIncrementRecordValue(battleSys, message->record);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C988(BattleSystem *battleSys, BattlerData *battlerData)
{
    LinkWaitMsgMessage *v0 = (LinkWaitMsgMessage *)&battlerData->data[0];

    ov16_0223F638(battleSys, v0->unk_02, v0->unk_04);
    ov16_0225E23C(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C9AC(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveAnimation *v0 = (MoveAnimation *)&battlerData->data[0];

    ov16_0225E294(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C9C0(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225E2C8(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C9D0(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225E300(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C9E0(BattleSystem *battleSys, BattlerData *battlerData)
{
    ov16_0225E338(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225C9F0(BattleSystem *battleSys, BattlerData *battlerData)
{
    EscapeMsgMessage *message = (EscapeMsgMessage *)&battlerData->data[0];

    ov16_0223F638(battleSys, message->unk_02, message->unk_04);
    ov16_0225E38C(battleSys, battlerData, message);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225CA14(BattleSystem *battleSys, BattlerData *battlerData)
{
    ForfeitMsgMessage *message = (ForfeitMsgMessage *)&battlerData->data[0];

    ov16_0223F638(battleSys, message->unk_02, message->unk_04);
    ov16_0225E3E0(battleSys, battlerData);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225CA38(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveAnimation *v0 = (MoveAnimation *)&battlerData->data[0];

    ov16_0225E434(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225CA4C(BattleSystem *battleSys, BattlerData *battlerData)
{
    MoveHitSoundMessage *v0 = (MoveHitSoundMessage *)&battlerData->data[0];

    ov16_0225E468(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225CA60(BattleSystem *battleSys, BattlerData *battlerData)
{
    MusicPlayMessage *v0 = (MusicPlayMessage *)&battlerData->data[0];

    ov16_0225E4C8(battleSys, battlerData, v0);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225CA74(BattleSystem *battleSys, BattlerData *battlerData)
{
    ResultSubmitMessage *message = (ResultSubmitMessage *)&battlerData->data[0];
    Party *v1;
    Pokemon *v2;
    int v3;
    int v4;
    int v5 = 0;
    int v6 = 0;
    u8 v7;

    ov16_0223F638(battleSys, message->unk_02, message->unk_08);

    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
        BattleSystem_SetResultMask(battleSys, message->resultMask);
    } else {
        for (v4 = 0; v4 < BattleSystem_GetMaxBattlers(battleSys); v4++) {
            v1 = BattleSystem_GetParty(battleSys, v4);

            for (v3 = 0; v3 < Party_GetCurrentCount(v1); v3++) {
                v2 = Party_GetPokemonBySlotIndex(v1, v3);

                if ((Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                    if (BattleSystem_GetBattlerSide(battleSys, v4)) {
                        v6 += Pokemon_GetValue(v2, MON_DATA_HP, NULL);
                    } else {
                        v5 += Pokemon_GetValue(v2, MON_DATA_HP, NULL);
                    }
                }
            }
        }

        if ((v5 == 0) && (v6 == 0)) {
            BattleSystem_SetResultMask(battleSys, 0x3);
        } else if (v5 == 0) {
            BattleSystem_SetResultMask(battleSys, 0x2);
        } else {
            BattleSystem_SetResultMask(battleSys, 0x1);
        }
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    ZeroDataBuffer(battlerData);
}

static void ov16_0225CB80(BattleSystem *battleSys, BattlerData *battlerData)
{
    Window *v0 = BattleSystem_GetWindow(battleSys, 0);

    Window_FillTilemap(v0, 0xff);
    Window_LoadTiles(v0);

    BattleController_EmitClearCommand(battleSys, battlerData->battler, 66);
    ZeroDataBuffer(battlerData);
}

static void ZeroDataBuffer(BattlerData *battlerData)
{
    battlerData->data[0] = 0;
}

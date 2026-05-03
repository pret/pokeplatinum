#include "battle/battle_display.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/battle/battle_controller.h"
#include "constants/battle/battle_script.h"
#include "constants/heap.h"
#include "constants/sound.h"
#include "constants/species.h"
#include "generated/battle_boot_states.h"
#include "generated/battle_message_tags.h"
#include "generated/items.h"
#include "generated/trainer_classes.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"
#include "struct_defs/fraction.h"
#include "struct_defs/move_animation.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/trainer.h"

#include "battle/battle_anim_battler_context.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_cursor.h"
#include "battle/battle_lib.h"
#include "battle/battle_main.h"
#include "battle/battle_message.h"
#include "battle/battle_system.h"
#include "battle/common.h"
#include "battle/healthbox.h"
#include "battle/message_defs.h"
#include "battle/move_display_info.h"
#include "battle/ov16_02264798.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_0225CBB8.h"
#include "battle/struct_ov16_02260C00.h"
#include "battle/struct_ov16_02260F14.h"
#include "battle/struct_ov16_022623F0.h"
#include "battle/struct_ov16_02264650.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_02269668.h"
#include "battle/struct_ov16_0226C378.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "battle/trainer_ai.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/const_ov12_0223B0A0.h"
#include "battle_anim/ov12_02235E94.h"
#include "battle_anim/ov12_02237EFC.h"
#include "battle_anim/ov12_022380BC.h"
#include "battle_anim/struct_ball_rotation_decl.h"
#include "battle_anim/struct_ov12_02223764.h"
#include "battle_anim/struct_ov12_02235FE0_decl.h"
#include "battle_anim/struct_ov12_02236030.h"
#include "battle_anim/struct_ov12_02237728.h"
#include "battle_anim/struct_ov12_02237F38.h"
#include "battle_anim/struct_ov12_022380DC.h"
#include "battle_sub_menus/battle_bag.h"
#include "battle_sub_menus/battle_bag_utils.h"
#include "battle_sub_menus/battle_party.h"

#include "assert.h"
#include "bg_window.h"
#include "brightness_controller.h"
#include "character_sprite.h"
#include "enums.h"
#include "flags.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0201567C.h"

#include "res/text/bank/battle_strings.h"

typedef struct TrainerEncounterData {
    BattleSystem *battleSys;
    UnkStruct_ov16_02268520 *unk_04;
    ManagedSprite *managedSprite;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    s16 unk_10;
    u16 unk_12_0 : 1;
    u16 padding_12_1 : 15;
    int battlerType;
    int delay;
    int unk_1C;
} TrainerEncounterData;

static void Task_SetEncounter(SysTask *task, void *data);
static void Task_SetGiratinaEncounter(SysTask *task, void *data);
static void Task_ShowEncounter(SysTask *task, void *data);
static void Task_ShowPokemon(SysTask *task, void *data);
static void Task_ReturnPokemon(SysTask *task, void *data);
static void Task_OpenCaptureBall(SysTask *task, void *data);
static void Task_SetTrainerEncounter(SysTask *task, void *data);
static void Task_ThrowTrainerBall(SysTask *task, void *data);
static void Task_SlideTrainerIn(SysTask *task, void *data);
static void Task_SlideTrainerOut(SysTask *task, void *data);
static void Task_SlideHealthBoxIn(SysTask *task, void *data);
static void Task_SlideHealthBoxOut(SysTask *task, void *data);
static void Task_PlayerSetCommandSelection(SysTask *task, void *data);
static void Task_TrainerSetCommandSelection(SysTask *task, void *data);
static void Task_LinkSetCommandSelection(SysTask *task, void *data);
static void Task_SafariPokemonSetCommandSelection(SysTask *task, void *data);
static void Task_PalParkPokemonSetCommandSelection(SysTask *task, void *data);
static void Task_RecordingSetCommandSelection(SysTask *task, void *data);
static void Task_PlayerShowMoveSelectMenu(SysTask *task, void *data);
static void Task_TrainerShowMoveSelectMenu(SysTask *task, void *data);
static void Task_LinkShowMoveSelectMenu(SysTask *task, void *data);
static void Task_RecordingShowMoveSelectMenu(SysTask *task, void *data);
static void Task_PlayerShowTargetSelectMenu(SysTask *task, void *data);
static void Task_TrainerShowTargetSelectMenu(SysTask *task, void *data);
static void Task_LinkShowTargetSelectMenu(SysTask *task, void *data);
static void Task_RecordingShowTargetSelectMenu(SysTask *task, void *data);
static void Task_PlayerShowBagMenu(SysTask *task, void *data);
static void Task_TrainerShowBagMenu(SysTask *task, void *data);
static void Task_LinkShowBagMenu(SysTask *task, void *data);
static void Task_RecordingShowBagMenu(SysTask *task, void *data);
static void Task_PlayerShowPartyMenu(SysTask *task, void *data);
static void Task_TrainerShowPartyMenu(SysTask *task, void *data);
static void Task_LinkShowPartyMenu(SysTask *task, void *data);
static void Task_RecordingShowPartyMenu(SysTask *task, void *data);
static void Task_PlayerShowYesNoMenu(SysTask *task, void *data);
static void Task_TrainerShowYesNoMenu(SysTask *task, void *data);
static void Task_LinkShowYesNoMenu(SysTask *task, void *data);
static void Task_RecordingShowYesNoMenu(SysTask *task, void *data);
static void Task_SetMoveAnimation(SysTask *task, void *data);
static void Task_FlickerBattler(SysTask *task, void *data);
static void Task_UpdateHPGauge(SysTask *task, void *data);
static void Task_UpdateExpGauge(SysTask *task, void *data);
static void Task_PlayFaintingSequence(SysTask *task, void *data);
static void Task_FadeOut(SysTask *task, void *data);
static void Task_ToggleVanish(SysTask *task, void *data);
static void Task_PlayLevelUpAnimation(SysTask *task, void *data);
static void Task_WaitForBattleMessagePrint(SysTask *task, void *data);
static void Task_WaitForAlertMessagePrint(SysTask *task, void *data);
static void ov16_02263014(SysTask *task, void *data);
static void Task_ForgetMove(SysTask *task, void *data);
static void Task_SetMosaic(SysTask *task, void *data);
static void Task_ShowPartyGauge(SysTask *task, void *data);
static void Task_HidePartyGauge(SysTask *task, void *data);
static void Task_SpriteToOAM(SysTask *task, void *data);
static void Task_OAMToSprite(SysTask *task, void *data);
static PokemonSprite *BattleDisplay_NewPokemonSprite(BattleSystem *battleSys, PokemonSpriteManager *monSpriteMan, PokemonSpriteTemplate *spriteTemplate, int x, int y, int z, int yOffset, int height, int xOffset, int shadowSize, int battler, SpriteAnimFrame *animFrames, PokemonSpriteCallback *callback);
static void LoadRecallMessage(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message, BattleMessage *battleMsg);
static void LoadSendOutMessage(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message, BattleMessage *battleMsg);
static void LoadBattleStartMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
static void LoadLeadMonMessage(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message, BattleMessage *battleMsg);
static void LoadResultMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
static void LoadEscapeMessage(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message, BattleMessage *battleMsg);
static void LoadForfeitMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
static ManagedSprite *BattleDisplay_NewManagedSpriteTrainer(BattleSystem *battleSys, int side, int trainerClass, int battlerType, s16 x, s16 y);
static void ov16_02264408(BattleSystem *battleSys, BattlerData *battlerData, BattleAnimSystem *battleAnimSystem, MoveAnimation *animation);
static void ov16_02264530(BattleSystem *battleSys, MoveAnimation *animation, UnkStruct_ov12_022380DC *param2, int param3);
static void ov16_022645B8(u8 *param0, u8 *param1, int param2, int param3, u16 param4);
static BOOL ov16_02264650(TrainerEncounterData *trainerEncounterData, ManagedSprite *unused);
static void ov16_022646C8(SysTask *task, void *data);
static void ov16_02264730(BattleSystem *battleSys);
static void ov16_0226474C(BattleSystem *battleSys);
static u8 ov16_02264768(BattleSystem *battleSys, u8 battler, u8 trainerClass);

static const u16 sFadeColors[] = {
    RGB(0, 0, 0),
    RGB(23, 20, 28),
    RGB(31, 31, 15),
    RGB(16, 23, 30),
    RGB(31, 22, 30),
    RGB(23, 30, 20),
    RGB(21, 31, 25),
    RGB(12, 25, 30),
    RGB(30, 27, 10),
    RGB(31, 24, 16),
    RGB(29, 30, 30),
    RGB(31, 17, 10),
    RGB(31, 9, 10),
    RGB(14, 14, 17),
    RGB(31, 24, 28),
    RGB(17, 26, 31),
    RGB(30, 8, 5),
};

void ov16_0225CBB8(BattleSystem *battleSys, BattlerData *battlerData)
{
    UnkStruct_ov16_0225CBB8 *v0 = (UnkStruct_ov16_0225CBB8 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0225CBB8));
    v0->battleSys = battleSys;
    v0->unk_14 = 0;
    v0->unk_15 = 0;
    v0->unk_16 = 0;

    SysTask_Start(ov16_02263014, v0, 0);
}

typedef struct MonEncounterData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *sprite;
    UnkStruct_ov16_02268520 *unk_0C;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    s16 unk_14;
    u16 species;
    enum PokemonCryMod cryMod;
    int battlerType;
    int delay;
    int nature;
    BOOL isShiny;
    u8 formNum;
    u8 padding_2D[3];
} MonEncounterData;

void BattleDisplay_InitTaskSetEncounter(BattleSystem *battleSys, BattlerData *battlerData, MonEncounterMessage *message)
{
    BOOL isShiny;
    PokemonSpriteTemplate spriteTemplate;
    PokemonSpriteManager *spriteMan = BattleSystem_GetPokemonSpriteManager(battleSys);
    SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];
    MonEncounterData *monEncounterData;
    int battleType = BattleSystem_GetBattleType(battleSys);
    u8 yOffset;
    s8 height;
    s8 shadowXOffset;
    u8 shadowSize;

    monEncounterData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonEncounterData));

    monEncounterData->state = 0;

    if (battlerData->battlerType & BATTLER_THEM) {
        monEncounterData->face = FACE_FRONT;
        monEncounterData->unk_0C = ov16_0223E020(battleSys, 1);
        ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, gEncounterCoords[battlerData->battlerType & BATTLER_THEM][0], 8 * 11);
    } else {
        monEncounterData->face = FACE_BACK;
        monEncounterData->unk_0C = ov16_0223E020(battleSys, 0);
        ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, gEncounterCoords[battlerData->battlerType & BATTLER_THEM][0], 128 + 8);
    }

    isShiny = !!message->isShiny;

    BuildPokemonSpriteTemplate(&spriteTemplate, message->species, message->gender, monEncounterData->face, isShiny, message->formNum, message->personality);

    yOffset = LoadPokemonSpriteYOffset(message->species, message->gender, monEncounterData->face, message->formNum, message->personality);

    PokemonSprite_LoadYOffset(battlerData->narc, &height, message->species);
    PokemonSprite_LoadXOffsetShadow(battlerData->narc, &shadowXOffset, message->species);
    PokemonSprite_LoadShadowSize(battlerData->narc, &shadowSize, message->species);
    PokemonSprite_LoadAnimFrames(battlerData->narc, &animFrames[0], message->species, battlerData->battlerType);

    monEncounterData->sprite = battlerData->monSprite = BattleDisplay_NewPokemonSprite(battleSys,
        spriteMan,
        &spriteTemplate,
        gEncounterCoords[battlerData->battlerType][0],
        gEncounterCoords[battlerData->battlerType][1],
        gEncounterCoords[battlerData->battlerType][2],
        yOffset,
        height,
        shadowXOffset,
        shadowSize,
        battlerData->battler,
        &animFrames[0],
        NULL);

    if (monEncounterData->face == FACE_FRONT) {
        PokemonSprite_StartFade(monEncounterData->sprite, 8, 8, 0, 0);
    }

    if (monEncounterData->face == FACE_FRONT && (BattleSystem_GetBattleStatusMask(battleSys) & BATTLE_STATUS_GIRATINA)) {
        int v10 = ((24 * 8) - -80) / 2;
        int v11 = PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER);

        PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_SIZE, 0);
        PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, 256 - 64);
        PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER, v11 - v10);

        monEncounterData->unk_14 = v11;
    } else {
        monEncounterData->unk_14 = Unk_ov12_0223B0A0[battlerData->battlerType][0];
    }

    monEncounterData->battleSys = battleSys;
    monEncounterData->battlerData = battlerData;
    monEncounterData->command = message->command;
    monEncounterData->battler = battlerData->battler;
    monEncounterData->species = message->species;
    monEncounterData->formNum = message->formNum;
    monEncounterData->cryMod = message->cryModulation;
    monEncounterData->battlerType = battlerData->battlerType;
    monEncounterData->nature = Pokemon_GetNatureOf(message->personality);
    monEncounterData->isShiny = message->isShiny;

    if (monEncounterData->face == FACE_FRONT && (BattleSystem_GetBattleStatusMask(battleSys) & BATTLE_STATUS_GIRATINA)) {
        SysTask_Start(Task_SetGiratinaEncounter, monEncounterData, 0);
    } else {
        SysTask_Start(Task_SetEncounter, monEncounterData, 0);
    }

    Sound_Set2PokemonCriesAllowed(TRUE);
}

typedef struct MonShowData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    UnkStruct_ov12_02235FE0 *unk_08;
    BallRotation *ballRotation;
    UnkStruct_ov12_02223764 *unk_10;
    PokemonSpriteTemplate spriteTemplate;
    BattleAnimSystem *battleAnimSys;
    MoveAnimation moveAnim;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    u8 face;
    u8 yOffset;
    u16 species;
    enum PokemonCryMod cryMod;
    u8 selectedPartySlot;
    u8 nature;
    u16 capturedBall;
    s8 height;
    s8 shadowXOffset;
    u8 isShiny;
    u8 shadowSize;
    u16 unk_94;
    u8 delay;
    u8 formNum;
    int isSubstitute;
} MonShowData;

void BattleDisplay_InitTaskShowEncounter(BattleSystem *battleSys, BattlerData *battlerData, MonShowMessage *message)
{
    BOOL isShiny;
    MonShowData *monShowData;
    int battleType = BattleSystem_GetBattleType(battleSys);
    monShowData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonShowData));

    if (battlerData->battlerType & BATTLER_THEM) {
        monShowData->face = FACE_FRONT;
    } else {
        monShowData->face = FACE_BACK;
    }

    isShiny = !!message->isShiny;

    BuildPokemonSpriteTemplate(&monShowData->spriteTemplate, message->species, message->gender, monShowData->face, isShiny, message->formNum, message->personality);

    monShowData->yOffset = LoadPokemonSpriteYOffset(message->species, message->gender, monShowData->face, message->formNum, message->personality);

    PokemonSprite_LoadYOffset(battlerData->narc, &monShowData->height, message->species);
    PokemonSprite_LoadXOffsetShadow(battlerData->narc, &monShowData->shadowXOffset, message->species);
    PokemonSprite_LoadShadowSize(battlerData->narc, &monShowData->shadowSize, message->species);
    ov16_02263B10(battlerData);

    monShowData->battleSys = battleSys;
    monShowData->battlerData = battlerData;
    monShowData->state = 0;
    monShowData->delay = 0;
    monShowData->command = message->command;
    monShowData->battler = battlerData->battler;
    monShowData->species = message->species;
    monShowData->formNum = message->formNum;
    monShowData->battlerType = battlerData->battlerType;
    monShowData->cryMod = message->cryModulation;
    monShowData->selectedPartySlot = message->selectedPartySlot;
    monShowData->nature = Pokemon_GetNatureOf(message->personality);
    monShowData->capturedBall = message->capturedBall;
    monShowData->isShiny = message->isShiny;
    monShowData->unk_94 = 0;

    Sound_Set2PokemonCriesAllowed(TRUE);
    SysTask_Start(Task_ShowEncounter, monShowData, 0);
}

void BattleDisplay_InitTaskShowPokemon(BattleSystem *battleSys, BattlerData *battlerData, MonShowMessage *message)
{
    BOOL isShiny;
    MonShowData *monShowData;
    int battleType = BattleSystem_GetBattleType(battleSys);
    monShowData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonShowData));
    monShowData->state = 0;

    if (battlerData->battlerType & BATTLER_THEM) {
        monShowData->face = FACE_FRONT;
    } else {
        monShowData->face = FACE_BACK;
    }

    isShiny = !!message->isShiny;

    BuildPokemonSpriteTemplate(&monShowData->spriteTemplate, message->species, message->gender, monShowData->face, isShiny, message->formNum, message->personality);

    monShowData->yOffset = LoadPokemonSpriteYOffset(message->species, message->gender, monShowData->face, message->formNum, message->personality);

    PokemonSprite_LoadYOffset(battlerData->narc, &monShowData->height, message->species);
    PokemonSprite_LoadXOffsetShadow(battlerData->narc, &monShowData->shadowXOffset, message->species);
    PokemonSprite_LoadShadowSize(battlerData->narc, &monShowData->shadowSize, message->species);
    ov16_02263B10(battlerData);

    monShowData->battleSys = battleSys;
    monShowData->battlerData = battlerData;
    monShowData->command = message->command;
    monShowData->battler = battlerData->battler;
    monShowData->species = message->species;
    monShowData->formNum = message->formNum;
    monShowData->battlerType = battlerData->battlerType;
    monShowData->cryMod = message->cryModulation;
    monShowData->selectedPartySlot = message->selectedPartySlot;
    monShowData->nature = Pokemon_GetNatureOf(message->personality);
    monShowData->capturedBall = message->capturedBall;
    monShowData->isShiny = message->isShiny;
    monShowData->unk_94 = message->unk_14;
    monShowData->delay = 0;
    monShowData->isSubstitute = message->isSubstitute;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        monShowData->moveAnim.species[i] = message->battleMonSpecies[i];
        monShowData->moveAnim.genders[i] = message->battleMonGenders[i];
        monShowData->moveAnim.isShiny[i] = message->battleMonIsShiny[i];
        monShowData->moveAnim.formNums[i] = message->battleMonFormNums[i];
        monShowData->moveAnim.personalities[i] = message->battleMonPersonalities[i];
    }

    SysTask_Start(Task_ShowPokemon, monShowData, 0);
}

typedef struct MonReturnData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *monSprite;
    BallRotation *ballRotation;
    MoveAnimation moveAnim;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    u8 yOffset;
    u8 unused;
    u16 capturedBall;
    int isSubstitute;
} MonReturnData;

void BattleDisplay_InitTaskReturnPokemon(BattleSystem *battleSys, BattlerData *battlerData, MonReturnMessage *message)
{
    MonReturnData *monReturnData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonReturnData));
    monReturnData->battleSys = battleSys;
    monReturnData->battlerData = battlerData;
    monReturnData->monSprite = battlerData->monSprite;
    monReturnData->command = message->command;
    monReturnData->battler = battlerData->battler;
    monReturnData->battlerType = battlerData->battlerType;
    monReturnData->state = 0;
    monReturnData->yOffset = message->yOffset;
    monReturnData->capturedBall = message->capturedBall;
    monReturnData->isSubstitute = message->isSubstitute;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        monReturnData->moveAnim.species[i] = message->battleMonSpecies[i];
        monReturnData->moveAnim.genders[i] = message->battleMonGenders[i];
        monReturnData->moveAnim.isShiny[i] = message->battleMonIsShiny[i];
        monReturnData->moveAnim.formNums[i] = message->battleMonFormNums[i];
        monReturnData->moveAnim.personalities[i] = message->battleMonPersonalities[i];
    }

    SysTask_Start(Task_ReturnPokemon, monReturnData, 0);
}

typedef struct OpenCaptureBallData {
    BattleSystem *battleSys;
    PokemonSprite *monSprite;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    u8 yOffset;
    u8 unused_0D;
    u16 unused_0E;
} OpenCaptureBallData;

void BattleDisplay_InitTaskOpenCaptureBall(BattleSystem *battleSys, BattlerData *battlerData, OpenCaptureBallMessage *message)
{
    OpenCaptureBallData *captureOpenBallData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(OpenCaptureBallData));

    captureOpenBallData->battleSys = battleSys;
    captureOpenBallData->monSprite = battlerData->monSprite;
    captureOpenBallData->command = message->command;
    captureOpenBallData->battler = battlerData->battler;
    captureOpenBallData->battlerType = battlerData->battlerType;
    captureOpenBallData->state = 0;
    captureOpenBallData->yOffset = message->yOffset;

    PokemonSprite_StartFade(captureOpenBallData->monSprite, 0, 16, 0, sFadeColors[message->ball]);
    PokemonSprite_SetAttribute(captureOpenBallData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, TRUE);
    SysTask_Start(Task_OpenCaptureBall, captureOpenBallData, 0);
}

void BattleDisplay_InitTaskSetTrainerEncounter(BattleSystem *battleSys, BattlerData *battlerData, TrainerEncounterMessage *message)
{
    TrainerEncounterData *trainerEncounterData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerEncounterData));
    int side;

    trainerEncounterData->state = 0;

    if (battlerData->battlerType & BATTLER_THEM) {
        trainerEncounterData->face = FACE_FRONT;
        trainerEncounterData->unk_04 = ov16_0223E020(battleSys, 1);
        ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, gEncounterCoords[battlerData->battlerType & BATTLER_THEM][0], 8 * 11);
    } else {
        trainerEncounterData->face = FACE_BACK;
        trainerEncounterData->unk_04 = ov16_0223E020(battleSys, 0);
        ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, gEncounterCoords[battlerData->battlerType & BATTLER_THEM][0], 128 + 8);
    }

    if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_2vs2)
        || (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_TAG && battlerData->battlerType & BATTLE_TYPE_TRAINER)) {
        side = battlerData->battlerType;
    } else {
        side = battlerData->battlerType & BATTLER_THEM;
    }

    message->trainerType = ov16_02264768(battleSys, battlerData->battler, message->trainerType);

    trainerEncounterData->managedSprite = battlerData->managedSprite = BattleDisplay_NewManagedSpriteTrainer(battleSys,
        side,
        message->trainerType,
        battlerData->battlerType,
        gEncounterCoords[side][0],
        gEncounterCoords[side][1]);
    trainerEncounterData->unk_10 = Unk_ov12_0223B0A0[side][0];
    trainerEncounterData->battleSys = battleSys;
    trainerEncounterData->command = message->command;
    trainerEncounterData->battler = battlerData->battler;
    trainerEncounterData->battlerType = battlerData->battlerType;
    trainerEncounterData->unk_1C = 0;

    if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER
        || trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
        Bg_SetOffset(BattleSystem_GetBgConfig(battleSys), BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SUB_X, 4 * 33);
    }

    SysTask_Start(Task_SetTrainerEncounter, trainerEncounterData, 0);
}

typedef struct TrainerThrowBallData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    int unk_0C;
    int ballTypeIn;
    int delay;
    int unk_18;
} TrainerThrowBallData;

void BattleDisplay_InitTaskThrowTrainerBall(BattleSystem *battleSys, BattlerData *battlerData, TrainerThrowBallMessage *message)
{
    TrainerThrowBallData *trainerThrowBallData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerThrowBallData));

    trainerThrowBallData->state = 0;
    trainerThrowBallData->battleSys = battleSys;
    trainerThrowBallData->command = message->command;
    trainerThrowBallData->ballTypeIn = message->ballTypeIn;
    trainerThrowBallData->battler = battlerData->battler;
    trainerThrowBallData->battlerData = battlerData;

    if (battlerData->battlerType & BATTLER_THEM) {
        trainerThrowBallData->face = FACE_FRONT;
        trainerThrowBallData->unk_0C = 0;
    } else {
        Trainer *trainer = BattleSystem_GetTrainer(battleSys, battlerData->battler);
        trainerThrowBallData->face = FACE_BACK;
        trainerThrowBallData->unk_0C = SpriteSystem_TrainerClassBackSpriteIndex(ov16_02264768(battleSys, battlerData->battler, trainer->header.trainerType));
    }

    SysTask_Start(Task_ThrowTrainerBall, trainerThrowBallData, 0);
}

typedef struct SlideTrainerOutData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    int unused;
} SlideTrainerOutData;

void BattleDisplay_InitTaskSlideTrainerOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    SlideTrainerOutData *slideTrainerOutData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideTrainerOutData));

    slideTrainerOutData->state = 0;
    slideTrainerOutData->battleSys = battleSys;
    slideTrainerOutData->command = battlerData->data[0];
    slideTrainerOutData->battler = battlerData->battler;
    slideTrainerOutData->battlerData = battlerData;

    if (battlerData->battlerType & BATTLER_THEM) {
        slideTrainerOutData->face = FACE_FRONT;
    } else {
        slideTrainerOutData->face = FACE_BACK;
    }

    SysTask_Start(Task_SlideTrainerOut, slideTrainerOutData, 0);
}

typedef struct SlideTrainerInData {
    BattleSystem *battleSys;
    ManagedSprite *managedSprite;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    s16 x;
    u16 unused;
} SlideTrainerInData;

void BattleDisplay_InitTaskSlideTrainerIn(BattleSystem *battleSys, BattlerData *battlerData, TrainerSlideInMessage *message)
{
    PokemonSpriteManager *unused = BattleSystem_GetPokemonSpriteManager(battleSys);
    SlideTrainerInData *slideTrainerInData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideTrainerInData));
    slideTrainerInData->state = 0;

    if (battlerData->battlerType & BATTLER_THEM) {
        slideTrainerInData->face = FACE_FRONT;
    } else {
        slideTrainerInData->face = FACE_BACK;
    }

    slideTrainerInData->managedSprite = battlerData->managedSprite = BattleDisplay_NewManagedSpriteTrainer(battleSys,
        battlerData->battlerType & BATTLER_THEM,
        message->trainerType,
        battlerData->battlerType,
        gSlideTrainerInCoords[battlerData->battlerType & BATTLER_THEM][0],
        gSlideTrainerInCoords[battlerData->battlerType & BATTLER_THEM][1]);
    slideTrainerInData->x = Unk_ov12_0223B0A0[battlerData->battlerType & BATTLER_THEM][message->posIn];
    slideTrainerInData->battleSys = battleSys;
    slideTrainerInData->command = message->command;
    slideTrainerInData->battler = battlerData->battler;

    SysTask_Start(Task_SlideTrainerIn, slideTrainerInData, 0);
}

void BattleDisplay_InitTaskSlideHealthBoxIn(BattleSystem *battleSys, BattlerData *battlerData, HealthBoxData *healthboxData)
{
    HealthBox *healthbox = &battlerData->healthbox;
    MI_CpuClearFast(&healthbox->state, sizeof(u8));

    healthbox->battleSys = battleSys;
    healthbox->battler = battlerData->battler;
    healthbox->type = HealthBox_Type(battlerData->battlerType, BattleSystem_GetBattleType(battleSys));
    healthbox->command = healthboxData->command;
    healthbox->curHP = healthboxData->curHP;
    healthbox->maxHP = healthboxData->maxHP;
    healthbox->level = healthboxData->level;
    healthbox->gender = healthboxData->gender;
    healthbox->damage = 0;
    healthbox->curExp = healthboxData->expFromLastLevel;
    healthbox->maxExp = healthboxData->expToNextLevel;
    healthbox->selectedPartySlot = healthboxData->selectedPartySlot;
    healthbox->status = healthboxData->status;
    healthbox->caughtSpecies = healthboxData->speciesCaught;
    healthbox->delay = healthboxData->delay;
    healthbox->numSafariBalls = healthboxData->numSafariBalls;

    HealthBox_Enable(healthbox, FALSE);
    HealthBox_DrawInfo(healthbox, healthbox->curHP, HEALTHBOX_INFO_ALL);

    healthbox->task_10 = SysTask_Start(Task_SlideHealthBoxIn, healthbox, 1000);
}

void BattleDisplay_InitTaskSlideHealthBoxOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    HealthBox *healthbox = &battlerData->healthbox;
    MI_CpuClearFast(&healthbox->state, sizeof(u8));

    healthbox->battleSys = battleSys;
    healthbox->battler = battlerData->battler;
    healthbox->command = battlerData->data[0];

    HealthBox_Scroll(healthbox, HEALTHBOX_SCROLL_OUT);

    healthbox->task_10 = SysTask_Start(Task_SlideHealthBoxOut, healthbox, 1000);
}

typedef struct CommandSetData {
    BattleSystem *battleSys;
    void *healthbox;
    u8 command;
    u8 battler;
    u8 state;
    s8 unused_0B;
    int input;
    u8 ballStatus[PARTY_GAUGE_COUNT][MAX_PARTY_SIZE];
    u8 expPercents[MAX_PARTY_SIZE];
    u8 unused_22;
    u8 partySlot;
    u16 moves[MAX_BATTLERS];
    u8 curPP[MAX_BATTLERS];
    u8 maxPP[MAX_BATTLERS];
    u8 battlerType;
    u8 msgIdx;
    s16 curHP;
    u16 maxHP;
    u8 ballStatusBattler;
    u8 switchingOrCanPickCommandMask;
} CommandSetData;

void BattleDisplay_InitTaskSetCommandSelection(BattleSystem *battleSys, BattlerData *battlerData, CommandSetMessage *message)
{
    CommandSetData *commandSetData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(CommandSetData));
    int i;
    MI_CpuClearFast(commandSetData, sizeof(CommandSetData));

    commandSetData->state = 0;
    commandSetData->unused_0B = 0;
    commandSetData->battleSys = battleSys;
    commandSetData->command = message->command;
    commandSetData->battler = battlerData->battler;
    commandSetData->battlerType = battlerData->battlerType;
    commandSetData->healthbox = &battlerData->healthbox;
    commandSetData->partySlot = message->partySlot;
    commandSetData->curHP = message->curHP;
    commandSetData->maxHP = message->maxHP;
    commandSetData->ballStatusBattler = message->ballStatusBattler;
    commandSetData->switchingOrCanPickCommandMask = message->switchingOrCanPickCommandMask;

    for (i = 0; i < PARTY_GAUGE_COUNT; i++) {
        for (int j = 0; j < MAX_PARTY_SIZE; j++) {
            commandSetData->ballStatus[i][j] = message->ballStatus[i][j];
        }
    }

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        if (message->ballStatus[0][i] == STOCK_STATUS_MON_FAINTED) {
            commandSetData->expPercents[i] = 0;
        } else {
            commandSetData->expPercents[i] = message->expPercents[i];
        }
    }

    for (int battler = 0; battler < MAX_BATTLERS; battler++) {
        commandSetData->moves[battler] = message->moves[battler];
        commandSetData->curPP[battler] = message->curPP[battler];
        commandSetData->maxPP[battler] = message->maxPP[battler];
    }

    SysTask_Start(battlerData->taskFuncs.setCommandSelection, commandSetData, 0);
}

typedef struct MoveSelectMenuData {
    BattleSystem *battleSys;
    void *healthbox;
    int input;
    u16 moves[MAX_BATTLERS];
    u8 ppCur[MAX_BATTLERS];
    u8 ppMax[MAX_BATTLERS];
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 partySlot;
    u8 state;
    u8 unused;
    u16 invalidMoves;
} MoveSelectMenuData;

void BattleDisplay_InitTaskShowMoveSelectMenu(BattleSystem *battleSys, BattlerData *battlerData, MoveSelectMenuMessage *message)
{
    MoveSelectMenuData *moveSelectMenuData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(MoveSelectMenuData));

    moveSelectMenuData->state = 0;
    moveSelectMenuData->battleSys = battleSys;
    moveSelectMenuData->command = battlerData->data[0];
    moveSelectMenuData->battler = battlerData->battler;
    moveSelectMenuData->battlerType = battlerData->battlerType;
    moveSelectMenuData->healthbox = &battlerData->healthbox;
    moveSelectMenuData->partySlot = message->partySlot;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        moveSelectMenuData->moves[i] = message->moves[i];
        moveSelectMenuData->ppCur[i] = message->ppCur[i];
        moveSelectMenuData->ppMax[i] = message->ppMax[i];
    }

    moveSelectMenuData->invalidMoves = message->invalidMoves;

    SysTask_Start(battlerData->taskFuncs.showMoveSelectMenu, moveSelectMenuData, 0);
}

#include "battle/struct_ov16_0225C29C_sub1.h"

typedef struct TargetSelectMenuData {
    BattleSystem *battleSys;
    void *healthbox;
    int input;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    UnkStruct_ov16_0225C29C_sub1 targetMon[MAX_BATTLERS];
    u16 range;
    u8 unk_32;
    u8 unused;
} TargetSelectMenuData;

void BattleDisplay_InitTaskShowTargetSelectMenu(BattleSystem *battleSys, BattlerData *battlerData, TargetSelectMenuMessage *message)
{
    TargetSelectMenuData *targetSelectMenuData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TargetSelectMenuData));
    int maxBattlers;
    u32 battleType;
    u8 battlerTypes[6];

    targetSelectMenuData->state = 0;
    targetSelectMenuData->battleSys = battleSys;
    targetSelectMenuData->command = battlerData->data[0];
    targetSelectMenuData->battler = battlerData->battler;
    targetSelectMenuData->battlerType = battlerData->battlerType;
    targetSelectMenuData->range = message->range;
    targetSelectMenuData->healthbox = &battlerData->healthbox;
    targetSelectMenuData->unk_32 = message->unk_01;

    BattleSystem_SetBattlerTypes(battleSys, &battlerTypes[0]);

    maxBattlers = BattleSystem_GetMaxBattlers(battleSys);
    battleType = BattleSystem_GetBattleType(battleSys);

    for (int i = 0; i < maxBattlers; i++) {
        targetSelectMenuData->targetMon[i] = message->targetMon[i];
    }

    SysTask_Start(battlerData->taskFuncs.showTargetSelectMenu, targetSelectMenuData, 0);
}

#include "battle_sub_menus/battle_party.h"

typedef struct PartyMenuData {
    BattleSystem *battleSys;
    BattlePartyContext *battlePartyCtx;
    u8 command;
    u8 battler;
    u8 state;
    u8 listMode;
    u8 partySlots[MAX_BATTLERS];
    int canSwitch;
    u16 selectedBattleBagItem;
    u8 doublesSelection;
    u8 isCursorEnabled;
    u8 battlersSwitchingMask;
    u8 unused[3];
    u8 partyOrder[MAX_BATTLERS][MAX_PARTY_SIZE];
} PartyMenuData;

typedef struct BagMenuData {
    BattleSystem *battleSys;
    BattleBagContext *battleBagCtx;
    PartyMenuData *partyMenuData;
    u8 command;
    u8 battler;
    u8 state;
    u8 battlerType;
    u8 isCursorEnabled;
    u8 msgIdx;
    u16 stateAfterDelay;
    u8 hasTwoOpponents;
    u8 semiInvulnerable;
    u8 substitute;
    u8 delay;
    u8 partyOrder[MAX_BATTLERS][MAX_PARTY_SIZE];
    u8 embargoTurns[MAX_BATTLERS];
} BagMenuData;

void BattleDisplay_InitTaskShowBagMenu(BattleSystem *battleSys, BattlerData *battlerData, BagMenuMessage *message)
{
    BagMenuData *bagMenuData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BagMenuData));

    bagMenuData->partyMenuData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyMenuData));
    bagMenuData->partyMenuData->battlePartyCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
    bagMenuData->partyMenuData->battlePartyCtx->party = Party_New(HEAP_ID_BATTLE);
    bagMenuData->state = 0;
    bagMenuData->battleSys = battleSys;
    bagMenuData->command = message->command;
    bagMenuData->battler = battlerData->battler;
    bagMenuData->battlerType = battlerData->battlerType;
    bagMenuData->hasTwoOpponents = message->hasTwoOpponents;
    bagMenuData->semiInvulnerable = message->semiInvulnerable;
    bagMenuData->substitute = message->substitute;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        bagMenuData->partyMenuData->partySlots[i] = message->partySlots[i];

        for (int j = 0; j < MAX_PARTY_SIZE; j++) {
            bagMenuData->partyOrder[i][j] = message->partyOrder[i][j];
        }

        bagMenuData->embargoTurns[i] = message->embargoTurns[i];
    }

    SysTask_Start(battlerData->taskFuncs.showBagMenu, bagMenuData, 0);
}

void BattleDisplay_InitTaskShowPartyMenu(BattleSystem *battleSys, BattlerData *battlerData, PartyMenuMessage *message)
{
    PartyMenuData *partyMenuData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyMenuData));

    partyMenuData->state = 0;
    partyMenuData->battleSys = battleSys;
    partyMenuData->command = message->command;
    partyMenuData->battler = message->battler;
    partyMenuData->listMode = message->listMode;
    partyMenuData->canSwitch = message->canSwitch;
    partyMenuData->doublesSelection = message->doublesSelection;
    partyMenuData->selectedBattleBagItem = 0;
    partyMenuData->battlersSwitchingMask = message->battlersSwitchingMask;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        partyMenuData->partySlots[i] = message->selectedPartySlot[i];

        for (int j = 0; j < MAX_PARTY_SIZE; j++) {
            partyMenuData->partyOrder[i][j] = message->partyOrder[i][j];
        }
    }

    SysTask_Start(battlerData->taskFuncs.showPartyMenu, partyMenuData, 0);
}

typedef struct YesNoMenuData {
    BattleSystem *battleSys;
    void *healthbox;
    int input;
    u8 command;
    u8 battler;
    u8 state;
    u8 yesNoType;
    int promptMsg;
    int nickname;
    u16 move;
    u16 msgIdx;
} YesNoMenuData;

void BattleDisplay_InitTaskShowYesNoMenu(BattleSystem *battleSys, BattlerData *battlerData, YesNoMenuMessage *message)
{
    YesNoMenuData *yesNoMenuData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(YesNoMenuData));

    yesNoMenuData->state = 0;
    yesNoMenuData->battleSys = battleSys;
    yesNoMenuData->command = message->command;
    yesNoMenuData->battler = battlerData->battler;
    yesNoMenuData->healthbox = &battlerData->healthbox;
    yesNoMenuData->promptMsg = message->promptMsg;
    yesNoMenuData->yesNoType = message->yesNoType;
    yesNoMenuData->move = message->move;
    yesNoMenuData->nickname = message->nickname;

    SysTask_Start(battlerData->taskFuncs.showYesNoMenu, yesNoMenuData, 0);
}

typedef struct BattleMessageWaitTask {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 msgIdx;
} BattleMessageWaitTask;

void BattleDisplay_PrintAttackMessage(BattleSystem *battleSys, BattlerData *battlerData, AttackMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader = BattleSystem_GetAttackMessageLoader(battleSys);
    BattleMessage battleMsg;

    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;

    battleMsg.id = message->move * 3;
    battleMsg.tags = TAG_NICKNAME;
    battleMsg.params[0] = battlerData->battler | (message->partySlot << 8);

    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(battleSys);
    BattleMessageWaitTask *waitTask = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = battlerData->data[0];
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

typedef struct SetMoveAnimationData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *monSprite;
    BattleAnimSystem *battleAnimSys;
    MoveAnimation moveAnim;
    u8 command;
    u8 battler;
    u8 state;
    u8 unk_6B;
    u8 unk_6C;
    u8 unused[3];
} SetMoveAnimationData;

void BattleDisplay_InitTaskSetMoveAnimation(BattleSystem *battleSys, BattlerData *battlerData, MoveAnimation *animation)
{
    SetMoveAnimationData *setMoveAnimationData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SetMoveAnimationData));

    setMoveAnimationData->state = 0;
    setMoveAnimationData->battleSys = battleSys;
    setMoveAnimationData->battlerData = battlerData;
    setMoveAnimationData->command = battlerData->data[0];
    setMoveAnimationData->battler = battlerData->battler;
    setMoveAnimationData->battleAnimSys = BattleSystem_GetBattleAnimSystem(battleSys);
    setMoveAnimationData->moveAnim = *animation;
    setMoveAnimationData->monSprite = battlerData->monSprite;

    if (animation->unk_4C == 1 && animation->unk_50 == 25) {
        battlerData->unk_19C = 1;
    }

    if (animation->unk_4C == 1 && animation->unk_50 == 26) {
        battlerData->unk_19C = 0;
    }

    ov16_022645B8(&setMoveAnimationData->unk_6B, &setMoveAnimationData->unk_6C, animation->unk_4C, animation->unk_50, animation->move);
    SysTask_Start(Task_SetMoveAnimation, setMoveAnimationData, 0);
}

typedef struct FlickerBattlerData {
    BattleSystem *battleSys;
    PokemonSprite *monSprite;
    u8 battler;
    u8 counter;
    u8 delay;
    u8 unused;
} FlickerBattlerData;

void BattleDisplay_InitTaskFlickerBattler(BattleSystem *battleSys, BattlerData *battlerData)
{
    FlickerBattlerData *flickerBattlerData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(FlickerBattlerData));

    flickerBattlerData->counter = 0;
    flickerBattlerData->battleSys = battleSys;
    flickerBattlerData->monSprite = battlerData->monSprite;
    flickerBattlerData->battler = battlerData->battler;
    flickerBattlerData->delay = 0;

    SysTask_Start(Task_FlickerBattler, flickerBattlerData, 0);
}

void BattleDisplay_InitTaskUpdateHPGauge(BattleSystem *battleSys, BattlerData *battlerData, HPGaugeUpdateMessage *message)
{
    HealthBox *healthbox;

    GF_ASSERT(battlerData->healthbox.mainSprite != NULL);

    healthbox = &battlerData->healthbox;
    MI_CpuClear8(&healthbox->state, sizeof(u8));

    healthbox->battleSys = battleSys;
    healthbox->command = message->command;
    healthbox->battler = battlerData->battler;
    healthbox->type = HealthBox_Type(battlerData->battlerType, BattleSystem_GetBattleType(battleSys));
    healthbox->curHP = message->curHP;
    healthbox->maxHP = message->maxHP;
    healthbox->damage = message->hpCalcTemp;
    healthbox->level = message->level;

    if (message->hpCalcTemp == HP_CALC_INSTANT_ZERO) {
        healthbox->curHP = 0;
        healthbox->damage = 0;
    }

    healthbox->task_10 = SysTask_Start(Task_UpdateHPGauge, healthbox, 1000);
}

void BattleDisplay_InitTaskUpdateExpGauge(BattleSystem *battleSys, BattlerData *battlerData, ExpGaugeUpdateMessage *message)
{
    HealthBox *healthbox;

    GF_ASSERT(battlerData->healthbox.mainSprite != NULL);

    healthbox = &battlerData->healthbox;

    MI_CpuClear8(&healthbox->state, sizeof(u8));

    healthbox->battleSys = battleSys;
    healthbox->command = message->command;
    healthbox->battler = battlerData->battler;
    healthbox->curExp = message->curExp;
    healthbox->maxExp = message->expToNextLevel;
    healthbox->expReward = message->gainedExp - healthbox->curExp;

    if (battlerData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
        healthbox->task_10 = SysTask_Start(Task_UpdateExpGauge, healthbox, 1000);
        return;
    } else {
        BattleController_EmitClearCommand(healthbox->battleSys, healthbox->battler, healthbox->command);
    }
}

typedef struct FaintingSequenceData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *monSprite;
    MoveAnimation moveAnim;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    u16 species;
    u8 gender;
    u8 form;
    u32 personality;
    u16 isSubstitute;
    u16 isTransformed;
} FaintingSequenceData;

void BattleDisplay_InitTaskPlayFaintingSequence(BattleSystem *battleSys, BattlerData *battlerData, FaintingSequenceMessage *message)
{
    FaintingSequenceData *faintingSequenceData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(FaintingSequenceData));

    if (battlerData->battlerType & BATTLER_THEM) {
        faintingSequenceData->face = FACE_FRONT;
    } else {
        faintingSequenceData->face = FACE_BACK;
    }

    faintingSequenceData->state = 0;
    faintingSequenceData->battleSys = battleSys;
    faintingSequenceData->battlerData = battlerData;
    faintingSequenceData->command = message->command;
    faintingSequenceData->battler = battlerData->battler;
    faintingSequenceData->monSprite = battlerData->monSprite;
    faintingSequenceData->species = message->species;
    faintingSequenceData->gender = message->gender;
    faintingSequenceData->form = message->form;
    faintingSequenceData->personality = message->personality;
    faintingSequenceData->isSubstitute = message->isSubstitute;
    faintingSequenceData->isTransformed = message->isTransformed;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        faintingSequenceData->moveAnim.species[i] = message->monSpecies[i];
        faintingSequenceData->moveAnim.genders[i] = message->monGenders[i];
        faintingSequenceData->moveAnim.isShiny[i] = message->monShiny[i];
        faintingSequenceData->moveAnim.formNums[i] = message->monFormNums[i];
        faintingSequenceData->moveAnim.personalities[i] = message->monPersonalities[i];
    }

    SysTask_Start(Task_PlayFaintingSequence, faintingSequenceData, 0);
}

void BattleDisplay_PlaySound(BattleSystem *battleSys, BattlerData *battlerData, PlaySoundMessage *message)
{
    int pan;

    if (battlerData->battlerType & BATTLER_THEM) {
        pan = BATTLE_SOUND_PAN_RIGHT;
    } else {
        pan = BATTLE_SOUND_PAN_LEFT;
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    Sound_PlayPannedEffect(message->sdatID, pan);
}

typedef struct FadeOutData {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 state;
    u8 unused;
} FadeOutData;

void BattleDisplay_InitTaskFadeOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    FadeOutData *fadeOutData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(FadeOutData));

    fadeOutData->state = 0;
    fadeOutData->battleSys = battleSys;
    fadeOutData->command = battlerData->data[0];
    fadeOutData->battler = battlerData->battler;

    SysTask_Start(Task_FadeOut, fadeOutData, 0);
}

typedef struct ToggleVanishData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    MoveAnimation moveAnim;
    u8 command;
    u8 battler;
    u8 state;
    u8 toggleHide;
    int isSubstitute;
} ToggleVanishData;

void BattleDisplay_InitTaskToggleVanish(BattleSystem *battleSys, BattlerData *battlerData, ToggleVanishMessage *message)
{
    ToggleVanishData *toggleVanishData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(ToggleVanishData));

    toggleVanishData->battleSys = battleSys;
    toggleVanishData->battlerData = battlerData;
    toggleVanishData->command = message->command;
    toggleVanishData->battler = battlerData->battler;
    toggleVanishData->state = 0;
    toggleVanishData->toggleHide = message->toggle;
    toggleVanishData->isSubstitute = message->isSubstitute;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        toggleVanishData->moveAnim.species[i] = message->species[i];
        toggleVanishData->moveAnim.genders[i] = message->gender[i];
        toggleVanishData->moveAnim.isShiny[i] = message->isShiny[i];
        toggleVanishData->moveAnim.formNums[i] = message->formNum[i];
        toggleVanishData->moveAnim.personalities[i] = message->personality[i];
    }

    SysTask_Start(Task_ToggleVanish, toggleVanishData, 0);
}

void BattleDisplay_SetStatusIcon(BattleSystem *battleSys, BattlerData *battlerData, SetStatusIconMessage *message)
{
    GF_ASSERT(battlerData->healthbox.mainSprite != NULL);

    battlerData->healthbox.status = message->status;

    HealthBox_DrawInfo(&battlerData->healthbox, battlerData->healthbox.curHP, HEALTHBOX_INFO_STATUS);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
}

void BattleDisplay_PrintTrainerMessage(BattleSystem *battleSys, BattlerData *battlerData, TrainerMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    int trainerID = Battler_GetTrainerID(battleSys, battlerData->battler);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_PrintTrainerMessage(battleSys, trainerID, battlerData->battler, message->msg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintRecallMessage(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadRecallMessage(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintSendOutMessage(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadSendOutMessage(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintBattleStartMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadBattleStartMessage(battleSys, battlerData, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_BATTLE_START_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintLeadMonMessage(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadLeadMonMessage(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

typedef struct PlayLevelUpAnimationData {
    BattleSystem *battleSys;
    void *healthbox;
    u8 command;
    u8 battler;
    u8 state;
    u8 unk_0B;
} PlayLevelUpAnimationData;

void BattleDisplay_InitTaskPlayLevelUpAnimation(BattleSystem *battleSys, BattlerData *battlerData)
{
    PlayLevelUpAnimationData *playLevelUpAnimationData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PlayLevelUpAnimationData));

    playLevelUpAnimationData->battleSys = battleSys;
    playLevelUpAnimationData->command = battlerData->data[0];
    playLevelUpAnimationData->battler = battlerData->battler;
    playLevelUpAnimationData->state = 0;
    playLevelUpAnimationData->healthbox = &battlerData->healthbox;

    SysTask_Start(Task_PlayLevelUpAnimation, playLevelUpAnimationData, 0);
}

typedef struct {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 msgIdx;
    u8 state;
    u8 delay;
    u8 unused[3];
} AlertMsgData;

void BattleDisplay_SetAlertMessage(BattleSystem *battleSys, BattlerData *battlerData, AlertMsgMessage *message)
{
    AlertMsgData *alertMsgData;
    MessageLoader *msgLoader;

    if (battlerData->bootState == BATTLER_BOOT_STATE_NORMAL) {
        msgLoader = BattleSystem_GetMessageLoader(battleSys);
        alertMsgData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(AlertMsgData));

        alertMsgData->battleSys = battleSys;
        alertMsgData->command = message->command;
        alertMsgData->battler = battlerData->battler;
        alertMsgData->state = 0;
        alertMsgData->msgIdx = BattleMessage_Print(battleSys, msgLoader, &message->msg, BattleSystem_GetTextSpeed(battleSys));

        SysTask_Start(Task_WaitForAlertMessagePrint, alertMsgData, 0);
    } else if (battlerData->bootState == BATTLER_BOOT_STATE_AI) {
        ov16_022661B0(battleSys, battlerData->battler);
        BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    } else {
        if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
            ov16_022661B0(battleSys, battlerData->battler);
        }

        BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    }
}

void BattleDisplay_RefreshHPGauge(BattleSystem *battleSys, BattlerData *battlerData, RefreshHPGaugeMessage *message)
{
    HealthBox *healthbox = &battlerData->healthbox;

    MI_CpuClearFast(&healthbox->state, sizeof(u8));

    healthbox->battleSys = battleSys;
    healthbox->battler = battlerData->battler;
    healthbox->type = HealthBox_Type(battlerData->battlerType, BattleSystem_GetBattleType(battleSys));
    healthbox->command = message->command;
    healthbox->curHP = message->curHP;
    healthbox->maxHP = message->maxHP;
    healthbox->level = message->level;
    healthbox->gender = message->gender;
    healthbox->damage = 0;
    healthbox->curExp = message->curExp;
    healthbox->maxExp = message->maxExp;
    healthbox->selectedPartySlot = message->partySlot;
    healthbox->status = message->status;
    healthbox->caughtSpecies = message->caughtSpecies;
    healthbox->numSafariBalls = message->numSafariBalls;

    HealthBox_DrawInfo(healthbox, healthbox->curHP, ~HEALTHBOX_INFO_EXP_GAUGE);
    BattleController_EmitClearCommand(healthbox->battleSys, healthbox->battler, healthbox->command);
}

typedef struct ForgetMoveData {
    BattleSystem *battleSys;
    BattlePartyContext *battlePartyCtx;
    u8 command;
    u8 battler;
    u8 state;
    u8 unused_0B;
    u16 move;
    u8 slot;
    u8 unused_0F;
} ForgetMoveData;

void BattleDisplay_InitTaskForgetMove(BattleSystem *battleSys, BattlerData *battlerData, ForgetMoveMessage *message)
{
    ForgetMoveData *forgetMoveData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(ForgetMoveData));

    forgetMoveData->state = 0;
    forgetMoveData->battleSys = battleSys;
    forgetMoveData->command = message->command;
    forgetMoveData->battler = battlerData->battler;
    forgetMoveData->move = message->move;
    forgetMoveData->slot = message->slot;

    SysTask_Start(Task_ForgetMove, forgetMoveData, 0);
}

typedef struct SetMosaicData {
    BattleSystem *battleSys;
    PokemonSprite *monSprite;
    u8 command;
    u8 battler;
    u8 state;
    u8 intensity;
    u8 counter;
    u8 wait;
    u16 unused;
} SetMosaicData;

void BattleDisplay_InitTaskSetMosaic(BattleSystem *battleSys, BattlerData *battlerData, MosaicSetMessage *message)
{
    SetMosaicData *setMosaicData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SetMosaicData));

    setMosaicData->state = 0;
    setMosaicData->battleSys = battleSys;
    setMosaicData->monSprite = battlerData->monSprite;
    setMosaicData->command = message->command;
    setMosaicData->battler = battlerData->battler;
    setMosaicData->intensity = message->intensity;
    setMosaicData->counter = 0;
    setMosaicData->wait = message->wait;

    SysTask_Start(Task_SetMosaic, setMosaicData, 0);
}

typedef struct PartyGaugeTask {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    u8 status[MAX_PARTY_SIZE];
    u8 midBattle;
} PartyGaugeTask;

void BattleDisplay_InitTaskShowBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;

    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        task->status[i] = partyGauge->status[i];
    }

    task->midBattle = FALSE;
    SysTask_Start(Task_ShowPartyGauge, task, 0);
}

void BattleDisplay_InitTaskHideBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;
    task->midBattle = FALSE;

    SysTask_Start(Task_HidePartyGauge, task, 0);
}

void BattleDisplay_InitTaskShowPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;

    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        task->status[i] = partyGauge->status[i];
    }

    task->midBattle = TRUE;
    SysTask_Start(Task_ShowPartyGauge, task, 0);
}

void BattleDisplay_InitTaskHidePartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge)
{
    PartyGaugeTask *task = Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyGaugeTask));

    task->state = 0;
    task->battleSys = battleSys;
    task->command = partyGauge->command;
    task->battler = battlerData->battler;
    task->battlerType = battlerData->battlerType;
    task->midBattle = TRUE;

    SysTask_Start(Task_HidePartyGauge, task, 0);
}

void BattleDisplay_PrintLinkWaitMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    if (battlerData->bootState == BATTLER_BOOT_STATE_NORMAL) {
        msgLoader = BattleSystem_GetMessageLoader(battleSys);

        battleMsg.id = BattleStrings_Text_CommunicatingPleaseStandBy;
        battleMsg.tags = TAG_NONE;

        BattleMessage_Print(battleSys, msgLoader, &battleMsg, NULL);
        BattleSystem_SetWaitDial(battleSys, Window_AddWaitDial(BattleSystem_GetWindow(battleSys, 0), 1));
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, 55);
}

void BattleDisplay_RestoreSprite(BattleSystem *battleSys, BattlerData *battlerData, MoveAnimation *animation)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(battleSys, animation, &v0, battlerData->battler);
    ov12_022382BC(&v0, HEAP_ID_BATTLE);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, animation->command);
}

typedef struct SpriteToOAMData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *monSprite;
    u8 command;
    u8 battler;
    u8 state;
    u8 unused[1];
} SpriteToOAMData;

void BattleDisplay_InitTaskSpriteToOAM(BattleSystem *battleSys, BattlerData *battlerData)
{
    SpriteToOAMData *spriteToOAMData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SpriteToOAMData));

    spriteToOAMData->state = 0;
    spriteToOAMData->battleSys = battleSys;
    spriteToOAMData->battlerData = battlerData;
    spriteToOAMData->command = battlerData->data[0];
    spriteToOAMData->battler = battlerData->battler;
    spriteToOAMData->monSprite = battlerData->monSprite;

    SysTask_Start(Task_SpriteToOAM, spriteToOAMData, 0);
}

typedef struct OAMToSpriteData {
    BattleSystem *battleSys;
    BattlerData *battlerData;
    PokemonSprite *monSprite;
    u8 command;
    u8 battler;
    u8 delay;
    u8 unused[1];
} OAMToSpriteData;

void BattleDisplay_InitTaskOAMToSprite(BattleSystem *battleSys, BattlerData *battlerData)
{
    OAMToSpriteData *oamToSpriteData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(OAMToSpriteData));

    oamToSpriteData->delay = 0;
    oamToSpriteData->battleSys = battleSys;
    oamToSpriteData->battlerData = battlerData;
    oamToSpriteData->command = battlerData->data[0];
    oamToSpriteData->battler = battlerData->battler;
    oamToSpriteData->monSprite = battlerData->monSprite;

    SysTask_Start(Task_OAMToSprite, oamToSpriteData, 0);
}

void BattleDisplay_PrintResultMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadResultMessage(battleSys, battlerData, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_RESULT_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintEscapeMessage(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadEscapeMessage(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_ESCAPE_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintForfeitMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    LoadForfeitMessage(battleSys, battlerData, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_FORFEIT_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(Task_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_RefreshSprite(BattleSystem *battleSys, BattlerData *battlerData, MoveAnimation *animation)
{
    UnkStruct_ov12_022380DC v0;

    ov16_02264530(battleSys, animation, &v0, battlerData->battler);
    ov12_02238390(&v0, HEAP_ID_BATTLE);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, animation->command);
}

void BattleDisplay_FlyMoveHitSoundEffect(BattleSystem *battleSys, BattlerData *battlerData, MoveHitSoundMessage *message)
{
    int pan;

    if (battlerData->battlerType & BATTLER_THEM) {
        pan = BATTLE_SOUND_PAN_RIGHT;
    } else {
        pan = BATTLE_SOUND_PAN_LEFT;
    }

    switch (message->effectiveness) {
    case 0:
        Sound_PlayPannedEffect(SEQ_SE_DP_KOUKA_M, pan);
        break;
    case 2:
        Sound_PlayPannedEffect(SEQ_SE_DP_KOUKA_H, pan);
        break;
    case 1:
        Sound_PlayPannedEffect(SEQ_SE_DP_KOUKA_L, pan);
        break;
    }

    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
}

void BattleDisplay_PlayMusic(BattleSystem *battleSys, BattlerData *battlerData, MusicPlayMessage *message)
{
    Sound_PlayBGM(message->bgmID);
    BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
}

static void Task_SetEncounter(SysTask *task, void *data)
{
    MonEncounterData *monEncounterData = data;
    BattleAnimSystem *battleAnimSys = BattleSystem_GetBattleAnimSystem(monEncounterData->battleSys);
    s16 x, y;

    switch (monEncounterData->state) {
    case 0:
        monEncounterData->delay = 28;
        monEncounterData->state++;
    case 1:
        if (--monEncounterData->delay) {
            break;
        }

        monEncounterData->state++;
    case 2:
        if (monEncounterData->face == FACE_FRONT) {
            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &x, &y);

            if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY || monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                if (x < (24 * 8)) {
                    ManagedSprite_OffsetPositionXY(monEncounterData->unk_0C->unk_00, 8, 0);
                } else {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
                }
            }

            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &x, &y);

            if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) {
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, x);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                x = PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) - x;
                x -= 24;

                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, -x);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                x = x - PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER);
                x -= 16;

                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, x);
            }

            if (PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) >= monEncounterData->unk_14) {
                PokemonSprite_InitAnim(monEncounterData->sprite, 1);
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, FALSE);
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_IS_AFFINE, FALSE);
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, monEncounterData->unk_14);
                PokemonSprite_LoadAnim(monEncounterData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->sprite, monEncounterData->species, monEncounterData->face, 0, monEncounterData->battler);

                u8 cryDelay;
                PokemonSprite_LoadCryDelay(monEncounterData->battlerData->narc, &cryDelay, monEncounterData->species, monEncounterData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monEncounterData->battleSys, monEncounterData->battler),
                    monEncounterData->cryMod,
                    monEncounterData->species,
                    monEncounterData->formNum,
                    BATTLE_SOUND_PAN_RIGHT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);

                if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY || monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
                }

                PokemonSprite_StartFade(monEncounterData->sprite, 8, 0, 0, 0);
                monEncounterData->state++;
            }
        } else {
            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &x, &y);

            if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER || monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                if (x > 64) {
                    ManagedSprite_OffsetPositionXY(monEncounterData->unk_0C->unk_00, -8, 0);
                } else {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 64, 128 + 8);
                }
            }

            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &x, &y);

            if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, x);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                x = x - PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER);
                x -= 24;
                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, x);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                x = PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) - x;
                x -= 16;
                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, -x);
            }

            if (PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) <= monEncounterData->unk_14) {
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, monEncounterData->unk_14);
                PokemonSprite_LoadAnim(monEncounterData->battlerData->narc,
                    BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys),
                    monEncounterData->sprite,
                    monEncounterData->species,
                    monEncounterData->face,
                    0,
                    monEncounterData->battler);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monEncounterData->battlerData->narc, &cryDelay, monEncounterData->species, monEncounterData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monEncounterData->battleSys, monEncounterData->battler),
                    monEncounterData->cryMod,
                    monEncounterData->species,
                    monEncounterData->formNum,
                    BATTLE_SOUND_PAN_LEFT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);

                if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER || monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 64, 128 + 8);
                }

                monEncounterData->state++;
            }
        }
        break;
    case 3:
        if (PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->battler) == TRUE
            && PokemonSprite_IsAnimActive(monEncounterData->sprite) == FALSE) {
            if (monEncounterData->isShiny) {
                MoveAnimation moveAnim;

                BattleController_SetMoveAnimation(monEncounterData->battleSys, NULL, &moveAnim, 1, 11, monEncounterData->battler, monEncounterData->battler, NULL);
                ov16_02264408(monEncounterData->battleSys, monEncounterData->battlerData, battleAnimSys, &moveAnim);
                monEncounterData->state = 4;
            } else {
                monEncounterData->state = 0xFF;
            }
        }
        break;
    case 4:
        BattleAnimSystem_ExecuteScript(battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(battleAnimSys);
            monEncounterData->state = 0xFF;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(FALSE);
        BattleController_EmitClearCommand(monEncounterData->battleSys, monEncounterData->battler, monEncounterData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_SetGiratinaEncounter(SysTask *task, void *data)
{
    MonEncounterData *monEncounterData = data;
    BattleAnimSystem *battleAnimSys = BattleSystem_GetBattleAnimSystem(monEncounterData->battleSys);
    s16 x, y;

    switch (monEncounterData->state) {
    case 0:
        monEncounterData->delay = 28;
        monEncounterData->state++;
    case 1:
        if (--monEncounterData->delay) {
            break;
        }

        monEncounterData->state++;
    case 2:
        ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &x, &y);

        if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY || monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
            if (x < (24 * 8)) {
                ManagedSprite_OffsetPositionXY(monEncounterData->unk_0C->unk_00, 8, 0);
            } else {
                ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
            }
        }

        ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &x, &y);
        PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER, 8 / 2);

        if (PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER) >= monEncounterData->unk_14) {
            PokemonSprite_InitAnim(monEncounterData->sprite, 1);
            PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, FALSE);
            PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_IS_AFFINE, FALSE);
            PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER, monEncounterData->unk_14);
            PokemonSprite_LoadAnim(monEncounterData->battlerData->narc,
                BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys),
                monEncounterData->sprite,
                monEncounterData->species,
                monEncounterData->face,
                0,
                monEncounterData->battler);

            u8 cryDelay;

            PokemonSprite_LoadCryDelay(monEncounterData->battlerData->narc, &cryDelay, monEncounterData->species, monEncounterData->battlerType);
            Species_PlayDelayedCry(BattleSystem_GetChatotCry(monEncounterData->battleSys, monEncounterData->battler),
                monEncounterData->cryMod,
                monEncounterData->species,
                monEncounterData->formNum,
                BATTLE_SOUND_PAN_RIGHT,
                SOUND_VOLUME_MAX,
                NULL,
                HEAP_ID_BATTLE,
                cryDelay);

            ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
            PokemonSprite_StartFade(monEncounterData->sprite, 8, 0, 0, 0);

            monEncounterData->state++;
        }
        break;
    case 3:
        if (PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->battler) == TRUE
            && PokemonSprite_IsAnimActive(monEncounterData->sprite) == FALSE) {
            if (monEncounterData->isShiny) {
                MoveAnimation moveAnim;

                BattleController_SetMoveAnimation(monEncounterData->battleSys, NULL, &moveAnim, 1, 11, monEncounterData->battler, monEncounterData->battler, NULL);
                ov16_02264408(monEncounterData->battleSys, monEncounterData->battlerData, battleAnimSys, &moveAnim);
                monEncounterData->state = 4;
            } else {
                monEncounterData->state = 0xFF;
            }
        }
        break;
    case 4:
        BattleAnimSystem_ExecuteScript(battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(battleAnimSys);
            monEncounterData->state = 0xFF;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(FALSE);
        BattleController_EmitClearCommand(monEncounterData->battleSys, monEncounterData->battler, monEncounterData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_ShowEncounter(SysTask *task, void *data)
{
    MonShowData *monShowData = data;

    switch (monShowData->state) {
    case 0:
        monShowData->delay = 0;
        monShowData->unk_10 = NULL;

        if (BattleSystem_GetBattleType(monShowData->battleSys) & BATTLE_TYPE_2vs2) {
            if ((BattleSystem_GetBattleStatusMask(monShowData->battleSys) & BATTLE_STATUS_RECORDED) == FALSE
                && monShowData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
            }
        } else if ((BattleSystem_GetBattleStatusMask(monShowData->battleSys) & BATTLE_STATUS_RECORDED) == FALSE) {
            if (ov16_0223ED60(monShowData->battleSys) == 1 && monShowData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
            } else if (monShowData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
                monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
            }
        }

        monShowData->state++;
        break;
    case 1:
        UnkStruct_ov12_02236030 v1 = { 0 };

        v1.unk_00 = monShowData->battlerType;
        v1.unk_08 = BattleSystem_GetPartyPokemon(monShowData->battleSys, monShowData->battler, monShowData->selectedPartySlot);
        monShowData->unk_08 = ov12_02236004(HEAP_ID_BATTLE, &v1);

        ov12_02236320(monShowData->unk_08);
        monShowData->state++;
        break;
    case 2:
        if (ov12_02237890(monShowData->battlerData->ballRotation) != 0) {
            break;
        }

        if (ov12_02236374(monShowData->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(monShowData->battlerData->ballRotation) == 1) {
            if (monShowData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                monShowData->delay++;

                if (monShowData->delay >= 12) {
                    monShowData->delay = 0;
                } else {
                    break;
                }
            }

            PokemonSpriteManager *monSpriteMan = BattleSystem_GetPokemonSpriteManager(monShowData->battleSys);
            SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];

            PokemonSprite_LoadAnimFrames(monShowData->battlerData->narc, &animFrames[0], monShowData->species, monShowData->battlerType);
            monShowData->battlerData->monSprite = BattleDisplay_NewPokemonSprite(monShowData->battleSys,
                monSpriteMan,
                &monShowData->spriteTemplate,
                Unk_ov12_0223B0A0[monShowData->battlerType][0],
                gEncounterCoords[monShowData->battlerType][1],
                gEncounterCoords[monShowData->battlerType][2],
                monShowData->yOffset,
                monShowData->height,
                monShowData->shadowXOffset,
                monShowData->shadowSize,
                monShowData->battler,
                &animFrames[0],
                NULL);

            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, FALSE);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, TRUE);

            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 16, 0, sFadeColors[monShowData->capturedBall]);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, FALSE);

            ov12_022363B4(monShowData->unk_08);

            if (monShowData->face == FACE_FRONT) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_RIGHT);
            } else {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_LEFT);
            }

            if (monShowData->unk_10) {
                ov12_02223770(monShowData->unk_10);
                monShowData->unk_10 = NULL;
            }

            monShowData->state++;
        }
        break;
    case 3:
        if (ov12_022377F8(monShowData->battlerData->ballRotation) != 1) {
            monShowData->state++;
        }
    case 4:
        if (PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) == 0x100 && ov12_022363C4(monShowData->unk_08) == 0) {
            if (monShowData->face == FACE_FRONT) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, FALSE);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_RIGHT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_LEFT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc,
                BattleSystem_GetPokemonAnimManager(monShowData->battleSys),
                monShowData->battlerData->monSprite,
                monShowData->species,
                monShowData->face,
                0,
                monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 0, sFadeColors[monShowData->capturedBall]);

            monShowData->state = 5;
        } else if (PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) >= 0x100) {
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x100);

            if (monShowData->face == FACE_FRONT) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, FALSE);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_RIGHT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_LEFT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc,
                BattleSystem_GetPokemonAnimManager(monShowData->battleSys),
                monShowData->battlerData->monSprite,
                monShowData->species,
                monShowData->face,
                0,
                monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 1, sFadeColors[monShowData->capturedBall]);

            monShowData->state = 5;
        } else {
            PokemonSprite_AddAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x20);
            PokemonSprite_AddAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x20);
            PokemonSprite_CalcScaledYOffset(monShowData->battlerData->monSprite, monShowData->height);
        }
        break;
    case 5:
        if (ov12_022363C4(monShowData->unk_08) == 0) {
            monShowData->state = 6;
        }
        break;
    case 6:
        if (PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battler) == TRUE
            && PokemonSprite_IsAnimActive(monShowData->battlerData->monSprite) == FALSE) {
            ov12_0223783C(monShowData->battlerData->ballRotation);
            monShowData->battlerData->ballRotation = NULL;
            ov12_02236428(monShowData->unk_08);

            if (monShowData->isShiny) {
                MoveAnimation moveAnim;

                monShowData->battleAnimSys = BattleAnimSystem_New(HEAP_ID_BATTLE);
                BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &moveAnim, 1, 11, monShowData->battler, monShowData->battler, NULL);
                ov16_02264408(monShowData->battleSys, monShowData->battlerData, monShowData->battleAnimSys, &moveAnim);
                monShowData->state = 7;
            } else {
                monShowData->state = 0xFF;
            }
        }
        break;
    case 7:
        BattleAnimSystem_ExecuteScript(monShowData->battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(monShowData->battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(monShowData->battleAnimSys);
            BattleAnimSystem_Delete(monShowData->battleAnimSys);
            monShowData->state = 0xFF;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(FALSE);
        BattleController_EmitClearCommand(monShowData->battleSys, monShowData->battler, monShowData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

const u8 sBallThrowTypes[] = {
    6,
    1,
    8,
    3,
    7,
    5
};

static void Task_ShowPokemon(SysTask *task, void *data)
{
    MonShowData *monShowData = data;
    BattleAnimSystem *battleAnimSys = BattleSystem_GetBattleAnimSystem(monShowData->battleSys);

    switch (monShowData->state) {
    case 0:
        BallThrow ballThrow;

        ballThrow.type = sBallThrowTypes[monShowData->battlerType];
        ballThrow.heapID = HEAP_ID_BATTLE;
        ballThrow.target = monShowData->battler;
        ballThrow.ballID = monShowData->capturedBall;
        ballThrow.cellActorSys = BattleSystem_GetSpriteSystem(monShowData->battleSys);
        ballThrow.paletteSys = BattleSystem_GetPaletteData(monShowData->battleSys);
        ballThrow.bgPrio = 1;
        ballThrow.surface = 0;

        if (monShowData->unk_94 == 1) {
            ballThrow.mode = 1;
        } else {
            ballThrow.mode = 0;
        }

        monShowData->ballRotation = ov12_02237728(&ballThrow);
        PokemonSpriteManager *monSpriteMan = BattleSystem_GetPokemonSpriteManager(monShowData->battleSys);
        SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];

        PokemonSprite_LoadAnimFrames(monShowData->battlerData->narc, &animFrames[0], monShowData->species, monShowData->battlerType);
        monShowData->battlerData->monSprite = BattleDisplay_NewPokemonSprite(monShowData->battleSys,
            monSpriteMan,
            &monShowData->spriteTemplate,
            Unk_ov12_0223B0A0[monShowData->battlerType][0],
            gEncounterCoords[monShowData->battlerType][1],
            gEncounterCoords[monShowData->battlerType][2],
            monShowData->yOffset,
            monShowData->height,
            monShowData->shadowXOffset,
            monShowData->shadowSize,
            monShowData->battler,
            &animFrames[0],
            NULL);

        PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0);
        PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0);
        PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, FALSE);
        PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, TRUE);
        monShowData->unk_10 = NULL;
        monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
        monShowData->state++;
        break;
    case 1:
        UnkStruct_ov12_02236030 v5 = { 0 };

        v5.unk_00 = monShowData->battlerType;
        v5.unk_08 = BattleSystem_GetPartyPokemon(monShowData->battleSys, monShowData->battler, monShowData->selectedPartySlot);
        v5.unk_04 = monShowData->capturedBall;

        monShowData->unk_08 = ov12_02236004(HEAP_ID_BATTLE, &v5);
        ov12_02236320(monShowData->unk_08);
        monShowData->state++;
        break;
    case 2:
        if (ov12_02237890(monShowData->ballRotation) != 0 && monShowData->unk_94 == 0) {
            break;
        }

        if (ov12_02236374(monShowData->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(monShowData->ballRotation) == 1) {
            if (monShowData->unk_10) {
                ov12_02223770(monShowData->unk_10);
            }

            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 16, 0, sFadeColors[monShowData->capturedBall]);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, FALSE);

            ov12_022363B4(monShowData->unk_08);

            if (monShowData->face == FACE_FRONT) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_RIGHT);
            } else {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_LEFT);
            }

            monShowData->state++;
        }
        break;
    case 3:
        if (ov12_022377F8(monShowData->ballRotation) != 1) {
            monShowData->state++;
        }
    case 4:
        if (PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) == 0x100 && ov12_022363C4(monShowData->unk_08) == 0) {
            if (monShowData->face == FACE_FRONT) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, FALSE);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_RIGHT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_LEFT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc,
                BattleSystem_GetPokemonAnimManager(monShowData->battleSys),
                monShowData->battlerData->monSprite,
                monShowData->species,
                monShowData->face,
                0,
                monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 0, sFadeColors[monShowData->capturedBall]);
            monShowData->state = 5;
        } else if (PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) >= 0x100) {
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x100);

            if (monShowData->face == FACE_FRONT) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, FALSE);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_RIGHT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                u8 cryDelay;

                PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &cryDelay, monShowData->species, monShowData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler),
                    monShowData->cryMod,
                    monShowData->species,
                    monShowData->formNum,
                    BATTLE_SOUND_PAN_LEFT,
                    SOUND_VOLUME_MAX,
                    NULL,
                    HEAP_ID_BATTLE,
                    cryDelay);
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc,
                BattleSystem_GetPokemonAnimManager(monShowData->battleSys),
                monShowData->battlerData->monSprite,
                monShowData->species,
                monShowData->face,
                0,
                monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 1, sFadeColors[monShowData->capturedBall]);
            monShowData->state = 5;
        } else {
            PokemonSprite_AddAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x20);
            PokemonSprite_AddAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x20);
            PokemonSprite_CalcScaledYOffset(monShowData->battlerData->monSprite, monShowData->height);
        }
        break;
    case 5:
        if (ov12_022363C4(monShowData->unk_08) == 0) {
            monShowData->state = 6;
        }
        break;
    case 6:
        if (PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battler) == TRUE
            && PokemonSprite_IsAnimActive(monShowData->battlerData->monSprite) == FALSE) {
            ov12_0223783C(monShowData->ballRotation);
            ov12_02236428(monShowData->unk_08);

            if (monShowData->isShiny) {
                MoveAnimation moveAnim;

                BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &moveAnim, 1, 11, monShowData->battler, monShowData->battler, NULL);
                ov16_02264408(monShowData->battleSys, monShowData->battlerData, battleAnimSys, &moveAnim);
                monShowData->state = 7;
            } else {
                monShowData->state = 8;
            }
        }
        break;
    case 7:
    case 9:
    case 11:
        BattleAnimSystem_ExecuteScript(battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(battleAnimSys);
            monShowData->state++;
        }
        break;
    case 8:
        if (monShowData->isSubstitute) {
            MoveAnimation moveAnim;

            BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &moveAnim, 1, 15, monShowData->battler, monShowData->battler, NULL);
            ov16_02264408(monShowData->battleSys, monShowData->battlerData, battleAnimSys, &moveAnim);
            monShowData->state++;
        } else {
            monShowData->state = 0xFF;
        }
        break;
    case 10:
        UnkStruct_ov12_022380DC v12;
        MoveAnimation moveAnim;

        ov16_02264530(monShowData->battleSys, &monShowData->moveAnim, &v12, monShowData->battler);
        ov12_02238390(&v12, HEAP_ID_BATTLE);
        BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &moveAnim, 1, 16, monShowData->battler, monShowData->battler, NULL);
        ov16_02264408(monShowData->battleSys, monShowData->battlerData, battleAnimSys, &moveAnim);

        monShowData->battlerData->unk_19C = 1;
        monShowData->state++;
        break;
    default:
        BattleController_EmitClearCommand(monShowData->battleSys, monShowData->battler, monShowData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_ReturnPokemon(SysTask *task, void *data)
{
    MonReturnData *monReturnData = data;
    BattleAnimSystem *battleAnimSys = BattleSystem_GetBattleAnimSystem(monReturnData->battleSys);

    switch (monReturnData->state) {
    case 0:
        if (monReturnData->isSubstitute) {
            MoveAnimation moveAnim;

            BattleController_SetMoveAnimation(monReturnData->battleSys, NULL, &moveAnim, 1, 15, monReturnData->battler, monReturnData->battler, NULL);
            ov16_02264408(monReturnData->battleSys, monReturnData->battlerData, battleAnimSys, &moveAnim);
            monReturnData->state++;
        } else {
            monReturnData->state = 4;
        }
        break;
    case 2:
        UnkStruct_ov12_022380DC v3;
        MoveAnimation moveAnim;

        ov16_02264530(monReturnData->battleSys, &monReturnData->moveAnim, &v3, monReturnData->battler);
        ov12_022382BC(&v3, HEAP_ID_BATTLE);
        BattleController_SetMoveAnimation(monReturnData->battleSys, NULL, &moveAnim, 1, 16, monReturnData->battler, monReturnData->battler, NULL);
        ov16_02264408(monReturnData->battleSys, monReturnData->battlerData, battleAnimSys, &moveAnim);
        monReturnData->battlerData->unk_19C = 0;
        monReturnData->state++;
        break;
    case 1:
    case 3:
        BattleAnimSystem_ExecuteScript(battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(battleAnimSys);
            monReturnData->state++;
        }
        break;
    case 4:
        if (monReturnData->battlerType & BATTLER_THEM) {
            BallThrow ballThrow;

            ballThrow.type = sBallThrowTypes[monReturnData->battlerType];
            ballThrow.heapID = HEAP_ID_BATTLE;
            ballThrow.mode = 5;
            ballThrow.target = monReturnData->battler;
            ballThrow.ballID = monReturnData->capturedBall;
            ballThrow.cellActorSys = BattleSystem_GetSpriteSystem(monReturnData->battleSys);
            ballThrow.paletteSys = BattleSystem_GetPaletteData(monReturnData->battleSys);
            ballThrow.bgPrio = 1;
            ballThrow.surface = 0;
            monReturnData->ballRotation = ov12_02237728(&ballThrow);
        } else {
            BallThrow ballThrow;
            int ballThrowTypes[] = { 0, 1, 2, 3, 4, 5 };

            ballThrow.type = ballThrowTypes[monReturnData->battlerType];
            ballThrow.heapID = HEAP_ID_BATTLE;
            ballThrow.mode = 5;
            ballThrow.target = monReturnData->battler;
            ballThrow.ballID = monReturnData->capturedBall;
            ballThrow.cellActorSys = BattleSystem_GetSpriteSystem(monReturnData->battleSys);
            ballThrow.paletteSys = BattleSystem_GetPaletteData(monReturnData->battleSys);
            ballThrow.bgPrio = 1;
            ballThrow.surface = 0;
            monReturnData->ballRotation = ov12_02237728(&ballThrow);
        }

        monReturnData->state = 5;
        PokemonSprite_StartFade(monReturnData->monSprite, 0, 16, 0, sFadeColors[monReturnData->capturedBall]);

        switch (monReturnData->battlerType) {
        case 0:
        case 2:
        case 4:
            Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_LEFT);
            break;
        case 1:
        case 3:
        case 5:
            Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_RIGHT);
            break;
        }
        break;
    case 5:
        if (PokemonSprite_IsFadeActive(monReturnData->monSprite) == FALSE) {
            monReturnData->state++;
        }
        break;
    case 6:
        PokemonSprite_AddAttribute(monReturnData->monSprite, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(monReturnData->monSprite, MON_SPRITE_SCALE_Y, -0x20);
        PokemonSprite_CalcScaledYOffset(monReturnData->monSprite, monReturnData->yOffset);

        if (PokemonSprite_GetAttribute(monReturnData->monSprite, MON_SPRITE_SCALE_X) <= 0) {
            PokemonSprite_Delete(monReturnData->monSprite);

            if (monReturnData->battlerType & BATTLER_THEM) {
                monReturnData->state = 7;
            } else {
                monReturnData->state = 7;
            }
        }

        break;
    case 7:
        if (ov12_022377F8(monReturnData->ballRotation) == 0) {
            ov12_0223783C(monReturnData->ballRotation);
            monReturnData->state = 8;
        }
        break;
    case 8:
        BattleController_EmitClearCommand(monReturnData->battleSys, monReturnData->battler, monReturnData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_OpenCaptureBall(SysTask *task, void *data)
{
    OpenCaptureBallData *captureOpenBallData = data;

    switch (captureOpenBallData->state) {
    case 0:
        PokemonSprite_AddAttribute(captureOpenBallData->monSprite, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(captureOpenBallData->monSprite, MON_SPRITE_SCALE_Y, -0x20);

        if (captureOpenBallData->yOffset) {
            captureOpenBallData->yOffset--;
            PokemonSprite_AddAttribute(captureOpenBallData->monSprite, MON_SPRITE_Y_CENTER, -1);
        }

        if (PokemonSprite_GetAttribute(captureOpenBallData->monSprite, MON_SPRITE_SCALE_X) <= 0) {
            PokemonSprite_Delete(captureOpenBallData->monSprite);
            captureOpenBallData->state++;
        }
        break;
    case 1:
        BattleController_EmitClearCommand(captureOpenBallData->battleSys, captureOpenBallData->battler, captureOpenBallData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_SetTrainerEncounter(SysTask *task, void *data)
{
    TrainerEncounterData *trainerEncounterData = data;
    s16 x1, y1, x2, y2;
    u32 battleType = BattleSystem_GetBattleType(trainerEncounterData->battleSys);

    if (trainerEncounterData->unk_1C < 33 && trainerEncounterData->state >= 2
        && (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER || trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1)) {
        Bg_SetOffset(BattleSystem_GetBgConfig(trainerEncounterData->battleSys), BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_ADD_X, 4);
        trainerEncounterData->unk_1C++;
    }

    switch (trainerEncounterData->state) {
    case 0:
        if (ManagedSprite_GetNumFrames(trainerEncounterData->managedSprite) > 2) {
            ManagedSprite_SetAnimationFrame(trainerEncounterData->managedSprite, 0);
            ManagedSprite_SetAnim(trainerEncounterData->managedSprite, 2);
        }

        trainerEncounterData->delay = 28;
        trainerEncounterData->state = 1;
    case 1:
        if (--trainerEncounterData->delay) {
            break;
        }

        trainerEncounterData->state = 2;
    case 2:
        ManagedSprite_GetPositionXY(trainerEncounterData->unk_04->unk_00, &x1, &y1);
        ManagedSprite_GetPositionXY(trainerEncounterData->managedSprite, &x2, &y2);

        if (trainerEncounterData->face == FACE_FRONT) {
            if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY || trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                if (x1 < (24 * 8)) {
                    ManagedSprite_OffsetPositionXY(trainerEncounterData->unk_04->unk_00, 8, 0);
                } else {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 24 * 8, 8 * 11);
                }
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->unk_04->unk_00, &x1, &y1);

            if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY
                || (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1 && (battleType == BATTLE_TYPE_TRAINER_DOUBLES || battleType == BATTLE_TYPE_FRONTIER_DOUBLES || battleType == ((BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER) | BATTLE_TYPE_DOUBLES)))) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, x1, y2);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                x1 = x2 - x1;
                x1 -= 24;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, -x1, 0);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                x1 = x1 - x2;
                x1 -= 16;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, x1, 0);
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->managedSprite, &x2, &y2);

            if (x2 >= trainerEncounterData->unk_10) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, trainerEncounterData->unk_10, y2);

                if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY || trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 24 * 8, 8 * 11);
                }

                if (ManagedSprite_GetNumFrames(trainerEncounterData->managedSprite) > 1) {
                    ManagedSprite_SetAnimationFrame(trainerEncounterData->managedSprite, 0);
                    ManagedSprite_SetAnim(trainerEncounterData->managedSprite, 1);
                    trainerEncounterData->unk_12_0 = 0;
                    trainerEncounterData->state = 3;
                } else {
                    trainerEncounterData->state = 4;
                }
            }
        } else {
            if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER || trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                if (x1 > 64) {
                    ManagedSprite_OffsetPositionXY(trainerEncounterData->unk_04->unk_00, -8, 0);
                } else {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 64, 128 + 8);
                }
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->unk_04->unk_00, &x1, &y1);

            if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER
                || (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1
                    && (battleType == BATTLE_TYPE_TRAINER_DOUBLES || battleType == BATTLE_TYPE_FRONTIER_DOUBLES || battleType == BATTLE_TYPE_TAG_DOUBLES || battleType == BATTLE_TYPE_LINK_DOUBLES))) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, x1, y2);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                x1 = x1 - x2;
                x1 -= 24;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, x1, 0);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                x1 = x2 - x1;
                x1 -= 16;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, -x1, 0);
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->managedSprite, &x2, &y2);

            if (x2 <= trainerEncounterData->unk_10) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, trainerEncounterData->unk_10, y2);

                if (trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER || trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 64, 128 + 8);
                }

                trainerEncounterData->state = 4;
            }
        }
        break;
    case 3:
        if (ManagedSprite_IsAnimated(trainerEncounterData->managedSprite) == TRUE) {
            if (ov16_02264650(trainerEncounterData, trainerEncounterData->managedSprite) == 0) {
                break;
            }
        }

        trainerEncounterData->state = 4;
    case 4:
        BattleController_EmitClearCommand(trainerEncounterData->battleSys, trainerEncounterData->battler, trainerEncounterData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_ThrowTrainerBall(SysTask *task, void *data)
{
    TrainerThrowBallData *trainerThrowBallData = data;
    s16 x, y;
    int animFrame;
    u32 battleType;
    s16 v5[][6][2] = {
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDF, 0xFFFFFFFFFFFFFFFA },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFEE },
            { 0x32, 0xFFFFFFFFFFFFFFDC },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDF, 0xFFFFFFFFFFFFFFFE },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFEE },
            { 0x32, 0xFFFFFFFFFFFFFFE4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE9, 0xFFFFFFFFFFFFFFFF },
            { 0x32, 0xFFFFFFFFFFFFFFFE },
            { 0x7FFF, 0x7FFF },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
        },
        {
            { 0x0, 0x80 },
            { 0xFFFFFFFFFFFFFFDE, 0x4 },
            { 0xFFFFFFFFFFFFFFE4, 0xFFFFFFFFFFFFFFF5 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x32, 0xFFFFFFFFFFFFFFF4 },
            { 0x7FFF, 0x7FFF },
        },
    };

    battleType = BattleSystem_GetBattleType(trainerThrowBallData->battleSys);

    switch (trainerThrowBallData->state) {
    case 0:
        if (trainerThrowBallData->ballTypeIn == 0) {
            trainerThrowBallData->state = 1;
        } else {
            BallThrow ballThrow;

            switch (trainerThrowBallData->ballTypeIn) {
            default:
            case 1:
                ballThrow.type = 15;
                trainerThrowBallData->unk_18 = 3;
                ballThrow.ballID = 5;
                break;
            case 2:
                ballThrow.type = 12;
                trainerThrowBallData->unk_18 = 0;
                ballThrow.ballID = (0xFF + 18);
                break;
            case 3:
                ballThrow.type = 13;
                trainerThrowBallData->unk_18 = 0;
                ballThrow.ballID = (0xFF + 19);
                break;
            case 4:
                ballThrow.type = 15;
                trainerThrowBallData->unk_18 = 3;
                ballThrow.ballID = (0xFF + 17);
                break;
            }

            ballThrow.heapID = HEAP_ID_BATTLE;
            ballThrow.mode = 4;
            ballThrow.target = trainerThrowBallData->battler;
            ballThrow.cellActorSys = BattleSystem_GetSpriteSystem(trainerThrowBallData->battleSys);
            ballThrow.paletteSys = BattleSystem_GetPaletteData(trainerThrowBallData->battleSys);
            ballThrow.surface = 0;
            ballThrow.battleSys = trainerThrowBallData->battleSys;

            trainerThrowBallData->battlerData->ballRotation = ov12_02237728(&ballThrow);

            ov12_02237E34(trainerThrowBallData->battlerData->ballRotation, 100);
            ov12_02237E40(trainerThrowBallData->battlerData->ballRotation, 2);
            ov12_02237E30(trainerThrowBallData->battlerData->ballRotation, 0);

            ManagedSprite_SetAnimationFrame(trainerThrowBallData->battlerData->managedSprite, 0);
            ManagedSprite_SetAnim(trainerThrowBallData->battlerData->managedSprite, 1);
            ManagedSprite_SetAnimateFlag(trainerThrowBallData->battlerData->managedSprite, TRUE);

            trainerThrowBallData->state = 3;
        }
        break;
    case 1:
        if (trainerThrowBallData->face == FACE_FRONT) {
            ManagedSprite_OffsetPositionXY(trainerThrowBallData->battlerData->managedSprite, 5, 0);
            ManagedSprite_GetPositionXY(trainerThrowBallData->battlerData->managedSprite, &x, &y);

            if (x >= (256 - 48) - 48 && ov12_02237890(trainerThrowBallData->battlerData->ballRotation) != 0) {
                ov12_02237E0C(trainerThrowBallData->battlerData->ballRotation, 1);
                ov12_0223786C(trainerThrowBallData->battlerData->ballRotation, 0);

                if (battleType & BATTLE_TYPE_DOUBLES && (battleType & BATTLE_TYPE_2vs2) == 0) {
                    BattlerData *battlerData = BattleSystem_GetBattlerData(trainerThrowBallData->battleSys, BattleSystem_GetPartner(trainerThrowBallData->battleSys, trainerThrowBallData->battler));

                    ov12_02237E0C(battlerData->ballRotation, 1);
                    ov12_0223786C(battlerData->ballRotation, 0);
                    ov12_02237E4C(battlerData->ballRotation, 12);
                }
            } else if (x >= (256 + 40)) {
                SpriteManager *spriteMan = BattleSystem_GetSpriteManager(trainerThrowBallData->battleSys);
                Sprite_DeleteAndFreeResources(trainerThrowBallData->battlerData->managedSprite);
                trainerThrowBallData->battlerData->managedSprite = NULL;

                SpriteManager_UnloadCharObjById(spriteMan, 20015 + trainerThrowBallData->battlerData->battlerType);
                SpriteManager_UnloadPlttObjById(spriteMan, 20010 + trainerThrowBallData->battlerData->battlerType);
                SpriteManager_UnloadCellObjById(spriteMan, 20007 + trainerThrowBallData->battlerData->battlerType);
                SpriteManager_UnloadAnimObjById(spriteMan, 20007 + trainerThrowBallData->battlerData->battlerType);
                trainerThrowBallData->state = 6;
            }
        } else {
            ManagedSprite_SetAnimationFrame(trainerThrowBallData->battlerData->managedSprite, 0);
            ManagedSprite_SetAnim(trainerThrowBallData->battlerData->managedSprite, 1);
            ManagedSprite_SetAnimateFlag(trainerThrowBallData->battlerData->managedSprite, TRUE);
            trainerThrowBallData->state = 2;
        }
        break;
    case 2:
        ManagedSprite_OffsetPositionXY(trainerThrowBallData->battlerData->managedSprite, -5, 0);
        ManagedSprite_GetPositionXY(trainerThrowBallData->battlerData->managedSprite, &x, &y);

        if (trainerThrowBallData->battlerData->ballRotation) {
            animFrame = ManagedSprite_GetAnimationFrame(trainerThrowBallData->battlerData->managedSprite);

            if (v5[trainerThrowBallData->unk_0C][animFrame][0] != 0x7FFF) {
                ov12_02237E0C(trainerThrowBallData->battlerData->ballRotation, 1);
                ov12_02237E18(trainerThrowBallData->battlerData->ballRotation, x + v5[trainerThrowBallData->unk_0C][animFrame][0], y + v5[trainerThrowBallData->unk_0C][animFrame][1]);

                if (animFrame == 3 && ov12_02237890(trainerThrowBallData->battlerData->ballRotation) != 0) {
                    ov12_0223786C(trainerThrowBallData->battlerData->ballRotation, 0);
                    ov12_02237E30(trainerThrowBallData->battlerData->ballRotation, 1);

                    if (battleType & BATTLE_TYPE_DOUBLES && (battleType & BATTLE_TYPE_2vs2) == 0) {
                        BattlerData *battlerData = BattleSystem_GetBattlerData(trainerThrowBallData->battleSys, BattleSystem_GetPartner(trainerThrowBallData->battleSys, trainerThrowBallData->battler));

                        ov12_02237E18(battlerData->ballRotation, x + v5[trainerThrowBallData->unk_0C][animFrame][0], y + v5[trainerThrowBallData->unk_0C][animFrame][1]);
                        ov12_02237E0C(battlerData->ballRotation, 1);
                        ov12_0223786C(battlerData->ballRotation, 0);
                        ov12_02237E30(battlerData->ballRotation, 1);
                    }
                }
            }
        }

        if (x <= -40) {
            SpriteManager *spriteMan = BattleSystem_GetSpriteManager(trainerThrowBallData->battleSys);

            Sprite_DeleteAndFreeResources(trainerThrowBallData->battlerData->managedSprite);
            trainerThrowBallData->battlerData->managedSprite = NULL;

            SpriteManager_UnloadCharObjById(spriteMan, 20015 + trainerThrowBallData->battlerData->battlerType);
            SpriteManager_UnloadPlttObjById(spriteMan, 20010 + trainerThrowBallData->battlerData->battlerType);
            SpriteManager_UnloadCellObjById(spriteMan, 20007 + trainerThrowBallData->battlerData->battlerType);
            SpriteManager_UnloadAnimObjById(spriteMan, 20007 + trainerThrowBallData->battlerData->battlerType);
            trainerThrowBallData->state = 6;
        }
        break;
    case 3:
        ManagedSprite_GetPositionXY(trainerThrowBallData->battlerData->managedSprite, &x, &y);
        animFrame = ManagedSprite_GetAnimationFrame(trainerThrowBallData->battlerData->managedSprite);

        if (animFrame == 4) {
            trainerThrowBallData->delay = 8;
            trainerThrowBallData->state = 4;
        } else if (trainerThrowBallData->battlerData->ballRotation != NULL) {
            if (v5[trainerThrowBallData->unk_0C][animFrame][0] != 0x7FFF) {
                ov12_02237E18(trainerThrowBallData->battlerData->ballRotation, x + v5[trainerThrowBallData->unk_0C][animFrame][0], y + v5[trainerThrowBallData->unk_0C][animFrame][1]);

                if (animFrame == 3 && ov12_02237890(trainerThrowBallData->battlerData->ballRotation) != trainerThrowBallData->unk_18) {
                    ov12_0223786C(trainerThrowBallData->battlerData->ballRotation, trainerThrowBallData->unk_18);
                    ov12_02237E40(trainerThrowBallData->battlerData->ballRotation, 1);
                    ov12_02237E30(trainerThrowBallData->battlerData->ballRotation, 1);

                    if (trainerThrowBallData->unk_18 != 3) {
                        Sound_PlayEffect(SEQ_SE_DP_NAGERU);
                    }
                }
            }
        }
        break;
    case 4:
        if (--trainerThrowBallData->delay == 0) {
            if (trainerThrowBallData->unk_18 == 3) {
                trainerThrowBallData->state = 6;
            } else {
                trainerThrowBallData->state = 5;
            }
        }
        break;
    case 5:
        if (ov12_022377F8(trainerThrowBallData->battlerData->ballRotation) == 1) {
            break;
        }

        ov12_0223783C(trainerThrowBallData->battlerData->ballRotation);

        trainerThrowBallData->battlerData->ballRotation = NULL;
        trainerThrowBallData->state = 6;
        break;
    case 6:
        BattleController_EmitClearCommand(trainerThrowBallData->battleSys, trainerThrowBallData->battler, trainerThrowBallData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_SlideTrainerOut(SysTask *task, void *data)
{
    SlideTrainerOutData *slideTrainerOutData = data;
    s16 x;
    s16 y;

    switch (slideTrainerOutData->state) {
    case 0:
        if (slideTrainerOutData->face == FACE_FRONT) {
            ManagedSprite_OffsetPositionXY(slideTrainerOutData->battlerData->managedSprite, 5, 0);
            ManagedSprite_GetPositionXY(slideTrainerOutData->battlerData->managedSprite, &x, &y);

            if (x >= (256 + 40)) {
                slideTrainerOutData->state++;
            }
        } else {
            ManagedSprite_OffsetPositionXY(slideTrainerOutData->battlerData->managedSprite, -5, 0);
            ManagedSprite_GetPositionXY(slideTrainerOutData->battlerData->managedSprite, &x, &y);

            if (x <= -40) {
                slideTrainerOutData->state++;
            }
        }
        break;
    case 1:
        SpriteManager *spriteMan = BattleSystem_GetSpriteManager(slideTrainerOutData->battleSys);
        Sprite_DeleteAndFreeResources(slideTrainerOutData->battlerData->managedSprite);
        slideTrainerOutData->battlerData->managedSprite = NULL;

        SpriteManager_UnloadCharObjById(spriteMan, 20015 + slideTrainerOutData->battlerData->battlerType);
        SpriteManager_UnloadPlttObjById(spriteMan, 20010 + slideTrainerOutData->battlerData->battlerType);
        SpriteManager_UnloadCellObjById(spriteMan, 20007 + slideTrainerOutData->battlerData->battlerType);
        SpriteManager_UnloadAnimObjById(spriteMan, 20007 + slideTrainerOutData->battlerData->battlerType);
        BattleController_EmitClearCommand(slideTrainerOutData->battleSys, slideTrainerOutData->battler, slideTrainerOutData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_SlideTrainerIn(SysTask *task, void *data)
{
    SlideTrainerInData *slideTrainerInData = data;
    s16 x, y;

    switch (slideTrainerInData->state) {
    case 0:
        ManagedSprite_GetPositionXY(slideTrainerInData->managedSprite, &x, &y);

        if (slideTrainerInData->face == FACE_BACK) {
            x += 5;

            if (x >= slideTrainerInData->x) {
                x = slideTrainerInData->x;
                slideTrainerInData->state++;
            }
        } else {
            x -= 5;

            if (x <= slideTrainerInData->x) {
                x = slideTrainerInData->x;
                slideTrainerInData->state++;
            }
        }

        ManagedSprite_SetPositionXY(slideTrainerInData->managedSprite, x, y);
        break;
    case 1:
        BattleController_EmitClearCommand(slideTrainerInData->battleSys, slideTrainerInData->battler, slideTrainerInData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

enum SlideHealthBoxInState {
    SLIDE_HEALTHBOX_IN_STATE_ENABLE = 0,
    SLIDE_HEALTHBOX_IN_STATE_WAIT,
    SLIDE_HEALTHBOX_IN_STATE_DONE,
};

/**
 * @brief Slide the healthbox in, then wait until it is done.
 *
 * @param task
 * @param data
 */
static void Task_SlideHealthBoxIn(SysTask *task, void *data)
{
    HealthBox *healthbox = data;

    switch (healthbox->state) {
    case SLIDE_HEALTHBOX_IN_STATE_ENABLE:
        if (healthbox->delay > 0) {
            healthbox->delay--;
            break;
        }

        HealthBox_Scroll(healthbox, HEALTHBOX_SCROLL_IN);
        HealthBox_Enable(healthbox, TRUE);
        healthbox->state++;
        break;

    case SLIDE_HEALTHBOX_IN_STATE_WAIT:
        if (healthbox->doneScrolling == TRUE) {
            healthbox->state++;
        }
        break;

    default:
        BattleController_EmitClearCommand(healthbox->battleSys, healthbox->battler, healthbox->command);
        healthbox->task_10 = NULL;
        SysTask_Done(task);
        break;
    }
}

enum SlideHealthBoxOutState {
    SLIDE_HEALTHBOX_OUT_STATE_WAIT = 0,
    SLIDE_HEALTHBOX_OUT_STATE_DONE,
};

/**
 * @brief Wait until the healthbox has slid out.
 *
 * @param task
 * @param data
 */
static void Task_SlideHealthBoxOut(SysTask *task, void *data)
{
    HealthBox *healthbox = data;

    switch (healthbox->state) {
    case SLIDE_HEALTHBOX_OUT_STATE_WAIT:
        if (healthbox->doneScrolling == TRUE) {
            healthbox->state++;
        }
        break;

    default:
        BattleController_EmitClearCommand(healthbox->battleSys, healthbox->battler, healthbox->command);
        healthbox->task_10 = NULL;
        SysTask_Done(task);
        HealthBox_Enable(healthbox, FALSE);
        break;
    }
}

static void Task_PlayerSetCommandSelection(SysTask *task, void *data)
{
    CommandSetData *commandSetData = data;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(commandSetData->battleSys);
    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(commandSetData->battleSys);
    BattlerData *battlerData = BattleSystem_GetBattlerData(commandSetData->battleSys, commandSetData->battler);
    u32 battleType = BattleSystem_GetBattleType(commandSetData->battleSys);
    int partner = BattleSystem_GetPartner(commandSetData->battleSys, commandSetData->battler);
    HealthBox *healthbox;

    if (partner != commandSetData->battler) {
        healthbox = BattleSystem_GetHealthBox(commandSetData->battleSys, partner);
    } else {
        healthbox = NULL;
    }

    switch (commandSetData->state) {
    case 0:
        MoveDisplayInfo moveDisplayInfo;
        int i;

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            moveDisplayInfo.move[i] = commandSetData->moves[i];
            moveDisplayInfo.curPP[i] = commandSetData->curPP[i];
            moveDisplayInfo.maxPP[i] = commandSetData->maxPP[i];
        }

        ov16_0226AC98(ov16_0223E02C(commandSetData->battleSys), commandSetData->battlerType, &moveDisplayInfo);
        commandSetData->state++;

    case 1: {
        MessageLoader *msgLoader = BattleSystem_GetMessageLoader(commandSetData->battleSys);
        BattleMessage battleMsg;

        if (battleType & BATTLE_TYPE_CATCH_TUTORIAL) {
            switch (BattleSystem_GetCatchingTutorialLowHP(commandSetData->battleSys)) {
            case FALSE:
                battleMsg.tags = TAG_NICKNAME;
                battleMsg.params[0] = commandSetData->battler | (commandSetData->partySlot << 8);
                battleMsg.id = BattleStrings_Text_WhatWillPokemonDo;
                BattleMessage_Print(commandSetData->battleSys, msgLoader, &battleMsg, 0);
                commandSetData->state = 3;
                break;
            case TRUE:
                battleMsg.tags = TAG_NONE;
                battleMsg.id = BattleStrings_Text_AllRightIGotItsHPDownTimeToThrowAPokeBall + BattleSystem_GetTrainerGender(commandSetData->battleSys, 0);
                commandSetData->msgIdx = BattleMessage_Print(commandSetData->battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(commandSetData->battleSys));
                commandSetData->state = 2;
                break;
            }
        } else {
            if (battleType & BATTLE_TYPE_SAFARI) {
                battleMsg.tags = TAG_TRNAME;
                battleMsg.params[0] = Battler_GetTrainerID(commandSetData->battleSys, commandSetData->battler);
                battleMsg.id = BattleStrings_Text_WhatWillPlayerThrow;
            } else if (battleType & BATTLE_TYPE_PAL_PARK) {
                battleMsg.tags = TAG_TRNAME;
                battleMsg.params[0] = Battler_GetTrainerID(commandSetData->battleSys, commandSetData->battler);
                battleMsg.id = BattleStrings_Text_WhatWillPlayerDo;
            } else {
                battleMsg.tags = TAG_NICKNAME;
                battleMsg.params[0] = commandSetData->battler | (commandSetData->partySlot << 8);
                battleMsg.id = BattleStrings_Text_WhatWillPokemonDo;
            }

            BattleMessage_Print(commandSetData->battleSys, msgLoader, &battleMsg, 0);
            commandSetData->state = 3;
        }
    } break;
    case 2:
        if (Text_IsPrinterActive(commandSetData->msgIdx) == FALSE) {
            commandSetData->state = 3;
        }
        break;
    case 3:
        ov16_0226757C(commandSetData->healthbox);
        ov16_02264798(battlerData, commandSetData->battleSys);
        commandSetData->state = 4;
    case 4:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        UnkStruct_ov16_02269668 v11;

        NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
        NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

        v11.unk_01 = commandSetData->battler;
        v11.unk_00 = commandSetData->battlerType;
        v11.unk_02 = commandSetData->partySlot;
        v11.unk_04 = commandSetData->curHP;
        v11.unk_06 = commandSetData->maxHP;
        v11.unk_03 = commandSetData->ballStatusBattler;
        v11.unk_08 = ov16_0223EC58(commandSetData->battleSys, commandSetData->battler, commandSetData->switchingOrCanPickCommandMask);

        if (battlerData->unk_193) {
            ov16_0226BCCC(v2, 1);

            if (BattleSystem_GetBattleStatusMask(commandSetData->battleSys) & BATTLE_STATUS_FIRST_BATTLE) {
                ov16_02268C04(bgNarc, objNarc, v2, 6, 0, &v11);
            } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_PAL_PARK) {
                ov16_02268C04(bgNarc, objNarc, v2, 10, 0, &v11);
            } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_SAFARI) {
                ov16_02268C04(bgNarc, objNarc, v2, 8, 0, &v11);
            } else if (v11.unk_00 == 4 && (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_2vs2) == FALSE) {
                ov16_02268C04(bgNarc, objNarc, v2, 4, 0, &v11);
            } else {
                ov16_02268C04(bgNarc, objNarc, v2, 3, 0, &v11);
            }

            BattleSystem_SetCommandSelectionFlags(commandSetData->battleSys, 1);
        } else {
            if (BattleSystem_GetBattleStatusMask(commandSetData->battleSys) & BATTLE_STATUS_FIRST_BATTLE) {
                ov16_02268C04(bgNarc, objNarc, v2, 5, 0, &v11);
            } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_PAL_PARK) {
                ov16_02268C04(bgNarc, objNarc, v2, 9, 0, &v11);
            } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_SAFARI) {
                ov16_02268C04(bgNarc, objNarc, v2, 7, 0, &v11);
            } else if (v11.unk_00 != 4) {
                ov16_02268C04(bgNarc, objNarc, v2, 1, 0, &v11);
            } else {
                ov16_02268C04(bgNarc, objNarc, v2, 2, 0, &v11);
            }

            battlerData->unk_193 = 1;
        }

        ov16_0226914C(v2, commandSetData->expPercents);
        ov16_02269168(v2, commandSetData->ballStatus[0], commandSetData->ballStatus[1]);
        ov16_022691BC(v2);
        NARC_dtor(bgNarc);
        NARC_dtor(objNarc);

        if (healthbox != NULL) {
            ov16_02268468(healthbox);
        }

        commandSetData->state = 5;
        break;
    case 5:
        if (gSystem.pressedKeys & PAD_BUTTON_START) {
            BattlerData *battlerData;

            for (int i = 0; i < BattleSystem_GetMaxBattlers(commandSetData->battleSys); i++) {
                battlerData = BattleSystem_GetBattlerData(commandSetData->battleSys, i);
                ov16_0226737C(&battlerData->healthbox);
            }
        }

        commandSetData->input = BattleSystem_MenuInput(v2);

        if (commandSetData->input != 0xFFFFFFFF) {
            commandSetData->unused_0B = 10; // set but never used
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            commandSetData->state = 6;
        }
        break;
    case 6:
        if (ov16_02269348(v2) == 1 || commandSetData->input == 1) {
            switch (commandSetData->input) {
            case 1: // Fight
                if (BattleSystem_GetBattleType(commandSetData->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
                    commandSetData->state = 7;
                }
                break;
            case 2: { // Bag
                NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_02268C04(bgNarc, objNarc, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(healthbox);
                ov16_022675AC(commandSetData->healthbox);
                ov16_022647D8(battlerData);
                NARC_dtor(bgNarc);
                NARC_dtor(objNarc);
            } break;
            case 3: { // Pokemon
                NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_02268C04(bgNarc, objNarc, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(healthbox);
                ov16_022675AC(commandSetData->healthbox);
                ov16_022647D8(battlerData);
                NARC_dtor(bgNarc);
                NARC_dtor(objNarc);
            } break;
            case 4: { // Run
                NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                if (ov16_0226D088(v2) == 1) {
                    ov16_0226846C(healthbox);
                    commandSetData->input = 0xFF;
                }

                ov16_02268C04(bgNarc, objNarc, v2, 0, 0, NULL);
                NARC_dtor(bgNarc);
                NARC_dtor(objNarc);
            } break;
            default:
                GF_ASSERT(0);
                break;
            }

            ov16_02269218(v2);
            commandSetData->state = 8;
        }
        break;
    case 7:
        if (ov16_02269348(v2) == 1) {
            NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            ov16_02268C04(bgNarc, objNarc, v2, 0, 0, NULL);
            ov16_0226BCCC(v2, 0);
            ov16_0226846C(healthbox);
            ov16_022675AC(commandSetData->healthbox);
            ov16_022647D8(battlerData);
            ov16_02269218(v2);

            commandSetData->state = 8;

            NARC_dtor(bgNarc);
            NARC_dtor(objNarc);
        }
        break;
    case 8:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(commandSetData->battleSys, commandSetData->battler, commandSetData->input);
            BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_TrainerSetCommandSelection(SysTask *task, void *data)
{
    CommandSetData *commandSetData = data;
    int command = TrainerAI_PickCommand(commandSetData->battleSys, commandSetData->battler);

    ov16_022656D4(commandSetData->battleSys, commandSetData->battler, command);
    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_LinkSetCommandSelection(SysTask *task, void *data)
{
    CommandSetData *commandSetData = data;

    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);
    Heap_Free(data);
    SysTask_Done(task);
}

static const Fraction sFleeRateMultipliers[] = {
    { 10, 40 },
    { 10, 35 },
    { 10, 30 },
    { 10, 25 },
    { 10, 20 },
    { 10, 15 },
    { 10, 10 },
    { 15, 10 },
    { 20, 10 },
    { 25, 10 },
    { 30, 10 },
    { 35, 10 },
    { 40, 10 },
};

static void Task_SafariPokemonSetCommandSelection(SysTask *task, void *data)
{
    CommandSetData *commandSetData = data;
    u8 escapeCount = BattleSystem_GetSafariEscapeCount(commandSetData->battleSys);
    u16 species = BattleMon_Get(BattleSystem_GetBattleContext(commandSetData->battleSys), commandSetData->battler, BATTLEMON_SPECIES, NULL);
    int fleeRate = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_SAFARI_FLEE_RATE);
    fleeRate = fleeRate * sFleeRateMultipliers[escapeCount].numerator / sFleeRateMultipliers[escapeCount].denominator;

    if (BattleSystem_RandNext(commandSetData->battleSys) % 255 <= fleeRate) {
        ov16_022656D4(commandSetData->battleSys, commandSetData->battler, 4);
    } else {
        ov16_022656D4(commandSetData->battleSys, commandSetData->battler, 5);
    }

    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_PalParkPokemonSetCommandSelection(SysTask *task, void *data)
{
    CommandSetData *commandSetData = data;

    ov16_022656D4(commandSetData->battleSys, commandSetData->battler, 4);
    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_RecordingSetCommandSelection(SysTask *task, void *data)
{
    CommandSetData *commandSetData = data;
    u8 v1;

    if (ov16_0223F530(commandSetData->battleSys, commandSetData->battler, &v1) == 1) {
        ov16_0226474C(commandSetData->battleSys);
    }

    if (!v1 || v1 > 4 || v1 == 2) {
        ov16_02264730(commandSetData->battleSys);
    }

    ov16_022656D4(commandSetData->battleSys, commandSetData->battler, v1);
    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_PlayerShowMoveSelectMenu(SysTask *task, void *data)
{
    MoveSelectMenuData *moveSelectMenuData = data;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(moveSelectMenuData->battleSys);
    HealthBox *healthbox;

    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(moveSelectMenuData->battleSys);
    BattlerData *battlerData = BattleSystem_GetBattlerData(moveSelectMenuData->battleSys, moveSelectMenuData->battler);
    int partner = BattleSystem_GetPartner(moveSelectMenuData->battleSys, moveSelectMenuData->battler);

    if (partner != moveSelectMenuData->battler) {
        healthbox = BattleSystem_GetHealthBox(moveSelectMenuData->battleSys, partner);
    } else {
        healthbox = NULL;
    }

    switch (moveSelectMenuData->state) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        MessageLoader *msgLoader = BattleSystem_GetMessageLoader(moveSelectMenuData->battleSys);
        BattleMessage battleMsg;

        battleMsg.tags = TAG_NICKNAME;
        battleMsg.params[0] = moveSelectMenuData->battler | (moveSelectMenuData->partySlot << 8);
        battleMsg.id = BattleStrings_Text_WhatWillPokemonDo;

        BattleMessage_Print(moveSelectMenuData->battleSys, msgLoader, &battleMsg, 0);

        ov16_02269218(v2);

        UnkStruct_ov16_02260C00 v8;
        NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
        NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

        for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
            v8.moveIDs[i] = moveSelectMenuData->moves[i];
            v8.unk_08[i] = moveSelectMenuData->ppCur[i];
            v8.unk_0C[i] = moveSelectMenuData->ppMax[i];
        }

        v8.unk_10 = moveSelectMenuData->battlerType;

        ov16_02268C04(bgNarc, objNarc, v2, 11, 0, &v8);
        NARC_dtor(bgNarc);
        NARC_dtor(objNarc);
        moveSelectMenuData->state++;
        break;
    case 1:
        moveSelectMenuData->input = BattleSystem_MenuInput(v2);

        if (moveSelectMenuData->input != 0xFFFFFFFF) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            moveSelectMenuData->state++;
        }
        break;
    case 2:
        if (moveSelectMenuData->input != 0xFF) {
            if ((BattleSystem_GetBattleType(moveSelectMenuData->battleSys) & BATTLE_TYPE_DOUBLES) == FALSE) {
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(healthbox);
                ov16_022675AC(moveSelectMenuData->healthbox);
                ov16_022647D8(battlerData);
            }
        }

        ov16_02265790(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->input);
        moveSelectMenuData->state++;
        break;
    case 3:
        moveSelectMenuData->state++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            BattleSystem_SetCatchingTutorialLowHP(moveSelectMenuData->battleSys, TRUE);
            BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_TrainerShowMoveSelectMenu(SysTask *task, void *data)
{
    MoveSelectMenuData *moveSelectMenuData = data;
    int action;
    u32 battleType = BattleSystem_GetBattleType(moveSelectMenuData->battleSys);
    BattleContext *battleCtx = BattleSystem_GetBattleContext(moveSelectMenuData->battleSys);

    if ((battleType & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_ROAMER))
        || (BattleSystem_GetBattleStatusMask(moveSelectMenuData->battleSys) & BATTLE_STATUS_FIRST_BATTLE)
        || BattleSystem_GetBattlerSide(moveSelectMenuData->battleSys, moveSelectMenuData->battler) == BATTLER_US) {
        action = TrainerAI_Main(moveSelectMenuData->battleSys, moveSelectMenuData->battler);

        switch (action) {
        case 0xFF:
            return;
            break;
        default:
            action++;
            break;
        }
    } else {
        int validMoves[LEARNED_MOVES_MAX];
        int validMovesCount = 0;

        for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
            if ((moveSelectMenuData->invalidMoves & FlagIndex(i)) == FALSE) {
                validMoves[validMovesCount] = i + 1;
                validMovesCount++;
            }
        }

        action = validMoves[BattleSystem_RandNext(moveSelectMenuData->battleSys) % validMovesCount];

        BattleContext_Set(moveSelectMenuData->battleSys, battleCtx, 11, moveSelectMenuData->battler, BattleSystem_Defender(moveSelectMenuData->battleSys, battleCtx, moveSelectMenuData->battler, moveSelectMenuData->moves[action - 1], 1, NULL));
    }

    ov16_02265790(moveSelectMenuData->battleSys, moveSelectMenuData->battler, action);
    BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_LinkShowMoveSelectMenu(SysTask *task, void *data)
{
    MoveSelectMenuData *moveSelectMenuData = data;

    BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);
    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_RecordingShowMoveSelectMenu(SysTask *task, void *data)
{
    MoveSelectMenuData *moveSelectMenuData = data;
    u8 moveSlot;

    if (ov16_0223F530(moveSelectMenuData->battleSys, moveSelectMenuData->battler, &moveSlot) == 1) {
        ov16_0226474C(moveSelectMenuData->battleSys);
    }

    if (!moveSlot || moveSlot > LEARNED_MOVES_MAX) {
        ov16_02264730(moveSelectMenuData->battleSys);
    } else {
        u16 move = BattleMon_Get(BattleSystem_GetBattleContext(moveSelectMenuData->battleSys), moveSelectMenuData->battler, BATTLEMON_MOVE_1 + (moveSlot - 1), NULL);

        if (!move || move > MAX_MOVES - 1) {
            ov16_02264730(moveSelectMenuData->battleSys);
        }
    }

    ov16_02265790(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSlot);
    BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_PlayerShowTargetSelectMenu(SysTask *task, void *data)
{
    TargetSelectMenuData *targetSelectMenuData = data;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(targetSelectMenuData->battleSys);
    HealthBox *healthbox;
    BattlerData *battlerData = BattleSystem_GetBattlerData(targetSelectMenuData->battleSys, targetSelectMenuData->battler);
    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(targetSelectMenuData->battleSys);
    int partner = BattleSystem_GetPartner(targetSelectMenuData->battleSys, targetSelectMenuData->battler);

    if (partner != targetSelectMenuData->battler) {
        healthbox = BattleSystem_GetHealthBox(targetSelectMenuData->battleSys, partner);
    } else {
        healthbox = NULL;
    }

    switch (targetSelectMenuData->state) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        UnkStruct_ov16_02260F14 v6;
        NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
        NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

        for (int i = 0; i < 4; i++) {
            v6.unk_00[i] = targetSelectMenuData->targetMon[i];
        }

        v6.unk_20 = targetSelectMenuData->battlerType;
        v6.unk_21 = ov16_02269368(targetSelectMenuData->range, targetSelectMenuData->battlerType);

        ov16_02268C04(bgNarc, objNarc, v2, 12, 0, &v6);
        NARC_dtor(bgNarc);
        NARC_dtor(objNarc);

        targetSelectMenuData->state++;
        break;
    case 1:
        targetSelectMenuData->input = BattleSystem_MenuInput(v2);

        if (targetSelectMenuData->input != 0xFFFFFFFF) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            targetSelectMenuData->state++;
        }
        break;
    case 2:
        if (targetSelectMenuData->input != 0xFF) {
            ov16_022675AC(targetSelectMenuData->healthbox);
            ov16_022647D8(battlerData);
            ov16_0226846C(healthbox);

            if (targetSelectMenuData->unk_32 == 1) {
                ov16_0226BCCC(v2, 0);
            }
        }

        targetSelectMenuData->state++;
        break;
    case 3:
        targetSelectMenuData->state++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            u8 v10[6];
            int input = targetSelectMenuData->input;
            u32 battleType = BattleSystem_GetBattleType(targetSelectMenuData->battleSys);

            if (input != 0xFF) {
                ov16_0223F858(targetSelectMenuData->battleSys, &v10[0]);

                if (battleType & BATTLE_TYPE_DOUBLES) {
                    input = v10[2 + (targetSelectMenuData->input - 1)] + 1;
                } else {
                    input = v10[0 + (targetSelectMenuData->input - 1)] + 1;
                }
            }

            ov16_022658CC(targetSelectMenuData->battleSys, targetSelectMenuData->battler, input);
            BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_TrainerShowTargetSelectMenu(SysTask *task, void *data)
{
    TargetSelectMenuData *targetSelectMenuData = data;
    BattleContext *battleCtx = BattleSystem_GetBattleContext(targetSelectMenuData->battleSys);
    int selectedTarget = BattleContext_Get(targetSelectMenuData->battleSys, battleCtx, BATTLECTX_AICTX_SELECTED_TARGET, targetSelectMenuData->battler) + 1;

    GF_ASSERT(selectedTarget < 5);

    ov16_022658CC(targetSelectMenuData->battleSys, targetSelectMenuData->battler, selectedTarget);
    BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_LinkShowTargetSelectMenu(SysTask *task, void *data)
{
    TargetSelectMenuData *targetSelectMenuData = data;

    BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_RecordingShowTargetSelectMenu(SysTask *task, void *data)
{
    TargetSelectMenuData *targetSelectMenuData = data;
    u8 v1;

    if (ov16_0223F530(targetSelectMenuData->battleSys, targetSelectMenuData->battler, &v1) == 1) {
        ov16_0226474C(targetSelectMenuData->battleSys);
    }

    if (!v1 || v1 > 4) {
        ov16_02264730(targetSelectMenuData->battleSys);
    } else {
        int battler = v1 - 1;

        switch (targetSelectMenuData->range) {
        case 0x0:

            if (targetSelectMenuData->battler == battler) {
                ov16_02264730(targetSelectMenuData->battleSys);
            }
            break;
        case 0x200:

            if (BattleSystem_GetBattlerSide(targetSelectMenuData->battleSys, targetSelectMenuData->battler) != BattleSystem_GetBattlerSide(targetSelectMenuData->battleSys, battler)) {
                ov16_02264730(targetSelectMenuData->battleSys);
            }
            break;
        case 0x1:
        case 0x2:
        case 0x4:
        case 0x8:
        case 0x10:
        case 0x20:
        case 0x40:
        case 0x80:
        case 0x100:
        case 0x400:
            break;
        }
    }

    ov16_022658CC(targetSelectMenuData->battleSys, targetSelectMenuData->battler, v1);
    BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_PlayerShowBagMenu(SysTask *task, void *data)
{
    BagMenuData *bagMenuData = data;
    PaletteData *paletteData = BattleSystem_GetPaletteData(bagMenuData->battleSys);

    switch (bagMenuData->state) {
    case 0:
        bagMenuData->isCursorEnabled = ov16_0226CD08(ov16_0223E02C(bagMenuData->battleSys));
        sub_02015738(ov16_0223E220(bagMenuData->battleSys), 1);
        PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xC00, -8, 0, 7, 0);
        PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, -8, 0, 16, 0);
        bagMenuData->state++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            ov16_0223B384(bagMenuData->battleSys);

            bagMenuData->battleBagCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleBagContext));
            memset(bagMenuData->battleBagCtx, 0, sizeof(BattleBagContext));

            bagMenuData->battleBagCtx->battleSys = bagMenuData->battleSys;
            bagMenuData->battleBagCtx->trainerInfo = BattleSystem_GetTrainerInfo(bagMenuData->battleSys, bagMenuData->battler);
            bagMenuData->battleBagCtx->heapID = HEAP_ID_BATTLE;
            bagMenuData->battleBagCtx->battleBagExited = FALSE;
            bagMenuData->battleBagCtx->bag = BattleSystem_GetBag(bagMenuData->battleSys);
            bagMenuData->battleBagCtx->battler = bagMenuData->battler;
            bagMenuData->battleBagCtx->isCursorEnabled = bagMenuData->isCursorEnabled;
            bagMenuData->battleBagCtx->hasTwoOpponents = bagMenuData->hasTwoOpponents;
            bagMenuData->battleBagCtx->opponentHidden = bagMenuData->semiInvulnerable;
            bagMenuData->battleBagCtx->opponentSubstituted = bagMenuData->substitute;
            bagMenuData->battleBagCtx->embargoRemainingTurns = bagMenuData->embargoTurns[bagMenuData->battler];
            BattleBagTask_Start(bagMenuData->battleBagCtx);
            bagMenuData->state = 3;
        }
        break;
    case 2:
        bagMenuData->battleBagCtx->isCursorEnabled = bagMenuData->isCursorEnabled;
        BattleBagTask_Start(bagMenuData->battleBagCtx);
        bagMenuData->state++;
    case 3:
        if (bagMenuData->battleBagCtx->battleBagExited) {
            bagMenuData->battleBagCtx->battleBagExited = 0;
            bagMenuData->isCursorEnabled = bagMenuData->battleBagCtx->isCursorEnabled;

            if (bagMenuData->battleBagCtx->selectedBattleBagItem) {
                switch (bagMenuData->battleBagCtx->selectedBattleBagPocket) {
                case BATTLE_POCKET_INDEX_RECOVER_STATUS:
                case BATTLE_POCKET_INDEX_RECOVER_HP_PP:
                    bagMenuData->state = 4;
                    break;
                case BATTLE_POCKET_INDEX_BATTLE_ITEMS:
                case BATTLE_POCKET_INDEX_POKE_BALLS:
                    bagMenuData->state = 6;
                    break;
                }
            } else {
                bagMenuData->state = 6;
            }
        }
        break;
    case 4:
        int battler;
        Party *party = BattleSystem_GetParty(bagMenuData->battleSys, bagMenuData->battler);
        Pokemon *mon;

        if (BattleSystem_GetBattleType(bagMenuData->battleSys) & BATTLE_TYPE_DOUBLES && (BattleSystem_GetBattleType(bagMenuData->battleSys) & BATTLE_TYPE_2vs2) == 0) {
            battler = bagMenuData->battler & 1;
        } else {
            battler = bagMenuData->battler;
        }

        Party_InitWithCapacity(bagMenuData->partyMenuData->battlePartyCtx->party, MAX_PARTY_SIZE);

        for (int i = 0; i < Party_GetCurrentCount(party); i++) {
            mon = BattleSystem_GetPartyPokemon(bagMenuData->battleSys, battler, bagMenuData->partyOrder[battler][i]);
            Party_AddPokemon(bagMenuData->partyMenuData->battlePartyCtx->party, mon);
            bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[i] = bagMenuData->partyOrder[battler][i];
        }

        bagMenuData->partyMenuData->battlePartyCtx->battleSys = bagMenuData->battleSys;
        bagMenuData->partyMenuData->battlePartyCtx->heapID = HEAP_ID_BATTLE;
        bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex = 0;
        bagMenuData->partyMenuData->battlePartyCtx->battlePartyExited = 0;
        bagMenuData->partyMenuData->battlePartyCtx->moveToLearn = MOVE_NONE;
        bagMenuData->partyMenuData->battlePartyCtx->battlePartyMode = BATTLE_PARTY_MODE_USE_ITEM;
        bagMenuData->partyMenuData->battlePartyCtx->selectedBattleBagItem = bagMenuData->battleBagCtx->selectedBattleBagItem;
        bagMenuData->partyMenuData->battlePartyCtx->selectedBattleBagPocket = bagMenuData->battleBagCtx->selectedBattleBagPocket;
        bagMenuData->partyMenuData->battlePartyCtx->battler = bagMenuData->battleBagCtx->battler;
        bagMenuData->partyMenuData->battlePartyCtx->isCursorEnabled = bagMenuData->isCursorEnabled;
        bagMenuData->partyMenuData->battlePartyCtx->playerPokemonPartySlot = bagMenuData->partyMenuData->partySlots[bagMenuData->battler];
        bagMenuData->partyMenuData->battlePartyCtx->partnerPokemonPartySlot = bagMenuData->partyMenuData->partySlots[BattleSystem_GetPartner(bagMenuData->battleSys, bagMenuData->battler)];

        if (bagMenuData->battlerType == 4) {
            bagMenuData->partyMenuData->battlePartyCtx->embargoRemainingTurns[0] = bagMenuData->embargoTurns[BattleSystem_GetPartner(bagMenuData->battleSys, bagMenuData->battler)];
            bagMenuData->partyMenuData->battlePartyCtx->embargoRemainingTurns[1] = bagMenuData->embargoTurns[bagMenuData->battler];
        } else {
            bagMenuData->partyMenuData->battlePartyCtx->embargoRemainingTurns[0] = bagMenuData->embargoTurns[bagMenuData->battler];
            bagMenuData->partyMenuData->battlePartyCtx->embargoRemainingTurns[1] = bagMenuData->embargoTurns[BattleSystem_GetPartner(bagMenuData->battleSys, bagMenuData->battler)];
        }

        BattlePartyTask_Start(bagMenuData->partyMenuData->battlePartyCtx);
        bagMenuData->state++;
        break;
    case 5:
        if (bagMenuData->partyMenuData->battlePartyCtx->battlePartyExited) {
            bagMenuData->isCursorEnabled = bagMenuData->partyMenuData->battlePartyCtx->isCursorEnabled;
            bagMenuData->partyMenuData->battlePartyCtx->battlePartyExited = 0;

            if (bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex == 6) {
                bagMenuData->state = 2;
            } else {
                bagMenuData->state = 6;
            }
        }
        break;
    case 6:
        ov16_0223B430(bagMenuData->battleSys);
        ov16_0226CD10(ov16_0223E02C(bagMenuData->battleSys), bagMenuData->isCursorEnabled);
        PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xC00, -8, 7, 0, 0);
        PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, -8, 16, 0, 0);
        bagMenuData->state++;
        break;
    case 7:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            sub_02015738(ov16_0223E220(bagMenuData->battleSys), 0);

            if (bagMenuData->battleBagCtx->selectedBattleBagItem) {
                bagMenuData->state = 9;

                switch (bagMenuData->battleBagCtx->selectedBattleBagPocket) {
                case BATTLE_POCKET_INDEX_RECOVER_STATUS:
                    if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_REVIVE || bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_MAX_REVIVE) {
                        bagMenuData->state = 8;
                    } else if ((bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 2 && (BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TRAINER_DOUBLES || BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TAG_DOUBLES))
                        || bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 1) {
                        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_FULL_RESTORE) {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == TRUE) {
                                bagMenuData->stateAfterDelay = 17;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, BATTLE_SOUND_PAN_LEFT);
                                bagMenuData->stateAfterDelay = 21;
                            }
                        } else {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == TRUE) {
                                bagMenuData->stateAfterDelay = 25;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, BATTLE_SOUND_PAN_LEFT);
                                bagMenuData->stateAfterDelay = 29;
                            }
                        }
                    } else {
                        bagMenuData->state = 8;
                    }
                    break;
                case BATTLE_POCKET_INDEX_RECOVER_HP_PP:
                    if (((bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 2 && (BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TRAINER_DOUBLES || BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TAG_DOUBLES))
                            || bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 1)
                        && Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HP_RESTORE, HEAP_ID_BATTLE)) {
                        if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == TRUE) {
                            bagMenuData->stateAfterDelay = 17;
                        } else {
                            Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, BATTLE_SOUND_PAN_LEFT);
                            bagMenuData->stateAfterDelay = 21;
                        }
                    } else {
                        bagMenuData->state = 8;
                    }
                    break;
                case BATTLE_POCKET_INDEX_BATTLE_ITEMS:
                    if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_POKE_DOLL || bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_FLUFFY_TAIL) {
                        bagMenuData->state = 8;
                    } else {
                        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_GUARD_SPEC) {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == TRUE) {
                                bagMenuData->stateAfterDelay = 13;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, BATTLE_SOUND_PAN_LEFT);
                                bagMenuData->stateAfterDelay = 15;
                            }
                        } else {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == TRUE) {
                                bagMenuData->stateAfterDelay = 11;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, BATTLE_SOUND_PAN_LEFT);
                                bagMenuData->stateAfterDelay = 15;
                            }
                        }
                    }
                    break;
                case BATTLE_POCKET_INDEX_POKE_BALLS:
                    bagMenuData->state = 8;
                    break;
                }
            } else {
                bagMenuData->state = 8;
            }

            if (bagMenuData->state != 8) {
                BattleSystem_LoadFightOverlay(bagMenuData->battleSys, FALSE);
            }
        }
        break;
    case 8:
        BattleItemUse used;

        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_NONE) {
            used.item = 0xFF;
        } else {
            used.item = bagMenuData->battleBagCtx->selectedBattleBagItem;
            used.category = bagMenuData->battleBagCtx->selectedBattleBagPocket;

            if (bagMenuData->battleBagCtx->selectedBattleBagPocket == BATTLE_POCKET_INDEX_RECOVER_STATUS
                || bagMenuData->battleBagCtx->selectedBattleBagPocket == BATTLE_POCKET_INDEX_RECOVER_HP_PP) {
                used.target = 1 + bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex];
            }
        }

        ov16_02265A70(bagMenuData->battleSys, bagMenuData->battler, used);
        BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

        Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
        Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
        Heap_Free(bagMenuData->partyMenuData);
        Heap_Free(bagMenuData->battleBagCtx);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    case 9:
        BattleMessage battleMsg;

        battleMsg.id = BattleStrings_Text_UsedTheItem;
        battleMsg.tags = TAG_ITEM;
        battleMsg.params[0] = bagMenuData->battleBagCtx->selectedBattleBagItem;

        MessageLoader *msgLoader = BattleSystem_GetMessageLoader(bagMenuData->battleSys);

        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;
        bagMenuData->state++;
        break;
    case 10:
        if (Text_IsPrinterActive(bagMenuData->msgIdx) == FALSE) {
            if (--bagMenuData->delay == 0) {
                bagMenuData->state = bagMenuData->stateAfterDelay;
            }
        }
        break;
    case 11: {
        MoveAnimation moveAnim;

        BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &moveAnim, 1, 9, bagMenuData->battler, bagMenuData->battler, NULL);
        ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &moveAnim);
    }
        bagMenuData->state++;
        break;
    case 17:
    case 25: {
        MoveAnimation moveAnim;
        int battler = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &moveAnim, 1, 9, battler, battler, NULL);
        ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &moveAnim);
    }
        bagMenuData->state++;
        break;
    case 13: {
        MoveAnimation moveAnim;

        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_GUARD_SPEC) {
            BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &moveAnim, 0, NULL, bagMenuData->battler, bagMenuData->battler, 54);
            ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &moveAnim);
        } else if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_DIRE_HIT) {
            BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &moveAnim, 0, NULL, bagMenuData->battler, bagMenuData->battler, 116);
            ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &moveAnim);
        } else {
            BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &moveAnim, 1, 12, bagMenuData->battler, bagMenuData->battler, NULL);
            ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &moveAnim);
        }

        bagMenuData->state++;
    } break;
    case 15: {
        BattleMessage battleMsg;

        battleMsg.id = BattleStrings_Text_PokemonsStatRose;
        battleMsg.tags = TAG_NICKNAME_STAT;
        battleMsg.params[0] = bagMenuData->battler | (bagMenuData->partyMenuData->partySlots[bagMenuData->battler] << 8);

        switch (bagMenuData->battleBagCtx->selectedBattleBagItem) {
        case ITEM_X_ATTACK:
            battleMsg.params[1] = 1;
            break;
        case ITEM_X_DEFENSE:
            battleMsg.params[1] = 2;
            break;
        case ITEM_X_SPEED:
            battleMsg.params[1] = 3;
            break;
        case ITEM_X_ACCURACY:
            battleMsg.params[1] = 6;
            break;
        case ITEM_X_SPECIAL:
            battleMsg.params[1] = 4;
            break;
        case ITEM_X_SP_DEF:
            battleMsg.params[1] = 5;
            break;
        case ITEM_GUARD_SPEC:
            battleMsg.id = BattleStrings_Text_YourTeamBecameShroudedInAWhiteFog;
            battleMsg.tags = TAG_NONE;
            break;
        case ITEM_DIRE_HIT:
            battleMsg.id = BattleStrings_Text_PokemonIsGettingPumped;
            battleMsg.tags = TAG_NICKNAME;
            break;
        }

        MessageLoader *msgLoader = BattleSystem_GetMessageLoader(bagMenuData->battleSys);
        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;
    }
        bagMenuData->state++;
        break;
    case 19:
    case 27: {
        MoveAnimation moveAnim;
        int battler = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &moveAnim, 1, 14, battler, battler, NULL);
        ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &moveAnim);
    }
        bagMenuData->state++;
        break;
    case 21: {

        int battler = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        int slots = bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex];

        HealthBox *healthbox = BattleSystem_GetHealthBox(bagMenuData->battleSys, battler);
        MI_CpuClear8(&healthbox->state, sizeof(u8));
        healthbox->type = HealthBox_Type(BattleSystem_GetBattlerType(bagMenuData->battleSys, battler), BattleSystem_GetBattleType(bagMenuData->battleSys));

        Pokemon *mon = BattleSystem_GetPartyPokemon(bagMenuData->battleSys, battler, slots);
        healthbox->curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL) - bagMenuData->partyMenuData->battlePartyCtx->currentDamage;
        healthbox->maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        healthbox->damage = bagMenuData->partyMenuData->battlePartyCtx->currentDamage;

        if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) == 0) {
            healthbox->status = 0;
        }

        HealthBox_CalcHP(healthbox, healthbox->damage);
    }
        bagMenuData->state++;
        break;
    case 22: {
        int battler = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        HealthBox *healthbox = BattleSystem_GetHealthBox(bagMenuData->battleSys, battler);

        if (ov16_022674F8(healthbox) == -1) {
            HealthBox_DrawInfo(healthbox, NULL, HEALTHBOX_INFO_STATUS);
            bagMenuData->state++;
        }
    } break;
    case 23: {
        BattleMessage battleMsg;

        MessageLoader *msgLoader = BattleSystem_GetMessageLoader(bagMenuData->battleSys);
        int battler = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;

        if (bagMenuData->partyMenuData->battlePartyCtx->currentDamage) {
            battleMsg.id = BattleStrings_Text_PokemonsHPWasRestoredByXPoints;
            battleMsg.tags = TAG_NICKNAME_NUM;
            battleMsg.params[0] = battler | (bagMenuData->partyMenuData->partySlots[battler] << 8);
            battleMsg.params[1] = bagMenuData->partyMenuData->battlePartyCtx->currentDamage;
        } else {
            battleMsg.id = BattleStrings_Text_PokemonBecameHealthy;
            battleMsg.tags = TAG_NICKNAME;
            battleMsg.params[0] = battler | (bagMenuData->partyMenuData->partySlots[battler] << 8);
        }

        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;

        bagMenuData->state++;
    } break;
    case 29: {
        BattleMessage battleMsg;
        int msgType;
        int effect = 0;

        int battler = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        HealthBox *healthbox = BattleSystem_GetHealthBox(bagMenuData->battleSys, battler);
        int slot = bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex];
        Pokemon *mon = BattleSystem_GetPartyPokemon(bagMenuData->battleSys, battler, slot);

        if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) == 0) {
            healthbox->status = 0;
        }

        HealthBox_DrawInfo(healthbox, healthbox->curHP, HEALTHBOX_INFO_STATUS);

        battleMsg.tags = TAG_NICKNAME;
        battleMsg.params[0] = battler | (bagMenuData->partyMenuData->partySlots[battler] << 8);

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_SLEEP, HEAP_ID_BATTLE)) {
            msgType = 0;
            effect++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_POISON, HEAP_ID_BATTLE)) {
            msgType = 1;
            effect++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_BURN, HEAP_ID_BATTLE)) {
            msgType = 2;
            effect++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_FREEZE, HEAP_ID_BATTLE)) {
            msgType = 3;
            effect++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_PARALYSIS, HEAP_ID_BATTLE)) {
            msgType = 4;
            effect++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_CONFUSION, HEAP_ID_BATTLE)) {
            msgType = 5;
            effect++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_ATTRACT, HEAP_ID_BATTLE)) {
            msgType = 6;
            effect++;
        }

        if (effect != 1) {
            battleMsg.id = BattleStrings_Text_PokemonGotOverItsStatusTrouble;
        } else {
            switch (msgType) {
            case 0:
                battleMsg.id = BattleStrings_Text_PokemonWokeUp;
                break;
            case 1:
                battleMsg.id = BattleStrings_Text_PokemonWasCuredOfItsPoisoning;
                break;
            case 2:
                battleMsg.id = BattleStrings_Text_PokemonsBurnWasHealed;
                break;
            case 3:
                battleMsg.id = BattleStrings_Text_PokemonWasThawedOut;
                break;
            case 4:
                battleMsg.id = BattleStrings_Text_PokemonWasCuredOfParalysis;
                break;
            case 5:
                battleMsg.id = BattleStrings_Text_PokemonSnappedOutOfItsConfusion;
                break;
            case 6:
                battleMsg.id = BattleStrings_Text_PokemonGotOverItsInfatuation;
                break;
            }
        }

        MessageLoader *msgLoader = BattleSystem_GetMessageLoader(bagMenuData->battleSys);
        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;
    }
        bagMenuData->state++;
        break;

    case 12:
    case 14:
    case 18:
    case 20:
    case 26:
    case 28:
        BattleAnimSystem_ExecuteScript(BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys));

        if (BattleAnimSystem_IsMoveActive(BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys)) == FALSE) {
            BattleAnimSystem_FreeScriptData(BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys));
            bagMenuData->state++;
        }
        break;
    case 16:
    case 24:
    case 30:
        if (Text_IsPrinterActive(bagMenuData->msgIdx) == FALSE) {
            if (--bagMenuData->delay == 0) {
                BattleSystem_LoadFightOverlay(bagMenuData->battleSys, TRUE);
                bagMenuData->state = 8;
            }
        }
        break;
    }
}

static void Task_TrainerShowBagMenu(SysTask *task, void *data)
{
    BagMenuData *bagMenuData = data;
    BattleItemUse used;

    used.item = 1;

    ov16_02265A70(bagMenuData->battleSys, bagMenuData->battler, used);
    BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
    Heap_Free(bagMenuData->partyMenuData);
    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_LinkShowBagMenu(SysTask *task, void *data)
{
    BagMenuData *bagMenuData = data;

    BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
    Heap_Free(bagMenuData->partyMenuData);
    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_RecordingShowBagMenu(SysTask *task, void *data)
{
    BagMenuData *bagMenuData = data;
    BattleItemUse used;
    u8 v2;

    if (ov16_0223F530(bagMenuData->battleSys, bagMenuData->battler, &v2) == 1) {
        ov16_0226474C(bagMenuData->battleSys);
    }

    used.item = v2;

    if (ov16_0223F530(bagMenuData->battleSys, bagMenuData->battler, &v2) == 1) {
        ov16_0226474C(bagMenuData->battleSys);
    }

    used.item |= (v2 << 8);

    if (ov16_0223F530(bagMenuData->battleSys, bagMenuData->battler, &v2) == 1) {
        ov16_0226474C(bagMenuData->battleSys);
    }

    used.category = v2 & 0xF;
    used.target = (v2 & 0xF0) >> 8;

    ov16_02265A70(bagMenuData->battleSys, bagMenuData->battler, used);
    BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
    Heap_Free(bagMenuData->partyMenuData);
    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_PlayerShowPartyMenu(SysTask *task, void *data)
{
    PartyMenuData *partyMenuData = data;
    PaletteData *paletteData = BattleSystem_GetPaletteData(partyMenuData->battleSys);

    switch (partyMenuData->state) {
    case 0:
        Window *window = BattleSystem_GetWindow(partyMenuData->battleSys, 0);

        Window_FillTilemap(window, 0xFF);
        Window_LoadTiles(window);

        partyMenuData->isCursorEnabled = ov16_0226CD08(ov16_0223E02C(partyMenuData->battleSys));
        sub_02015738(ov16_0223E220(partyMenuData->battleSys), 1);
        PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xC00, -8, 0, 7, 0);
        PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, -8, 0, 16, 0);
        partyMenuData->state++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            int i;
            int battler;
            int battler1, battler2;
            Pokemon *monSrc, *monDst;

            ov16_0223B384(partyMenuData->battleSys);

            partyMenuData->battlePartyCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
            partyMenuData->battlePartyCtx->party = Party_New(HEAP_ID_BATTLE);

            if ((BattleSystem_GetBattleType(partyMenuData->battleSys) & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)
                || BattleSystem_GetBattleType(partyMenuData->battleSys) == ((BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI) | BATTLE_TYPE_FRONTIER)) {
                if (BattleSystem_GetBattlerType(partyMenuData->battleSys, partyMenuData->battler) == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                    battler1 = partyMenuData->battler;
                    battler2 = BattleSystem_GetPartner(partyMenuData->battleSys, partyMenuData->battler);
                } else {
                    battler1 = BattleSystem_GetPartner(partyMenuData->battleSys, partyMenuData->battler);
                    battler2 = partyMenuData->battler;
                }

                monSrc = Pokemon_New(HEAP_ID_BATTLE);

                for (i = 0; i < MAX_PARTY_SIZE; i++) {
                    Party_AddPokemon(partyMenuData->battlePartyCtx->party, monSrc);
                }

                Heap_Free(monSrc);

                for (i = 0; i < BattleSystem_GetPartyCount(partyMenuData->battleSys, battler1); i++) {
                    monSrc = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, battler1, partyMenuData->partyOrder[battler1][i]);
                    monDst = Party_GetPokemonBySlotIndex(partyMenuData->battlePartyCtx->party, i * 2);
                    Pokemon_Copy(monSrc, monDst);
                    partyMenuData->battlePartyCtx->pokemonPartySlots[i * 2] = partyMenuData->partyOrder[battler1][i];
                }

                for (i = 0; i < BattleSystem_GetPartyCount(partyMenuData->battleSys, battler2); i++) {
                    monSrc = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, battler2, partyMenuData->partyOrder[battler2][i]);
                    monDst = Party_GetPokemonBySlotIndex(partyMenuData->battlePartyCtx->party, i * 2 + 1);
                    Pokemon_Copy(monSrc, monDst);
                    partyMenuData->battlePartyCtx->pokemonPartySlots[i * 2 + 1] = partyMenuData->partyOrder[battler2][i];
                }

                if (BattleSystem_GetBattlerType(partyMenuData->battleSys, partyMenuData->battler) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                    partyMenuData->battlePartyCtx->selectedPartyIndex = 1;
                } else {
                    partyMenuData->battlePartyCtx->selectedPartyIndex = 0;
                }
            } else {
                if (BattleSystem_GetBattleType(partyMenuData->battleSys) & BATTLE_TYPE_DOUBLES
                    && (BattleSystem_GetBattleType(partyMenuData->battleSys) & BATTLE_TYPE_2vs2) == FALSE) {
                    battler = partyMenuData->battler & 1;
                } else {
                    battler = partyMenuData->battler;
                }

                if (BattleSystem_GetBattlerType(partyMenuData->battleSys, partyMenuData->battler) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                    partyMenuData->battlePartyCtx->selectedPartyIndex = 1;
                } else {
                    partyMenuData->battlePartyCtx->selectedPartyIndex = 0;
                }

                Party *party = BattleSystem_GetParty(partyMenuData->battleSys, partyMenuData->battler);

                for (i = 0; i < Party_GetCurrentCount(party); i++) {
                    monSrc = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, battler, partyMenuData->partyOrder[battler][i]);
                    Party_AddPokemon(partyMenuData->battlePartyCtx->party, monSrc);
                    partyMenuData->battlePartyCtx->pokemonPartySlots[i] = partyMenuData->partyOrder[battler][i];
                }
            }

            partyMenuData->battlePartyCtx->battleSys = partyMenuData->battleSys;
            partyMenuData->battlePartyCtx->heapID = HEAP_ID_BATTLE;
            partyMenuData->battlePartyCtx->battlePartyExited = 0;
            partyMenuData->battlePartyCtx->moveToLearn = partyMenuData->canSwitch;
            partyMenuData->battlePartyCtx->doubleBattleFirstSelectedPartySlot = partyMenuData->doublesSelection;
            partyMenuData->battlePartyCtx->battlePartyMode = partyMenuData->listMode;
            partyMenuData->battlePartyCtx->selectedBattleBagItem = partyMenuData->selectedBattleBagItem;
            partyMenuData->battlePartyCtx->battler = partyMenuData->battler;
            partyMenuData->battlePartyCtx->isCursorEnabled = partyMenuData->isCursorEnabled;

            if ((partyMenuData->battlersSwitchingMask & FlagIndex(partyMenuData->battler)) == 0) {
                partyMenuData->battlePartyCtx->playerPokemonPartySlot = partyMenuData->partySlots[partyMenuData->battler];
            } else {
                partyMenuData->battlePartyCtx->playerPokemonPartySlot = 6;
            }

            if (BattleSystem_GetBattleType(partyMenuData->battleSys) & BATTLE_TYPE_2vs2) {
                partyMenuData->battlePartyCtx->partnerPokemonPartySlot = 6;
            } else if ((partyMenuData->battlersSwitchingMask & FlagIndex(BattleSystem_GetPartner(partyMenuData->battleSys, partyMenuData->battler))) == 0) {
                partyMenuData->battlePartyCtx->partnerPokemonPartySlot = partyMenuData->partySlots[BattleSystem_GetPartner(partyMenuData->battleSys, partyMenuData->battler)];
            } else {
                partyMenuData->battlePartyCtx->partnerPokemonPartySlot = 6;
            }

            BattlePartyTask_Start(partyMenuData->battlePartyCtx);
            partyMenuData->state++;
        }
        break;
    case 2:
        if (partyMenuData->battlePartyCtx->battlePartyExited) {
            ov16_0223B430(partyMenuData->battleSys);
            ov16_0226CD10(ov16_0223E02C(partyMenuData->battleSys), partyMenuData->battlePartyCtx->isCursorEnabled);
            PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xC00, -8, 7, 0, 0);
            PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, -8, 16, 0, 0);
            partyMenuData->state++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            sub_02015738(ov16_0223E220(partyMenuData->battleSys), 0);

            if (partyMenuData->battlePartyCtx->selectedPartyIndex == 6) {
                ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, 0xFF);
            } else {
                ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, 1 + partyMenuData->battlePartyCtx->pokemonPartySlots[partyMenuData->battlePartyCtx->selectedPartyIndex]);
            }

            BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);
            Heap_Free(partyMenuData->battlePartyCtx->party);
            Heap_Free(partyMenuData->battlePartyCtx);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_TrainerShowPartyMenu(SysTask *task, void *data)
{
    PartyMenuData *partyMenuData = data;
    Party *party;
    Pokemon *mon;
    int partner;
    u32 battleType = BattleSystem_GetBattleType(partyMenuData->battleSys);
    int battler = partyMenuData->battler;

    if (battleType & BATTLE_TYPE_TAG || battleType & BATTLE_TYPE_2vs2) {
        partner = battler;
    } else {
        partner = BattleSystem_GetPartner(partyMenuData->battleSys, battler);
    }

    int slot = BattleAI_SwitchedSlot(partyMenuData->battleSys, battler);

    if (slot == 6) {
        slot = BattleAI_PostKOSwitchIn(partyMenuData->battleSys, battler);

        if (slot == 6) {
            party = BattleSystem_GetParty(partyMenuData->battleSys, partyMenuData->battler);

            for (slot = 0; slot < Party_GetCurrentCount(party); slot++) {
                mon = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, partyMenuData->battler, slot);

                if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) && partyMenuData->partySlots[battler] != slot && partyMenuData->partySlots[partner] != slot) {
                    break;
                }
            }
        }
    }

    ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, 1 + slot);
    BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_LinkShowPartyMenu(SysTask *task, void *data)
{
    PartyMenuData *partyMenuData = data;

    BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_RecordingShowPartyMenu(SysTask *task, void *data)
{
    PartyMenuData *partyMenuData = data;
    u8 v1;

    if (ov16_0223F530(partyMenuData->battleSys, partyMenuData->battler, &v1) == 1) {
        ov16_0226474C(partyMenuData->battleSys);
    }

    if (!v1 || v1 > 6) {
        ov16_02264730(partyMenuData->battleSys);
    } else {
        Pokemon *mon;
        int v4 = v1 - 1;

        Party *party = BattleSystem_GetParty(partyMenuData->battleSys, partyMenuData->battler);

        if (v4 == partyMenuData->partySlots[partyMenuData->battler] || v4 == partyMenuData->doublesSelection) {
            ov16_02264730(partyMenuData->battleSys);
        } else if (v1 > Party_GetCurrentCount(party)) {
            ov16_02264730(partyMenuData->battleSys);
        } else {
            mon = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, partyMenuData->battler, v1 - 1);

            if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
                ov16_02264730(partyMenuData->battleSys);
            }

            if (Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_EGG) {
                ov16_02264730(partyMenuData->battleSys);
            }
        }
    }

    ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, v1);
    BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_PlayerShowYesNoMenu(SysTask *task, void *data)
{
    YesNoMenuData *yesNoMenuData = data;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(yesNoMenuData->battleSys);
    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(yesNoMenuData->battleSys);
    int partner;
    HealthBox *healthbox;
    BattlerData *battlerData = BattleSystem_GetBattlerData(yesNoMenuData->battleSys, yesNoMenuData->battler);
    partner = BattleSystem_GetPartner(yesNoMenuData->battleSys, yesNoMenuData->battler);

    if (partner != yesNoMenuData->battler) {
        healthbox = BattleSystem_GetHealthBox(yesNoMenuData->battleSys, partner);
    } else {
        healthbox = NULL;
    }

    switch (yesNoMenuData->state) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        if (yesNoMenuData->promptMsg) {
            MessageLoader *msgLoader = BattleSystem_GetMessageLoader(yesNoMenuData->battleSys);
            BattleMessage battleMsg;

            if (yesNoMenuData->yesNoType == 5) {
                battleMsg.tags = TAG_NICKNAME | 0x80;
                battleMsg.params[0] = yesNoMenuData->nickname;
            } else {
                battleMsg.tags = TAG_NONE;
            }

            battleMsg.id = yesNoMenuData->promptMsg;
            yesNoMenuData->msgIdx = BattleMessage_Print(yesNoMenuData->battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(yesNoMenuData->battleSys));
        }

        yesNoMenuData->state = 1;
        break;
    case 1:
        if (Text_IsPrinterActive(yesNoMenuData->msgIdx) == FALSE || yesNoMenuData->promptMsg == NULL) {
            NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
            UnkStruct_ov16_022623F0 v11;

            ov16_02269218(v2);

            v11.unk_00 = yesNoMenuData->move;

            switch (yesNoMenuData->yesNoType) {
            case 0:
            case 5:
                ov16_02268C04(bgNarc, objNarc, v2, 13, 0, &v11);
                break;
            case 1:
                ov16_02268C04(bgNarc, objNarc, v2, 14, 0, &v11);
                break;
            case 2:
                ov16_02268C04(bgNarc, objNarc, v2, 15, 0, &v11);
                break;
            case 3:
                ov16_02268C04(bgNarc, objNarc, v2, 16, 0, &v11);
                break;
            case 4:
                ov16_02268C04(bgNarc, objNarc, v2, 17, 0, &v11);
                break;
            default:
                GF_ASSERT(0);
                break;
            }

            yesNoMenuData->state = 2;

            NARC_dtor(bgNarc);
            NARC_dtor(objNarc);
        }
        break;
    case 2:
        yesNoMenuData->input = BattleSystem_MenuInput(v2);

        if (yesNoMenuData->input != 0xFFFFFFFF) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            yesNoMenuData->state = 3;
        }
        break;
    case 3:
        if (ov16_02269348(v2) == 1) {
            NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            ov16_022675AC(yesNoMenuData->healthbox);
            ov16_022647D8(battlerData);
            ov16_0226846C(healthbox);
            ov16_02269218(v2);
            ov16_02268C04(bgNarc, objNarc, v2, 0, 0, NULL);

            if (yesNoMenuData->input == 1) {
                ov16_0226BCCC(v2, 0);
            }

            yesNoMenuData->state = 4;

            NARC_dtor(bgNarc);
            NARC_dtor(objNarc);
        }
        break;
    case 4:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->input);
            BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_TrainerShowYesNoMenu(SysTask *task, void *data)
{
    YesNoMenuData *yesNoMenuData = data;

    BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_LinkShowYesNoMenu(SysTask *task, void *data)
{
    YesNoMenuData *yesNoMenuData = data;

    BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_RecordingShowYesNoMenu(SysTask *task, void *data)
{
    YesNoMenuData *yesNoMenuData = data;
    u8 v1;

    if (ov16_0223F530(yesNoMenuData->battleSys, yesNoMenuData->battler, &v1) == 1) {
        ov16_0226474C(yesNoMenuData->battleSys);
    }

    if (!v1 || (v1 != 0xFF && v1 != 1)) {
        ov16_02264730(yesNoMenuData->battleSys);
    }

    ov16_022656D4(yesNoMenuData->battleSys, yesNoMenuData->battler, v1);
    BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

static void Task_SetMoveAnimation(SysTask *task, void *data)
{
    SetMoveAnimationData *setMoveAnimationData = data;

    switch (setMoveAnimationData->state) {
    case 0:
        if (setMoveAnimationData->moveAnim.isSubstitute && setMoveAnimationData->moveAnim.unk_4C == 0 && PokemonSprite_GetAttribute(setMoveAnimationData->monSprite, MON_SPRITE_HIDE) == FALSE) {
            MoveAnimation moveAnim;

            BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &moveAnim, 1, 15, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
            ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &moveAnim);
            setMoveAnimationData->state = 1;
        } else {
            setMoveAnimationData->state = 4;
        }
        break;
    case 2:
        UnkStruct_ov12_022380DC v2;
        MoveAnimation moveAnim;

        ov16_02264530(setMoveAnimationData->battleSys, &setMoveAnimationData->moveAnim, &v2, setMoveAnimationData->battler);
        ov12_022382BC(&v2, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &moveAnim, 1, 16, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
        ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &moveAnim);
        setMoveAnimationData->battlerData->unk_19C = 0;
        setMoveAnimationData->state++;
        break;
    case 4:
        BattleSystem_SetRedHPSoundFlag(setMoveAnimationData->battleSys, 2);

        if (setMoveAnimationData->unk_6B) {
            ov16_0223F3EC(setMoveAnimationData->battleSys);
        }

        if (setMoveAnimationData->unk_6C) {
            PokemonSpriteManager_HideShadows(BattleSystem_GetPokemonSpriteManager(setMoveAnimationData->battleSys));
        }

        ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &setMoveAnimationData->moveAnim);
        setMoveAnimationData->state++;
        break;
    case 6:
        BattleSystem_SetRedHPSoundFlag(setMoveAnimationData->battleSys, 0);

        if (setMoveAnimationData->unk_6B) {
            ov16_0223F3BC(setMoveAnimationData->battleSys);
        }

        if (setMoveAnimationData->unk_6C) {
            PokemonSpriteManager_ShowShadows(BattleSystem_GetPokemonSpriteManager(setMoveAnimationData->battleSys));
        }

        if (setMoveAnimationData->moveAnim.isSubstitute && setMoveAnimationData->moveAnim.unk_4C == 0 && PokemonSprite_GetAttribute(setMoveAnimationData->monSprite, MON_SPRITE_HIDE) == FALSE) {
            MoveAnimation moveAnim;

            BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &moveAnim, 1, 15, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
            ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &moveAnim);
            setMoveAnimationData->state = 7;
        } else {
            setMoveAnimationData->state = 10;
        }
        break;
    case 8: {
        UnkStruct_ov12_022380DC v5;
        MoveAnimation moveAnim;

        ov16_02264530(setMoveAnimationData->battleSys, &setMoveAnimationData->moveAnim, &v5, setMoveAnimationData->battler);
        ov12_02238390(&v5, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &moveAnim, 1, 16, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
        ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &moveAnim);
        setMoveAnimationData->battlerData->unk_19C = 1;
    }
        setMoveAnimationData->state++;
        break;
    case 10:
        BattleController_EmitClearCommand(setMoveAnimationData->battleSys, setMoveAnimationData->battler, setMoveAnimationData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
        BattleAnimSystem_ExecuteScript(setMoveAnimationData->battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(setMoveAnimationData->battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(setMoveAnimationData->battleAnimSys);
            setMoveAnimationData->state++;
        }
        break;
    }
}

static void Task_FlickerBattler(SysTask *task, void *data)
{
    FlickerBattlerData *flickerBattlerData = data;
    int hide;

    if (flickerBattlerData->counter < 6) {
        if (flickerBattlerData->delay == 0) {
            flickerBattlerData->delay = 2;
            flickerBattlerData->counter++;
            hide = PokemonSprite_GetAttribute(flickerBattlerData->monSprite, MON_SPRITE_HIDE);
            hide ^= 1;
            PokemonSprite_SetAttribute(flickerBattlerData->monSprite, MON_SPRITE_HIDE, hide);
        } else {
            flickerBattlerData->delay--;
        }
    } else {
        hide = FALSE;
        PokemonSprite_SetAttribute(flickerBattlerData->monSprite, MON_SPRITE_HIDE, hide);
        BattleController_EmitClearCommand(flickerBattlerData->battleSys, flickerBattlerData->battler, BATTLE_COMMAND_FLICKER_BATTLER);
        Heap_Free(data);
        SysTask_Done(task);
    }
}

static void Task_UpdateHPGauge(SysTask *task, void *data)
{
    HealthBox *healthbox = data;
    int result;

    switch (healthbox->state) {
    case 0:
        HealthBox_CalcHP(healthbox, healthbox->damage);
        healthbox->state++;
    case 1:
        result = ov16_022674F8(healthbox);

        if (result == -1) {
            healthbox->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(healthbox->battleSys, healthbox->battler, healthbox->command);
        healthbox->task_10 = NULL;
        SysTask_Done(task);
        return;
    }
}

static void Task_UpdateExpGauge(SysTask *task, void *data)
{
    HealthBox *healthbox = data;
    int result;

    switch (healthbox->state) {
    case 0:
        healthbox->unk_4E = 0;
        Sound_PlayEffect(SEQ_SE_DP_EXP);
        HealthBox_CalcExp(healthbox, healthbox->expReward);
        healthbox->state++;
    case 1:
        if (healthbox->unk_4E < 8) {
            healthbox->unk_4E++;
        }

        result = ov16_02267560(healthbox);

        if (result == -1) {
            if (healthbox->unk_4E >= 8) {
                Sound_StopEffect(SEQ_SE_DP_EXP, 0);
                healthbox->state = 100;
            } else {
                healthbox->state++;
            }
        }
        break;
    case 2:
        healthbox->unk_4E++;

        if (healthbox->unk_4E >= 8) {
            Sound_StopEffect(SEQ_SE_DP_EXP, 0);
            healthbox->state = 100;
        }
        break;
    default:
        BattleController_EmitClearCommand(healthbox->battleSys, healthbox->battler, healthbox->command);
        healthbox->task_10 = NULL;
        SysTask_Done(task);
        break;
    }
}

static void Task_PlayFaintingSequence(SysTask *task, void *data)
{
    FaintingSequenceData *faintingSequenceData = data;
    BattleAnimSystem *battleAnimSys = BattleSystem_GetBattleAnimSystem(faintingSequenceData->battleSys);
    int y;
    int height;

    switch (faintingSequenceData->state) {
    case 0:
        if (faintingSequenceData->isSubstitute) {
            MoveAnimation moveAnim;

            BattleController_SetMoveAnimation(faintingSequenceData->battleSys, NULL, &moveAnim, 1, 15, faintingSequenceData->battler, faintingSequenceData->battler, NULL);
            ov16_02264408(faintingSequenceData->battleSys, faintingSequenceData->battlerData, battleAnimSys, &moveAnim);
            faintingSequenceData->state++;
        } else {
            faintingSequenceData->state = 4;
        }
        break;
    case 2:
        UnkStruct_ov12_022380DC v5;
        MoveAnimation moveAnim;

        ov16_02264530(faintingSequenceData->battleSys, &faintingSequenceData->moveAnim, &v5, faintingSequenceData->battler);
        ov12_022382BC(&v5, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(faintingSequenceData->battleSys, NULL, &moveAnim, 1, 16, faintingSequenceData->battler, faintingSequenceData->battler, NULL);
        ov16_02264408(faintingSequenceData->battleSys, faintingSequenceData->battlerData, battleAnimSys, &moveAnim);
        faintingSequenceData->battlerData->unk_19C = 0;
        faintingSequenceData->state++;
        break;
    case 1:
    case 3:
        BattleAnimSystem_ExecuteScript(battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(battleAnimSys);
            faintingSequenceData->state++;
        }
        break;
    case 4: {
        int pan;

        if (faintingSequenceData->face == FACE_FRONT) {
            pan = BATTLE_SOUND_PAN_RIGHT;
        } else {
            pan = BATTLE_SOUND_PAN_LEFT;
        }

        Species_PlayDelayedCry(BattleSystem_GetChatotCry(faintingSequenceData->battleSys, faintingSequenceData->battler),
            POKECRY_FAINT,
            faintingSequenceData->species,
            faintingSequenceData->form,
            pan,
            SOUND_VOLUME_MAX,
            faintingSequenceData->isTransformed,
            HEAP_ID_BATTLE,
            0);
        faintingSequenceData->state++;
    }
    case 5:
        if (Sound_IsPokemonCryPlaying() == FALSE) {
            faintingSequenceData->state++;
        }
        break;
    case 6:
        if (faintingSequenceData->face == FACE_FRONT) {
            Sound_PlayPannedEffect(SEQ_SE_DP_POKE_DEAD3, BATTLE_SOUND_PAN_RIGHT);
        } else {
            Sound_PlayPannedEffect(SEQ_SE_DP_POKE_DEAD3, BATTLE_SOUND_PAN_LEFT);
        }

        if (PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_SHADOW_HEIGHT) > 0) {
            faintingSequenceData->state = 7;
        } else {
            faintingSequenceData->state = 8;
        }
        break;
    case 7:
        height = PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_SHADOW_HEIGHT);
        height -= 8;

        if (height < 0) {
            height = 0;
        }

        PokemonSprite_SetAttribute(faintingSequenceData->monSprite, MON_SPRITE_SHADOW_HEIGHT, height);

        if (height) {
            break;
        }

        faintingSequenceData->state++;
    case 8:
        height = LoadPokemonSpriteYOffset(faintingSequenceData->species, faintingSequenceData->gender, faintingSequenceData->face, faintingSequenceData->form, faintingSequenceData->personality);
        height = MON_SPRITE_FRAME_HEIGHT - height;
        PokemonSprite_SetPartialDraw(faintingSequenceData->monSprite, 0, 0, MON_SPRITE_FRAME_WIDTH, height);
        faintingSequenceData->state++;
        break;
    case 9:
        y = PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_Y_CENTER);
        y += 8;
        PokemonSprite_SetAttribute(faintingSequenceData->monSprite, MON_SPRITE_Y_CENTER, y);
        height = PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_DRAW_HEIGHT);
        height -= 8;

        if (height < 0) {
            height = 0;
        }

        PokemonSprite_SetAttribute(faintingSequenceData->monSprite, MON_SPRITE_DRAW_HEIGHT, height);

        if (height == 0) {
            PokemonSprite_Delete(faintingSequenceData->monSprite);
            faintingSequenceData->state++;
        }
        break;
    case 10:
        BattleController_EmitClearCommand(faintingSequenceData->battleSys, faintingSequenceData->battler, faintingSequenceData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_FadeOut(SysTask *task, void *data)
{
    FadeOutData *fadeOutData = data;
    PaletteData *paletteData = BattleSystem_GetPaletteData(fadeOutData->battleSys);
    PokemonSpriteManager *monSpriteMan = BattleSystem_GetPokemonSpriteManager(fadeOutData->battleSys);

    switch (fadeOutData->state) {
    case 0:
        sub_02015738(ov16_0223E220(fadeOutData->battleSys), 1);
        PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_SUB_BG_F | PLTTBUF_MAIN_OBJ_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 1, 0, 16, 0);
        PokemonSpriteManager_StartFadeAll(monSpriteMan, 0, 16, 0, 0);
        Sound_FadeOutBGM(0, 16);
        fadeOutData->state++;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            fadeOutData->state++;
        }
        break;
    case 2:
        BattleController_EmitClearCommand(fadeOutData->battleSys, fadeOutData->battler, fadeOutData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_ToggleVanish(SysTask *task, void *data)
{
    ToggleVanishData *toggleVanishData = data;
    BattleAnimSystem *battleAnimSys = BattleSystem_GetBattleAnimSystem(toggleVanishData->battleSys);

    switch (toggleVanishData->state) {
    case 0:
        if (toggleVanishData->battlerData->monSprite) {
            PokemonSprite_SetAttribute(toggleVanishData->battlerData->monSprite, MON_SPRITE_HIDE, toggleVanishData->toggleHide);

            if (toggleVanishData->toggleHide == 1) {
                toggleVanishData->state = 0xFF;
            } else {
                toggleVanishData->state++;
            }
        } else {
            toggleVanishData->state = 0xFF;
        }
        break;
    case 1:
        if (toggleVanishData->isSubstitute && toggleVanishData->battlerData->unk_19C == 0) {
            MoveAnimation moveAnim;

            BattleController_SetMoveAnimation(toggleVanishData->battleSys, NULL, &moveAnim, 1, 15, toggleVanishData->battler, toggleVanishData->battler, NULL);
            ov16_02264408(toggleVanishData->battleSys, toggleVanishData->battlerData, battleAnimSys, &moveAnim);
            toggleVanishData->state++;
        } else {
            toggleVanishData->state = 0xFF;
        }
        break;
    case 3:
        UnkStruct_ov12_022380DC v3;
        MoveAnimation moveAnim;

        ov16_02264530(toggleVanishData->battleSys, &toggleVanishData->moveAnim, &v3, toggleVanishData->battler);
        ov12_02238390(&v3, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(toggleVanishData->battleSys, NULL, &moveAnim, 1, 16, toggleVanishData->battler, toggleVanishData->battler, NULL);
        ov16_02264408(toggleVanishData->battleSys, toggleVanishData->battlerData, battleAnimSys, &moveAnim);
        toggleVanishData->battlerData->unk_19C = 1;
        toggleVanishData->state++;
        break;
    case 2:
    case 4:
        BattleAnimSystem_ExecuteScript(battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(battleAnimSys) == FALSE) {
            BattleAnimSystem_FreeScriptData(battleAnimSys);
            toggleVanishData->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(toggleVanishData->battleSys, toggleVanishData->battler, toggleVanishData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_PlayLevelUpAnimation(SysTask *task, void *data)
{
    PlayLevelUpAnimationData *playLevelUpAnimationData = data;

    switch (playLevelUpAnimationData->state) {
    case 0:
        ov16_0226834C(playLevelUpAnimationData->healthbox, &playLevelUpAnimationData->unk_0B);
        Sound_PlayEffect(SEQ_SE_DP_EXPMAX);
        playLevelUpAnimationData->state++;
        break;
    case 1:
        if (playLevelUpAnimationData->unk_0B == 1) {
            BattleController_EmitClearCommand(playLevelUpAnimationData->battleSys, playLevelUpAnimationData->battler, playLevelUpAnimationData->command);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_WaitForBattleMessagePrint(SysTask *task, void *data)
{
    BattleMessageWaitTask *waitTask = data;

    if (BattleSystem_GetWaitDial(waitTask->battleSys)) {
        DestroyWaitDial(BattleSystem_GetWaitDial(waitTask->battleSys));
        BattleSystem_SetWaitDial(waitTask->battleSys, NULL);
    }

    if (Text_IsPrinterActive(waitTask->msgIdx) == FALSE) {
        BattleController_EmitClearCommand(waitTask->battleSys, waitTask->battler, waitTask->command);
        Heap_Free(data);
        SysTask_Done(task);
    }
}

static void Task_WaitForAlertMessagePrint(SysTask *task, void *data)
{
    AlertMsgData *alertMsgData = data;

    switch (alertMsgData->state) {
    case 0:
        if (Text_IsPrinterActive(alertMsgData->msgIdx) == FALSE) {
            alertMsgData->state++;
            alertMsgData->delay = 0;
        }
        break;
    case 1:
        if (++alertMsgData->delay == 40) {
            ov16_022661B0(alertMsgData->battleSys, alertMsgData->battler);
            BattleController_EmitClearCommand(alertMsgData->battleSys, alertMsgData->battler, alertMsgData->command);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static const u8 Unk_ov16_0226F31C[] = {
    0x9,
    0x17,
    0x5,
    0x13,
    0xD,
    0x11,
    0xF,
    0x7,
    0x15,
    0xB,
    0x19,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0x15,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB,
    0xB
};

static const int sFadeTargets[] = {
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x0,
    0x0,
    0x0,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF,
    0x7FFF
};

static void ov16_02263014(SysTask *task, void *data)
{
    UnkStruct_ov16_0225CBB8 *v0 = (UnkStruct_ov16_0225CBB8 *)data;
    BgConfig *bgConfig = BattleSystem_GetBgConfig(v0->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(v0->battleSys);
    int terrain = BattleSystem_GetTerrain(v0->battleSys);
    int fadeTarget = sFadeTargets[BattleSystem_GetBackground(v0->battleSys)];

    v0->unk_15++;

    switch (v0->unk_14) {
    case 0:
        UnkStruct_ov12_02237F38 v5;

        v0->unk_04 = ov12_02237EFC(HEAP_ID_BATTLE, NULL);

        v5.unk_00 = Unk_ov16_0226F31C[terrain];
        v5.unk_04 = 1;

        v0->unk_08[0] = ov12_02237F38(v0->unk_04, &v5);

        v5.unk_00 = Unk_ov16_0226F31C[terrain] + 1;
        v5.unk_04 = 1;

        v0->unk_08[1] = ov12_02237F38(v0->unk_04, &v5);

        ov12_02238004(v0->unk_08[0]);
        Sound_PlayEffect(SEQ_SE_DP_PASA2);

        v0->unk_14 = 1;
    case 1:
        if (v0->unk_15 == 10) {
            PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F, 0xF3FF, 0, 0, 16, fadeTarget);
            PaletteData_StartFade(paletteData, PLTTBUF_MAIN_OBJ_F, 0x3FFF, 0, 0, 16, fadeTarget);
        }

        if (v0->unk_15 >= 10 && v0->unk_16 < 16) {
            u16 i, v7;
            u16 *buffer;

            v0->unk_16++;

            if (v0->unk_16 > 16) {
                v0->unk_16 = 16;
            }

            buffer = PaletteData_GetFadedBuffer(paletteData, 1);

            for (i = 0; i < 256; i++) {
                v7 = (0 + ((0x1F - 0) * v0->unk_16 >> 4));
                buffer[i] = v7 | (v7 << 5) | (v7 << 10);
            }
        }

        if (v0->unk_15 == 20) {
            ov12_02238004(v0->unk_08[1]);
        }

        if (v0->unk_15 == 23) {
            Sound_PlayEffect(SEQ_SE_DP_PASA3);
        }

        if (v0->unk_15 == 28) {
            MI_CpuCopy16(ov16_0223F204(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 0), PALETTE_SIZE_BYTES * 7);

            if (BattleSystem_GetBattleType(v0->battleSys) == BATTLE_TYPE_AI_PARTNER) {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 5);
            } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_DOUBLES) {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 7);
            } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_TRAINER) {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 5);
            } else {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 4);
            }

            PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F, 0xF3FF, 0, 16, 0, fadeTarget);
            PaletteData_StartFade(paletteData, PLTTBUF_MAIN_OBJ_F, 0x3FFF, 0, 16, 0, fadeTarget);
            PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 0, 16, 0, fadeTarget);
        }

        if (v0->unk_15 >= 50) {
            PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F, 0xC00, 0, 16, 0, 0);
            v0->unk_14++;
        }
        break;
    case 2:
        if (ov12_0223802C(v0->unk_08[1]) == 0) {
            ov12_02237F74(v0->unk_04);
            v0->unk_14++;
        }
        break;
    case 3:
        sub_02015738(ov16_0223E220(v0->battleSys), 0);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    case 4:
        ov12_02237F98(v0->unk_04);
        ov12_02237F74(v0->unk_04);
        v0->unk_14++;
    case 5:
        MI_CpuCopy16(ov16_0223F204(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 0), PALETTE_SIZE_BYTES * 7);

        if (BattleSystem_GetBattleType(v0->battleSys) == BATTLE_TYPE_AI_PARTNER) {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 5);
        } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_DOUBLES) {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 7);
        } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_TRAINER) {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 5);
        } else {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(paletteData, 2), PALETTE_SIZE_BYTES * 4);
        }

        PaletteData_StartFade(paletteData, PLTTBUF_MAIN_BG_F, 0xFFFF, 0, 0, 0, 0x7FFF);
        PaletteData_StartFade(paletteData, PLTTBUF_MAIN_OBJ_F, 0x3FFF, 0, 0, 0, 0xFFFF);
        PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, 0, 0, 0, 0x7FFF);
        v0->unk_14 = 3;
        break;
    }
}

static void Task_ForgetMove(SysTask *task, void *data)
{
    ForgetMoveData *forgetMoveData = data;
    PaletteData *paletteData = BattleSystem_GetPaletteData(forgetMoveData->battleSys);

    switch (forgetMoveData->state) {
    case 0:
        PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, -8, 0, 16, 0);
        forgetMoveData->state++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            ov16_0223B384(forgetMoveData->battleSys);

            forgetMoveData->battlePartyCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
            forgetMoveData->battlePartyCtx->party = BattleSystem_GetParty(forgetMoveData->battleSys, forgetMoveData->battler);
            forgetMoveData->battlePartyCtx->battleSys = forgetMoveData->battleSys;
            forgetMoveData->battlePartyCtx->heapID = HEAP_ID_BATTLE;
            forgetMoveData->battlePartyCtx->selectedPartyIndex = forgetMoveData->slot;
            forgetMoveData->battlePartyCtx->moveToLearn = forgetMoveData->move;
            forgetMoveData->battlePartyCtx->battlePartyExited = 0;
            forgetMoveData->battlePartyCtx->doubleBattleFirstSelectedPartySlot = 0;
            forgetMoveData->battlePartyCtx->battlePartyMode = BATTLE_PARTY_MODE_LEARN_MOVE;
            forgetMoveData->battlePartyCtx->selectedBattleBagItem = 0;
            forgetMoveData->battlePartyCtx->battler = forgetMoveData->battler;
            forgetMoveData->battlePartyCtx->isCursorEnabled = 0;

            BattlePartyTask_Start(forgetMoveData->battlePartyCtx);
            forgetMoveData->state++;
        }
        break;
    case 2:
        if (forgetMoveData->battlePartyCtx->battlePartyExited) {
            ov16_0223B430(forgetMoveData->battleSys);
            PaletteData_StartFade(paletteData, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xFFFF, -8, 16, 0, 0);
            forgetMoveData->state++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(paletteData) == 0) {
            if (forgetMoveData->battlePartyCtx->selectedMoveSlot == 4) {
                ov16_02265B10(forgetMoveData->battleSys, forgetMoveData->battler, 0xFF);
            } else {
                ov16_02265B10(forgetMoveData->battleSys, forgetMoveData->battler, forgetMoveData->battlePartyCtx->selectedMoveSlot + 1);
            }

            BattleController_EmitClearCommand(forgetMoveData->battleSys, forgetMoveData->battler, forgetMoveData->command);

            Heap_Free(forgetMoveData->battlePartyCtx);
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void Task_SetMosaic(SysTask *task, void *data)
{
    SetMosaicData *setMosaicData = data;
    int intensity;

    switch (setMosaicData->state) {
    case 0:
        if (setMosaicData->counter == setMosaicData->wait) {
            setMosaicData->counter = 0;
            intensity = PokemonSprite_GetAttribute(setMosaicData->monSprite, MON_SPRITE_MOSAIC_INTENSITY);

            if (intensity > setMosaicData->intensity) {
                intensity--;
            } else if (intensity < setMosaicData->intensity) {
                intensity++;
            }

            PokemonSprite_SetAttribute(setMosaicData->monSprite, MON_SPRITE_MOSAIC_INTENSITY, intensity);

            if (intensity == setMosaicData->intensity) {
                setMosaicData->state++;
            }
        } else {
            setMosaicData->counter++;
        }
        break;
    case 1:
        BattleController_EmitClearCommand(setMosaicData->battleSys, setMosaicData->battler, setMosaicData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_ShowPartyGauge(SysTask *task, void *data)
{
    PartyGaugeTask *gaugeTask = (PartyGaugeTask *)data;
    enum PartyGaugeSide side;

    if (BattleSystem_GetBattlerSide(gaugeTask->battleSys, gaugeTask->battler) == BATTLER_US) {
        side = PARTY_GAUGE_OURS;
    } else {
        side = PARTY_GAUGE_THEIRS;
    }

    switch (gaugeTask->state) {
    case 0: {
        enum ShowPartyGaugeType showType;
        enum PartyGaugePosition gaugePosition;

        if (gaugeTask->midBattle == FALSE) {
            showType = SHOW_PARTY_GAUGE_BATTLE_START;
            gaugePosition = PARTY_GAUGE_POSITION_MIDDLE;
        } else {
            showType = SHOW_PARTY_GAUGE_MID_BATTLE;

            switch (gaugeTask->battlerType) {
            case 3:
                gaugePosition = PARTY_GAUGE_POSITION_HIGH;
                break;
            case 5:
                gaugePosition = PARTY_GAUGE_POSITION_LOW;
                break;
            default:
                gaugePosition = PARTY_GAUGE_POSITION_MIDDLE;
                break;
            }
        }

        PartyGauge *gauge = PartyGauge_Show(gaugeTask->status, side, showType, gaugePosition, BattleSystem_GetSpriteSystem(gaugeTask->battleSys), BattleSystem_GetSpriteManager(gaugeTask->battleSys));
        BattleSystem_SetPartyGauge(gaugeTask->battleSys, side, gauge);
    }
        gaugeTask->state++;
        break;
    case 1:
        if (PartyGauge_ShowIsDone(BattleSystem_GetPartyGauge(gaugeTask->battleSys, side)) == TRUE) {
            gaugeTask->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(gaugeTask->battleSys, gaugeTask->battler, gaugeTask->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_HidePartyGauge(SysTask *task, void *data)
{
    PartyGaugeTask *gaugeTask = (PartyGaugeTask *)data;
    enum PartyGaugeSide side;
    enum HideArrowType hideArrowType;
    enum HidePartyGaugeType hideGaugeType;

    if (BattleSystem_GetBattlerSide(gaugeTask->battleSys, gaugeTask->battler) == BATTLER_US) {
        side = PARTY_GAUGE_OURS;
    } else {
        side = PARTY_GAUGE_THEIRS;
    }

    PartyGauge *gauge = BattleSystem_GetPartyGauge(gaugeTask->battleSys, side);

    switch (gaugeTask->state) {
    case 0:
        if (gaugeTask->midBattle == FALSE) {
            hideArrowType = HIDE_ARROW_FADE_AND_SCROLL;
            hideGaugeType = HIDE_PARTY_GAUGE_BATTLE_START;
        } else {
            hideArrowType = HIDE_ARROW_FADE_IN_PLACE;
            hideGaugeType = HIDE_PARTY_GAUGE_MID_BATTLE;
        }

        PartyGauge_Hide(gauge, hideArrowType, hideGaugeType);
        gaugeTask->state++;
        break;
    case 1:
        if (PartyGauge_HideIsDone(gauge) == TRUE) {
            PartyGauge_Free(gauge);
            BattleSystem_SetPartyGauge(gaugeTask->battleSys, side, NULL);
            gaugeTask->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(gaugeTask->battleSys, gaugeTask->battler, gaugeTask->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_SpriteToOAM(SysTask *task, void *data)
{
    SpriteToOAMData *spriteToOAMData = data;

    switch (spriteToOAMData->state) {
    case 0:
        GF_ASSERT(spriteToOAMData->battlerData->unk_88 == NULL);
        spriteToOAMData->battlerData->unk_88 = ov12_022234F8(spriteToOAMData->battleSys, HEAP_ID_BATTLE, spriteToOAMData->battler);
        spriteToOAMData->state++;
        break;
    default:
        BattleController_EmitClearCommand(spriteToOAMData->battleSys, spriteToOAMData->battler, spriteToOAMData->command);
        Heap_Free(data);
        SysTask_Done(task);
        break;
    }
}

static void Task_OAMToSprite(SysTask *task, void *data)
{
    OAMToSpriteData *oamToSpriteData = data;

    GF_ASSERT(oamToSpriteData->battlerData->unk_88 != NULL);

    if (ov12_022237D8(oamToSpriteData->battlerData->unk_88) == 3) {
        if (oamToSpriteData->delay < 5) {
            oamToSpriteData->delay++;
            return;
        }
    }

    ov12_022237A4(oamToSpriteData->battlerData->unk_88, oamToSpriteData->battler);
    oamToSpriteData->battlerData->unk_88 = NULL;
    BattleController_EmitClearCommand(oamToSpriteData->battleSys, oamToSpriteData->battler, oamToSpriteData->command);

    Heap_Free(data);
    SysTask_Done(task);
}

void BattlerData_SetTaskFuncs(BattleSystem *battleSys, BattlerData *battlerData)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    u32 battleStatusMask = BattleSystem_GetBattleStatusMask(battleSys);

    if (battleType & BATTLE_TYPE_AI) {
        if (battlerData->battler) {
            battlerData->taskFuncs.setCommandSelection = &Task_TrainerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_TrainerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_TrainerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_TrainerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_TrainerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_TrainerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            if (battleStatusMask & BATTLE_STATUS_RECORDING) {
                battlerData->taskFuncs.setCommandSelection = &Task_RecordingSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &Task_RecordingShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &Task_RecordingShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &Task_RecordingShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &Task_RecordingShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &Task_RecordingShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            } else {
                battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &Task_PlayerShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &Task_PlayerShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &Task_PlayerShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &Task_PlayerShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &Task_PlayerShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            }
        }
    } else if ((battleType & (BATTLE_TYPE_2vs2 | BATTLE_TYPE_FRONTIER)) == (BATTLE_TYPE_2vs2 | BATTLE_TYPE_FRONTIER)) {
        if (battlerData->battlerType & BATTLER_THEM) {
            if (ov16_0223ED60(battleSys)) {
                battlerData->taskFuncs.setCommandSelection = &Task_TrainerSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &Task_TrainerShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &Task_TrainerShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &Task_TrainerShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &Task_TrainerShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &Task_TrainerShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_AI;
            } else {
                battlerData->taskFuncs.setCommandSelection = &Task_LinkSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &Task_LinkShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &Task_LinkShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &Task_LinkShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &Task_LinkShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &Task_LinkShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_LINK;
            }
        } else if (battleStatusMask & BATTLE_STATUS_RECORDING) {
            battlerData->taskFuncs.setCommandSelection = &Task_RecordingSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_RecordingShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_RecordingShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_RecordingShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_RecordingShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_RecordingShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        } else if (battlerData->battlerType != BattleSystem_GetBattlerType(battleSys, BattleSystem_GetNetworkID(battleSys) * 2)) {
            battlerData->taskFuncs.setCommandSelection = &Task_LinkSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_LinkShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_LinkShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_LinkShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_LinkShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_LinkShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_LINK;
        } else {
            battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_PlayerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_PlayerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_PlayerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_PlayerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_2vs2) {
        if (battleStatusMask & BATTLE_STATUS_RECORDING) {
            battlerData->taskFuncs.setCommandSelection = &Task_RecordingSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_RecordingShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_RecordingShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_RecordingShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_RecordingShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_RecordingShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        } else if (battlerData->battlerType != BattleSystem_GetBattlerType(battleSys, BattleSystem_GetNetworkID(battleSys))) {
            battlerData->taskFuncs.setCommandSelection = &Task_LinkSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_LinkShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_LinkShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_LinkShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_LinkShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_LinkShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_LINK;
        } else {
            battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_PlayerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_PlayerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_PlayerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_PlayerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_LINK) {
        if (battleStatusMask & BATTLE_STATUS_RECORDING) {
            battlerData->taskFuncs.setCommandSelection = &Task_RecordingSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_RecordingShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_RecordingShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_RecordingShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_RecordingShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_RecordingShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        } else if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &Task_LinkSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_LinkShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_LinkShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_LinkShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_LinkShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_LinkShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_LINK;
        } else {
            battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_PlayerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_PlayerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_PlayerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_PlayerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_PAL_PARK) {
        if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &Task_PalParkPokemonSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = NULL;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = NULL;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_SAFARI) {
        if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &Task_SafariPokemonSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = NULL;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = &Task_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else {
        if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &Task_TrainerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &Task_TrainerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &Task_TrainerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &Task_TrainerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &Task_TrainerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &Task_TrainerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            if (battleStatusMask & BATTLE_STATUS_RECORDING) {
                battlerData->taskFuncs.setCommandSelection = &Task_RecordingSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &Task_RecordingShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &Task_RecordingShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &Task_RecordingShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &Task_RecordingShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &Task_RecordingShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            } else {
                battlerData->taskFuncs.setCommandSelection = &Task_PlayerSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &Task_PlayerShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &Task_PlayerShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &Task_PlayerShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &Task_PlayerShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &Task_PlayerShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            }
        }
    }
}

u8 BattlerData_GetBattlerType(BattlerData *battlerData)
{
    return battlerData->battlerType;
}

u8 BattlerData_GetBootState(BattlerData *battlerData)
{
    return battlerData->bootState;
}

PokemonSprite *BattlerData_GetPokemonSprite(BattlerData *battlerData)
{
    if (battlerData->monSprite) {
        return battlerData->monSprite;
    } else {
        return battlerData->monSpriteBackup;
    }
}

HealthBox *BattlerData_GetHealthBox(BattlerData *battlerData)
{
    return &battlerData->healthbox;
}

UnkStruct_ov16_0226C378 *ov16_02263B0C(BattlerData *battlerData)
{
    return &battlerData->unk_7B;
}

void ov16_02263B10(BattlerData *battlerData)
{
    MI_CpuClear8(&battlerData->unk_7B, sizeof(UnkStruct_ov16_0226C378));
}

void ov16_02263B20(BattlerData *battlerData, BOOL draw)
{
    if (battlerData->managedSprite == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(battlerData->managedSprite, draw);
}

static PokemonSprite *BattleDisplay_NewPokemonSprite(BattleSystem *battleSys, PokemonSpriteManager *monSpriteMan, PokemonSpriteTemplate *spriteTemplate, int x, int y, int z, int yOffset, int height, int xOffset, int shadowSize, int battler, SpriteAnimFrame *animFrames, PokemonSpriteCallback *callback)
{
    PokemonSprite *monSprite;
    u8 *tiles = PokemonSpriteData_GetTiles(BattleSystem_GetPokemonSpriteData(battleSys), battler);
    int battlerType = BattleSystem_GetBattlerType(battleSys, battler);
    int face;

    if (battlerType & BATTLER_THEM) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    CharacterSprite_LoadPokemonSprite(spriteTemplate->narcID, spriteTemplate->character, HEAP_ID_BATTLE, tiles, spriteTemplate->personality, FALSE, face, spriteTemplate->spindaSpots);
    PokemonSpriteData_SetNarcID(BattleSystem_GetPokemonSpriteData(battleSys), battler, spriteTemplate->narcID);
    PokemonSpriteData_SetPalette(BattleSystem_GetPokemonSpriteData(battleSys), battler, spriteTemplate->palette);
    PokemonSpriteData_SetYOffset(BattleSystem_GetPokemonSpriteData(battleSys), battler, yOffset);

    monSprite = PokemonSpriteManager_CreateSpriteAtIndex(monSpriteMan, spriteTemplate, x, y + yOffset, z, battler, battler, animFrames, callback);

    if (battlerType & BATTLER_THEM) {
        if (battlerType > BATTLER_TYPE_SOLO_ENEMY) {
            battlerType = battlerType >> 1;
        }

        PokemonSprite_SetAttribute(monSprite, MON_SPRITE_SHADOW_PLTT_SLOT, battlerType);
        PokemonSprite_SetAttribute(monSprite, MON_SPRITE_SHADOW_SIZE, shadowSize);
        PokemonSprite_SetAttribute(monSprite, MON_SPRITE_SHADOW_Y, y + 36);
        PokemonSprite_SetAttribute(monSprite, MON_SPRITE_SHADOW_X_OFFSET, xOffset);
        PokemonSprite_SetAttribute(monSprite, MON_SPRITE_SHADOW_Y_OFFSET, 36 - yOffset);
        PokemonSprite_SetAttribute(monSprite, MON_SPRITE_SHADOW_HEIGHT, height);
    }

    return monSprite;
}

static void LoadRecallMessage(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message, BattleMessage *battleMsg)
{
    if (battlerData->battlerType & BATTLER_THEM) {
        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) {
            battleMsg->id = BattleStrings_Text_LinkTrWithdrewPokemon;
            battleMsg->tags = TAG_TRNAME_NICKNAME;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler | (message->partySlot << 8);
        } else {
            battleMsg->id = BattleStrings_Text_TrWithdrewPokemon;
            battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler;
            battleMsg->params[2] = battlerData->battler | (message->partySlot << 8);
        }
    } else {
        if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_DOUBLES) == FALSE && (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
            if (message->hpPercent == 0) {
                battleMsg->id = BattleStrings_Text_PokemonSwitchOutComeBack;
            } else if (message->hpPercent < 25) {
                battleMsg->id = BattleStrings_Text_PokemonComeBack;
            } else if (message->hpPercent < 50) {
                battleMsg->id = BattleStrings_Text_PokemonGoodComeBack;
            } else if (message->hpPercent < 75) {
                battleMsg->id = BattleStrings_Text_PokemonOKComeBack;
            } else {
                battleMsg->id = BattleStrings_Text_PokemonEnoughGetBack;
            }
        } else {
            battleMsg->id = BattleStrings_Text_PokemonComeBack;
        }

        battleMsg->tags = TAG_NICKNAME;
        battleMsg->params[0] = battlerData->battler | (message->partySlot << 8);
    }
}

static void LoadSendOutMessage(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message, BattleMessage *battleMsg)
{
    if (battlerData->battlerType & BATTLER_THEM) {
        if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
            battleMsg->id = BattleStrings_Text_TrSentOutPokemon;
            battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler;
            battleMsg->params[2] = battlerData->battler | (message->partySlot << 8);
        } else {
            battleMsg->id = BattleStrings_Text_LinkTrSentOutPokemon;
            battleMsg->tags = TAG_TRNAME_NICKNAME;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler | (message->partySlot << 8);
        }
    } else {
        if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_DOUBLES) == FALSE && (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
            if (message->hpPercent < 100) {
                battleMsg->id = BattleStrings_Text_YourFoesWeakGetEmPokemon;
            } else if (message->hpPercent < 325) {
                battleMsg->id = BattleStrings_Text_JustALittleMoreHangInTherePokemon;
            } else if (message->hpPercent < 550) {
                battleMsg->id = BattleStrings_Text_GoForItPokemon;
            } else if (message->hpPercent < 775) {
                battleMsg->id = BattleStrings_Text_YoureInChargePokemon;
            } else {
                battleMsg->id = BattleStrings_Text_GoPokemon;
            }
        } else {
            battleMsg->id = BattleStrings_Text_GoPokemon;
        }

        battleMsg->tags = TAG_NICKNAME;
        battleMsg->params[0] = battlerData->battler | (message->partySlot << 8);
    }
}

static void LoadBattleStartMessage(BattleSystem *battleSys, BattlerData *unused, BattleMessage *battleMsg)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    int battler1;
    int battler2;

    if (battleType & BATTLE_TYPE_DOUBLES) {
        battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        battler2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
    } else {
        battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        battler2 = battler1;
    }

    if (battleType & BATTLE_TYPE_LINK) {
        if (battleType & BATTLE_TYPE_FRONTIER) {
            battleMsg->id = BattleStrings_Text_YouAreChallengedByTr1AndTr2;
            battleMsg->tags = TAG_TRCLASS_TRNAME_TRCLASS_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler1;
            battleMsg->params[2] = battler2;
            battleMsg->params[3] = battler2;
        } else if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = BattleStrings_Text_YouAreChallengedByLinkTr1AndLinkTr2;
            battleMsg->tags = TAG_TRNAME_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler2;
        } else {
            battleMsg->id = BattleStrings_Text_YouAreChallengedByLinkTr;
            battleMsg->tags = TAG_TRNAME;
            battleMsg->params[0] = battler1;
        }
    } else {
        if (battleType & BATTLE_TYPE_TAG || battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = BattleStrings_Text_YouAreChallengedByTr1AndTr2;
            battleMsg->tags = TAG_TRCLASS_TRNAME_TRCLASS_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler1;
            battleMsg->params[2] = battler2;
            battleMsg->params[3] = battler2;
        } else {
            battleMsg->id = BattleStrings_Text_YouAreChallengedByTr;
            battleMsg->tags = TAG_TRCLASS_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler1;
        }
    }
}

static void LoadLeadMonMessage(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message, BattleMessage *battleMsg)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    int battler1;
    int battler2;

    if (battlerData->battlerType & BATTLER_THEM) {
        if (battleType & BATTLE_TYPE_DOUBLES) {
            battler1 = battlerData->battler;
            battler2 = BattleSystem_GetPartner(battleSys, battlerData->battler);
        } else {
            battler1 = battlerData->battler;
            battler2 = battler1;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            if (battleType & BATTLE_TYPE_FRONTIER) {
                battleMsg->id = BattleStrings_Text_Tr1SentOutPokemon1Tr2SentOutPokemon2;
                battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1;
                battleMsg->params[2] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[3] = battler2;
                battleMsg->params[4] = battler2;
                battleMsg->params[5] = battler2 | (message->partySlot[battler2] << 8);
            } else if (battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = BattleStrings_Text_LinkTr1SentOutPokemon1LinkTr2SentOutPokemon2;
                battleMsg->tags = TAG_TRNAME_NICKNAME_TRNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[2] = battler2;
                battleMsg->params[3] = battler2 | (message->partySlot[battler2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = BattleStrings_Text_LinkTrSentOutPokemon1AndPokemon2;
                battleMsg->tags = TAG_TRNAME_NICKNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[2] = battler2 | (message->partySlot[battler2] << 8);
            } else {
                battleMsg->id = BattleStrings_Text_LinkTrSentOutPokemon;
                battleMsg->tags = TAG_TRNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1 | (message->partySlot[battler1] << 8);
            }
        } else {
            if (battleType & BATTLE_TYPE_TAG || battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = BattleStrings_Text_Tr1SentOutPokemon1Tr2SentOutPokemon2;
                battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1;
                battleMsg->params[2] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[3] = battler2;
                battleMsg->params[4] = battler2;
                battleMsg->params[5] = battler2 | (message->partySlot[battler2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = BattleStrings_Text_TrSentOutPokemon1AndPokemon2;
                battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1;
                battleMsg->params[2] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[3] = battler2 | (message->partySlot[battler2] << 8);
            } else {
                battleMsg->id = BattleStrings_Text_TrSentOutPokemon;
                battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1;
                battleMsg->params[2] = battler1 | (message->partySlot[battler1] << 8);
            }
        }
    } else {
        if (battleType & BATTLE_TYPE_LINK) {
            u8 networkID = BattleSystem_GetNetworkID(battleSys);

            if (battleType & BATTLE_TYPE_2vs2) {
                switch (ov16_0223F6F0(battleSys, networkID)) {
                case 0:
                case 3:
                    battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                    battler2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                    break;
                case 1:
                case 2:
                    battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                    battler2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                    break;
                }
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                battler2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
            } else {
                battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_PLAYER);
                battler2 = battler1;
            }
        } else if (battleType & BATTLE_TYPE_2vs2) {
            battler1 = BattleSystem_GetPartner(battleSys, battlerData->battler);
            battler2 = battlerData->battler;
        } else if (battleType & BATTLE_TYPE_DOUBLES) {
            battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
            battler2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            battler1 = battlerData->battler;
            battler2 = battler1;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            if (battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = BattleStrings_Text_LinkTrSentOutPokemon1GoPokemon2;
                battleMsg->tags = TAG_TRNAME_NICKNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[2] = battler2 | (message->partySlot[battler2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = BattleStrings_Text_GoPokemon1AndPokemon2;
                battleMsg->tags = TAG_NICKNAME_NICKNAME;
                battleMsg->params[0] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[1] = battler2 | (message->partySlot[battler2] << 8);
            } else {
                battleMsg->id = BattleStrings_Text_GoPokemon;
                battleMsg->tags = TAG_NICKNAME;
                battleMsg->params[0] = battler1 | (message->partySlot[battler1] << 8);
            }
        } else {
            if (battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = BattleStrings_Text_TrSentOutPokemon1GoPokemon2;
                battleMsg->tags = TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME;
                battleMsg->params[0] = battler1;
                battleMsg->params[1] = battler1;
                battleMsg->params[2] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[3] = battler2 | (message->partySlot[battler2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = BattleStrings_Text_GoPokemon1AndPokemon2;
                battleMsg->tags = TAG_NICKNAME_NICKNAME;
                battleMsg->params[0] = battler1 | (message->partySlot[battler1] << 8);
                battleMsg->params[1] = battler2 | (message->partySlot[battler2] << 8);
            } else {
                battleMsg->id = BattleStrings_Text_GoPokemon;
                battleMsg->tags = TAG_NICKNAME;
                battleMsg->params[0] = battler1 | (message->partySlot[battler1] << 8);
            }
        }
    }
}

static void LoadResultMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    int battler1;
    int battler2;
    int battleResultMask = BattleSystem_GetResultMask(battleSys);

    if (battleType & BATTLE_TYPE_DOUBLES) {
        battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        battler2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
    } else {
        battler1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        battler2 = battler1;
    }

    switch (battleResultMask) {
    case BATTLE_RESULT_WIN:
        if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = BattleStrings_Text_PlayerDefeatedLinkTr1AndLinkTr2;
            battleMsg->tags = TAG_TRNAME_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler2;
        } else {
            battleMsg->id = BattleStrings_Text_PlayerDefeatedLinkTr;
            battleMsg->tags = TAG_TRNAME;
            battleMsg->params[0] = battler1;
        }
        break;
    case BATTLE_RESULT_LOSE:
        if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = BattleStrings_Text_PlayerLostAgainstLinkTr1AndLinkTr2;
            battleMsg->tags = TAG_TRNAME_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler2;
        } else {
            battleMsg->id = BattleStrings_Text_PlayerLostAgainstLinkTr;
            battleMsg->tags = TAG_TRNAME;
            battleMsg->params[0] = battler1;
        }
        break;
    case BATTLE_RESULT_DRAW:
        if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = BattleStrings_Text_PlayerDrewAgainstLinkTr1AndLinkTr2;
            battleMsg->tags = TAG_TRNAME_TRNAME;
            battleMsg->params[0] = battler1;
            battleMsg->params[1] = battler2;
        } else {
            battleMsg->id = BattleStrings_Text_PlayerDrewAgainstLinkTr;
            battleMsg->tags = TAG_TRNAME;
            battleMsg->params[0] = battler1;
        }
        break;
    }
}

static void LoadEscapeMessage(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message, BattleMessage *battleMsg)
{
    int playerMonCount = 0;
    int enemyMonCount = 0;

    for (int i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        if (message->unk_01 & FlagIndex(i)) {
            if (BattleSystem_GetBattlerSide(battleSys, i)) {
                enemyMonCount++;
            } else {
                playerMonCount++;
            }
        }
    }

    if (playerMonCount && enemyMonCount) {
        battleMsg->id = BattleStrings_Text_GotAwaySafely;
        battleMsg->tags = TAG_NONE;
        BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_DRAW | BATTLE_RESULT_TRY_FLEE | BATTLE_RESULT_TRY_FLEE_WAIT);
    } else if (playerMonCount) {
        battleMsg->id = BattleStrings_Text_GotAwaySafely;
        battleMsg->tags = TAG_NONE;
        BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_LOSE | BATTLE_RESULT_TRY_FLEE | BATTLE_RESULT_TRY_FLEE_WAIT);
    } else {
        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_2vs2) {
            battleMsg->id = BattleStrings_Text_LinkTr1AndLinkTr2Fled;
            battleMsg->tags = TAG_TRNAME_TRNAME;
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
            battleMsg->params[1] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        } else if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
            battleMsg->id = BattleStrings_Text_LinkTrFled;
            battleMsg->tags = TAG_TRNAME;
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        } else {
            battleMsg->id = BattleStrings_Text_LinkTrFled;
            battleMsg->tags = TAG_TRNAME;
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        }

        BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_WIN | BATTLE_RESULT_TRY_FLEE | BATTLE_RESULT_TRY_FLEE_WAIT);
    }
}

static void LoadForfeitMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    battleMsg->id = BattleStrings_Text_PlayerForfeitedTheMatch;
    battleMsg->tags = TAG_TRNAME;

    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) {
        if (ov16_0223F6F0(battleSys, BattleSystem_GetNetworkID(battleSys))) {
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
        }
    } else {
        battleMsg->params[0] = battlerData->battler;
    }

    BattleSystem_SetResultMask(battleSys, BATTLE_RESULT_LOSE | BATTLE_RESULT_TRY_FLEE | BATTLE_RESULT_TRY_FLEE_WAIT);
}

static ManagedSprite *BattleDisplay_NewManagedSpriteTrainer(BattleSystem *battleSys, int side, int trainerClass, int battlerType, s16 x, s16 y)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(battleSys);
    int face;

    if (side & BATTLER_THEM) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    ManagedSprite *managedSprite = SpriteSystem_NewManagedSpriteTrainer(spriteSys, spriteMan, paletteData, x, y, trainerClass, face, battlerType, HEAP_ID_BATTLE);

    return managedSprite;
}

static void ov16_02264408(BattleSystem *battleSys, BattlerData *battlerData, BattleAnimSystem *battleAnimSystem, MoveAnimation *animation)
{
    BattleAnimBattlerContext battlerContext;
    int move;

    if (animation->unk_4C == 0) {
        battlerContext.moveArcID = 8;
        move = animation->move;
    } else {
        battlerContext.moveArcID = 63;
        move = animation->unk_50;
    }

    battlerContext.bgConfig = BattleSystem_GetBgConfig(battleSys);
    battlerContext.paletteData = BattleSystem_GetPaletteData(battleSys);
    battlerContext.spriteSystem = BattleSystem_GetSpriteSystem(battleSys);

    for (int i = 0; i < MAX_BATTLERS; i++) {
        battlerContext.pokemonSpriteData[i] = BattleSystem_GetPokemonSpriteDataByIndex(battleSys, i);
        battlerContext.battlerSpecies[i] = animation->species[i];
        battlerContext.battlerGenders[i] = animation->genders[i];
        battlerContext.battlerShinyFlags[i] = animation->isShiny[i];
        battlerContext.battlerForms[i] = animation->formNums[i];
        battlerContext.battlerPersonalities[i] = animation->personalities[i];
        battlerContext.battlerMoveEffects[i] = animation->moveEffectMasks[i];
    }

    BattleSystem_SetBattlerTypes(battleSys, &(battlerContext.battlerTypes[0]));
    ov16_0223F8AC(battleSys, &(battlerContext.pokemonSprites[0]));

    battlerContext.battleType = BattleSystem_GetBattleType(battleSys);
    battlerContext.chatotCry = BattleSystem_GetChatotCry(battleSys, battlerData->battler);
    battlerContext.bgTiles = ov16_0223F1E8(battleSys);
    battlerContext.bgPaletteBuffer = ov16_0223F1F0(battleSys);
    battlerContext.battleBgRef.narcID = 7;
    battlerContext.battleBgRef.tilesNarcMemberIdx = 3 + BattleSystem_GetBackground(battleSys);
    battlerContext.battleBgRef.paletteNarcMemberIdx = 172 + BattleSystem_GetBackground(battleSys) * 3 + BattleSystem_GetBackgroundTimeOffset(battleSys);
    battlerContext.battleBgRef.tilemapNarcMemberIdx = 2;
    battlerContext.battleBgRef.paletteDestStart = 0;
    battlerContext.battleBgRef.paletteSrcSize = 8;

    BattleAnimSystem_StartMove(battleAnimSystem, animation, move, &battlerContext);
}

static void ov16_02264530(BattleSystem *battleSys, MoveAnimation *animation, UnkStruct_ov12_022380DC *param2, int param3)
{
    param2->unk_00 = param3;
    param2->unk_04 = param3;

    for (int i = 0; i < MAX_BATTLERS; i++) {
        param2->pokemonSpriteData[i] = BattleSystem_GetPokemonSpriteDataByIndex(battleSys, i);
        param2->species[i] = animation->species[i];
        param2->genders[i] = animation->genders[i];
        param2->shinyFlags[i] = animation->isShiny[i];
        param2->forms[i] = animation->formNums[i];
        param2->personalities[i] = animation->personalities[i];
    }

    BattleSystem_SetBattlerTypes(battleSys, &(param2->types[0]));
    ov16_0223F8AC(battleSys, &(param2->sprites[0]));
}

static void ov16_022645B8(u8 *param0, u8 *param1, int param2, int param3, u16 param4)
{
    if (param2 == 0) {
        if ((MoveTable_LoadParam(param4, MOVEATTRIBUTE_FLAGS) & 0x40) == 0) {
            param0[0] = 1;
        } else {
            param0[0] = 0;
        }

        if (MoveTable_LoadParam(param4, MOVEATTRIBUTE_FLAGS) & 0x80) {
            param1[0] = 1;
        } else {
            param1[0] = 0;
        }
    } else {
        switch (param3) {
        case 18:
        case 19:
        case 20:
        case 22:
        case 21:
        case 31:
        case 32:
        case 34:
        case 35:
        case 37:
        case 39:
            param0[0] = 1;
            param1[0] = 0;
            break;
        case 36:
        case 38:
            param0[0] = 1;
            param1[0] = 1;
            break;
        default:
            param0[0] = 0;
            param1[0] = 0;
            break;
        }
    }
}

static BOOL ov16_02264650(TrainerEncounterData *trainerEncounterData, ManagedSprite *unused)
{
    UnkStruct_ov16_02264650 *v0;
    BOOL v2 = 0;
    int userAttr = ManagedSprite_GetUserAttrForCurrentAnimFrame(trainerEncounterData->managedSprite);

    switch (userAttr) {
    case 1:
        if (trainerEncounterData->unk_12_0 == 0) {
            trainerEncounterData->unk_12_0 = 1;
            v0 = (UnkStruct_ov16_02264650 *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_02264650));
            v0->unk_00 = 0;
            v0->unk_04 = 0;

            SysTask_Start(ov16_022646C8, v0, 0);
        }

        break;
    case 4095:
        v2 = 1;
        break;
    default:
        if ((userAttr & 0xF00) == 0x100 && userAttr & 0xFF) {
            ManagedSprite_SetAnimationFrame(trainerEncounterData->managedSprite, 0);
            ManagedSprite_SetAnim(trainerEncounterData->managedSprite, (userAttr & 0xFF) - 1);
            v2 = 1;
        }

        break;
    }

    return v2;
}

static void ov16_022646C8(SysTask *task, void *data)
{
    UnkStruct_ov16_02264650 *v0 = (UnkStruct_ov16_02264650 *)data;

    switch (v0->unk_00) {
    case 0:
        BrightnessController_StartTransition(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xFFFF), BRIGHTNESS_MAIN_SCREEN);
        v0->unk_00++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
            BrightnessController_StartTransition(4, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xFFFF), BRIGHTNESS_MAIN_SCREEN);
            v0->unk_00++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
            Heap_Free(data);
            SysTask_Done(task);
        }
        break;
    }
}

static void ov16_02264730(BattleSystem *battleSys)
{
    BattleSystem_SetStopRecording(battleSys, 1);
    BattleSystem_IsRecordingStopped(battleSys, BattleSystem_GetBattleContext(battleSys));
}

static void ov16_0226474C(BattleSystem *battleSys)
{
    BattleSystem_SetStopRecording(battleSys, 2);
    BattleSystem_IsRecordingStopped(battleSys, BattleSystem_GetBattleContext(battleSys));
}

static u8 ov16_02264768(BattleSystem *battleSys, u8 battler, u8 trainerClass)
{
    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) {
        if (TrainerInfo_GameCode(BattleSystem_GetTrainerInfo(battleSys, battler)) == 0 && trainerClass <= TRAINER_CLASS_PLAYER_FEMALE) {
            trainerClass += TRAINER_CLASS_DP_PLAYER_MALE_2;
        }
    }

    return trainerClass;
}

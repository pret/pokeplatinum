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

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"
#include "struct_defs/move_animation.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/trainer.h"

#include "battle/battle_anim_battler_context.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_cursor.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/battle_system.h"
#include "battle/common.h"
#include "battle/healthbar.h"
#include "battle/message_defs.h"
#include "battle/move_display_info.h"
#include "battle/ov16_0223B140.h"
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

static void SysTask_SetEncounter(SysTask *task, void *param1);
static void ov16_0225E894(SysTask *task, void *param1);
static void SysTask_ShowEncounter(SysTask *task, void *param1);
static void SysTask_ShowPokemon(SysTask *task, void *param1);
static void SysTask_ReturnPokemon(SysTask *task, void *param1);
static void SysTask_OpenCaptureBall(SysTask *task, void *param1);
static void SysTask_SetTrainerEncounter(SysTask *task, void *param1);
static void SysTask_ThrowTrainerBall(SysTask *task, void *param1);
static void SysTask_SlideTrainerIn(SysTask *task, void *param1);
static void SysTask_SlideTrainerOut(SysTask *task, void *param1);
static void SysTask_SlideHealthbarIn(SysTask *task, void *data);
static void SysTask_SlideHealthbarOut(SysTask *task, void *data);
static void SysTask_PlayerSetCommandSelection(SysTask *task, void *param1);
static void SysTask_TrainerSetCommandSelection(SysTask *task, void *param1);
static void SysTask_LinkSetCommandSelection(SysTask *task, void *param1);
static void SysTask_SafariPokemonSetCommandSelection(SysTask *task, void *param1);
static void SysTask_PalParkPokemonSetCommandSelection(SysTask *task, void *param1);
static void SysTask_RecordingSetCommandSelection(SysTask *task, void *param1);
static void SysTask_PlayerShowMoveSelectMenu(SysTask *task, void *param1);
static void SysTask_TrainerShowMoveSelectMenu(SysTask *task, void *param1);
static void SysTask_LinkShowMoveSelectMenu(SysTask *task, void *param1);
static void SysTask_RecordingShowMoveSelectMenu(SysTask *task, void *param1);
static void SysTask_PlayerShowTargetSelectMenu(SysTask *task, void *param1);
static void SysTask_TrainerShowTargetSelectMenu(SysTask *task, void *param1);
static void SysTask_LinkShowTargetSelectMenu(SysTask *task, void *param1);
static void SysTask_RecordingShowTargetSelectMenu(SysTask *task, void *param1);
static void SysTask_PlayerShowBagMenu(SysTask *task, void *param1);
static void SysTask_TrainerShowBagMenu(SysTask *task, void *param1);
static void SysTask_LinkShowBagMenu(SysTask *task, void *param1);
static void SysTask_RecordingShowBagMenu(SysTask *task, void *param1);
static void SysTask_PlayerShowPartyMenu(SysTask *task, void *param1);
static void SysTask_TrainerShowPartyMenu(SysTask *task, void *param1);
static void SysTask_LinkShowPartyMenu(SysTask *task, void *param1);
static void SysTask_RecordingShowPartyMenu(SysTask *task, void *param1);
static void SysTask_PlayerShowYesNoMenu(SysTask *task, void *param1);
static void SysTask_TrainerShowYesNoMenu(SysTask *task, void *param1);
static void SysTask_LinkShowYesNoMenu(SysTask *task, void *param1);
static void SysTask_RecordingShowYesNoMenu(SysTask *task, void *param1);
static void SysTask_SetMoveAnimation(SysTask *task, void *param1);
static void SysTask_FlickerBattler(SysTask *task, void *param1);
static void SysTask_UpdateHPGauge(SysTask *task, void *param1);
static void SysTask_UpdateExpGauge(SysTask *task, void *param1);
static void SysTask_PlayFaintingSequence(SysTask *task, void *param1);
static void SysTask_FadeOut(SysTask *task, void *param1);
static void SysTask_ToggleVanish(SysTask *task, void *param1);
static void SysTask_PlayLevelUpAnimation(SysTask *task, void *param1);
static void SysTask_WaitForBattleMessagePrint(SysTask *task, void *data);
static void SysTask_WaitForAlertMessagePrint(SysTask *task, void *param1);
static void ov16_02263014(SysTask *task, void *param1);
static void SysTask_ForgetMove(SysTask *task, void *param1);
static void SysTask_SetMosaic(SysTask *task, void *param1);
static void SysTask_ShowPartyGauge(SysTask *task, void *param1);
static void SysTask_HidePartyGauge(SysTask *task, void *param1);
static void SysTask_SpriteToOAM(SysTask *task, void *param1);
static void SysTask_OAMToSprite(SysTask *task, void *param1);
static PokemonSprite *ov16_02263B30(BattleSystem *battleSys, PokemonSpriteManager *param1, PokemonSpriteTemplate *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, SpriteAnimFrame *param11, PokemonSpriteCallback *param12);
static void ov16_02263C1C(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message, BattleMessage *battleMsg);
static void ov16_02263CF0(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message, BattleMessage *battleMsg);
static void ov16_02263DD0(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
static void ov16_02263E7C(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message, BattleMessage *battleMsg);
static void ov16_022641B4(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
static void ov16_02264270(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message, BattleMessage *battleMsg);
static void ov16_02264360(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
static ManagedSprite *BattleDisplay_NewManagedSpriteTrainer(BattleSystem *battleSys, int side, int trainerType, int battlerType, s16 x, s16 y);
static void ov16_02264408(BattleSystem *battleSys, BattlerData *battlerData, BattleAnimSystem *param2, MoveAnimation *param3);
static void ov16_02264530(BattleSystem *battleSys, MoveAnimation *param1, UnkStruct_ov12_022380DC *param2, int param3);
static void ov16_022645B8(u8 *param0, u8 *param1, int param2, int param3, u16 param4);
static BOOL ov16_02264650(TrainerEncounterData *param0, ManagedSprite *param1);
static void ov16_022646C8(SysTask *task, void *param1);
static void ov16_02264730(BattleSystem *battleSys);
static void ov16_0226474C(BattleSystem *battleSys);
static u8 ov16_02264768(BattleSystem *battleSys, u8 param1, u8 param2);

static const u16 fadeColors[] = {
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
    int isShiny;
    u8 formNum;
    u8 padding_2D[3];
} MonEncounterData;

void BattleDisplay_InitTaskSetEncounter(BattleSystem *battleSys, BattlerData *battlerData, MonEncounterMessage *message)
{
    int isShiny;
    PokemonSpriteTemplate spriteTemplate;
    PokemonSpriteManager *spriteMan = BattleSystem_GetPokemonSpriteManager(battleSys);
    SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];
    MonEncounterData *monEncounterData;
    int battleType = BattleSystem_GetBattleType(battleSys);
    u8 yOffset;
    s8 height;
    s8 shadowXOffset;
    u8 shadowSize;

    monEncounterData = (MonEncounterData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonEncounterData));

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

    if (message->isShiny) {
        isShiny = 1;
    } else {
        isShiny = 0;
    }

    BuildPokemonSpriteTemplate(&spriteTemplate, message->species, message->gender, monEncounterData->face, isShiny, message->formNum, message->personality);

    yOffset = LoadPokemonSpriteYOffset(message->species, message->gender, monEncounterData->face, message->formNum, message->personality);

    PokemonSprite_LoadYOffset(battlerData->narc, &height, message->species);
    PokemonSprite_LoadXOffsetShadow(battlerData->narc, &shadowXOffset, message->species);
    PokemonSprite_LoadShadowSize(battlerData->narc, &shadowSize, message->species);
    PokemonSprite_LoadAnimFrames(battlerData->narc, &animFrames[0], message->species, battlerData->battlerType);

    monEncounterData->sprite = battlerData->monSprite = ov16_02263B30(battleSys, spriteMan, &spriteTemplate, gEncounterCoords[battlerData->battlerType][0], gEncounterCoords[battlerData->battlerType][1], gEncounterCoords[battlerData->battlerType][2], yOffset, height, shadowXOffset, shadowSize, battlerData->battler, &animFrames[0], NULL);

    if (monEncounterData->face == FACE_FRONT) {
        PokemonSprite_StartFade(monEncounterData->sprite, 8, 8, 0, 0x0);
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
        SysTask_Start(ov16_0225E894, monEncounterData, 0);
    } else {
        SysTask_Start(SysTask_SetEncounter, monEncounterData, 0);
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
    int isShiny;
    MonShowData *monShowData;
    int battleType = BattleSystem_GetBattleType(battleSys);
    monShowData = (MonShowData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonShowData));

    if (battlerData->battlerType & BATTLER_THEM) {
        monShowData->face = FACE_FRONT;
    } else {
        monShowData->face = FACE_BACK;
    }

    if (message->isShiny) {
        isShiny = 1;
    } else {
        isShiny = 0;
    }

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
    SysTask_Start(SysTask_ShowEncounter, monShowData, 0);
}

void BattleDisplay_InitTaskShowPokemon(BattleSystem *battleSys, BattlerData *battlerData, MonShowMessage *message)
{
    int i;
    int isShiny;
    MonShowData *monShowData;
    int battleType = BattleSystem_GetBattleType(battleSys);
    monShowData = (MonShowData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonShowData));
    monShowData->state = 0;

    if (battlerData->battlerType & BATTLER_THEM) {
        monShowData->face = FACE_FRONT;
    } else {
        monShowData->face = FACE_BACK;
    }

    if (message->isShiny) {
        isShiny = 1;
    } else {
        isShiny = 0;
    }

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

    for (i = 0; i < MAX_BATTLERS; i++) {
        monShowData->moveAnim.species[i] = message->battleMonSpecies[i];
        monShowData->moveAnim.genders[i] = message->battleMonGenders[i];
        monShowData->moveAnim.isShiny[i] = message->battleMonIsShiny[i];
        monShowData->moveAnim.formNums[i] = message->battleMonFormNums[i];
        monShowData->moveAnim.personalities[i] = message->battleMonPersonalities[i];
    }

    SysTask_Start(SysTask_ShowPokemon, monShowData, 0);
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
    int i;
    MonReturnData *monReturnData = (MonReturnData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(MonReturnData));
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

    for (i = 0; i < MAX_BATTLERS; i++) {
        monReturnData->moveAnim.species[i] = message->battleMonSpecies[i];
        monReturnData->moveAnim.genders[i] = message->battleMonGenders[i];
        monReturnData->moveAnim.isShiny[i] = message->battleMonIsShiny[i];
        monReturnData->moveAnim.formNums[i] = message->battleMonFormNums[i];
        monReturnData->moveAnim.personalities[i] = message->battleMonPersonalities[i];
    }

    SysTask_Start(SysTask_ReturnPokemon, monReturnData, 0);
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
    OpenCaptureBallData *captureOpenBallData = (OpenCaptureBallData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(OpenCaptureBallData));

    captureOpenBallData->battleSys = battleSys;
    captureOpenBallData->monSprite = battlerData->monSprite;
    captureOpenBallData->command = message->command;
    captureOpenBallData->battler = battlerData->battler;
    captureOpenBallData->battlerType = battlerData->battlerType;
    captureOpenBallData->state = 0;
    captureOpenBallData->yOffset = message->yOffset;

    PokemonSprite_StartFade(captureOpenBallData->monSprite, 0, 16, 0, fadeColors[message->ball]);
    PokemonSprite_SetAttribute(captureOpenBallData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, 1);
    SysTask_Start(SysTask_OpenCaptureBall, captureOpenBallData, 0);
}

void BattleDisplay_InitTaskSetTrainerEncounter(BattleSystem *battleSys, BattlerData *battlerData, TrainerEncounterMessage *message)
{
    TrainerEncounterData *trainerEncounterData = (TrainerEncounterData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerEncounterData));
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
        || ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_TAG) && (battlerData->battlerType & BATTLE_TYPE_TRAINER))) {
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
        Bg_SetOffset(BattleSystem_GetBgConfig(battleSys), 3, 2, 4 * 33);
    }

    SysTask_Start(SysTask_SetTrainerEncounter, trainerEncounterData, 0);
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
    TrainerThrowBallData *trainerThrowBallData = (TrainerThrowBallData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerThrowBallData));

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
        trainerThrowBallData->unk_0C = sub_020788D0(ov16_02264768(battleSys, battlerData->battler, trainer->header.trainerType));
    }

    SysTask_Start(SysTask_ThrowTrainerBall, trainerThrowBallData, 0);
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
    SlideTrainerOutData *slideTrainerOutData = (SlideTrainerOutData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideTrainerOutData));

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

    SysTask_Start(SysTask_SlideTrainerOut, slideTrainerOutData, 0);
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
    SlideTrainerInData *slideTrainerInData = (SlideTrainerInData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideTrainerInData));
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

    SysTask_Start(SysTask_SlideTrainerIn, slideTrainerInData, 0);
}

void BattleDisplay_InitTaskSlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData, HealthbarData *healthbarData)
{
    Healthbar *healthbar = &battlerData->healthbar;
    MI_CpuClearFast(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->battler = battlerData->battler;
    healthbar->type = Healthbar_Type(battlerData->battlerType, BattleSystem_GetBattleType(battleSys));
    healthbar->command = healthbarData->command;
    healthbar->curHP = healthbarData->curHP;
    healthbar->maxHP = healthbarData->maxHP;
    healthbar->level = healthbarData->level;
    healthbar->gender = healthbarData->gender;
    healthbar->damage = 0;
    healthbar->curExp = healthbarData->expFromLastLevel;
    healthbar->maxExp = healthbarData->expToNextLevel;
    healthbar->selectedPartySlot = healthbarData->selectedPartySlot;
    healthbar->status = healthbarData->status;
    healthbar->caughtSpecies = healthbarData->speciesCaught;
    healthbar->delay = healthbarData->delay;
    healthbar->numSafariBalls = healthbarData->numSafariBalls;

    Healthbar_Enable(healthbar, FALSE);
    Healthbar_DrawInfo(healthbar, healthbar->curHP, HEALTHBAR_INFO_ALL);

    healthbar->task_10 = SysTask_Start(SysTask_SlideHealthbarIn, healthbar, 1000);
}

void BattleDisplay_InitTaskSlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData)
{
    Healthbar *healthbar = &battlerData->healthbar;
    MI_CpuClearFast(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->battler = battlerData->battler;
    healthbar->command = battlerData->data[0];

    Healthbar_Scroll(healthbar, HEALTHBAR_SCROLL_OUT);

    healthbar->task_10 = SysTask_Start(SysTask_SlideHealthbarOut, healthbar, 1000);
}

typedef struct CommandSetData {
    BattleSystem *battleSys;
    void *healthbar;
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
    CommandSetData *commandSetData = (CommandSetData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(CommandSetData));
    int i, j;
    MI_CpuClearFast(commandSetData, sizeof(CommandSetData));

    commandSetData->state = 0;
    commandSetData->unused_0B = 0;
    commandSetData->battleSys = battleSys;
    commandSetData->command = message->command;
    commandSetData->battler = battlerData->battler;
    commandSetData->battlerType = battlerData->battlerType;
    commandSetData->healthbar = &battlerData->healthbar;
    commandSetData->partySlot = message->partySlot;
    commandSetData->curHP = message->curHP;
    commandSetData->maxHP = message->maxHP;
    commandSetData->ballStatusBattler = message->ballStatusBattler;
    commandSetData->switchingOrCanPickCommandMask = message->switchingOrCanPickCommandMask;

    for (i = 0; i < PARTY_GAUGE_COUNT; i++) {
        for (j = 0; j < MAX_PARTY_SIZE; j++) {
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
    void *healthbar;
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
    MoveSelectMenuData *moveSelectMenuData = (MoveSelectMenuData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(MoveSelectMenuData));
    int i;

    moveSelectMenuData->state = 0;
    moveSelectMenuData->battleSys = battleSys;
    moveSelectMenuData->command = battlerData->data[0];
    moveSelectMenuData->battler = battlerData->battler;
    moveSelectMenuData->battlerType = battlerData->battlerType;
    moveSelectMenuData->healthbar = &battlerData->healthbar;
    moveSelectMenuData->partySlot = message->partySlot;

    for (i = 0; i < MAX_BATTLERS; i++) {
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
    void *healthbar;
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
    TargetSelectMenuData *targetSelectMenuData = (TargetSelectMenuData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(TargetSelectMenuData));
    int i, maxBattlers;
    u32 battleType;
    u8 battlerTypes[6];

    targetSelectMenuData->state = 0;
    targetSelectMenuData->battleSys = battleSys;
    targetSelectMenuData->command = battlerData->data[0];
    targetSelectMenuData->battler = battlerData->battler;
    targetSelectMenuData->battlerType = battlerData->battlerType;
    targetSelectMenuData->range = message->range;
    targetSelectMenuData->healthbar = &battlerData->healthbar;
    targetSelectMenuData->unk_32 = message->unk_01;

    BattleSystem_SetBattlerTypes(battleSys, &battlerTypes[0]);

    maxBattlers = BattleSystem_GetMaxBattlers(battleSys);
    battleType = BattleSystem_GetBattleType(battleSys);

    for (i = 0; i < maxBattlers; i++) {
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
    BagMenuData *bagMenuData = (BagMenuData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BagMenuData));
    int i, j;

    bagMenuData->partyMenuData = (PartyMenuData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyMenuData));
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

    for (i = 0; i < MAX_BATTLERS; i++) {
        bagMenuData->partyMenuData->partySlots[i] = message->partySlots[i];

        for (j = 0; j < MAX_PARTY_SIZE; j++) {
            bagMenuData->partyOrder[i][j] = message->partyOrder[i][j];
        }

        bagMenuData->embargoTurns[i] = message->embargoTurns[i];
    }

    SysTask_Start(battlerData->taskFuncs.showBagMenu, bagMenuData, 0);
}

void BattleDisplay_InitTaskShowPartyMenu(BattleSystem *battleSys, BattlerData *battlerData, PartyMenuMessage *message)
{
    PartyMenuData *partyMenuData = (PartyMenuData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(PartyMenuData));
    int i, j;

    partyMenuData->state = 0;
    partyMenuData->battleSys = battleSys;
    partyMenuData->command = message->command;
    partyMenuData->battler = message->battler;
    partyMenuData->listMode = message->listMode;
    partyMenuData->canSwitch = message->canSwitch;
    partyMenuData->doublesSelection = message->doublesSelection;
    partyMenuData->selectedBattleBagItem = 0;
    partyMenuData->battlersSwitchingMask = message->battlersSwitchingMask;

    for (i = 0; i < MAX_BATTLERS; i++) {
        partyMenuData->partySlots[i] = message->selectedPartySlot[i];

        for (j = 0; j < MAX_PARTY_SIZE; j++) {
            partyMenuData->partyOrder[i][j] = message->partyOrder[i][j];
        }
    }

    SysTask_Start(battlerData->taskFuncs.showPartyMenu, partyMenuData, 0);
}

typedef struct YesNoMenuData {
    BattleSystem *battleSys;
    void *healthbar;
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
    YesNoMenuData *yesNoMenuData = (YesNoMenuData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(YesNoMenuData));

    yesNoMenuData->state = 0;
    yesNoMenuData->battleSys = battleSys;
    yesNoMenuData->command = message->command;
    yesNoMenuData->battler = battlerData->battler;
    yesNoMenuData->healthbar = &battlerData->healthbar;
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

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(battleSys);
    BattleMessageWaitTask *waitTask = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = battlerData->data[0];
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
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
    SetMoveAnimationData *setMoveAnimationData = (SetMoveAnimationData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(SetMoveAnimationData));

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
    SysTask_Start(SysTask_SetMoveAnimation, setMoveAnimationData, 0);
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
    FlickerBattlerData *flickerBattlerData = (FlickerBattlerData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(FlickerBattlerData));

    flickerBattlerData->counter = 0;
    flickerBattlerData->battleSys = battleSys;
    flickerBattlerData->monSprite = battlerData->monSprite;
    flickerBattlerData->battler = battlerData->battler;
    flickerBattlerData->delay = 0;

    SysTask_Start(SysTask_FlickerBattler, flickerBattlerData, 0);
}

void BattleDisplay_InitTaskUpdateHPGauge(BattleSystem *battleSys, BattlerData *battlerData, HPGaugeUpdateMessage *message)
{
    Healthbar *healthbar;

    GF_ASSERT(battlerData->healthbar.mainSprite != NULL);

    healthbar = &battlerData->healthbar;
    MI_CpuClear8(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->command = message->command;
    healthbar->battler = battlerData->battler;
    healthbar->type = Healthbar_Type(battlerData->battlerType, BattleSystem_GetBattleType(battleSys));
    healthbar->curHP = message->curHP;
    healthbar->maxHP = message->maxHP;
    healthbar->damage = message->hpCalcTemp;
    healthbar->level = message->level;

    if (message->hpCalcTemp == HP_CALC_INSTANT_ZERO) {
        healthbar->curHP = 0;
        healthbar->damage = 0;
    }

    healthbar->task_10 = SysTask_Start(SysTask_UpdateHPGauge, healthbar, 1000);
}

void BattleDisplay_InitTaskUpdateExpGauge(BattleSystem *battleSys, BattlerData *battlerData, ExpGaugeUpdateMessage *message)
{
    Healthbar *healthbar;

    GF_ASSERT(battlerData->healthbar.mainSprite != NULL);

    healthbar = &battlerData->healthbar;

    MI_CpuClear8(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->command = message->command;
    healthbar->battler = battlerData->battler;
    healthbar->curExp = message->curExp;
    healthbar->maxExp = message->expToNextLevel;
    healthbar->expReward = message->gainedExp - healthbar->curExp;

    if (battlerData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
        healthbar->task_10 = SysTask_Start(SysTask_UpdateExpGauge, healthbar, 1000);
        return;
    } else {
        BattleController_EmitClearCommand(healthbar->battleSys, healthbar->battler, healthbar->command);
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
    FaintingSequenceData *faintingSequenceData = (FaintingSequenceData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(FaintingSequenceData));
    int i;

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

    for (i = 0; i < MAX_BATTLERS; i++) {
        faintingSequenceData->moveAnim.species[i] = message->monSpecies[i];
        faintingSequenceData->moveAnim.genders[i] = message->monGenders[i];
        faintingSequenceData->moveAnim.isShiny[i] = message->monShiny[i];
        faintingSequenceData->moveAnim.formNums[i] = message->monFormNums[i];
        faintingSequenceData->moveAnim.personalities[i] = message->monPersonalities[i];
    }

    SysTask_Start(SysTask_PlayFaintingSequence, faintingSequenceData, 0);
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
    FadeOutData *fadeOutData = (FadeOutData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(FadeOutData));

    fadeOutData->state = 0;
    fadeOutData->battleSys = battleSys;
    fadeOutData->command = battlerData->data[0];
    fadeOutData->battler = battlerData->battler;

    SysTask_Start(SysTask_FadeOut, fadeOutData, 0);
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
    ToggleVanishData *toggleVanishData = (ToggleVanishData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(ToggleVanishData));
    int i;

    toggleVanishData->battleSys = battleSys;
    toggleVanishData->battlerData = battlerData;
    toggleVanishData->command = message->command;
    toggleVanishData->battler = battlerData->battler;
    toggleVanishData->state = 0;
    toggleVanishData->toggleHide = message->toggle;
    toggleVanishData->isSubstitute = message->isSubstitute;

    for (i = 0; i < MAX_BATTLERS; i++) {
        toggleVanishData->moveAnim.species[i] = message->species[i];
        toggleVanishData->moveAnim.genders[i] = message->gender[i];
        toggleVanishData->moveAnim.isShiny[i] = message->isShiny[i];
        toggleVanishData->moveAnim.formNums[i] = message->formNum[i];
        toggleVanishData->moveAnim.personalities[i] = message->personality[i];
    }

    SysTask_Start(SysTask_ToggleVanish, toggleVanishData, 0);
}

void BattleDisplay_SetStatusIcon(BattleSystem *battleSys, BattlerData *battlerData, SetStatusIconMessage *message)
{
    GF_ASSERT(battlerData->healthbar.mainSprite != NULL);

    battlerData->healthbar.status = message->status;

    Healthbar_DrawInfo(&battlerData->healthbar, battlerData->healthbar.curHP, HEALTHBAR_INFO_STATUS);
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

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintRecallMessage(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_02263C1C(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintSendOutMessage(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_02263CF0(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintBattleStartMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_02263DD0(battleSys, battlerData, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = 34;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintLeadMonMessage(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_02263E7C(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = message->command;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

typedef struct PlayLevelUpAnimationData {
    BattleSystem *battleSys;
    void *healthbar;
    u8 command;
    u8 battler;
    u8 state;
    u8 unk_0B;
} PlayLevelUpAnimationData;

void BattleDisplay_InitTaskPlayLevelUpAnimation(BattleSystem *battleSys, BattlerData *battlerData)
{
    PlayLevelUpAnimationData *playLevelUpAnimationData = (PlayLevelUpAnimationData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(PlayLevelUpAnimationData));

    playLevelUpAnimationData->battleSys = battleSys;
    playLevelUpAnimationData->command = battlerData->data[0];
    playLevelUpAnimationData->battler = battlerData->battler;
    playLevelUpAnimationData->state = 0;
    playLevelUpAnimationData->healthbar = &battlerData->healthbar;

    SysTask_Start(SysTask_PlayLevelUpAnimation, playLevelUpAnimationData, 0);
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
        alertMsgData = (AlertMsgData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(AlertMsgData));

        alertMsgData->battleSys = battleSys;
        alertMsgData->command = message->command;
        alertMsgData->battler = battlerData->battler;
        alertMsgData->state = 0;
        alertMsgData->msgIdx = BattleMessage_Print(battleSys, msgLoader, &message->msg, BattleSystem_GetTextSpeed(battleSys));

        SysTask_Start(SysTask_WaitForAlertMessagePrint, alertMsgData, 0);
    } else if (battlerData->bootState == BATTLER_BOOT_STATE_AI) {
        ov16_022661B0(battleSys, battlerData->battler);
        BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    } else {
        if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == 0) {
            ov16_022661B0(battleSys, battlerData->battler);
        }

        BattleController_EmitClearCommand(battleSys, battlerData->battler, message->command);
    }
}

void BattleDisplay_RefreshHPGauge(BattleSystem *battleSys, BattlerData *battlerData, RefreshHPGaugeMessage *message)
{
    Healthbar *healthbar = &battlerData->healthbar;

    MI_CpuClearFast(&healthbar->state, sizeof(u8));

    healthbar->battleSys = battleSys;
    healthbar->battler = battlerData->battler;
    healthbar->type = Healthbar_Type(battlerData->battlerType, BattleSystem_GetBattleType(battleSys));
    healthbar->command = message->command;
    healthbar->curHP = message->curHP;
    healthbar->maxHP = message->maxHP;
    healthbar->level = message->level;
    healthbar->gender = message->gender;
    healthbar->damage = 0;
    healthbar->curExp = message->curExp;
    healthbar->maxExp = message->maxExp;
    healthbar->selectedPartySlot = message->partySlot;
    healthbar->status = message->status;
    healthbar->caughtSpecies = message->caughtSpecies;
    healthbar->numSafariBalls = message->numSafariBalls;

    Healthbar_DrawInfo(healthbar, healthbar->curHP, ~HEALTHBAR_INFO_EXP_GAUGE);
    BattleController_EmitClearCommand(healthbar->battleSys, healthbar->battler, healthbar->command);
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
    ForgetMoveData *forgetMoveData = (ForgetMoveData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(ForgetMoveData));

    forgetMoveData->state = 0;
    forgetMoveData->battleSys = battleSys;
    forgetMoveData->command = message->command;
    forgetMoveData->battler = battlerData->battler;
    forgetMoveData->move = message->move;
    forgetMoveData->slot = message->slot;

    SysTask_Start(SysTask_ForgetMove, forgetMoveData, 0);
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
    SetMosaicData *setMosaicData = (SetMosaicData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(SetMosaicData));

    setMosaicData->state = 0;
    setMosaicData->battleSys = battleSys;
    setMosaicData->monSprite = battlerData->monSprite;
    setMosaicData->command = message->command;
    setMosaicData->battler = battlerData->battler;
    setMosaicData->intensity = message->intensity;
    setMosaicData->counter = 0;
    setMosaicData->wait = message->wait;

    SysTask_Start(SysTask_SetMosaic, setMosaicData, 0);
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
    SysTask_Start(SysTask_ShowPartyGauge, task, 0);
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

    SysTask_Start(SysTask_HidePartyGauge, task, 0);
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
    SysTask_Start(SysTask_ShowPartyGauge, task, 0);
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

    SysTask_Start(SysTask_HidePartyGauge, task, 0);
}

void BattleDisplay_PrintLinkWaitMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    if (battlerData->bootState == BATTLER_BOOT_STATE_NORMAL) {
        msgLoader = BattleSystem_GetMessageLoader(battleSys);

        battleMsg.id = 923;
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
    SpriteToOAMData *spriteToOAMData = (SpriteToOAMData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(SpriteToOAMData));

    spriteToOAMData->state = 0;
    spriteToOAMData->battleSys = battleSys;
    spriteToOAMData->battlerData = battlerData;
    spriteToOAMData->command = battlerData->data[0];
    spriteToOAMData->battler = battlerData->battler;
    spriteToOAMData->monSprite = battlerData->monSprite;

    SysTask_Start(SysTask_SpriteToOAM, spriteToOAMData, 0);
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
    OAMToSpriteData *oamToSpriteData = (OAMToSpriteData *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(OAMToSpriteData));

    oamToSpriteData->delay = 0;
    oamToSpriteData->battleSys = battleSys;
    oamToSpriteData->battlerData = battlerData;
    oamToSpriteData->command = battlerData->data[0];
    oamToSpriteData->battler = battlerData->battler;
    oamToSpriteData->monSprite = battlerData->monSprite;

    SysTask_Start(SysTask_OAMToSprite, oamToSpriteData, 0);
}

void BattleDisplay_PrintResultMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_022641B4(battleSys, battlerData, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_RESULT_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintEscapeMessage(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_02264270(battleSys, battlerData, message, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_ESCAPE_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
}

void BattleDisplay_PrintForfeitMessage(BattleSystem *battleSys, BattlerData *battlerData)
{
    BattleMessageWaitTask *waitTask;
    MessageLoader *msgLoader;
    BattleMessage battleMsg;

    ov16_02264360(battleSys, battlerData, &battleMsg);

    msgLoader = BattleSystem_GetMessageLoader(battleSys);
    waitTask = (BattleMessageWaitTask *)Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleMessageWaitTask));

    waitTask->battleSys = battleSys;
    waitTask->command = BATTLE_COMMAND_PRINT_FORFEIT_MESSAGE;
    waitTask->battler = battlerData->battler;
    waitTask->msgIdx = BattleMessage_Print(battleSys, msgLoader, &battleMsg, BattleSystem_GetTextSpeed(battleSys));

    SysTask_Start(SysTask_WaitForBattleMessagePrint, waitTask, 0);
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

static void SysTask_SetEncounter(SysTask *task, void *param1)
{
    MonEncounterData *monEncounterData = (MonEncounterData *)param1;
    BattleAnimSystem *v1 = BattleSystem_GetBattleAnimSystem(monEncounterData->battleSys);
    s16 v2, v3;

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
        if (monEncounterData->face == 2) {
            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &v2, &v3);

            if ((monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) || (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1)) {
                if (v2 < (24 * 8)) {
                    ManagedSprite_OffsetPositionXY(monEncounterData->unk_0C->unk_00, 8, 0);
                } else {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
                }
            }

            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &v2, &v3);

            if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) {
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, v2);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                v2 = PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) - v2;
                v2 -= 24;

                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, -v2);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                v2 = v2 - PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER);
                v2 -= 16;

                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, v2);
            }

            if (PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) >= monEncounterData->unk_14) {
                PokemonSprite_InitAnim(monEncounterData->sprite, 1);
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_IS_AFFINE, 0);
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, monEncounterData->unk_14);
                PokemonSprite_LoadAnim(monEncounterData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->sprite, monEncounterData->species, monEncounterData->face, 0, monEncounterData->battler);

                {
                    u8 v4;
                    PokemonSprite_LoadCryDelay(monEncounterData->battlerData->narc, &v4, monEncounterData->species, monEncounterData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monEncounterData->battleSys, monEncounterData->battler), monEncounterData->cryMod, monEncounterData->species, monEncounterData->formNum, 117, 127, NULL, 5, v4);
                }

                if ((monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) || (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1)) {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
                }

                PokemonSprite_StartFade(monEncounterData->sprite, 8, 0, 0, 0x0);
                monEncounterData->state++;
            }
        } else {
            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &v2, &v3);

            if ((monEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) || (monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1)) {
                if (v2 > 64) {
                    ManagedSprite_OffsetPositionXY(monEncounterData->unk_0C->unk_00, -8, 0);
                } else {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 64, 128 + 8);
                }
            }

            ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &v2, &v3);

            if (monEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, v2);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                v2 = v2 - PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER);
                v2 -= 24;
                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, v2);
            } else if (monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                v2 = PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) - v2;
                v2 -= 16;
                PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, -v2);
            }

            if (PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER) <= monEncounterData->unk_14) {
                PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_X_CENTER, monEncounterData->unk_14);
                PokemonSprite_LoadAnim(monEncounterData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->sprite, monEncounterData->species, monEncounterData->face, 0, monEncounterData->battler);

                {
                    u8 v5;

                    PokemonSprite_LoadCryDelay(monEncounterData->battlerData->narc, &v5, monEncounterData->species, monEncounterData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monEncounterData->battleSys, monEncounterData->battler), monEncounterData->cryMod, monEncounterData->species, monEncounterData->formNum, -117, 127, NULL, 5, v5);
                }

                if ((monEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) || (monEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1)) {
                    ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 64, 128 + 8);
                }

                monEncounterData->state++;
            }
        }
        break;
    case 3:
        if ((PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->battler) == TRUE) && (PokemonSprite_IsAnimActive(monEncounterData->sprite) == 0)) {
            if (monEncounterData->isShiny) {
                {
                    MoveAnimation v6;

                    BattleController_SetMoveAnimation(monEncounterData->battleSys, NULL, &v6, 1, 11, monEncounterData->battler, monEncounterData->battler, NULL);
                    ov16_02264408(monEncounterData->battleSys, monEncounterData->battlerData, v1, &v6);
                }
                monEncounterData->state = 4;
            } else {
                monEncounterData->state = 0xff;
            }
        }
        break;
    case 4:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            monEncounterData->state = 0xff;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(FALSE);
        BattleController_EmitClearCommand(monEncounterData->battleSys, monEncounterData->battler, monEncounterData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void ov16_0225E894(SysTask *task, void *param1)
{
    MonEncounterData *monEncounterData = (MonEncounterData *)param1;
    BattleAnimSystem *v1 = BattleSystem_GetBattleAnimSystem(monEncounterData->battleSys);
    s16 v2, v3;

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
        ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &v2, &v3);

        if ((monEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) || (monEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1)) {
            if (v2 < (24 * 8)) {
                ManagedSprite_OffsetPositionXY(monEncounterData->unk_0C->unk_00, 8, 0);
            } else {
                ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
            }
        }

        ManagedSprite_GetPositionXY(monEncounterData->unk_0C->unk_00, &v2, &v3);
        PokemonSprite_AddAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER, 8 / 2);

        if (PokemonSprite_GetAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER) >= monEncounterData->unk_14) {
            PokemonSprite_InitAnim(monEncounterData->sprite, 1);
            PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
            PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_SHADOW_IS_AFFINE, 0);
            PokemonSprite_SetAttribute(monEncounterData->sprite, MON_SPRITE_Y_CENTER, monEncounterData->unk_14);
            PokemonSprite_LoadAnim(monEncounterData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->sprite, monEncounterData->species, monEncounterData->face, 0, monEncounterData->battler);

            {
                u8 v4;

                PokemonSprite_LoadCryDelay(monEncounterData->battlerData->narc, &v4, monEncounterData->species, monEncounterData->battlerType);
                Species_PlayDelayedCry(BattleSystem_GetChatotCry(monEncounterData->battleSys, monEncounterData->battler), monEncounterData->cryMod, monEncounterData->species, monEncounterData->formNum, 117, 127, NULL, 5, v4);
            }

            ManagedSprite_SetPositionXY(monEncounterData->unk_0C->unk_00, 24 * 8, 8 * 11);
            PokemonSprite_StartFade(monEncounterData->sprite, 8, 0, 0, 0x0);

            monEncounterData->state++;
        }
        break;
    case 3:
        if ((PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monEncounterData->battleSys), monEncounterData->battler) == TRUE) && (PokemonSprite_IsAnimActive(monEncounterData->sprite) == 0)) {
            if (monEncounterData->isShiny) {
                {
                    MoveAnimation v5;

                    BattleController_SetMoveAnimation(monEncounterData->battleSys, NULL, &v5, 1, 11, monEncounterData->battler, monEncounterData->battler, NULL);
                    ov16_02264408(monEncounterData->battleSys, monEncounterData->battlerData, v1, &v5);
                }
                monEncounterData->state = 4;
            } else {
                monEncounterData->state = 0xff;
            }
        }
        break;
    case 4:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            monEncounterData->state = 0xff;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(FALSE);
        BattleController_EmitClearCommand(monEncounterData->battleSys, monEncounterData->battler, monEncounterData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

const u8 Unk_ov16_0226F174[] = {
    0x6,
    0x1,
    0x8,
    0x3,
    0x7,
    0x5
};

static void SysTask_ShowEncounter(SysTask *task, void *param1)
{
    MonShowData *monShowData = (MonShowData *)param1;

    switch (monShowData->state) {
    case 0:
        monShowData->delay = 0;

        {
            monShowData->unk_10 = NULL;

            if (BattleSystem_GetBattleType(monShowData->battleSys) & BATTLE_TYPE_2vs2) {
                if ((BattleSystem_GetBattleStatusMask(monShowData->battleSys) & BATTLE_STATUS_RECORDED) == 0) {
                    if (monShowData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                        monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
                    }
                }
            } else {
                if ((BattleSystem_GetBattleStatusMask(monShowData->battleSys) & BATTLE_STATUS_RECORDED) == 0) {
                    if ((ov16_0223ED60(monShowData->battleSys) == 1) && (monShowData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1)) {
                        monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
                    } else if (monShowData->battlerType == BATTLER_TYPE_SOLO_PLAYER) {
                        monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
                    } else {
                        (void)0;
                    }
                }
            }
        }

        monShowData->state++;
        break;
    case 1: {
        UnkStruct_ov12_02236030 v1 = { 0 };

        v1.unk_00 = monShowData->battlerType;
        v1.unk_08 = BattleSystem_GetPartyPokemon(monShowData->battleSys, monShowData->battler, monShowData->selectedPartySlot);
        monShowData->unk_08 = ov12_02236004(HEAP_ID_BATTLE, &v1);

        ov12_02236320(monShowData->unk_08);
    }
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

            {
                PokemonSpriteManager *v2;
                SpriteAnimFrame v3[10];

                v2 = BattleSystem_GetPokemonSpriteManager(monShowData->battleSys);
                PokemonSprite_LoadAnimFrames(monShowData->battlerData->narc, &v3[0], monShowData->species, monShowData->battlerType);
                monShowData->battlerData->monSprite = ov16_02263B30(monShowData->battleSys, v2, &monShowData->spriteTemplate, Unk_ov12_0223B0A0[monShowData->battlerType][0], gEncounterCoords[monShowData->battlerType][1], gEncounterCoords[monShowData->battlerType][2], monShowData->yOffset, monShowData->height, monShowData->shadowXOffset, monShowData->shadowSize, monShowData->battler, &v3[0], NULL);

                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x0);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x0);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, 1);
            }

            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 16, 0, fadeColors[monShowData->capturedBall]);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, 0);

            ov12_022363B4(monShowData->unk_08);

            if (monShowData->face == 2) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, 117);
            } else {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, -117);
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
        if ((PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) == 0x100) && (ov12_022363C4(monShowData->unk_08) == 0)) {
            if (monShowData->face == 2) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v4;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v4, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, 117, 127, NULL, 5, v4);
                }
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                {
                    u8 v5;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v5, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, -117, 127, NULL, 5, v5);
                }
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battlerData->monSprite, monShowData->species, monShowData->face, 0, monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 0, fadeColors[monShowData->capturedBall]);

            monShowData->state = 5;
        } else if (PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) >= 0x100) {
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x100);

            if (monShowData->face == 2) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v6;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v6, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, 117, 127, NULL, 5, v6);
                }
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                {
                    u8 v7;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v7, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, -117, 127, NULL, 5, v7);
                }
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battlerData->monSprite, monShowData->species, monShowData->face, 0, monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 1, fadeColors[monShowData->capturedBall]);

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
        if ((PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battler) == TRUE) && (PokemonSprite_IsAnimActive(monShowData->battlerData->monSprite) == 0)) {
            ov12_0223783C(monShowData->battlerData->ballRotation);
            monShowData->battlerData->ballRotation = NULL;
            ov12_02236428(monShowData->unk_08);

            if (monShowData->isShiny) {
                {
                    MoveAnimation v8;

                    monShowData->battleAnimSys = BattleAnimSystem_New(HEAP_ID_BATTLE);
                    BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &v8, 1, 11, monShowData->battler, monShowData->battler, NULL);
                    ov16_02264408(monShowData->battleSys, monShowData->battlerData, monShowData->battleAnimSys, &v8);
                }
                monShowData->state = 7;
            } else {
                monShowData->state = 0xff;
            }
        }
        break;
    case 7:
        BattleAnimSystem_ExecuteScript(monShowData->battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(monShowData->battleAnimSys) == 0) {
            BattleAnimSystem_FreeScriptData(monShowData->battleAnimSys);
            BattleAnimSystem_Delete(monShowData->battleAnimSys);
            monShowData->state = 0xff;
        }
        break;
    default:
        Sound_Set2PokemonCriesAllowed(FALSE);
        BattleController_EmitClearCommand(monShowData->battleSys, monShowData->battler, monShowData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_ShowPokemon(SysTask *task, void *param1)
{
    MonShowData *monShowData = (MonShowData *)param1;
    BattleAnimSystem *v1 = BattleSystem_GetBattleAnimSystem(monShowData->battleSys);

    switch (monShowData->state) {
    case 0: {
        BallThrow v2;

        v2.type = Unk_ov16_0226F174[monShowData->battlerType];
        v2.heapID = HEAP_ID_BATTLE;
        v2.target = monShowData->battler;
        v2.ballID = monShowData->capturedBall;
        v2.cellActorSys = BattleSystem_GetSpriteSystem(monShowData->battleSys);
        v2.paletteSys = BattleSystem_GetPaletteData(monShowData->battleSys);
        v2.bgPrio = 1;
        v2.surface = 0;

        if (monShowData->unk_94 == 1) {
            v2.mode = 1;
        } else {
            v2.mode = 0;
        }

        monShowData->ballRotation = ov12_02237728(&v2);
    }
        {
            PokemonSpriteManager *v3;
            SpriteAnimFrame v4[10];

            v3 = BattleSystem_GetPokemonSpriteManager(monShowData->battleSys);
            PokemonSprite_LoadAnimFrames(monShowData->battlerData->narc, &v4[0], monShowData->species, monShowData->battlerType);
            monShowData->battlerData->monSprite = ov16_02263B30(monShowData->battleSys, v3, &monShowData->spriteTemplate, Unk_ov12_0223B0A0[monShowData->battlerType][0], gEncounterCoords[monShowData->battlerType][1], gEncounterCoords[monShowData->battlerType][2], monShowData->yOffset, monShowData->height, monShowData->shadowXOffset, monShowData->shadowSize, monShowData->battler, &v4[0], NULL);

            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x0);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x0);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, 1);
        }
        {
            monShowData->unk_10 = NULL;
            monShowData->unk_10 = ov12_02223764(monShowData->battleSys, HEAP_ID_BATTLE);
        }
        monShowData->state++;
        break;
    case 1: {
        UnkStruct_ov12_02236030 v5 = { 0 };

        v5.unk_00 = monShowData->battlerType;
        v5.unk_08 = BattleSystem_GetPartyPokemon(monShowData->battleSys, monShowData->battler, monShowData->selectedPartySlot);
        v5.unk_04 = monShowData->capturedBall;

        monShowData->unk_08 = ov12_02236004(HEAP_ID_BATTLE, &v5);
        ov12_02236320(monShowData->unk_08);
    }
        monShowData->state++;
        break;
    case 2:
        if ((ov12_02237890(monShowData->ballRotation) != 0) && (monShowData->unk_94 == 0)) {
            break;
        }

        if (ov12_02236374(monShowData->unk_08) != 1) {
            break;
        }

        if (ov12_02237810(monShowData->ballRotation) == 1) {
            if (monShowData->unk_10) {
                ov12_02223770(monShowData->unk_10);
            }

            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 16, 0, fadeColors[monShowData->capturedBall]);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_HIDE, 0);

            ov12_022363B4(monShowData->unk_08);

            if (monShowData->face == 2) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, 117);
            } else {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, -117);
            }

            monShowData->state++;
        }
        break;
    case 3:
        if (ov12_022377F8(monShowData->ballRotation) != 1) {
            monShowData->state++;
        }
    case 4:
        if ((PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) == 0x100) && (ov12_022363C4(monShowData->unk_08) == 0)) {
            if (monShowData->face == 2) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v6;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v6, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, 117, 127, NULL, 5, v6);
                }
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                {
                    u8 v7;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v7, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, -117, 127, NULL, 5, v7);
                }
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battlerData->monSprite, monShowData->species, monShowData->face, 0, monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 0, fadeColors[monShowData->capturedBall]);
            monShowData->state = 5;
        } else if (PokemonSprite_GetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X) >= 0x100) {
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SCALE_Y, 0x100);

            if (monShowData->face == 2) {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);
                PokemonSprite_SetAttribute(monShowData->battlerData->monSprite, MON_SPRITE_SHADOW_IS_AFFINE, 0);

                {
                    u8 v8;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v8, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, 117, 127, NULL, 5, v8);
                }
            } else {
                PokemonSprite_InitAnim(monShowData->battlerData->monSprite, 1);

                {
                    u8 v9;

                    PokemonSprite_LoadCryDelay(monShowData->battlerData->narc, &v9, monShowData->species, monShowData->battlerType);
                    Species_PlayDelayedCry(BattleSystem_GetChatotCry(monShowData->battleSys, monShowData->battler), monShowData->cryMod, monShowData->species, monShowData->formNum, -117, 127, NULL, 5, v9);
                }
            }

            PokemonSprite_LoadAnim(monShowData->battlerData->narc, BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battlerData->monSprite, monShowData->species, monShowData->face, 0, monShowData->battler);
            PokemonSprite_StartFade(monShowData->battlerData->monSprite, 16, 0, 1, fadeColors[monShowData->capturedBall]);
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
        if ((PokemonAnimManager_HasAnimCompleted(BattleSystem_GetPokemonAnimManager(monShowData->battleSys), monShowData->battler) == TRUE) && (PokemonSprite_IsAnimActive(monShowData->battlerData->monSprite) == 0)) {
            ov12_0223783C(monShowData->ballRotation);
            ov12_02236428(monShowData->unk_08);

            if (monShowData->isShiny) {
                {
                    MoveAnimation v10;

                    BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &v10, 1, 11, monShowData->battler, monShowData->battler, NULL);
                    ov16_02264408(monShowData->battleSys, monShowData->battlerData, v1, &v10);
                }
                monShowData->state = 7;
            } else {
                monShowData->state = 8;
            }
        }
        break;
    case 7:
    case 9:
    case 11:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            monShowData->state++;
        }
        break;
    case 8:
        if (monShowData->isSubstitute) {
            {
                MoveAnimation v11;

                BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &v11, 1, 15, monShowData->battler, monShowData->battler, NULL);
                ov16_02264408(monShowData->battleSys, monShowData->battlerData, v1, &v11);
            }
            monShowData->state++;
        } else {
            monShowData->state = 0xff;
        }
        break;
    case 10: {
        UnkStruct_ov12_022380DC v12;
        MoveAnimation v13;

        ov16_02264530(monShowData->battleSys, &monShowData->moveAnim, &v12, monShowData->battler);
        ov12_02238390(&v12, HEAP_ID_BATTLE);
        BattleController_SetMoveAnimation(monShowData->battleSys, NULL, &v13, 1, 16, monShowData->battler, monShowData->battler, NULL);
        ov16_02264408(monShowData->battleSys, monShowData->battlerData, v1, &v13);

        monShowData->battlerData->unk_19C = 1;
    }
        monShowData->state++;
        break;
    default:
        BattleController_EmitClearCommand(monShowData->battleSys, monShowData->battler, monShowData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_ReturnPokemon(SysTask *task, void *param1)
{
    MonReturnData *monReturnData = (MonReturnData *)param1;
    BattleAnimSystem *v1 = BattleSystem_GetBattleAnimSystem(monReturnData->battleSys);

    switch (monReturnData->state) {
    case 0:
        if (monReturnData->isSubstitute) {
            {
                MoveAnimation v2;

                BattleController_SetMoveAnimation(monReturnData->battleSys, NULL, &v2, 1, 15, monReturnData->battler, monReturnData->battler, NULL);
                ov16_02264408(monReturnData->battleSys, monReturnData->battlerData, v1, &v2);
            }
            monReturnData->state++;
        } else {
            monReturnData->state = 4;
        }
        break;
    case 2: {
        UnkStruct_ov12_022380DC v3;
        MoveAnimation v4;

        ov16_02264530(monReturnData->battleSys, &monReturnData->moveAnim, &v3, monReturnData->battler);
        ov12_022382BC(&v3, HEAP_ID_BATTLE);
        BattleController_SetMoveAnimation(monReturnData->battleSys, NULL, &v4, 1, 16, monReturnData->battler, monReturnData->battler, NULL);
        ov16_02264408(monReturnData->battleSys, monReturnData->battlerData, v1, &v4);
        monReturnData->battlerData->unk_19C = 0;
    }
        monReturnData->state++;
        break;
    case 1:
    case 3:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            monReturnData->state++;
        }
        break;
    case 4:
        if (monReturnData->battlerType & 0x1) {
            {
                BallThrow v5;

                v5.type = Unk_ov16_0226F174[monReturnData->battlerType];
                v5.heapID = HEAP_ID_BATTLE;
                v5.mode = 5;
                v5.target = monReturnData->battler;
                v5.ballID = monReturnData->capturedBall;
                v5.cellActorSys = BattleSystem_GetSpriteSystem(monReturnData->battleSys);
                v5.paletteSys = BattleSystem_GetPaletteData(monReturnData->battleSys);
                v5.bgPrio = 1;
                v5.surface = 0;
                monReturnData->ballRotation = ov12_02237728(&v5);
            }
        } else {
            {
                BallThrow v6;
                int v7[] = { 0, 1, 2, 3, 4, 5 };

                v6.type = v7[monReturnData->battlerType];
                v6.heapID = HEAP_ID_BATTLE;
                v6.mode = 5;
                v6.target = monReturnData->battler;
                v6.ballID = monReturnData->capturedBall;
                v6.cellActorSys = BattleSystem_GetSpriteSystem(monReturnData->battleSys);
                v6.paletteSys = BattleSystem_GetPaletteData(monReturnData->battleSys);
                v6.bgPrio = 1;
                v6.surface = 0;
                monReturnData->ballRotation = ov12_02237728(&v6);
            }
        }

        monReturnData->state = 5;
        PokemonSprite_StartFade(monReturnData->monSprite, 0, 16, 0, fadeColors[monReturnData->capturedBall]);

        switch (monReturnData->battlerType) {
        case 0:
        case 2:
        case 4:
            Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, -117);
            break;
        case 1:
        case 3:
        case 5:
            Sound_PlayPannedEffect(SEQ_SE_DP_BOWA2, 117);
            break;
        }
        break;
    case 5:
        if (PokemonSprite_IsFadeActive(monReturnData->monSprite) == 0) {
            monReturnData->state++;
        }
        break;
    case 6:
        PokemonSprite_AddAttribute(monReturnData->monSprite, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(monReturnData->monSprite, MON_SPRITE_SCALE_Y, -0x20);
        PokemonSprite_CalcScaledYOffset(monReturnData->monSprite, monReturnData->yOffset);

        if (PokemonSprite_GetAttribute(monReturnData->monSprite, MON_SPRITE_SCALE_X) <= 0x0) {
            PokemonSprite_Delete(monReturnData->monSprite);

            if (monReturnData->battlerType & 0x1) {
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
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_OpenCaptureBall(SysTask *task, void *param1)
{
    OpenCaptureBallData *captureOpenBallData = (OpenCaptureBallData *)param1;

    switch (captureOpenBallData->state) {
    case 0:
        PokemonSprite_AddAttribute(captureOpenBallData->monSprite, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(captureOpenBallData->monSprite, MON_SPRITE_SCALE_Y, -0x20);

        if (captureOpenBallData->yOffset) {
            captureOpenBallData->yOffset--;
            PokemonSprite_AddAttribute(captureOpenBallData->monSprite, MON_SPRITE_Y_CENTER, -1);
        }

        if (PokemonSprite_GetAttribute(captureOpenBallData->monSprite, MON_SPRITE_SCALE_X) <= 0x0) {
            PokemonSprite_Delete(captureOpenBallData->monSprite);
            captureOpenBallData->state++;
        }
        break;
    case 1:
        BattleController_EmitClearCommand(captureOpenBallData->battleSys, captureOpenBallData->battler, captureOpenBallData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_SetTrainerEncounter(SysTask *task, void *param1)
{
    TrainerEncounterData *trainerEncounterData = (TrainerEncounterData *)param1;
    s16 v1, v2, v3, v4;
    u32 battleType = BattleSystem_GetBattleType(trainerEncounterData->battleSys);

    if ((trainerEncounterData->unk_1C < 33) && (trainerEncounterData->state >= 2) && ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) || (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1))) {
        Bg_SetOffset(BattleSystem_GetBgConfig(trainerEncounterData->battleSys), 3, 1, 4);
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
        ManagedSprite_GetPositionXY(trainerEncounterData->unk_04->unk_00, &v1, &v2);
        ManagedSprite_GetPositionXY(trainerEncounterData->managedSprite, &v3, &v4);

        if (trainerEncounterData->face == FACE_FRONT) {
            if ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) || (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1)) {
                if (v1 < (24 * 8)) {
                    ManagedSprite_OffsetPositionXY(trainerEncounterData->unk_04->unk_00, 8, 0);
                } else {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 24 * 8, 8 * 11);
                }
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->unk_04->unk_00, &v1, &v2);

            if ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) || ((trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) && ((battleType == BATTLE_TYPE_TRAINER_DOUBLES) || (battleType == BATTLE_TYPE_FRONTIER_DOUBLES) || (battleType == ((BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER) | BATTLE_TYPE_DOUBLES))))) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, v1, v4);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                v1 = v3 - v1;
                v1 -= 24;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, -v1, 0);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                v1 = v1 - v3;
                v1 -= 16;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, v1, 0);
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->managedSprite, &v3, &v4);

            if (v3 >= trainerEncounterData->unk_10) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, trainerEncounterData->unk_10, v4);

                if ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_ENEMY) || (trainerEncounterData->battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1)) {
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
            if ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) || (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1)) {
                if (v1 > 64) {
                    ManagedSprite_OffsetPositionXY(trainerEncounterData->unk_04->unk_00, -8, 0);
                } else {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 64, 128 + 8);
                }
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->unk_04->unk_00, &v1, &v2);

            if ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) || ((trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) && ((battleType == BATTLE_TYPE_TRAINER_DOUBLES) || (battleType == BATTLE_TYPE_FRONTIER_DOUBLES) || (battleType == BATTLE_TYPE_TAG_DOUBLES) || (battleType == BATTLE_TYPE_LINK_DOUBLES)))) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, v1, v4);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                v1 = v1 - v3;
                v1 -= 24;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, v1, 0);
            } else if (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                v1 = v3 - v1;
                v1 -= 16;

                ManagedSprite_OffsetPositionXY(trainerEncounterData->managedSprite, -v1, 0);
            }

            ManagedSprite_GetPositionXY(trainerEncounterData->managedSprite, &v3, &v4);

            if (v3 <= trainerEncounterData->unk_10) {
                ManagedSprite_SetPositionXY(trainerEncounterData->managedSprite, trainerEncounterData->unk_10, v4);

                if ((trainerEncounterData->battlerType == BATTLER_TYPE_SOLO_PLAYER) || (trainerEncounterData->battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1)) {
                    ManagedSprite_SetPositionXY(trainerEncounterData->unk_04->unk_00, 64, 128 + 8);
                }

                trainerEncounterData->state = 4;
            }
        }
        break;
    case 3:
        if (ManagedSprite_IsAnimated(trainerEncounterData->managedSprite) == 1) {
            if (ov16_02264650(trainerEncounterData, trainerEncounterData->managedSprite) == 0) {
                break;
            }
        }

        trainerEncounterData->state = 4;
    case 4:
        BattleController_EmitClearCommand(trainerEncounterData->battleSys, trainerEncounterData->battler, trainerEncounterData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_ThrowTrainerBall(SysTask *task, void *param1)
{
    TrainerThrowBallData *trainerThrowBallData = (TrainerThrowBallData *)param1;
    s16 v1, v2;
    int v3;
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
            {
                BallThrow v6;

                switch (trainerThrowBallData->ballTypeIn) {
                default:
                case 1:
                    v6.type = 15;
                    trainerThrowBallData->unk_18 = 3;
                    v6.ballID = 5;
                    break;
                case 2:
                    v6.type = 12;
                    trainerThrowBallData->unk_18 = 0;
                    v6.ballID = (0xFF + 18);
                    break;
                case 3:
                    v6.type = 13;
                    trainerThrowBallData->unk_18 = 0;
                    v6.ballID = (0xFF + 19);
                    break;
                case 4:
                    v6.type = 15;
                    trainerThrowBallData->unk_18 = 3;
                    v6.ballID = (0xFF + 17);
                    break;
                }

                v6.heapID = HEAP_ID_BATTLE;
                v6.mode = 4;
                v6.target = trainerThrowBallData->battler;
                v6.cellActorSys = BattleSystem_GetSpriteSystem(trainerThrowBallData->battleSys);
                v6.paletteSys = BattleSystem_GetPaletteData(trainerThrowBallData->battleSys);
                v6.surface = 0;
                v6.battleSys = trainerThrowBallData->battleSys;

                trainerThrowBallData->battlerData->ballRotation = ov12_02237728(&v6);

                ov12_02237E34(trainerThrowBallData->battlerData->ballRotation, 100);
                ov12_02237E40(trainerThrowBallData->battlerData->ballRotation, 2);
                ov12_02237E30(trainerThrowBallData->battlerData->ballRotation, 0);

                ManagedSprite_SetAnimationFrame(trainerThrowBallData->battlerData->managedSprite, 0);
                ManagedSprite_SetAnim(trainerThrowBallData->battlerData->managedSprite, 1);
                ManagedSprite_SetAnimateFlag(trainerThrowBallData->battlerData->managedSprite, 1);

                trainerThrowBallData->state = 3;
            }
        }
        break;
    case 1:
        if (trainerThrowBallData->face == 2) {
            ManagedSprite_OffsetPositionXY(trainerThrowBallData->battlerData->managedSprite, 5, 0);
            ManagedSprite_GetPositionXY(trainerThrowBallData->battlerData->managedSprite, &v1, &v2);

            if ((v1 >= (256 - 48) - 48) && (ov12_02237890(trainerThrowBallData->battlerData->ballRotation) != 0)) {
                ov12_02237E0C(trainerThrowBallData->battlerData->ballRotation, 1);
                ov12_0223786C(trainerThrowBallData->battlerData->ballRotation, 0);

                if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
                    {
                        BattlerData *battlerData;

                        battlerData = BattleSystem_GetBattlerData(trainerThrowBallData->battleSys, BattleSystem_GetPartner(trainerThrowBallData->battleSys, trainerThrowBallData->battler));

                        ov12_02237E0C(battlerData->ballRotation, 1);
                        ov12_0223786C(battlerData->ballRotation, 0);
                        ov12_02237E4C(battlerData->ballRotation, 12);
                    }
                }
            } else if (v1 >= (256 + 40)) {
                {
                    SpriteManager *v8;

                    v8 = BattleSystem_GetSpriteManager(trainerThrowBallData->battleSys);
                    Sprite_DeleteAndFreeResources(trainerThrowBallData->battlerData->managedSprite);
                    trainerThrowBallData->battlerData->managedSprite = NULL;

                    SpriteManager_UnloadCharObjById(v8, 20015 + trainerThrowBallData->battlerData->battlerType);
                    SpriteManager_UnloadPlttObjById(v8, 20010 + trainerThrowBallData->battlerData->battlerType);
                    SpriteManager_UnloadCellObjById(v8, 20007 + trainerThrowBallData->battlerData->battlerType);
                    SpriteManager_UnloadAnimObjById(v8, 20007 + trainerThrowBallData->battlerData->battlerType);
                }
                trainerThrowBallData->state = 6;
            }
        } else {
            ManagedSprite_SetAnimationFrame(trainerThrowBallData->battlerData->managedSprite, 0);
            ManagedSprite_SetAnim(trainerThrowBallData->battlerData->managedSprite, 1);
            ManagedSprite_SetAnimateFlag(trainerThrowBallData->battlerData->managedSprite, 1);
            trainerThrowBallData->state = 2;
        }
        break;
    case 2:
        ManagedSprite_OffsetPositionXY(trainerThrowBallData->battlerData->managedSprite, -5, 0);
        ManagedSprite_GetPositionXY(trainerThrowBallData->battlerData->managedSprite, &v1, &v2);

        if (trainerThrowBallData->battlerData->ballRotation) {
            v3 = ManagedSprite_GetAnimationFrame(trainerThrowBallData->battlerData->managedSprite);

            if (v5[trainerThrowBallData->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E0C(trainerThrowBallData->battlerData->ballRotation, 1);
                ov12_02237E18(trainerThrowBallData->battlerData->ballRotation, v1 + v5[trainerThrowBallData->unk_0C][v3][0], v2 + v5[trainerThrowBallData->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(trainerThrowBallData->battlerData->ballRotation) != 0)) {
                    ov12_0223786C(trainerThrowBallData->battlerData->ballRotation, 0);
                    ov12_02237E30(trainerThrowBallData->battlerData->ballRotation, 1);

                    if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
                        {
                            BattlerData *battlerData;

                            battlerData = BattleSystem_GetBattlerData(trainerThrowBallData->battleSys, BattleSystem_GetPartner(trainerThrowBallData->battleSys, trainerThrowBallData->battler));

                            ov12_02237E18(battlerData->ballRotation, v1 + v5[trainerThrowBallData->unk_0C][v3][0], v2 + v5[trainerThrowBallData->unk_0C][v3][1]);
                            ov12_02237E0C(battlerData->ballRotation, 1);
                            ov12_0223786C(battlerData->ballRotation, 0);
                            ov12_02237E30(battlerData->ballRotation, 1);
                        }
                    }
                }
            }
        }

        if (v1 <= -40) {
            {
                SpriteManager *v10;

                v10 = BattleSystem_GetSpriteManager(trainerThrowBallData->battleSys);

                Sprite_DeleteAndFreeResources(trainerThrowBallData->battlerData->managedSprite);
                trainerThrowBallData->battlerData->managedSprite = NULL;

                SpriteManager_UnloadCharObjById(v10, 20015 + trainerThrowBallData->battlerData->battlerType);
                SpriteManager_UnloadPlttObjById(v10, 20010 + trainerThrowBallData->battlerData->battlerType);
                SpriteManager_UnloadCellObjById(v10, 20007 + trainerThrowBallData->battlerData->battlerType);
                SpriteManager_UnloadAnimObjById(v10, 20007 + trainerThrowBallData->battlerData->battlerType);
            }
            trainerThrowBallData->state = 6;
        }
        break;
    case 3:
        ManagedSprite_GetPositionXY(trainerThrowBallData->battlerData->managedSprite, &v1, &v2);
        v3 = ManagedSprite_GetAnimationFrame(trainerThrowBallData->battlerData->managedSprite);

        if (v3 == 4) {
            trainerThrowBallData->delay = 8;
            trainerThrowBallData->state = 4;
        } else if (trainerThrowBallData->battlerData->ballRotation != NULL) {
            if (v5[trainerThrowBallData->unk_0C][v3][0] != 0x7fff) {
                ov12_02237E18(trainerThrowBallData->battlerData->ballRotation, v1 + v5[trainerThrowBallData->unk_0C][v3][0], v2 + v5[trainerThrowBallData->unk_0C][v3][1]);

                if ((v3 == 3) && (ov12_02237890(trainerThrowBallData->battlerData->ballRotation) != trainerThrowBallData->unk_18)) {
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
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_SlideTrainerOut(SysTask *task, void *param1)
{
    SlideTrainerOutData *slideTrainerOutData = (SlideTrainerOutData *)param1;
    s16 v1;
    s16 v2;

    switch (slideTrainerOutData->state) {
    case 0:
        if (slideTrainerOutData->face == 2) {
            ManagedSprite_OffsetPositionXY(slideTrainerOutData->battlerData->managedSprite, 5, 0);
            ManagedSprite_GetPositionXY(slideTrainerOutData->battlerData->managedSprite, &v1, &v2);

            if (v1 >= (256 + 40)) {
                slideTrainerOutData->state++;
            }
        } else {
            ManagedSprite_OffsetPositionXY(slideTrainerOutData->battlerData->managedSprite, -5, 0);
            ManagedSprite_GetPositionXY(slideTrainerOutData->battlerData->managedSprite, &v1, &v2);

            if (v1 <= -40) {
                slideTrainerOutData->state++;
            }
        }
        break;
    case 1: {
        SpriteManager *v3;

        v3 = BattleSystem_GetSpriteManager(slideTrainerOutData->battleSys);
        Sprite_DeleteAndFreeResources(slideTrainerOutData->battlerData->managedSprite);
        slideTrainerOutData->battlerData->managedSprite = NULL;

        SpriteManager_UnloadCharObjById(v3, 20015 + slideTrainerOutData->battlerData->battlerType);
        SpriteManager_UnloadPlttObjById(v3, 20010 + slideTrainerOutData->battlerData->battlerType);
        SpriteManager_UnloadCellObjById(v3, 20007 + slideTrainerOutData->battlerData->battlerType);
        SpriteManager_UnloadAnimObjById(v3, 20007 + slideTrainerOutData->battlerData->battlerType);
    }
        BattleController_EmitClearCommand(slideTrainerOutData->battleSys, slideTrainerOutData->battler, slideTrainerOutData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_SlideTrainerIn(SysTask *task, void *param1)
{
    SlideTrainerInData *slideTrainerInData = (SlideTrainerInData *)param1;
    s16 v1, v2;

    switch (slideTrainerInData->state) {
    case 0:
        ManagedSprite_GetPositionXY(slideTrainerInData->managedSprite, &v1, &v2);

        if (slideTrainerInData->face == FACE_BACK) {
            v1 += 5;

            if (v1 >= slideTrainerInData->x) {
                v1 = slideTrainerInData->x;
                slideTrainerInData->state++;
            }
        } else {
            v1 -= 5;

            if (v1 <= slideTrainerInData->x) {
                v1 = slideTrainerInData->x;
                slideTrainerInData->state++;
            }
        }

        ManagedSprite_SetPositionXY(slideTrainerInData->managedSprite, v1, v2);
        break;
    case 1:
        BattleController_EmitClearCommand(slideTrainerInData->battleSys, slideTrainerInData->battler, slideTrainerInData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

enum SlideHealthbarInState {
    SLIDE_HEALTHBAR_IN_STATE_ENABLE = 0,
    SLIDE_HEALTHBAR_IN_STATE_WAIT,
    SLIDE_HEALTHBAR_IN_STATE_DONE,
};

/**
 * @brief Slide the healthbar in, then wait until it is done.
 *
 * @param task
 * @param data
 */
static void SysTask_SlideHealthbarIn(SysTask *task, void *data)
{
    Healthbar *healthbar = data;

    switch (healthbar->state) {
    case SLIDE_HEALTHBAR_IN_STATE_ENABLE:
        if (healthbar->delay > 0) {
            healthbar->delay--;
            break;
        }

        Healthbar_Scroll(healthbar, HEALTHBAR_SCROLL_IN);
        Healthbar_Enable(healthbar, TRUE);
        healthbar->state++;
        break;

    case SLIDE_HEALTHBAR_IN_STATE_WAIT:
        if (healthbar->doneScrolling == TRUE) {
            healthbar->state++;
        }
        break;

    default:
        BattleController_EmitClearCommand(healthbar->battleSys, healthbar->battler, healthbar->command);
        healthbar->task_10 = NULL;
        SysTask_Done(task);
        break;
    }
}

enum SlideHealthbarOutState {
    SLIDE_HEALTHBAR_OUT_STATE_WAIT = 0,
    SLIDE_HEALTHBAR_OUT_STATE_DONE,
};

/**
 * @brief Wait until the healthbar has slid out.
 *
 * @param task
 * @param data
 */
static void SysTask_SlideHealthbarOut(SysTask *task, void *data)
{
    Healthbar *healthbar = data;

    switch (healthbar->state) {
    case SLIDE_HEALTHBAR_OUT_STATE_WAIT:
        if (healthbar->doneScrolling == TRUE) {
            healthbar->state++;
        }
        break;

    default:
        BattleController_EmitClearCommand(healthbar->battleSys, healthbar->battler, healthbar->command);
        healthbar->task_10 = NULL;
        SysTask_Done(task);
        Healthbar_Enable(healthbar, FALSE);
        break;
    }
}

static void SysTask_PlayerSetCommandSelection(SysTask *task, void *param1)
{
    CommandSetData *commandSetData;
    BgConfig *v1;
    UnkStruct_ov16_02268A14 *v2;
    BattlerData *battlerData;
    u32 battleType;
    int v5;
    Healthbar *healthbar;

    commandSetData = (CommandSetData *)param1;
    v1 = BattleSystem_GetBgConfig(commandSetData->battleSys);
    v2 = ov16_0223E02C(commandSetData->battleSys);
    battlerData = BattleSystem_GetBattlerData(commandSetData->battleSys, commandSetData->battler);
    battleType = BattleSystem_GetBattleType(commandSetData->battleSys);
    v5 = BattleSystem_GetPartner(commandSetData->battleSys, commandSetData->battler);

    if (v5 != commandSetData->battler) {
        healthbar = BattleSystem_GetHealthbar(commandSetData->battleSys, v5);
    } else {
        healthbar = NULL;
    }

    switch (commandSetData->state) {
    case 0:

    {
        MoveDisplayInfo v7;
        int i;

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            v7.move[i] = commandSetData->moves[i];
            v7.curPP[i] = commandSetData->curPP[i];
            v7.maxPP[i] = commandSetData->maxPP[i];
        }

        ov16_0226AC98(ov16_0223E02C(commandSetData->battleSys), commandSetData->battlerType, &v7);
    }
        commandSetData->state++;

    case 1: {
        MessageLoader *v9;
        BattleMessage v10;

        v9 = BattleSystem_GetMessageLoader(commandSetData->battleSys);

        if (battleType & BATTLE_TYPE_CATCH_TUTORIAL) {
            switch (BattleSystem_GetCatchingTutorialLowHP(commandSetData->battleSys)) {
            case 0:
                v10.tags = 2;
                v10.params[0] = commandSetData->battler | (commandSetData->partySlot << 8);
                v10.id = 921;
                BattleMessage_Print(commandSetData->battleSys, v9, &v10, 0);
                commandSetData->state = 3;
                break;
            case 1:
                v10.tags = 0;
                v10.id = 1226 + BattleSystem_GetTrainerGender(commandSetData->battleSys, 0);
                commandSetData->msgIdx = BattleMessage_Print(commandSetData->battleSys, v9, &v10, BattleSystem_GetTextSpeed(commandSetData->battleSys));
                commandSetData->state = 2;
                break;
            }
        } else {
            if (battleType & BATTLE_TYPE_SAFARI) {
                v10.tags = 8;
                v10.params[0] = Battler_GetTrainerID(commandSetData->battleSys, commandSetData->battler);
                v10.id = 922;
            } else if (battleType & BATTLE_TYPE_PAL_PARK) {
                v10.tags = 8;
                v10.params[0] = Battler_GetTrainerID(commandSetData->battleSys, commandSetData->battler);
                v10.id = 1222;
            } else {
                v10.tags = 2;
                v10.params[0] = commandSetData->battler | (commandSetData->partySlot << 8);
                v10.id = 921;
            }

            BattleMessage_Print(commandSetData->battleSys, v9, &v10, 0);
            commandSetData->state = 3;
        }
    } break;
    case 2:
        if (Text_IsPrinterActive(commandSetData->msgIdx) == 0) {
            commandSetData->state = 3;
        }
        break;
    case 3:
        ov16_0226757C(commandSetData->healthbar);
        ov16_02264798(battlerData, commandSetData->battleSys);
        commandSetData->state = 4;
    case 4:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_ov16_02269668 v11;
            NARC *v12;
            NARC *v13;

            v12 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            v13 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

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
                    ov16_02268C04(v12, v13, v2, 6, 0, &v11);
                } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_PAL_PARK) {
                    ov16_02268C04(v12, v13, v2, 10, 0, &v11);
                } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_SAFARI) {
                    ov16_02268C04(v12, v13, v2, 8, 0, &v11);
                } else if ((v11.unk_00 == 4) && ((BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_2vs2) == FALSE)) {
                    ov16_02268C04(v12, v13, v2, 4, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 3, 0, &v11);
                }

                BattleSystem_SetCommandSelectionFlags(commandSetData->battleSys, 1);
            } else {
                if (BattleSystem_GetBattleStatusMask(commandSetData->battleSys) & BATTLE_STATUS_FIRST_BATTLE) {
                    ov16_02268C04(v12, v13, v2, 5, 0, &v11);
                } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_PAL_PARK) {
                    ov16_02268C04(v12, v13, v2, 9, 0, &v11);
                } else if (BattleSystem_GetBattleType(commandSetData->battleSys) & BATTLE_TYPE_SAFARI) {
                    ov16_02268C04(v12, v13, v2, 7, 0, &v11);
                } else if (v11.unk_00 != 4) {
                    ov16_02268C04(v12, v13, v2, 1, 0, &v11);
                } else {
                    ov16_02268C04(v12, v13, v2, 2, 0, &v11);
                }

                battlerData->unk_193 = 1;
            }

            ov16_0226914C(v2, commandSetData->expPercents);
            ov16_02269168(v2, commandSetData->ballStatus[0], commandSetData->ballStatus[1]);
            ov16_022691BC(v2);
            NARC_dtor(v12);
            NARC_dtor(v13);
        }

        if (healthbar != NULL) {
            ov16_02268468(healthbar);
        }

        commandSetData->state = 5;
        break;
    case 5:
        if (gSystem.pressedKeys & PAD_BUTTON_START) {
            BattlerData *battlerData;
            int i;

            for (i = 0; i < BattleSystem_GetMaxBattlers(commandSetData->battleSys); i++) {
                battlerData = BattleSystem_GetBattlerData(commandSetData->battleSys, i);
                ov16_0226737C(&battlerData->healthbar);
            }
        }

        commandSetData->input = BattleSystem_MenuInput(v2);

        if (commandSetData->input != 0xffffffff) {
            commandSetData->unused_0B = 10; // set but never used
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            commandSetData->state = 6;
        }
        break;
    case 6:
        if ((ov16_02269348(v2) == 1) || (commandSetData->input == 1)) {
            switch (commandSetData->input) {
            case 1: // Fight
                if (BattleSystem_GetBattleType(commandSetData->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
                    commandSetData->state = 7;
                }
                break;
            case 2: { // Bag
                NARC *v16 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v17 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_02268C04(v16, v17, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(healthbar);
                ov16_022675AC(commandSetData->healthbar);
                ov16_022647D8(battlerData);
                NARC_dtor(v16);
                NARC_dtor(v17);
            } break;
            case 3: { // Pokemon
                NARC *v18 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v19 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_02268C04(v18, v19, v2, 0, 0, NULL);
                ov16_0226BCCC(v2, 0);
                ov16_0226846C(healthbar);
                ov16_022675AC(commandSetData->healthbar);
                ov16_022647D8(battlerData);
                NARC_dtor(v18);
                NARC_dtor(v19);
            } break;
            case 4: { // Run
                NARC *v20 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v21 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                if (ov16_0226D088(v2) == 1) {
                    ov16_0226846C(healthbar);
                    commandSetData->input = 0xff;
                }

                ov16_02268C04(v20, v21, v2, 0, 0, NULL);
                NARC_dtor(v20);
                NARC_dtor(v21);
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
            NARC *v22 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *v23 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            ov16_02268C04(v22, v23, v2, 0, 0, NULL);
            ov16_0226BCCC(v2, 0);
            ov16_0226846C(healthbar);
            ov16_022675AC(commandSetData->healthbar);
            ov16_022647D8(battlerData);
            ov16_02269218(v2);

            commandSetData->state = 8;

            NARC_dtor(v22);
            NARC_dtor(v23);
        }
        break;
    case 8:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(commandSetData->battleSys, commandSetData->battler, commandSetData->input);
            BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);
            Heap_Free(param1);
            SysTask_Done(task);
        }
        break;
    }
}

static void SysTask_TrainerSetCommandSelection(SysTask *task, void *param1)
{
    CommandSetData *commandSetData = (CommandSetData *)param1;
    int v1 = TrainerAI_PickCommand(commandSetData->battleSys, commandSetData->battler);

    ov16_022656D4(commandSetData->battleSys, commandSetData->battler, v1);
    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_LinkSetCommandSelection(SysTask *task, void *param1)
{
    CommandSetData *commandSetData = (CommandSetData *)param1;

    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);
    Heap_Free(param1);
    SysTask_Done(task);
}

static const u8 Unk_ov16_0226F194[][2] = {
    { 0xA, 0x28 },
    { 0xA, 0x23 },
    { 0xA, 0x1E },
    { 0xA, 0x19 },
    { 0xA, 0x14 },
    { 0xA, 0xF },
    { 0xA, 0xA },
    { 0xF, 0xA },
    { 0x14, 0xA },
    { 0x19, 0xA },
    { 0x1E, 0xA },
    { 0x23, 0xA },
    { 0x28, 0xA }
};

static void SysTask_SafariPokemonSetCommandSelection(SysTask *task, void *param1)
{
    CommandSetData *commandSetData = (CommandSetData *)param1;
    int v1;
    u16 v2;
    u8 v3 = BattleSystem_GetSafariEscapeCount(commandSetData->battleSys);
    v2 = BattleMon_Get(BattleSystem_GetBattleContext(commandSetData->battleSys), commandSetData->battler, 0, NULL);
    v1 = SpeciesData_GetSpeciesValue(v2, SPECIES_DATA_SAFARI_FLEE_RATE);
    v1 = v1 * Unk_ov16_0226F194[v3][0] / Unk_ov16_0226F194[v3][1];

    if ((BattleSystem_RandNext(commandSetData->battleSys) % 255) <= v1) {
        ov16_022656D4(commandSetData->battleSys, commandSetData->battler, 4);
    } else {
        ov16_022656D4(commandSetData->battleSys, commandSetData->battler, 5);
    }

    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_PalParkPokemonSetCommandSelection(SysTask *task, void *param1)
{
    CommandSetData *commandSetData = (CommandSetData *)param1;

    ov16_022656D4(commandSetData->battleSys, commandSetData->battler, 4);
    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_RecordingSetCommandSelection(SysTask *task, void *param1)
{
    CommandSetData *commandSetData = (CommandSetData *)param1;
    u8 v1;

    if (ov16_0223F530(commandSetData->battleSys, commandSetData->battler, &v1) == 1) {
        ov16_0226474C(commandSetData->battleSys);
    }

    if ((!v1) || (v1 > 4) || (v1 == 2)) {
        ov16_02264730(commandSetData->battleSys);
    }

    ov16_022656D4(commandSetData->battleSys, commandSetData->battler, v1);
    BattleController_EmitClearCommand(commandSetData->battleSys, commandSetData->battler, commandSetData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_PlayerShowMoveSelectMenu(SysTask *task, void *param1)
{
    MoveSelectMenuData *moveSelectMenuData = (MoveSelectMenuData *)param1;
    BgConfig *v1 = BattleSystem_GetBgConfig(moveSelectMenuData->battleSys);
    UnkStruct_ov16_02268A14 *v2;
    int v3;
    Healthbar *healthbar;
    BattlerData *battlerData;

    v2 = ov16_0223E02C(moveSelectMenuData->battleSys);
    battlerData = BattleSystem_GetBattlerData(moveSelectMenuData->battleSys, moveSelectMenuData->battler);
    v3 = BattleSystem_GetPartner(moveSelectMenuData->battleSys, moveSelectMenuData->battler);

    if (v3 != moveSelectMenuData->battler) {
        healthbar = BattleSystem_GetHealthbar(moveSelectMenuData->battleSys, v3);
    } else {
        healthbar = NULL;
    }

    switch (moveSelectMenuData->state) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            MessageLoader *v6;
            BattleMessage v7;

            v6 = BattleSystem_GetMessageLoader(moveSelectMenuData->battleSys);
            v7.tags = 2;
            v7.params[0] = moveSelectMenuData->battler | (moveSelectMenuData->partySlot << 8);
            v7.id = 921;

            BattleMessage_Print(moveSelectMenuData->battleSys, v6, &v7, 0);
        }

        ov16_02269218(v2);

        {
            UnkStruct_ov16_02260C00 v8;
            int i;
            NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *v11 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            for (i = 0; i < 4; i++) {
                v8.moveIDs[i] = moveSelectMenuData->moves[i];
                v8.unk_08[i] = moveSelectMenuData->ppCur[i];
                v8.unk_0C[i] = moveSelectMenuData->ppMax[i];
            }

            v8.unk_10 = moveSelectMenuData->battlerType;

            ov16_02268C04(v10, v11, v2, 11, 0, &v8);
            NARC_dtor(v10);
            NARC_dtor(v11);
        }
        moveSelectMenuData->state++;
        break;
    case 1:
        moveSelectMenuData->input = BattleSystem_MenuInput(v2);

        if (moveSelectMenuData->input != 0xffffffff) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            moveSelectMenuData->state++;
        }
        break;
    case 2:
        if (1) {
            if (moveSelectMenuData->input != 0xff) {
                if ((BattleSystem_GetBattleType(moveSelectMenuData->battleSys) & BATTLE_TYPE_DOUBLES) == FALSE) {
                    ov16_0226BCCC(v2, 0);
                    ov16_0226846C(healthbar);
                    ov16_022675AC(moveSelectMenuData->healthbar);
                    ov16_022647D8(battlerData);
                }
            }

            ov16_02265790(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->input);
            moveSelectMenuData->state++;
        }
        break;
    case 3:
        moveSelectMenuData->state++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            BattleSystem_SetCatchingTutorialLowHP(moveSelectMenuData->battleSys, 1);
            BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);
            Heap_Free(param1);
            SysTask_Done(task);
        }
        break;
    }
}

static void SysTask_TrainerShowMoveSelectMenu(SysTask *task, void *param1)
{
    MoveSelectMenuData *moveSelectMenuData = (MoveSelectMenuData *)param1;
    BattleContext *v1;
    int v2;
    u32 battleType = BattleSystem_GetBattleType(moveSelectMenuData->battleSys);
    v1 = BattleSystem_GetBattleContext(moveSelectMenuData->battleSys);

    if ((battleType & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_ROAMER))
        || (BattleSystem_GetBattleStatusMask(moveSelectMenuData->battleSys) & BATTLE_STATUS_FIRST_BATTLE)
        || BattleSystem_GetBattlerSide(moveSelectMenuData->battleSys, moveSelectMenuData->battler) == 0) {
        v2 = TrainerAI_Main(moveSelectMenuData->battleSys, moveSelectMenuData->battler);

        switch (v2) {
        case 0xff:
            return;
            break;
        default:
            v2++;
            break;
        }
    } else {
        {
            int i;
            int v5[4];
            int v6;

            v6 = 0;

            for (i = 0; i < 4; i++) {
                if ((moveSelectMenuData->invalidMoves & FlagIndex(i)) == 0) {
                    v5[v6] = i + 1;
                    v6++;
                }
            }

            v2 = v5[BattleSystem_RandNext(moveSelectMenuData->battleSys) % v6];
        }

        BattleContext_Set(moveSelectMenuData->battleSys, v1, 11, moveSelectMenuData->battler, BattleSystem_Defender(moveSelectMenuData->battleSys, v1, moveSelectMenuData->battler, moveSelectMenuData->moves[v2 - 1], 1, NULL));
    }

    ov16_02265790(moveSelectMenuData->battleSys, moveSelectMenuData->battler, v2);
    BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_LinkShowMoveSelectMenu(SysTask *task, void *param1)
{
    MoveSelectMenuData *moveSelectMenuData = (MoveSelectMenuData *)param1;

    BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);
    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_RecordingShowMoveSelectMenu(SysTask *task, void *param1)
{
    MoveSelectMenuData *moveSelectMenuData = (MoveSelectMenuData *)param1;
    u8 v1;

    if (ov16_0223F530(moveSelectMenuData->battleSys, moveSelectMenuData->battler, &v1) == 1) {
        ov16_0226474C(moveSelectMenuData->battleSys);
    }

    if ((!v1) || (v1 > 4)) {
        ov16_02264730(moveSelectMenuData->battleSys);
    } else {
        {
            u16 v2;

            v2 = BattleMon_Get(BattleSystem_GetBattleContext(moveSelectMenuData->battleSys), moveSelectMenuData->battler, 6 + (v1 - 1), NULL);

            if ((!v2) || (v2 > 467)) {
                ov16_02264730(moveSelectMenuData->battleSys);
            }
        }
    }

    ov16_02265790(moveSelectMenuData->battleSys, moveSelectMenuData->battler, v1);
    BattleController_EmitClearCommand(moveSelectMenuData->battleSys, moveSelectMenuData->battler, moveSelectMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_PlayerShowTargetSelectMenu(SysTask *task, void *param1)
{
    TargetSelectMenuData *targetSelectMenuData = (TargetSelectMenuData *)param1;
    BgConfig *v1 = BattleSystem_GetBgConfig(targetSelectMenuData->battleSys);
    UnkStruct_ov16_02268A14 *v2;
    int v3;
    Healthbar *healthbar;
    BattlerData *battlerData = BattleSystem_GetBattlerData(targetSelectMenuData->battleSys, targetSelectMenuData->battler);
    v2 = ov16_0223E02C(targetSelectMenuData->battleSys);
    v3 = BattleSystem_GetPartner(targetSelectMenuData->battleSys, targetSelectMenuData->battler);

    if (v3 != targetSelectMenuData->battler) {
        healthbar = BattleSystem_GetHealthbar(targetSelectMenuData->battleSys, v3);
    } else {
        healthbar = NULL;
    }

    switch (targetSelectMenuData->state) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        {
            UnkStruct_ov16_02260F14 v6;
            int i;
            NARC *v8 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            NARC *v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            for (i = 0; i < 4; i++) {
                v6.unk_00[i] = targetSelectMenuData->targetMon[i];
            }

            v6.unk_20 = targetSelectMenuData->battlerType;
            v6.unk_21 = ov16_02269368(targetSelectMenuData->range, targetSelectMenuData->battlerType);

            ov16_02268C04(v8, v9, v2, 12, 0, &v6);
            NARC_dtor(v8);
            NARC_dtor(v9);
        }

        targetSelectMenuData->state++;
        break;
    case 1:
        targetSelectMenuData->input = BattleSystem_MenuInput(v2);

        if (targetSelectMenuData->input != 0xffffffff) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            targetSelectMenuData->state++;
        }
        break;
    case 2:
        if (1) {
            if (targetSelectMenuData->input != 0xff) {
                ov16_022675AC(targetSelectMenuData->healthbar);
                ov16_022647D8(battlerData);
                ov16_0226846C(healthbar);

                if (targetSelectMenuData->unk_32 == 1) {
                    ov16_0226BCCC(v2, 0);
                }
            }

            targetSelectMenuData->state++;
        }
        break;
    case 3:
        targetSelectMenuData->state++;
    default:
        if (ov16_0226BCD0(v2) == 1) {
            {
                u8 v10[6];
                u32 battleType;
                int v12;

                v12 = targetSelectMenuData->input;
                battleType = BattleSystem_GetBattleType(targetSelectMenuData->battleSys);

                if (v12 != 0xff) {
                    ov16_0223F858(targetSelectMenuData->battleSys, &v10[0]);

                    if (battleType & BATTLE_TYPE_DOUBLES) {
                        v12 = v10[2 + (targetSelectMenuData->input - 1)] + 1;
                    } else {
                        v12 = v10[0 + (targetSelectMenuData->input - 1)] + 1;
                    }
                }

                ov16_022658CC(targetSelectMenuData->battleSys, targetSelectMenuData->battler, v12);
                BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);
                Heap_Free(param1);
                SysTask_Done(task);
            }
        }
        break;
    }
}

static void SysTask_TrainerShowTargetSelectMenu(SysTask *task, void *param1)
{
    TargetSelectMenuData *targetSelectMenuData = (TargetSelectMenuData *)param1;
    BattleContext *v1;
    int v2;

    v1 = BattleSystem_GetBattleContext(targetSelectMenuData->battleSys);
    v2 = BattleContext_Get(targetSelectMenuData->battleSys, v1, 11, targetSelectMenuData->battler) + 1;

    GF_ASSERT(v2 < 5);

    ov16_022658CC(targetSelectMenuData->battleSys, targetSelectMenuData->battler, v2);
    BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_LinkShowTargetSelectMenu(SysTask *task, void *param1)
{
    TargetSelectMenuData *targetSelectMenuData = (TargetSelectMenuData *)param1;

    BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_RecordingShowTargetSelectMenu(SysTask *task, void *param1)
{
    TargetSelectMenuData *targetSelectMenuData = (TargetSelectMenuData *)param1;
    u8 v1;

    if (ov16_0223F530(targetSelectMenuData->battleSys, targetSelectMenuData->battler, &v1) == 1) {
        ov16_0226474C(targetSelectMenuData->battleSys);
    }

    if ((!v1) || (v1 > 4)) {
        ov16_02264730(targetSelectMenuData->battleSys);
    } else {
        {
            int v2 = v1 - 1;

            switch (targetSelectMenuData->range) {
            case 0x0:

                if (targetSelectMenuData->battler == v2) {
                    ov16_02264730(targetSelectMenuData->battleSys);
                }
                break;
            case 0x200:

                if (BattleSystem_GetBattlerSide(targetSelectMenuData->battleSys, targetSelectMenuData->battler) != BattleSystem_GetBattlerSide(targetSelectMenuData->battleSys, v2)) {
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
    }

    ov16_022658CC(targetSelectMenuData->battleSys, targetSelectMenuData->battler, v1);
    BattleController_EmitClearCommand(targetSelectMenuData->battleSys, targetSelectMenuData->battler, targetSelectMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_PlayerShowBagMenu(SysTask *task, void *param1)
{
    BagMenuData *bagMenuData = (BagMenuData *)param1;
    PaletteData *v1 = BattleSystem_GetPaletteData(bagMenuData->battleSys);

    switch (bagMenuData->state) {
    case 0:
        bagMenuData->isCursorEnabled = ov16_0226CD08(ov16_0223E02C(bagMenuData->battleSys));
        sub_02015738(ov16_0223E220(bagMenuData->battleSys), 1);
        PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 0, 7, 0x0);
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 0, 16, 0x0);
        bagMenuData->state++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            {
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
    case 4: {
        int i;
        int v3 = 0;
        int v4;
        Party *v5 = BattleSystem_GetParty(bagMenuData->battleSys, bagMenuData->battler);
        Pokemon *v6;

        if ((BattleSystem_GetBattleType(bagMenuData->battleSys) & BATTLE_TYPE_DOUBLES) && ((BattleSystem_GetBattleType(bagMenuData->battleSys) & BATTLE_TYPE_2vs2) == 0)) {
            v4 = bagMenuData->battler & 1;
        } else {
            v4 = bagMenuData->battler;
        }

        Party_InitWithCapacity(bagMenuData->partyMenuData->battlePartyCtx->party, 6);

        for (i = 0; i < Party_GetCurrentCount(v5); i++) {
            v6 = BattleSystem_GetPartyPokemon(bagMenuData->battleSys, v4, bagMenuData->partyOrder[v4][i]);
            Party_AddPokemon(bagMenuData->partyMenuData->battlePartyCtx->party, v6);
            bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[i] = bagMenuData->partyOrder[v4][i];
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
    } break;
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
        PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 7, 0, 0x0);
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 16, 0, 0x0);
        bagMenuData->state++;
        break;
    case 7:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            sub_02015738(ov16_0223E220(bagMenuData->battleSys), 0);

            if (bagMenuData->battleBagCtx->selectedBattleBagItem) {
                bagMenuData->state = 9;

                switch (bagMenuData->battleBagCtx->selectedBattleBagPocket) {
                case BATTLE_POCKET_INDEX_RECOVER_STATUS:
                    if ((bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_REVIVE) || (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_MAX_REVIVE)) {
                        bagMenuData->state = 8;
                    } else if (((bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 2) && ((BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TRAINER_DOUBLES) || (BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TAG_DOUBLES))) || (bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 1)) {
                        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_FULL_RESTORE) {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == 1) {
                                bagMenuData->stateAfterDelay = 17;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                bagMenuData->stateAfterDelay = 21;
                            }
                        } else {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == 1) {
                                bagMenuData->stateAfterDelay = 25;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                bagMenuData->stateAfterDelay = 29;
                            }
                        }
                    } else {
                        bagMenuData->state = 8;
                    }
                    break;
                case BATTLE_POCKET_INDEX_RECOVER_HP_PP:
                    if ((((bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 2) && ((BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TRAINER_DOUBLES) || (BattleSystem_GetBattleType(bagMenuData->battleSys) == BATTLE_TYPE_TAG_DOUBLES))) || (bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex < 1)) && (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HP_RESTORE, HEAP_ID_BATTLE))) {
                        if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == 1) {
                            bagMenuData->stateAfterDelay = 17;
                        } else {
                            Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                            bagMenuData->stateAfterDelay = 21;
                        }
                    } else {
                        bagMenuData->state = 8;
                    }
                    break;
                case BATTLE_POCKET_INDEX_BATTLE_ITEMS:
                    if ((bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_POKE_DOLL) || (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_FLUFFY_TAIL)) {
                        bagMenuData->state = 8;
                    } else {
                        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_GUARD_SPEC) {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == 1) {
                                bagMenuData->stateAfterDelay = 13;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
                                bagMenuData->stateAfterDelay = 15;
                            }
                        } else {
                            if (BattleSystem_AreAnimationsOn(bagMenuData->battleSys) == 1) {
                                bagMenuData->stateAfterDelay = 11;
                            } else {
                                Sound_PlayPannedEffect(SEQ_SE_DP_KAIFUKU, -117);
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
                BattleSystem_LoadFightOverlay(bagMenuData->battleSys, 0);
            }
        }
        break;
    case 8: {
        BattleItemUse v7;

        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_NONE) {
            v7.item = 0xff;
        } else {
            v7.item = bagMenuData->battleBagCtx->selectedBattleBagItem;
            v7.category = bagMenuData->battleBagCtx->selectedBattleBagPocket;

            if ((bagMenuData->battleBagCtx->selectedBattleBagPocket == BATTLE_POCKET_INDEX_RECOVER_STATUS) || (bagMenuData->battleBagCtx->selectedBattleBagPocket == BATTLE_POCKET_INDEX_RECOVER_HP_PP)) {
                v7.target = 1 + bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex];
            }
        }

        ov16_02265A70(bagMenuData->battleSys, bagMenuData->battler, v7);
        BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

        Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
        Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
        Heap_Free(bagMenuData->partyMenuData);
        Heap_Free(bagMenuData->battleBagCtx);
        Heap_Free(param1);
        SysTask_Done(task);
    } break;
    case 9: {
        MessageLoader *v8;
        BattleMessage v9;

        v9.id = 1206;
        v9.tags = 5;
        v9.params[0] = bagMenuData->battleBagCtx->selectedBattleBagItem;

        v8 = BattleSystem_GetMessageLoader(bagMenuData->battleSys);

        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, v8, &v9, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;
        bagMenuData->state++;
    } break;
    case 10:
        if (Text_IsPrinterActive(bagMenuData->msgIdx) == 0) {
            if (--bagMenuData->delay == 0) {
                bagMenuData->state = bagMenuData->stateAfterDelay;
            }
        }
        break;
    case 11: {
        MoveAnimation v10;

        BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &v10, 1, 9, bagMenuData->battler, bagMenuData->battler, NULL);
        ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &v10);
    }
        bagMenuData->state++;
        break;
    case 17:
    case 25: {
        MoveAnimation v11;
        int v12;

        v12 = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &v11, 1, 9, v12, v12, NULL);
        ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, v12), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &v11);
    }
        bagMenuData->state++;
        break;
    case 13: {
        MoveAnimation v13;

        if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_GUARD_SPEC) {
            BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &v13, 0, NULL, bagMenuData->battler, bagMenuData->battler, 54);
            ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &v13);
        } else if (bagMenuData->battleBagCtx->selectedBattleBagItem == ITEM_DIRE_HIT) {
            BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &v13, 0, NULL, bagMenuData->battler, bagMenuData->battler, 116);
            ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &v13);
        } else {
            BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &v13, 1, 12, bagMenuData->battler, bagMenuData->battler, NULL);
            ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, bagMenuData->battler), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &v13);
        }

        bagMenuData->state++;
    } break;
    case 15: {
        MessageLoader *v14;
        BattleMessage v15;

        v15.id = 1203;
        v15.tags = 12;
        v15.params[0] = bagMenuData->battler | (bagMenuData->partyMenuData->partySlots[bagMenuData->battler] << 8);

        switch (bagMenuData->battleBagCtx->selectedBattleBagItem) {
        case ITEM_X_ATTACK:
            v15.params[1] = 0x1;
            break;
        case ITEM_X_DEFENSE:
            v15.params[1] = 0x2;
            break;
        case ITEM_X_SPEED:
            v15.params[1] = 0x3;
            break;
        case ITEM_X_ACCURACY:
            v15.params[1] = 0x6;
            break;
        case ITEM_X_SPECIAL:
            v15.params[1] = 0x4;
            break;
        case ITEM_X_SP_DEF:
            v15.params[1] = 0x5;
            break;
        case ITEM_GUARD_SPEC:
            v15.id = 1204;
            v15.tags = 0;
            break;
        case ITEM_DIRE_HIT:
            v15.id = 1205;
            v15.tags = 2;
            break;
        }

        v14 = BattleSystem_GetMessageLoader(bagMenuData->battleSys);
        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, v14, &v15, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;
    }
        bagMenuData->state++;
        break;
    case 19:
    case 27: {
        MoveAnimation v16;
        int v17;

        v17 = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        BattleController_SetMoveAnimation(bagMenuData->battleSys, NULL, &v16, 1, 14, v17, v17, NULL);
        ov16_02264408(bagMenuData->battleSys, BattleSystem_GetBattlerData(bagMenuData->battleSys, v17), BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys), &v16);
    }
        bagMenuData->state++;
        break;
    case 21: {
        Healthbar *healthbar;
        Pokemon *v19;
        int v20;
        int v21;

        v20 = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        v21 = bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex];

        healthbar = BattleSystem_GetHealthbar(bagMenuData->battleSys, v20);
        MI_CpuClear8(&healthbar->state, sizeof(u8));
        healthbar->type = Healthbar_Type(BattleSystem_GetBattlerType(bagMenuData->battleSys, v20), BattleSystem_GetBattleType(bagMenuData->battleSys));

        v19 = BattleSystem_GetPartyPokemon(bagMenuData->battleSys, v20, v21);
        healthbar->curHP = Pokemon_GetValue(v19, MON_DATA_HP, NULL) - bagMenuData->partyMenuData->battlePartyCtx->currentDamage;
        healthbar->maxHP = Pokemon_GetValue(v19, MON_DATA_MAX_HP, NULL);
        healthbar->damage = bagMenuData->partyMenuData->battlePartyCtx->currentDamage;

        if (Pokemon_GetValue(v19, MON_DATA_STATUS, NULL) == 0) {
            healthbar->status = 0;
        }

        Healthbar_CalcHP(healthbar, healthbar->damage);
    }
        bagMenuData->state++;
        break;
    case 22: {
        Healthbar *healthbar;
        int v23;

        v23 = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        healthbar = BattleSystem_GetHealthbar(bagMenuData->battleSys, v23);

        if (ov16_022674F8(healthbar) == -1) {
            Healthbar_DrawInfo(healthbar, NULL, HEALTHBAR_INFO_STATUS);
            bagMenuData->state++;
        }
    } break;
    case 23: {
        MessageLoader *v24;
        BattleMessage v25;
        int v26;

        v24 = BattleSystem_GetMessageLoader(bagMenuData->battleSys);
        v26 = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;

        if (bagMenuData->partyMenuData->battlePartyCtx->currentDamage) {
            v25.id = 1214;
            v25.tags = 17;
            v25.params[0] = v26 | (bagMenuData->partyMenuData->partySlots[v26] << 8);
            v25.params[1] = bagMenuData->partyMenuData->battlePartyCtx->currentDamage;
        } else {
            v25.id = 1250;
            v25.tags = 2;
            v25.params[0] = v26 | (bagMenuData->partyMenuData->partySlots[v26] << 8);
        }

        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, v24, &v25, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
        bagMenuData->delay = 30;

        bagMenuData->state++;
    } break;
    case 29: {
        Healthbar *healthbar;
        int v28;
        MessageLoader *v29;
        BattleMessage v30;
        int v31;
        int v32 = 0;
        Pokemon *v33;
        int v34;

        v28 = bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex * 2;
        healthbar = BattleSystem_GetHealthbar(bagMenuData->battleSys, v28);
        v34 = bagMenuData->partyMenuData->battlePartyCtx->pokemonPartySlots[bagMenuData->partyMenuData->battlePartyCtx->selectedPartyIndex];
        v33 = BattleSystem_GetPartyPokemon(bagMenuData->battleSys, v28, v34);

        if (Pokemon_GetValue(v33, MON_DATA_STATUS, NULL) == 0) {
            healthbar->status = 0;
        }

        Healthbar_DrawInfo(healthbar, healthbar->curHP, HEALTHBAR_INFO_STATUS);

        v30.tags = 2;
        v30.params[0] = v28 | (bagMenuData->partyMenuData->partySlots[v28] << 8);

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_SLEEP, HEAP_ID_BATTLE)) {
            v31 = 0;
            v32++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_POISON, HEAP_ID_BATTLE)) {
            v31 = 1;
            v32++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_BURN, HEAP_ID_BATTLE)) {
            v31 = 2;
            v32++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_FREEZE, HEAP_ID_BATTLE)) {
            v31 = 3;
            v32++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_PARALYSIS, HEAP_ID_BATTLE)) {
            v31 = 4;
            v32++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_CONFUSION, HEAP_ID_BATTLE)) {
            v31 = 5;
            v32++;
        }

        if (Item_LoadParam(bagMenuData->battleBagCtx->selectedBattleBagItem, ITEM_PARAM_HEAL_ATTRACT, HEAP_ID_BATTLE)) {
            v31 = 6;
            v32++;
        }

        if (v32 != 1) {
            v30.id = 1229;
        } else {
            switch (v31) {
            case 0:
                v30.id = 1210;
                break;
            case 1:
                v30.id = 1207;
                break;
            case 2:
                v30.id = 1209;
                break;
            case 3:
                v30.id = 1211;
                break;
            case 4:
                v30.id = 1208;
                break;
            case 5:
                v30.id = 1212;
                break;
            case 6:
                v30.id = 1213;
                break;
            }
        }

        v29 = BattleSystem_GetMessageLoader(bagMenuData->battleSys);
        bagMenuData->msgIdx = BattleMessage_Print(bagMenuData->battleSys, v29, &v30, BattleSystem_GetTextSpeed(bagMenuData->battleSys));
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

        if (BattleAnimSystem_IsMoveActive(BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys)) == 0) {
            BattleAnimSystem_FreeScriptData(BattleSystem_GetBattleAnimSystem(bagMenuData->battleSys));
            bagMenuData->state++;
        }
        break;
    case 16:
    case 24:
    case 30:
        if (Text_IsPrinterActive(bagMenuData->msgIdx) == 0) {
            if (--bagMenuData->delay == 0) {
                BattleSystem_LoadFightOverlay(bagMenuData->battleSys, 1);
                bagMenuData->state = 8;
            }
        }
        break;
    }
}

static void SysTask_TrainerShowBagMenu(SysTask *task, void *param1)
{
    BagMenuData *bagMenuData = (BagMenuData *)param1;
    BattleItemUse v1;

    v1.item = 1;

    ov16_02265A70(bagMenuData->battleSys, bagMenuData->battler, v1);
    BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
    Heap_Free(bagMenuData->partyMenuData);
    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_LinkShowBagMenu(SysTask *task, void *param1)
{
    BagMenuData *bagMenuData = (BagMenuData *)param1;

    BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
    Heap_Free(bagMenuData->partyMenuData);
    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_RecordingShowBagMenu(SysTask *task, void *param1)
{
    BagMenuData *bagMenuData = (BagMenuData *)param1;
    BattleItemUse v1;
    u8 v2;

    if (ov16_0223F530(bagMenuData->battleSys, bagMenuData->battler, &v2) == 1) {
        ov16_0226474C(bagMenuData->battleSys);
    }

    v1.item = v2;

    if (ov16_0223F530(bagMenuData->battleSys, bagMenuData->battler, &v2) == 1) {
        ov16_0226474C(bagMenuData->battleSys);
    }

    v1.item |= (v2 << 8);

    if (ov16_0223F530(bagMenuData->battleSys, bagMenuData->battler, &v2) == 1) {
        ov16_0226474C(bagMenuData->battleSys);
    }

    v1.category = v2 & 0xf;
    v1.target = (v2 & 0xf0) >> 8;

    ov16_02265A70(bagMenuData->battleSys, bagMenuData->battler, v1);
    BattleController_EmitClearCommand(bagMenuData->battleSys, bagMenuData->battler, bagMenuData->command);

    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx->party);
    Heap_Free(bagMenuData->partyMenuData->battlePartyCtx);
    Heap_Free(bagMenuData->partyMenuData);
    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_PlayerShowPartyMenu(SysTask *task, void *param1)
{
    PartyMenuData *partyMenuData = (PartyMenuData *)param1;
    PaletteData *v1 = BattleSystem_GetPaletteData(partyMenuData->battleSys);

    switch (partyMenuData->state) {
    case 0:

    {
        Window *v2 = BattleSystem_GetWindow(partyMenuData->battleSys, 0);

        Window_FillTilemap(v2, 0xff);
        Window_LoadTiles(v2);
    }

        partyMenuData->isCursorEnabled = ov16_0226CD08(ov16_0223E02C(partyMenuData->battleSys));
        sub_02015738(ov16_0223E220(partyMenuData->battleSys), 1);
        PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 0, 7, 0x0);
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 0, 16, 0x0);
        partyMenuData->state++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            {
                int i;
                int v4 = 0;
                int v5;
                int v6, v7;
                Party *v8;
                Pokemon *v9, *v10;

                ov16_0223B384(partyMenuData->battleSys);

                partyMenuData->battlePartyCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattlePartyContext));
                partyMenuData->battlePartyCtx->party = Party_New(HEAP_ID_BATTLE);

                if (((BattleSystem_GetBattleType(partyMenuData->battleSys) & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) || (BattleSystem_GetBattleType(partyMenuData->battleSys) == ((BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI) | BATTLE_TYPE_FRONTIER))) {
                    if (BattleSystem_GetBattlerType(partyMenuData->battleSys, partyMenuData->battler) == 2) {
                        v6 = partyMenuData->battler;
                        v7 = BattleSystem_GetPartner(partyMenuData->battleSys, partyMenuData->battler);
                    } else {
                        v6 = BattleSystem_GetPartner(partyMenuData->battleSys, partyMenuData->battler);
                        v7 = partyMenuData->battler;
                    }

                    v9 = Pokemon_New(HEAP_ID_BATTLE);

                    for (i = 0; i < 6; i++) {
                        Party_AddPokemon(partyMenuData->battlePartyCtx->party, v9);
                    }

                    Heap_Free(v9);

                    for (i = 0; i < BattleSystem_GetPartyCount(partyMenuData->battleSys, v6); i++) {
                        v9 = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, v6, partyMenuData->partyOrder[v6][i]);
                        v10 = Party_GetPokemonBySlotIndex(partyMenuData->battlePartyCtx->party, i * 2);
                        Pokemon_Copy(v9, v10);
                        partyMenuData->battlePartyCtx->pokemonPartySlots[i * 2] = partyMenuData->partyOrder[v6][i];
                    }

                    for (i = 0; i < BattleSystem_GetPartyCount(partyMenuData->battleSys, v7); i++) {
                        v9 = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, v7, partyMenuData->partyOrder[v7][i]);
                        v10 = Party_GetPokemonBySlotIndex(partyMenuData->battlePartyCtx->party, i * 2 + 1);
                        Pokemon_Copy(v9, v10);
                        partyMenuData->battlePartyCtx->pokemonPartySlots[i * 2 + 1] = partyMenuData->partyOrder[v7][i];
                    }

                    if (BattleSystem_GetBattlerType(partyMenuData->battleSys, partyMenuData->battler) == 4) {
                        partyMenuData->battlePartyCtx->selectedPartyIndex = 1;
                    } else {
                        partyMenuData->battlePartyCtx->selectedPartyIndex = 0;
                    }
                } else {
                    if ((BattleSystem_GetBattleType(partyMenuData->battleSys) & BATTLE_TYPE_DOUBLES) && ((BattleSystem_GetBattleType(partyMenuData->battleSys) & BATTLE_TYPE_2vs2) == FALSE)) {
                        v5 = partyMenuData->battler & 1;
                    } else {
                        v5 = partyMenuData->battler;
                    }

                    if (BattleSystem_GetBattlerType(partyMenuData->battleSys, partyMenuData->battler) == 4) {
                        partyMenuData->battlePartyCtx->selectedPartyIndex = 1;
                    } else {
                        partyMenuData->battlePartyCtx->selectedPartyIndex = 0;
                    }

                    v8 = BattleSystem_GetParty(partyMenuData->battleSys, partyMenuData->battler);

                    for (i = 0; i < Party_GetCurrentCount(v8); i++) {
                        v9 = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, v5, partyMenuData->partyOrder[v5][i]);
                        Party_AddPokemon(partyMenuData->battlePartyCtx->party, v9);
                        partyMenuData->battlePartyCtx->pokemonPartySlots[i] = partyMenuData->partyOrder[v5][i];
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
        }
        break;
    case 2:
        if (partyMenuData->battlePartyCtx->battlePartyExited) {
            ov16_0223B430(partyMenuData->battleSys);
            ov16_0226CD10(ov16_0223E02C(partyMenuData->battleSys), partyMenuData->battlePartyCtx->isCursorEnabled);
            PaletteData_StartFade(v1, 0x1 | 0x4, 0xc00, -8, 7, 0, 0x0);
            PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 16, 0, 0x0);
            partyMenuData->state++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            sub_02015738(ov16_0223E220(partyMenuData->battleSys), 0);

            if (partyMenuData->battlePartyCtx->selectedPartyIndex == 6) {
                ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, 0xff);
            } else {
                ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, 1 + partyMenuData->battlePartyCtx->pokemonPartySlots[partyMenuData->battlePartyCtx->selectedPartyIndex]);
            }

            BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);
            Heap_Free(partyMenuData->battlePartyCtx->party);
            Heap_Free(partyMenuData->battlePartyCtx);
            Heap_Free(param1);
            SysTask_Done(task);
        }
        break;
    }
}

static void SysTask_TrainerShowPartyMenu(SysTask *task, void *param1)
{
    PartyMenuData *partyMenuData = (PartyMenuData *)param1;
    int v1;
    Party *v2;
    Pokemon *v3;
    int v4, v5;
    u32 battleType = BattleSystem_GetBattleType(partyMenuData->battleSys);
    v4 = partyMenuData->battler;

    if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
        v5 = v4;
    } else {
        v5 = BattleSystem_GetPartner(partyMenuData->battleSys, v4);
    }

    v1 = BattleAI_SwitchedSlot(partyMenuData->battleSys, v4);

    if (v1 == 6) {
        v1 = BattleAI_PostKOSwitchIn(partyMenuData->battleSys, v4);

        if (v1 == 6) {
            v2 = BattleSystem_GetParty(partyMenuData->battleSys, partyMenuData->battler);

            for (v1 = 0; v1 < Party_GetCurrentCount(v2); v1++) {
                v3 = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, partyMenuData->battler, v1);

                if ((Pokemon_GetValue(v3, MON_DATA_HP, NULL)) && (partyMenuData->partySlots[v4] != v1) && (partyMenuData->partySlots[v5] != v1)) {
                    break;
                }
            }
        }
    }

    ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, 1 + v1);
    BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_LinkShowPartyMenu(SysTask *task, void *param1)
{
    PartyMenuData *partyMenuData = (PartyMenuData *)param1;

    BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_RecordingShowPartyMenu(SysTask *task, void *param1)
{
    PartyMenuData *partyMenuData = (PartyMenuData *)param1;
    u8 v1;

    if (ov16_0223F530(partyMenuData->battleSys, partyMenuData->battler, &v1) == 1) {
        ov16_0226474C(partyMenuData->battleSys);
    }

    if ((!v1) || (v1 > 6)) {
        ov16_02264730(partyMenuData->battleSys);
    } else {
        {
            Party *v2;
            Pokemon *v3;
            int v4 = v1 - 1;

            v2 = BattleSystem_GetParty(partyMenuData->battleSys, partyMenuData->battler);

            if ((v4 == partyMenuData->partySlots[partyMenuData->battler]) || (v4 == partyMenuData->doublesSelection)) {
                ov16_02264730(partyMenuData->battleSys);
            } else if (v1 > Party_GetCurrentCount(v2)) {
                ov16_02264730(partyMenuData->battleSys);
            } else {
                v3 = BattleSystem_GetPartyPokemon(partyMenuData->battleSys, partyMenuData->battler, v1 - 1);

                if (Pokemon_GetValue(v3, MON_DATA_HP, NULL) == 0) {
                    ov16_02264730(partyMenuData->battleSys);
                }

                if (Pokemon_GetValue(v3, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_EGG) {
                    ov16_02264730(partyMenuData->battleSys);
                }
            }
        }
    }

    ov16_02265B10(partyMenuData->battleSys, partyMenuData->battler, v1);
    BattleController_EmitClearCommand(partyMenuData->battleSys, partyMenuData->battler, partyMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_PlayerShowYesNoMenu(SysTask *task, void *param1)
{
    YesNoMenuData *yesNoMenuData = param1;
    BgConfig *v1 = BattleSystem_GetBgConfig(yesNoMenuData->battleSys);
    UnkStruct_ov16_02268A14 *v2 = ov16_0223E02C(yesNoMenuData->battleSys);
    int v3;
    Healthbar *healthbar;
    BattlerData *battlerData = BattleSystem_GetBattlerData(yesNoMenuData->battleSys, yesNoMenuData->battler);
    v3 = BattleSystem_GetPartner(yesNoMenuData->battleSys, yesNoMenuData->battler);

    if (v3 != yesNoMenuData->battler) {
        healthbar = BattleSystem_GetHealthbar(yesNoMenuData->battleSys, v3);
    } else {
        healthbar = NULL;
    }

    switch (yesNoMenuData->state) {
    case 0:
        if (ov16_02269348(v2) == 0) {
            break;
        }

        if (yesNoMenuData->promptMsg) {
            {
                Window *v6;
                MessageLoader *v7;
                BattleMessage v8;

                v7 = BattleSystem_GetMessageLoader(yesNoMenuData->battleSys);

                if (yesNoMenuData->yesNoType == 5) {
                    v8.tags = 2 | 0x80;
                    v8.params[0] = yesNoMenuData->nickname;
                } else {
                    v8.tags = 0;
                }

                v8.id = yesNoMenuData->promptMsg;
                yesNoMenuData->msgIdx = BattleMessage_Print(yesNoMenuData->battleSys, v7, &v8, BattleSystem_GetTextSpeed(yesNoMenuData->battleSys));
            }
        }

        yesNoMenuData->state = 1;
        break;
    case 1:
        if ((Text_IsPrinterActive(yesNoMenuData->msgIdx) == 0) || (yesNoMenuData->promptMsg == NULL)) {
            {
                NARC *v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
                UnkStruct_ov16_022623F0 v11;

                ov16_02269218(v2);

                v11.unk_00 = yesNoMenuData->move;

                switch (yesNoMenuData->yesNoType) {
                case 0:
                case 5:
                    ov16_02268C04(v9, v10, v2, 13, 0, &v11);
                    break;
                case 1:
                    ov16_02268C04(v9, v10, v2, 14, 0, &v11);
                    break;
                case 2:
                    ov16_02268C04(v9, v10, v2, 15, 0, &v11);
                    break;
                case 3:
                    ov16_02268C04(v9, v10, v2, 16, 0, &v11);
                    break;
                case 4:
                    ov16_02268C04(v9, v10, v2, 17, 0, &v11);
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }

                yesNoMenuData->state = 2;

                NARC_dtor(v9);
                NARC_dtor(v10);
            }
        }
        break;
    case 2:
        yesNoMenuData->input = BattleSystem_MenuInput(v2);

        if (yesNoMenuData->input != 0xffffffff) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            yesNoMenuData->state = 3;
        }
        break;
    case 3:
        if (ov16_02269348(v2) == 1) {
            {
                NARC *v12 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
                NARC *v13 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

                ov16_022675AC(yesNoMenuData->healthbar);
                ov16_022647D8(battlerData);
                ov16_0226846C(healthbar);
                ov16_02269218(v2);
                ov16_02268C04(v12, v13, v2, 0, 0, NULL);

                if (yesNoMenuData->input == 1) {
                    ov16_0226BCCC(v2, 0);
                }

                yesNoMenuData->state = 4;

                NARC_dtor(v12);
                NARC_dtor(v13);
            }
        }
        break;
    case 4:
        if (ov16_0226BCD0(v2) == 1) {
            ov16_022656D4(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->input);
            BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);
            Heap_Free(param1);
            SysTask_Done(task);
        }
        break;
    }
}

static void SysTask_TrainerShowYesNoMenu(SysTask *task, void *param1)
{
    YesNoMenuData *yesNoMenuData = (YesNoMenuData *)param1;

    BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_LinkShowYesNoMenu(SysTask *task, void *param1)
{
    YesNoMenuData *yesNoMenuData = (YesNoMenuData *)param1;

    BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_RecordingShowYesNoMenu(SysTask *task, void *param1)
{
    YesNoMenuData *yesNoMenuData = (YesNoMenuData *)param1;
    u8 v1;

    if (ov16_0223F530(yesNoMenuData->battleSys, yesNoMenuData->battler, &v1) == 1) {
        ov16_0226474C(yesNoMenuData->battleSys);
    }

    if ((!v1) || ((v1 != 0xff) && (v1 != 1))) {
        ov16_02264730(yesNoMenuData->battleSys);
    }

    ov16_022656D4(yesNoMenuData->battleSys, yesNoMenuData->battler, v1);
    BattleController_EmitClearCommand(yesNoMenuData->battleSys, yesNoMenuData->battler, yesNoMenuData->command);

    Heap_Free(param1);
    SysTask_Done(task);
}

static void SysTask_SetMoveAnimation(SysTask *task, void *param1)
{
    SetMoveAnimationData *setMoveAnimationData = (SetMoveAnimationData *)param1;

    switch (setMoveAnimationData->state) {
    case 0:
        if ((setMoveAnimationData->moveAnim.isSubstitute) && (setMoveAnimationData->moveAnim.unk_4C == 0) && (PokemonSprite_GetAttribute(setMoveAnimationData->monSprite, MON_SPRITE_HIDE) == 0)) {
            {
                MoveAnimation v1;

                BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &v1, 1, 15, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
                ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &v1);
            }
            setMoveAnimationData->state = 1;
        } else {
            setMoveAnimationData->state = 4;
        }
        break;
    case 2: {
        UnkStruct_ov12_022380DC v2;
        MoveAnimation v3;

        ov16_02264530(setMoveAnimationData->battleSys, &setMoveAnimationData->moveAnim, &v2, setMoveAnimationData->battler);
        ov12_022382BC(&v2, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &v3, 1, 16, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
        ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &v3);
        setMoveAnimationData->battlerData->unk_19C = 0;
    }
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

        if ((setMoveAnimationData->moveAnim.isSubstitute) && (setMoveAnimationData->moveAnim.unk_4C == 0) && (PokemonSprite_GetAttribute(setMoveAnimationData->monSprite, MON_SPRITE_HIDE) == 0)) {
            {
                MoveAnimation v4;

                BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &v4, 1, 15, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
                ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &v4);
            }
            setMoveAnimationData->state = 7;
        } else {
            setMoveAnimationData->state = 10;
        }
        break;
    case 8: {
        UnkStruct_ov12_022380DC v5;
        MoveAnimation v6;

        ov16_02264530(setMoveAnimationData->battleSys, &setMoveAnimationData->moveAnim, &v5, setMoveAnimationData->battler);
        ov12_02238390(&v5, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(setMoveAnimationData->battleSys, NULL, &v6, 1, 16, setMoveAnimationData->battler, setMoveAnimationData->battler, NULL);
        ov16_02264408(setMoveAnimationData->battleSys, setMoveAnimationData->battlerData, setMoveAnimationData->battleAnimSys, &v6);
        setMoveAnimationData->battlerData->unk_19C = 1;
    }
        setMoveAnimationData->state++;
        break;
    case 10:
        BattleController_EmitClearCommand(setMoveAnimationData->battleSys, setMoveAnimationData->battler, setMoveAnimationData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
        BattleAnimSystem_ExecuteScript(setMoveAnimationData->battleAnimSys);

        if (BattleAnimSystem_IsMoveActive(setMoveAnimationData->battleAnimSys) == 0) {
            BattleAnimSystem_FreeScriptData(setMoveAnimationData->battleAnimSys);
            setMoveAnimationData->state++;
        }
        break;
    }
}

static void SysTask_FlickerBattler(SysTask *task, void *param1)
{
    FlickerBattlerData *flickerBattlerData = (FlickerBattlerData *)param1;
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
        Heap_Free(param1);
        SysTask_Done(task);
    }
}

static void SysTask_UpdateHPGauge(SysTask *task, void *param1)
{
    Healthbar *healthbar = param1;
    int v1;

    switch (healthbar->state) {
    case 0:
        Healthbar_CalcHP(healthbar, healthbar->damage);
        healthbar->state++;
    case 1:
        v1 = ov16_022674F8(healthbar);

        if (v1 == -1) {
            healthbar->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(healthbar->battleSys, healthbar->battler, healthbar->command);
        healthbar->task_10 = NULL;
        SysTask_Done(task);
        return;
    }
}

static void SysTask_UpdateExpGauge(SysTask *task, void *param1)
{
    Healthbar *healthbar = param1;
    int v1;

    switch (healthbar->state) {
    case 0:
        healthbar->unk_4E = 0;
        Sound_PlayEffect(SEQ_SE_DP_EXP);
        Healthbar_CalcExp(healthbar, healthbar->expReward);
        healthbar->state++;
    case 1:
        if (healthbar->unk_4E < 8) {
            healthbar->unk_4E++;
        }

        v1 = ov16_02267560(healthbar);

        if (v1 == -1) {
            if (healthbar->unk_4E >= 8) {
                Sound_StopEffect(1803, 0);
                healthbar->state = 100;
            } else {
                healthbar->state++;
            }
        }
        break;
    case 2:
        healthbar->unk_4E++;

        if (healthbar->unk_4E >= 8) {
            Sound_StopEffect(1803, 0);
            healthbar->state = 100;
        }
        break;
    default:
        BattleController_EmitClearCommand(healthbar->battleSys, healthbar->battler, healthbar->command);
        healthbar->task_10 = NULL;
        SysTask_Done(task);
        break;
    }
}

static void SysTask_PlayFaintingSequence(SysTask *task, void *param1)
{
    FaintingSequenceData *faintingSequenceData = (FaintingSequenceData *)param1;
    BattleAnimSystem *v1 = BattleSystem_GetBattleAnimSystem(faintingSequenceData->battleSys);
    int v2;
    int v3;

    switch (faintingSequenceData->state) {
    case 0:
        if (faintingSequenceData->isSubstitute) {
            {
                MoveAnimation v4;

                BattleController_SetMoveAnimation(faintingSequenceData->battleSys, NULL, &v4, 1, 15, faintingSequenceData->battler, faintingSequenceData->battler, NULL);
                ov16_02264408(faintingSequenceData->battleSys, faintingSequenceData->battlerData, v1, &v4);
            }
            faintingSequenceData->state++;
        } else {
            faintingSequenceData->state = 4;
        }
        break;
    case 2: {
        UnkStruct_ov12_022380DC v5;
        MoveAnimation v6;

        ov16_02264530(faintingSequenceData->battleSys, &faintingSequenceData->moveAnim, &v5, faintingSequenceData->battler);
        ov12_022382BC(&v5, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(faintingSequenceData->battleSys, NULL, &v6, 1, 16, faintingSequenceData->battler, faintingSequenceData->battler, NULL);
        ov16_02264408(faintingSequenceData->battleSys, faintingSequenceData->battlerData, v1, &v6);
        faintingSequenceData->battlerData->unk_19C = 0;
    }
        faintingSequenceData->state++;
        break;
    case 1:
    case 3:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            faintingSequenceData->state++;
        }
        break;
    case 4: {
        int v7;

        if (faintingSequenceData->face == 2) {
            v7 = 117;
        } else {
            v7 = -117;
        }

        Species_PlayDelayedCry(BattleSystem_GetChatotCry(faintingSequenceData->battleSys, faintingSequenceData->battler), 5, faintingSequenceData->species, faintingSequenceData->form, v7, 127, faintingSequenceData->isTransformed, 5, 0);
        faintingSequenceData->state++;
    }
    case 5:
        if (Sound_IsPokemonCryPlaying() == 0) {
            faintingSequenceData->state++;
        }
        break;
    case 6:
        if (faintingSequenceData->face == 2) {
            Sound_PlayPannedEffect(SEQ_SE_DP_POKE_DEAD3, 117);
        } else {
            Sound_PlayPannedEffect(SEQ_SE_DP_POKE_DEAD3, -117);
        }

        if (PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_SHADOW_HEIGHT) > 0) {
            faintingSequenceData->state = 7;
        } else {
            faintingSequenceData->state = 8;
        }
        break;
    case 7:
        v3 = PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_SHADOW_HEIGHT);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        PokemonSprite_SetAttribute(faintingSequenceData->monSprite, MON_SPRITE_SHADOW_HEIGHT, v3);

        if (v3) {
            break;
        }

        faintingSequenceData->state++;
    case 8:
        v3 = LoadPokemonSpriteYOffset(faintingSequenceData->species, faintingSequenceData->gender, faintingSequenceData->face, faintingSequenceData->form, faintingSequenceData->personality);
        v3 = 80 - v3;
        PokemonSprite_SetPartialDraw(faintingSequenceData->monSprite, 0, 0, 80, v3);
        faintingSequenceData->state++;
        break;
    case 9:
        v2 = PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_Y_CENTER);
        v2 += 8;
        PokemonSprite_SetAttribute(faintingSequenceData->monSprite, MON_SPRITE_Y_CENTER, v2);
        v3 = PokemonSprite_GetAttribute(faintingSequenceData->monSprite, MON_SPRITE_DRAW_HEIGHT);
        v3 -= 8;

        if (v3 < 0) {
            v3 = 0;
        }

        PokemonSprite_SetAttribute(faintingSequenceData->monSprite, MON_SPRITE_DRAW_HEIGHT, v3);

        if (v3 == 0) {
            PokemonSprite_Delete(faintingSequenceData->monSprite);
            faintingSequenceData->state++;
        }
        break;
    case 10:
        BattleController_EmitClearCommand(faintingSequenceData->battleSys, faintingSequenceData->battler, faintingSequenceData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_FadeOut(SysTask *task, void *param1)
{
    FadeOutData *fadeOutData = (FadeOutData *)param1;
    PaletteData *v1 = BattleSystem_GetPaletteData(fadeOutData->battleSys);
    PokemonSpriteManager *v2 = BattleSystem_GetPokemonSpriteManager(fadeOutData->battleSys);

    switch (fadeOutData->state) {
    case 0:
        sub_02015738(ov16_0223E220(fadeOutData->battleSys), 1);
        PaletteData_StartFade(v1, 0x1 | 0x2 | 0x4 | 0x8, 0xffff, 1, 0, 16, 0x0);
        PokemonSpriteManager_StartFadeAll(v2, 0, 16, 0, 0x0);
        Sound_FadeOutBGM(0, 16);
        fadeOutData->state++;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            fadeOutData->state++;
        }
        break;
    case 2:
        BattleController_EmitClearCommand(fadeOutData->battleSys, fadeOutData->battler, fadeOutData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_ToggleVanish(SysTask *task, void *param1)
{
    ToggleVanishData *toggleVanishData = (ToggleVanishData *)param1;
    BattleAnimSystem *v1 = BattleSystem_GetBattleAnimSystem(toggleVanishData->battleSys);

    switch (toggleVanishData->state) {
    case 0:
        if (toggleVanishData->battlerData->monSprite) {
            PokemonSprite_SetAttribute(toggleVanishData->battlerData->monSprite, MON_SPRITE_HIDE, toggleVanishData->toggleHide);

            if (toggleVanishData->toggleHide == 1) {
                toggleVanishData->state = 0xff;
            } else {
                toggleVanishData->state++;
            }
        } else {
            toggleVanishData->state = 0xff;
        }
        break;
    case 1:
        if ((toggleVanishData->isSubstitute) && (toggleVanishData->battlerData->unk_19C == 0)) {
            {
                MoveAnimation v2;

                BattleController_SetMoveAnimation(toggleVanishData->battleSys, NULL, &v2, 1, 15, toggleVanishData->battler, toggleVanishData->battler, NULL);
                ov16_02264408(toggleVanishData->battleSys, toggleVanishData->battlerData, v1, &v2);
            }
            toggleVanishData->state++;
        } else {
            toggleVanishData->state = 0xff;
        }
        break;
    case 3: {
        UnkStruct_ov12_022380DC v3;
        MoveAnimation v4;

        ov16_02264530(toggleVanishData->battleSys, &toggleVanishData->moveAnim, &v3, toggleVanishData->battler);
        ov12_02238390(&v3, HEAP_ID_BATTLE);

        BattleController_SetMoveAnimation(toggleVanishData->battleSys, NULL, &v4, 1, 16, toggleVanishData->battler, toggleVanishData->battler, NULL);
        ov16_02264408(toggleVanishData->battleSys, toggleVanishData->battlerData, v1, &v4);
        toggleVanishData->battlerData->unk_19C = 1;
    }
        toggleVanishData->state++;
        break;
    case 2:
    case 4:
        BattleAnimSystem_ExecuteScript(v1);

        if (BattleAnimSystem_IsMoveActive(v1) == 0) {
            BattleAnimSystem_FreeScriptData(v1);
            toggleVanishData->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(toggleVanishData->battleSys, toggleVanishData->battler, toggleVanishData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_PlayLevelUpAnimation(SysTask *task, void *param1)
{
    PlayLevelUpAnimationData *playLevelUpAnimationData = (PlayLevelUpAnimationData *)param1;

    switch (playLevelUpAnimationData->state) {
    case 0:
        ov16_0226834C(playLevelUpAnimationData->healthbar, &playLevelUpAnimationData->unk_0B);
        Sound_PlayEffect(SEQ_SE_DP_EXPMAX);
        playLevelUpAnimationData->state++;
        break;
    case 1:
        if (playLevelUpAnimationData->unk_0B == 1) {
            BattleController_EmitClearCommand(playLevelUpAnimationData->battleSys, playLevelUpAnimationData->battler, playLevelUpAnimationData->command);
            Heap_Free(param1);
            SysTask_Done(task);
        }
        break;
    }
}

static void SysTask_WaitForBattleMessagePrint(SysTask *task, void *data)
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

static void SysTask_WaitForAlertMessagePrint(SysTask *task, void *param1)
{
    AlertMsgData *alertMsgData = (AlertMsgData *)param1;

    switch (alertMsgData->state) {
    case 0:
        if (Text_IsPrinterActive(alertMsgData->msgIdx) == 0) {
            alertMsgData->state++;
            alertMsgData->delay = 0;
        }
        break;
    case 1:
        if (++alertMsgData->delay == 40) {
            ov16_022661B0(alertMsgData->battleSys, alertMsgData->battler);
            BattleController_EmitClearCommand(alertMsgData->battleSys, alertMsgData->battler, alertMsgData->command);
            Heap_Free(param1);
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

static const int Unk_ov16_0226F1D0[] = {
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

static void ov16_02263014(SysTask *task, void *param1)
{
    UnkStruct_ov16_0225CBB8 *v0 = (UnkStruct_ov16_0225CBB8 *)param1;
    BgConfig *v1;
    PaletteData *v2;
    int v3;
    int v4;

    v1 = BattleSystem_GetBgConfig(v0->battleSys);
    v2 = BattleSystem_GetPaletteData(v0->battleSys);
    v3 = BattleSystem_GetTerrain(v0->battleSys);
    v4 = Unk_ov16_0226F1D0[BattleSystem_GetBackground(v0->battleSys)];

    v0->unk_15++;

    switch (v0->unk_14) {
    case 0: {
        UnkStruct_ov12_02237F38 v5;

        v0->unk_04 = ov12_02237EFC(HEAP_ID_BATTLE, NULL);

        v5.unk_00 = Unk_ov16_0226F31C[v3];
        v5.unk_04 = 1;

        v0->unk_08[0] = ov12_02237F38(v0->unk_04, &v5);

        v5.unk_00 = Unk_ov16_0226F31C[v3] + 1;
        v5.unk_04 = 1;

        v0->unk_08[1] = ov12_02237F38(v0->unk_04, &v5);

        ov12_02238004(v0->unk_08[0]);
        Sound_PlayEffect(SEQ_SE_DP_PASA2);

        v0->unk_14 = 1;
    }

    case 1:

        if (v0->unk_15 == 10) {
            PaletteData_StartFade(v2, 0x1, 0xf3ff, 0, 0, 16, v4);
            PaletteData_StartFade(v2, 0x4, 0x3fff, 0, 0, 16, v4);
        }

        if ((v0->unk_15 >= 10) && (v0->unk_16 < 16)) {
            u16 i, v7;
            u16 *v8;

            v0->unk_16++;

            if (v0->unk_16 > 16) {
                v0->unk_16 = 16;
            }

            v8 = PaletteData_GetFadedBuffer(v2, 1);

            for (i = 0; i < 256; i++) {
                v7 = (0 + ((0x1f - 0) * v0->unk_16 >> 4));
                v8[i] = v7 | (v7 << 5) | (v7 << 10);
            }
        }

        if (v0->unk_15 == 20) {
            ov12_02238004(v0->unk_08[1]);
        }

        if (v0->unk_15 == 23) {
            Sound_PlayEffect(SEQ_SE_DP_PASA3);
        }

        if (v0->unk_15 == 28) {
            MI_CpuCopy16(ov16_0223F204(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 0), 0x20 * 7);

            if (BattleSystem_GetBattleType(v0->battleSys) == BATTLE_TYPE_AI_PARTNER) {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
            } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_DOUBLES) {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 7);
            } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_TRAINER) {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
            } else {
                MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 4);
            }

            PaletteData_StartFade(v2, 0x1, 0xf3ff, 0, 16, 0, v4);
            PaletteData_StartFade(v2, 0x4, 0x3fff, 0, 16, 0, v4);
            PaletteData_StartFade(v2, 0x2 | 0x8, 0xffff, 0, 16, 0, v4);
        }

        if (v0->unk_15 >= 50) {
            PaletteData_StartFade(v2, 0x1, 0xc00, 0, 16, 0, 0x0);
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
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    case 4:
        ov12_02237F98(v0->unk_04);
        ov12_02237F74(v0->unk_04);
        v0->unk_14++;
    case 5:
        MI_CpuCopy16(ov16_0223F204(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 0), 0x20 * 7);

        if (BattleSystem_GetBattleType(v0->battleSys) == BATTLE_TYPE_AI_PARTNER) {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
        } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_DOUBLES) {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 7);
        } else if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_TRAINER) {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 5);
        } else {
            MI_CpuCopy16(ov16_0223F210(v0->battleSys), PaletteData_GetUnfadedBuffer(v2, 2), 0x20 * 4);
        }

        PaletteData_StartFade(v2, 0x1, 0xffff, 0, 0, 0, 0x7fff);
        PaletteData_StartFade(v2, 0x4, 0x3fff, 0, 0, 0, 0xffff);
        PaletteData_StartFade(v2, 0x2 | 0x8, 0xffff, 0, 0, 0, 0x7fff);
        v0->unk_14 = 3;
        break;
    }
}

static void SysTask_ForgetMove(SysTask *task, void *param1)
{
    ForgetMoveData *forgetMoveData = (ForgetMoveData *)param1;
    PaletteData *v1 = BattleSystem_GetPaletteData(forgetMoveData->battleSys);

    switch (forgetMoveData->state) {
    case 0:
        PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 0, 16, 0x0);
        forgetMoveData->state++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
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
            PaletteData_StartFade(v1, 0x2 | 0x8, 0xffff, -8, 16, 0, 0x0);
            forgetMoveData->state++;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(v1) == 0) {
            if (forgetMoveData->battlePartyCtx->selectedMoveSlot == 4) {
                ov16_02265B10(forgetMoveData->battleSys, forgetMoveData->battler, 0xff);
            } else {
                ov16_02265B10(forgetMoveData->battleSys, forgetMoveData->battler, forgetMoveData->battlePartyCtx->selectedMoveSlot + 1);
            }

            BattleController_EmitClearCommand(forgetMoveData->battleSys, forgetMoveData->battler, forgetMoveData->command);

            Heap_Free(forgetMoveData->battlePartyCtx);
            Heap_Free(param1);
            SysTask_Done(task);
        }
        break;
    }
}

static void SysTask_SetMosaic(SysTask *task, void *param1)
{
    SetMosaicData *setMosaicData = (SetMosaicData *)param1;
    int v1;

    switch (setMosaicData->state) {
    case 0:
        if (setMosaicData->counter == setMosaicData->wait) {
            setMosaicData->counter = 0;
            v1 = PokemonSprite_GetAttribute(setMosaicData->monSprite, MON_SPRITE_MOSAIC_INTENSITY);

            if (v1 > setMosaicData->intensity) {
                v1--;
            } else if (v1 < setMosaicData->intensity) {
                v1++;
            }

            PokemonSprite_SetAttribute(setMosaicData->monSprite, MON_SPRITE_MOSAIC_INTENSITY, v1);

            if (v1 == setMosaicData->intensity) {
                setMosaicData->state++;
            }
        } else {
            setMosaicData->counter++;
        }
        break;
    case 1:
        BattleController_EmitClearCommand(setMosaicData->battleSys, setMosaicData->battler, setMosaicData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_ShowPartyGauge(SysTask *task, void *param1)
{
    PartyGaugeTask *v0 = (PartyGaugeTask *)param1;
    enum PartyGaugeSide v1;
    enum ShowPartyGaugeType v2;

    if (BattleSystem_GetBattlerSide(v0->battleSys, v0->battler) == 0) {
        v1 = PARTY_GAUGE_OURS;
    } else {
        v1 = PARTY_GAUGE_THEIRS;
    }

    switch (v0->state) {
    case 0: {
        PartyGauge *v3;
        enum ShowPartyGaugeType v4;
        enum PartyGaugePosition v5;

        if (v0->midBattle == 0) {
            v4 = SHOW_PARTY_GAUGE_BATTLE_START;
            v5 = PARTY_GAUGE_POSITION_MIDDLE;
        } else {
            v4 = SHOW_PARTY_GAUGE_MID_BATTLE;

            switch (v0->battlerType) {
            case 3:
                v5 = PARTY_GAUGE_POSITION_HIGH;
                break;
            case 5:
                v5 = PARTY_GAUGE_POSITION_LOW;
                break;
            default:
                v5 = PARTY_GAUGE_POSITION_MIDDLE;
                break;
            }
        }

        v3 = PartyGauge_Show(v0->status, v1, v4, v5, BattleSystem_GetSpriteSystem(v0->battleSys), BattleSystem_GetSpriteManager(v0->battleSys));
        BattleSystem_SetPartyGauge(v0->battleSys, v1, v3);
    }
        v0->state++;
        break;
    case 1:
        if (PartyGauge_ShowIsDone(BattleSystem_GetPartyGauge(v0->battleSys, v1)) == 1) {
            v0->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(v0->battleSys, v0->battler, v0->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_HidePartyGauge(SysTask *task, void *param1)
{
    PartyGaugeTask *v0 = (PartyGaugeTask *)param1;
    enum PartyGaugeSide v1;
    PartyGauge *v2;
    enum HideArrowType v3;
    enum HidePartyGaugeType v4;

    if (BattleSystem_GetBattlerSide(v0->battleSys, v0->battler) == 0) {
        v1 = PARTY_GAUGE_OURS;
    } else {
        v1 = PARTY_GAUGE_THEIRS;
    }

    v2 = BattleSystem_GetPartyGauge(v0->battleSys, v1);

    switch (v0->state) {
    case 0:
        if (v0->midBattle == 0) {
            v3 = HIDE_ARROW_FADE_AND_SCROLL;
            v4 = HIDE_PARTY_GAUGE_BATTLE_START;
        } else {
            v3 = HIDE_ARROW_FADE_IN_PLACE;
            v4 = HIDE_PARTY_GAUGE_MID_BATTLE;
        }

        PartyGauge_Hide(v2, v3, v4);
        v0->state++;
        break;
    case 1:
        if (PartyGauge_HideIsDone(v2) == 1) {
            PartyGauge_Free(v2);
            BattleSystem_SetPartyGauge(v0->battleSys, v1, NULL);
            v0->state++;
        }
        break;
    default:
        BattleController_EmitClearCommand(v0->battleSys, v0->battler, v0->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_SpriteToOAM(SysTask *task, void *param1)
{
    SpriteToOAMData *spriteToOAMData = (SpriteToOAMData *)param1;

    switch (spriteToOAMData->state) {
    case 0:
        GF_ASSERT(spriteToOAMData->battlerData->unk_88 == NULL);
        spriteToOAMData->battlerData->unk_88 = ov12_022234F8(spriteToOAMData->battleSys, HEAP_ID_BATTLE, spriteToOAMData->battler);
        spriteToOAMData->state++;
        break;
    default:
        BattleController_EmitClearCommand(spriteToOAMData->battleSys, spriteToOAMData->battler, spriteToOAMData->command);
        Heap_Free(param1);
        SysTask_Done(task);
        break;
    }
}

static void SysTask_OAMToSprite(SysTask *task, void *param1)
{
    OAMToSpriteData *oamToSpriteData = (OAMToSpriteData *)param1;

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

    Heap_Free(param1);
    SysTask_Done(task);
}

void BattlerData_SetTaskFuncs(BattleSystem *battleSys, BattlerData *battlerData)
{
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    u32 v1 = BattleSystem_GetBattleStatusMask(battleSys);

    if (battleType & BATTLE_TYPE_AI) {
        if (battlerData->battler) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_TrainerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_TrainerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_TrainerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_TrainerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_TrainerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_TrainerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            if (v1 & BATTLE_STATUS_RECORDING) {
                battlerData->taskFuncs.setCommandSelection = &SysTask_RecordingSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &SysTask_RecordingShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &SysTask_RecordingShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &SysTask_RecordingShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &SysTask_RecordingShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &SysTask_RecordingShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            } else {
                battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &SysTask_PlayerShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &SysTask_PlayerShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &SysTask_PlayerShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &SysTask_PlayerShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &SysTask_PlayerShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            }
        }
    } else if ((battleType & (BATTLE_TYPE_2vs2 | BATTLE_TYPE_FRONTIER)) == (BATTLE_TYPE_2vs2 | BATTLE_TYPE_FRONTIER)) {
        if (battlerData->battlerType & BATTLER_THEM) {
            if (ov16_0223ED60(battleSys)) {
                battlerData->taskFuncs.setCommandSelection = &SysTask_TrainerSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &SysTask_TrainerShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &SysTask_TrainerShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &SysTask_TrainerShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &SysTask_TrainerShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &SysTask_TrainerShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_AI;
            } else {
                battlerData->taskFuncs.setCommandSelection = &SysTask_LinkSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &SysTask_LinkShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &SysTask_LinkShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &SysTask_LinkShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &SysTask_LinkShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &SysTask_LinkShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_LINK;
            }
        } else if (v1 & BATTLE_STATUS_RECORDING) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_RecordingSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_RecordingShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_RecordingShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_RecordingShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_RecordingShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_RecordingShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        } else if (battlerData->battlerType != BattleSystem_GetBattlerType(battleSys, BattleSystem_GetNetworkID(battleSys) * 2)) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_LinkSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_LinkShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_LinkShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_LinkShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_LinkShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_LinkShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_LINK;
        } else {
            battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_PlayerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_PlayerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_PlayerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_PlayerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_2vs2) {
        if (v1 & BATTLE_STATUS_RECORDING) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_RecordingSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_RecordingShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_RecordingShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_RecordingShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_RecordingShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_RecordingShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        } else if (battlerData->battlerType != BattleSystem_GetBattlerType(battleSys, BattleSystem_GetNetworkID(battleSys))) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_LinkSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_LinkShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_LinkShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_LinkShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_LinkShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_LinkShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_LINK;
        } else {
            battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_PlayerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_PlayerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_PlayerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_PlayerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_LINK) {
        if (v1 & BATTLE_STATUS_RECORDING) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_RecordingSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_RecordingShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_RecordingShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_RecordingShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_RecordingShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_RecordingShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        } else if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_LinkSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_LinkShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_LinkShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_LinkShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_LinkShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_LinkShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_LINK;
        } else {
            battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_PlayerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_PlayerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_PlayerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_PlayerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_PAL_PARK) {
        if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_PalParkPokemonSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = NULL;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = NULL;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else if (battleType & BATTLE_TYPE_SAFARI) {
        if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_SafariPokemonSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = NULL;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = NULL;
            battlerData->taskFuncs.showTargetSelectMenu = NULL;
            battlerData->taskFuncs.showBagMenu = NULL;
            battlerData->taskFuncs.showPartyMenu = NULL;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_PlayerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
        }
    } else {
        if (battlerData->battlerType & BATTLER_THEM) {
            battlerData->taskFuncs.setCommandSelection = &SysTask_TrainerSetCommandSelection;
            battlerData->taskFuncs.showMoveSelectMenu = &SysTask_TrainerShowMoveSelectMenu;
            battlerData->taskFuncs.showTargetSelectMenu = &SysTask_TrainerShowTargetSelectMenu;
            battlerData->taskFuncs.showBagMenu = &SysTask_TrainerShowBagMenu;
            battlerData->taskFuncs.showPartyMenu = &SysTask_TrainerShowPartyMenu;
            battlerData->taskFuncs.showYesNoMenu = &SysTask_TrainerShowYesNoMenu;
            battlerData->bootState = BATTLER_BOOT_STATE_AI;
        } else {
            if (v1 & BATTLE_STATUS_RECORDING) {
                battlerData->taskFuncs.setCommandSelection = &SysTask_RecordingSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &SysTask_RecordingShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &SysTask_RecordingShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &SysTask_RecordingShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &SysTask_RecordingShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &SysTask_RecordingShowYesNoMenu;
                battlerData->bootState = BATTLER_BOOT_STATE_NORMAL;
            } else {
                battlerData->taskFuncs.setCommandSelection = &SysTask_PlayerSetCommandSelection;
                battlerData->taskFuncs.showMoveSelectMenu = &SysTask_PlayerShowMoveSelectMenu;
                battlerData->taskFuncs.showTargetSelectMenu = &SysTask_PlayerShowTargetSelectMenu;
                battlerData->taskFuncs.showBagMenu = &SysTask_PlayerShowBagMenu;
                battlerData->taskFuncs.showPartyMenu = &SysTask_PlayerShowPartyMenu;
                battlerData->taskFuncs.showYesNoMenu = &SysTask_PlayerShowYesNoMenu;
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

Healthbar *BattlerData_GetHealthbar(BattlerData *battlerData)
{
    return &battlerData->healthbar;
}

UnkStruct_ov16_0226C378 *ov16_02263B0C(BattlerData *battlerData)
{
    return &battlerData->unk_7B;
}

void ov16_02263B10(BattlerData *battlerData)
{
    MI_CpuClear8(&battlerData->unk_7B, sizeof(UnkStruct_ov16_0226C378));
}

void ov16_02263B20(BattlerData *battlerData, int param1)
{
    if (battlerData->managedSprite == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(battlerData->managedSprite, param1);
}

static PokemonSprite *ov16_02263B30(BattleSystem *battleSys, PokemonSpriteManager *param1, PokemonSpriteTemplate *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, int param10, SpriteAnimFrame *param11, PokemonSpriteCallback *param12)
{
    PokemonSprite *v0;
    u8 *v1 = PokemonSpriteData_GetTiles(BattleSystem_GetPokemonSpriteData(battleSys), param10);
    int v2;
    int face;

    v2 = BattleSystem_GetBattlerType(battleSys, param10);

    if (v2 & 0x1) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    CharacterSprite_LoadPokemonSprite(param2->narcID, param2->character, HEAP_ID_BATTLE, v1, param2->personality, FALSE, face, param2->spindaSpots);
    PokemonSpriteData_SetNarcID(BattleSystem_GetPokemonSpriteData(battleSys), param10, param2->narcID);
    PokemonSpriteData_SetPalette(BattleSystem_GetPokemonSpriteData(battleSys), param10, param2->palette);
    PokemonSpriteData_SetYOffset(BattleSystem_GetPokemonSpriteData(battleSys), param10, param6);

    v0 = PokemonSpriteManager_CreateSpriteAtIndex(param1, param2, param3, param4 + param6, param5, param10, param10, param11, param12);

    if (v2 & 0x1) {
        if (v2 > 1) {
            v2 = v2 >> 1;
        }

        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_PLTT_SLOT, v2);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_SIZE, param9);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_Y, (param4 + param6) + (36 - param6));
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_X_OFFSET, param8);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_Y_OFFSET, 36 - param6);
        PokemonSprite_SetAttribute(v0, MON_SPRITE_SHADOW_HEIGHT, param7);
    }

    return v0;
}

static void ov16_02263C1C(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message, BattleMessage *battleMsg)
{
    if (battlerData->battlerType & BATTLER_THEM) {
        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) {
            battleMsg->id = 990;
            battleMsg->tags = 27;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler | (message->partySlot << 8);
        } else {
            battleMsg->id = 989;
            battleMsg->tags = 50;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler;
            battleMsg->params[2] = battlerData->battler | (message->partySlot << 8);
        }
    } else {
        if (((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_DOUBLES) == FALSE) && ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE)) {
            if (message->hpPercent == 0) {
                battleMsg->id = 984;
            } else if (message->hpPercent < 25) {
                battleMsg->id = 985;
            } else if (message->hpPercent < 50) {
                battleMsg->id = 988;
            } else if (message->hpPercent < 75) {
                battleMsg->id = 986;
            } else {
                battleMsg->id = 987;
            }
        } else {
            battleMsg->id = 985;
        }

        battleMsg->tags = 2;
        battleMsg->params[0] = battlerData->battler | (message->partySlot << 8);
    }
}

static void ov16_02263CF0(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message, BattleMessage *battleMsg)
{
    if (battlerData->battlerType & BATTLER_THEM) {
        if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == 0) {
            battleMsg->id = 972;
            battleMsg->tags = 50;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler;
            battleMsg->params[2] = battlerData->battler | (message->partySlot << 8);
        } else {
            battleMsg->id = 974;
            battleMsg->tags = 27;
            battleMsg->params[0] = battlerData->battler;
            battleMsg->params[1] = battlerData->battler | (message->partySlot << 8);
        }
    } else {
        if (((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_DOUBLES) == 0) && ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE)) {
            if (message->hpPercent < 100) {
                battleMsg->id = 982;
            } else if (message->hpPercent < 325) {
                battleMsg->id = 983;
            } else if (message->hpPercent < 550) {
                battleMsg->id = 981;
            } else if (message->hpPercent < 775) {
                battleMsg->id = 980;
            } else {
                battleMsg->id = 979;
            }
        } else {
            battleMsg->id = 979;
        }

        battleMsg->tags = 2;
        battleMsg->params[0] = battlerData->battler | (message->partySlot << 8);
    }
}

static void ov16_02263DD0(BattleSystem *battleSys, BattlerData *unused, BattleMessage *battleMsg)
{
    u32 battleType;
    int battlerType1;
    int battlerType2;

    battleType = BattleSystem_GetBattleType(battleSys);

    if (battleType & BATTLE_TYPE_DOUBLES) {
        battlerType1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        battlerType2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
    } else {
        battlerType1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        battlerType2 = battlerType1;
    }

    if (battleType & BATTLE_TYPE_LINK) {
        if (battleType & BATTLE_TYPE_FRONTIER) {
            battleMsg->id = 992;
            battleMsg->tags = 59;
            battleMsg->params[0] = battlerType1;
            battleMsg->params[1] = battlerType1;
            battleMsg->params[2] = battlerType2;
            battleMsg->params[3] = battlerType2;
        } else if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = 971;
            battleMsg->tags = 26;
            battleMsg->params[0] = battlerType1;
            battleMsg->params[1] = battlerType2;
        } else {
            battleMsg->id = 970;
            battleMsg->tags = 8;
            battleMsg->params[0] = battlerType1;
        }
    } else {
        if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
            battleMsg->id = 992;
            battleMsg->tags = 59;
            battleMsg->params[0] = battlerType1;
            battleMsg->params[1] = battlerType1;
            battleMsg->params[2] = battlerType2;
            battleMsg->params[3] = battlerType2;
        } else {
            battleMsg->id = 969;
            battleMsg->tags = 30;
            battleMsg->params[0] = battlerType1;
            battleMsg->params[1] = battlerType1;
        }
    }
}

static void ov16_02263E7C(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message, BattleMessage *battleMsg)
{
    u32 battleType;
    int v1;
    int v2;

    battleType = BattleSystem_GetBattleType(battleSys);

    if (battlerData->battlerType & BATTLER_THEM) {
        if (battleType & BATTLE_TYPE_DOUBLES) {
            v1 = battlerData->battler;
            v2 = BattleSystem_GetPartner(battleSys, battlerData->battler);
        } else {
            v1 = battlerData->battler;
            v2 = v1;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            if (battleType & BATTLE_TYPE_FRONTIER) {
                battleMsg->id = 991;
                battleMsg->tags = 60;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1;
                battleMsg->params[2] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[3] = v2;
                battleMsg->params[4] = v2;
                battleMsg->params[5] = v2 | (message->partySlot[v2] << 8);
            } else if (battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = 976;
                battleMsg->tags = 56;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[2] = v2;
                battleMsg->params[3] = v2 | (message->partySlot[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = 975;
                battleMsg->tags = 49;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[2] = v2 | (message->partySlot[v2] << 8);
            } else {
                battleMsg->id = 974;
                battleMsg->tags = 27;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1 | (message->partySlot[v1] << 8);
            }
        } else {
            if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
                battleMsg->id = 991;
                battleMsg->tags = 60;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1;
                battleMsg->params[2] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[3] = v2;
                battleMsg->params[4] = v2;
                battleMsg->params[5] = v2 | (message->partySlot[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = 973;
                battleMsg->tags = 57;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1;
                battleMsg->params[2] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[3] = v2 | (message->partySlot[v2] << 8);
            } else {
                battleMsg->id = 972;
                battleMsg->tags = 50;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1;
                battleMsg->params[2] = v1 | (message->partySlot[v1] << 8);
            }
        }
    } else {
        if (battleType & BATTLE_TYPE_LINK) {
            {
                u8 v3 = BattleSystem_GetNetworkID(battleSys);

                if (battleType & BATTLE_TYPE_2vs2) {
                    switch (ov16_0223F6F0(battleSys, v3)) {
                    case 0:
                    case 3:
                        v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                        v2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                        break;
                    case 1:
                    case 2:
                        v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                        v2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                        break;
                    }
                } else if (battleType & BATTLE_TYPE_DOUBLES) {
                    v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
                    v2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
                } else {
                    v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_PLAYER);
                    v2 = v1;
                }
            }
        } else if (battleType & BATTLE_TYPE_2vs2) {
            v1 = BattleSystem_GetPartner(battleSys, battlerData->battler);
            v2 = battlerData->battler;
        } else if (battleType & BATTLE_TYPE_DOUBLES) {
            v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
            v2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            v1 = battlerData->battler;
            v2 = v1;
        }

        if (battleType & BATTLE_TYPE_LINK) {
            if (battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = 977;
                battleMsg->tags = 49;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[2] = v2 | (message->partySlot[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = 978;
                battleMsg->tags = 9;
                battleMsg->params[0] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[1] = v2 | (message->partySlot[v2] << 8);
            } else {
                battleMsg->id = 979;
                battleMsg->tags = 2;
                battleMsg->params[0] = v1 | (message->partySlot[v1] << 8);
            }
        } else {
            if (battleType & BATTLE_TYPE_2vs2) {
                battleMsg->id = 993;
                battleMsg->tags = 57;
                battleMsg->params[0] = v1;
                battleMsg->params[1] = v1;
                battleMsg->params[2] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[3] = v2 | (message->partySlot[v2] << 8);
            } else if (battleType & BATTLE_TYPE_DOUBLES) {
                battleMsg->id = 978;
                battleMsg->tags = 9;
                battleMsg->params[0] = v1 | (message->partySlot[v1] << 8);
                battleMsg->params[1] = v2 | (message->partySlot[v2] << 8);
            } else {
                battleMsg->id = 979;
                battleMsg->tags = 2;
                battleMsg->params[0] = v1 | (message->partySlot[v1] << 8);
            }
        }
    }
}

static void ov16_022641B4(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    u32 battleType;
    int v1;
    int v2;
    int v3;

    battleType = BattleSystem_GetBattleType(battleSys);
    v3 = BattleSystem_GetResultMask(battleSys);

    if (battleType & BATTLE_TYPE_DOUBLES) {
        v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        v2 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
    } else {
        v1 = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        v2 = v1;
    }

    switch (v3) {
    case 0x1:
        if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = 786;
            battleMsg->tags = 26;
            battleMsg->params[0] = v1;
            battleMsg->params[1] = v2;
        } else {
            battleMsg->id = 785;
            battleMsg->tags = 8;
            battleMsg->params[0] = v1;
        }
        break;
    case 0x2:
        if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = 788;
            battleMsg->tags = 26;
            battleMsg->params[0] = v1;
            battleMsg->params[1] = v2;
        } else {
            battleMsg->id = 787;
            battleMsg->tags = 8;
            battleMsg->params[0] = v1;
        }
        break;
    case 0x3:
        if (battleType & BATTLE_TYPE_2vs2) {
            battleMsg->id = 790;
            battleMsg->tags = 26;
            battleMsg->params[0] = v1;
            battleMsg->params[1] = v2;
        } else {
            battleMsg->id = 789;
            battleMsg->tags = 8;
            battleMsg->params[0] = v1;
        }
        break;
    }
}

static void ov16_02264270(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message, BattleMessage *battleMsg)
{
    int i;
    int v1 = 0;
    int v2 = 0;

    for (i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        if (message->unk_01 & FlagIndex(i)) {
            if (BattleSystem_GetBattlerSide(battleSys, i)) {
                v2++;
            } else {
                v1++;
            }
        }
    }

    if ((v1) && (v2)) {
        battleMsg->id = 781;
        battleMsg->tags = 0;
        BattleSystem_SetResultMask(battleSys, 0x3 | 0x80 | 0x40);
    } else if (v1) {
        battleMsg->id = 781;
        battleMsg->tags = 0;
        BattleSystem_SetResultMask(battleSys, 0x2 | 0x80 | 0x40);
    } else {
        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_2vs2) {
            battleMsg->id = 792;
            battleMsg->tags = 26;
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
            battleMsg->params[1] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        } else if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
            battleMsg->id = 791;
            battleMsg->tags = 8;
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        } else {
            battleMsg->id = 791;
            battleMsg->tags = 8;
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_SOLO_ENEMY);
        }

        BattleSystem_SetResultMask(battleSys, 0x1 | 0x80 | 0x40);
    }
}

static void ov16_02264360(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg)
{
    battleMsg->id = 956;
    battleMsg->tags = 8;

    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) {
        if (ov16_0223F6F0(battleSys, BattleSystem_GetNetworkID(battleSys))) {
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            battleMsg->params[0] = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
        }
    } else {
        battleMsg->params[0] = battlerData->battler;
    }

    BattleSystem_SetResultMask(battleSys, 0x2 | 0x80 | 0x40);
}

static ManagedSprite *BattleDisplay_NewManagedSpriteTrainer(BattleSystem *battleSys, int side, int trainerType, int battlerType, s16 x, s16 y)
{
    SpriteSystem *spriteSys = BattleSystem_GetSpriteSystem(battleSys);
    SpriteManager *spriteMan = BattleSystem_GetSpriteManager(battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(battleSys);
    ManagedSprite *managedSprite;
    int face;

    if (side & BATTLER_THEM) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    managedSprite = SpriteSystem_NewManagedSpriteTrainer(spriteSys, spriteMan, paletteData, x, y, trainerType, face, battlerType, 5);

    return managedSprite;
}

static void ov16_02264408(BattleSystem *battleSys, BattlerData *battlerData, BattleAnimSystem *battleAnimSystem, MoveAnimation *animation)
{
    BattleAnimBattlerContext battlerContext;
    int i;
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

    for (i = 0; i < 4; i++) {
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
    int i;

    param2->unk_00 = param3;
    param2->unk_04 = param3;

    for (i = 0; i < 4; i++) {
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

static BOOL ov16_02264650(TrainerEncounterData *trainerEncounterData, ManagedSprite *param1)
{
    UnkStruct_ov16_02264650 *v0;
    int v1;
    BOOL v2 = 0;

    v1 = ManagedSprite_GetUserAttrForCurrentAnimFrame(trainerEncounterData->managedSprite);

    switch (v1) {
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
        if (((v1 & 0xf00) == 0x100) && (v1 & 0xff)) {
            ManagedSprite_SetAnimationFrame(trainerEncounterData->managedSprite, 0);
            ManagedSprite_SetAnim(trainerEncounterData->managedSprite, (v1 & 0xff) - 1);
            v2 = 1;
        }

        break;
    }

    return v2;
}

static void ov16_022646C8(SysTask *task, void *param1)
{
    UnkStruct_ov16_02264650 *v0 = (UnkStruct_ov16_02264650 *)param1;

    switch (v0->unk_00) {
    case 0:
        BrightnessController_StartTransition(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), BRIGHTNESS_MAIN_SCREEN);
        v0->unk_00++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
            BrightnessController_StartTransition(4, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) & (GX_BLEND_PLANEMASK_BG1 ^ 0xffff), BRIGHTNESS_MAIN_SCREEN);
            v0->unk_00++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
            Heap_Free(param1);
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

static u8 ov16_02264768(BattleSystem *battleSys, u8 battler, u8 trainerType)
{
    if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_LINK) {
        if (TrainerInfo_GameCode(BattleSystem_GetTrainerInfo(battleSys, battler)) == 0 && trainerType <= 1) {
            trainerType += 103;
        }
    }

    return trainerType;
}

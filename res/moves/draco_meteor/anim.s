#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, draco_meteor_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_DARK_BLUE
    PlaySoundEffectC SEQ_SE_DP_201
    WaitForAnimTasks
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    Delay 50
    PlaySoundEffectC SEQ_SE_DP_W089
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_ShakeBg 0, 3, 0, 1, 0
    Delay 10
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_ShakeBg 0, 3, 0, 1, 0
    Delay 15
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_ShakeBg 0, 4, 0, 4, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_DARK_BLUE
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

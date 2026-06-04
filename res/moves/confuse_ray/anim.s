#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, confuse_ray_spa
    LoadParticleResource 1, confuse_ray_spa
    JumpIfContest L_1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_153, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 6
    CreateEmitter 1, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_061, 35
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

L_1:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 28, 22, 0, 4
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_153, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 6
    CreateEmitter 1, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_061, 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

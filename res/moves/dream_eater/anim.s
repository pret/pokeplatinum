#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 1, drain_punch_spa
    LoadParticleResource 0, dream_eater_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 1, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 1, 16, 0
    SetExtraParams 2, 0, 0, 0, 0
    Delay 10
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_153, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    PlayDelayedSoundEffectL SEQ_SE_DP_W071B, 75
    Delay 75
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

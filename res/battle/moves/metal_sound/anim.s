#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, metal_sound_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 5
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 7
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    CreateEmitter 0, 0, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 20, 64
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W103
    End

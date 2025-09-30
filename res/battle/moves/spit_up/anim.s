#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, spit_up_spa
    PlaySoundEffectL SEQ_SE_DP_W036
    Func_ShakeAndScaleAttacker 70, 120, 10, 5, 15
    Delay 25
    PlayLoopedSoundEffectL SEQ_SE_DP_W255E, 5, 2
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    Delay 15
    PlayLoopedSoundEffectR SEQ_SE_DP_W025B, 2, 3
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

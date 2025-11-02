#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, leaf_blade_spa
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffectR SEQ_SE_DP_W015, 2, 7
    Delay 30
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

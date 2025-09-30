#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, slash_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_Shake 4, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W013
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

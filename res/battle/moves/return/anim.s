#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, return_spa
    Func_Return
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W039
    Delay 16
    EndLoop
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W025B
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

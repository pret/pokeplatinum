#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, comet_punch_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    BeginLoop 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_030
    Delay 6
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

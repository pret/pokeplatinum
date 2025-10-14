#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, low_kick_spa
    PlaySoundEffectR SEQ_SE_DP_007
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 0, 2, 4
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

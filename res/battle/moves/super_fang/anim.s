#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, super_fang_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlaySoundEffectR SEQ_SE_DP_W044
    PlayDelayedSoundEffectR SEQ_SE_DP_185, 5
    Delay 5
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

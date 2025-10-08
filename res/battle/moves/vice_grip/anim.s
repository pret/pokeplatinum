#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, vice_grip_spa
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlaySoundEffectR SEQ_SE_DP_W011
    Func_Shake 3, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

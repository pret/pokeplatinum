#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, twister_spa
    SetCameraProjection 0, 0
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_060
    Delay 10
    Func_Shake 3, 0, 1, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 3, 0, 1, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

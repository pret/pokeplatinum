#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, grass_knot_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlaySoundEffectR SEQ_SE_DP_300
    Delay 5
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

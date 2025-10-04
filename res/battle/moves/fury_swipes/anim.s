#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fury_swipes_spa
    LoadParticleResource 1, pound_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffectR SEQ_SE_DP_W010, 8, 2
    Delay 3
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 0, 4
    Func_Shake 1, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

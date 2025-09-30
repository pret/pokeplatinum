#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rapid_spin_spa
    PlaySoundEffectL SEQ_SE_DP_207
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_143, 6, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, wake_up_slap_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    PlayLoopedSoundEffectR SEQ_SE_DP_030C, 6, 4
    PlayDelayedSoundEffectR SEQ_SE_DP_W092, 4
    PlayDelayedSoundEffectR SEQ_SE_DP_W092, 8
    PlayDelayedSoundEffectR SEQ_SE_DP_W092, 16
    PlayDelayedSoundEffectR SEQ_SE_DP_W092, 25
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

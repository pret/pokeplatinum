#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bullet_punch_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W025C, 3, 5
    PlayDelayedSoundEffectR SEQ_SE_DP_W025C, 20
    Func_Shake 1, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

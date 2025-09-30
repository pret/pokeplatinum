#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, triple_kick_spa
    PlayLoopedSoundEffectR SEQ_SE_DP_W007, 2, 2
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

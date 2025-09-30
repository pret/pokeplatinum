#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, endure_spa
    CreateEmitter 0, 0, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 2, BATTLE_COLOR_RED, 10, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W082, 3, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End

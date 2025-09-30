#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, smog_spa
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffectR SEQ_SE_DP_W109, 4, 3
    Delay 10
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

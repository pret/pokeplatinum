#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, attract_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_PlayfulHops
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_LIGHT_RED, 14, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W204, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, stone_edge_spa
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_W088, 2, 4
    Delay 25
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W082
    PlayLoopedSoundEffectR SEQ_SE_DP_W088, 6, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

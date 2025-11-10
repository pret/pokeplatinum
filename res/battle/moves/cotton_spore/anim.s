#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, cotton_spore_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 3, BATTLE_COLOR_WHITE, 10, 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W199, 3, 8
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

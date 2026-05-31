#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, stun_spore_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_W077B, 4, 6
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_LIGHT_YELLOW1, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

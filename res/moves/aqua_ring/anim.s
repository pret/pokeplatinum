#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, aqua_ring_spa
    PlayLoopedSoundEffectL SEQ_SE_DP_W392, 32, 2
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

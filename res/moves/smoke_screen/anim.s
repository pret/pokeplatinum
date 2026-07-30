#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, smoke_screen_spa
    LoadParticleResource 1, smoke_screen_spa
    CreateEmitter 1, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 1
    CreateEmitterEx 0, 1, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 13, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 13
    PlayLoopedSoundEffectR SEQ_SE_DP_W028B, 3, 6
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

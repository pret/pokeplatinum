#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayLoopedSoundEffect SEQ_SE_DP_W204, BATTLE_SOUND_PAN_LEFT, 8, 4
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

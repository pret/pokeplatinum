#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 28
    PlayPannedSoundEffect SEQ_SE_DP_BT_001, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

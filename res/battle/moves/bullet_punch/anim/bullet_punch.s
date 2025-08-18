#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 435
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W025C, BATTLE_SOUND_PAN_RIGHT, 3, 5
    PlayDelayedSoundEffect SEQ_SE_DP_W025C, BATTLE_SOUND_PAN_RIGHT, 20
    CallFunc 36, 5, 1, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

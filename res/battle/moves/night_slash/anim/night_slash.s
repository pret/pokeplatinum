#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 417
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_BRADE, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W233, 0, 10
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 11
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 6, 264
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_BRADE, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W233, 0, 10
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 8
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 4, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

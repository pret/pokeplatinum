#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 372
    PlayPannedSoundEffect SEQ_SE_DP_210, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 50
    PlayPannedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT
    CallFunc 34, 6, 2, 0, 1, 32767, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

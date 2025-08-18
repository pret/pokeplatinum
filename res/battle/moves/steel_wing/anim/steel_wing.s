#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 229
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 2, 4
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_W231, BATTLE_SOUND_PAN_LEFT
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_W231, BATTLE_SOUND_PAN_LEFT
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W017, 0
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W017, 0
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W017, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W017, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

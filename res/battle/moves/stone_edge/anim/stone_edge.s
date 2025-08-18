#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 461
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT, 2, 4
    Delay 25
    CallFunc 36, 5, 2, 0, 1, 6, 264
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_RIGHT
    PlayLoopedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT, 6, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

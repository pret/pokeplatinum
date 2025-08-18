#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 322
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 3, 4
    CallFunc 34, 5, 8, 1, 1, 31764, 12
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_W044, BATTLE_SOUND_PAN_RIGHT
    Delay 9
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 8, 4
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

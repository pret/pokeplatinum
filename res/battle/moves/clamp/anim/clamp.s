#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 152
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    CreateEmitter 0, 2, 4
    PlayPannedSoundEffect SEQ_SE_DP_W011, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 13
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

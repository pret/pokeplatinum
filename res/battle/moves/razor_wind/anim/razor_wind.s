#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, 43
    CreateEmitter 0, 1, 3
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_060, BATTLE_SOUND_PAN_LEFT
    Delay 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, 43
    CreateEmitter 0, 0, 20
    PlayDelayedSoundEffect SEQ_SE_DP_146, BATTLE_SOUND_PAN_RIGHT, 5
    Delay 10
    Func_Shake 3, 0, 1, 2, 264
    Func_Shake 3, 0, 1, 2, 272
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

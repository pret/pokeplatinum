#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 53
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 5
    Func_ScaleBattlerSprite 264, 100, 130, 100, 70, 100, 1310721, 262148
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

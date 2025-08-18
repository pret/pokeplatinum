#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 309
    JumpIfBattlerSide 0, L_1, L_2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 1, 4
    Delay 5
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 3
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Delay 10
    CallFunc 36, 5, 2, 0, 1, 2, 264
    End

L_2:
    CreateEmitter 0, 2, 4
    Delay 5
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 3
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Delay 10
    CallFunc 36, 5, 2, 0, 1, 2, 264
    End

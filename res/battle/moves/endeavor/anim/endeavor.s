#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 1, 31
    LoadParticleResource 0, 300
    PlayLoopedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_LEFT, 20, 4
    CreateEmitter 0, 2, 3
    BeginLoop 4
    CallFunc 34, 5, 2, 0, 1, 797, 6
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 262148
    Delay 7
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 1, 4
    CallFunc 42, 8, 258, 100, 80, 100, 140, 100, 1, 262148
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 3
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

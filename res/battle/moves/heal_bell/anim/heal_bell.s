#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 232
    PlayPannedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 19
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 2, 19
    BeginLoop 1
    CallFunc 33, 5, 0, 0, 0, 8, 32720
    CallFunc 34, 6, 2, 0, 1, 32767, 8, 8
    CallFunc 34, 6, 4, 0, 1, 32767, 8, 8
    Delay 8
    CallFunc 33, 5, 0, 0, 8, 0, 32720
    Delay 8
    CallFunc 33, 5, 0, 0, 0, 8, 32767
    CallFunc 34, 6, 2, 0, 1, 32720, 8, 8
    CallFunc 34, 6, 4, 0, 1, 32720, 8, 8
    Delay 8
    CallFunc 33, 5, 0, 0, 8, 0, 32767
    Delay 8
    EndLoop
    CallFunc 33, 5, 0, 0, 0, 8, 32767
    CallFunc 34, 6, 2, 0, 1, 32767, 8, 8
    CallFunc 34, 6, 4, 0, 1, 32767, 8, 8
    Delay 8
    CallFunc 33, 5, 0, 0, 8, 0, 32767
    Delay 8
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

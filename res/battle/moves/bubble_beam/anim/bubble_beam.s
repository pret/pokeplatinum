#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 91
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 4096, 0
    BtlAnimCmd_055 5, 4, 0, 2, 5, 0
    PlayLoopedSoundEffect SEQ_SE_DP_AWA, 0, 4, 8
    BeginLoop 2
    PlayLoopedSoundEffect SEQ_SE_DP_W145, BATTLE_SOUND_PAN_RIGHT, 2, 2
    CallFunc 52, 3, 8, 8, 264
    Delay 8
    CallFunc 52, 3, 16, -16, 264
    Delay 16
    CallFunc 52, 3, 8, 8, 264
    Delay 8
    EndLoop
    PlayLoopedSoundEffect SEQ_SE_DP_W202B, BATTLE_SOUND_PAN_RIGHT, 4, 6
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    LoadParticleResource 0, 244
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W227B, BATTLE_SOUND_PAN_RIGHT
    BeginLoop 5
    PlayPannedSoundEffect SEQ_SE_DP_W227, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 264, 0, 8, 4
    Delay 4
    Func_MoveBattler 264, 0, -8, 4
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

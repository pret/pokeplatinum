#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 154
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler 258, -24, 0, 4
    WaitForAnimTasks
    Func_RotateMon 65535, 68265, 10, 1, 0, 64
    WaitForAnimTasks
    Func_MoveBattler 258, 24, 0, 4
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler 258, -24, 0, 4
    WaitForAnimTasks
    Func_RotateMon 65535, 68265, 10, 1
    WaitForAnimTasks
    Func_MoveBattler 258, 38, -8, 4
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 6, 0, 1, 6, 264
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

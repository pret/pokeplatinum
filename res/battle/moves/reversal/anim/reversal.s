#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 198
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    BeginLoop 2
    Func_FadeBg 0, -2, 0, 8, 32767
    WaitForAnimTasks
    Func_FadeBg 0, -2, 8, 0, 32767
    WaitForAnimTasks
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_W179, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 40
    Func_FadeBg 0, -2, 0, 8, 32767
    WaitForAnimTasks
    Func_FadeBg 0, -2, 8, 0, 32767
    WaitForAnimTasks
    Func_MoveBattler 258, 24, 0, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 3, 264
    Func_MoveBattler 258, -24, 0, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

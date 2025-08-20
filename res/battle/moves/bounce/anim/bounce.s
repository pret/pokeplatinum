#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 357
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 3, 3
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W100, BATTLE_SOUND_PAN_LEFT
    Func_HideBattler 2, 1
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 2, 4
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 2, 0, 1, 2, 264
    Func_HideBattler 2, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

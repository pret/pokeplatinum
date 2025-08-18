#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 328
    CallFunc 42, 8, 258, 100, 100, 100, 140, 100, 1, 327685
    PlayPannedSoundEffect SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    Delay 25
    PlayPannedSoundEffect SEQ_SE_DP_W197, 0
    CallFunc 33, 5, 0, 0, 0, 8, 32767
    WaitForAnimTasks
    CallFunc 33, 5, 0, 0, 8, 0, 32767
    WaitForAnimTasks
    Delay 10
    JumpIfWeather L_1, L_2, L_3, L_4, L_5
    End

L_1:
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT, 2, 7
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 8, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT
    Delay 20
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_4:
    CallFunc 33, 5, 0, 1, 0, 10, 2124
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT, 2, 7
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 9, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT
    Delay 20
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 10, 0, 2124
    WaitForAnimTasks
    End

L_2:
    CallFunc 33, 5, 0, 1, 0, 10, 49930
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT, 2, 7
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 10, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT
    Delay 20
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 10, 0, 49930
    WaitForAnimTasks
    End

L_5:
    CallFunc 33, 5, 0, 1, 0, 10, 13741
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT, 2, 7
    CreateEmitter 0, 6, 4
    CreateEmitter 0, 11, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT
    Delay 20
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 10, 0, 13741
    WaitForAnimTasks
    End

L_3:
    CallFunc 33, 5, 0, 1, 0, 10, 797
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT, 2, 7
    CreateEmitter 0, 7, 4
    CreateEmitter 0, 12, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT
    Delay 20
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 10, 0, 797
    WaitForAnimTasks
    End

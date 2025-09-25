#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, bide_spa
    PlayLoopedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT, 3, 4
    CreateEmitter 0, 0, 3
    Func_Shake 1, 0, 1, 4, 258
    Func_FadeBattlerSprite 2, 0, 1, 31, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, slam_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_MoveBattler 258, 14, 4, 2
    Delay 1
    Func_MoveBattler 264, -14, -4, 2
    WaitForAnimTasks
    Func_MoveBattler 258, -14, -4, 2
    Func_MoveBattler 264, 14, 4, 4
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

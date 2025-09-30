#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, zen_headbutt_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_293, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler 258, -16, 8, 4
    WaitForAnimTasks
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 30
    Func_MoveBattler 258, 32, -16, 4
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_MoveBattler 258, -16, 8, 4
    Func_Shake 4, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 67
    Func_RevolveBattler 2, 1, 12
    Func_Shake 4, 0, 1, 4, 264
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 1720, -3440, 0
    PlayPannedSoundEffect SEQ_SE_DP_007, BATTLE_SOUND_PAN_RIGHT
    Delay 3
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 1720, -3440, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 1720, 1720, 0
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 1720, 1720, 0
    WaitForAnimTasks
    Func_RevolveBattler 2, 1, 12
    Func_Shake 4, 0, 1, 4, 264
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 344, 3440, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 344, 3440, 0
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    Delay 3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -860, -1032, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -860, -1032, 0
    WaitForAnimTasks
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 216
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_3
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    Func_FadeBattlerSprite 2, 0, 1, 32767, 12, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 8
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_2:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    Func_FadeBattlerSprite 2, 0, 1, 32767, 12, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 8
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_3:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    Func_FadeBattlerSprite 2, 0, 1, 32767, 12, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 8
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -6880, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -6880, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_1:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    Func_FadeBattlerSprite 2, 0, 1, 32767, 12, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 8
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -8256, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -8256, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

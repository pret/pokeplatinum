#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 216
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_3
    CallFunc 34, 6, 2, 0, 1, 0, 12, 0
    Delay 2
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CallFunc 25, 1, 1
    BeginLoop 1
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 10, -20, 258
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CallFunc 34, 6, 2, 0, 1, 0, 12, 0
    Delay 2
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CallFunc 25, 1, 1
    BeginLoop 1
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 10, -20, 258
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CallFunc 34, 6, 2, 0, 1, 0, 12, 0
    Delay 2
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -8256, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -8256, 0, 0
    CallFunc 25, 1, 1
    BeginLoop 1
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 10, -20, 258
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CallFunc 34, 6, 2, 0, 1, 0, 12, 0
    Delay 2
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -8256, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -8256, 0, 0
    CallFunc 25, 1, 1
    BeginLoop 1
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 10, -20, 258
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 5, 10, 258
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 410
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 8, 0, -8, 258
    Delay 8
    CallFunc 57, 4, 16, 0, 16, 258
    PlayPannedSoundEffect SEQ_SE_DP_203, BATTLE_SOUND_PAN_LEFT
    Delay 16
    CallFunc 57, 4, 8, 0, -8, 258
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 8, 0, 8, 258
    Delay 8
    CallFunc 57, 4, 16, 0, -16, 258
    PlayPannedSoundEffect SEQ_SE_DP_203, BATTLE_SOUND_PAN_LEFT
    Delay 16
    CallFunc 57, 4, 8, 0, 8, 258
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 334
    LoadParticleResource 1, 334
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT, 4, 4
    Delay 20
    SetCameraProjection 1, 0
    JumpIfBattlerSide 1, L_1, L_2
    End

L_1:
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -6000, 0, 3000
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 4000, 0, 3000
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 1000, 1000, -4000
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -1000, -1000, 4000
    Func_ShakeBg 0, 5, 0, 5, 0
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_2:
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -6000, -3000, 3000
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 4000, -3000, 3000
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 1000, 1000, -4000
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -1000, -3000, 4000
    Func_ShakeBg 0, 5, 0, 5, 0
    PlayPannedSoundEffect SEQ_SE_DP_W063, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

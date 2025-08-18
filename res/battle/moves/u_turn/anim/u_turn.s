#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 386
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CreateEmitter 0, 0, 3
    JumpIfContest L_3
    CallFunc 40, 2, 2, 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_007, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 3, 3
    Delay 5
    CreateEmitter 0, 0, 3
    CallFunc 40, 2, 2, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 0, 3
    CallFunc 40, 2, 2, 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_007, BATTLE_SOUND_PAN_LEFT
    JumpIfBattlerSide 0, L_4, L_5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_4:
    CreateEmitter 0, 6, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_5:
    CreateEmitter 0, 7, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CallFunc 40, 2, 2, 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_007, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 3, 3
    Delay 5
    CreateEmitter 0, 0, 3
    CallFunc 40, 2, 2, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

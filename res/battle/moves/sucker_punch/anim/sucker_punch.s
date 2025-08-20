#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 406
    JumpIfContest L_1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, force_palm_spa
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_208, BATTLE_SOUND_PAN_RIGHT
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_208, BATTLE_SOUND_PAN_RIGHT
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

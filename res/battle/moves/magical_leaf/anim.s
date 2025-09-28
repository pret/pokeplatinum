#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, magical_leaf_spa
    JumpIfContest L_1
    PlayPannedSoundEffect SEQ_SE_DP_PASA2, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 65
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_209, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 6, 264
    PlayLoopedSoundEffect SEQ_SE_DP_HURU, BATTLE_SOUND_PAN_RIGHT, 3, 6
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlayPannedSoundEffect SEQ_SE_DP_PASA2, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    Delay 65
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_209, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 6, 264
    PlayLoopedSoundEffect SEQ_SE_DP_HURU, BATTLE_SOUND_PAN_RIGHT, 3, 6
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

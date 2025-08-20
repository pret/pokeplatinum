#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 437
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_KAZE, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_150, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 4096, 0
    BtlAnimCmd_055 5, 1, 0, 0, 0, 0
    Delay 40
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_151, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 40
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_Shake 1, 0, 1, 6, 264
    Func_FadeBattlerSprite 8, 0, 1, 32767, 10, 10
    PlayLoopedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 2, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W258, BATTLE_SOUND_PAN_RIGHT, 7
    PlayDelayedSoundEffect SEQ_SE_DP_W258, BATTLE_SOUND_PAN_RIGHT, 14
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

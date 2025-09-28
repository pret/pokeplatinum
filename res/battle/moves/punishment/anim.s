#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, punishment_spa
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_MUCHI, BATTLE_SOUND_PAN_RIGHT, 10
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 5
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

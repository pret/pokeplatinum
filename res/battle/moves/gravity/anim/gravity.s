#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 373
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W356, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 10
    StopSoundEffect SEQ_SE_DP_W356
    PlayPannedSoundEffect SEQ_SE_DP_205, 0
    Func_ScaleBattlerSprite 2050, 100, 100, 100, 60, 100, 1966081, 655370
    Func_ScaleBattlerSprite 2056, 100, 100, 100, 60, 100, 1966081, 655370
    Func_ScaleBattlerSprite 2052, 100, 100, 100, 60, 100, 1966081, 655370
    Func_ScaleBattlerSprite 2064, 100, 100, 100, 60, 100, 1966081, 655370
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, seed_bomb_spa
    PlayPannedSoundEffect SEQ_SE_DP_HURU2, 0
    CreateEmitterEx 0, 0, 1, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 18, 64
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_HURU2, 0
    CreateEmitterEx 0, 1, 1, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 18, 64
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_HURU2, 0
    CreateEmitterEx 0, 2, 1, 3
    Func_MoveEmitterA2BParabolic 2, 0, 0, 0, 18, 64
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_HURU2, 0
    CreateEmitterEx 0, 3, 1, 3
    Func_MoveEmitterA2BParabolic 3, 0, 0, 0, 18, 64
    Delay 2
    Func_Shake 1, 0, 1, 12, 264
    PlayPannedSoundEffect SEQ_SE_DP_HURU2, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_MoveEmitterA2BParabolic 4, 0, 0, 0, 18, 64
    PlayDelayedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT, 30
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, 360
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Func_Flail 0
    PlayLoopedSoundEffect SEQ_SE_DP_W204, BATTLE_SOUND_PAN_LEFT, 2, 4
    Delay 20
    PlayLoopedSoundEffect SEQ_SE_DP_W204, BATTLE_SOUND_PAN_LEFT, 2, 4
    Delay 10
    Func_Shake 1, 0, 1, 6, 264
    PlayDelayedSoundEffect SEQ_SE_DP_350, BATTLE_SOUND_PAN_RIGHT, 12
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, 188
    CreateEmitter 0, 2, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 19, 64, 1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

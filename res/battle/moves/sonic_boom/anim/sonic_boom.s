#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_3
    End

L_1:
    LoadParticleResource 0, 79
    LoadParticleResource 1, 79
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_146, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 3, 3
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 1, 0, 4
    Func_Shake 1, 0, 1, 2, 264
    CreateEmitterEx 0, 2, 3, 3
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 13, 64
    Delay 4
    Func_Shake 1, 0, 1, 2, 264
    CreateEmitterEx 0, 3, 3, 3
    Func_MoveEmitterA2BLinear 3, 0, 0, 0, 13, 64
    Delay 4
    Func_Shake 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_2:
    LoadParticleResource 0, 79
    LoadParticleResource 1, 79
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_146, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 1, 3
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 1, 0, 4
    Func_Shake 1, 0, 1, 2, 264
    CreateEmitterEx 0, 2, 1, 3
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 13, 64
    Delay 4
    Func_Shake 1, 0, 1, 2, 264
    CreateEmitterEx 0, 3, 1, 3
    Func_MoveEmitterA2BLinear 3, 0, 0, 0, 13, 64
    Delay 4
    Func_Shake 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_3:
    LoadParticleResource 0, 79
    LoadParticleResource 1, 79
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_146, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 2, 3
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 1, 0, 4
    Func_Shake 1, 0, 1, 2, 264
    CreateEmitterEx 0, 2, 2, 3
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 13, 64
    Delay 4
    Func_Shake 1, 0, 1, 2, 264
    CreateEmitterEx 0, 3, 2, 3
    Func_MoveEmitterA2BLinear 3, 0, 0, 0, 13, 64
    Delay 4
    Func_Shake 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

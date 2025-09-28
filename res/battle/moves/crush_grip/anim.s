#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, crush_grip_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W462, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_3
    End

L_1:
    CreateEmitter 0, 1, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 5
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W173C, BATTLE_SOUND_PAN_RIGHT
    Func_ScaleBattlerSprite 264, 100, 100, 100, 70, 100, 1310721, 262148
    Delay 5
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 7
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 8
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 0, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 5
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W173C, BATTLE_SOUND_PAN_RIGHT
    Func_ScaleBattlerSprite 264, 100, 100, 100, 70, 100, 1310721, 262148
    Delay 5
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 7
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 8
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CreateEmitter 0, 1, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 5
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W173C, BATTLE_SOUND_PAN_RIGHT
    Func_ScaleBattlerSprite 264, 100, 100, 100, 70, 100, 1310721, 262148
    Delay 5
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 7
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 8
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

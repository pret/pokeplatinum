#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_1
    End

L_2:
    LoadParticleResource 0, pin_missile_spa
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT, 4, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 13
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 28
    CreateEmitterEx 0, 1, 2, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitterEx 0, 2, 2, 3
    Func_MoveEmitterA2BParabolic 2, 0, 0, 0, 13, 64
    Delay 3
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 1, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitterEx 0, 3, 2, 3
    Func_MoveEmitterA2BParabolic 3, 0, 0, 0, 13, 64
    Delay 5
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 1, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 5
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler 258, -14, 8, 2
    Delay 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    LoadParticleResource 0, pin_missile_spa
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT, 4, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 13
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 28
    CreateEmitterEx 0, 1, 3, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitterEx 0, 2, 3, 3
    Func_MoveEmitterA2BParabolic 2, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitterEx 0, 3, 3, 3
    Func_MoveEmitterA2BParabolic 3, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 4
    Func_MoveBattler 258, -14, 8, 2
    Delay 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_1
    End

L_2:
    LoadParticleResource 0, pin_missile_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_W026, 4, 3
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 13
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 28
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
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    Delay 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    LoadParticleResource 0, pin_missile_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_W026, 4, 3
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 13
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 28
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
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    Delay 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

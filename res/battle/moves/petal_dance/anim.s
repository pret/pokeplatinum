#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, petal_dance_spa
    PlaySoundEffectL SEQ_SE_DP_W080
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 3, 10
    BeginLoop 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 10
    EndLoop
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W080C
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

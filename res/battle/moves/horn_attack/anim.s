#include "macros/btlanimcmd.inc"

L_0:
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_1:
    LoadParticleResource 0, horn_attack_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    PlaySoundEffectR SEQ_SE_DP_W030
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, horn_attack_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    PlaySoundEffectR SEQ_SE_DP_W030
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    LoadParticleResource 0, horn_attack_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    PlaySoundEffectR SEQ_SE_DP_W030
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

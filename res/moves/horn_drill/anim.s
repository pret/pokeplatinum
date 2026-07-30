#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, horn_drill_spa
    JumpIfContest L_1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W030
    PlayDelayedSoundEffectR SEQ_SE_DP_145, 5
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_1:
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W030
    PlayDelayedSoundEffectR SEQ_SE_DP_145, 5
    CreateEmitter 0, 5, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 8, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    End

L_2:
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 6, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    End

L_3:
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 7, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    End

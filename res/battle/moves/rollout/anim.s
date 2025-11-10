#include "macros/btlanimcmd.inc"

L_0:
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    LoadParticleResource 0, rollout_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayLoopedSoundEffectC SEQ_SE_DP_W025B, 2, 6
    Delay 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W070
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, rollout_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayLoopedSoundEffectC SEQ_SE_DP_W025B, 2, 6
    Delay 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W070
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

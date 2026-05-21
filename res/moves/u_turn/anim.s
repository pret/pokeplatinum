#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, u_turn_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    JumpIfContest L_3
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    PlaySoundEffectL SEQ_SE_DP_080
    Delay 10
    PlaySoundEffectC SEQ_SE_DP_007
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    Delay 8
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 15
    PlaySoundEffectL SEQ_SE_DP_080
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 5
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    PlaySoundEffectL SEQ_SE_DP_080
    Delay 10
    PlaySoundEffectL SEQ_SE_DP_007
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_4, L_5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_4:
    CreateEmitter 0, 6, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_5:
    CreateEmitter 0, 7, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    PlaySoundEffectL SEQ_SE_DP_080
    Delay 10
    PlaySoundEffectC SEQ_SE_DP_007
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 1, 0, 0
    Delay 8
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 15
    PlaySoundEffectL SEQ_SE_DP_080
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 5
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

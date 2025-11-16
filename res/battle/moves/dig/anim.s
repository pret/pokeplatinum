#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dig_spa
    LoadParticleResource 1, pound_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_BattlerPartialDraw BATTLE_ANIM_ATTACKER, 8, 10
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W091, 2, 2
    Delay 10
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W091, 2, 2
    Delay 10
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W091, 2, 3
    Delay 45
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_2:
    Func_BattlerPartialDraw BATTLE_ANIM_ATTACKER, -8, 2
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    PlaySoundEffectL SEQ_SE_DP_W091
    Delay 2
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    PlaySoundEffectL SEQ_SE_DP_W091
    Delay 2
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -688, 0
    PlaySoundEffectL SEQ_SE_DP_W091
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 1, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 1, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

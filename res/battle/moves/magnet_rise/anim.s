#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, magnet_rise_spa
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W085B
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -8, 8
    Delay 8
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 16, 16
    PlaySoundEffectL SEQ_SE_DP_203
    Delay 16
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -8, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W085B
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 8, 8
    Delay 8
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -16, 16
    PlaySoundEffectL SEQ_SE_DP_203
    Delay 16
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 8, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

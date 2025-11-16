#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, detect_spa
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_BLACK, 12, 0
    Delay 2
    Delay 8
    PlaySoundEffectL SEQ_SE_DP_W197
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_PlayfulHops BATTLER_ROLE_DEFENDER
    BeginLoop 1
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 10, -20, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_BLACK, 12, 0
    Delay 2
    Delay 8
    PlaySoundEffectL SEQ_SE_DP_W197
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_PlayfulHops BATTLER_ROLE_DEFENDER
    BeginLoop 1
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 10, -20, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_BLACK, 12, 0
    Delay 2
    Delay 8
    PlaySoundEffectL SEQ_SE_DP_W197
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, -8256, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, -8256, 0, 0
    Func_PlayfulHops BATTLER_ROLE_DEFENDER
    BeginLoop 1
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 10, -20, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_BLACK, 12, 0
    Delay 2
    Delay 8
    PlaySoundEffectL SEQ_SE_DP_W197
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, -8256, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, -8256, 0, 0
    Func_PlayfulHops BATTLER_ROLE_DEFENDER
    BeginLoop 1
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 10, -20, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W039
    Func_MoveBattlerX2 5, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

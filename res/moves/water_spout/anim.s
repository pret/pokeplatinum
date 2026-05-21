#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, water_spout_spa
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 110, 100, 80, 100, HOLD_F(5) | CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    PlaySoundEffectL SEQ_SE_DP_W029
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 100, 100, 120, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    Delay 10
    PlaySoundEffectL SEQ_SE_DP_W291
    Delay 5
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER_SIDE
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W057
    Func_Shake 1, 0, 1, 13, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 13, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

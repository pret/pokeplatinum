#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, slack_off_spa
    PlaySoundEffectL SEQ_SE_DP_W281
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 100, 100, 60, 100, HOLD_F(20) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    WaitForAnimTasks
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlaySoundEffectL SEQ_SE_DP_W071B
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

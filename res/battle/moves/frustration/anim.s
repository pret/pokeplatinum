#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, frustration_spa
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 10
    PlaySoundEffectL SEQ_SE_DP_W082
    WaitForAnimTasks
    Func_Flail FLAIL_MODE_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_W025B, 2, 3
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

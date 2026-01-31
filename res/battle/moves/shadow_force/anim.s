#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, shadow_force_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    PlaySoundEffectL SEQ_SE_DP_W467
    Func_BlinkAttacker 5, 0
    Delay 2
    Func_SetBgGrayscale TRUE
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    Delay 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_SetBgGrayscale FALSE
    WaitForAnimTasks
    End

L_2:
    Func_SetBgGrayscale TRUE
    PlaySoundEffectR SEQ_SE_DP_186
    WaitForAnimTasks
    Delay 20
    PlaySoundEffectR SEQ_SE_DP_W007
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 5
    PlayDelayedSoundEffectR SEQ_SE_DP_W109, 8
    PlayDelayedSoundEffectR SEQ_SE_DP_W109, 13
    Func_BlinkAttacker 5, 0
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_SetBgGrayscale FALSE
    WaitForAnimTasks
    End

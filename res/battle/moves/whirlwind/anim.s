#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, whirlwind_spa
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_KAZE, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    Func_Shake 1, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W059B
    Func_MoveBattlerOffScreen BATTLE_ANIM_DEFENDER, 20
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_DEFENDER, TRUE
    Func_MoveBattlerToDefaultPos BATTLE_ANIM_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

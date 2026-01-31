#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, knock_off_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W233
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    Delay 5
    Func_Shake 0, 4, 1, 1, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W004
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

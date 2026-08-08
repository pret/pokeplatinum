#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hi_jump_kick_spa
    PlaySoundEffectL SEQ_SE_DP_W026_sseq
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlaySoundEffectR SEQ_SE_DP_W233B_sseq
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_BASI_sseq
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

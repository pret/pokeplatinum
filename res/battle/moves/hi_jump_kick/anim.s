#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hi_jump_kick_spa
    PlaySoundEffectL SEQ_SE_DP_W026
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlaySoundEffectR SEQ_SE_DP_W233B
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_BASI
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, vine_whip_spa
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    PlaySoundEffectR SEQ_SE_DP_MUCHI
    Delay 5
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_PASA2
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End

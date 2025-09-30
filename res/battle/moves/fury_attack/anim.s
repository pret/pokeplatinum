#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fury_attack_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    PlayLoopedSoundEffectR SEQ_SE_DP_W030, 2, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

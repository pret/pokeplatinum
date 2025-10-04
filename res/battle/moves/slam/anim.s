#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, slam_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, 4, 2
    Delay 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, -14, -4, 2
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, -4, 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 14, 4, 4
    PlaySoundEffectR SEQ_SE_DP_W025B
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

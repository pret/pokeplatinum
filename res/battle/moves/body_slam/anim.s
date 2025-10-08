#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, body_slam_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 16, 4
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -16, 4
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W036
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 6
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 24, 0, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 3, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -24, 0, 4
    WaitForAnimTasks
    End

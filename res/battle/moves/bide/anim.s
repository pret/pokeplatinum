#include "macros/btlanimcmd.inc"

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, bide_spa
    PlayLoopedSoundEffectL SEQ_SE_DP_W036, 3, 4
    CreateEmitter 0, 0, 3
    Func_Shake 1, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
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

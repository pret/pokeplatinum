#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, lava_plume_spa
    PlaySoundEffectL SEQ_SE_DP_W436
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_NOT_ATTACKER
    Delay 1
    JumpIfFriendlyFire L_1
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_RED, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_2:
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_1, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_2, 0, 1, BATTLE_COLOR_RED, 10, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_1, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_2, 0, 1, BATTLE_COLOR_RED, 10, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
    End
    End

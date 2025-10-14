#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, heat_wave_spa
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_1:
    CreateEmitter 0, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W257, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAnimTasks
    Delay 35
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W257, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Func_Shake 3, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 3, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    Func_MoveBattlerX2 4, -20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattlerX2 4, -20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    Delay 35
    Func_MoveBattlerX2 5, 20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattlerX2 5, 20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CreateEmitter 0, 1, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W257, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Func_Shake 3, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 3, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    Func_MoveBattlerX2 4, -20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattlerX2 4, -20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    Delay 35
    Func_MoveBattlerX2 5, 20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattlerX2 5, 20, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

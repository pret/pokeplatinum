#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, flame_wheel_spa
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_W172, 3, 12
    Delay 20
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 12, 
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 12, 
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W172B
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

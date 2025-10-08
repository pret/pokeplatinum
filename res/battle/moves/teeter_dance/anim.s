#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, teeter_dance_spa
    PlayLoopedSoundEffectL SEQ_SE_DP_W298, 4, 6
    CreateEmitter 0, 0, 3
    Func_MoveBattlerX2 8, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 8, 12, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 8, -36, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 8, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 8, -12, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 8, 36, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 4, -4, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 4, 4, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

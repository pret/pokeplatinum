#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sand_attack_spa
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W028, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    Delay 9
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

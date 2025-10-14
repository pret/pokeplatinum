#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, spike_cannon_spa
    Func_MoveBattlerX2 2, -8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 16, 0
    BtlAnimCmd_055 3, 0, 0, 0, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W013, 2, 8
    Func_MoveBattlerX2 2, 8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

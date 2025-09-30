#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, counter_spa
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_LEFT
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 10
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Func_Shake 1, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

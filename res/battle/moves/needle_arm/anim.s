#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, needle_arm_spa
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Delay 2
    PlayLoopedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 2, 8
    Delay 13
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayDelayedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT, 5
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

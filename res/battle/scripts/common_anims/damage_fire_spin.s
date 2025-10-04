#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 113
    PlayPannedSoundEffect SEQ_SE_DP_W221B, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    BeginLoop 2
    Func_Shake 1, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

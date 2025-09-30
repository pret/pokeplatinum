#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, body_slam_spa
    Func_MoveBattler 258, 0, 16, 4
    WaitForAnimTasks
    Func_MoveBattler 258, 0, -16, 4
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 6
    Func_MoveBattler 258, 24, 0, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 3, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler 258, -24, 0, 4
    WaitForAnimTasks
    End

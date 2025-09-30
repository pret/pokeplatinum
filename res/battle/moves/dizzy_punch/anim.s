#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, dizzy_punch_spa
    BeginLoop 2
    Delay 6
    Func_MoveBattler 258, 24, 0, 3
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler 258, -24, 0, 3
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W146, BATTLE_SOUND_PAN_RIGHT
    PlayLoopedSoundEffect SEQ_SE_DP_W146, BATTLE_SOUND_PAN_RIGHT, 4, 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

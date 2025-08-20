#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 320
    PlayPannedSoundEffect SEQ_SE_DP_W281, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 100, 100, 60, 100, 1310721, 262148
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

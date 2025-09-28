#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, hi_jump_kick_spa
    PlayPannedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattlerX2 3, 24, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, 258
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattlerX2 3, -24, 264
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, 264
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

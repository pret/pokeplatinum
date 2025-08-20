#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    LoadParticleResource 0, 215
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 5, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W016B, 0, 2, 14
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 5, 0, 0
    Delay 20
    CreateEmitter 0, 2, 20
    Func_Shake 2, 0, 1, 10, 264
    Func_Shake 2, 0, 1, 10, 272
    Func_FadeBattlerSprite 8, 0, 2, 32767, 14, 0
    Func_FadeBattlerSprite 16, 0, 2, 32767, 14, 0
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W258, BATTLE_SOUND_PAN_RIGHT, 4, 4
    Delay 50
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    StopSoundEffect SEQ_SE_DP_W016B
    End

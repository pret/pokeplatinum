#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, power_gem_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W408, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 40
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_185, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    PlayLoopedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT, 4, 5
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 10, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

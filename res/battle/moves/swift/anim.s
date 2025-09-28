#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, swift_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_165, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 5, 0, 0
    CreateEmitter 0, 0, 20
    Delay 2
    Delay 18
    PlayLoopedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT, 4, 3
    Func_Shake 2, 0, 1, 2, 264
    Func_Shake 2, 0, 1, 2, 272
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

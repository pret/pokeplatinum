#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 77
    Func_FadeBg 0, 1, 0, 12, 32767
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W047, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 5
    Func_FadeBattlerSprite 8, 0, 3, 23199, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 32767
    WaitForAnimTasks
    End

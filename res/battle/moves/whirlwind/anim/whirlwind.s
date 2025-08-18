#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 48
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_KAZE, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    CallFunc 36, 5, 1, 0, 1, 10, 264
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W059B, BATTLE_SOUND_PAN_RIGHT
    CallFunc 61, 2, 8, 20
    WaitForAnimTasks
    CallFunc 40, 2, 8, 1
    CallFunc 62, 1, 8
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

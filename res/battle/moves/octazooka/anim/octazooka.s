#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 209
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 16, 0
    BtlAnimCmd_055 5, 3, 0, 0, 0, 0
    CallFunc 52, 3, 3, -24, 258
    Delay 5
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 2, 0, 1, 10, 264
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

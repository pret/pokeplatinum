#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 188
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 34, 6, 8, 0, 1, 13741, 14, 0
    Delay 1
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W233, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 2, 3
    CallFunc 66, 7, 0, 0, 0, 0, 19, 64, 1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

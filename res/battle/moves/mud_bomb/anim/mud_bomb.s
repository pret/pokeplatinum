#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 443
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 1
    CreateEmitter 0, 0, 3
    CallFunc 66, 6, 0, 0, 0, 0, 24, 64
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    Delay 23
    PlayPannedSoundEffect SEQ_SE_DP_W426, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

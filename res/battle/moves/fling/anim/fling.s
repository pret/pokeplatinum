#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 391
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W374, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 3
    CallFunc 66, 6, 0, 0, 0, 0, 14, 64
    Delay 13
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

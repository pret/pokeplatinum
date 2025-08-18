#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 170
    CreateEmitterEx 0, 0, 0, 3
    CallFunc 65, 9, 0, 0, 0, 0, 19, 64, 0, 0, 1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_181, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 8
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_181, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT, 2
    Delay 10
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

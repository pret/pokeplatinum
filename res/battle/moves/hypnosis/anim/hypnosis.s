#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 125
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 16, 10, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 16, 10, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W048, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 30
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CallFunc 34, 6, 8, 0, 1, 31764, 8, 0
    PlayPannedSoundEffect SEQ_SE_DP_154, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W173B, BATTLE_SOUND_PAN_RIGHT, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 36
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W013B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 3, 4
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W006, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

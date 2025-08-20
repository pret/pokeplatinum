#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 405
    CreateEmitter 0, 1, 4
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 19, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_001, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_112, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

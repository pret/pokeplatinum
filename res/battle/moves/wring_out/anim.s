#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, wring_out_spa
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_021, BATTLE_SOUND_PAN_RIGHT, 10, 5
    BeginLoop 3
    Func_ScaleBattlerSprite 264, 100, 80, 100, 140, 100, 1, 327685
    Delay 10
    Func_ScaleBattlerSprite 264, 100, 120, 100, 80, 100, 1, 327685
    Delay 10
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

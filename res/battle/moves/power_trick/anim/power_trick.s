#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, power_trick_spa
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 2, 1, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 1, 0, 0
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W379, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 80, 100, 140, 100, 1, 327685
    Delay 10
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 10
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 90
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W060C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 14, 8, 0, 0
    Func_FadeBattlerSprite 8, 0, 1, 31764, 8, 10
    BeginLoop 2
    Func_MoveBattlerX2 8, 8, 264
    Delay 8
    Func_MoveBattlerX2 16, -16, 264
    Delay 16
    Func_MoveBattlerX2 8, 8, 264
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

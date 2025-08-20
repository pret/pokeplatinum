#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 277
    PlayPannedSoundEffect SEQ_SE_DP_W227B, 0
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    Delay 15
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_001, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 264, 0, 8, 4
    Delay 4
    Func_MoveBattler 264, 0, -8, 4
    Delay 4
    EndLoop
    Delay 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    Delay 15
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_001, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 264, 0, -8, 4
    Delay 4
    Func_MoveBattler 264, 0, 8, 4
    Delay 4
    EndLoop
    Delay 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

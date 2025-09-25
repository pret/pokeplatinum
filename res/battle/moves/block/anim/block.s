#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, imprison_spa
    PlayPannedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    BeginLoop 1
    Delay 12
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

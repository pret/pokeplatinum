#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 457
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT
    Func_FadeBattlerSprite 8, 0, 1, 31764, 10, 0
    CreateEmitter 0, 2, 4
    Delay 5
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 4, 3
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

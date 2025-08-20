#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 314
    PlayPannedSoundEffect SEQ_SE_DP_W080, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite 8, 0, 3, 13741, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

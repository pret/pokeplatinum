#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 397
    PlayLoopedSoundEffect SEQ_SE_DP_W380, BATTLE_SOUND_PAN_RIGHT, 2, 6
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 2, 11252, 10, 0
    Func_Shake 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

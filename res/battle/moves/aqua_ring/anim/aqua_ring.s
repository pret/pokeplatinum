#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 409
    PlayLoopedSoundEffect SEQ_SE_DP_W392, BATTLE_SOUND_PAN_LEFT, 32, 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

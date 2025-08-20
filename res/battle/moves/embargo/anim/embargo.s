#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 390
    PlayPannedSoundEffect SEQ_SE_DP_W373, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 1, 0, 10, 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, giga_drain_spa
    PlayLoopedSoundEffect SEQ_SE_DP_W202, 0, 2, 18
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 5, 2, 0, 0, 0, 0
    CreateEmitter 0, 2, 3
    Delay 60
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

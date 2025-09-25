#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, air_slash_spa
    PlayPannedSoundEffect SEQ_SE_DP_BRADE, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_208, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, 264
    Func_FadeBattlerSprite 8, 0, 1, 32767, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

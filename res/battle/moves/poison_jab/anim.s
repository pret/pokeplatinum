#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, poison_jab_spa
    PlayLoopedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 4, 6
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 10
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    Func_Shake 2, 0, 1, 4, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

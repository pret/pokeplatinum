#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, ember_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 1, 31, 10, 0
    Func_Shake 1, 0, 1, 2, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W052, BATTLE_SOUND_PAN_RIGHT, 3, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

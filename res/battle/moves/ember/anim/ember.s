#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 82
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 34, 6, 8, 0, 1, 31, 10, 0
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W052, BATTLE_SOUND_PAN_RIGHT, 3, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

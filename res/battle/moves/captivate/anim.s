#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, captivate_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_164, BATTLE_SOUND_PAN_LEFT
    Func_PlayfulHops
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

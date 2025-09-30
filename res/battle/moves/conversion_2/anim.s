#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, conversion_2_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 1, 1, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W112, BATTLE_SOUND_PAN_RIGHT, 5, 4
    CreateEmitter 0, 2, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_RIGHT, 45
    PlayDelayedSoundEffect SEQ_SE_DP_351, BATTLE_SOUND_PAN_LEFT, 65
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

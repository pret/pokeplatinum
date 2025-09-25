#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, wake_up_slap_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    PlayLoopedSoundEffect SEQ_SE_DP_030C, BATTLE_SOUND_PAN_RIGHT, 6, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W092, BATTLE_SOUND_PAN_RIGHT, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W092, BATTLE_SOUND_PAN_RIGHT, 8
    PlayDelayedSoundEffect SEQ_SE_DP_W092, BATTLE_SOUND_PAN_RIGHT, 16
    PlayDelayedSoundEffect SEQ_SE_DP_W092, BATTLE_SOUND_PAN_RIGHT, 25
    Func_Shake 2, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 237
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 2, 0, 1, 8, 264
    CallFunc 36, 5, 2, 0, 1, 8, 258
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_LEFT, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 5
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_LEFT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_LEFT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 25
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

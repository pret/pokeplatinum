#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 132
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_LEFT
    Delay 10
    Func_FadeBattlerSprite 2, 0, 2, 13311, 10, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT, 31
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

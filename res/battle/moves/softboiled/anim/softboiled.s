#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, softboiled_spa
    PlayPannedSoundEffect SEQ_SE_DP_112, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 3, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_LEFT, 40
    Delay 40
    PlayDelayedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT, 5
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

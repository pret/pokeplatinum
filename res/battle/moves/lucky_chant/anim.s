#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, lucky_chant_spa
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 0, 19
    PlayDelayedSoundEffect SEQ_SE_DP_163, BATTLE_SOUND_PAN_LEFT, 2
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_WHITE, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

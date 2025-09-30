#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, sweet_kiss_spa
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_041, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    PlayDelayedSoundEffect SEQ_SE_DP_W213, BATTLE_SOUND_PAN_RIGHT, 65
    CreateEmitter 0, 1, 4
    Delay 60
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_RED, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

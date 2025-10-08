#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayPannedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 2, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, feather_dance_spa
    PlayPannedSoundEffect SEQ_SE_DP_W080, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 3, BATTLE_COLOR_GRAY, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

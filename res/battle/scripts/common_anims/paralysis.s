#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 114
    PlayPannedSoundEffect SEQ_SE_DP_W085C, BATTLE_SOUND_PAN_LEFT
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_BLACK, 15, 0
    CreateEmitter 0, 1, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

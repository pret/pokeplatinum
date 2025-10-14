#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 2
    PlayPannedSoundEffect SEQ_SE_DP_EXPMAX2, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

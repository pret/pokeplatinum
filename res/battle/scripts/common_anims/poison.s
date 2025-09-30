#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_LEFT, 3, 3
    CreateEmitter 0, 7, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

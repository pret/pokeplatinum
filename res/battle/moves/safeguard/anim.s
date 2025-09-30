#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, safeguard_spa
    PlayLoopedSoundEffect SEQ_SE_DP_W208, BATTLE_SOUND_PAN_LEFT, 4, 4
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 0, 19
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 12
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

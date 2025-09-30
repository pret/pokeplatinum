#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, milk_drink_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_RIGHT
    Delay 25
    PlayPannedSoundEffect SEQ_SE_DP_052, BATTLE_SOUND_PAN_RIGHT
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_RIGHT, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

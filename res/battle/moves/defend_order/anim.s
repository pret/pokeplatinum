#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, defend_order_spa
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W456, BATTLE_SOUND_PAN_LEFT, 6, 12
    Delay 50
    PlayPannedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT
    Delay 40
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 4, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

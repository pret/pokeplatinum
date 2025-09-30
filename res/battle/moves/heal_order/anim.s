#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, heal_order_spa
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W456, BATTLE_SOUND_PAN_LEFT, 6, 12
    Delay 50
    PlayPannedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT
    Delay 40
    PlayPannedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 4, 3
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 273
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 80, 100, 160, 100, 1, 327695
    Delay 5
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    PlayPannedSoundEffect SEQ_SE_DP_W255F, BATTLE_SOUND_PAN_LEFT
    Delay 55
    PlayPannedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT
    Delay 5
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

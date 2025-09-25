#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, aromatherapy_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    Func_FadeBg 0, 0, 0, 8, 1003
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W080, 0
    Delay 60
    PlayPannedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT
    Func_FadeBg 0, 0, 8, 0, 1003
    WaitForAnimTasks
    PlayDelayedSoundEffect SEQ_SE_DP_REAPOKE, BATTLE_SOUND_PAN_LEFT, 23
    CreateEmitter 0, 3, 19
    CreateEmitter 0, 1, 19
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    Func_FadeBattlerSprite 4, 0, 1, 32767, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

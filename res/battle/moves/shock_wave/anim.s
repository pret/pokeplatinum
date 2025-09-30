#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, shock_wave_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    Delay 5
    PlayLoopedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT, 8, 2
    Delay 40
    CreateEmitter 0, 4, 4
    Delay 13
    PlayPannedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_LEFT
    Delay 24
    PlayPannedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_LEFT
    Delay 8
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_FadeBattlerSprite 8, 0, 2, BATTLE_COLOR_LIGHT_YELLOW1, 10, 10
    Func_Shake 2, 0, 1, 6, 264
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    PlayDelayedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_RIGHT, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

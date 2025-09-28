#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, meteor_mash_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W112, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    Delay 7
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Delay 8
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_351, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Func_Shake 5, 0, 1, 4, 264
    Func_FadeBattlerSprite 8, 0, 1, 32767, 14, 0
    WaitForAnimTasks
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, sludge_spa
    LoadParticleResource 1, sludge_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 1, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 14, 64
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 12
    PlayDelayedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 15
    CreateEmitter 1, 0, 4
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

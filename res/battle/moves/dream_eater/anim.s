#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 1, drain_punch_spa
    LoadParticleResource 0, dream_eater_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 1, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 5, 2, 0, 0, 0, 0
    Delay 10
    CreateEmitter 0, 1, 3
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_153, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    PlayDelayedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT, 75
    Delay 75
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

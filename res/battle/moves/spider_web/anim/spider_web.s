#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, spider_web_spa
    LoadParticleResource 1, spider_web_spa
    JumpIfContest L_1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W081B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 1
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 2, 4
    Delay 14
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W081, BATTLE_SOUND_PAN_RIGHT, 32
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_1:
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W081B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 28, 22, 0, 4
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 2, 4
    Delay 14
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W081, BATTLE_SOUND_PAN_RIGHT, 32
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

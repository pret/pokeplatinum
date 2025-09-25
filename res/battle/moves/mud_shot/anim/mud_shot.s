#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 358
    JumpIfFriendlyFire L_1
    JumpIfContest L_2
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterForMove 0, 0, 3, 6, 7, 8, 9, 18
    Delay 10
    CreateEmitter 0, 14, 4
    Func_Shake 2, 0, 1, 6, 264
    Func_FadeBattlerSprite 8, 0, 2, 1098, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterForFriendlyFire 0, 11, 12, 11, 12, 3
    Delay 10
    CreateEmitter 0, 14, 4
    Func_Shake 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 10, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, 11008, -8256, 0
    Delay 10
    CreateEmitter 0, 14, 4
    Func_Shake 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

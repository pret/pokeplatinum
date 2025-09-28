#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, whirlwind_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_KAZE, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    Func_Shake 1, 0, 1, 10, 264
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W059B, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattlerOffScreen 8, 20
    WaitForAnimTasks
    Func_HideBattler 8, 1
    Func_MoveBattlerToDefaultPos 8
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, jump_kick_spa
    Func_MoveBattlerX2 3, 24, 258
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 4096, 0
    BtlAnimCmd_055 5, 3, 0, 0, 0, 0
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, 258
    PlayPannedSoundEffect SEQ_SE_DP_131, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    Delay 20
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

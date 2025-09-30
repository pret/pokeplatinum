#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, aqua_jet_spa
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    Func_MoveBattler 258, 28, -16, 2
    WaitForAnimTasks
    Func_HideBattler 2, 1
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_LEFT
    CreateEmitterEx 0, 0, 3, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 8, 64, 0, 131075
    CreateEmitterEx 0, 1, 4, 3
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 8, 64, 0, 131075
    CreateEmitterEx 0, 2, 5, 3
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 8, 64, 0, 131075
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W291, 0
    CreateEmitterEx 0, 3, 3, 3
    Func_MoveEmitterA2BLinear 3, 0, 0, 0, 8, 64, 0, 327686
    CreateEmitterEx 0, 4, 4, 3
    Func_MoveEmitterA2BLinear 4, 0, 0, 0, 8, 64, 0, 327686
    CreateEmitterEx 0, 5, 5, 3
    Func_MoveEmitterA2BLinear 5, 0, 0, 0, 8, 64, 0, 327686
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_RIGHT
    CreateEmitterEx 0, 6, 3, 3
    Func_MoveEmitterA2BLinear 6, 0, 0, 0, 8, 64, 0, 458760
    CreateEmitterEx 0, 7, 4, 3
    Func_MoveEmitterA2BLinear 7, 0, 0, 0, 8, 64, 0, 458760
    CreateEmitterEx 0, 8, 5, 3
    Func_MoveEmitterA2BLinear 8, 0, 0, 0, 8, 64, 0, 458760
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_HideBattler 2, 0
    End

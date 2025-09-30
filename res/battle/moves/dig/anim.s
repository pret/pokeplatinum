#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, dig_spa
    LoadParticleResource 1, pound_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_BattlerPartialDraw 2, 0, 0, 8, 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT, 2, 2
    Delay 10
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT, 2, 2
    Delay 10
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT, 2, 3
    Delay 45
    Func_HideBattler 2, 1
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_2:
    Func_BattlerPartialDraw 2, 0, 0, -8, 2
    Func_HideBattler 2, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Delay 2
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -688, 0
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    Func_HideBattler 2, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

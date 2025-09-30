#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, dragon_rush_spa
    PlayPannedSoundEffect SEQ_SE_DP_MUCHI, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    Func_ShakeBg 0, 5, 0, 5, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W088
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

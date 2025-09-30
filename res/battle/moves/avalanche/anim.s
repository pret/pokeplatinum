#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, avalanche_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W419, BATTLE_SOUND_PAN_RIGHT
    Delay 12
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_WHITE, 10, 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_Shake 1, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    End

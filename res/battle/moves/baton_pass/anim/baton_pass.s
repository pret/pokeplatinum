#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 243
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 16
    LoadPlttRes 0, 15, 1
    LoadCellResObj 0, 16
    LoadAnimResObj 0, 16
    AddSpriteWithFunc 0, 13, 16, 15, 16, 16, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_SUIKOMU, BATTLE_SOUND_PAN_LEFT
    Delay 32
    PlayPannedSoundEffect SEQ_SE_DP_BOWA2, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_W100, BATTLE_SOUND_PAN_LEFT, 40
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 30, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 30, 0, 0, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    End

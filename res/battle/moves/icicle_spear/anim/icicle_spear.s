#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 350
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 30
    LoadPlttRes 0, 30, 1
    LoadCellResObj 0, 30
    LoadAnimResObj 0, 30
    AddSpriteWithFunc 0, 17, 30, 30, 30, 30, 0, 0, 4, -15, -5, 10, 32
    PlayPannedSoundEffect SEQ_SE_DP_W196, BATTLE_SOUND_PAN_LEFT
    Delay 5
    AddSpriteWithFunc 0, 17, 30, 30, 30, 30, 0, 0, 4, -5, -20, 10, 32
    PlayPannedSoundEffect SEQ_SE_DP_W196, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 2752, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 2752, 0
    Func_Shake 1, 0, 1, 1, 264
    Delay 5
    AddSpriteWithFunc 0, 17, 30, 30, 30, 30, 0, 0, 4, -10, -15, 10, 32
    PlayPannedSoundEffect SEQ_SE_DP_W196, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 2752, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 2752, 0
    Func_Shake 1, 0, 1, 1, 264
    PlayPannedSoundEffect SEQ_SE_DP_W196, BATTLE_SOUND_PAN_LEFT
    Delay 6
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 2752, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 2752, 0
    Func_Shake 2, 0, 1, 2, 264
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

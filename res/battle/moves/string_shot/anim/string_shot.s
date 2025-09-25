#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 111
    JumpIfContest L_1
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 5, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W081B, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W020B, BATTLE_SOUND_PAN_RIGHT, 50
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 1
    LoadPlttRes 0, 1, 1
    LoadCellResObj 0, 1
    LoadAnimResObj 0, 1
    AddSpriteWithFunc 0, 1, 1, 1, 1, 1, 0, 0, 1, 3
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_1:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 5, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W081B, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W020B, BATTLE_SOUND_PAN_RIGHT, 50
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 1
    LoadPlttRes 0, 1, 1
    LoadCellResObj 0, 1
    LoadAnimResObj 0, 1
    AddSpriteWithFunc 0, 1, 1, 1, 1, 1, 0, 0, 1, 3
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

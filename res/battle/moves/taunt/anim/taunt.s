#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 286
    PlayPannedSoundEffect SEQ_SE_DP_W118, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W039, 0, 30
    PlayDelayedSoundEffect SEQ_SE_DP_W039, 0, 47
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 22
    LoadPlttRes 0, 21, 1
    LoadCellResObj 0, 22
    LoadAnimResObj 0, 22
    AddSpriteWithFunc 0, 19, 22, 21, 22, 22, 0, 0, 1, 1
    WaitForAnimTasks
    FreeSpriteManager 0
    InitSpriteManager 0, 7, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, 11
    LoadPlttRes 0, 11, 1
    LoadCellResObj 0, 11
    LoadAnimResObj 0, 11
    AddSpriteWithFunc 0, 10, 11, 11, 11, 11, 0, 0, 0
    CallFunc 34, 6, 8, 0, 1, 31, 14, 0
    Delay 4
    PlayLoopedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT, 10, 2
    Delay 10
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

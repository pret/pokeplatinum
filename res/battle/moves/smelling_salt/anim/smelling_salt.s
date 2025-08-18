#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 282
    InitSpriteManager 0, 1, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, 20
    LoadPlttRes 0, 19, 1
    LoadCellResObj 0, 20
    LoadAnimResObj 0, 20
    AddSpriteWithFunc 0, 25, 20, 19, 20, 20, 0, 0, 3, 0, 24, 0
    Delay 30
    PlayLoopedSoundEffect SEQ_SE_DP_030C, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 6, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreeSpriteManager 0
    End

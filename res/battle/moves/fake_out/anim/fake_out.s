#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 269
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 18
    LoadPlttRes 0, 17, 1
    LoadCellResObj 0, 18
    LoadAnimResObj 0, 18
    AddSpriteWithFunc 0, 18, 18, 17, 18, 18, 0, 0, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W260, 0, 20
    Delay 2
    CallFunc 41, 0
    Delay 4
    CreateEmitter 0, 0, 4
    Delay 4
    Delay 8
    CallFunc 43, 0
    PlayPannedSoundEffect SEQ_SE_DP_W166, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

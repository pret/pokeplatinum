#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 354
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W221B, BATTLE_SOUND_PAN_LEFT
    CallFunc 34, 6, 2, 0, 2, 31, 10, 0
    Delay 30
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 17
    LoadPlttRes 0, 16, 1
    LoadCellResObj 0, 17
    LoadAnimResObj 0, 17
    AddSpriteWithFunc 0, 22, 17, 16, 17, 17, 0, 0, 1, 4
    Delay 1
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 2, 24, 258
    Delay 2
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 2
    CallFunc 52, 3, 2, -24, 258
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

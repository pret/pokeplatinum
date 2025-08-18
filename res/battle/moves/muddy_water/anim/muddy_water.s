#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 347
    InitSpriteManager 0, 2, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 0
    LoadPlttRes 0, 29, 1
    LoadCellResObj 0, 0
    LoadAnimResObj 0, 0
    AddSprite 0, 0, 0, 29, 0, 0, 0, 0
    AddSprite 0, 1, 0, 29, 0, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_LEFT
    CallFunc 49, 1, 1
    WaitForAnimTasks
    FreeSpriteManager 0
    CallFunc 45, 8, 49, 0, 256, -6, 6, 1, 16, 45
    PlayPannedSoundEffect SEQ_SE_DP_W057B, 0
    Delay 15
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    CreateEmitter 0, 2, 20
    JumpIfFriendlyFire L_1
    CallFunc 34, 6, 8, 0, 1, 2124, 10, 10
    CallFunc 34, 6, 16, 0, 1, 2124, 10, 10
    CallFunc 36, 5, 2, 0, 1, 6, 264
    CallFunc 36, 5, 2, 0, 1, 6, 272
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    JumpIfBattlerSide 0, L_2, L_3
    End

L_2:
    CallFunc 34, 6, 8, 0, 1, 2124, 10, 10
    CallFunc 34, 6, 2056, 0, 1, 2124, 10, 10
    CallFunc 34, 6, 2064, 0, 1, 2124, 10, 10
    CallFunc 36, 5, 2, 0, 1, 6, 288
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CallFunc 34, 6, 8, 0, 1, 2124, 10, 10
    CallFunc 34, 6, 2050, 0, 1, 2124, 10, 10
    CallFunc 34, 6, 2052, 0, 1, 2124, 10, 10
    CallFunc 36, 5, 2, 0, 1, 6, 288
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
    End
    End

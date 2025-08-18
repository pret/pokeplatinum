#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 31
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 7
    LoadPlttRes 0, 7, 1
    LoadCellResObj 0, 7
    LoadAnimResObj 0, 7
    AddSpriteWithFunc 0, 6, 7, 7, 7, 7, 0, 0, 0
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 5
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 4, 0, 1, 1, 264
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    WaitForAnimTasks
    FreeSpriteManager 0
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 292
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 26
    LoadPlttRes 0, 25, 1
    LoadCellResObj 0, 26
    LoadAnimResObj 0, 26
    AddSpriteWithFunc 0, 23, 26, 25, 26, 26, 0, 0, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_LEFT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_LEFT, 28
    PlayDelayedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_LEFT, 98
    PlayDelayedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_LEFT, 108
    Delay 35
    PlayLoopedSoundEffect SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, 2, 12
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    FreeSpriteManager 0
    End

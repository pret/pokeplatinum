#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, ingrain_spa
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, vines_NCGR_lz
    LoadPlttRes 0, vines_NCLR, 1
    LoadCellResObj 0, vines_cell_NCER_lz
    LoadAnimResObj 0, vines_anim_NANR_lz
    AddSpriteWithFunc 0, 23, vines_NCGR_lz, vines_NCLR, vines_cell_NCER_lz, vines_anim_NANR_lz, 0, 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_LEFT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_LEFT, 28
    Delay 35
    PlayLoopedSoundEffect SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, 2, 12
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    FreeSpriteManager 0
    End

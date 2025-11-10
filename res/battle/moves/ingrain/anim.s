#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ingrain_spa
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, vines_NCGR_lz
    LoadPlttRes 0, vines_NCLR, 1
    LoadCellResObj 0, vines_cell_NCER_lz
    LoadAnimResObj 0, vines_anim_NANR_lz
    AddSpriteWithFunc 0, 23, vines_NCGR_lz, vines_NCLR, vines_cell_NCER_lz, vines_anim_NANR_lz, 0, 0, 4
    PlayDelayedSoundEffectL SEQ_SE_DP_W010, 10
    PlayDelayedSoundEffectL SEQ_SE_DP_W010, 28
    Delay 35
    PlayLoopedSoundEffectL SEQ_SE_DP_W145C, 2, 12
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAnimTasks
    FreeSpriteManager 0
    End

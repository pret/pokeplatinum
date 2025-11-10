#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, baton_pass_spa
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, baton_pass_NCGR_lz
    LoadPlttRes 0, baton_pass_NCLR, 1
    LoadCellResObj 0, baton_pass_cell_NCER_lz
    LoadAnimResObj 0, baton_pass_anim_NANR_lz
    AddSpriteWithFunc 0, 13, baton_pass_NCGR_lz, baton_pass_NCLR, baton_pass_cell_NCER_lz, baton_pass_anim_NANR_lz, 0, 0
    PlaySoundEffectL SEQ_SE_DP_SUIKOMU
    Delay 32
    PlaySoundEffectL SEQ_SE_DP_BOWA2
    PlayDelayedSoundEffectL SEQ_SE_DP_W100, 40
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 30, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 30, 0, 0, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    End

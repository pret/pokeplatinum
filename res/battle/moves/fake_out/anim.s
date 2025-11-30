#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fake_out_spa
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, fake_out_NCGR_lz
    LoadPlttRes 0, fake_out_NCLR, 1
    LoadCellResObj 0, fake_out_cell_NCER_lz
    LoadAnimResObj 0, fake_out_anim_NANR_lz
    AddSpriteWithFunc 0, 18, fake_out_NCGR_lz, fake_out_NCLR, fake_out_cell_NCER_lz, fake_out_anim_NANR_lz, 0, 0
    PlayDelayedSoundEffectC SEQ_SE_DP_W260, 20
    Delay 2
    Func_FakeOutCurtain
    Delay 4
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 4
    Delay 8
    Func_FakeOut
    PlaySoundEffectR SEQ_SE_DP_W166
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

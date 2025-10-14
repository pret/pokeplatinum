#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, taunt_spa
    PlaySoundEffectC SEQ_SE_DP_W118
    PlayDelayedSoundEffectC SEQ_SE_DP_W039, 30
    PlayDelayedSoundEffectC SEQ_SE_DP_W039, 47
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, taunt_NCGR_lz
    LoadPlttRes 0, taunt_NCLR, 1
    LoadCellResObj 0, taunt_cell_NCER_lz
    LoadAnimResObj 0, taunt_anim_NANR_lz
    AddSpriteWithFunc 0, 19, taunt_NCGR_lz, taunt_NCLR, taunt_cell_NCER_lz, taunt_anim_NANR_lz, 0, 0, 1
    WaitForAnimTasks
    FreeSpriteManager 0
    InitSpriteManager 0, 7, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, angry_NCGR_lz
    LoadPlttRes 0, angry_NCLR, 1
    LoadCellResObj 0, angry_cell_NCER_lz
    LoadAnimResObj 0, angry_anim_NANR_lz
    AddSpriteWithFunc 0, 10, angry_NCGR_lz, angry_NCLR, angry_cell_NCER_lz, angry_anim_NANR_lz, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 14, 0
    Delay 4
    PlayLoopedSoundEffectR SEQ_SE_DP_W207B, 10, 2
    Delay 10
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

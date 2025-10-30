#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, string_shot_spa
    JumpIfContest L_1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 5, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W081B
    PlayDelayedSoundEffectR SEQ_SE_DP_W020B, 50
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, string_shot_NCGR_lz
    LoadPlttRes 0, string_shot_NCLR, 1
    LoadCellResObj 0, string_shot_cell_NCER_lz
    LoadAnimResObj 0, string_shot_anim_NANR_lz
    AddSpriteWithFunc 0, 1, string_shot_NCGR_lz, string_shot_NCLR, string_shot_cell_NCER_lz, string_shot_anim_NANR_lz, 0, 0, 3
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

L_1:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 5, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W081B
    PlayDelayedSoundEffectR SEQ_SE_DP_W020B, 50
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, string_shot_NCGR_lz
    LoadPlttRes 0, string_shot_NCLR, 1
    LoadCellResObj 0, string_shot_cell_NCER_lz
    LoadAnimResObj 0, string_shot_anim_NANR_lz
    AddSpriteWithFunc 0, 1, string_shot_NCGR_lz, string_shot_NCLR, string_shot_cell_NCER_lz, string_shot_anim_NANR_lz, 0, 0, 3
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

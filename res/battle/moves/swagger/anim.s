#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, angry_NCGR_lz
    LoadPlttRes 0, angry_NCLR, 1
    LoadCellResObj 0, angry_cell_NCER_lz
    LoadAnimResObj 0, angry_anim_NANR_lz
    Func_Swagger
    PlaySoundEffectL SEQ_SE_DP_W207D
    Delay 30
    WaitForAnimTasks
    AddSpriteWithFunc 0, 10, angry_NCGR_lz, angry_NCLR, angry_cell_NCER_lz, angry_anim_NANR_lz, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 14, 0
    PlaySoundEffectR SEQ_SE_DP_W207B
    Delay 8
    PlaySoundEffectR SEQ_SE_DP_W207B
    WaitForAnimTasks
    FreeSpriteManager 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 7, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, torment_NCGR_lz
    LoadPlttRes 0, torment_NCLR, 1
    LoadCellResObj 0, torment_cell_NCER_lz
    LoadAnimResObj 0, torment_anim_NANR_lz
    AddSpriteWithFunc 0, 12, torment_NCGR_lz, torment_NCLR, torment_cell_NCER_lz, torment_anim_NANR_lz, 0, 0
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W029
    Delay 16
    EndLoop
    BeginLoop 2
    Delay 4
    PlaySoundEffectL SEQ_SE_DP_W029
    Delay 4
    EndLoop
    BeginLoop 2
    Delay 4
    PlaySoundEffectL SEQ_SE_DP_W029
    EndLoop
    WaitForAnimTasks
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
    End

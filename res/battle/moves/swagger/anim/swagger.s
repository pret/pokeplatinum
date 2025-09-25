#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, angry_NCGR_lz
    LoadPlttRes 0, angry_NCLR, 1
    LoadCellResObj 0, angry_cell_NCER_lz
    LoadAnimResObj 0, angry_anim_NANR_lz
    CallFunc 31, 0
    PlayPannedSoundEffect SEQ_SE_DP_W207D, BATTLE_SOUND_PAN_LEFT
    Delay 30
    WaitForAnimTasks
    AddSpriteWithFunc 0, 10, angry_NCGR_lz, angry_NCLR, angry_cell_NCER_lz, angry_anim_NANR_lz, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 1, 31, 14, 0
    PlayPannedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    End

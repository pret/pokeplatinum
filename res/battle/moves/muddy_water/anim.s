#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, muddy_water_spa
    InitSpriteManager 0, 2, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, surf_NCGR_lz
    LoadPlttRes 0, muddy_water_NCLR, 1
    LoadCellResObj 0, surf_cell_NCER_lz
    LoadAnimResObj 0, surf_anim_NANR_lz
    AddSprite 0, 0, surf_NCGR_lz, muddy_water_NCLR, surf_cell_NCER_lz, surf_anim_NANR_lz, 0, 0
    AddSprite 0, 1, surf_NCGR_lz, muddy_water_NCLR, surf_cell_NCER_lz, surf_anim_NANR_lz, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_LEFT
    Func_Surf 1
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_MuddyWater 49, 0, 256, -6, 6, 1, 16, 45
    PlayPannedSoundEffect SEQ_SE_DP_W057B, 0
    Delay 15
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    CreateEmitter 0, 2, 20
    JumpIfFriendlyFire L_1
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_FadeBattlerSprite 16, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_Shake 2, 0, 1, 6, 264
    Func_Shake 2, 0, 1, 6, 272
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    JumpIfBattlerSide 0, L_2, L_3
    End

L_2:
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_FadeBattlerSprite 2056, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_FadeBattlerSprite 2064, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_Shake 2, 0, 1, 6, 288
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_FadeBattlerSprite 2050, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_FadeBattlerSprite 2052, 0, 1, BATTLE_COLOR_DARK_RED2, 10, 10
    Func_Shake 2, 0, 1, 6, 288
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
    End
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, pound_spa
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, bonemerang_NCGR_lz
    LoadPlttRes 0, bonemerang_NCLR, 1
    LoadCellResObj 0, bonemerang_cell_NCER_lz
    LoadAnimResObj 0, bonemerang_anim_NANR_lz
    AddSpriteWithFunc 0, 6, bonemerang_NCGR_lz, bonemerang_NCLR, bonemerang_cell_NCER_lz, bonemerang_anim_NANR_lz, 0, 0, 0
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 5
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 4, 0, 1, 1, 264
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W091, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    WaitForAnimTasks
    FreeSpriteManager 0
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fissure_spa
    InitSpriteManager 0, 1, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, fissure_NCGR_lz
    LoadPlttRes 0, fissure_NCLR, 1
    LoadCellResObj 0, fissure_cell_NCER_lz
    LoadAnimResObj 0, fissure_anim_NANR_lz
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SwitchBg 53, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    PlaySoundEffectC SEQ_SE_DP_W090
    Func_Shake 4, 0, 1, 30, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_ShakeBg 8, 0, 0, 31, 0
    AddSpriteWithFunc 0, 27, fissure_NCGR_lz, fissure_NCLR, fissure_cell_NCER_lz, fissure_anim_NANR_lz, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 53, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End

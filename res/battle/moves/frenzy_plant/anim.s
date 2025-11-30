#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, frenzy_plant_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 16
    SwitchBg 34, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlayLoopedSoundEffectC SEQ_SE_DP_W010, 2, 16
    InitSpriteManager 0, 8, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, vines_NCGR_lz
    LoadPlttRes 0, vines_NCLR, 1
    LoadCellResObj 0, vines_cell_NCER_lz
    LoadAnimResObj 0, vines_anim_NANR_lz
    AddSpriteWithFunc 0, 24, vines_NCGR_lz, vines_NCLR, vines_cell_NCER_lz, vines_anim_NANR_lz, 0, 0, 8
    Delay 96
    PlayLoopedSoundEffectR SEQ_SE_DP_W025B, 3, 6
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 16
    RestoreBg 34, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

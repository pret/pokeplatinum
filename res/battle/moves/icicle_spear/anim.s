#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, icicle_spear_spa
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, icicle_spear_NCGR_lz
    LoadPlttRes 0, icicle_spear_NCLR, 1
    LoadCellResObj 0, icicle_spear_cell_NCER_lz
    LoadAnimResObj 0, icicle_spear_anim_NANR_lz
    AddSpriteWithFunc 0, 17, icicle_spear_NCGR_lz, icicle_spear_NCLR, icicle_spear_cell_NCER_lz, icicle_spear_anim_NANR_lz, 0, 0, -15, -5, 10, 32
    PlaySoundEffectL SEQ_SE_DP_W196
    Delay 5
    AddSpriteWithFunc 0, 17, icicle_spear_NCGR_lz, icicle_spear_NCLR, icicle_spear_cell_NCER_lz, icicle_spear_anim_NANR_lz, 0, 0, -5, -20, 10, 32
    PlaySoundEffectL SEQ_SE_DP_W196
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 0, 2752, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 0, 2752, 0
    Func_Shake 1, 0, 1, 1, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 5
    AddSpriteWithFunc 0, 17, icicle_spear_NCGR_lz, icicle_spear_NCLR, icicle_spear_cell_NCER_lz, icicle_spear_anim_NANR_lz, 0, 0, -10, -15, 10, 32
    PlaySoundEffectL SEQ_SE_DP_W196
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 0, 2752, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 0, 2752, 0
    Func_Shake 1, 0, 1, 1, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectL SEQ_SE_DP_W196
    Delay 6
    PlayDelayedSoundEffectR SEQ_SE_DP_W030, 2
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 0, 2752, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 0, 2752, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

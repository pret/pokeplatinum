#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, smelling_salt_spa
    InitSpriteManager 0, 1, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, smelling_salts_NCGR_lz
    LoadPlttRes 0, smelling_salts_NCLR, 1
    LoadCellResObj 0, smelling_salts_cell_NCER_lz
    LoadAnimResObj 0, smelling_salts_anim_NANR_lz
    AddSpriteWithFunc 0, 25, smelling_salts_NCGR_lz, smelling_salts_NCLR, smelling_salts_cell_NCER_lz, smelling_salts_anim_NANR_lz, 0, 0, 0, 24, 0
    Delay 30
    PlayLoopedSoundEffectR SEQ_SE_DP_030C, 4, 2
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreeSpriteManager 0
    End

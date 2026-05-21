#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sketch_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    LoadPokemonSpriteIntoBg BATTLER_ROLE_DEFENDER, FALSE
    Func_Sketch 0
    Delay 5
    PlayLoopedSoundEffectR SEQ_SE_DP_W092, 4, 20
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    RemovePokemonSpriteFromBg 0
    End

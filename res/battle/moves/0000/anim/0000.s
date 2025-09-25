#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, sketch_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    LoadPokemonSpriteIntoBg 1, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W092, BATTLE_SOUND_PAN_RIGHT, 2, 10
    Func_Sketch 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    RemovePokemonSpriteFromBg 0
    End

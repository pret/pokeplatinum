#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 186
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    LoadPokemonSpriteIntoBg 1, 0
    CallFunc 79, 1, 0
    Delay 5
    PlayLoopedSoundEffect SEQ_SE_DP_W092, BATTLE_SOUND_PAN_RIGHT, 4, 20
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    RemovePokemonSpriteFromBg 0
    End

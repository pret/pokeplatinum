#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, cotton_spore_spa
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite 8, 0, 3, BATTLE_COLOR_WHITE, 10, 10
    PlayLoopedSoundEffect SEQ_SE_DP_W199, BATTLE_SOUND_PAN_RIGHT, 3, 8
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

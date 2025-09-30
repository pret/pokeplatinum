#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, spore_spa
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 3, BATTLE_COLOR_LIGHT_GREEN, 10, 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W077B, 3, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sweet_kiss_spa
    CreateEmitter 0, 0, 4
    PlaySoundEffectR SEQ_SE_DP_041
    Delay 10
    PlayDelayedSoundEffectR SEQ_SE_DP_W213, 65
    CreateEmitter 0, 1, 4
    Delay 60
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_RED, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, lucky_chant_spa
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 0, 19
    PlayDelayedSoundEffectL SEQ_SE_DP_163, 2
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

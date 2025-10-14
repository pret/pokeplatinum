#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, milk_drink_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W152
    Delay 25
    PlaySoundEffectR SEQ_SE_DP_052
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlayDelayedSoundEffectR SEQ_SE_DP_W071B, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

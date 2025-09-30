#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, recycle_spa
    CreateEmitter 0, 0, 3
    PlaySoundEffectL SEQ_SE_DP_W278
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

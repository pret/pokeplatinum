#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, heal_order_spa
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_W456, 6, 12
    Delay 50
    PlaySoundEffectL SEQ_SE_DP_W109
    Delay 40
    PlaySoundEffectL SEQ_SE_DP_W071B
    CreateEmitter 0, 4, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

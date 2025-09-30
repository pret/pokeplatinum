#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dragon_dance_spa
    CreateEmitter 0, 0, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 3, BATTLE_COLOR_RED, 10, 10
    Func_Shake 2, 0, 1, 16, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W379, 4, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

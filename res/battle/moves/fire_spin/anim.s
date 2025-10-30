#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fire_spin_spa
    PlaySoundEffectR SEQ_SE_DP_W221B
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_RED, 10, 10
    Func_Shake 1, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

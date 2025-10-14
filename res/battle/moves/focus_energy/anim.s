#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, focus_energy_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    Func_Shake 1, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 2, BATTLE_COLOR_WHITE, 10, 0
    PlaySoundEffectL SEQ_SE_DP_W082
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

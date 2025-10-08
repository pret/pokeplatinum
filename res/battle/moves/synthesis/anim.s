#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, synthesis_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlaySoundEffectL SEQ_SE_DP_W025
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 14, 0
    WaitForAnimTasks
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End

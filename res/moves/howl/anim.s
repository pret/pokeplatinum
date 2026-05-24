#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, howl_spa
    PlayPokemonCry 3, -117, 127
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 150, 100, HOLD_F(20) | CYCLES(1), SCALE_F(6) | RESTORE_F(6)
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    Delay 5
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    WaitForPokemonCries 0
    Delay 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

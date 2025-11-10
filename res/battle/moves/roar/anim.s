#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, roar_spa
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    PlayPokemonCry 7, -117, 100
    WaitForPokemonCries 0
    PlayPokemonCry 8, -117, 127
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 120, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    Func_MoveBattlerOffScreen BATTLE_ANIM_DEFENDER, 20
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_DEFENDER, TRUE
    Func_MoveBattlerToDefaultPos BATTLE_ANIM_DEFENDER
    WaitForAnimTasks
    WaitForPokemonCries 0
    Delay 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

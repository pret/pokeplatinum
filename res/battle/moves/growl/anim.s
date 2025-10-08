#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, growl_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayPokemonCry 9, -117, 100
    WaitForPokemonCries 0
    PlayPokemonCry 10, -117, 127
    Delay 5
    WaitForPokemonCries 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

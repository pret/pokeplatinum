#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 76
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayPokemonCry 7, -117, 100
    WaitForPokemonCries 0
    PlayPokemonCry 8, -117, 127
    CreateEmitter 0, 0, 3
    Func_ScaleBattlerSprite 258, 100, 120, 100, 120, 100, 1, 327685
    Delay 10
    Func_MoveBattlerOffScreen 8, 20
    WaitForAnimTasks
    Func_HideBattler 8, 1
    Func_MoveBattlerToDefaultPos 8
    WaitForAnimTasks
    WaitForPokemonCries 0
    Delay 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

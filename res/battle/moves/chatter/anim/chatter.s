#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 465
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayPokemonCry 0, -117, 127
    BeginLoop 2
    CallFunc 52, 3, 8, 8, 258
    Delay 8
    CallFunc 52, 3, 16, -16, 258
    Delay 16
    CallFunc 52, 3, 8, 8, 258
    Delay 8
    EndLoop
    WaitForPokemonCries 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 353
    PlayPokemonCry 3, -117, 127
    CallFunc 42, 8, 258, 100, 80, 100, 150, 100, 1310721, 393222
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    WaitForPokemonCries 0
    Delay 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, hyper_voice_spa
    BeginLoop 2
    Delay 10
    PlayPokemonCry 4, -117, 100
    WaitForPokemonCries 0
    PlayPokemonCry 6, -117, 127
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 22, 16, 0, 0
    CreateEmitter 0, 0, 4
    Func_FadeBg 0, 1, 0, 8, BATTLE_COLOR_LIGHT_YELLOW1
    Func_Shake 0, 2, 1, 2, 264
    Func_Shake 0, 2, 1, 2, 272
    WaitForAnimTasks
    Func_FadeBg 0, 1, 8, 0, BATTLE_COLOR_LIGHT_YELLOW1
    WaitForAnimTasks
    WaitForPokemonCries 0
    EndLoop
    Delay 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_019:
    SetStartDelay 3
    Fade 16, 16, 0, 1023
    WaitFrame
    Fade 0, 0, 0, 1023
    WaitFrame
    SetStartDelay 6
    Fade 16, 16, 0, 1023
    WaitFrame
    SetStartDelay 1
    Fade 0, 0, 0, 1023
    WaitFrame
    Loop 4
        Fade 16, 16, 0, 1023
        WaitFrame
        Fade 0, 0, 0, 1023
        WaitFrame
        SetStartDelay 1
    LoopEnd
    End

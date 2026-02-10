#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_015:
    SetVar ANIM_VAR_1, 0
    SetVar ANIM_VAR_2, 1
    Loop 32
        Add ANIM_VAR_1, ANIM_VAR_1, 1024
        Sin ANIM_VAR_0, ANIM_VAR_1, 6, 0
        Multiply ANIM_VAR_0, ANIM_VAR_0, ANIM_VAR_2
        SetOffset ANIM_VAR_0, ANIM_OFFSET_X
        Multiply ANIM_VAR_2, ANIM_VAR_2, -1
        ApplyTranslation
        WaitFrame
    LoopEnd
    End

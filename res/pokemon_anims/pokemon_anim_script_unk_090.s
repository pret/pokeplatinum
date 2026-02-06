#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_090:
    SetVar ANIM_VAR_0, 0
    Loop 20
        Multiply ANIM_VAR_2, ANIM_VAR_0, 65536
        Divide ANIM_VAR_2, ANIM_VAR_2, 20
        Modulo ANIM_VAR_1, ANIM_VAR_0, 2
        SetVarIfEq ANIM_VAR_3, ANIM_VAR_1, 0, 32
        SetVarIfEq ANIM_VAR_3, ANIM_VAR_1, 1, 8
        Sin ANIM_VAR_4, ANIM_VAR_2, ANIM_VAR_3, 0
        Subtract ANIM_VAR_5, 0, ANIM_VAR_4
        UpdateAttribute ANIM_SCALE_X, ANIM_VAR_5, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_SCALE_Y, ANIM_VAR_5, ANIM_ATTRIBUTE_SET
        ApplyScaleAndRotation
        Add ANIM_VAR_0, ANIM_VAR_0, 1
        WaitFrame
    LoopEnd
    End

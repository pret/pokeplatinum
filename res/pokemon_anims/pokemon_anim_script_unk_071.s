#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_071:
    SetVar ANIM_VAR_0, 0
    SetVar ANIM_VAR_2, 0
    Loop 15
        Add ANIM_VAR_0, ANIM_VAR_0, 1
        Add ANIM_VAR_2, ANIM_VAR_2, 28672
        Subtract ANIM_VAR_1, 15, ANIM_VAR_0
        Multiply ANIM_VAR_1, ANIM_VAR_1, 9
        Divide ANIM_VAR_1, ANIM_VAR_1, 15
        Sin ANIM_VAR_3, ANIM_VAR_2, ANIM_VAR_1, 0
        UpdateAttribute ANIM_OFFSET_Y, ANIM_VAR_3, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        WaitFrame
    LoopEnd
    SetStartDelay 7
    SetVar ANIM_VAR_0, 0
    SetVar ANIM_VAR_2, 0
    Loop 15
        Add ANIM_VAR_0, ANIM_VAR_0, 1
        Add ANIM_VAR_2, ANIM_VAR_2, 28672
        Subtract ANIM_VAR_1, 15, ANIM_VAR_0
        Multiply ANIM_VAR_1, ANIM_VAR_1, 9
        Divide ANIM_VAR_1, ANIM_VAR_1, 15
        Sin ANIM_VAR_3, ANIM_VAR_2, ANIM_VAR_1, 0
        UpdateAttribute ANIM_OFFSET_Y, ANIM_VAR_3, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        WaitFrame
    LoopEnd
    End

#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_106:
    SetVar ANIM_VAR_0, 2
    UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    Multiply ANIM_VAR_0, ANIM_VAR_0, -1
    Fade 16, 16, 0, 1023
    WaitFrame
    Fade 0, 0, 0, 1023
    WaitFrame
    Loop 10
        UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        Multiply ANIM_VAR_0, ANIM_VAR_0, -1
        WaitFrame
    LoopEnd
    UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    Multiply ANIM_VAR_0, ANIM_VAR_0, -1
    Fade 16, 16, 0, 1023
    WaitFrame
    Fade 0, 0, 0, 1023
    WaitFrame
    Loop 10
        UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        Multiply ANIM_VAR_0, ANIM_VAR_0, -1
        WaitFrame
    LoopEnd
    UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    Multiply ANIM_VAR_0, ANIM_VAR_0, -1
    Fade 16, 16, 0, 1023
    WaitFrame
    Fade 0, 0, 0, 1023
    WaitFrame
    Loop 10
        UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        Multiply ANIM_VAR_0, ANIM_VAR_0, -1
        WaitFrame
    LoopEnd
    UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    Multiply ANIM_VAR_0, ANIM_VAR_0, -1
    Fade 16, 16, 0, 1023
    WaitFrame
    Fade 0, 0, 0, 1023
    WaitFrame
    Loop 10
        UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        Multiply ANIM_VAR_0, ANIM_VAR_0, -1
        WaitFrame
    LoopEnd
    End

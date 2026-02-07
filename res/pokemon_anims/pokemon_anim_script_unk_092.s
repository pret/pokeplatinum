#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_092:
    TransformLinearBounded TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -2, 0, -12
    WaitTransform
    TransformLinearBounded TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_OFFSET_X, 4, 1, 12
    WaitTransform
    UpdateAttribute ANIM_OFFSET_X, 12, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    SetVar ANIM_VAR_0, 4
    Loop 15
        UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_ADD
        ApplyTranslation
        Multiply ANIM_VAR_0, ANIM_VAR_0, -1
        WaitFrame
    LoopEnd
    UpdateAttribute ANIM_OFFSET_X, 12, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    TransformLinearBounded TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_OFFSET_X, -2, 0, 0
    WaitTransform
    End

#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_094:
    TransformLinearBounded TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -1, 0, -6
    WaitTransform
    TransformLinearBounded TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_OFFSET_X, 0, 1, 6
    WaitTransform
    UpdateAttribute ANIM_OFFSET_X, 6, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    SetVar ANIM_VAR_0, 2
    Loop 6
        UpdateAttribute ANIM_OFFSET_X, ANIM_VAR_0, ANIM_ATTRIBUTE_ADD
        ApplyTranslation
        Multiply ANIM_VAR_0, ANIM_VAR_0, -1
        WaitFrame
    LoopEnd
    UpdateAttribute ANIM_OFFSET_X, 6, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    TransformLinearBounded TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_OFFSET_X, -1, 0, 0
    WaitTransform
    End

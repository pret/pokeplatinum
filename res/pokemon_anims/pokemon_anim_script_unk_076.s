#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_076:
    TransformLinear TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 2, 0, 6
    TransformLinear TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_Y, 2, 0, 6
    WaitTransform
    UpdateAttribute ANIM_TRANSLATE_X, 12, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_TRANSLATE_Y, 12, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_Y, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    TransformLinear TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -4, 0, 6
    WaitTransform
    UpdateAttribute ANIM_TRANSLATE_X, -12, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_TRANSLATE_Y, 12, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_Y, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    TransformLinear TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 2, 0, 6
    TransformLinear TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_Y, -2, 0, 6
    WaitTransform
    UpdateAttribute ANIM_TRANSLATE_X, 0, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_TRANSLATE_Y, 0, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_Y, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    End

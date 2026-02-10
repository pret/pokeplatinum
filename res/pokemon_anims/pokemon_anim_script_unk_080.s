#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_080:
    Loop 2
        UpdateAttribute ANIM_OFFSET_Y, 6, ANIM_ATTRIBUTE_SET
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_X, 4, 16384, 0, 4
        TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 6, 16384, 49152, 4
        WaitTransform
        UpdateAttribute ANIM_OFFSET_X, -4, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        UpdateAttribute ANIM_OFFSET_Y, 6, ANIM_ATTRIBUTE_SET
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_X, 4, 32768, 16384, 8
        TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 6, 32768, 32768, 8
        WaitTransform
        UpdateAttribute ANIM_OFFSET_X, 4, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        UpdateAttribute ANIM_OFFSET_Y, 6, ANIM_ATTRIBUTE_SET
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_X, 4, 16384, 49152, 4
        TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 6, 16384, 32768, 4
        WaitTransform
        UpdateAttribute ANIM_TRANSLATE_X, 0, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_OFFSET_Y, 0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
    LoopEnd
    End

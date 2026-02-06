#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_023:
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 10, 32768, 0, 4
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 8, 4
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_ROTATION_Z, 4096, 4
    WaitTransform
    Loop 2
        UpdateAttribute ANIM_TRANSLATE_X, 8, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        UpdateAttribute ANIM_ROTATION_Z, 4096, ANIM_ATTRIBUTE_SET
        ApplyScaleAndRotation
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 10, 32768, 0, 6
        TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -16, 6
        TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, -8192, 6
        WaitTransform
        UpdateAttribute ANIM_TRANSLATE_X, -8, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        UpdateAttribute ANIM_ROTATION_Z, -4096, ANIM_ATTRIBUTE_SET
        ApplyScaleAndRotation
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 10, 32768, 0, 6
        TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 16, 6
        TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, 8192, 6
        WaitTransform
    LoopEnd
    UpdateAttribute ANIM_TRANSLATE_X, 8, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    UpdateAttribute ANIM_ROTATION_Z, 4096, ANIM_ATTRIBUTE_SET
    ApplyScaleAndRotation
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 10, 32768, 0, 6
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -16, 6
    TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, -8192, 6
    WaitTransform
    UpdateAttribute ANIM_TRANSLATE_X, -8, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    UpdateAttribute ANIM_ROTATION_Z, -4096, ANIM_ATTRIBUTE_SET
    ApplyScaleAndRotation
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 10, 32768, 0, 6
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 8, 6
    TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, 4096, 6
    WaitTransform
    End

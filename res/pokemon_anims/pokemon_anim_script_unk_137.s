#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_137:
    UpdateAttribute ANIM_TRANSLATE_Y, 2, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_Y, 0, ANIM_ATTRIBUTE_SET
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 8192, 0, 8
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 8, 8
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_ROTATION_Z, 4096, 8
    WaitTransform
    Loop 2
        UpdateAttribute ANIM_TRANSLATE_X, 8, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        UpdateAttribute ANIM_ROTATION_Z, 4096, ANIM_ATTRIBUTE_SET
        ApplyScaleAndRotation
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 8192, 0, 12
        TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -16, 12
        TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, -8192, 12
        WaitTransform
        UpdateAttribute ANIM_TRANSLATE_X, -8, ANIM_ATTRIBUTE_SET
        UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
        ApplyTranslation
        UpdateAttribute ANIM_ROTATION_Z, -4096, ANIM_ATTRIBUTE_SET
        ApplyScaleAndRotation
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 8192, 0, 12
        TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 16, 12
        TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, 8192, 12
        WaitTransform
    LoopEnd
    UpdateAttribute ANIM_TRANSLATE_X, 8, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    UpdateAttribute ANIM_ROTATION_Z, 4096, ANIM_ATTRIBUTE_SET
    ApplyScaleAndRotation
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 8192, 0, 12
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -16, 12
    TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, -8192, 12
    WaitTransform
    UpdateAttribute ANIM_TRANSLATE_X, -8, ANIM_ATTRIBUTE_SET
    UpdateAttribute ANIM_OFFSET_X, 0, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    UpdateAttribute ANIM_ROTATION_Z, -4096, ANIM_ATTRIBUTE_SET
    ApplyScaleAndRotation
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 8192, 0, 12
    TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, 8, 12
    TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_ROTATION_Z, 4096, 12
    WaitTransform
    End

#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_107:
    Loop 2
        TransformLinearEven TRANSFORM_CALC_SET, 0, TRANSFORM_TYPE_OFFSET_X, -16, 4
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 65536, 0, 4
        WaitTransform
        TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_OFFSET_X, 32, 8
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 131072, 0, 8
        WaitTransform
        TransformLinearEven TRANSFORM_CALC_ADD, 0, TRANSFORM_TYPE_OFFSET_X, -16, 4
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 2, 65536, 0, 4
        WaitTransform
    LoopEnd
    End

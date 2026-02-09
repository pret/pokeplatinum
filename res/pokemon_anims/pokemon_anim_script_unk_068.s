#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_068:
    Loop 2
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_Y, 70, 32768, 0, 10
        TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_X, 70, 32768, 0, 10
        TransformCurveEven TRANSFORM_CALC_INCREMENT, 2, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_Y, 14, 262144, 0, 6
        TransformCurveEven TRANSFORM_CALC_INCREMENT, 2, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_X, 14, 262144, 0, 6
        WaitTransform
    LoopEnd
    End

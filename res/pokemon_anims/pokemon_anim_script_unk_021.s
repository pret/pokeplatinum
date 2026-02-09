#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_021:
    SetYNormalization Y_NORMALIZATION_NEGATIVE_SCALE
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_SCALE_Y, 32, 98304, 0, 24
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_SCALE_X, 48, 98304, 0, 24
    WaitTransform
    SetYNormalization Y_NORMALIZATION_OFF
    End

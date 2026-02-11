#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_116:
    SetYNormalization Y_NORMALIZATION_NEGATIVE_SCALE
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_SCALE_Y, 32, 196608, 0, 48
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_SCALE_X, 48, 196608, 0, 48
    WaitTransform
    SetYNormalization Y_NORMALIZATION_OFF
    End

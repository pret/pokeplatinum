#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_020:
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_COS, TRANSFORM_TYPE_SCALE_Y, 32, 131072, 0, 20
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_SCALE_X, 32, 131072, 0, 20
    WaitTransform
    End

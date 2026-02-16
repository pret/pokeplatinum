#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_064:
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_Y, 40, 32768, 0, 20
    TransformCurveEven TRANSFORM_CALC_INCREMENT, 5, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_Y, 8, 262144, 0, 10
    WaitTransform
    End

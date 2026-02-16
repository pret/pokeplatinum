#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_115:
    TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_X, 64, 32768, 0, 30
    TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_Y, 64, 32768, 0, 30
    WaitTransform
    End

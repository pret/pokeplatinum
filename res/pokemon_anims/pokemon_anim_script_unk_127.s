#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_127:
    TransformCurve TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 6, 8192, 0, 4
    WaitTransform
    TransformCurve TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 7, 8192, 0, 4
    WaitTransform
    End

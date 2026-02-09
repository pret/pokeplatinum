#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_140:
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_ROTATION_Z, 1000, 131072, 0, 50
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_OFFSET_Y, 4, 65536, 0, 50
    WaitTransform
    End

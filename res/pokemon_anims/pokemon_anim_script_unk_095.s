#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_095:
    Fade 0, 12, 0, 31
    WaitFade
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_X, 6, 131072, 0, 10
    WaitTransform
    Fade 12, 0, 0, 31
    WaitFade
    End

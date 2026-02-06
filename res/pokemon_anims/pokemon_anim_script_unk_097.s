#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_097:
    Fade 0, 12, 0, 31
    WaitFade
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_X, 6, 65536, 0, 16
    WaitTransform
    Fade 12, 0, 0, 31
    WaitFade
    End

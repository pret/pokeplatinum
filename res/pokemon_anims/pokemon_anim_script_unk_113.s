#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_113:
    Loop 2
        TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_X, 64, 32768, 0, 16
        TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_SCALE_Y, 64, 32768, 0, 16
        WaitTransform
    LoopEnd
    End

#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_133:
    UpdateSpriteAttribute MON_SPRITE_X_PIVOT, -32, ANIM_ATTRIBUTE_SET
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_ROTATION_Z, 512, 16384, 0, 15
    WaitTransform
    SetStartDelay 1
    TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_ROTATION_Z, 512, 16384, 0, 7
    WaitTransform
    TransformCurve TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_COS, TRANSFORM_TYPE_OFFSET_Y, 2, 32768, 0, 4
    WaitTransform
    End

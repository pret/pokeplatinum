#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_087:
    UpdateSpriteAttribute MON_SPRITE_X_PIVOT, -32, ANIM_ATTRIBUTE_SET
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_ROTATION_Z, 2048, 32768, 0, 30
    WaitTransform
    End

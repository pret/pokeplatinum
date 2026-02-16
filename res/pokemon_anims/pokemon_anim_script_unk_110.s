#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_110:
    UpdateAttribute ANIM_OFFSET_Y, 8, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_NEGATIVE_SIN, TRANSFORM_TYPE_OFFSET_X, 12, 262144, 0, 24
    TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_NEGATIVE_COS, TRANSFORM_TYPE_OFFSET_Y, 8, 262144, 0, 24
    WaitTransform
    End

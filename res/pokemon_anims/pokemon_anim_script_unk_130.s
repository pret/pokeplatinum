#include "macros/pokemon_anim_cmd.inc"

PokemonAnimScript_unk_130:
    UpdateAttribute ANIM_OFFSET_Y, 4, ANIM_ATTRIBUTE_SET
    ApplyTranslation
    TransformCurveEven TRANSFORM_CALC_SET, 0, TRANSFORM_CURVE_SIN, TRANSFORM_TYPE_ROTATION_Z, 2048, 131072, 0, 60
    TransformCurveEven TRANSFORM_CALC_ADD, 0, TRANSFORM_CURVE_NEGATIVE_COS, TRANSFORM_TYPE_OFFSET_Y, 4, 65536, 0, 60
    WaitTransform
    End

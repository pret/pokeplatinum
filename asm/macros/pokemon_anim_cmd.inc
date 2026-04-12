#include "generated/pokemon_anim_constants.h"
#include "generated/pokemon_sprite_attributes.h"

#include "data/scripts/pokemon_anim_cmd.h"

/* 
 * In these scripts, GF distinguished between anim var indexes and literal values by supplying
 * the relevant ANIM_READ_TYPE parameter to the anim command. This makes the scripts verbose,
 * so we instead offset the anim var indexes by 0xFFFFFFF in order to distinguish vars and
 * literal values. The supplementary macros below facilitate this process. 
 */

    .macro Var varIndex
    .long \varIndex - ANIM_VAR_OFFSET
    .endm

    .macro SetReadTypeAndOffset valueOrVar, outOffset, outReadType
    .if (\valueOrVar >= ANIM_VAR_OFFSET)
        .set \outOffset, ANIM_VAR_OFFSET
        .set \outReadType, ANIM_READ_TYPE_VAR
    .else
        .set \outOffset, 0
        .set \outReadType, ANIM_READ_TYPE_VALUE
    .endif
    .endm

/*
 * For certain anim commands, GF used different constants to indicate the read types.
 * This macro is for those commands.
 */
    .macro SetReadTypeAndOffset2 valueOrVar, outOffset, outReadType
    .if (\valueOrVar >= ANIM_VAR_OFFSET)
        .set \outOffset, ANIM_VAR_OFFSET
        .set \outReadType, ANIM_READ_TYPE_VAR2
    .else
        .set \outOffset, 0
        .set \outReadType, ANIM_READ_TYPE_VALUE2
    .endif
    .endm

    .macro End
    .long POKEMONANIMCMD_END
    .endm

    .macro WaitFrame
    .long POKEMONANIMCMD_WAITFRAME
    .endm

    .macro SetOriginalPosition
    .long POKEMONANIMCMD_SETORIGINALPOSITION
    .endm

    .macro SetVarIfExplicit readType1, varIndex1, valueOrVarIndex2, comparisonType, readType2, destVarIndex, newValueOrVar
    .long POKEMONANIMCMD_SETVARIF
    .long \readType1
    Var \varIndex1
    .long \valueOrVarIndex2
    .long \comparisonType
    .long \readType2
    Var \destVarIndex
    .long \newValueOrVar
    .endm

    .macro SetVarIf destVarIndex, comparisonType, varIndex1, valueOrVarIndex2, newValueOrVar
    SetReadTypeAndOffset2 \valueOrVarIndex2, offset1, readType1
    SetReadTypeAndOffset2 \newValueOrVar, offset2, readType2
    SetVarIfExplicit readType1, \varIndex1, \valueOrVarIndex2 - offset1, \comparisonType, readType2, \destVarIndex, \newValueOrVar - offset2
    .endm
    
    .macro SetVarIfEq destVarIndex, varIndex1, valueOrVarIndex2, newValueOrVar
    SetVarIf \destVarIndex, COMPARISON_RESULT_EQUAL, \varIndex1, \valueOrVarIndex2, \newValueOrVar
    .endm
    
    .macro SetVarIfGt destVarIndex, comparisonType, varIndex1, valueOrVarIndex2, newValueOrVar
    SetVarIf \destVarIndex, COMPARISON_RESULT_GREATER_THAN, \varIndex1, \valueOrVarIndex2, \newValueOrVar
    .endm

    .macro SetVarIfLe destVarIndex, comparisonType, varIndex1, valueOrVarIndex2, newValueOrVar
    SetVarIf \destVarIndex, COMPARISON_RESULT_LESS_THAN, \varIndex1, \valueOrVarIndex2, \newValueOrVar
    .endm

    .macro SetVar destVarIndex, value
    .long POKEMONANIMCMD_SETVAR
    Var \destVarIndex
    .long \value
    .endm

    .macro CopyVar destVarIndex, originIndex
    .long POKEMONANIMCMD_COPYVAR
    Var \destVarIndex
    Var \originIndex
    .endm

    .macro AddExplicit destVarIndex, readType, varIndex1, valueOrVarIndex2
    .long POKEMONANIMCMD_ADD
    Var \destVarIndex
    .long \readType
    Var \varIndex1
    .long \valueOrVarIndex2
    .endm

    .macro Add destVarIndex, varIndex1, valueOrVarIndex2
    SetReadTypeAndOffset \valueOrVarIndex2, offset, readType
    AddExplicit \destVarIndex, readType, \varIndex1, \valueOrVarIndex2 - offset
    .endm

    .macro MultiplyExplicit destVarIndex, readType, varIndex1, valueOrVarIndex2
    .long POKEMONANIMCMD_MULTIPLY
    Var \destVarIndex
    .long \readType
    Var \varIndex1
    .long \valueOrVarIndex2
    .endm

    .macro Multiply destVarIndex, varIndex1, valueOrVarIndex2
    SetReadTypeAndOffset \valueOrVarIndex2, offset, readType
    MultiplyExplicit \destVarIndex, readType, \varIndex1, \valueOrVarIndex2 - offset
    .endm

    .macro SubtractExplicit destVarIndex, readType1, readType2, valueOrVarIndex1, valueOrVarIndex2
    .long POKEMONANIMCMD_SUBTRACT
    Var \destVarIndex
    .long \readType1
    .long \readType2
    .long \valueOrVarIndex1
    .long \valueOrVarIndex2
    .endm

    .macro Subtract destVarIndex, valueOrVarIndex1, valueOrVarIndex2
    SetReadTypeAndOffset \valueOrVarIndex1, offset1, readType1
    SetReadTypeAndOffset \valueOrVarIndex2, offset2, readType2
    SubtractExplicit \destVarIndex, readType1, readType2, \valueOrVarIndex1 - offset1, \valueOrVarIndex2 - offset2
    .endm
    
    .macro DivideExplicit destVarIndex, readType1, readType2, valueOrVarIndex1, valueOrVarIndex2
    .long POKEMONANIMCMD_DIVIDE
    Var \destVarIndex
    .long \readType1
    .long \readType2
    .long \valueOrVarIndex1
    .long \valueOrVarIndex2
    .endm

    .macro Divide destVarIndex, valueOrVarIndex1, valueOrVarIndex2
    SetReadTypeAndOffset \valueOrVarIndex1, offset1, readType1
    SetReadTypeAndOffset \valueOrVarIndex2, offset2, readType2
    DivideExplicit \destVarIndex, readType1, readType2, \valueOrVarIndex1 - offset1, \valueOrVarIndex2 - offset2
    .endm
    
    .macro ModuloExplicit destVarIndex, readType1, readType2, valueOrVarIndex1, valueOrVarIndex2
    .long POKEMONANIMCMD_MODULO
    Var \destVarIndex
    .long \readType1
    .long \readType2
    .long \valueOrVarIndex1
    .long \valueOrVarIndex2
    .endm

    .macro Modulo destVarIndex, valueOrVarIndex1, valueOrVarIndex2
    SetReadTypeAndOffset \valueOrVarIndex1, offset1, readType1
    SetReadTypeAndOffset \valueOrVarIndex2, offset2, readType2
    ModuloExplicit \destVarIndex, readType1, readType2, \valueOrVarIndex1 - offset1, \valueOrVarIndex2 - offset2
    .endm
    
    .macro Loop loopMax
    .long POKEMONANIMCMD_LOOP
    .long \loopMax
    .endm

    .macro LoopEnd
    .long POKEMONANIMCMD_LOOPEND
    .endm

    .macro SetSpriteAttribute, spriteAttribute, originIndex
    .long POKEMONANIMCMD_SETSPRITEATTRIBUTE
    .long \spriteAttribute
    Var \originIndex
    .endm

    .macro AddSpriteAttribute spriteAttribute, originIndex
    .long POKEMONANIMCMD_ADDSPRITEATTRIBUTE
    .long \spriteAttribute
    Var \originIndex
    .endm

    .macro UpdateSpriteAttributeExplicit spriteAttribute, readType, valueOrVarIndex, updateType
    .long POKEMONANIMCMD_UPDATESPRITEATTRIBUTE
    .long \spriteAttribute
    .long \readType
    .long \valueOrVarIndex
    .long \updateType
    .endm

    .macro UpdateSpriteAttribute spriteAttribute, valueOrVarIndex, updateType
    SetReadTypeAndOffset2 \valueOrVarIndex, offset, readType
    UpdateSpriteAttributeExplicit \spriteAttribute, readType, \valueOrVarIndex - offset, \updateType
    .endm

    .macro SinExplicit destVarIndex, radiansIndex, readTypeAmplitude, amplitude, readTypeOffset, offset
    .long POKEMONANIMCMD_SIN
    Var \destVarIndex
    Var \radiansIndex
    .long \readTypeAmplitude
    .long \amplitude
    .long \readTypeOffset
    .long \offset
    .endm

    .macro Sin destVarIndex, radiansIndex, amplitude, offset
    SetReadTypeAndOffset2 \amplitude, amplitudeOffset, readTypeAmplitude
    SetReadTypeAndOffset2 \offset, offsetSinOffset, readTypeOffset
    SinExplicit \destVarIndex, \radiansIndex, readTypeAmplitude, \amplitude - amplitudeOffset, readTypeOffset, \offset - offsetSinOffset
    .endm

    .macro CosExplicit destVarIndex, radiansIndex, readTypeAmplitude, amplitude, readTypeOffset, offset
    .long POKEMONANIMCMD_COS
    Var \destVarIndex
    Var \radiansIndex
    .long \readTypeAmplitude
    .long \amplitude
    .long \readTypeOffset
    .long \offset
    .endm

    .macro Cos destVarIndex, radiansIndex, amplitude, offset
    SetReadTypeAndOffset2 \amplitude, amplitudeOffset, readTypeAmplitude
    SetReadTypeAndOffset2 \offset, offsetCosOffset, readTypeOffset
    CosExplicit \destVarIndex, \radiansIndex, readTypeAmplitude, \amplitude - amplitudeOffset, readTypeOffset, \offset - offsetCosOffset
    .endm

    .macro SetTranslation varIndex, translationType
    .long POKEMONANIMCMD_SETTRANSLATION
    Var \varIndex
    .long \translationType
    .endm

    .macro AddTranslation varIndex, translationType
    .long POKEMONANIMCMD_ADDTRANSLATION
    Var \varIndex
    .long \translationType
    .endm

    .macro UpdateAttributeExplicit animAttribute, readType, valueOrVarIndex, updateType
    .long POKEMONANIMCMD_UPDATEATTRIBUTE
    .long \animAttribute
    .long \readType
    .long \valueOrVarIndex
    .long \updateType
    .endm

    .macro UpdateAttribute animAttribute, valueOrVarIndex, updateType
    SetReadTypeAndOffset2 \valueOrVarIndex, offset, readType
    UpdateAttributeExplicit \animAttribute, readType, \valueOrVarIndex - offset, \updateType
    .endm

    .macro ApplyTranslation
    .long POKEMONANIMCMD_APPLYTRANSLATION
    .endm

    .macro ApplyScaleAndRotation
    .long POKEMONANIMCMD_APPLYSCALEANDROTATION
    .endm

    .macro SetOffset varIndex, offsetType
    .long POKEMONANIMCMD_SETOFFSET
    Var \varIndex
    .long \offsetType
    .endm

    .macro WaitTransform
    .long POKEMONANIMCMD_WAITTRANSFORM
    .endm

    .macro SetYNormalization yNormalizationType
    .long POKEMONANIMCMD_SETYNORMALIZATION
    .long \yNormalizationType
    .endm

    .macro TransformCurve calcType, startDelay, curveType, transformType, amplitude, radians, offset, steps
    .long POKEMONANIMCMD_TRANSFORMCURVE
    .long \calcType
    .long \startDelay
    .long \curveType
    .long \transformType
    .long \amplitude
    .long \radians
    .long \offset
    .long \steps
    .endm

    .macro TransformCurveEven calcType, startDelay, curveType, transformType, amplitude, radians, offset, steps
    .long POKEMONANIMCMD_TRANSFORMCURVEEVEN
    .long \calcType
    .long \startDelay
    .long \curveType
    .long \transformType
    .long \amplitude
    .long \radians
    .long \offset
    .long \steps
    .endm

    .macro TransformLinear  calcType, startDelay, transformType, speed, acceleration, steps
    .long POKEMONANIMCMD_TRANSFORMLINEAR
    .long \calcType
    .long \startDelay
    .long \transformType
    .long \speed
    .long \acceleration
    .long \steps
    .endm

    .macro TransformLinearEven calcType, startDelay, transformType, distance, steps
    .long POKEMONANIMCMD_TRANSFORMLINEAREVEN
    .long \calcType
    .long \startDelay
    .long \transformType
    .long \distance
    .long \steps
    .endm

    .macro TransformLinearBounded calcType, startDelay, transformType, speed, acceleration, maxDistance
    .long POKEMONANIMCMD_TRANSFORMLINEARBOUNDED
    .long \calcType
    .long \startDelay
    .long \transformType
    .long \speed
    .long \acceleration
    .long \maxDistance
    .endm

    .macro SetStartDelay delay
    .long POKEMONANIMCMD_SETSTARTDELAY
    .long \delay
    .endm

    .macro Fade initAlpha, targetAlpha, delay, color
    .long POKEMONANIMCMD_FADE
    .long \initAlpha
    .long \targetAlpha
    .long \delay
    .long \color
    .endm

    .macro WaitFade
    .long POKEMONANIMCMD_WAITFADE
    .endm

    .text
    .globl _start
_start:

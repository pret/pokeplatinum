#include "generated/pokemon_anim_constants.h"
#include "generated/pokemon_sprite_attributes.h"

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
    .long 0
    .endm

    .macro WaitFrame
    .long 1
    .endm

    .macro SetOriginalPosition
    .long 2
    .endm

    .macro SetVarIfExplicit readType1, varIndex1, valueOrVarIndex2, comparisonType, readType2, destVarIndex, newValueOrVar
    .long 3
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
    .long 4
    Var \destVarIndex
    .long \value
    .endm

    .macro CopyVar destVarIndex, originIndex
    .long 5
    Var \destVarIndex
    Var \originIndex
    .endm

    .macro AddExplicit destVarIndex, readType, varIndex1, valueOrVarIndex2
    .long 6
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
    .long 7
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
    .long 8
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
    .long 9
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
    .long 10
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
    .long 11
    .long \loopMax
    .endm

    .macro LoopEnd
    .long 12
    .endm

    .macro SetSpriteAttribute, spriteAttribute, originIndex
    .long 13
    .long \spriteAttribute
    Var \originIndex
    .endm

    .macro AddSpriteAttribute spriteAttribute, originIndex
    .long 14
    .long \spriteAttribute
    Var \originIndex
    .endm

    .macro UpdateSpriteAttributeExplicit spriteAttribute, readType, valueOrVarIndex, updateType
    .long 15
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
    .long 16
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
    .long 17
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
    .long 18
    Var \varIndex
    .long \translationType
    .endm

    .macro AddTranslation varIndex, translationType
    .long 19
    Var \varIndex
    .long \translationType
    .endm

    .macro UpdateAttributeExplicit animAttribute, readType, valueOrVarIndex, updateType
    .long 20
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
    .long 21
    .endm

    .macro ApplyScaleAndRotation
    .long 22
    .endm

    .macro SetOffset varIndex, offsetType
    .long 23
    Var \varIndex
    .long \offsetType
    .endm

    .macro WaitTransform
    .long 24
    .endm

    .macro SetYNormalization yNormalizationType
    .long 25
    .long \yNormalizationType
    .endm

    .macro TransformCurve calcType, startDelay, curveType, transformType, amplitude, radians, offset, steps
    .long 26
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
    .long 27
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
    .long 28
    .long \calcType
    .long \startDelay
    .long \transformType
    .long \speed
    .long \acceleration
    .long \steps
    .endm

    .macro TransformLinearEven calcType, startDelay, transformType, distance, steps
    .long 29
    .long \calcType
    .long \startDelay
    .long \transformType
    .long \distance
    .long \steps
    .endm

    .macro TransformLinearBounded calcType, startDelay, transformType, speed, acceleration, maxDistance
    .long 30
    .long \calcType
    .long \startDelay
    .long \transformType
    .long \speed
    .long \acceleration
    .long \maxDistance
    .endm

    .macro SetStartDelay delay
    .long 31
    .long \delay
    .endm

    .macro Fade initAlpha, targetAlpha, delay, color
    .long 32
    .long \initAlpha
    .long \targetAlpha
    .long \delay
    .long \color
    .endm

    .macro WaitFade
    .long 33
    .endm

    .text
    .globl _start
_start:

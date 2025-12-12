#include "pokemon_anim.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "generated/pokemon_anim_constants.h"

#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sys_task.h"

#define NUM_POKEMON_ANIMS         143
#define NUM_POKEMON_ANIM_COMMANDS 34

#define MAX_ANIM_SCRIPT_COMMANDS 256
#define MAX_ANIM_RADIANS         0x10000

typedef void (*PokemonAnimCmd)(PokemonAnim *);

typedef struct {
    TransformFunc func;
    int paramCount;
    int transformTypeIndex;
} TransformFuncParameters;

static int ReadScript_WordIndex(u32 *scriptPtr, u8 index, u8 one);
static int ReadScript_WordIndexZero(u32 *scriptPtr, u8 one);
static int ReadScript_Word(u32 *scriptPtr);
static void ReadScript_TransformFunc(PokemonAnim *monAnim, int funcType);
static void Task_RunPokemonAnim(SysTask *task, void *monAnim);
static void RunPokemonAnimScript(PokemonAnim *monAnim);
static void PokemonAnimCmd_End(PokemonAnim *monAnim);
static void PokemonAnimCmd_WaitFrame(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetOriginalPosition(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetVarIf(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetVar(PokemonAnim *monAnim);
static void PokemonAnimCmd_CopyVar(PokemonAnim *monAnim);
static void PokemonAnimCmd_Add(PokemonAnim *monAnim);
static void PokemonAnimCmd_Multiply(PokemonAnim *monAnim);
static void PokemonAnimCmd_Subtract(PokemonAnim *monAnim);
static void PokemonAnimCmd_Divide(PokemonAnim *monAnim);
static void PokemonAnimCmd_Modulo(PokemonAnim *monAnim);
static void PokemonAnimCmd_Loop(PokemonAnim *monAnim);
static void PokemonAnimCmd_LoopEnd(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetSpriteAttribute(PokemonAnim *monAnim);
static void PokemonAnimCmd_AddSpriteAttribute(PokemonAnim *monAnim);
static void PokemonAnimCmd_UpdateSpriteAttribute(PokemonAnim *monAnim);
static void PokemonAnimCmd_Sin(PokemonAnim *monAnim);
static void PokemonAnimCmd_Cos(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetTranslation(PokemonAnim *monAnim);
static void PokemonAnimCmd_AddTranslation(PokemonAnim *monAnim);
static void PokemonAnimCmd_UpdateAttribute(PokemonAnim *monAnim);
static void PokemonAnimCmd_ApplyTranslation(PokemonAnim *monAnim);
static void PokemonAnimCmd_ApplyScaleAndRotation(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetOffset(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetStartDelay(PokemonAnim *monAnim);
static void PokemonAnimCmd_Fade(PokemonAnim *monAnim);
static void PokemonAnimCmd_WaitFade(PokemonAnim *monAnim);
static void PokemonAnimCmd_WaitTransform(PokemonAnim *monAnim);
static void PokemonAnimCmd_SetYNormalization(PokemonAnim *monAnim);
static void PokemonAnimCmd_Transform_Curve(PokemonAnim *monAnim);
static void PokemonAnimCmd_Transform_CurveEven(PokemonAnim *monAnim);
static void PokemonAnimCmd_Transform_Linear(PokemonAnim *monAnim);
static void PokemonAnimCmd_Transform_LinearEven(PokemonAnim *monAnim);
static void PokemonAnimCmd_Transform_LinearBounded(PokemonAnim *monAnim);
static void TransformFunc_Curve(TransformData *transform, PokemonAnim *monAnim);
static void TransformFunc_CurveEven(TransformData *transform, PokemonAnim *monAnim);
static void TransformFunc_Linear(TransformData *transform, PokemonAnim *monAnim);
static void TransformFunc_LinearEven(TransformData *transform, PokemonAnim *monAnim);
static void TransformFunc_LinearBounded(TransformData *transform, PokemonAnim *monAnim);

static const PokemonAnimCmd sPokemonAnimCmds[NUM_POKEMON_ANIM_COMMANDS] = {
    PokemonAnimCmd_End,
    PokemonAnimCmd_WaitFrame,
    PokemonAnimCmd_SetOriginalPosition,
    PokemonAnimCmd_SetVarIf,
    PokemonAnimCmd_SetVar,
    PokemonAnimCmd_CopyVar,
    PokemonAnimCmd_Add,
    PokemonAnimCmd_Multiply,
    PokemonAnimCmd_Subtract,
    PokemonAnimCmd_Divide,
    PokemonAnimCmd_Modulo,
    PokemonAnimCmd_Loop,
    PokemonAnimCmd_LoopEnd,
    PokemonAnimCmd_SetSpriteAttribute,
    PokemonAnimCmd_AddSpriteAttribute,
    PokemonAnimCmd_UpdateSpriteAttribute,
    PokemonAnimCmd_Sin,
    PokemonAnimCmd_Cos,
    PokemonAnimCmd_SetTranslation,
    PokemonAnimCmd_AddTranslation,
    PokemonAnimCmd_UpdateAttribute,
    PokemonAnimCmd_ApplyTranslation,
    PokemonAnimCmd_ApplyScaleAndRotation,
    PokemonAnimCmd_SetOffset,
    PokemonAnimCmd_WaitTransform,
    PokemonAnimCmd_SetYNormalization,
    PokemonAnimCmd_Transform_Curve,
    PokemonAnimCmd_Transform_CurveEven,
    PokemonAnimCmd_Transform_Linear,
    PokemonAnimCmd_Transform_LinearEven,
    PokemonAnimCmd_Transform_LinearBounded,
    PokemonAnimCmd_SetStartDelay,
    PokemonAnimCmd_Fade,
    PokemonAnimCmd_WaitFade
};

static const TransformFuncParameters sTransformFuncToParams[] = {
    [TRANSFORM_FUNC_CURVE] = {
        .func = TransformFunc_Curve,
        .paramCount = 6,
        .transformTypeIndex = 1,
    },
    [TRANSFORM_FUNC_CURVE_EVEN] = {
        .func = TransformFunc_CurveEven,
        .paramCount = 6,
        .transformTypeIndex = 1,
    },
    [TRANSFORM_FUNC_LINEAR] = {
        .func = TransformFunc_Linear,
        .paramCount = 4,
        .transformTypeIndex = 0,
    },
    [TRANSFORM_FUNC_LINEAR_EVEN] = {
        .func = TransformFunc_LinearEven,
        .paramCount = 3,
        .transformTypeIndex = 0,
    },
    [TRANSFORM_FUNC_LINEAR_BOUNDED] = {
        .func = TransformFunc_LinearBounded,
        .paramCount = 4,
        .transformTypeIndex = 0,
    },
};

PokemonAnimManager *PokemonAnimManager_New(enum HeapID heapID, int animCount, u8 flipSprite)
{
    PokemonAnimManager *monAnimMan = Heap_Alloc(heapID, sizeof(PokemonAnimManager));
    monAnimMan->flipSprite = flipSprite;
    monAnimMan->animCount = animCount;
    monAnimMan->heapID = heapID;
    monAnimMan->anims = Heap_Alloc(heapID, sizeof(PokemonAnim) * animCount);

    MI_CpuClear8(monAnimMan->anims, sizeof(PokemonAnim) * animCount);

    return monAnimMan;
}

void PokemonAnimManager_Free(PokemonAnimManager *monAnimMan)
{
    Heap_Free(monAnimMan->anims);
    Heap_Free(monAnimMan);
}

void PokemonAnimManager_InitAnim(PokemonAnimManager *monAnimMan, PokemonSprite *monSprite, const PokemonAnimTemplate *animTemplate, u8 index)
{
    int animNum = animTemplate->animation;
    int startDelay = animTemplate->startDelay;

    GF_ASSERT(index < monAnimMan->animCount);
    GF_ASSERT(monAnimMan->anims[index].active == FALSE);

    MI_CpuClear8(&monAnimMan->anims[index], sizeof(PokemonAnim));

    monAnimMan->anims[index].active = TRUE;
    monAnimMan->anims[index].sprite = monSprite;

    if (animNum >= NUM_POKEMON_ANIMS) {
        animNum = 0;
        startDelay = 0;
    }

    monAnimMan->anims[index].animNum = animNum;

    if (monAnimMan->flipSprite) {
        monAnimMan->anims[index].flipSprite = animTemplate->flipSprite;
    } else {
        monAnimMan->anims[index].flipSprite = FALSE;
    }

    monAnimMan->anims[index].scriptData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_POKEANIME__PL_POKE_ANM, monAnimMan->anims[index].animNum, monAnimMan->heapID);
    monAnimMan->anims[index].scriptPtr = (u32 *)monAnimMan->anims[index].scriptData;
    monAnimMan->anims[index].endAnim = FALSE;
    monAnimMan->anims[index].completed = FALSE;
    monAnimMan->anims[index].waitForTransform = FALSE;
    monAnimMan->anims[index].yNormalization = Y_NORMALIZATION_OFF;
    monAnimMan->anims[index].fadeActive = FALSE;
    monAnimMan->anims[index].task = SysTask_Start(Task_RunPokemonAnim, &monAnimMan->anims[index], 0);
    monAnimMan->anims[index].startDelay = startDelay;
    monAnimMan->anims[index].originalX = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_X_CENTER);
    monAnimMan->anims[index].originalY = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_Y_CENTER);
    monAnimMan->anims[index].translateX = 0;
    monAnimMan->anims[index].translateY = 0;
    monAnimMan->anims[index].offsetX = 0;
    monAnimMan->anims[index].offsetY = 0;
    monAnimMan->anims[index].scaleX = 0;
    monAnimMan->anims[index].scaleY = 0;
    monAnimMan->anims[index].rotationZ = 0;
}

BOOL PokemonAnimManager_HasAnimCompleted(PokemonAnimManager *monAnimMan, u8 index)
{
    GF_ASSERT(index < monAnimMan->animCount);
    return monAnimMan->anims[index].completed;
}

void PokemonAnimManager_DeleteAnim(PokemonAnimManager *monAnimMan, u8 index)
{
    if (monAnimMan->anims[index].task != NULL) {
        SysTask_Done(monAnimMan->anims[index].task);

        monAnimMan->anims[index].task = NULL;
        monAnimMan->anims[index].completed = TRUE;
        monAnimMan->anims[index].active = FALSE;

        Heap_Free(monAnimMan->anims[index].scriptData);
    }
}

static void Task_RunPokemonAnim(SysTask *task, void *monAnim)
{
    PokemonAnim *anim = (PokemonAnim *)(monAnim);

    if (anim->startDelay == 0) {
        RunPokemonAnimScript(anim);
    } else {
        anim->startDelay--;
    }

    if (anim->endAnim) {
        anim->completed = TRUE;
        anim->active = FALSE;

        SysTask_Done(task);
        anim->task = NULL;
        Heap_Free(anim->scriptData);
    }
}

static void RunPokemonAnimScript(PokemonAnim *monAnim)
{
    monAnim->waitFrame = FALSE;
    monAnim->commandCount = 0;
    u8 inactiveTransforms = 0;

    for (u8 i = 0; i < MAX_ANIM_TRANSFORMS; i++) {
        TransformData *transform = &(monAnim->transforms[i]);

        if (transform->active) {
            if (transform->startDelay == 0) {
                transform->func(transform, monAnim);
            } else {
                transform->startDelay--;
            }
        } else {
            inactiveTransforms++;
        }
    }

    if (inactiveTransforms == MAX_ANIM_TRANSFORMS) {
        monAnim->waitForTransform = FALSE;
    }

    if (monAnim->waitForTransform) {
        PokemonAnimCmd_ApplyTranslation(monAnim);
        PokemonAnimCmd_ApplyScaleAndRotation(monAnim);
        return;
    }

    if (monAnim->fadeActive) {
        if (!PokemonSprite_IsFadeActive(monAnim->sprite)) {
            monAnim->fadeActive = FALSE;
        } else {
            return;
        }
    }

    while (TRUE) {
        monAnim->commandCount++;

        GF_ASSERT(*(monAnim->scriptPtr) < NUM_POKEMON_ANIM_COMMANDS);

        PokemonAnimCmd currAnimCmd = sPokemonAnimCmds[*(monAnim->scriptPtr)];
        currAnimCmd(monAnim);

        if (monAnim->endAnim) {
            break;
        } else {
            monAnim->scriptPtr++;

            if (monAnim->waitFrame) {
                break;
            } else if (monAnim->waitForTransform) {
                PokemonAnimCmd_ApplyTranslation(monAnim);
                PokemonAnimCmd_ApplyScaleAndRotation(monAnim);
                break;
            }
        }

        if (monAnim->commandCount >= MAX_ANIM_SCRIPT_COMMANDS) {
            GF_ASSERT(FALSE);

            monAnim->endAnim = TRUE;
            break;
        }
    }
}

// The final parameter here is only ever invoked with a value of 1.
static int ReadScript_WordIndex(u32 *scriptPtr, u8 index, u8 one)
{
    int ret = scriptPtr[index];

    if (one != 1) {
        GF_ASSERT(FALSE);
    }

    return ret;
}

static int ReadScript_WordIndexZero(u32 *scriptPtr, u8 one)
{
    return ReadScript_WordIndex(scriptPtr, 0, one);
}

static int ReadScript_Word(u32 *scriptPtr)
{
    return ReadScript_WordIndexZero(scriptPtr, 1);
}

static TransformData *TransformFuncData_New(PokemonAnim *monAnim, u8 funcType)
{
    for (u8 i = 0; i < MAX_ANIM_TRANSFORMS; i++) {
        TransformData *retPtr = &(monAnim->transforms[i]);

        if (retPtr->active == FALSE) {
            MI_CpuClear8(retPtr, sizeof(TransformData));

            retPtr->active = TRUE;
            retPtr->func = sTransformFuncToParams[funcType].func;

            return retPtr;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void ReadScript_Int(PokemonAnim *monAnim, int *outInt)
{
    monAnim->scriptPtr++;
    *outInt = (int)ReadScript_Word(monAnim->scriptPtr);
}

static void ReadScript_U8(PokemonAnim *monAnim, u8 *outU8)
{
    monAnim->scriptPtr++;
    *outU8 = (u8)ReadScript_Word(monAnim->scriptPtr);
}

static void ReadScript_VarIndex(PokemonAnim *monAnim, u8 *outIndex)
{
    monAnim->scriptPtr++;
    *outIndex = (u8)ReadScript_Word(monAnim->scriptPtr);
    GF_ASSERT(*outIndex < MAX_POKEMON_ANIM_VARS);
}

static void ReadScript_TwoVarIndexes(PokemonAnim *monAnim, u8 *outIndex1, u8 *outIndex2)
{
    ReadScript_VarIndex(monAnim, outIndex1);
    ReadScript_VarIndex(monAnim, outIndex2);
}

static void ReadScript_VarAndIntOrVar(PokemonAnim *monAnim, u8 *outDestIndex, int *outOperand1, int *outOperand2)
{
    u8 index1, index2, readType;

    ReadScript_VarIndex(monAnim, outDestIndex);
    ReadScript_U8(monAnim, &readType);

    if (readType == ANIM_READ_TYPE_VALUE) {
        ReadScript_VarIndex(monAnim, &index1);
        *outOperand1 = monAnim->vars[index1];
        ReadScript_Int(monAnim, outOperand2);
    } else if (readType == ANIM_READ_TYPE_VAR) {
        ReadScript_TwoVarIndexes(monAnim, &index1, &index2);
        *outOperand1 = monAnim->vars[index1];
        *outOperand2 = monAnim->vars[index2];
    } else {
        GF_ASSERT(FALSE);
    }
}

static void ReadScript_TwoIntOrVar(PokemonAnim *monAnim, u8 *outDestIndex, int *outOperand1, int *outOperand2)
{
    u8 index1, index2, readType1, readType2;

    ReadScript_VarIndex(monAnim, outDestIndex);
    ReadScript_U8(monAnim, &readType1);
    ReadScript_U8(monAnim, &readType2);

    if (readType1 == ANIM_READ_TYPE_VALUE) {
        ReadScript_Int(monAnim, outOperand1);
    } else if (readType1 == ANIM_READ_TYPE_VAR) {
        ReadScript_VarIndex(monAnim, &index1);
        *outOperand1 = monAnim->vars[index1];
    } else {
        GF_ASSERT(FALSE);
    }

    if (readType2 == ANIM_READ_TYPE_VALUE) {
        ReadScript_Int(monAnim, outOperand2);
    } else if (readType2 == ANIM_READ_TYPE_VAR) {
        ReadScript_VarIndex(monAnim, &index2);
        *outOperand2 = monAnim->vars[index2];
    } else {
        GF_ASSERT(FALSE);
    }
}

static void ReadScript_TrigOperands(PokemonAnim *monAnim, u8 *outDestIndex, int *outRadians, int *outAmplitude)
{
    u8 radiansIndex, amplitudeIndex, offsetIndex, readType;
    int radians, offset;

    ReadScript_TwoVarIndexes(monAnim, outDestIndex, &radiansIndex);
    radians = monAnim->vars[radiansIndex];
    ReadScript_U8(monAnim, &readType);

    // The ANIM_READ_TYPE_VALUE and ANIM_READ_TYPE_VALUE2 constants seem to be used interchangeably.
    // Same with the corresponding _VAR constants.
    if (readType == ANIM_READ_TYPE_VALUE2) {
        ReadScript_Int(monAnim, outAmplitude);
    } else if (readType == ANIM_READ_TYPE_VAR2) {
        ReadScript_VarIndex(monAnim, &amplitudeIndex);
        (*outAmplitude) = monAnim->vars[amplitudeIndex];
    } else {
        GF_ASSERT(FALSE);
    }

    ReadScript_U8(monAnim, &readType);

    if (readType == ANIM_READ_TYPE_VALUE2) {
        ReadScript_Int(monAnim, &offset);
    } else if (readType == ANIM_READ_TYPE_VAR2) {
        ReadScript_VarIndex(monAnim, &offsetIndex);
        offset = monAnim->vars[offsetIndex];
    } else {
        GF_ASSERT(FALSE);
    }

    *outRadians = radians + offset;
    *outRadians %= MAX_ANIM_RADIANS;
}

static u8 CompareValues(int *value1, int *value2)
{
    int result = *value1 - *value2;

    if (result < 0) {
        return COMPARISON_RESULT_LESS_THAN;
    } else if (result > 0) {
        return COMPARISON_RESULT_GREATER_THAN;
    } else {
        return COMPARISON_RESULT_EQUAL;
    }
}

static void ApplyYNormalization(PokemonAnim *monAnim)
{
    int y = (-monAnim->scaleY) / 8;
    PokemonSprite_AddAttribute(monAnim->sprite, MON_SPRITE_Y_CENTER, y);
}

static void PokemonAnimCmd_End(PokemonAnim *monAnim)
{
    PokemonAnimCmd_SetOriginalPosition(monAnim);

    monAnim->waitFrame = TRUE;
    monAnim->endAnim = TRUE;
}

static void PokemonAnimCmd_WaitFrame(PokemonAnim *monAnim)
{
    monAnim->waitFrame = TRUE;
}

static void PokemonAnimCmd_SetOriginalPosition(PokemonAnim *monAnim)
{
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_X_CENTER, monAnim->originalX);
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_Y_CENTER, monAnim->originalY);

    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_ROTATION_Z, 0);
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_X_PIVOT, 0);

    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
}

static void PokemonAnimCmd_CopyVar(PokemonAnim *monAnim)
{
    u8 destIndex, originIndex;

    ReadScript_TwoVarIndexes(monAnim, &destIndex, &originIndex);
    monAnim->vars[destIndex] = monAnim->vars[originIndex];
}

static void PokemonAnimCmd_Add(PokemonAnim *monAnim)
{
    u8 index;
    int operand1, operand2;

    ReadScript_VarAndIntOrVar(monAnim, &index, &operand1, &operand2);
    monAnim->vars[index] = operand1 + operand2;
}

static void PokemonAnimCmd_Multiply(PokemonAnim *monAnim)
{
    u8 index;
    int operand1, operand2;

    ReadScript_VarAndIntOrVar(monAnim, &index, &operand1, &operand2);
    monAnim->vars[index] = operand1 * operand2;
}

static void PokemonAnimCmd_Subtract(PokemonAnim *monAnim)
{
    u8 index;
    int operand1, operand2;

    ReadScript_TwoIntOrVar(monAnim, &index, &operand1, &operand2);
    monAnim->vars[index] = operand1 - operand2;
}

static void PokemonAnimCmd_Divide(PokemonAnim *monAnim)
{
    u8 index;
    int operand1, operand2;

    ReadScript_TwoIntOrVar(monAnim, &index, &operand1, &operand2);
    monAnim->vars[index] = operand1 / operand2;
}

static void PokemonAnimCmd_Modulo(PokemonAnim *monAnim)
{
    u8 index;
    int operand1, operand2;

    ReadScript_TwoIntOrVar(monAnim, &index, &operand1, &operand2);
    monAnim->vars[index] = operand1 % operand2;
}

static void PokemonAnimCmd_SetVarIf(PokemonAnim *monAnim)
{
    u8 index1, index2, condition, comparisonResult, readType;
    int value1, value2;

    ReadScript_U8(monAnim, &readType);

    if (readType == ANIM_READ_TYPE_VALUE2) {
        ReadScript_VarIndex(monAnim, &index1);
        value1 = monAnim->vars[index1];
        ReadScript_Int(monAnim, &value2);
    } else if (readType == ANIM_READ_TYPE_VAR2) {
        ReadScript_TwoVarIndexes(monAnim, &index1, &index2);
        value1 = monAnim->vars[index1];
        value2 = monAnim->vars[index2];
    } else {
        GF_ASSERT(FALSE);
    }

    ReadScript_U8(monAnim, &condition);
    GF_ASSERT(condition <= COMPARISON_RESULT_EQUAL);

    comparisonResult = CompareValues(&value1, &value2);

    int newValue;

    ReadScript_U8(monAnim, &readType);

    if (readType == ANIM_READ_TYPE_VALUE2) {
        ReadScript_VarIndex(monAnim, &index1);
        ReadScript_Int(monAnim, &newValue);
    } else if (readType == ANIM_READ_TYPE_VAR2) {
        ReadScript_TwoVarIndexes(monAnim, &index1, &index2);
        newValue = monAnim->vars[index2];
    } else {
        GF_ASSERT(FALSE);
    }

    if (condition == comparisonResult) {
        monAnim->vars[index1] = newValue;
    }
}

static void PokemonAnimCmd_SetVar(PokemonAnim *monAnim)
{
    u8 index;
    ReadScript_VarIndex(monAnim, &index);

    monAnim->scriptPtr++;
    monAnim->vars[index] = (int)ReadScript_Word(monAnim->scriptPtr);
}

static void PokemonAnimCmd_Loop(PokemonAnim *monAnim)
{
    GF_ASSERT(monAnim->loopStart == NULL);

    monAnim->scriptPtr++;
    monAnim->loopStart = monAnim->scriptPtr;
    monAnim->loopMax = (int)ReadScript_Word(monAnim->scriptPtr);
    monAnim->loopCounter = 0;
}

static void PokemonAnimCmd_LoopEnd(PokemonAnim *monAnim)
{
    monAnim->loopCounter++;

    if (monAnim->loopCounter >= monAnim->loopMax) {
        monAnim->loopStart = NULL;
        monAnim->loopCounter = 0;
        monAnim->loopMax = 0;
    } else {
        monAnim->scriptPtr = monAnim->loopStart;
    }
}

static void PokemonAnimCmd_SetSpriteAttribute(PokemonAnim *monAnim)
{
    u8 index;
    int attribute;

    ReadScript_Int(monAnim, &attribute);
    ReadScript_VarIndex(monAnim, &index);
    PokemonSprite_SetAttribute(monAnim->sprite, attribute, monAnim->vars[index]);
}

static void PokemonAnimCmd_AddSpriteAttribute(PokemonAnim *monAnim)
{
    u8 index;
    int attribute;

    ReadScript_Int(monAnim, &attribute);
    ReadScript_VarIndex(monAnim, &index);
    PokemonSprite_AddAttribute(monAnim->sprite, attribute, monAnim->vars[index]);
}

static void PokemonAnimCmd_UpdateSpriteAttribute(PokemonAnim *monAnim)
{
    int attribute, value;

    ReadScript_Int(monAnim, &attribute);

    u8 index, readType;

    ReadScript_U8(monAnim, &readType);

    if (readType == ANIM_READ_TYPE_VALUE2) {
        ReadScript_Int(monAnim, &value);
    } else if (readType == ANIM_READ_TYPE_VAR2) {
        ReadScript_VarIndex(monAnim, &index);
        value = monAnim->vars[index];
    } else {
        GF_ASSERT(FALSE);
    }

    u8 updateType;

    ReadScript_U8(monAnim, &updateType);

    if (updateType == ANIM_ATTRIBUTE_SET) {
        PokemonSprite_SetAttribute(monAnim->sprite, attribute, value);
    } else if (updateType == ANIM_ATTRIBUTE_ADD) {
        PokemonSprite_AddAttribute(monAnim->sprite, attribute, value);
    } else {
        GF_ASSERT(FALSE);
    }
}

static void PokemonAnimCmd_Sin(PokemonAnim *monAnim)
{
    u8 index;
    int radians, amplitude;

    ReadScript_TrigOperands(monAnim, &index, &radians, &amplitude);
    monAnim->vars[index] = FX_Whole(FX_SinIdx(radians) * amplitude);
}

static void PokemonAnimCmd_Cos(PokemonAnim *monAnim)
{
    u8 index;
    int radians, amplitude;

    ReadScript_TrigOperands(monAnim, &index, &radians, &amplitude);
    monAnim->vars[index] = FX_Whole(FX_CosIdx(radians) * amplitude);
}

static void PokemonAnimCmd_SetTranslation(PokemonAnim *monAnim)
{
    u8 index, translationType;

    ReadScript_VarIndex(monAnim, &index);
    ReadScript_U8(monAnim, &translationType);

    if (translationType == ANIM_TRANSLATE_X) {
        monAnim->translateX = monAnim->vars[index];
    } else if (translationType == ANIM_TRANSLATE_Y) {
        monAnim->translateY = monAnim->vars[index];
    } else {
        GF_ASSERT(FALSE);
    }
}

static void PokemonAnimCmd_AddTranslation(PokemonAnim *monAnim)
{
    u8 index, translationType;

    ReadScript_VarIndex(monAnim, &index);
    ReadScript_U8(monAnim, &translationType);

    if (translationType == ANIM_TRANSLATE_X) {
        monAnim->translateX += monAnim->vars[index];
    } else if (translationType == ANIM_TRANSLATE_Y) {
        monAnim->translateY += monAnim->vars[index];
    } else {
        GF_ASSERT(FALSE);
    }
}

static void PokemonAnimCmd_UpdateAttribute(PokemonAnim *monAnim)
{
    int *attributePtr;
    u8 attribute;

    ReadScript_U8(monAnim, &attribute);

    if (attribute == ANIM_TRANSLATE_X) {
        attributePtr = &monAnim->translateX;
    } else if (attribute == ANIM_TRANSLATE_Y) {
        attributePtr = &monAnim->translateY;
    } else if (attribute == ANIM_OFFSET_X) {
        attributePtr = &monAnim->offsetX;
    } else if (attribute == ANIM_OFFSET_Y) {
        attributePtr = &monAnim->offsetY;
    } else if (attribute == ANIM_SCALE_X) {
        attributePtr = &monAnim->scaleX;
    } else if (attribute == ANIM_SCALE_Y) {
        attributePtr = &monAnim->scaleY;
    } else if (attribute == ANIM_ROTATION_Z) {
        attributePtr = &monAnim->rotationZ;
    } else {
        GF_ASSERT(FALSE);
    }

    u8 index, readType;
    int value;

    ReadScript_U8(monAnim, &readType);

    if (readType == ANIM_READ_TYPE_VALUE2) {
        ReadScript_Int(monAnim, &value);
    } else if (readType == ANIM_READ_TYPE_VAR2) {
        ReadScript_VarIndex(monAnim, &index);
        value = monAnim->vars[index];
    } else {
        GF_ASSERT(FALSE);
    }

    u8 updateType;

    ReadScript_U8(monAnim, &updateType);

    if (updateType == ANIM_ATTRIBUTE_SET) {
        *attributePtr = value;
    } else if (updateType == ANIM_ATTRIBUTE_ADD) {
        *attributePtr += value;
    } else {
        GF_ASSERT(FALSE);
    }
}

static void PokemonAnimCmd_ApplyTranslation(PokemonAnim *monAnim)
{
    if (monAnim->flipSprite) {
        PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_X_CENTER, monAnim->originalX - (monAnim->translateX + monAnim->offsetX));
    } else {
        PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_X_CENTER, monAnim->originalX + monAnim->translateX + monAnim->offsetX);
    }

    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_Y_CENTER, monAnim->originalY + monAnim->translateY + monAnim->offsetY);
}

static void PokemonAnimCmd_ApplyScaleAndRotation(PokemonAnim *monAnim)
{
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1) + monAnim->scaleX);
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1) + monAnim->scaleY);
    PokemonSprite_SetAttribute(monAnim->sprite, MON_SPRITE_ROTATION_Z, (u16)monAnim->rotationZ);

    if (monAnim->yNormalization == Y_NORMALIZATION_NEGATIVE_SCALE) {
        if (monAnim->scaleY < 0) {
            ApplyYNormalization(monAnim);
        }
    } else if (monAnim->yNormalization == Y_NORMALIZATION_ON) {
        if (monAnim->scaleY != 0) {
            ApplyYNormalization(monAnim);
        }
    } else if (monAnim->yNormalization == Y_NORMALIZATION_OFF) {
        return;
    } else {
        GF_ASSERT(FALSE);
    }
}

static void PokemonAnimCmd_SetOffset(PokemonAnim *monAnim)
{
    u8 index, attribute;

    ReadScript_VarIndex(monAnim, &index);

    monAnim->scriptPtr++;
    attribute = ReadScript_Word(monAnim->scriptPtr);

    if (attribute == ANIM_TRANSLATE_X || attribute == ANIM_OFFSET_X) {
        monAnim->offsetX = monAnim->vars[index];
    } else if (attribute == ANIM_TRANSLATE_Y || attribute == ANIM_OFFSET_Y) {
        monAnim->offsetY = monAnim->vars[index];
    } else {
        GF_ASSERT(FALSE);
    }
}

static void PokemonAnimCmd_SetStartDelay(PokemonAnim *monAnim)
{
    ReadScript_Int(monAnim, &monAnim->startDelay);
    monAnim->waitFrame = TRUE;
}

static void PokemonAnimCmd_Fade(PokemonAnim *monAnim)
{
    u8 initAlpha, targetAlpha, delay;
    int color;

    ReadScript_U8(monAnim, &initAlpha);
    ReadScript_U8(monAnim, &targetAlpha);
    ReadScript_U8(monAnim, &delay);
    ReadScript_Int(monAnim, &color);
    PokemonSprite_StartFade(monAnim->sprite, initAlpha, targetAlpha, delay, color);
}

static void PokemonAnimCmd_WaitFade(PokemonAnim *monAnim)
{
    if (PokemonSprite_IsFadeActive(monAnim->sprite)) {
        monAnim->fadeActive = TRUE;
        monAnim->waitFrame = TRUE;
    }
}

static void PokemonAnimCmd_WaitTransform(PokemonAnim *monAnim)
{
    monAnim->waitForTransform = TRUE;
}

static void PokemonAnimCmd_SetYNormalization(PokemonAnim *monAnim)
{
    ReadScript_U8(monAnim, &monAnim->yNormalization);
    GF_ASSERT(
        monAnim->yNormalization == Y_NORMALIZATION_NEGATIVE_SCALE
        || monAnim->yNormalization == Y_NORMALIZATION_ON
        || (monAnim->yNormalization == Y_NORMALIZATION_OFF
            // it doesn't match without this...
            && TRUE));
}

static void PokemonAnimCmd_Transform_Curve(PokemonAnim *monAnim)
{
    ReadScript_TransformFunc(monAnim, TRANSFORM_FUNC_CURVE);
}

static void PokemonAnimCmd_Transform_CurveEven(PokemonAnim *monAnim)
{
    ReadScript_TransformFunc(monAnim, TRANSFORM_FUNC_CURVE_EVEN);
}

static void PokemonAnimCmd_Transform_Linear(PokemonAnim *monAnim)
{
    ReadScript_TransformFunc(monAnim, TRANSFORM_FUNC_LINEAR);
}

static void PokemonAnimCmd_Transform_LinearEven(PokemonAnim *monAnim)
{
    ReadScript_TransformFunc(monAnim, TRANSFORM_FUNC_LINEAR_EVEN);
}

static void PokemonAnimCmd_Transform_LinearBounded(PokemonAnim *monAnim)
{
    ReadScript_TransformFunc(monAnim, TRANSFORM_FUNC_LINEAR_BOUNDED);
}

static void CalcNextTransformValue(u8 calcType, int *originalValue, int *currentValue, int *nextValue)
{
    if (calcType == TRANSFORM_CALC_SET) {
        *nextValue = *currentValue;
    } else if (calcType == TRANSFORM_CALC_ADD) {
        *nextValue = *originalValue + *currentValue;
    } else if (calcType == TRANSFORM_CALC_INCREMENT) {
        *nextValue += *currentValue;
    } else {
        GF_ASSERT(FALSE);
    }
}

static void SetTransformFuncPtrs(u8 transformType, TransformData *transform, PokemonAnim *monAnim)
{
    switch (transformType) {
    case TRANSFORM_TYPE_OFFSET_X:
        transform->transformMemberPtr = &transform->offsetX;
        transform->animMemberPtr = &monAnim->offsetX;
        transform->originalValue = monAnim->offsetX;
        break;
    case TRANSFORM_TYPE_OFFSET_Y:
        transform->transformMemberPtr = &transform->offsetY;
        transform->animMemberPtr = &monAnim->offsetY;
        transform->originalValue = monAnim->offsetY;
        break;
    case TRANSFORM_TYPE_SCALE_X:
        transform->transformMemberPtr = &transform->scaleX;
        transform->animMemberPtr = &monAnim->scaleX;
        transform->originalValue = monAnim->scaleX;
        break;
    case TRANSFORM_TYPE_SCALE_Y:
        transform->transformMemberPtr = &transform->scaleY;
        transform->animMemberPtr = &monAnim->scaleY;
        transform->originalValue = monAnim->scaleY;
        break;
    case TRANSFORM_TYPE_ROTATION_Z:
        transform->transformMemberPtr = &transform->rotationZ;
        transform->animMemberPtr = &monAnim->rotationZ;
        transform->originalValue = monAnim->rotationZ;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

static void ReadScript_TransformFunc(PokemonAnim *monAnim, int funcType)
{
    TransformData *transform = TransformFuncData_New(monAnim, funcType);

    ReadScript_U8(monAnim, &transform->calcType);
    ReadScript_U8(monAnim, &transform->startDelay);

    for (u8 i = 0; i < sTransformFuncToParams[funcType].paramCount; i++) {
        ReadScript_Int(monAnim, &transform->vars[i]);
    }

    int index = sTransformFuncToParams[funcType].transformTypeIndex;
    SetTransformFuncPtrs(transform->vars[index], transform, monAnim);

    if (transform->startDelay == 0) {
        transform->func(transform, monAnim);
    } else {
        transform->startDelay--;
    }
}

static void TransformFunc_Curve(TransformData *transform, PokemonAnim *monAnim)
{
    int *vars = transform->vars;
    u16 radians = (vars[3] * (vars[6] + 1)) + vars[4];

    switch (vars[0]) {
    case TRANSFORM_CURVE_SIN:
        *transform->transformMemberPtr = FX_Whole(FX_SinIdx(radians) * vars[2]);
        break;
    case TRANSFORM_CURVE_COS:
        *transform->transformMemberPtr = FX_Whole(FX_CosIdx(radians) * vars[2]);
        break;
    case TRANSFORM_CURVE_NEGATIVE_SIN:
        *transform->transformMemberPtr = -FX_Whole(FX_SinIdx(radians) * vars[2]);
        break;
    case TRANSFORM_CURVE_NEGATIVE_COS:
        *transform->transformMemberPtr = -FX_Whole(FX_CosIdx(radians) * vars[2]);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    CalcNextTransformValue(transform->calcType, &(transform->originalValue), transform->transformMemberPtr, transform->animMemberPtr);

    vars[6]++;

    if (vars[6] >= vars[5]) {
        transform->active = FALSE;
    }
}

static void TransformFunc_CurveEven(TransformData *transform, PokemonAnim *monAnim)
{
    int *vars = transform->vars;
    u16 radians = ((vars[3] * (vars[6] + 1)) / vars[5]) + vars[4];

    switch (vars[0]) {
    case TRANSFORM_CURVE_SIN:
        *transform->transformMemberPtr = FX_Whole(FX_SinIdx(radians) * vars[2]);
        break;
    case TRANSFORM_CURVE_COS:
        *transform->transformMemberPtr = FX_Whole(FX_CosIdx(radians) * vars[2]);
        break;
    case TRANSFORM_CURVE_NEGATIVE_SIN:
        *transform->transformMemberPtr = -FX_Whole(FX_SinIdx(radians) * vars[2]);
        break;
    case TRANSFORM_CURVE_NEGATIVE_COS:
        *transform->transformMemberPtr = -FX_Whole(FX_CosIdx(radians) * vars[2]);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    CalcNextTransformValue(transform->calcType, &(transform->originalValue), transform->transformMemberPtr, transform->animMemberPtr);

    vars[6]++;

    if (vars[6] >= vars[5]) {
        transform->active = FALSE;
    }
}

static void TransformFunc_Linear(TransformData *transform, PokemonAnim *monAnim)
{
    int *vars = transform->vars;
    int distance = vars[1] + (vars[2] * vars[4]);

    *transform->transformMemberPtr += distance;

    CalcNextTransformValue(transform->calcType, &(transform->originalValue), transform->transformMemberPtr, transform->animMemberPtr);

    vars[4]++;

    if (vars[4] >= vars[3]) {
        transform->active = FALSE;
    }
}

static void TransformFunc_LinearEven(TransformData *transform, PokemonAnim *monAnim)
{
    int *vars = transform->vars;
    int distance = ((vars[3] + 1) * vars[1]) / vars[2];

    *transform->transformMemberPtr = distance;

    CalcNextTransformValue(transform->calcType, &(transform->originalValue), transform->transformMemberPtr, transform->animMemberPtr);

    vars[3]++;

    if (vars[3] >= vars[2]) {
        transform->active = FALSE;
    }
}

static void TransformFunc_LinearBounded(TransformData *transform, PokemonAnim *monAnim)
{
    int *vars = transform->vars;
    int distance = vars[1] + (vars[2] * vars[4]);

    *transform->transformMemberPtr += distance;

    if (transform->calcType == TRANSFORM_CALC_SET || transform->calcType == TRANSFORM_CALC_INCREMENT) {
        if (distance < 0) {
            if (*transform->transformMemberPtr <= vars[3]) {
                *transform->transformMemberPtr = vars[3];
                transform->active = FALSE;
            }
        } else {
            if (*transform->transformMemberPtr >= vars[3]) {
                *transform->transformMemberPtr = vars[3];
                transform->active = FALSE;
            }
        }
    } else if (transform->calcType == TRANSFORM_CALC_ADD) {
        int v2 = transform->originalValue + *transform->transformMemberPtr;

        if (distance < 0) {
            if (v2 <= vars[3]) {
                *transform->transformMemberPtr += (vars[3] - v2);
                transform->active = FALSE;
            }
        } else {
            if (v2 >= vars[3]) {
                *transform->transformMemberPtr -= (v2 - vars[3]);
                transform->active = FALSE;
            }
        }
    } else {
        GF_ASSERT(FALSE);
    }

    CalcNextTransformValue(transform->calcType, &(transform->originalValue), transform->transformMemberPtr, transform->animMemberPtr);

    vars[4]++;
}

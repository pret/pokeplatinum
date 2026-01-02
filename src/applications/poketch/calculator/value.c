#include "applications/poketch/calculator/value.h"

#include "constants/heap.h"

#include "heap.h"

static const u64 powersOfTen[] = {
    1,
    10,
    100,
    1000,
    10000,
    100000,
    1000000,
    10000000,
    100000000,
    1000000000,
    10000000000
};

static u32 GetLengthLeftOfDecimal(const CalculatorValue *value);
static u32 GetLength(const CalculatorValue *value);
static void Simplify(CalculatorValue *value);
static void AlignDecimalPoints(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result1, CalculatorValue *result2);
static BOOL IsEqual(const CalculatorValue *value1, const CalculatorValue *value2);

BOOL CalculatorValue_New(CalculatorValue **dest, u32 maxDigits)
{
    *dest = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(CalculatorValue));

    if (*dest) {
        (*dest)->maxDigits = maxDigits;
        CalculatorValue_Clear(*dest);
        return TRUE;
    }

    return FALSE;
}

void CalculatorValue_Free(CalculatorValue *value)
{
    Heap_Free(value);
}

void CalculatorValue_Clear(CalculatorValue *value)
{
    value->significand = 0;
    value->isNegative = FALSE;
    value->decimalPlaces = 0;
    value->invalid = FALSE;
}

void CalculatorValue_CopyPointer(CalculatorValue *dest, const CalculatorValue *src)
{
    *dest = *src;
}

void CalculatorValue_Add(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result)
{
    if ((value1->isNegative == FALSE) && (value2->isNegative == TRUE)) {
        CalculatorValue negatedValue = *value2;

        negatedValue.isNegative = FALSE;
        CalculatorValue_Subtract(value1, &negatedValue, result);
        return;
    }

    if ((value1->isNegative == TRUE) && (value2->isNegative == FALSE)) {
        CalculatorValue negatedValue = *value1;

        negatedValue.isNegative = FALSE;
        CalculatorValue_Subtract(value2, &negatedValue, result);
        return;
    }

    CalculatorValue aligned1, aligned2;

    AlignDecimalPoints(value1, value2, &aligned1, &aligned2);

    result->significand = aligned1.significand + aligned2.significand;
    result->decimalPlaces = aligned1.decimalPlaces;
    result->isNegative = aligned1.isNegative;

    Simplify(result);
}

void CalculatorValue_Subtract(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result)
{
    if (((value1->isNegative == FALSE) && (value2->isNegative == TRUE)) || ((value1->isNegative == TRUE) && (value2->isNegative == FALSE))) {
        CalculatorValue negatedValue = *value2;

        negatedValue.isNegative ^= 1;
        CalculatorValue_Add(value1, &negatedValue, result);
        return;
    }

    if (IsEqual(value1, value2)) {
        CalculatorValue_Clear(result);
        return;
    }

    CalculatorValue temp1, temp2;

    AlignDecimalPoints(value1, value2, &temp1, &temp2);

    value1 = &temp1;
    value2 = &temp2;

    if ((value1->significand < value2->significand) ^ value1->isNegative) {
        const CalculatorValue *swap = value1;
        value1 = value2;
        value2 = swap;
        result->isNegative = value1->isNegative ^ 1;
    } else {
        result->isNegative = value1->isNegative;
    }

    result->significand = value1->significand - value2->significand;
    result->decimalPlaces = value1->decimalPlaces;

    Simplify(result);
}

void CalculatorValue_Multiply(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result)
{
    result->significand = value1->significand * value2->significand;
    result->decimalPlaces = value1->decimalPlaces + value2->decimalPlaces;
    result->isNegative = value1->isNegative ^ value2->isNegative;

    Simplify(result);
}

void CalculatorValue_Divide(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result)
{
    CalculatorValue dividend, divisor;
    u64 remainder;
    u32 resultLength;

    if (value2->significand == 0) {
        result->invalid = TRUE;
        return;
    }

    AlignDecimalPoints(value1, value2, &dividend, &divisor);
    value1 = &dividend;
    value2 = &divisor;

    CP_SetDiv64_64(dividend.significand, divisor.significand);

    result->significand = CP_GetDivResult64();
    result->decimalPlaces = 0;

    resultLength = GetLengthLeftOfDecimal(result);

    remainder = CP_GetDivRemainder64();
    while (remainder) {
        if (resultLength + 1 + result->decimalPlaces >= result->maxDigits) {
            break;
        }

        remainder *= 10;

        CP_SetDiv64_64(remainder, divisor.significand);

        result->significand *= 10;
        result->significand += CP_GetDivResult64();
        result->decimalPlaces++;

        remainder = CP_GetDivRemainder64();
    }

    result->isNegative = value1->isNegative ^ value2->isNegative;
}

BOOL CalculatorValue_AppendDigit(CalculatorValue *value, u32 newDigit)
{
    if (GetLength(value) >= value->maxDigits) {
        return FALSE;
    }

    if (value->decimalPlaces == 0) {
        value->significand *= 10;
        value->significand += newDigit;
    }

    return TRUE;
}

BOOL CalculatorValue_AppendDecimalDigit(CalculatorValue *value, u32 newDigit)
{
    if (GetLength(value) >= value->maxDigits) {
        return FALSE;
    }

    value->significand *= 10;
    value->significand += newDigit;
    value->decimalPlaces++;

    return TRUE;
}

static BOOL IsEqual(const CalculatorValue *value, const CalculatorValue *value2)
{
    if (value->significand != value2->significand) {
        return FALSE;
    }

    if (value->decimalPlaces != value2->decimalPlaces) {
        return FALSE;
    }

    if (value->isNegative != value2->isNegative) {
        if (value->significand != 0) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL CalculatorValue_CanBeDisplayed(const CalculatorValue *value, u32 maxDigits)
{
    u32 length;

    if (value->invalid) {
        return FALSE;
    }

    length = GetLengthLeftOfDecimal(value);

    if (value->decimalPlaces) {
        length += 1 + value->decimalPlaces;
    }

    if (length > maxDigits) {
        return FALSE;
    }

    return TRUE;
}

BOOL CalculatorValue_GetDisplaySymbols(const CalculatorValue *value, u16 *displaySymbols)
{
    u64 significand;
    u32 numDigits, totalSymbols;
    s32 numLeadingZeros;
    u16 *displayIdx;

    if (value->invalid) {
        return FALSE;
    }

    if (value->significand == 0) {
        *displaySymbols++ = 0;

        if (value->decimalPlaces) {
            *displaySymbols++ = DISPLAY_SYMBOL_DECIMAL;

            for (numLeadingZeros = 0; numLeadingZeros < value->decimalPlaces; numLeadingZeros++) {
                *displaySymbols++ = 0;
            }
        }

        *displaySymbols = DISPLAY_SYMBOL_TERMINATE;
        return TRUE;
    }

    significand = value->significand;
    numDigits = 1;

    while (significand >= powersOfTen[numDigits]) {
        numDigits++;
    }

    totalSymbols = numDigits;
    numLeadingZeros = value->decimalPlaces - numDigits;

    if (numLeadingZeros >= 0) {
        totalSymbols += 2 + numLeadingZeros;
    } else if (value->decimalPlaces) {
        totalSymbols += 1;
    }

    if (totalSymbols + value->isNegative > value->maxDigits) {
        return FALSE;
    }

    if (value->isNegative == 1) {
        *displaySymbols++ = DISPLAY_SYMBOL_NEGATIVE;
    }

    displayIdx = displaySymbols;

    if (numLeadingZeros >= 0) {
        *displayIdx++ = 0;
        *displayIdx++ = 10;

        while (numLeadingZeros--) {
            *displayIdx++ = 0;
        }
    } else {
        s32 integerDigits = numLeadingZeros * -1;

        for (numLeadingZeros = 0; numLeadingZeros < integerDigits; numLeadingZeros++) {
            CP_SetDiv64_64(significand, powersOfTen[numDigits - 1 - numLeadingZeros]);
            *displayIdx++ = 0 + CP_GetDivResult32();
            significand = CP_GetDivRemainder64();
        }

        if (value->decimalPlaces) {
            *displayIdx++ = DISPLAY_SYMBOL_DECIMAL;
        }
    }

    if ((displayIdx - displaySymbols) < totalSymbols) {
        s32 fractionalDigits = totalSymbols - (displayIdx - displaySymbols);

        for (numLeadingZeros = 0; numLeadingZeros < fractionalDigits; numLeadingZeros++) {
            CP_SetDiv64_64(significand, powersOfTen[fractionalDigits - 1 - numLeadingZeros]);
            *displayIdx++ = 0 + CP_GetDivResult32();
            significand = CP_GetDivRemainder64();
        }
    }

    *displayIdx = DISPLAY_SYMBOL_TERMINATE;

    return TRUE;
}

s64 CalculatorValue_GetSignedInt(const CalculatorValue *value)
{
    s64 integer = value->significand;

    integer /= powersOfTen[value->decimalPlaces];

    if (value->isNegative == 1) {
        integer *= -1;
    }

    return integer;
}

static u32 GetLengthLeftOfDecimal(const CalculatorValue *value)
{
    u64 powerOfTen = 10;
    u32 length = 1;

    while (value->significand >= powerOfTen) {
        if (++length > value->maxDigits) {
            break;
        }

        powerOfTen *= 10;
    }

    if (length > value->decimalPlaces) {
        length -= value->decimalPlaces;
    } else {
        length = 1;
    }

    length += value->isNegative;

    return length;
}

static u32 GetLength(const CalculatorValue *value)
{
    u32 length = GetLengthLeftOfDecimal(value);

    if (value->decimalPlaces) {
        length += (1 + value->decimalPlaces);
    }

    return length;
}

static void Simplify(CalculatorValue *value)
{
    u32 length;

    // Remove trailing zeroes after decimal point
    if (value->decimalPlaces) {
        CP_SetDiv64_32(value->significand, 10);

        while (CP_GetDivRemainder64() == 0) {
            value->significand = CP_GetDivResult64();
            CP_SetDiv64_32(value->significand, 10);

            if (--value->decimalPlaces == 0) {
                break;
            }
        }
    }

    length = GetLengthLeftOfDecimal(value);

    // Truncate value to fit on screen
    if (value->decimalPlaces) {
        length += 1 + value->decimalPlaces;

        if (length > value->maxDigits) {
            u32 extraLength = length - value->maxDigits;

            if (extraLength <= value->decimalPlaces) {
                CP_SetDiv64_32(value->significand, powersOfTen[extraLength]);
                value->significand = CP_GetDivResult64();
                value->decimalPlaces -= extraLength;
            }
        }
    }
}

static void AlignDecimalPoints(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result1, CalculatorValue *result2)
{
    *result1 = *value1;
    *result2 = *value2;

    if (result1->decimalPlaces < result2->decimalPlaces) {
        CalculatorValue *swap = result1;
        result1 = result2;
        result2 = swap;
    }

    u32 padding = result1->decimalPlaces - result2->decimalPlaces;

    result2->significand *= powersOfTen[padding];
    result2->decimalPlaces = result1->decimalPlaces;
}

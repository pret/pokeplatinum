#ifndef POKEPLATINUM_POKETCH_CALCULATOR_VALUE_H
#define POKEPLATINUM_POKETCH_CALCULATOR_VALUE_H

#define CALCULATOR_MAX_DIGITS 10

#define DISPLAY_SYMBOL_DECIMAL   10
#define DISPLAY_SYMBOL_NEGATIVE  11
#define DISPLAY_SYMBOL_INVALID   12
#define DISPLAY_SYMBOL_TERMINATE 13

typedef struct CalculatorValue {
    u64 significand;
    u8 decimalPlaces;
    u8 isNegative;
    u8 maxDigits;
    u8 invalid;
} CalculatorValue;

BOOL CalculatorValue_New(CalculatorValue **dest, u32 maxDigits);
void CalculatorValue_Free(CalculatorValue *value);
void CalculatorValue_Clear(CalculatorValue *value);
void CalculatorValue_CopyPointer(CalculatorValue *dest, const CalculatorValue *src);
void CalculatorValue_Add(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result);
void CalculatorValue_Subtract(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result);
void CalculatorValue_Multiply(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result);
void CalculatorValue_Divide(const CalculatorValue *value1, const CalculatorValue *value2, CalculatorValue *result);
BOOL CalculatorValue_AppendDigit(CalculatorValue *value, u32 newDigit);
BOOL CalculatorValue_AppendDecimalDigit(CalculatorValue *value, u32 newDigit);
BOOL CalculatorValue_CanBeDisplayed(const CalculatorValue *value, u32 maxDigits);
BOOL CalculatorValue_GetDisplaySymbols(const CalculatorValue *value, u16 *displaySymbols);
s64 CalculatorValue_GetSignedInt(const CalculatorValue *value);

#endif // POKEPLATINUM_POKETCH_CALCULATOR_VALUE_H

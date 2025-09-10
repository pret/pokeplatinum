#ifndef POKEPLATINUM_POKETCH_CALCULATOR_GRAPHICS_H
#define POKEPLATINUM_POKETCH_CALCULATOR_GRAPHICS_H

#include "applications/poketch/calculator/value.h"

#include "bg_window.h"

#define NUM_BUTTONS 17

#define CALC_BUTTON_DECIMAL 10
#define CALC_BUTTON_MINUS   11
#define CALC_BUTTON_PLUS    12
#define CALC_BUTTON_TIMES   13
#define CALC_BUTTON_DIVIDE  14
#define CALC_BUTTON_EQUALS  15
#define CALC_BUTTON_CLEAR   16
#define CALC_BUTTON_NULL    17

#define BUTTON_SIZE_TILES_LARGE 32
#define BUTTON_SIZE_TILES_SMALL 16

typedef struct CalculatorData {
    u16 pressedButton;
    u16 pendingOperation;
    CalculatorValue *operand1;
    CalculatorValue *operand2;
    CalculatorValue *result;
} CalculatorData;

typedef struct CalculatorGraphics {
    const CalculatorData *calcData;
    BgConfig *bgConfig;
    u32 activeTasks[10];
    u16 outputRowTiles[14];
    u16 releasedButtonTiles[NUM_BUTTONS][BUTTON_SIZE_TILES_LARGE];
} CalculatorGraphics;

enum CalculatorGraphicsTask {
    CALCULATOR_GRAPHICS_INIT = 0,
    CALCULATOR_GRAPHICS_PRESS_BUTTON,
    CALCULATOR_GRAPHICS_RELEASE_BUTTON,
    CALCULATOR_GRAPHICS_OPERAND_1,
    CALCULATOR_GRAPHICS_CLEAR_OUTPUT,
    CALCULATOR_GRAPHICS_OPERAND_2,
    CALCULATOR_GRAPHICS_RESULT,
    CALCULATOR_GRAPHICS_RESULT_AND_OP,
    CALCULATOR_GRAPHICS_UDPATE_OP,
    CALCULATOR_GRAPHICS_INVALID_VALUE,
    CALCULATOR_GRAPHICS_FREE,
};

BOOL PoketchCalculatorGraphics_New(CalculatorGraphics **graphics, const CalculatorData *calcState, BgConfig *bgConfig);
void PoketchCalculatorGraphics_Free(CalculatorGraphics *graphics);
void PoketchCalculatorGraphics_StartTask(CalculatorGraphics *graphics, enum CalculatorGraphicsTask taskID);
BOOL PoketchCalculatorGraphics_TaskIsNotActive(CalculatorGraphics *graphics, enum CalculatorGraphicsTask taskID);
BOOL PoketchCalculatorGraphics_NoActiveTasks(CalculatorGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_CALCULATOR_GRAPHICS_H

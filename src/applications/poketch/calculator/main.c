#include <nitro.h>
#include <nitro/sinit.h>

#include "struct_decls/pokedexdata_decl.h"

#include "applications/poketch/calculator/graphics.h"
#include "applications/poketch/calculator/value.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "pokedex.h"
#include "pokemon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchCalculator {
    u8 state;
    u8 subState;
    u8 nextState;
    u8 shouldExit;
    u8 decimalActive;
    u8 unused;
    u16 pressedButton;
    enum CalculatorGraphicsTask nextGraphicsTask;
    PoketchButtonManager *buttonManager;
    PoketchSystem *poketchSys;
    CalculatorGraphics *graphics;
    CalculatorData calcData;
} PoketchCalculator;

typedef BOOL (*StateFunc)(PoketchCalculator *);

enum CalculatorState {
    STATE_LOAD_APP = 0,
    STATE_ENTER_OPERAND_1,
    STATE_ENTER_OPERATOR,
    STATE_ENTER_OPERAND_2,
    STATE_SHOW_RESULT,
    STATE_VALUE_ERROR,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchCalculator *appData, u32 appID, BgConfig *bgConfig);
static void Free(PoketchCalculator *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchCalculator *appData, enum CalculatorState newState);
static BOOL State_LoadApp(PoketchCalculator *appData);
static BOOL State_EnterOperand1(PoketchCalculator *appData);
static BOOL State_EnterOperator(PoketchCalculator *appData);
static BOOL State_EnterOperand2(PoketchCalculator *appData);
static BOOL State_ShowResult(PoketchCalculator *appData);
static BOOL State_ShowValueError(PoketchCalculator *appData);
static BOOL State_UnloadApp(PoketchCalculator *appData);

static void ResetCalculatorState(PoketchCalculator *appData);
static BOOL EvaluateResult(PoketchCalculator *appData, u32 operator);
static void PlayResultSpeciesCry(PoketchCalculator *appData, const CalculatorValue *result);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchCalculator *calculator = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchCalculator));

    if (calculator != NULL) {
        if (Init(calculator, appID, bgConfig)) {
            calculator->poketchSys = poketchSys;
            SysTask_Start(Task_Main, calculator, 1);
            *appData = calculator;

            return TRUE;
        }
    }
    return FALSE;
}

static BOOL Init(PoketchCalculator *appData, u32 appID, BgConfig *bgConfig)
{
    // clang-format off
    static const TouchScreenRect sButtonHitboxes[] = {
        { .rect = { .top = 144, .bottom = 175, .left =  32, .right =  95 } }, // 0
        { .rect = { .top = 112, .bottom = 143, .left =  32, .right =  63 } }, // 1
        { .rect = { .top = 112, .bottom = 143, .left =  64, .right =  95 } }, // 2
        { .rect = { .top = 112, .bottom = 143, .left =  96, .right = 127 } }, // 3
        { .rect = { .top =  80, .bottom = 111, .left =  32, .right =  63 } }, // 4
        { .rect = { .top =  80, .bottom = 111, .left =  64, .right =  95 } }, // 5
        { .rect = { .top =  80, .bottom = 111, .left =  96, .right = 127 } }, // 6
        { .rect = { .top =  48, .bottom =  79, .left =  32, .right =  63 } }, // 7
        { .rect = { .top =  48, .bottom =  79, .left =  64, .right =  95 } }, // 8
        { .rect = { .top =  48, .bottom =  79, .left =  96, .right = 127 } }, // 9
        { .rect = { .top = 144, .bottom = 175, .left =  96, .right = 127 } }, // decimal point
        { .rect = { .top =  80, .bottom = 111, .left = 160, .right = 191 } }, // minus
        { .rect = { .top =  80, .bottom = 111, .left = 128, .right = 159 } }, // plus
        { .rect = { .top = 112, .bottom = 143, .left = 128, .right = 159 } }, // times
        { .rect = { .top = 112, .bottom = 143, .left = 160, .right = 191 } }, // divide
        { .rect = { .top = 144, .bottom = 175, .left = 128, .right = 191 } }, // equals
        { .rect = { .top =  48, .bottom =  79, .left = 128, .right = 191 } }, // clear
    };
    // clang-format on

    if (PoketchCalculatorGraphics_New(&appData->graphics, &appData->calcData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->nextState = 0;
        appData->decimalActive = FALSE;
        appData->pressedButton = CALC_BUTTON_NULL;
        appData->nextGraphicsTask = -1;

        CalculatorValue_New(&appData->calcData.operand1, CALCULATOR_MAX_DIGITS);
        CalculatorValue_New(&appData->calcData.operand2, CALCULATOR_MAX_DIGITS);
        CalculatorValue_New(&appData->calcData.result, CALCULATOR_MAX_DIGITS);

        if ((appData->calcData.operand1 == NULL) || (appData->calcData.operand2 == NULL) || (appData->calcData.result == NULL)) {
            return FALSE;
        }

        appData->buttonManager = PoketchButtonManager_New(sButtonHitboxes, NUM_BUTTONS, ButtonCallback, appData, HEAP_ID_POKETCH_APP);

        if (appData->buttonManager == NULL) {
            return FALSE;
        }
    }

    return TRUE;
}

static void Free(PoketchCalculator *appData)
{
    if (appData->calcData.operand1) {
        CalculatorValue_Free(appData->calcData.operand1);
    }

    if (appData->calcData.operand2) {
        CalculatorValue_Free(appData->calcData.operand2);
    }

    if (appData->calcData.result) {
        CalculatorValue_Free(appData->calcData.result);
    }

    if (appData->buttonManager) {
        PoketchButtonManager_Free(appData->buttonManager);
    }

    PoketchCalculatorGraphics_Free(appData->graphics);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_EnterOperand1,
        State_EnterOperator,
        State_EnterOperand2,
        State_ShowResult,
        State_ShowValueError,
        State_UnloadApp
    };

    PoketchCalculator *calculator = appData;

    if (calculator->shouldExit) {
        ChangeState(calculator, STATE_SHUTDOWN);
        calculator->shouldExit = FALSE;
    }

    if (calculator->state < NELEMS(stateFuncs)) {
        calculator->pressedButton = CALC_BUTTON_NULL;
        PoketechSystem_UpdateButtonManager(calculator->poketchSys, calculator->buttonManager);

        if (stateFuncs[calculator->state](calculator)) {
            Free(calculator);
            Heap_Free(calculator);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(calculator->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchCalculator *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchCalculator *appData, enum CalculatorState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->nextState = appData->state;
    appData->subState = 0;
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchCalculator *calculator = appData;

    switch (touchState) {
    case BUTTON_TOUCH_RELEASED:
        calculator->calcData.pressedButton = buttonID;
        PoketchCalculatorGraphics_StartTask(calculator->graphics, CALCULATOR_GRAPHICS_RELEASE_BUTTON);
        break;
    case BUTTON_TOUCH_PRESSED:
        calculator->calcData.pressedButton = buttonID;
        PoketchCalculatorGraphics_StartTask(calculator->graphics, CALCULATOR_GRAPHICS_PRESS_BUTTON);
        break;
    }

    if (buttonState == BUTTON_MANAGER_STATE_TAP) {
        calculator->pressedButton = buttonID;
    }
}

static BOOL State_LoadApp(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCalculatorGraphics_StartTask(appData->graphics, CALCULATOR_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchCalculatorGraphics_TaskIsNotActive(appData->graphics, CALCULATOR_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_ENTER_OPERAND_1);
        }
        break;
    }

    return FALSE;
}

static BOOL State_EnterOperand1(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        appData->nextGraphicsTask = -1;

        switch (appData->pressedButton) {
        case CALC_BUTTON_NULL:
            break;
        case CALC_BUTTON_CLEAR:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_CLEAR_OUTPUT;
            break;
        case CALC_BUTTON_DECIMAL:
            appData->decimalActive = TRUE;
            break;
        case CALC_BUTTON_PLUS:
        case CALC_BUTTON_MINUS:
        case CALC_BUTTON_DIVIDE:
        case CALC_BUTTON_TIMES:
            appData->calcData.pendingOperation = appData->pressedButton;
            appData->decimalActive = FALSE;
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_UDPATE_OP;
            appData->nextState = STATE_ENTER_OPERATOR;
            break;
        case CALC_BUTTON_EQUALS:
            PlayResultSpeciesCry(appData, appData->calcData.operand1);
            CalculatorValue_Clear(appData->calcData.operand1);
            break;
        default:
            if (appData->decimalActive) {
                if (CalculatorValue_AppendDecimalDigit(appData->calcData.operand1, appData->pressedButton)) {
                    appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
                }
            } else {
                if (CalculatorValue_AppendDigit(appData->calcData.operand1, appData->pressedButton)) {
                    appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
                }
            }
        }

        if (appData->nextGraphicsTask != -1) {
            PoketchCalculatorGraphics_StartTask(appData->graphics, appData->nextGraphicsTask);
            appData->subState++;
        } else if (appData->nextState != appData->state) {
            ChangeState(appData, appData->nextState);
        }
        break;
    case 1:
        if (PoketchCalculatorGraphics_TaskIsNotActive(appData->graphics, appData->nextGraphicsTask)) {
            if (appData->nextState != appData->state) {
                ChangeState(appData, appData->nextState);
            } else {
                appData->subState = 0;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL State_EnterOperator(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        appData->nextGraphicsTask = -1;

        switch (appData->pressedButton) {
        case CALC_BUTTON_NULL:
            break;
        case CALC_BUTTON_CLEAR:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_CLEAR_OUTPUT;
            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        case CALC_BUTTON_DECIMAL:
            CalculatorValue_Clear(appData->calcData.operand2);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_2;
            appData->decimalActive = TRUE;
            appData->nextState = STATE_ENTER_OPERAND_2;
            break;
        case CALC_BUTTON_PLUS:
        case CALC_BUTTON_MINUS:
        case CALC_BUTTON_DIVIDE:
        case CALC_BUTTON_TIMES:
            appData->calcData.pendingOperation = appData->pressedButton;
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_UDPATE_OP;
            break;
        case CALC_BUTTON_EQUALS:
            CalculatorValue_CopyPointer(appData->calcData.operand2, appData->calcData.operand1);

            if (EvaluateResult(appData, appData->calcData.pendingOperation)) {
                PlayResultSpeciesCry(appData, appData->calcData.result);
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_RESULT;
                appData->nextState = STATE_SHOW_RESULT;
            } else {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_INVALID_VALUE;
                appData->nextState = STATE_VALUE_ERROR;
            }
            break;
        default:
            CalculatorValue_Clear(appData->calcData.operand2);

            if (CalculatorValue_AppendDigit(appData->calcData.operand2, appData->pressedButton)) {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_2;
                appData->nextState = STATE_ENTER_OPERAND_2;
            }
            break;
        }

        if (appData->nextGraphicsTask != -1) {
            PoketchCalculatorGraphics_StartTask(appData->graphics, appData->nextGraphicsTask);
            appData->subState++;
        } else if (appData->nextState != appData->state) {
            ChangeState(appData, appData->nextState);
        }
        break;
    case 1:
        if (PoketchCalculatorGraphics_TaskIsNotActive(appData->graphics, appData->nextGraphicsTask)) {
            if (appData->nextState != appData->state) {
                ChangeState(appData, appData->nextState);
            } else {
                appData->subState = 0;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL State_EnterOperand2(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        appData->nextGraphicsTask = -1;

        switch (appData->pressedButton) {
        case CALC_BUTTON_NULL:
            break;
        case CALC_BUTTON_CLEAR:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_CLEAR_OUTPUT;
            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        case CALC_BUTTON_DECIMAL:
            appData->decimalActive = TRUE;
            break;
        case CALC_BUTTON_PLUS:
        case CALC_BUTTON_MINUS:
        case CALC_BUTTON_DIVIDE:
        case CALC_BUTTON_TIMES:
            if (EvaluateResult(appData, appData->calcData.pendingOperation)) {
                appData->calcData.pendingOperation = appData->pressedButton;
                appData->decimalActive = FALSE;
                CalculatorValue_CopyPointer(appData->calcData.operand1, appData->calcData.result);
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_RESULT_AND_OP;
                appData->nextState = STATE_ENTER_OPERATOR;
            } else {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_INVALID_VALUE;
                appData->nextState = STATE_VALUE_ERROR;
            }
            break;
        case CALC_BUTTON_EQUALS:
            if (EvaluateResult(appData, appData->calcData.pendingOperation)) {
                PlayResultSpeciesCry(appData, appData->calcData.result);
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_RESULT;
                appData->decimalActive = FALSE;
                appData->nextState = STATE_SHOW_RESULT;
            } else {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_INVALID_VALUE;
                appData->nextState = STATE_VALUE_ERROR;
            }
            break;
        default:
            if (appData->decimalActive) {
                if (CalculatorValue_AppendDecimalDigit(appData->calcData.operand2, appData->pressedButton)) {
                    appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_2;
                }
            } else {
                if (CalculatorValue_AppendDigit(appData->calcData.operand2, appData->pressedButton)) {
                    appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_2;
                }
            }
            break;
        }

        if (appData->nextGraphicsTask != -1) {
            PoketchCalculatorGraphics_StartTask(appData->graphics, appData->nextGraphicsTask);
            appData->subState++;
        } else if (appData->nextState != appData->state) {
            ChangeState(appData, appData->nextState);
        }
        break;
    case 1:
        if (PoketchCalculatorGraphics_TaskIsNotActive(appData->graphics, appData->nextGraphicsTask)) {
            if (appData->nextState != appData->state) {
                ChangeState(appData, appData->nextState);
            } else {
                appData->subState = 0;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL State_ShowResult(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        appData->nextGraphicsTask = -1;

        switch (appData->pressedButton) {
        case CALC_BUTTON_NULL:
            break;
        case CALC_BUTTON_CLEAR:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_CLEAR_OUTPUT;
            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        case CALC_BUTTON_DECIMAL:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
            appData->decimalActive = TRUE;
            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        case CALC_BUTTON_PLUS:
        case CALC_BUTTON_MINUS:
        case CALC_BUTTON_DIVIDE:
        case CALC_BUTTON_TIMES:
            appData->calcData.pendingOperation = appData->pressedButton;
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_UDPATE_OP;
            appData->decimalActive = FALSE;
            CalculatorValue_CopyPointer(appData->calcData.operand1, appData->calcData.result);
            appData->nextState = STATE_ENTER_OPERATOR;
            break;
        case CALC_BUTTON_EQUALS:
            CalculatorValue_CopyPointer(appData->calcData.operand1, appData->calcData.result);

            if (EvaluateResult(appData, appData->calcData.pendingOperation)) {
                PlayResultSpeciesCry(appData, appData->calcData.result);
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_RESULT;
                appData->decimalActive = FALSE;
            } else {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_INVALID_VALUE;
                appData->nextState = STATE_VALUE_ERROR;
            }
            break;
        default:
            CalculatorValue_Clear(appData->calcData.operand1);

            if (CalculatorValue_AppendDigit(appData->calcData.operand1, appData->pressedButton)) {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
            }

            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        }

        if (appData->nextGraphicsTask != -1) {
            PoketchCalculatorGraphics_StartTask(appData->graphics, appData->nextGraphicsTask);
            appData->subState++;
        } else if (appData->nextState != appData->state) {
            ChangeState(appData, appData->nextState);
        }
        break;
    case 1:
        if (PoketchCalculatorGraphics_TaskIsNotActive(appData->graphics, appData->nextGraphicsTask)) {
            if (appData->nextState != appData->state) {
                ChangeState(appData, appData->nextState);
            } else {
                appData->subState = 0;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL State_ShowValueError(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        appData->nextGraphicsTask = -1;

        switch (appData->pressedButton) {
        case CALC_BUTTON_NULL:
            break;
        case CALC_BUTTON_CLEAR:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        case CALC_BUTTON_DECIMAL:
            ResetCalculatorState(appData);
            appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
            appData->decimalActive = TRUE;
            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        case CALC_BUTTON_PLUS:
        case CALC_BUTTON_MINUS:
        case CALC_BUTTON_DIVIDE:
        case CALC_BUTTON_TIMES:
        case CALC_BUTTON_EQUALS:
            break;
        default:
            ResetCalculatorState(appData);

            if (CalculatorValue_AppendDigit(appData->calcData.operand1, appData->pressedButton)) {
                appData->nextGraphicsTask = CALCULATOR_GRAPHICS_OPERAND_1;
            }

            appData->nextState = STATE_ENTER_OPERAND_1;
            break;
        }

        if (appData->nextGraphicsTask != -1) {
            PoketchCalculatorGraphics_StartTask(appData->graphics, appData->nextGraphicsTask);
            appData->subState++;
        } else if (appData->nextState != appData->state) {
            ChangeState(appData, appData->nextState);
        }
        break;
    case 1:
        if (PoketchCalculatorGraphics_TaskIsNotActive(appData->graphics, appData->nextGraphicsTask)) {
            if (appData->nextState != appData->state) {
                ChangeState(appData, appData->nextState);
            } else {
                appData->subState = 0;
            }
        }
        break;
    }

    return FALSE;
}

static void ResetCalculatorState(PoketchCalculator *appData)
{
    CalculatorValue_Clear(appData->calcData.operand1);
    CalculatorValue_Clear(appData->calcData.operand2);
    CalculatorValue_Clear(appData->calcData.result);

    appData->calcData.pendingOperation = CALC_BUTTON_NULL;
    appData->decimalActive = FALSE;
}

static BOOL EvaluateResult(PoketchCalculator *appData, u32 operator)
{
    switch (operator) {
    case CALC_BUTTON_PLUS:
        CalculatorValue_Add(appData->calcData.operand1, appData->calcData.operand2, appData->calcData.result);
        break;
    case CALC_BUTTON_MINUS:
        CalculatorValue_Subtract(appData->calcData.operand1, appData->calcData.operand2, appData->calcData.result);
        break;
    case CALC_BUTTON_TIMES:
        CalculatorValue_Multiply(appData->calcData.operand1, appData->calcData.operand2, appData->calcData.result);
        break;
    case CALC_BUTTON_DIVIDE:
        CalculatorValue_Divide(appData->calcData.operand1, appData->calcData.operand2, appData->calcData.result);
        break;
    }

    return CalculatorValue_CanBeDisplayed(appData->calcData.result, CALCULATOR_MAX_DIGITS);
}

static BOOL State_UnloadApp(PoketchCalculator *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCalculatorGraphics_StartTask(appData->graphics, CALCULATOR_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchCalculatorGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void PlayResultSpeciesCry(PoketchCalculator *appData, const CalculatorValue *result)
{
    s64 lookupValue = CalculatorValue_GetSignedInt(result);

    if (lookupValue > 0 && lookupValue <= NATIONAL_DEX_COUNT) {
        Pokedex *pokedex;
        u16 species;

        pokedex = SaveData_GetPokedex(PoketchSystem_GetSaveData(appData->poketchSys));

        if (Pokedex_IsNationalDexObtained(pokedex)) {
            species = lookupValue;
        } else {
            species = Pokemon_NationalDexNumber(lookupValue);
        }

        if (species > 0 && species <= NATIONAL_DEX_COUNT && Pokedex_HasSeenSpecies(pokedex, species)) {
            PoketchSystem_PlayCry(species, 0);
        }
    }
}

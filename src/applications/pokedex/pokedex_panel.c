#include "applications/pokedex/pokedex_panel.h"

#include <nitro.h>
#include <string.h>

static int inline CurrentButtonIndex(const PokedexPanelData *pokedexPanelData);
static int inline CalcButtonIndex(const PokedexPanelData *pokedexPanelData, int col, int row);
static void inline SetCol(PokedexPanelData *pokedexPanelData, int col);
static void inline SetRow(PokedexPanelData *pokedexPanelData, int row);
static void StepCols(PokedexPanelData *pokedexPanelData, int direction);
static void StepRows(PokedexPanelData *pokedexPanelData, int direction);
static void WalkCols(PokedexPanelData *pokedexPanelData, int distance);
static void WalkRows(PokedexPanelData *pokedexPanelData, int distance);
static void JumpToButton(PokedexPanelData *pokedexPanelData, int button);

PokedexPanelData *PokedexPanel_Alloc(enum HeapID heapID)
{
    PokedexPanelData *pokedexPanelData = Heap_Alloc(heapID, sizeof(PokedexPanelData));
    memset(pokedexPanelData, 0, sizeof(PokedexPanelData));

    return pokedexPanelData;
}

void PokedexPanel_Free(PokedexPanelData *pokedexPanelData)
{
    Heap_Free(pokedexPanelData);
}

void PokedexPanel_New(PokedexPanelData *pokedexPanelData, const PokedexCursorData *pokedexCursorData, int numCols, int numRows)
{
    memset(pokedexPanelData, 0, sizeof(PokedexPanelData));

    pokedexPanelData->pokedexCursorData = pokedexCursorData;
    pokedexPanelData->numCols = numCols;
    pokedexPanelData->numRows = numRows;
}

void PokedexPanel_Move(PokedexPanelData *pokedexPanelData, enum PanelMovementType movementType, int val)
{
    switch (movementType) {
    case PANEL_MOVEMENT_MULTICOL:
        WalkCols(pokedexPanelData, val);
        break;
    case PANEL_MOVEMENT_MULTIROW:
        WalkRows(pokedexPanelData, val);
        break;
    case PANEL_MOVEMENT_COL:
        SetCol(pokedexPanelData, val);
        break;
    case PANEL_MOVEMENT_ROW:
        SetRow(pokedexPanelData, val);
        break;
    case PANEL_MOVEMENT_JUMP:
        JumpToButton(pokedexPanelData, val);
        break;
    }
}

int PokedexPanel_GetCurrentButton(const PokedexPanelData *pokedexPanelData)
{
    return pokedexPanelData->pokedexCursorData[CurrentButtonIndex(pokedexPanelData)].button;
}

void PokedexPanel_GetCurrentButtonXY(const PokedexPanelData *pokedexPanelData, int *x, int *y)
{
    int buttonIndex = CurrentButtonIndex(pokedexPanelData);

    *x = pokedexPanelData->pokedexCursorData[buttonIndex].x;
    *y = pokedexPanelData->pokedexCursorData[buttonIndex].y;
}

void PokedexPanel_GetCurrentButtonWidthHeight(const PokedexPanelData *pokedexPanelData, int *width, int *height)
{
    int buttonIndex = CurrentButtonIndex(pokedexPanelData);

    *width = pokedexPanelData->pokedexCursorData[buttonIndex].width;
    *height = pokedexPanelData->pokedexCursorData[buttonIndex].height;
}

void PokedexPanel_InitCursorData(PokedexCursorData *pokedexCursorData, int x, int y, int width, int height, enum CursorMovementType cursorColMovementType, enum CursorMovementType cursorRowMovementType, int button)
{
    pokedexCursorData->x = x;
    pokedexCursorData->y = y;
    pokedexCursorData->width = width;
    pokedexCursorData->height = height;
    pokedexCursorData->cursorColMovementType = cursorColMovementType;
    pokedexCursorData->cursorRowMovementType = cursorRowMovementType;
    pokedexCursorData->button = button;
}

void PokedexPanel_GetCursorCornerPos(enum CornerType cornerType, int *cornerX, int *cornerY, int x, int y, int width, int height)
{
    if (cornerType == CORNER_TYPE_TOP_LEFT || cornerType == CORNER_TYPE_BOTTOM_LEFT) {
        x -= width / 2;
    } else {
        x += width / 2;
    }

    if (cornerType == CORNER_TYPE_TOP_LEFT || cornerType == CORNER_TYPE_TOP_RIGHT) {
        y -= height / 2;
    } else {
        y += height / 2;
    }

    *cornerX = x;
    *cornerY = y;
}

static int inline CurrentButtonIndex(const PokedexPanelData *pokedexPanelData)
{
    int buttonIndex = pokedexPanelData->row * pokedexPanelData->numCols;
    buttonIndex += pokedexPanelData->col;

    return buttonIndex;
}

static int inline CalcButtonIndex(const PokedexPanelData *pokedexPanelData, int col, int row)
{
    int buttonIndex = row * pokedexPanelData->numCols;
    buttonIndex += col;

    return buttonIndex;
}

static void StepCols(PokedexPanelData *pokedexPanelData, int direction)
{
    int newCol;
    const PokedexCursorData *pokedexCursorData;
    int stepSum = 0;

    GF_ASSERT(direction == -1 || direction == 1);

    do {
        stepSum += direction;
        newCol = pokedexPanelData->col + stepSum;

        if (newCol < 0 || newCol >= pokedexPanelData->numCols) {
            break;
        }

        pokedexCursorData = &pokedexPanelData->pokedexCursorData[CalcButtonIndex(pokedexPanelData, newCol, pokedexPanelData->row)];
    } while (pokedexCursorData->cursorColMovementType == CURSOR_MOVEMENT_SKIP);

    if (newCol >= 0 && newCol < pokedexPanelData->numCols && pokedexCursorData->cursorColMovementType == CURSOR_MOVEMENT_SELECT) {
        pokedexPanelData->col = newCol;
    }
}

static void StepRows(PokedexPanelData *pokedexPanelData, int direction)
{
    int newRow;
    const PokedexCursorData *pokedexCursorData;
    int stepSum = 0;

    GF_ASSERT(direction == -1 || direction == 1);

    do {
        stepSum += direction;
        newRow = pokedexPanelData->row + stepSum;

        if (newRow < 0 || newRow >= pokedexPanelData->numRows) {
            break;
        }

        pokedexCursorData = &pokedexPanelData->pokedexCursorData[CalcButtonIndex(pokedexPanelData, pokedexPanelData->col, newRow)];
    } while (pokedexCursorData->cursorRowMovementType == CURSOR_MOVEMENT_SKIP);

    if (newRow >= 0 && newRow < pokedexPanelData->numRows) {
        if (pokedexCursorData->cursorColMovementType == CURSOR_MOVEMENT_SELECT) { // should be cursorRowMovementType?
            pokedexPanelData->row = newRow;
        }
    }
}

static void WalkCols(PokedexPanelData *pokedexPanelData, int distance)
{
    int absDistance = MATH_ABS(distance);
    int direction = distance / absDistance;

    for (int step = 0; step < absDistance; step++) {
        StepCols(pokedexPanelData, direction);
    }
}

static void WalkRows(PokedexPanelData *pokedexPanelData, int distance)
{
    int absDistance = MATH_ABS(distance);
    int direction = distance / absDistance;

    for (int step = 0; step < absDistance; step++) {
        StepRows(pokedexPanelData, direction);
    }
}

static void inline SetCol(PokedexPanelData *pokedexPanelData, int col)
{
    GF_ASSERT(col >= 0 && col < pokedexPanelData->numCols);
    pokedexPanelData->col = col;
}

static void inline SetRow(PokedexPanelData *pokedexPanelData, int row)
{
    GF_ASSERT(row >= 0 && row < pokedexPanelData->numRows);
    pokedexPanelData->row = row;
}

static void JumpToButton(PokedexPanelData *pokedexPanelData, int button)
{
    int numButtons = pokedexPanelData->numCols * pokedexPanelData->numRows;

    for (int buttonIndex = 0; buttonIndex < numButtons; buttonIndex++) {
        if (pokedexPanelData->pokedexCursorData[buttonIndex].button == button) {
            pokedexPanelData->col = buttonIndex % pokedexPanelData->numCols;
            pokedexPanelData->row = buttonIndex / pokedexPanelData->numCols;
            break;
        }
    }
}

#ifndef POKEPLATINUM_UNK_0206A780_H
#define POKEPLATINUM_UNK_0206A780_H

#include "constants/heap.h"

#include "overlay005/struct_ov5_021D30A8.h"

#include "sprite_system.h"

enum ScrollPromptArrows {
    SCROLL_PROMPT_TOP_ARROW = 0,
    SCROLL_PROMPT_BOTTOM_ARROW,
    SCROLL_PROMPT_ARROW_COUNT,
};

typedef struct ScrollPrompts {
    UnkStruct_ov5_021D30A8 unk_00;
    ManagedSprite *arrowSprites[SCROLL_PROMPT_ARROW_COUNT];
} ScrollPrompts;

ScrollPrompts *ScrollPrompts_New(enum HeapId heapID);
void ScrollPrompts_Free(ScrollPrompts *prompts);
void ScrollPrompts_UpdateAnim(ScrollPrompts *prompts);
void ScrollPrompts_SetPosition(ScrollPrompts *prompts, s16 x, s16 topArrowY, s16 bottomArrowY);
void ScrollPrompts_SetDrawFlag(ScrollPrompts *prompts, u16 arrowIndex, BOOL draw);

#endif // POKEPLATINUM_UNK_0206A780_H

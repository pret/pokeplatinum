#ifndef POKEPLATINUM_KEYBOARD_H
#define POKEPLATINUM_KEYBOARD_H

#include "struct_decls/pc_boxes_decl.h"

#include "game_options.h"
#include "overlay_manager.h"
#include "strbuf.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int maxChars;
    int unk_10;
    int unk_14;
    Strbuf *textInputStr;
    u16 unk_1C[20];
    int unk_44;
    PCBoxes *pcBoxes;
    Options *options;
} KeyboardArgs;

extern const ApplicationManagerTemplate gKeyboardAppTemplate;

KeyboardArgs *KeyboardArgs_Init(enum HeapId heapID, int param1, int param2, int param3, Options *options);
void KeyboardArgs_Free(KeyboardArgs *param0);

#endif // POKEPLATINUM_KEYBOARD_H

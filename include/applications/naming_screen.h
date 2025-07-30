#ifndef POKEPLATINUM_KEYBOARD_H
#define POKEPLATINUM_KEYBOARD_H

#include "struct_decls/pc_boxes_decl.h"

#include "game_options.h"
#include "overlay_manager.h"
#include "strbuf.h"

enum NamingScreenType {
    NAMING_SCREEN_TYPE_PLAYER,
    NAMING_SCREEN_TYPE_POKEMON,
    NAMING_SCREEN_TYPE_BOX,
    NAMING_SCREEN_TYPE_RIVAL,
    NAMING_SCREEN_TYPE_UNK4,
    NAMING_SCREEN_TYPE_GROUP,
    NAMING_SCREEN_TYPE_UNK6,
    NAMING_SCREEN_TYPE_UNK7,
};

typedef struct {
    enum NamingScreenType type;
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
} NamingScreenArgs;

extern const ApplicationManagerTemplate gNamingScreenAppTemplate;

NamingScreenArgs *NamingScreenArgs_Init(
    enum HeapId heapID,
    enum NamingScreenType type,
    int param2,
    int param3,
    Options *options);
void NamingScreenArgs_Free(NamingScreenArgs *param0);

#endif // POKEPLATINUM_KEYBOARD_H

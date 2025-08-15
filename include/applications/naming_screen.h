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
    NAMING_SCREEN_TYPE_PAL_PAD,
};

typedef struct NamingScreenArgs {
    enum NamingScreenType type;
    int playerGenderOrMonSpecies;
    int monForm;
    int maxChars;
    int monGender;
    int noInput;
    Strbuf *textInputStr;
    charcode_t nameInputRaw[20];
    int battleMsgID;
    PCBoxes *pcBoxes;
    Options *options;
} NamingScreenArgs;

extern const ApplicationManagerTemplate gNamingScreenAppTemplate;

NamingScreenArgs *NamingScreenArgs_Init(
    enum HeapId heapID,
    enum NamingScreenType type,
    int playerGenderOrMonSpecies,
    int maxChars,
    Options *options);
void NamingScreenArgs_Free(NamingScreenArgs *args);

#endif // POKEPLATINUM_KEYBOARD_H

#ifndef POKEPLATINUM_BATTLE_SAVED_CURSOR_POSITION_H
#define POKEPLATINUM_BATTLE_SAVED_CURSOR_POSITION_H

typedef struct SavedCursorPosition {
    s8 actionMenuX;
    s8 actionMenuY;
    s8 moveMenuX;
    s8 moveMenuY;
    s8 targetSelectX;
    s8 targetSelectY;
    s8 targetingLayout;
    u8 padding[1];
} SavedCursorPosition;

#endif // POKEPLATINUM_BATTLE_SAVED_CURSOR_POSITION_H

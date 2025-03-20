#ifndef POKEPLATINUM_STRUCT_BOX_SETTINGS_H
#define POKEPLATINUM_STRUCT_BOX_SETTINGS_H

enum BoxMode {
    PC_MODE_DEPOSIT = 0,
    PC_MODE_WITHDRAW,
    PC_MODE_MOVE_MONS,
    PC_MODE_MOVE_ITEMS,
    PC_MODE_COMPARE
};

typedef struct {
    u8 boxMode;
    u8 isCursorFastMode;
    u16 monSpriteTransparencyMask;
} BoxSettings;

#endif // POKEPLATINUM_STRUCT_BOX_SETTINGS_H

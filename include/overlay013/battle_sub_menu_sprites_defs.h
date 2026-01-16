#ifndef POKEPLATINUM_BATTLE_SUB_MENU_SPRITES_DEFS_H
#define POKEPLATINUM_BATTLE_SUB_MENU_SPRITES_DEFS_H

typedef struct SpritePosition {
    int x;
    int y;
} SpritePosition;

typedef struct SpriteResourcesAndPriority {
    int charResID;
    int plttResID;
    int cellResID;
    int animResID;
    int priority;
} SpriteResourcesAndPriority;

#endif // POKEPLATINUM_BATTLE_SUB_MENU_SPRITES_DEFS_H

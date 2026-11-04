#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_DEFS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_DEFS_H

#include <nnsys.h>

#include "constants/moves.h"

#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "savedata.h"
#include "sprite.h"
#include "string_gf.h"
#include "text.h"

#define BOX_TEXT_COLOR_WALLPAPER_BOX_NAME TEXT_COLOR(2, 1, 0)
#define BOX_TEXT_COLOR_DIAL_BOX_NAME      TEXT_COLOR(1, 2, 0)
#define BOX_TEXT_COLOR_POPUP_BOX_NAME     TEXT_COLOR(2, 8, 7)
#define BOX_TEXT_COLOR_ITEM_DESCRIPTION   TEXT_COLOR(2, 1, 4)
#define BOX_TEXT_COLOR_MENU               TEXT_COLOR(11, 12, MENU_GRAPHICS_WINDOW_BG_COLOR)
#define BOX_TEXT_COLOR_PREVIEW_SPECIES    TEXT_COLOR(9, 6, 15)
#define BOX_TEXT_COLOR_PREVIEW_INFO       TEXT_COLOR(9, 6, 0)
#define BOX_TEXT_COLOR_PREVIEW_NICKNAME   TEXT_COLOR(1, 2, 15)
#define BOX_TEXT_COLOR_PREVIEW_MALE       TEXT_COLOR(7, 8, 15)
#define BOX_TEXT_COLOR_PREVIEW_FEMALE     TEXT_COLOR(3, 4, 15)
#define BOX_TEXT_COLOR_COMPARE            TEXT_COLOR(15, 14, 0)

#define PREVIEW_MON_UNDER_CURSOR    (1 << 0)
#define PREVIEW_MON_IN_CURSOR       (1 << 1)
#define PREVIEW_MON_FROM_SELECTION  (1 << 2)
#define PREVIEW_MON_UNDER_SELECTION (1 << 3)

#define PREVIEW_MON_HELD      (PREVIEW_MON_IN_CURSOR | PREVIEW_MON_FROM_SELECTION)
#define PREVIEW_MON_SELECTION (PREVIEW_MON_FROM_SELECTION | PREVIEW_MON_UNDER_SELECTION)

enum CursorLocation {
    CURSOR_IN_BOX = 0,
    CURSOR_IN_PARTY,
    CURSOR_ON_BOX_HEADER,
    CURSOR_ON_PARTY_BUTTON,
    CURSOR_ON_CLOSE_BUTTON,
};

typedef struct BoxCursor {
    void *mon;
    u8 cursorLocation;
    s8 boxCol;
    s8 boxRow;
    s8 posInBox;
    s8 posInParty;
    s8 prevCursorLocation;
    u8 isMonUnderCursor;
    u8 previewMonSource;
} BoxCursor;

typedef struct BoxCustomization {
    u8 boxID;
    u8 wallpaper;
    u8 padding_02[2];
    String *name;
} BoxCustomization;

typedef struct BoxMonSelection {
    BoxPokemon *boxMon;
    u8 selectionStartCol;
    u8 selectionStartRow;
    u8 selectionEndCol;
    u8 selectionEndRow;
    u8 selectedMonCount;
    u8 origSelectionTopLeftPos;
    u8 unused_0A;
    u8 isCursorMonFromParty;
    s8 selectedMonsOrigBoxPos[MAX_MONS_PER_BOX];
    u8 padding_2A[2];
} BoxMonSelection;

enum BoxMode {
    PC_MODE_DEPOSIT = 0,
    PC_MODE_WITHDRAW,
    PC_MODE_MOVE_MONS,
    PC_MODE_MOVE_ITEMS,
    PC_MODE_COMPARE,
};

typedef struct BoxSettings {
    u8 boxMode;
    u8 isCursorFastMode;
    u16 monSpriteTransparencyMask;
} BoxSettings;

enum DialID {
    DIALS_NONE = 0,
    DIALS_BOX_JUMP,
    DIALS_MARKINGS,
};

typedef struct BoxDialHelper {
    u8 selectedDial;
    u8 markingsButtonsScrollOffset;
    u8 dialOffset;
    u8 padding_03;
    s16 scrollDelta;
} BoxDialHelper;

typedef struct PCCompareMon {
    void *mon;
    u16 species;
    u8 isEgg;
    u8 form;
    u16 level;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 spAttack;
    u16 spDefense;
    u16 speed;
    u16 cool;
    u16 beauty;
    u16 cute;
    u16 smart;
    u16 tough;
    u16 moves[LEARNED_MOVES_MAX];
    String *monName;
    String *nature;
} PCCompareMon;

enum CompareMode {
    COMPARE_BATTLE_STATS = 0,
    COMPARE_CONTEST_STATS,
    COMPARE_MOVES,
    NUM_COMPARE_MODES,
};

#define NUM_COMPARE_SLOTS 2

typedef struct CompareModeHelper {
    u8 compareMonSlot;
    u8 compareMode;
    u8 compareSlotHasMon[NUM_COMPARE_SLOTS];
    BOOL isCompareButtonPressed;
    PCCompareMon compareMons[NUM_COMPARE_SLOTS];
} CompareModeHelper;

typedef struct PCMonPreview {
    void *mon;
    u16 species;
    u16 heldItem;
    u16 dexNum;
    u8 level;
    u8 markings;
    u8 type1;
    u8 type2;
    u8 gender;
    u8 isEgg;
    u8 padding_10[4];
    String *nickname;
    String *speciesName;
    String *heldItemName;
    String *nature;
    String *ability;
} PCMonPreview;

enum BoxMenuItem {
    BOX_MENU_NAVIGATION_NONE = -3,
    BOX_MENU_NAVIGATION_UP_DOWN,
    BOX_MENU_NAVIGATION_B,
    BOX_MENU_JUMP,
    BOX_MENU_WALLPAPER,
    BOX_MENU_NAME,
    BOX_MENU_HEADER_CANCEL,
    BOX_MENU_FIRST_WALLPAPER_PAGE,
    BOX_MENU_SCENERY_1 = BOX_MENU_FIRST_WALLPAPER_PAGE,
    BOX_MENU_SCENERY_2,
    BOX_MENU_SCENERY_3,
    BOX_MENU_ETCETERA,
    BOX_MENU_LAST_DEFAULT_WALLPAPER_PAGE = BOX_MENU_ETCETERA,
    BOX_MENU_FRIENDS_1,
    BOX_MENU_FRIENDS_2,
    BOX_MENU_LAST_WALLPAPER_PAGE = BOX_MENU_FRIENDS_2,
    BOX_MENU_FIRST_WALLPAPER,
    BOX_MENU_FOREST = BOX_MENU_FIRST_WALLPAPER,
    BOX_MENU_CITY,
    BOX_MENU_DESERT,
    BOX_MENU_SAVANNA,
    BOX_MENU_CRAG,
    BOX_MENU_VOLCANO,
    BOX_MENU_SNOW,
    BOX_MENU_CAVE,
    BOX_MENU_BEACH,
    BOX_MENU_SEAFLOOR,
    BOX_MENU_RIVER,
    BOX_MENU_SKY,
    BOX_MENU_POKECENTER,
    BOX_MENU_MACHINE,
    BOX_MENU_CHECKS,
    BOX_MENU_SIMPLE,
    BOX_MENU_FIRST_UNLOCKABLE_WALLPAPER,
    BOX_MENU_DISTORTION = BOX_MENU_FIRST_UNLOCKABLE_WALLPAPER,
    BOX_MENU_CONTEST,
    BOX_MENU_NOSTALGIC,
    BOX_MENU_CROAGUNK,
    BOX_MENU_TRIO,
    BOX_MENU_PIKAPIKA,
    BOX_MENU_LEGEND,
    BOX_MENU_TEAM_GALACTIC,
    BOX_MENU_LAST_WALLPAPER = BOX_MENU_TEAM_GALACTIC,
    BOX_MENU_MOVE,
    BOX_MENU_PLACE,
    BOX_MENU_SHIFT,
    BOX_MENU_SUMMARY,
    BOX_MENU_WITHDRAW,
    BOX_MENU_STORE,
    BOX_MENU_ITEM,
    BOX_MENU_MARK,
    BOX_MENU_RELEASE,
    BOX_MENU_CANCEL,
    BOX_MENU_CONFIRM,
    BOX_MENU_MARK_CANCEL,
    BOX_MENU_GIVE,
    BOX_MENU_TAKE,
    BOX_MENU_INFO,
    BOX_MENU_SWITCH,
    BOX_MENU_BAG,
    BOX_MENU_ITEMS_CANCEL,
    BOX_MENU_SET_ON_LEFT,
    BOX_MENU_SET_ON_RIGHT,
    BOX_MENU_YES,
    BOX_MENU_NO,
    BOX_MENU_FIRST_MARKING,
    BOX_MENU_CIRCLE = BOX_MENU_FIRST_MARKING,
    BOX_MENU_TRIANGLE,
    BOX_MENU_SQUARE,
    BOX_MENU_HEART,
    BOX_MENU_STAR,
    BOX_MENU_DIAMOND,
    BOX_MENU_LAST_MARKING = BOX_MENU_DIAMOND,
};

#define MAX_MENU_ITEMS          8
#define MAX_WALLPAPERS_PER_PAGE 4

typedef struct BoxMenu {
    enum BoxMenuItem menuItems[MAX_MENU_ITEMS];
    u8 selectedMenuItemIndex;
    u8 totalMenuItems;
    u8 markings;
    u8 unread_23;
} BoxMenu;

typedef struct PokemonStorageSession {
    SaveData *saveData;
    enum BoxMode boxMode;
    BOOL recordBoxUseInJournal;
} PokemonStorageSession;

typedef struct MonIcon {
    Sprite *sprite;
    NNSG2dImageProxy imageProxy;
    u32 spriteIndex;
    u16 plttIndex;
    u16 markings;
    u16 heldItem;
    u8 padding_32[2];
} MonIcon;

typedef struct BoxGraphics BoxGraphics;
typedef struct BoxItemIconGraphics BoxItemIconGraphics;

typedef struct BoxApplication {
    const PCBoxes *pcBoxes;
    const Party *party;
    BoxCursor cursor;
    BoxMonSelection selection;
    BoxCustomization customization;
    BoxSettings boxSettings;
    PCMonPreview pcMonPreview;
    BoxMenu boxMenu;
    u32 boxSelectionBoxID;
    BoxDialHelper dialHelper;
    u8 padding_A2[2];
    CompareModeHelper compareModeHelper;
    u32 boxMessageID;
    u16 depositBoxID;
    u16 cursorItem;
} BoxApplication;

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_DEFS_H

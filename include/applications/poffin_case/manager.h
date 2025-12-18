#ifndef POKEPLATINUM_APPLICATIONS_POFFIN_CASE_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_POFFIN_CASE_MANAGER_H

#include "constants/flavor.h"

#include "applications/poffin_case/main.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "overlay_manager.h"
#include "poffin_sprite.h"
#include "poffin_types.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_template.h"

#define POFFIN_LIST_SENTINEL 0xFF

#define NUM_LIST_SPRITES       3
#define LIST_SPRITE_SELECT_BOX 0
#define LIST_SPRITE_UP_ARROW   1
#define LIST_SPRITE_DOWN_ARROW 2

#define NUM_WINDOWS 13

typedef struct PoffinManagerMessages {
    StringTemplate *template;
    String *string;
    String *closeStr;
    String *listItemStr;
    String *smoothStr;
    String *discardStr;
    String *thrownOutStr;
    String *headerStr;
    String *flavorStrs[FLAVOR_MAX + 1];
    String *flavorDescs[FLAVOR_MAX];
    u8 textDelay;
    u8 unused[3];
} PoffinManagerMessages;

typedef struct PoffinManager {
    enum HeapID heapID;
    int lifecycle;
    int loadState;
    int dummy;
    BOOL givePoffin;
    u16 buttonHeld;
    u16 dummy2;
    u16 state;
    u8 selectedPoffin;
    u8 flavorFilter;
    u8 poffinCount;
    u8 lastPoffin;
    u8 firstPoffin;
    u8 printerID;
    PoffinCaseAppData *data;
    BgConfig *bgConfig;
    PoffinTypeList *poffinTypes;
    MessageLoader *msgLoader;
    PoffinManagerMessages messages;
    u16 listPos;
    u16 cursorPos;
    ListMenuTemplate menuTemplate;
    ListMenuTemplate actionMenuTemplate;
    ListMenu *poffinMenu;
    ListMenu *actionMenu;
    StringList *poffinList;
    StringList *actionList;
    Menu *yesNoMenu;
    u32 unused[4];
    Window windows[NUM_WINDOWS];
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    Sprite *listSprites[NUM_LIST_SPRITES];
    Sprite *flavorSprites[FLAVOR_MAX];
    Sprite *buttonSprites[FLAVOR_MAX + 1];
    PoffinSpriteManager *poffinSpriteMan;
    PoffinSprite *poffinSprite;
} PoffinManager;

BOOL PoffinManager_Init(ApplicationManager *appMan, int *unused);
BOOL PoffinManager_Main(ApplicationManager *appMan, int *unused);
BOOL PoffinManager_Exit(ApplicationManager *appMan, int *unused);

#endif // POKEPLATINUM_APPLICATIONS_POFFIN_CASE_MANAGER_H

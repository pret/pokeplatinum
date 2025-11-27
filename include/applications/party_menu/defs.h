#ifndef POKEPLATINUM_PARTY_MENU_DEFS_H
#define POKEPLATINUM_PARTY_MENU_DEFS_H

#include "constants/graphics.h"
#include "constants/pokemon.h"

#include "struct_defs/funcptr_0207F248_sub1.h"
#include "struct_defs/mail.h"
#include "struct_defs/struct_0202440C.h"

#include "field/field_system_decl.h"
#include "functypes/funcptr_0207F248.h"
#include "overlay118/struct_ov118_021D0FDC_decl.h"

#include "bag.h"
#include "battle_regulation.h"
#include "bg_window.h"
#include "field_move_tasks.h"
#include "font_special_chars.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "grid_menu_cursor_position.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokedex_heightweight.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"

#define NUM_MENU_PALETTES 8
#define NUM_MENU_COLORS   (PALETTE_SIZE * NUM_MENU_PALETTES)

#define PARTY_MENU_SHOW_CONFIRM (1 << 0)
#define PARTY_MENU_SHOW_CANCEL  (1 << 1)
#define PARTY_MENU_SHOW_ALL     (PARTY_MENU_SHOW_CONFIRM | PARTY_MENU_SHOW_CANCEL)

enum PartyMenuMode {
    PARTY_MENU_MODE_FIELD = 0,
    PARTY_MENU_MODE_BATTLE,
    PARTY_MENU_MODE_SELECT_CONFIRM,
    PARTY_MENU_MODE_SELECT_NO_PROMPT,
    PARTY_MENU_MODE_UNK_04,
    PARTY_MENU_MODE_USE_ITEM,
    PARTY_MENU_MODE_TEACH_MOVE,
    PARTY_MENU_MODE_TEACH_MOVE_DONE,
    PARTY_MENU_MODE_LEVEL_MOVE_DONE,
    PARTY_MENU_MODE_GIVE_ITEM,
    PARTY_MENU_MODE_GIVE_ITEM_DONE,
    PARTY_MENU_MODE_GIVE_MAIL,
    PARTY_MENU_MODE_GIVE_MAIL_DONE,
    PARTY_MENU_MODE_CONTEST,
    PARTY_MENU_MODE_MAILBOX,
    PARTY_MENU_MODE_BALL_SEAL,
    PARTY_MENU_MODE_USE_EVO_ITEM,
    PARTY_MENU_MODE_BATTLE_TOWER,
    PARTY_MENU_MODE_DAYCARE,
    PARTY_MENU_MODE_NPC_TRADE,
    PARTY_MENU_MODE_FEED_POFFIN,
    PARTY_MENU_MODE_SELECT_EGG,
    PARTY_MENU_MODE_BATTLE_HALL,
    PARTY_MENU_MODE_BATTLE_CASTLE,
};

enum PartyMenuType {
    PARTY_MENU_TYPE_BASIC = 0,
    PARTY_MENU_TYPE_DOUBLE_BATTLE,
    PARTY_MENU_TYPE_MULTI_BATTLE,
};

#define PARTY_MENU_MODE_HIDE_CANCEL_FLAG (1 << 7)

enum PartyMenuWindow {
    PARTY_MENU_WIN_NAME_MEMB0 = 0,
    PARTY_MENU_WIN_LEVEL_MEMB0,
    PARTY_MENU_WIN_HP_MEMB0,
    PARTY_MENU_WIN_HEALTHBAR_MEMB0,
    PARTY_MENU_WIN_COMMENT_MEMB0,
    PARTY_MENU_WIN_NAME_MEMB1,
    PARTY_MENU_WIN_LEVEL_MEMB1,
    PARTY_MENU_WIN_HP_MEMB1,
    PARTY_MENU_WIN_HEALTHBAR_MEMB1,
    PARTY_MENU_WIN_COMMENT_MEMB1,
    PARTY_MENU_WIN_NAME_MEMB2,
    PARTY_MENU_WIN_LEVEL_MEMB2,
    PARTY_MENU_WIN_HP_MEMB2,
    PARTY_MENU_WIN_HEALTHBAR_MEMB2,
    PARTY_MENU_WIN_COMMENT_MEMB2,
    PARTY_MENU_WIN_NAME_MEMB3,
    PARTY_MENU_WIN_LEVEL_MEMB3,
    PARTY_MENU_WIN_HP_MEMB3,
    PARTY_MENU_WIN_HEALTHBAR_MEMB3,
    PARTY_MENU_WIN_COMMENT_MEMB3,
    PARTY_MENU_WIN_NAME_MEMB4,
    PARTY_MENU_WIN_LEVEL_MEMB4,
    PARTY_MENU_WIN_HP_MEMB4,
    PARTY_MENU_WIN_HEALTHBAR_MEMB4,
    PARTY_MENU_WIN_COMMENT_MEMB4,
    PARTY_MENU_WIN_NAME_MEMB5,
    PARTY_MENU_WIN_LEVEL_MEMB5,
    PARTY_MENU_WIN_HP_MEMB5,
    PARTY_MENU_WIN_HEALTHBAR_MEMB5,
    PARTY_MENU_WIN_COMMENT_MEMB5,
    PARTY_MENU_WIN_CONFIRM_BUTTON,
    PARTY_MENU_WIN_CANCEL_BUTTON,
    PARTY_MENU_WIN_SHORT_MESSAGE,
    PARTY_MENU_WIN_MEDIUM_MESSAGE,
    PARTY_MENU_WIN_LONG_MESSAGE,
    PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL,
    PARTY_MENU_WIN_TEACH_MOVE,

    NUM_PARTY_MENU_WINS,
};

#define PARTY_MENU_WIN_NUM_PER_MEMBER (PARTY_MENU_WIN_COMMENT_MEMB0 + 1)

enum PartyMenuString {
    PARTY_MENU_STR_SWITCH = 0,
    PARTY_MENU_STR_SUMMARY,
    PARTY_MENU_STR_ITEM,
    PARTY_MENU_STR_ITEM_GIVE,
    PARTY_MENU_STR_ITEM_TAKE,
    PARTY_MENU_STR_MAIL,
    PARTY_MENU_STR_MAIL_READ,
    PARTY_MENU_STR_MAIL_TAKE,
    PARTY_MENU_STR_MAIL_STORE,
    PARTY_MENU_STR_CANCEL,
    PARTY_MENU_STR_SEPARATOR,
    PARTY_MENU_STR_ENTER,
    PARTY_MENU_STR_NO_ENTRY,
    PARTY_MENU_STR_ENTER_2,
    PARTY_MENU_STR_SET,
    PARTY_MENU_STR_CONFIRM,
    PARTY_MENU_STR_MOVE0,
    PARTY_MENU_STR_MOVE1,
    PARTY_MENU_STR_MOVE2,
    PARTY_MENU_STR_MOVE3,

    NUM_PARTY_MENU_STRS,
};

enum PartyMenuSprite {
    PARTY_MENU_SPRITE_POKE_BALL_MEMB0 = 0,
    PARTY_MENU_SPRITE_POKE_BALL_MEMB1,
    PARTY_MENU_SPRITE_POKE_BALL_MEMB2,
    PARTY_MENU_SPRITE_POKE_BALL_MEMB3,
    PARTY_MENU_SPRITE_POKE_BALL_MEMB4,
    PARTY_MENU_SPRITE_POKE_BALL_MEMB5,
    PARTY_MENU_SPRITE_CURSOR_NORMAL,
    PARTY_MENU_SPRITE_CURSOR_SWITCH,
    PARTY_MENU_SPRITE_CONFIRM_BUTTON,
    PARTY_MENU_SPRITE_CANCEL_BUTTON,
    PARTY_MENU_SPRITE_STATUS_ICON_MEMB0,
    PARTY_MENU_SPRITE_STATUS_ICON_MEMB1,
    PARTY_MENU_SPRITE_STATUS_ICON_MEMB2,
    PARTY_MENU_SPRITE_STATUS_ICON_MEMB3,
    PARTY_MENU_SPRITE_STATUS_ICON_MEMB4,
    PARTY_MENU_SPRITE_STATUS_ICON_MEMB5,
    PARTY_MENU_SPRITE_HELD_ITEM_MEMB0,
    PARTY_MENU_SPRITE_HELD_ITEM_MEMB1,
    PARTY_MENU_SPRITE_HELD_ITEM_MEMB2,
    PARTY_MENU_SPRITE_HELD_ITEM_MEMB3,
    PARTY_MENU_SPRITE_HELD_ITEM_MEMB4,
    PARTY_MENU_SPRITE_HELD_ITEM_MEMB5,
    PARTY_MENU_SPRITE_BALL_SEAL_MEMB0,
    PARTY_MENU_SPRITE_BALL_SEAL_MEMB1,
    PARTY_MENU_SPRITE_BALL_SEAL_MEMB2,
    PARTY_MENU_SPRITE_BALL_SEAL_MEMB3,
    PARTY_MENU_SPRITE_BALL_SEAL_MEMB4,
    PARTY_MENU_SPRITE_BALL_SEAL_MEMB5,
    PARTY_MENU_SPRITE_TOUCH_BUTTON_EFFECT,

    NUM_PARTY_MENU_SPRITES,
};

typedef struct PartyMenu {
    Party *party;
    Bag *bag;
    Mailbox *mailbox;
    Options *options;
    TVBroadcast *broadcast;
    BattleRegulation *battleRegulation;
    FieldMoveContext *fieldMoveContext;
    FieldSystem *fieldSystem;
    u8 mode;
    u8 type;
    u8 selectedMonSlot;
    u8 menuSelectionResult;
    u16 usedItemID;
    u16 learnedMove;
    u8 selectedMoveSlot;
    u8 unk_29;
    u8 contestType;
    u8 contestRank;
    u8 selectionOrder[MAX_PARTY_SIZE]; // 0 is unselected, 1-6 are 1 + the selection order for the party slot
    u8 minSelectionSlots : 4;
    u8 maxSelectionSlots : 4;
    u8 reqLevel;
    int unk_34;
    u16 evoTargetSpecies;
    u8 padding_3A[2];
    int evoType;
} PartyMenu;

typedef struct PartyMenuMember {
    Strbuf *name;
    u16 species;
    u16 curHP;
    u16 maxHP;
    u16 level;
    u16 heldItem;
    u16 statusIcon : 12;
    u16 hideGenderMarker : 1;
    u16 gender : 2;
    u16 isContestEligible : 1;
    u8 isEgg;
    u8 form;
    u16 ballSeal;
    s8 panelXPos;
    s8 panelYPos;
    s16 spriteXDelta;
    s16 spriteYDelta;
    s16 statusXPos;
    s16 statusYPos;
    s16 itemXPos;
    s16 itemYPos;
    Sprite *sprite;
    u8 unk_28;
    u8 isPresent;
} PartyMenuMember;

#define PARTY_MENU_MEMBER_PANEL_SIZE_TILES 96

typedef struct PartyOrderSwitchData {
    u16 unk_00[2][PARTY_MENU_MEMBER_PANEL_SIZE_TILES];
    u16 unk_180[2][PARTY_MENU_MEMBER_PANEL_SIZE_TILES];
    u8 slots[2];
    u8 unk_302[2];
    u8 inProgress;
    u8 unk_305;
    u8 unk_306;
} PartyOrderSwitchData;

typedef struct PartyMenuApplication {
    BgConfig *bgConfig;
    Window windows[NUM_PARTY_MENU_WINS];
    Window menuWindows[1]; // There is only ever 1 here, but it is never unrolled by the compiler
    u16 leadMemberPanel[PARTY_MENU_MEMBER_PANEL_SIZE_TILES];
    u16 backMemberPanel[PARTY_MENU_MEMBER_PANEL_SIZE_TILES];
    u16 noneMemberPanel[PARTY_MENU_MEMBER_PANEL_SIZE_TILES];
    u16 colors[NUM_MENU_COLORS];
    PartyMenu *partyMenu;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    Sprite *sprites[NUM_PARTY_MENU_SPRITES];
    ManagedSprite *sprites_unused[NUM_PARTY_MENU_SPRITES];
    FontSpecialCharsContext *specialChars;
    MessageLoader *messageLoader;
    StringTemplate *template;
    Strbuf *tmpString;
    Strbuf *tmpFormat;
    Strbuf *menuStrings[NUM_PARTY_MENU_STRS];
    StringList *contextMenuChoices;
    Menu *contextMenu;
    PartyMenuMember partyMembers[MAX_PARTY_SIZE];
    const GridMenuCursorPosition *cursorPosTable;
    PartyOrderSwitchData orderSwitch;
    GenericFunctionPtr unk_B00;
    FunctionPtrPair unk_B04;
    u8 unk_B0C;
    u8 unk_B0D;
    u8 unk_B0E;
    u8 switchTargetSlot : 6;
    u8 inSwitchMode : 1;
    u8 hideCancel : 1;
    u8 textPrinterID;
    u8 currPartySlot;
    u8 prevPartySlot;
    u8 unk_B13;
    u16 monStats[6];
    HeightWeightData *heightWeight;
    OverlayMetadata *unk_B24;
    G3DPipelineBuffers *unk_B28;
} PartyMenuApplication;

#endif // POKEPLATINUM_PARTY_MENU_DEFS_H

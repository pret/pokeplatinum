#ifndef POKEPLATINUM_PARTY_MENU_DEFS_H
#define POKEPLATINUM_PARTY_MENU_DEFS_H

#include "constants/graphics.h"
#include "constants/pokemon.h"

#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/funcptr_0207F248_sub1.h"
#include "struct_defs/mail.h"
#include "struct_defs/struct_0202440C.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_02083D1C.h"

#include "field/field_system_decl.h"
#include "functypes/funcptr_0207F248.h"
#include "overlay118/struct_ov118_021D0FDC_decl.h"

#include "bag.h"
#include "bg_window.h"
#include "field_move_tasks.h"
#include "font_special_chars.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "grid_menu_cursor_position.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"

#define NUM_MENU_STRINGS  20
#define NUM_MENU_PALETTES 8
#define NUM_MENU_COLORS   (PALETTE_SIZE * NUM_MENU_PALETTES)
#define NUM_MENU_SPRITES  29

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

#define PARTY_MENU_MODE_HIDE_CANCEL_FLAG (1 << 7)

enum PartyMenuWindow {
    PARTY_MENU_WIN_NAME_MEMB0 = 0,
    PARTY_MENU_WIN_LEVEL_MEMB0,
    PARTY_MENU_WIN_HP_MEMB0,
    PARTY_MENU_WIN_HP_BAR_MEMB0,
    PARTY_MENU_WIN_COMMENT_MEMB0,
    PARTY_MENU_WIN_NAME_MEMB1,
    PARTY_MENU_WIN_LEVEL_MEMB1,
    PARTY_MENU_WIN_HP_MEMB1,
    PARTY_MENU_WIN_HP_BAR_MEMB1,
    PARTY_MENU_WIN_COMMENT_MEMB1,
    PARTY_MENU_WIN_NAME_MEMB2,
    PARTY_MENU_WIN_LEVEL_MEMB2,
    PARTY_MENU_WIN_HP_MEMB2,
    PARTY_MENU_WIN_HP_BAR_MEMB2,
    PARTY_MENU_WIN_COMMENT_MEMB2,
    PARTY_MENU_WIN_NAME_MEMB3,
    PARTY_MENU_WIN_LEVEL_MEMB3,
    PARTY_MENU_WIN_HP_MEMB3,
    PARTY_MENU_WIN_HP_BAR_MEMB3,
    PARTY_MENU_WIN_COMMENT_MEMB3,
    PARTY_MENU_WIN_NAME_MEMB4,
    PARTY_MENU_WIN_LEVEL_MEMB4,
    PARTY_MENU_WIN_HP_MEMB4,
    PARTY_MENU_WIN_HP_BAR_MEMB4,
    PARTY_MENU_WIN_COMMENT_MEMB4,
    PARTY_MENU_WIN_NAME_MEMB5,
    PARTY_MENU_WIN_LEVEL_MEMB5,
    PARTY_MENU_WIN_HP_MEMB5,
    PARTY_MENU_WIN_HP_BAR_MEMB5,
    PARTY_MENU_WIN_COMMENT_MEMB5,
    PARTY_MENU_WIN_UNK_30,
    PARTY_MENU_WIN_UNK_31,
    PARTY_MENU_WIN_UNK_32,
    PARTY_MENU_WIN_UNK_33,
    PARTY_MENU_WIN_UNK_34,
    PARTY_MENU_WIN_UNK_35,
    PARTY_MENU_WIN_UNK_36,

    NUM_PARTY_MENU_WINS,
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
    u8 unk_21;
    u8 selectedMonSlot;
    u8 menuSelectionResult;
    u16 usedItemID;
    u16 learnedMove;
    u8 selectedMoveSlot;
    u8 unk_29; // These three fields (unk_29, unk_2A, unk_2B) are used exactly once in the code (sub_0203D578) which is itself only used once.
    u8 unk_2A; // sub_0203D578 is used by ScrCmd_194 which is contest related so these fields are likely contest related too.
    u8 unk_2B;
    u8 unk_2C[6];
    u8 unk_32_0 : 4;
    u8 unk_32_4 : 4;
    u8 unk_33;
    int unk_34;
    u16 evoTargetSpecies;
    u8 padding_3A[2];
    int evoType;
} PartyMenu;

typedef struct PartyMenuMember {
    Strbuf *name;
    u16 unk_04;
    u16 curHP;
    u16 maxHP;
    u16 level;
    u16 unk_0C;
    u16 unk_0E_0 : 12;
    u16 unk_0E_12 : 1;
    u16 unk_0E_13 : 2;
    u16 unk_0E_15 : 1;
    u8 unk_10;
    u8 unk_11;
    u16 unk_12;
    s8 unk_14;
    s8 unk_15;
    s16 spriteXDelta;
    s16 spriteYDelta;
    s16 spriteXPos;
    s16 spriteYPos;
    s16 unk_1E;
    s16 unk_20;
    Sprite *unk_24;
    u8 unk_28;
    u8 unk_29;
} PartyMenuMember;

typedef struct PartyMenuApplication {
    BgConfig *bgConfig;
    Window windows[NUM_PARTY_MENU_WINS];
    Window unk_254[1];
    u16 unk_264[96];
    u16 unk_324[96];
    u16 unk_3E4[96];
    u16 colors[NUM_MENU_COLORS];
    PartyMenu *partyMenu;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    Sprite *sprites[NUM_MENU_SPRITES];
    ManagedSprite *sprites_unused[NUM_MENU_SPRITES];
    FontSpecialCharsContext *specialChars;
    MessageLoader *messageLoader;
    StringTemplate *template;
    Strbuf *tmpString;
    Strbuf *tmpFormat;
    Strbuf *menuStrings[NUM_MENU_STRINGS];
    StringList *unk_6FC;
    Menu *unk_700;
    PartyMenuMember partyMembers[MAX_PARTY_SIZE];
    const GridMenuCursorPosition *cursorPosTable;
    DualArrayShortData unk_7F8;
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

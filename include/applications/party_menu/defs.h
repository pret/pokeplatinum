#ifndef POKEPLATINUM_PARTY_MENU_DEFS_H
#define POKEPLATINUM_PARTY_MENU_DEFS_H

#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/funcptr_0207F248_sub1.h"
#include "struct_defs/mail.h"
#include "struct_defs/struct_0202440C.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_020831B4.h"
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

typedef struct PartyManagementData {
    Party *party;
    Bag *bag;
    Mailbox *mailbox;
    Options *options;
    TVBroadcast *broadcast;
    BattleRegulation *battleRegulation;
    FieldMoveContext *fieldMoveContext;
    FieldSystem *fieldSystem;
    u8 unk_20;
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
} PartyManagementData;

typedef struct GameWindowLayout {
    BgConfig *unk_00;
    Window unk_04[37];
    Window unk_254[1];
    u16 unk_264[96];
    u16 unk_324[96];
    u16 unk_3E4[96];
    u16 unk_4A4[128];
    PartyManagementData *partyManagementData;
    SpriteSystem *unk_5A8;
    SpriteManager *unk_5AC;
    Sprite *unk_5B0[29];
    ManagedSprite *unk_624[29];
    FontSpecialCharsContext *unk_698;
    MessageLoader *messageLoader;
    StringTemplate *template;
    Strbuf *unk_6A4;
    Strbuf *unk_6A8;
    Strbuf *unk_6AC[20];
    StringList *unk_6FC;
    Menu *unk_700;
    StrBufWrapper unk_704[6];
    const GridMenuCursorPosition *unk_7F4;
    DualArrayShortData unk_7F8;
    GenericFunctionPtr unk_B00;
    FunctionPtrPair unk_B04;
    u8 unk_B0C;
    u8 unk_B0D;
    u8 unk_B0E;
    u8 unk_B0F_0 : 6;
    u8 unk_B0F_6 : 1;
    u8 unk_B0F_7 : 1;
    u8 textPrinterID;
    u8 partySlot;
    u8 unk_B12;
    u8 unk_B13;
    u16 monStats[6];
    HeightWeightData *unk_B20;
    OverlayMetadata *unk_B24;
    G3DPipelineBuffers *unk_B28;
} GameWindowLayout;

#endif // POKEPLATINUM_PARTY_MENU_DEFS_H

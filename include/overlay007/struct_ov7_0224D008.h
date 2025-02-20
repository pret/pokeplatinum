#ifndef POKEPLATINUM_STRUCT_OV7_0224D008_H
#define POKEPLATINUM_STRUCT_OV7_0224D008_H

#include "struct_decls/struct_0200C440_decl.h"

#include "overlay005/struct_ov5_021D30A8.h"

#include "bg_window.h"
#include "camera.h"
#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "savedata.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "trainer_info.h"
#include "vars_flags.h"

typedef struct {
    BgConfig *bgConfig;
    void *unk_04;
    Window windows[SHOP_WINDOW_MAX + 1]; // beyond SHOP_WINDOW_MAX index here is unused
    ListMenu *listMenu;
    StringList *itemsList;
    Menu *choiceMenu; // used both for the buy confirmation and the field options
    StringList *optionsList;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    Camera *camera;
    UnkStruct_ov5_021D30A8 unk_94;
    Sprite *sprites[SHOP_SPRITE_MAX];
    u16 spriteDrawFlags[2];
    TrainerInfo *trainerInfo;
    void *destInventory;
    Options *options;
    JournalEntry *journalEntry;
    GameRecords *records;
    SaveData *saveData;
    VarsFlags *varsFlags;
    BOOL incDeptStoreBuyCount;
    u16 *itemsPtr;
    u8 itemsCount;
    u8 unused[2];
    u8 state;
    Strbuf *strbuf;
    u8 bgPriorities[4];
    int engineALayers;
    u8 fieldMsgPrinterId;
    u8 cameraPosCurr;
    u8 cameraPosDest;
    u8 itemPurchaseCount;
    u8 itemSoldCount;
    u8 martType;
    u16 itemId;
    s16 itemAmount;
    u16 itemAmountMax;
    u32 itemPrice;
    UnkStruct_0200C440 *unk_2B4;
} ShopMenu;

#endif // POKEPLATINUM_STRUCT_OV7_0224D008_H

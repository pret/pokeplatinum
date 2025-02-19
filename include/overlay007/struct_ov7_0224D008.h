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
    Window windows[SHOP_WINDOW_MAX];
    Window unused;
    ListMenu *menu;
    StringList *itemsList;
    Menu *yesNoChoice;
    StringList *optionsList;
    MessageLoader *unk_88;
    StringTemplate *unk_8C;
    Camera *camera;
    UnkStruct_ov5_021D30A8 unk_94;
    Sprite *unk_25C[4];
    u16 unk_26C[2];
    TrainerInfo *trainerInfo;
    void *inventory;
    Options *options;
    JournalEntry *journalEntry;
    GameRecords *records;
    SaveData *saveData;
    VarsFlags *varsFlags;
    BOOL incDeptStoreBuyCount;
    u16 *unk_290;
    u8 itemsCount;
    u8 unk_295;
    u8 unk_296;
    u8 state;
    Strbuf *strbuf;
    u8 unk_29C[4];
    int unk_2A0;
    u8 unk_2A4;
    u8 unk_2A5;
    u8 unk_2A6;
    u8 unk_2A7;
    u8 unk_2A8;
    u8 martType;
    u16 unk_2AA;
    s16 unk_2AC;
    u16 unk_2AE;
    u32 unk_2B0;
    UnkStruct_0200C440 *unk_2B4;
} ShopMenu;

#endif // POKEPLATINUM_STRUCT_OV7_0224D008_H

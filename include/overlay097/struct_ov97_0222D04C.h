#ifndef POKEPLATINUM_STRUCT_OV97_0222D04C_H
#define POKEPLATINUM_STRUCT_OV97_0222D04C_H

#include <dwc.h>

#include "overlay097/struct_ov97_0223829C.h"

#include "bg_window.h"
#include "game_options.h"
#include "list_menu.h"
#include "message.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"

typedef struct {
    BgConfig *unk_00;
    SaveData *saveData;
    Options *unk_08;
    StringTemplate *unk_0C;
    MessageLoader *unk_10;
    Strbuf *unk_14;
    Window unk_18;
    Window unk_28[3];
    Window unk_58;
    int unk_68;
    int unk_6C;
    int unk_70;
    int unk_74;
    ListMenu *unk_78;
    StringList *unk_7C;
    int unk_80;
    int unk_84;
    int unk_88;
    UnkStruct_ov97_0223829C unk_8C;
    int unk_434;
    int unk_438;
    int unk_43C;
    int unk_440;
    SpriteList *unk_444;
    G2dRenderer unk_448;
    SpriteResourceCollection *unk_5D4[6];
    SpriteResource *unk_5EC[6];
    SpriteResourcesHeader unk_604;
    Sprite *unk_628;
    int unk_62C;
    int unk_630;
    int unk_634;
    u8 unk_638[4096];
    int unk_1638;
    int *unk_163C;
    int unk_1640;
    int unk_1644;
    u8 *unk_1648;
    DWCInetControl unk_164C;
    BOOL unk_16AC;
    int unk_16B0;
    int unk_16B4;
    char unk_16B8[4096];
    int unk_26B8;
    u32 unk_26BC;
    u32 unk_26C0;
    u32 unk_26C4;
    BOOL unk_26C8;
    int unk_26CC;
    int unk_26D0;
    int unk_26D4;
    DWCErrorType unk_26D8;

    // clang-format off
    BOOL (* unk_26DC)(void);
    // clang-format on

    Window unk_26E0;
    WonderCard unk_26F0;
    void (*unk_2A48)(void *);
    int unk_2A4C;
    void *unk_2A50;
    int unk_2A54;
} UnkStruct_ov97_0222D04C;

#endif // POKEPLATINUM_STRUCT_OV97_0222D04C_H

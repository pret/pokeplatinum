#ifndef POKEPLATINUM_STRUCT_OV96_0223BF40_T_H
#define POKEPLATINUM_STRUCT_OV96_0223BF40_T_H

#include <dwc.h>
#include <nnsys.h>

#include "struct_defs/struct_0206BC70.h"

#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay096/struct_ov96_0223B450.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include "bg_window.h"
#include "menu.h"
#include "message.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"

struct UnkStruct_ov96_0223BF40_t {
    UnkStruct_0206BC70 *unk_00;
    BgConfig *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    void *unk_24;
    NNSFndHeapHandle unk_28;
    DWCInetControl unk_2C;
    int unk_8C;
    int unk_90;
    int unk_94;
    int unk_98;
    UnkStruct_ov96_0223B450 unk_9C;
    UnkStruct_ov96_0223B450_sub1 unk_AD4;
    u16 unk_BB8;
    u16 unk_BBA;
    u16 unk_BBC;
    u16 unk_BBE;
    BoxPokemon *unk_BC0;
    int unk_BC4;
    int unk_BC8;
    StringTemplate *unk_BCC;
    MessageLoader *unk_BD0;
    MessageLoader *unk_BD4;
    MessageLoader *unk_BD8;
    Strbuf *unk_BDC;
    Strbuf *unk_BE0;
    Strbuf *unk_BE4;
    Strbuf *unk_BE8;
    Strbuf *unk_BEC;
    int unk_BF0;
    SpriteList *unk_BF4;
    G2dRenderer unk_BF8;
    SpriteResourceCollection *unk_D84[4];
    SpriteResource *unk_D94[3][4];
    SpriteResourcesHeader unk_DC4;
    SpriteResourcesHeader unk_DE8;
    SpriteResourcesHeader unk_E0C;
    Sprite *unk_E30[2];
    Window unk_E38;
    Window unk_E48;
    Window unk_E58;
    Window unk_E68;
    Window unk_E78;
    Window unk_E88[3];
    Window unk_EB8[11];
    Menu *unk_F68;
    void *unk_F6C;
    int unk_F70;
    int unk_F74;
    int unk_F78;
    int unk_F7C;
    int unk_F80;
    WorldExchangeTrainer unk_F84;
    WorldExchangeTrainerError unk_FE8;
    s16 unk_FF0;
    s16 unk_FF2;
    int unk_FF4;
    UnkStruct_ov61_0222C3B0 unk_FF8;
};

#endif // POKEPLATINUM_STRUCT_OV96_0223BF40_T_H

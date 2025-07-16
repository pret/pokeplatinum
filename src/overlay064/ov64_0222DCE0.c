#include "overlay064/ov64_0222DCE0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/savedata/vars_flags.h"
#include "constants/graphics.h"

#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02089438.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay063/ov63_0222AE60.h"
#include "overlay063/struct_ov63_0222AE60_decl.h"
#include "overlay063/struct_ov63_0222BB38_decl.h"
#include "overlay064/struct_ov64_022302EC.h"

#include "ascii_util.h"
#include "bag.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "render_oam.h"
#include "render_text.h"
#include "render_view.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "system_flags.h"
#include "text.h"
#include "trainer_info.h"
#include "sound_playback.h"
#include "screen_fade.h"
#include "unk_020131EC.h"
#include "unk_0202ACE0.h"
#include "unk_0203061C.h"
#include "unk_0203909C.h"
#include "unk_0205C980.h"
#include "unk_0208694C.h"
#include "unk_020890F4.h"
#include "vars_flags.h"
#include "vram_transfer.h"

#include "constdata/const_020F2DAC.h"
#include "constdata/const_020F2DBC.h"

FS_EXTERN_OVERLAY(overlay63);

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov64_022322E4;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov64_0223221C;

typedef struct {
    void *unk_00[2];
    NNSG2dScreenData *unk_08[2];
} UnkStruct_ov64_022300E4;

typedef struct {
    Strbuf *unk_00;
    Strbuf *unk_04;
} UnkStruct_ov64_0222E060_sub1;

typedef struct {
    const u16 *unk_00;
    BOOL unk_04;
} UnkStruct_ov64_0222E060_sub2;

typedef struct {
    u32 unk_00;
    u8 unk_04[32];
} UnkStruct_ov64_022301B4;

typedef struct {
    SaveData *saveData;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    s8 unk_07;
    UnkStruct_ov64_022301B4 unk_08;
    UnkStruct_ov64_0222E060_sub1 unk_2C;
    UnkStruct_ov64_0222E060_sub2 unk_34;
} UnkStruct_ov64_0222E060;

typedef struct {
    BgConfig *unk_00;
    SpriteList *unk_04;
    NNSG2dRenderSurface unk_08;
    G2dRenderer unk_78;
    SpriteResourceCollection *unk_204[4];
    StringTemplate *unk_214;
    MessageLoader *unk_218;
    NARC *unk_21C;
    Window unk_220;
    Strbuf *unk_230;
    Strbuf *unk_234;
    u32 unk_238;
    SpriteResourcesHeader unk_23C;
    SpriteResource *unk_260[4];
    Sprite *unk_270[2];
    UnkStruct_ov64_022300E4 unk_278;
} UnkStruct_ov64_0222E21C;

typedef struct {
    u32 unk_00;
    Window unk_04;
    void *unk_14;
    NNSG2dScreenData *unk_18;
    Window unk_1C;
    Menu *unk_2C;
    u32 unk_30;
    u32 unk_34;
    Strbuf *unk_38;
} UnkStruct_ov64_0222F038;

typedef struct {
    UnkStruct_ov64_0223221C unk_00;
    Window unk_08;
    UnkStruct_ov63_0222BB38 *unk_18[8];
} UnkStruct_ov64_02230074;

typedef struct {
    UnkStruct_ov64_0223221C unk_00;
    u32 unk_08;
} UnkStruct_ov64_02232324;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    UnkStruct_ov64_02230074 unk_08[3];
    s16 unk_AA;
    u16 unk_AC;
    UnkStruct_ov63_0222AE60 *unk_B0;
    Window unk_B4;
    Window unk_C4;
    Strbuf *unk_D4;
    u32 unk_D8;
    u32 unk_DC;
    Window unk_E0;
    StringList *unk_F0[2];
    ListMenu *unk_F8;
    Menu *unk_FC;
    s32 unk_100;
    Sprite *unk_104;
    u32 unk_108;
} UnkStruct_ov64_0222F0C4;

typedef struct {
    ApplicationManager *appMan;
    UnkStruct_0208737C *unk_04;
    UnkStruct_02089438 *unk_08;
} UnkStruct_ov64_02230444;

typedef struct {
    Window unk_00;
    Window unk_10;
    void *unk_20;
    NNSG2dScreenData *unk_24;
} UnkStruct_ov64_02230620;

typedef struct {
    void *unk_00[7];
    NNSG2dScreenData *unk_1C[7];
} UnkStruct_ov64_02230F60;

typedef struct {
    UnkStruct_ov64_0223221C unk_00;
    u32 unk_08;
    Window *unk_0C[7];
    u32 unk_28[7];
} UnkStruct_ov64_02230F98;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s32 unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    BOOL unk_10;
    UnkStruct_ov64_02230F98 unk_14[3];
    UnkStruct_ov64_02230F60 unk_DC;
} UnkStruct_ov64_02230904;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov64_0223222E;

typedef struct {
    u32 unk_00;
    UnkStruct_ov64_0222E21C unk_04;
    UnkStruct_ov64_0222E060 unk_28C;
    UnkStruct_ov64_0222F038 unk_2C8;
    UnkStruct_ov64_0222F0C4 unk_304;
    UnkStruct_ov64_02230444 unk_410;
    UnkStruct_ov64_02230620 unk_41C;
    UnkStruct_ov64_02230904 unk_444;
    s32 unk_558;
} UnkStruct_ov64_0222DFD0;

static void ov64_0222DF3C(void *param0);
static void ov64_0222DF48(UnkStruct_ov64_0222DFD0 *param0, u32 heapID);
static void ov64_0222DFD0(UnkStruct_ov64_0222DFD0 *param0);
static void ov64_0222E040(UnkStruct_ov64_0222E060 *param0, void *param1, u32 heapID);
static void ov64_0222E060(UnkStruct_ov64_0222E060 *param0);
static void ov64_0222E074(UnkStruct_ov64_0222E060 *param0, u8 param1, u8 param2);
static void ov64_0222E07C(UnkStruct_ov64_0222E060 *param0, const Strbuf *param1, const Strbuf *param2);
static u32 ov64_0222E09C(UnkStruct_ov64_0222E060 *param0, Strbuf *param1, Strbuf *param2);
static void ov64_0222E158(UnkStruct_ov64_0222E060 *param0, const u16 *param1);
static void ov64_0222E160(UnkStruct_ov64_0222E060 *param0, u32 param1);
static void ov64_0222E164(UnkStruct_ov64_0222E060 *param0);
static void ov64_0222E1A4(UnkStruct_ov64_0222E21C *param0, const UnkStruct_ov64_0222E060 *param1, u32 heapID);
static void ov64_0222E21C(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E228(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E23C(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E270(void);
static void ov64_0222E290(UnkStruct_ov64_0222E21C *param0, u32 heapID);
static void ov64_0222E3AC(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E3D8(UnkStruct_ov64_0222E21C *param0, u32 heapID);
static void ov64_0222E570(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E5D8(UnkStruct_ov64_0222E21C *param0, u32 heapID);
static void ov64_0222E604(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E620(UnkStruct_ov64_0222E21C *param0, const UnkStruct_ov64_0222E060 *param1, u32 heapID);
static void ov64_0222E6B4(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E6D8(UnkStruct_ov64_0222E21C *param0, u32 heapID);
static void ov64_0222E71C(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E738(UnkStruct_ov64_0222E21C *param0, u32 param1);
static void ov64_0222E7C8(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222E7F8(UnkStruct_ov64_0222E21C *param0, u64 param1);
static void ov64_0222E970(UnkStruct_ov64_0222E21C *param0, u32 param1);
static void ov64_0222E990(UnkStruct_ov64_0222E21C *param0, u32 param1);
static void ov64_0222E9A4(UnkStruct_ov64_0222E21C *param0, u32 heapID);
static void ov64_0222EA0C(UnkStruct_ov64_0222E21C *param0);
static void ov64_0222EA28(UnkStruct_ov64_0222E21C *param0, BOOL param1);
static void ov64_0222EA48(UnkStruct_ov64_0222E21C *param0, BOOL param1);
static void ov64_0222EA68(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static int ov64_0222EA70(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222EC8C(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0222EC94(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222EE00(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0222EE20(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static BOOL ov64_0222EE84(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0222EF08(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_0222EF4C(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1);
static void ov64_0222EF64(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_0222EFBC(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 heapID);
static BOOL ov64_0222F038(const UnkStruct_ov64_0222F038 *param0);
static void ov64_0222F050(UnkStruct_ov64_0222F038 *param0);
static BOOL ov64_0222F068(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1);
static void ov64_0222F09C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static int ov64_0222F0C4(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222F40C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0222F414(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222F5F4(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0222F668(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222F6E8(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static u32 ov64_0222F798(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0222F8F8(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static BOOL ov64_0222F948(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222FA70(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static u32 ov64_0222FB24(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static BOOL ov64_0222FBA4(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222FC1C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static BOOL ov64_0222FC48(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_0222FC80(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3, u32 param4, u32 param5, u32 heapID);
static void ov64_0222FCF0(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2);
static void ov64_0222FD7C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3);
static void ov64_0222FDD0(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3);
static void ov64_0222FE5C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, int param2);
static void ov64_0222FE70(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 heapID);
static BOOL ov64_0222FEFC(const UnkStruct_ov64_0222F0C4 *param0);
static void ov64_0222FF18(UnkStruct_ov64_0222F0C4 *param0);
static u32 ov64_0222FF38(const UnkStruct_ov64_0222F0C4 *param0);
static void ov64_0222FF48(ListMenu *param0, u32 param1, u8 param2);
static void ov64_0222FF5C(UnkStruct_ov64_0222F0C4 *param0);
static BOOL ov64_02230008(UnkStruct_ov64_0222F0C4 *param0);
static void ov64_02230044(UnkStruct_ov64_0222F0C4 *param0);
static void ov64_02230074(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1, const UnkStruct_ov64_0223221C *param2, u32 param3, u32 param4);
static void ov64_022300D8(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_022300E4(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1, const UnkStruct_ov64_022300E4 *param2);
static void ov64_02230130(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2);
static void ov64_022301B4(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, UnkStruct_ov63_0222AE60 *param3, const UnkStruct_ov64_022300E4 *param4, const UnkStruct_ov64_022301B4 *param5, u32 param6, u32 heapID);
static void ov64_02230240(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1, const UnkStruct_ov64_022300E4 *param2);
static void ov64_022302CC(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_022302EC(UnkStruct_ov64_02230074 *param0, UnkStruct_ov63_0222AE60 *param1, UnkStruct_ov64_0222E21C *param2, const UnkStruct_ov64_022300E4 *param3, u32 param4, WiFiList *param5, u32 param6, u32 heapID);
static void ov64_022303CC(UnkStruct_ov64_02230074 *param0, UnkStruct_ov64_0222E21C *param1, const UnkStruct_ov64_022300E4 *param2, u32 param3);
static void ov64_02230444(UnkStruct_ov64_02230444 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static int ov64_0223044C(UnkStruct_ov64_02230444 *param0, UnkStruct_ov64_0222DFD0 *param1, UnkStruct_ov64_0222E060 *param2, UnkStruct_ov64_0222E21C *param3, u32 param4);
static void ov64_022305CC(UnkStruct_ov64_02230444 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_022305D4(UnkStruct_ov64_02230444 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_022305D8(UnkStruct_ov64_02230444 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static UnkStruct_0208737C *ov64_022305DC(UnkStruct_ov64_02230444 *param0, UnkStruct_ov64_0222E060 *param1, u32 heapID);
static void ov64_02230620(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static int ov64_02230628(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_02230678(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_02230680(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_02230804(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0223081C(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_0223087C(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_022308DC(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static int ov64_02230904(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_02230A50(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_02230A58(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static BOOL ov64_02230A9C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02230B1C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_02230BA0(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2);
static void ov64_02230BD8(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID);
static void ov64_02230C1C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_02230C50(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3, u32 param4, u32 param5);
static void ov64_02230C8C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3);
static void ov64_02230D50(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_02230D98(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3);
static void ov64_02230DE4(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3);
static BOOL ov64_02230EA8(UnkStruct_ov64_0222E060 *param0, int param1);
static void ov64_02230F24(UnkStruct_ov64_02230F60 *param0, UnkStruct_ov64_0222E21C *param1, u32 heapID);
static void ov64_02230F60(UnkStruct_ov64_02230F60 *param0);
static void ov64_02230F78(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E21C *param1, const UnkStruct_ov64_0223221C *param2, u32 param3, u32 heapID);
static void ov64_02230F98(UnkStruct_ov64_02230F98 *param0);
static void ov64_02230F9C(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3, const UnkStruct_ov64_0223222E *param4, u32 heapID);
static void ov64_02231058(UnkStruct_ov64_02230F98 *param0, u32 param1);
static void ov64_02231080(UnkStruct_ov64_02230F98 *param0, u32 param1);
static void ov64_022310A4(UnkStruct_ov64_02230F98 *param0, u32 param1);
static void ov64_022310D4(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3, const UnkStruct_ov64_02230F60 *param4, u32 param5);
static void ov64_02231144(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E21C *param1);
static void ov64_02231164(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02231528(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02231664(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02231A00(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02231BE0(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02231D58(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02231E94(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3);
static void ov64_02232038(UnkStruct_ov64_0222E21C *param0, const UnkStruct_ov64_0223221C *param1);
static void ov64_022320B8(UnkStruct_ov64_02230F98 *param0, u32 param1, u32 param2, UnkStruct_ov64_0222E060 *param3, UnkStruct_ov64_0222E21C *param4, u32 entryID, u32 xOffset, u32 yOffset, TextColor color, Strbuf *strbuf, Strbuf *fmtString, u32 param11);
static void ov64_02232138(UnkStruct_ov64_02230904 *param0, s32 param1);
static BOOL ov64_0223217C(UnkStruct_ov64_0222E060 *param0, u32 heapID);

static const UnkStruct_ov64_0223221C Unk_ov64_0223221C[3] = {
    { 0x0, 0x0, 0x20, 0x18 },
    { 0x20, 0x0, 0x20, 0x18 },
    { 0xFFFFFFFFFFFFFFE0, 0x0, 0x20, 0x18 }
};

static const BgTemplate Unk_ov64_02232390[5] = {
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xc000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x3,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xc800,
        GX_BG_CHARBASE_0x04000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x1000,
        0x0,
        0x3,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x2,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x1000,
        0x0,
        0x3,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x20000,
        GX_BG_EXTPLTT_01,
        0x1,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xc000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0 }
};

static const u32 Unk_ov64_02232258[5] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static NNSG2dViewRect Unk_ov64_02232460 = {
    { 0x0, (FX32_CONST(256)) },
    { (255 << FX32_SHIFT), (192 << FX32_SHIFT) }
};

static const WindowTemplate Unk_ov64_022321CA = {
    0x1,
    0x19,
    0xD,
    0x6,
    0x4,
    0x7,
    0xDC
};

static const UnkStruct_ov64_02232324 Unk_ov64_02232324[9] = {
    { { 0x1, 0x4, 0xF, 0x4 },
        0x2 },
    { { 0x1, 0x8, 0xF, 0x4 },
        0x2 },
    { { 0x1, 0xC, 0xF, 0x4 },
        0x2 },
    { { 0x1, 0x10, 0xF, 0x4 },
        0x2 },
    { { 0x10, 0x4, 0xF, 0x4 },
        0x2 },
    { { 0x10, 0x8, 0xF, 0x4 },
        0x2 },
    { { 0x10, 0xC, 0xF, 0x4 },
        0x2 },
    { { 0x10, 0x10, 0xF, 0x4 },
        0x2 },
    { { 0xB, 0x14, 0xA, 0x4 },
        0x0 }
};

static const u8 Unk_ov64_02232428[4] = {
    0x0,
    0x1,
    0x2,
    0x3
};

static const UnkStruct_ov64_022322E4 Unk_ov64_022322E4[2][4] = {
    { { 0x8, (u32)7 },
        { 0x9, (u32)10 },
        { 0xA, (u32)15 },
        { 0xB, (u32)2 } },
    { { 0x38, (u32)21 },
        { 0x9, (u32)10 },
        { 0xA, (u32)15 },
        { 0xB, (u32)2 } }
};

static const ListMenuTemplate Unk_ov64_0223226C = {
    NULL,
    ov64_0222FF48,
    NULL,
    NULL,
    0x4,
    0x4,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

static const UnkStruct_ov64_0223222E Unk_ov64_0223222E[5] = {
    { 0xE, 0x4, 0x10, 0x6 },
    { 0x16, 0xA, 0x8, 0x5 },
    { 0xE, 0xF, 0x11, 0x6 },
    { 0x2, 0x15, 0x1C, 0x3 },
    { 0x1, 0x5, 0xB, 0xD }
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321B4[1] = {
    { 0x2, 0x4, 0x14, 0x9 }
};

static const UnkStruct_ov64_0223222E Unk_ov64_02232242[5] = {
    { 0x2, 0x5, 0xE, 0x2 },
    { 0x2, 0x8, 0x1C, 0x2 },
    { 0x2, 0xB, 0x1C, 0x4 },
    { 0x2, 0x10, 0x1C, 0x2 },
    { 0x2, 0x13, 0x1C, 0x4 }
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321B0[1] = {
    { 0x2, 0x5, 0x1C, 0xB }
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321B8[1] = {
    { 0x2, 0x5, 0x14, 0xB }
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321A8[1] = {
    { 0x2, 0x5, 0x14, 0xB }
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321AC[1] = {
    { 0x2, 0x5, 0x16, 0xB }
};

static const UnkStruct_ov64_0223222E *Unk_ov64_02232470[7] = {
    Unk_ov64_0223222E,
    Unk_ov64_022321AC,
    Unk_ov64_022321B4,
    Unk_ov64_02232242,
    Unk_ov64_022321B0,
    Unk_ov64_022321B8,
    Unk_ov64_022321A8
};

static const u8 Unk_ov64_02232434[7] = {
    0x5,
    0x1,
    0x1,
    0x5,
    0x1,
    0x1,
    0x1
};

int ov64_0222DCE0(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov64_0222DFD0 *v0;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_52, 0x70000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov64_0222DFD0), HEAP_ID_52);
    memset(v0, 0, sizeof(UnkStruct_ov64_0222DFD0));

    ov64_0222E040(&v0->unk_28C, ApplicationManager_Args(appMan), HEAP_ID_52);
    ov64_0222E1A4(&v0->unk_04, &v0->unk_28C, HEAP_ID_52);
    ov64_0222EA68(&v0->unk_2C8, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
    ov64_0222F09C(&v0->unk_304, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
    ov64_02230444(&v0->unk_410, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
    ov64_02230620(&v0->unk_41C, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
    ov64_022308DC(&v0->unk_444, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);

    SetVBlankCallback(ov64_0222DF3C, v0);
    DisableHBlank();

    return 1;
}

int ov64_0222DDAC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov64_0222DFD0 *v0 = ApplicationManager_Data(appMan);
    int v1;

    switch (*param1) {
    case 0:

        switch (v0->unk_00) {
        case 0:
            v1 = ov64_0222EA70(&v0->unk_2C8, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
            break;
        case 1:
            v1 = ov64_0222F0C4(&v0->unk_304, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
            break;
        case 2:
            v1 = ov64_0223044C(&v0->unk_410, v0, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
            break;
        case 3:
            v1 = ov64_02230628(&v0->unk_41C, &v0->unk_28C, &v0->unk_04);
            break;
        case 4:
            v1 = ov64_02230904(&v0->unk_444, &v0->unk_28C, &v0->unk_04, HEAP_ID_52);
            break;
        case 5:
            return 1;
        }

        if (v1 == 1) {
            v0->unk_00 = v0->unk_28C.unk_05;
            v0->unk_28C.unk_04 = v0->unk_28C.unk_06;
            v0->unk_558 = 4;
            (*param1) = 1;
        }
        break;
    case 1:
        v0->unk_558--;

        if (v0->unk_558 <= 0) {
            (*param1) = 0;
        }
        break;
    }

    ov64_0222E21C(&v0->unk_04);

    return 0;
}

int ov64_0222DEA4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov64_0222DFD0 *v0 = ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    ov64_0222EC8C(&v0->unk_2C8, &v0->unk_28C, &v0->unk_04);
    ov64_0222F40C(&v0->unk_304, &v0->unk_28C, &v0->unk_04);
    ov64_022305CC(&v0->unk_410, &v0->unk_28C, &v0->unk_04);
    ov64_02230678(&v0->unk_41C, &v0->unk_28C, &v0->unk_04);
    ov64_02230A50(&v0->unk_444, &v0->unk_28C, &v0->unk_04);

    ov64_0222E23C(&v0->unk_04);
    ov64_0222E060(&v0->unk_28C);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_52);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));

    return 1;
}

static void ov64_0222DF3C(void *param0)
{
    UnkStruct_ov64_0222DFD0 *v0 = param0;
    ov64_0222E228(&v0->unk_04);
}

static void ov64_0222DF48(UnkStruct_ov64_0222DFD0 *param0, u32 heapID)
{
    ov64_0222E1A4(&param0->unk_04, &param0->unk_28C, heapID);

    ov64_0222EC94(&param0->unk_2C8, &param0->unk_28C, &param0->unk_04, heapID);
    ov64_0222F414(&param0->unk_304, &param0->unk_28C, &param0->unk_04, heapID);
    ov64_022305D4(&param0->unk_410, &param0->unk_28C, &param0->unk_04, heapID);
    ov64_02230680(&param0->unk_41C, &param0->unk_28C, &param0->unk_04, heapID);
    ov64_02230B1C(&param0->unk_444, &param0->unk_28C, &param0->unk_04, heapID);

    SetVBlankCallback(ov64_0222DF3C, param0);
    DisableHBlank();
}

static void ov64_0222DFD0(UnkStruct_ov64_0222DFD0 *param0)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    ov64_0222EE00(&param0->unk_2C8, &param0->unk_28C, &param0->unk_04);
    ov64_0222F5F4(&param0->unk_304, &param0->unk_28C, &param0->unk_04);
    ov64_022305D8(&param0->unk_410, &param0->unk_28C, &param0->unk_04);
    ov64_02230804(&param0->unk_41C, &param0->unk_28C, &param0->unk_04);
    ov64_02230BA0(&param0->unk_444, &param0->unk_28C, &param0->unk_04);
    ov64_0222E23C(&param0->unk_04);
}

static void ov64_0222E040(UnkStruct_ov64_0222E060 *param0, void *param1, u32 heapID)
{
    param0->saveData = param1;
    param0->unk_2C.unk_00 = Strbuf_Init(128, heapID);
    param0->unk_2C.unk_04 = Strbuf_Init(128, heapID);
}

static void ov64_0222E060(UnkStruct_ov64_0222E060 *param0)
{
    Strbuf_Free(param0->unk_2C.unk_00);
    Strbuf_Free(param0->unk_2C.unk_04);
}

static void ov64_0222E074(UnkStruct_ov64_0222E060 *param0, u8 param1, u8 param2)
{
    param0->unk_05 = param1;
    param0->unk_06 = param2;
}

static void ov64_0222E07C(UnkStruct_ov64_0222E060 *param0, const Strbuf *param1, const Strbuf *param2)
{
    if (param1) {
        Strbuf_Copy(param0->unk_2C.unk_00, param1);
    }

    if (param2) {
        Strbuf_Copy(param0->unk_2C.unk_04, param2);
    }
}

static u32 ov64_0222E09C(UnkStruct_ov64_0222E060 *param0, Strbuf *param1, Strbuf *param2)
{
    int v0;
    WiFiList *v1;
    BOOL v2;
    BOOL v3;
    u64 v4;
    u64 v5;
    DWCFriendData *v6 = NULL;
    DWCUserData *v7 = NULL;
    int v8;
    int v9;

    v1 = SaveData_GetWiFiList(param0->saveData);
    v5 = DWC_CreateFriendKey(WiFiList_GetUserData(v1));

    for (v0 = 0; v0 < 32; v0++) {
        v2 = sub_0202AF78(v1, v0);

        if (v2 == 0) {
            v4 = Strbuf_AtoI(param1, &v3);

            if ((v3 == 1) && (v4 != v5)) {
                v7 = WiFiList_GetUserData(v1);

                if (!DWC_CheckFriendKey(v7, v4)) {
                    return 1;
                }

                v8 = sub_02039140(param0->saveData, v4, &v9);

                if (v8 == 0) {
                    return 2;
                }

                v6 = sub_0202AED8(v1, v0);
                DWC_CreateFriendKeyToken(v6, v4);

                sub_0202AF0C(v1, v0, param2);
                sub_0202AE2C(v1, v0, 8, 2);
                return 0;
            } else {
                return 1;
            }
        }
    }

    GF_ASSERT(0);

    return 0;
}

static void ov64_0222E158(UnkStruct_ov64_0222E060 *param0, const u16 *param1)
{
    param0->unk_34.unk_00 = param1;
    param0->unk_34.unk_04 = 1;
}

static void ov64_0222E160(UnkStruct_ov64_0222E060 *param0, u32 param1)
{
    param0->unk_07 = param1;
}

static void ov64_0222E164(UnkStruct_ov64_0222E060 *param0)
{
    int v0;
    WiFiList *v1;

    memset(&param0->unk_08, 0, sizeof(UnkStruct_ov64_022301B4));

    v1 = SaveData_GetWiFiList(param0->saveData);

    param0->unk_08.unk_00 = 0;

    for (v0 = 0; v0 < (8 * 4); v0++) {
        if (sub_0202AF78(v1, v0) == 1) {
            param0->unk_08.unk_04[param0->unk_08.unk_00] = v0;
            param0->unk_08.unk_00++;
        }
    }
}

static void ov64_0222E1A4(UnkStruct_ov64_0222E21C *param0, const UnkStruct_ov64_0222E060 *param1, u32 heapID)
{
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();
    param0->unk_21C = NARC_ctor(NARC_INDEX_GRAPHIC__PL_WIFINOTE, heapID);

    ov64_0222E270();
    ov64_0222E290(param0, heapID);
    ov64_0222E3D8(param0, heapID);
    ov64_0222E5D8(param0, heapID);
    ov64_0222E620(param0, param1, heapID);
    ov64_0222E9A4(param0, heapID);
    ov64_0222E6D8(param0, heapID);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
}

static void ov64_0222E21C(UnkStruct_ov64_0222E21C *param0)
{
    SpriteList_Update(param0->unk_04);
}

static void ov64_0222E228(UnkStruct_ov64_0222E21C *param0)
{
    Bg_RunScheduledUpdates(param0->unk_00);
    VramTransfer_Process();
    RenderOam_Transfer();
}

static void ov64_0222E23C(UnkStruct_ov64_0222E21C *param0)
{
    ov64_0222EA0C(param0);
    ov64_0222E71C(param0);
    ov64_0222E6B4(param0);
    ov64_0222E604(param0);
    ov64_0222E570(param0);
    ov64_0222E3AC(param0);

    NARC_dtor(param0->unk_21C);
}

static void ov64_0222E270(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_256_AB,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov64_0222E290(UnkStruct_ov64_0222E21C *param0, u32 heapID)
{
    int v0;

    param0->unk_00 = BgConfig_New(heapID);

    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&v1);
    }

    for (v0 = 0; v0 < 5; v0++) {
        Bg_InitFromTemplate(param0->unk_00, Unk_ov64_02232258[v0], &Unk_ov64_02232390[v0], 0);
        Bg_ClearTilesRange(Unk_ov64_02232258[v0], 32, 0, heapID);
        Bg_ClearTilemap(param0->unk_00, Unk_ov64_02232258[v0]);
    }

    Graphics_LoadPaletteFromOpenNARC(param0->unk_21C, 0, 0, 0, ((6 + 1) - 0) * 32, heapID);
    Graphics_LoadPaletteFromOpenNARC(param0->unk_21C, 0, 4, 0, ((4 + 1) - 0) * 32, heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_21C, 18, param0->unk_00, Unk_ov64_02232258[0], 0, 0, 0, heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_21C, 18, param0->unk_00, Unk_ov64_02232258[2], 0, 0, 0, heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_21C, 13, param0->unk_00, Unk_ov64_02232258[4], 0, 0, 0, heapID);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_21C, 12, param0->unk_00, Unk_ov64_02232258[0], 0, 0, 0, heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_21C, 14, param0->unk_00, Unk_ov64_02232258[4], 0, 0, 0, heapID);
}

static void ov64_0222E3AC(UnkStruct_ov64_0222E21C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        Bg_FreeTilemapBuffer(param0->unk_00, Unk_ov64_02232258[v0]);
    }

    Heap_Free(param0->unk_00);
    param0->unk_00 = NULL;
}

static void ov64_0222E3D8(UnkStruct_ov64_0222E21C *param0, u32 heapID)
{
    int v0;
    BOOL v1;

    NNS_G2dInitOamManagerModule();

    VramTransfer_New(16, heapID);
    RenderOam_Init(0, 126, 0, 30, 0, 126, 0, 30, heapID);

    {
        CharTransferTemplate v2 = {
            64, 0x14000, 0, 0
        };

        v2.heapID = heapID;
        CharTransfer_InitWithVramModes(&v2, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    PlttTransfer_Init(64, heapID);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    param0->unk_04 = SpriteList_InitRendering(64, &param0->unk_78, heapID);

    RenderOam_InitSurface(&param0->unk_08, &Unk_ov64_02232460, NNS_G2D_SURFACETYPE_MAIN2D, &param0->unk_78.renderer);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_204[v0] = SpriteResourceCollection_New(64, v0, heapID);
    }

    param0->unk_260[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_204[0], param0->unk_21C, 15, 0, 100, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);
    param0->unk_260[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_204[1], param0->unk_21C, 0, 0, 100, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);
    param0->unk_260[2] = SpriteResourceCollection_AddFrom(param0->unk_204[2], param0->unk_21C, 16, 0, 100, 2, heapID);
    param0->unk_260[3] = SpriteResourceCollection_AddFrom(param0->unk_204[3], param0->unk_21C, 17, 0, 100, 3, heapID);

    v1 = SpriteTransfer_RequestCharAtEnd(param0->unk_260[0]);
    GF_ASSERT(v1);

    v1 = SpriteTransfer_RequestPlttFreeSpace(param0->unk_260[1]);
    GF_ASSERT(v1);

    SpriteResource_ReleaseData(param0->unk_260[0]);
    SpriteResource_ReleaseData(param0->unk_260[1]);
    SpriteResourcesHeader_Init(&param0->unk_23C, 100, 100, 100, 100, 0xffffffff, 0xffffffff, 0, 0, param0->unk_204[0], param0->unk_204[1], param0->unk_204[2], param0->unk_204[3], NULL, NULL);
}

static void ov64_0222E570(UnkStruct_ov64_0222E21C *param0)
{
    int v0;

    SpriteTransfer_ResetCharTransfer(param0->unk_260[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_260[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Remove(param0->unk_204[v0], param0->unk_260[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_204[v0]);
    }

    SpriteList_Delete(param0->unk_04);
    CharTransfer_Free();
    PlttTransfer_Free();
    RenderOam_Free();
    VramTransfer_Free();
}

static void ov64_0222E5D8(UnkStruct_ov64_0222E21C *param0, u32 heapID)
{
    param0->unk_214 = StringTemplate_Default(heapID);
    param0->unk_218 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0675, heapID);
}

static void ov64_0222E604(UnkStruct_ov64_0222E21C *param0)
{
    MessageLoader_Free(param0->unk_218);
    StringTemplate_Free(param0->unk_214);
}

static void ov64_0222E620(UnkStruct_ov64_0222E21C *param0, const UnkStruct_ov64_0222E060 *param1, u32 heapID)
{
    int v0 = Options_Frame(SaveData_GetOptions(param1->saveData));

    Font_LoadScreenIndicatorsPalette(0, 7 * 0x20, heapID);
    LoadMessageBoxGraphics(param0->unk_00, Unk_ov64_02232258[1], (1 + 9), 8, v0, heapID);
    LoadStandardWindowGraphics(param0->unk_00, Unk_ov64_02232258[1], 1, 9, 0, heapID);
    Window_Init(&param0->unk_220);
    Window_Add(param0->unk_00, &param0->unk_220, Unk_ov64_02232258[1], 1, 0, 24, 3, 7, ((1 + 9) + (18 + 12)));

    param0->unk_230 = Strbuf_Init(128, heapID);
    param0->unk_234 = Strbuf_Init(128, heapID);
}

static void ov64_0222E6B4(UnkStruct_ov64_0222E21C *param0)
{
    Strbuf_Free(param0->unk_230);
    Strbuf_Free(param0->unk_234);
    Window_Remove(&param0->unk_220);
}

static void ov64_0222E6D8(UnkStruct_ov64_0222E21C *param0, u32 heapID)
{
    static const u8 v0[2] = {
        2,
        3,
    };
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        param0->unk_278.unk_00[v1] = Graphics_GetScrnDataFromOpenNARC(param0->unk_21C, v0[v1], 0, &param0->unk_278.unk_08[v1], heapID);
    }
}

static void ov64_0222E71C(UnkStruct_ov64_0222E21C *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Heap_Free(param0->unk_278.unk_00[v0]);
    }
}

static void ov64_0222E738(UnkStruct_ov64_0222E21C *param0, u32 param1)
{
    if (Text_IsPrinterActive(param0->unk_238) == 1) {
        Text_RemovePrinter(param0->unk_238);
    }

    Window_FillTilemap(&param0->unk_220, 0);
    MessageLoader_GetStrbuf(param0->unk_218, param1, param0->unk_234);
    StringTemplate_Format(param0->unk_214, param0->unk_230, param0->unk_234);

    param0->unk_238 = Text_AddPrinterWithParamsAndColor(&param0->unk_220, FONT_MESSAGE, param0->unk_230, 0, 4, TEXT_SPEED_QUICK, TEXT_COLOR(15, 2, 0), NULL);

    Window_ScheduleCopyToVRAM(&param0->unk_220);
}

static void ov64_0222E7C8(UnkStruct_ov64_0222E21C *param0)
{
    if (Text_IsPrinterActive(param0->unk_238) == 1) {
        Text_RemovePrinter(param0->unk_238);
    }

    Window_ClearAndScheduleCopyToVRAM(&param0->unk_220);
}

static void ov64_0222E7F8(UnkStruct_ov64_0222E21C *param0, u64 param1)
{
    u64 v0;

    v0 = param1 / 100000000;
    StringTemplate_SetNumber(param0->unk_214, 1, v0, 4, 2, 1);

    v0 = (param1 / 10000) % 10000;
    StringTemplate_SetNumber(param0->unk_214, 2, v0, 4, 2, 1);

    v0 = param1 % 10000;
    StringTemplate_SetNumber(param0->unk_214, 3, v0, 4, 2, 1);
}

static void ov64_0222E880(UnkStruct_ov64_0222E21C *param0, SaveData *saveData, u32 param2, u32 heapID)
{
    WiFiList *v0 = SaveData_GetWiFiList(saveData);
    TrainerInfo *v1 = TrainerInfo_New(heapID);

    TrainerInfo_SetName(v1, sub_0202AEF0(v0, param2));
    StringTemplate_SetPlayerName(param0->unk_214, 0, v1);
    Heap_Free(v1);
}

static void ov64_0222E8C0(UnkStruct_ov64_0222E21C *param0, SaveData *saveData, u32 param2, u32 heapID)
{
    TrainerInfo *v0 = TrainerInfo_New(heapID);
    WiFiList *v1 = SaveData_GetWiFiList(saveData);

    TrainerInfo_SetName(v0, sub_0202AF34(v1, param2));
    StringTemplate_SetPlayerName(param0->unk_214, 0, v0);
    Heap_Free(v0);
}

static BOOL ov64_0222E8FC(UnkStruct_ov64_0222E21C *param0, SaveData *saveData, u32 param2)
{
    WiFiList *v0 = SaveData_GetWiFiList(saveData);
    u32 v1;
    BOOL v2 = 1;

    v1 = sub_0202AD2C(v0, param2, 6);

    if (v1 == 0) {
        v2 = 0;
    }

    StringTemplate_SetNumber(param0->unk_214, 2, v1, 2, 0, 1);
    v1 = sub_0202AD2C(v0, param2, 4);

    StringTemplate_SetNumber(param0->unk_214, 0, v1, 4, 0, 1);
    v1 = sub_0202AD2C(v0, param2, 5);

    StringTemplate_SetMonthName(param0->unk_214, 1, v1);

    return v2;
}

static void ov64_0222E970(UnkStruct_ov64_0222E21C *param0, u32 param1)
{
    StringTemplate_SetNumber(param0->unk_214, 0, param1, 4, 1, 1);
}

static void ov64_0222E990(UnkStruct_ov64_0222E21C *param0, u32 param1)
{
    StringTemplate_SetPlazaMinigameName(param0->unk_214, 0, param1);
}

static void ov64_0222E9A4(UnkStruct_ov64_0222E21C *param0, u32 heapID)
{
    static AffineSpriteListTemplate v0[2] = {
        { NULL,
            NULL,
            { (FX32_CONST(6)), (FX32_CONST(98)), 0 },
            { FX32_ONE, FX32_ONE, FX32_ONE },
            0,
            8,
            NNS_G2D_VRAM_TYPE_2DMAIN,
            0 },
        { NULL,
            NULL,
            { (FX32_CONST(249)), (FX32_CONST(98)), 0 },
            { FX32_ONE, FX32_ONE, FX32_ONE },
            0,
            8,
            NNS_G2D_VRAM_TYPE_2DMAIN,
            0 },
    };
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        v0[v1].list = param0->unk_04;
        v0[v1].resourceData = &param0->unk_23C;
        v0[v1].heapID = heapID;

        param0->unk_270[v1] = SpriteList_AddAffine(&v0[v1]);

        Sprite_SetAnimateFlag(param0->unk_270[v1], 1);
        Sprite_SetDrawFlag(param0->unk_270[v1], FALSE);
        Sprite_SetAnim(param0->unk_270[v1], v1);
    }
}

static void ov64_0222EA0C(UnkStruct_ov64_0222E21C *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_Delete(param0->unk_270[v0]);
    }
}

static void ov64_0222EA28(UnkStruct_ov64_0222E21C *param0, BOOL param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_SetDrawFlag(param0->unk_270[v0], param1);
    }
}

static void ov64_0222EA48(UnkStruct_ov64_0222E21C *param0, BOOL param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_SetAnimateFlag(param0->unk_270[v0], param1);
    }
}

static void ov64_0222EA68(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    ov64_0222EC94(param0, param1, param2, heapID);
}

static int ov64_0222EA70(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BOOL v0;

    switch (param1->unk_04) {
    case 0:
        ov64_0222EE20(param0, param1, param2);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, COLOR_BLACK, 6, 1, heapID);
        param1->unk_04 = 1;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            param1->unk_04 = 3;
        }
        break;
    case 2:
        ov64_0222EE20(param0, param1, param2);
        param1->unk_04 = 3;
        break;
    case 3:
        v0 = ov64_0222EE84(param0, param1, param2);

        if (v0 == 1) {
            if (ov64_0222F068(param0, param1) == 1) {
                ov64_0222EF4C(param0, param1);

                if ((param0->unk_00 == 3) || (param0->unk_00 == 1)) {
                    param1->unk_04 = 4;
                } else {
                    ov64_0222EF64(param0, param2);
                    return 1;
                }
            } else {
                if (param0->unk_00 == 1) {
                    ov64_0222EFBC(param0, param2, 53, heapID);
                    param1->unk_04 = 10;
                }
            }
        }
        break;
    case 4:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_16, FADE_TYPE_UNK_16, COLOR_BLACK, 6, 1, heapID);
        param1->unk_04++;
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    case 6:
        ov64_0222EE20(param0, param1, param2);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, COLOR_BLACK, 6, 1, heapID);
        param1->unk_04 = 7;
        break;
    case 7:
        if (IsScreenFadeDone()) {
            u64 v1;
            TrainerInfo *v2;

            v2 = TrainerInfo_New(heapID);

            TrainerInfo_SetName(v2, Strbuf_GetData(param1->unk_2C.unk_00));
            StringTemplate_SetPlayerName(param2->unk_214, 0, v2);
            Heap_Free(v2);

            v1 = Strbuf_AtoI(param1->unk_2C.unk_04, &v0);

            if (v0) {
                ov64_0222E7F8(param2, v1);
                ov64_0222EFBC(param0, param2, 49, heapID);
                param1->unk_04 = 8;
            } else {
                ov64_0222EFBC(param0, param2, 50, heapID);
                param1->unk_04 = 10;
            }
        }
        break;
    case 8:
        if (ov64_0222F038(param0) == 0) {
            break;
        }

        param0->unk_2C = Menu_MakeYesNoChoice(param2->unk_00, &Unk_ov64_022321CA, 1, 9, heapID);
        param1->unk_04 = 9;
        break;
    case 9: {
        int v3;
        u32 v4;
        static const u8 v5[3] = {
            0,
            50,
            54,
        };

        v3 = Menu_ProcessInputAndHandleExit(param0->unk_2C, heapID);

        switch (v3) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov64_0222F050(param0);
            param1->unk_04 = 3;
            break;
        default:
            v4 = ov64_0222E09C(param1, param1->unk_2C.unk_04, param1->unk_2C.unk_00);

            if (v4 == 0) {
                ov64_0222F050(param0);
                param1->unk_04 = 3;
            } else {
                ov64_0222EFBC(param0, param2, v5[v4], heapID);
                param1->unk_04 = 10;
            }
            break;
        }
    } break;
    case 10:
        if (ov64_0222F038(param0) == 0) {
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            ov64_0222F050(param0);
            param1->unk_04 = 3;
        }

        break;
    }

    return 0;
}

static void ov64_0222EC8C(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    ov64_0222EE00(param0, param1, param2);
}

static void ov64_0222EC94 (UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    static const u8 entryIDs[4] = {
        0x1,
        0x2,
        0x3,
        0x4
    };

    static const int xOffsets[4] = {
        0xFFFFFFFFFFFFFFFC,
        0xFFFFFFFFFFFFFFFC,
        0xFFFFFFFFFFFFFFFC,
        0x0
    };

    static const u8 yOffsets[4] = {
        0x8,
        0x30,
        0x58,
        0x80
    };

    Window_Init(&param0->unk_04);
    Window_Add(param2->unk_00, &param0->unk_04, BG_LAYER_MAIN_3, 3, 4, 26, 20, 7, 1);

    Window_Init(&param0->unk_1C);
    Window_Add(param2->unk_00, &param0->unk_1C, BG_LAYER_MAIN_1, 2, 19, 27, 4, 7, 112);

    Window_FillTilemap(&param0->unk_04, 0);
    Window_FillTilemap(&param0->unk_1C, 0);

    param0->unk_38 = Strbuf_Init(128, heapID);
    param0->unk_34 = Options_TextFrameDelay(SaveData_GetOptions(param1->saveData));

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    StringTemplate_SetPlayerName(param2->unk_214, 0, SaveData_GetTrainerInfo(param1->saveData));

    int i;
    for (i = 0; i < 4; i++) {
        MessageLoader_GetStrbuf(param2->unk_218, entryIDs[i], fmtString);
        StringTemplate_Format(param2->unk_214, strbuf, fmtString);
        u32 xOffset = xOffsets[i] + Font_CalcCenterAlignment(FONT_SYSTEM, strbuf, 0, 208);
        Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, strbuf, xOffset, yOffsets[i], TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);

    param0->unk_14 = Graphics_GetScrnDataFromOpenNARC(param2->unk_21C, 1, 0, &param0->unk_18, heapID);
}

static void ov64_0222EE00(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    Strbuf_Free(param0->unk_38);
    Window_Remove(&param0->unk_04);
    Window_Remove(&param0->unk_1C);
    Heap_Free(param0->unk_14);
}

static void ov64_0222EE20(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    ov64_0222E738(param2, 0);

    Window_ScheduleCopyToVRAM(&param0->unk_04);
    Bg_LoadToTilemapRect(param2->unk_00, Unk_ov64_02232258[2], param0->unk_18->rawData, 0, 0, param0->unk_18->screenWidth / 8, param0->unk_18->screenHeight / 8);
    Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[2], 0, 0);
    Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[2], 3, 0);

    ov64_0222EF08(param0, param2);
    Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[2]);
}

static BOOL ov64_0222EE84(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    BOOL v0 = 0;

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 1;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        param0->unk_00 = 3;
        return 1;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        if (param0->unk_00 > 0) {
            param0->unk_00--;
            v0 = 1;
        }
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        if (param0->unk_00 < 3) {
            param0->unk_00++;
            v0 = 1;
        }
    }

    if (v0 == 1) {
        Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
        ov64_0222EF08(param0, param2);
        Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[2]);
    }

    return 0;
}

static void ov64_0222EF08(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E21C *param1)
{
    int v0;
    static const u8 Unk_ov64_022321FC[4][2] = {
        { 0x2, 0x4 },
        { 0x2, 0x9 },
        { 0x2, 0xE },
        { 0x2, 0x13 }
    };
    u8 v2;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00 == v0) {
            v2 = 1;
        } else {
            v2 = 0;
        }

        Bg_ChangeTilemapRectPalette(param1->unk_00, Unk_ov64_02232258[2], Unk_ov64_022321FC[v0][0], Unk_ov64_022321FC[v0][1], 28, 4, v2);
    }
}

static void ov64_0222EF4C(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1)
{
    static const u8 v0[4] = {
        1, 2, 3, 5
    };

    ov64_0222E074(param1, v0[param0->unk_00], 0);
}

static void ov64_0222EF64(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E21C *param1)
{
    ov64_0222E7C8(param1);

    Bg_FillTilemapRect(param1->unk_00, Unk_ov64_02232258[2], 0, 0, 0, 32, 24, 0);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[2]);
    Bg_FillTilemapRect(param1->unk_00, Unk_ov64_02232258[3], 0, 0, 0, 32, 24, 0);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[3]);

    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04);
}

static void ov64_0222EFBC(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 heapID)
{
    Strbuf *v0 = Strbuf_Init(128, heapID);

    Window_FillTilemap(&param0->unk_1C, 15);
    MessageLoader_GetStrbuf(param1->unk_218, param2, v0);
    StringTemplate_Format(param1->unk_214, param0->unk_38, v0);

    param0->unk_30 = Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_MESSAGE, param0->unk_38, 0, 0, param0->unk_34, TEXT_COLOR(1, 2, 0), NULL);

    Window_DrawMessageBoxWithScrollCursor(&param0->unk_1C, 1, (1 + 9), 8);
    Window_ScheduleCopyToVRAM(&param0->unk_1C);
    Strbuf_Free(v0);
}

static BOOL ov64_0222F038(const UnkStruct_ov64_0222F038 *param0)
{
    if (Text_IsPrinterActive(param0->unk_30) == 0) {
        return 1;
    }

    return 0;
}

static void ov64_0222F050(UnkStruct_ov64_0222F038 *param0)
{
    Window_EraseMessageBox(&param0->unk_1C, 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_1C);
}

static BOOL ov64_0222F068(UnkStruct_ov64_0222F038 *param0, UnkStruct_ov64_0222E060 *param1)
{
    int v0;
    WiFiList *v1;

    if (param0->unk_00 == 1) {
        v1 = SaveData_GetWiFiList(param1->saveData);

        for (v0 = 0; v0 < 32; v0++) {
            if (!sub_0202AF78(v1, v0)) {
                return 1;
            }
        }
    } else {
        return 1;
    }

    return 0;
}

static void ov64_0222F09C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    param0->unk_DC = Options_TextFrameDelay(SaveData_GetOptions(param1->saveData));
    ov64_0222F414(param0, param1, param2, heapID);
}

static int ov64_0222F0C4(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    u32 v0;
    WiFiList *v1;
    u32 v2;

    switch (param1->unk_04) {
    case 0:
        param0->unk_00 = 0;
        param0->unk_02 = 0;
        param0->unk_04 = 0;
        param0->unk_06 = 0;
    case 1:
        ov64_0222E164(param1);
        ov64_0222F668(param0, param1, param2, heapID);
        param1->unk_04 = 2;
        break;
    case 2:
        v0 = ov64_0222F798(param0, param1, param2);

        switch (v0) {
        case 0:
            break;
        case 1:
            param0->unk_02 = param0->unk_00;
            param0->unk_00--;

            if (param0->unk_00 < 0) {
                param0->unk_00 += 4;
            }

            ov64_0222FE5C(param0, param1, 2);
            break;
        case 2:
            param0->unk_02 = param0->unk_00;
            param0->unk_00 = (param0->unk_00 + 1) % 4;
            ov64_0222FE5C(param0, param1, 3);
            break;
        case 3:
            param1->unk_04 = 23;
            break;
        case 4:
            param1->unk_04 = 5;
            break;
        }
        break;
    case 3:
        ov64_0222F8F8(param0, param1, param2, heapID);
        param1->unk_04 = 4;
        break;
    case 4:
        v0 = ov64_0222F948(param0, param1, param2, heapID);

        if (v0 == 1) {
            param1->unk_04 = 2;
        }
        break;
    case 5:
        ov64_0222E160(param1, ov64_0222FF38(param0));
        ov64_0222FA70(param0, param1, param2, heapID);
        param1->unk_04 = 6;
        break;
    case 6:
        param1->unk_04 = ov64_0222FB24(param0, param1, param2, heapID);
        break;
    case 7:
        param0->unk_100 = 4;
        param1->unk_04 = 8;
        break;
    case 8:
        param0->unk_100--;

        if (param0->unk_100 <= 0) {
            ov64_0222F6E8(param0, param1, param2);
            ov64_0222E074(param1, 4, 0);
            return 1;
        }
        break;
    case 9:
        param0->unk_00 = param1->unk_07 / 8;
        param0->unk_04 = param1->unk_07 % 8;
        param1->unk_04 = 1;
        break;
    case 10:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_16, FADE_TYPE_UNK_16, COLOR_BLACK, 6, 1, heapID);

        v2 = ov64_0222FF38(param0);
        v1 = SaveData_GetWiFiList(param1->saveData);

        ov64_0222E158(param1, sub_0202AEF0(v1, param1->unk_08.unk_04[v2]));
        param1->unk_04 = 11;
        break;
    case 11:
        if (IsScreenFadeDone()) {
            ov64_0222F6E8(param0, param1, param2);
            ov64_0222E074(param1, 2, 4);
            return 1;
        }
        break;
    case 12:
        v2 = ov64_0222FF38(param0);
        v1 = SaveData_GetWiFiList(param1->saveData);
        sub_0202AF0C(v1, param1->unk_08.unk_04[v2], param1->unk_2C.unk_00);
    case 13:
        ov64_0222F668(param0, param1, param2, heapID);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, COLOR_BLACK, 6, 1, heapID);
        param1->unk_04 = 14;
        break;
    case 14:
        if (IsScreenFadeDone()) {
            param1->unk_04 = 2;
        }
        break;
    case 15:
        ov64_0222FC1C(param0, param1, param2, heapID);
        param1->unk_04 = 16;
        break;
    case 16:
        v0 = ov64_0222FC48(param0, param1, param2, heapID);

        if (v0 == 1) {
            param1->unk_04 = 17;
        }
        break;
    case 17:
        v0 = Menu_ProcessInputAndHandleExit(param0->unk_FC, heapID);

        switch (v0) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov64_0222FF18(param0);
            ov64_0222EA28(param2, 1);
            param1->unk_04 = 2;
            break;
        default:
            ov64_0222FF18(param0);
            param1->unk_04 = 18;
            break;
        }
        break;
    case 18:
        ov64_0222FF5C(param0);
        param1->unk_04 = 19;
        break;
    case 19:
        if (ov64_02230008(param0) == 1) {
            v1 = SaveData_GetWiFiList(param1->saveData);
            v2 = ov64_0222FF38(param0);

            sub_0202AFD4(v1, param1->unk_08.unk_04[v2]);
            sub_02030788(SaveData_GetBattleFrontier(param1->saveData), param1->unk_08.unk_04[v2]);
            ov64_0222E164(param1);
            ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, 0, heapID);
            ov64_0222EA28(param2, 1);
            param1->unk_04 = 20;
        }
        break;
    case 20:
        ov64_02230044(param0);
        param1->unk_04 = 2;
        break;
    case 21:
        v0 = ov64_0222FBA4(param0, param1, param2, heapID);

        if (v0 == 1) {
            param1->unk_04 = 22;
        } else {
            ov64_0222EA28(param2, 1);
            param1->unk_04 = 2;
        }
        break;
    case 22:
        if (ov64_0222FEFC(param0) == 0) {
            break;
        }

        if (gSystem.pressedKeys) {
            ov64_0222EA28(param2, 1);
            param1->unk_04 = 2;
            ov64_0222FF18(param0);
        }
        break;
    case 23:
        ov64_0222F6E8(param0, param1, param2);
        ov64_0222E074(param1, 0, 2);
        return 1;
    }

    return 0;
}

static void ov64_0222F40C(UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    ov64_0222F5F4(param0, param1, param2);
}

static void ov64_0222F414 (UnkStruct_ov64_0222F0C4 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    static const u16 Unk_ov64_022321BC[3] = {
        0x1,
        0x1BB,
        0x1BB
    };

    AffineSpriteListTemplate Unk_ov64_022322B4 = {
        NULL,
        NULL,
        { 0x0, 0x0, 0x0 },
        { FX32_ONE, FX32_ONE, FX32_ONE },
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        0x0
    };

    int i, j;

    for (i = 0; i < 3; i++) {
        ov64_02230074(&param0->unk_08[i], param2, &Unk_ov64_0223221C[i], Unk_ov64_022321BC[i], heapID);
    }

    param0->unk_B0 = ov63_0222AE60(param2->unk_04, NULL, 16, heapID);
    ov63_0222B02C(param0->unk_B0, 1, 2, heapID);

    Window_Init(&param0->unk_B4);
    Window_Add(param2->unk_00, &param0->unk_B4, BG_LAYER_MAIN_1, 13, 21, 8, 3, 7, 112);
    Window_FillTilemap(&param0->unk_B4, 0);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    MessageLoader_GetStrbuf(param2->unk_218, 7, strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->unk_B4, FONT_SYSTEM, strbuf, Font_CalcCenterAlignment(FONT_SYSTEM, strbuf, 0, 64), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);

    Window_Init(&param0->unk_E0);
    Window_Add(param2->unk_00, &param0->unk_E0, BG_LAYER_MAIN_1, 16, 9, 15, 8, 7, 136);
    Window_FillTilemap(&param0->unk_E0, 0);

    for (i = 0; i < 2; i++) {
        param0->unk_F0[i] = StringList_New(4, heapID);
        for (j = 0; j < 4; j++) {
            StringList_AddFromMessageBank(param0->unk_F0[i], param2->unk_218, Unk_ov64_022322E4[i][j].unk_00, Unk_ov64_022322E4[i][j].unk_04);
        }
    }

    Window_Init(&param0->unk_C4);
    Window_Add(param2->unk_00, &param0->unk_C4, BG_LAYER_MAIN_1, 2, 19, 27, 4, 7, 256);
    Window_FillTilemap(&param0->unk_C4, 15);

    param0->unk_D4 = Strbuf_Init(128, heapID);

    Unk_ov64_022322B4.list = param2->unk_04;
    Unk_ov64_022322B4.resourceData = &param2->unk_23C;
    Unk_ov64_022322B4.heapID = heapID;
    param0->unk_104 = SpriteList_AddAffine(&Unk_ov64_022322B4);
    Sprite_SetDrawFlag(param0->unk_104, FALSE);
}

static void ov64_0222F5F4 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    int v0;

    Sprite_Delete(param0->unk_104);
    Window_Remove(&param0->unk_C4);
    Strbuf_Free(param0->unk_D4);

    for (v0 = 0; v0 < 2; v0++) {
        StringList_Free(param0->unk_F0[v0]);
    }

    Window_Remove(&param0->unk_E0);
    Window_Remove(&param0->unk_B4);

    ov63_0222B078(param0->unk_B0);
    ov63_0222AF14(param0->unk_B0);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_022300D8(&param0->unk_08[v0], param2);
    }
}

static void ov64_0222F668 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    int v0;

    ov64_0222E738(param2, 5);

    Bg_CopyToTilemapRect(param2->unk_00, Unk_ov64_02232258[0], 11, 20, 10, 4, param2->unk_278.unk_08[1]->rawData, 6, 0, param2->unk_278.unk_08[1]->screenWidth / 8, param2->unk_278.unk_08[1]->screenHeight / 8);
    Window_ScheduleCopyToVRAM(&param0->unk_B4);

    Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[0]);

    ov64_0222EA28(param2, 1);
    ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, 0, heapID);
}

static void ov64_0222F6E8 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    int v0;

    ov64_0222E7C8(param2);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_B4);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_02230240(&param0->unk_08[v0], param2, &param2->unk_278);
    }

    ov64_0222EA28(param2, 0);

    Bg_CopyToTilemapRect(param2->unk_00, Unk_ov64_02232258[0], 11, 20, 10, 4, param2->unk_278.unk_08[1]->rawData, 0, 8, param2->unk_278.unk_08[1]->screenWidth / 8, param2->unk_278.unk_08[1]->screenHeight / 8);
    Bg_CopyToTilemapRect(param2->unk_00, Unk_ov64_02232258[0], 0x16, 0, 9, 3, param2->unk_278.unk_08[1]->rawData, 0x10, 0x0, param2->unk_278.unk_08[1]->screenWidth / 8, param2->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[0]);
}

static u32 ov64_0222F798 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    u16 v0;
    BOOL v1;
    BOOL v2;
    int v3;

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        if (param0->unk_04 == 8) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return 3;
        }

        if (param1->unk_08.unk_00 <= param0->unk_04 + (param0->unk_00 * 8)) {
            return 0;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 4;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 3;
    }

    v0 = param0->unk_04;
    v1 = 0;
    v2 = 0;

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        if (param0->unk_04 == 8) {
            param0->unk_04 = param0->unk_06;
            v1 = 1;
            ov64_0222EA28(param2, 1);
        } else {
            if (param0->unk_04 < (8 / 2)) {
                if (param0->unk_04 > 0) {
                    param0->unk_04--;
                    v1 = 1;
                }
            } else {
                if (param0->unk_04 > (8 / 2)) {
                    param0->unk_04--;
                    v1 = 1;
                }
            }
        }
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        if ((param0->unk_04 == 3) || (param0->unk_04 == 7)) {
            param0->unk_04 = 8;
            v1 = 1;

            ov64_0222EA28(param2, 0);
        } else {
            if (param0->unk_04 < (8 / 2)) {
                if (param0->unk_04 < 3) {
                    param0->unk_04++;
                    v1 = 1;
                }
            } else {
                if (param0->unk_04 < 7) {
                    param0->unk_04++;
                    v1 = 1;
                }
            }
        }
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        if (param0->unk_04 != 8) {
            if (param0->unk_04 < (8 / 2)) {
                param0->unk_04 += (8 / 2);
                v1 = 1;
                v2 = 1;
                v3 = 2;
            } else {
                param0->unk_04 -= (8 / 2);
                v1 = 1;
            }
        }
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        if (param0->unk_04 != 8) {
            if (param0->unk_04 < (8 / 2)) {
                param0->unk_04 += (8 / 2);
                v1 = 1;
            } else {
                param0->unk_04 -= (8 / 2);
                v1 = 1;
                v2 = 1;
                v3 = 3;
            }
        }
    }

    if (v2 == 1) {
        if (v3 == 2) {
            return 1;
        }

        return 2;
    } else {
        if (v1 == 1) {
            Sound_PlayEffect(SEQ_SE_DP_BUTTON3);

            ov64_02230130(&param0->unk_08[0], param2, param0->unk_04);
            param0->unk_06 = v0;
        }
    }

    return 0;
}

static void ov64_0222F8F8 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    u16 v0;

    if (param0->unk_AC == 2) {
        v0 = 2;
    } else {
        v0 = 1;
    }

    ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, v0, heapID);
    ov64_02230130(&param0->unk_08[0], param2, 10);
    ov64_0222EA48(param2, 0);

    Sound_PlayEffect(SEQ_SE_DP_SELECT5);
}

static BOOL ov64_0222F948 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    u32 v0;
    s32 v1;
    NNSG2dViewRect v2;
    u32 v3;
    static void (* v4[4])(UnkStruct_ov64_0222F0C4 *, UnkStruct_ov64_0222E21C *, u32, u32) = {
        ov64_0222FD7C, NULL, ov64_0222FDD0, NULL
    };

    if (param0->unk_AA >= 12) {
        Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[2], 0, 0);
        Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[3], 0, 0);

        v2 = Unk_ov64_02232460;
        SetRenderSurfaceViewRect(&param2->unk_08, &v2);

        if (param0->unk_AC == 2) {
            v0 = 2;
        } else {
            v0 = 1;
        }

        ov64_02230240(&param0->unk_08[v0], param2, &param2->unk_278);
        ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, 0, heapID);
        ov64_0222EA48(param2, 1);
        return 1;
    }

    v1 = (param0->unk_AA * 256) / 12;

    if (param0->unk_AC == 2) {
        v1 = -v1;
    }

    Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[2], 0, v1);
    Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[3], 0, v1);

    v2 = Unk_ov64_02232460;
    v2.posTopLeft.x += v1 << FX32_SHIFT;

    SetRenderSurfaceViewRect(&param2->unk_08, &v2);

    if (param0->unk_AA % (12 / 4)) {
        v3 = param0->unk_AA / (12 / 4);

        if (v4[v3]) {
            v4[v3](param0, param2, param0->unk_00, param0->unk_02);
        }
    }

    param0->unk_AA++;
    return 0;
}

static void ov64_0222FA70 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    ListMenuTemplate v0;
    WiFiList * v1;
    u32 v2;
    u32 v3;

    v1 = SaveData_GetWiFiList(param1->saveData);
    v3 = ov64_0222FF38(param0);
    v2 = sub_0202AD2C(v1, param1->unk_08.unk_04[v3], 8);
    v0 = Unk_ov64_0223226C;

    if (v2 == 2) {
        v0.choices = param0->unk_F0[1];
    } else {
        v0.choices = param0->unk_F0[0];
    }

    v0.window = &param0->unk_E0;
    param0->unk_F8 = ListMenu_New(&v0, 0, 0, heapID);

    Window_DrawStandardFrame(&param0->unk_E0, 1, 1, 9);
    Window_ScheduleCopyToVRAM(&param0->unk_E0);

    ov64_0222E880(param2, param1->saveData, param1->unk_08.unk_04[v3], heapID);
    ov64_0222FE70(param0, param2, 12, heapID);
    ov64_0222EA28(param2, 0);
}

static u32 ov64_0222FB24 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    u32 v0;
    u32 v1 = 6;

    if (ov64_0222FEFC(param0) == 0) {
        return v1;
    }

    v0 = ListMenu_ProcessInput(param0->unk_F8);

    switch (v0) {
    case 0xffffffff:
        return v1;
    case 0xfffffffe:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov64_0222EA28(param2, 1);
        v1 = 2;
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        v1 = v0;
        break;
    }

    ov64_0222FF18(param0);

    Window_EraseStandardFrame(&param0->unk_E0, 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_E0);
    ListMenu_Free(param0->unk_F8, NULL, NULL);

    if (v1 == 2) {
        ov64_0222EA28(param2, 1);
    }

    return v1;
}

static BOOL ov64_0222FBA4 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    WiFiList * v0;
    DWCFriendData * v1;
    u64 v2;
    u32 v3;

    v0 = SaveData_GetWiFiList(param1->saveData);
    v3 = ov64_0222FF38(param0);
    v1 = sub_0202AED8(v0, param1->unk_08.unk_04[v3]);
    v2 = DWC_GetFriendKey(v1);

    if (v2 != 0) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov64_0222E7F8(param2, v2);
        ov64_0222E880(param2, param1->saveData, param1->unk_08.unk_04[v3], heapID);
        ov64_0222FE70(param0, param2, 55, heapID);
        return 1;
    }

    return 0;
}

static void ov64_0222FC1C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    u32 v0 = ov64_0222FF38(param0);

    ov64_0222E880(param2, param1->saveData, param1->unk_08.unk_04[v0], heapID);
    ov64_0222FE70(param0, param2, 52, heapID);
}

static BOOL ov64_0222FC48 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    if (ov64_0222FEFC(param0) == 0) {
        return 0;
    }

    param0->unk_FC = Menu_MakeYesNoChoice(param2->unk_00, &Unk_ov64_022321CA, 1, 9, heapID);
    return 1;
}

static void ov64_0222FC80 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, u32 param4, u32 param5, u32 heapID)
{
    if (0 == param5) {
        param0->unk_00 = param3;
        param0->unk_04 = param4;

        ov64_0222FCF0(param0, param2, param3);
    }

    ov64_022300E4(&param0->unk_08[param5], param2, &param2->unk_278);
    ov64_022301B4(&param0->unk_08[param5], param1, param2, param0->unk_B0, &param2->unk_278, &param1->unk_08, param3, heapID);
    ov64_02230130(&param0->unk_08[param5], param2, param4);
}

static void ov64_0222FCF0 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2)
{
    u32 v0;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 0x16, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 0, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);

    v0 = 0x16 + (2 * param2) + 1;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 3, Unk_ov64_02232428[param2], param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_0222FD7C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    u32 v0 = 0x16 + (2 * param3) + 1;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 4, Unk_ov64_02232428[param3], param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_0222FDD0 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    u32 v0;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 0x16, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 0, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);

    v0 = 0x16 + (2 * param2) + 1;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 3, Unk_ov64_02232428[param2], param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_0222FE5C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, int param2)
{
    param1->unk_04 = 3;
    param0->unk_AC = param2;
    param0->unk_AA = 0;
}

static void ov64_0222FE70 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 heapID)
{
    Strbuf* v0;

    Window_FillTilemap(&param0->unk_C4, 15);

    v0 = Strbuf_Init(128, heapID);

    MessageLoader_GetStrbuf(param1->unk_218, param2, v0);
    StringTemplate_Format(param1->unk_214, param0->unk_D4, v0);

    param0->unk_D8 = Text_AddPrinterWithParamsAndColor(&param0->unk_C4, FONT_MESSAGE, param0->unk_D4, 0, 0, param0->unk_DC, TEXT_COLOR(1, 2, 0), NULL);

    Window_DrawMessageBoxWithScrollCursor(&param0->unk_C4, 1, (1 + 9), 8);
    Window_ScheduleCopyToVRAM(&param0->unk_C4);
    Strbuf_Free(v0);
}

static BOOL ov64_0222FEFC (const UnkStruct_ov64_0222F0C4 * param0)
{
    if (Text_IsPrinterActive(param0->unk_D8) == 0) {
        return 1;
    }

    return 0;
}

static void ov64_0222FF18 (UnkStruct_ov64_0222F0C4 * param0)
{
    Window_EraseMessageBox(&param0->unk_C4, 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_C4);
    Window_ScheduleCopyToVRAM(&param0->unk_B4);
}

static u32 ov64_0222FF38 (const UnkStruct_ov64_0222F0C4 * param0)
{
    u32 v0 = param0->unk_00 * 8;
    v0 += param0->unk_04;

    return v0;
}

static void ov64_0222FF48 (ListMenu * param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static void ov64_0222FF5C (UnkStruct_ov64_0222F0C4 * param0)
{
    VecFx32 v0;
    u32 v1;

    Sprite_SetDrawFlag(param0->unk_104, TRUE);
    Sprite_SetAnim(param0->unk_104, 2);

    param0->unk_108 = 0;

    Sprite_SetAnimateFlag(param0->unk_104, 1);

    v1 = param0->unk_04;

    v0.x = ((MATH_ABS(Unk_ov64_0223221C[0].unk_00) + Unk_ov64_02232324[v1].unk_00.unk_00) * 8);
    v0.y = ((MATH_ABS(Unk_ov64_0223221C[0].unk_02) + Unk_ov64_02232324[v1].unk_00.unk_02) * 8) + (-4 + 256);
    v0.x <<= FX32_SHIFT;
    v0.y <<= FX32_SHIFT;

    Sprite_SetPosition(param0->unk_104, &v0);

    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2, 0);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    GX_SetVisibleWnd(GX_WNDMASK_OW);

    Sound_PlayEffect(SEQ_SE_DP_UG_025);
}

static BOOL ov64_02230008 (UnkStruct_ov64_0222F0C4 * param0)
{
    u32 v0;

    if (Sprite_IsAnimated(param0->unk_104) == 0) {
        return 1;
    }

    v0 = Sprite_GetAnimFrame(param0->unk_104);

    if ((v0 - param0->unk_108) >= 2) {
        param0->unk_108 = v0;
        Sound_PlayEffect(SEQ_SE_DP_UG_025);
    }

    return 0;
}

static void ov64_02230044 (UnkStruct_ov64_0222F0C4 * param0)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    Sprite_SetDrawFlag(param0->unk_104, FALSE);
    Sprite_SetAnimateFlag(param0->unk_104, 0);
}

static void ov64_02230074 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_0223221C * param2, u32 param3, u32 param4)
{
    param0->unk_00 = *param2;

    Window_Init(&param0->unk_08);
    Window_Add(param1->unk_00, &param0->unk_08, Unk_ov64_02232258[3], 4 + MATH_ABS(param2->unk_00), 4 + MATH_ABS(param2->unk_02), 26, 17, 7, param3);
}

static void ov64_022300D8 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1)
{
    Window_Remove(&param0->unk_08);
}

static void ov64_022300E4 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2)
{
    Bg_LoadToTilemapRect(param1->unk_00, Unk_ov64_02232258[2], param2->unk_08[0]->rawData, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param2->unk_08[0]->screenWidth / 8, param2->unk_08[0]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[2]);
}

static void ov64_02230130 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 9; v0++) {
        if (param2 == v0) {
            v1 = 6;
        } else {
            v1 = 0;
        }

        Bg_ChangeTilemapRectPalette(param1->unk_00, Unk_ov64_02232324[v0].unk_08, MATH_ABS(param0->unk_00.unk_00) + Unk_ov64_02232324[v0].unk_00.unk_00, MATH_ABS(param0->unk_00.unk_02) + Unk_ov64_02232324[v0].unk_00.unk_02, Unk_ov64_02232324[v0].unk_00.unk_04, Unk_ov64_02232324[v0].unk_00.unk_05, v1);
    }

    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[2]);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_022301B4 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, UnkStruct_ov63_0222AE60 * param3, const UnkStruct_ov64_022300E4 * param4, const UnkStruct_ov64_022301B4 * param5, u32 param6, u32 heapID)
{
    int v0;
    int v1;
    WiFiList * v2;

    v2 = SaveData_GetWiFiList(param1->saveData);

    Window_FillTilemap(&param0->unk_08, 0);
    ov64_022302CC(param0, param2);

    v1 = param6 * 8;

    for (v0 = 0; v0 < 8; v0++) {
        if (param5->unk_00 > (v1 + v0)) {
            ov64_022302EC(param0, param3, param2, param4, v0, v2, param5->unk_04[v1 + v0], heapID);
        } else {
            ov64_022303CC(param0, param2, param4, v0);
        }
    }

    Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[2]);
    Window_ScheduleCopyToVRAM(&param0->unk_08);
}

static void ov64_02230240 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2)
{
    ov64_022302CC(param0, param1);

    Window_ClearAndScheduleCopyToVRAM(&param0->unk_08);
    Bg_FillTilemapRect(param1->unk_00, Unk_ov64_02232258[2], 0, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param0->unk_00.unk_04, param0->unk_00.unk_05, 0);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[2]);
    Bg_FillTilemapRect(param1->unk_00, Unk_ov64_02232258[3], 0, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param0->unk_00.unk_04, param0->unk_00.unk_05, 0);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[3]);
}

static void ov64_022302CC (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_18[v0]) {
            ov63_0222B210(param0->unk_18[v0]);
            param0->unk_18[v0] = NULL;
        }
    }
}

static void ov64_022302EC (UnkStruct_ov64_02230074 * param0, UnkStruct_ov63_0222AE60 * param1, UnkStruct_ov64_0222E21C * param2, const UnkStruct_ov64_022300E4 * param3, u32 param4, WiFiList * param5, u32 param6, u32 heapID)
{
    int v0;
    int v1;
    UnkStruct_ov64_022302EC v2;
    Strbuf* v3;
    int v4, v5;
    static const u32 v6[] = {TEXT_COLOR(5, 6, 0), TEXT_COLOR(3, 4, 0), TEXT_COLOR(1, 2, 0)};

    v1 = sub_0202AD2C(param5, param6, 7);
    v0 = sub_0202AD2C(param5, param6, 8);

    if (v0 == 2) {
        ov64_022303CC(param0, param2, param3, param4);
    } else {
        v2.unk_00 = ((param0->unk_00.unk_00 + Unk_ov64_02232324[param4].unk_00.unk_00) * 8) + 8;
        v2.unk_02 = ((param0->unk_00.unk_02 + Unk_ov64_02232324[param4].unk_00.unk_02) * 8) + (6 + 256);
        v2.unk_04 = 8;
        v2.unk_06 = 1;
        param0->unk_18[param4] = ov63_0222B0C0(param1, &v2, v1, heapID);
    }

    v4 = ((Unk_ov64_02232324[param4].unk_00.unk_00) * 8) + 0;
    v5 = ((Unk_ov64_02232324[param4].unk_00.unk_02) * 8) + -24;
    v3 = Strbuf_Init(128, heapID);

    Strbuf_CopyChars(v3, sub_0202AEF0(param5, param6));
    Text_AddPrinterWithParamsAndColor(&param0->unk_08, FONT_SYSTEM, v3, v4, v5, TEXT_SPEED_NO_TRANSFER, v6[v0], NULL);
    Strbuf_Free(v3);
}

static void ov64_022303CC (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2, u32 param3)
{
    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[2], MATH_ABS(param0->unk_00.unk_00) + Unk_ov64_02232324[param3].unk_00.unk_00, MATH_ABS(param0->unk_00.unk_02) + Unk_ov64_02232324[param3].unk_00.unk_02, 3, 4, param2->unk_08[1]->rawData, 0, 0, param2->unk_08[1]->screenWidth / 8, param2->unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[2]);
}

static void ov64_02230444 (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    ov64_022305D4(param0, param1, param2, heapID);
}

static int ov64_0223044C (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222DFD0 * param1, UnkStruct_ov64_0222E060 * param2, UnkStruct_ov64_0222E21C * param3, u32 heapID)
{
    int v0[4];

    switch (param2->unk_04) {
    case 0:
        param0->unk_04 = ov64_022305DC(param0, param2, heapID);

        v0[0] = 4;
        v0[1] = 4;
        v0[2] = 4;
        v0[3] = 0;

        param0->unk_08 = sub_02089400(heapID, 12, v0, SaveData_GetOptions(param2->saveData), 0, 0);
        ov64_0222DFD0(param1);
        param0->appMan = ApplicationManager_New(&Unk_020F2DAC, param0->unk_04, heapID);
        param2->unk_04 = 1;
        break;
    case 1:
        if (ApplicationManager_Exec(param0->appMan) == 0) {
            break;
        }

        ApplicationManager_Free(param0->appMan);

        if (param0->unk_04->unk_14 == 0) {
            param0->appMan = ApplicationManager_New(&Unk_020F2DBC, param0->unk_08, heapID);
            param2->unk_04 = 2;
        } else {
            ov64_0222E074(param2, 0, 0);
            param2->unk_04 = 3;
        }
        break;
    case 2:
        if (ApplicationManager_Exec(param0->appMan) == 0) {
            break;
        }

        ApplicationManager_Free(param0->appMan);
        ov64_0222E07C(param2, param0->unk_04->textInputStr, param0->unk_08->unk_1C);
        ov64_0222E074(param2, 0, 6);
        param2->unk_04 = 3;
        break;
    case 3:
        sub_0208716C(param0->unk_04);
        sub_02089438(param0->unk_08);
        ov64_0222DF48(param1, heapID);
        return 1;
    case 4:
        param0->unk_04 = ov64_022305DC(param0, param2, heapID);
        ov64_0222DFD0(param1);
        param0->appMan = ApplicationManager_New(&Unk_020F2DAC, param0->unk_04, heapID);
        param2->unk_04 = 5;
        break;
    case 5:
        if (ApplicationManager_Exec(param0->appMan) == 0) {
            break;
        }

        ApplicationManager_Free(param0->appMan);

        if (param0->unk_04->unk_14 == 0) {
            ov64_0222E074(param2, 1, 12);
            ov64_0222E07C(param2, param0->unk_04->textInputStr, NULL);
            param2->unk_04 = 6;
        } else {
            ov64_0222E074(param2, 1, 13);
            param2->unk_04 = 6;
        }
        break;
    case 6:
        sub_0208716C(param0->unk_04);
        ov64_0222DF48(param1, heapID);
        return 1;
    }

    return 0;
}

static void ov64_022305CC (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_022305D8(param0, param1, param2);
}

static void ov64_022305D4 (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    return;
}

static void ov64_022305D8 (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    return;
}

static UnkStruct_0208737C * ov64_022305DC (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, u32 heapID)
{
    UnkStruct_0208737C * v0;

    v0 = sub_0208712C(heapID, 7, 0, 7, SaveData_GetOptions(param1->saveData));

    if (param1->unk_34.unk_04 == 1) {
        {
            if (IsFullWidthChar(*param1->unk_34.unk_00) == 0) {
                Strbuf_CopyChars(v0->textInputStr, param1->unk_34.unk_00);
            } else {
                Strbuf_Clear(v0->textInputStr);
            }
        }

        param1->unk_34.unk_04 = 0;
    }

    return v0;
}

static void ov64_02230620 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 heapID)
{
    ov64_02230680(param0, param1, param2, heapID);
}

static int ov64_02230628 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    switch (param1->unk_04) {
    case 0:
        ov64_0223081C(param0, param1, param2);
        param1->unk_04 = 1;
        break;
    case 1:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov64_0222E074(param1, 0, 2);
            ov64_0223087C(param0, param2);
            return 1;
        }
        break;
    }

    return 0;
}

static void ov64_02230678 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_02230804(param0, param1, param2);
}

static void ov64_02230680 (UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    Window_Init(&param0->unk_00);
    Window_Add(param2->unk_00, &param0->unk_00, BG_LAYER_MAIN_3, 5, 13, 23, 8, 7, 1);

    Window_Init(&param0->unk_10);
    Window_Add(param2->unk_00, &param0->unk_10, BG_LAYER_MAIN_3, 9, 8, 15, 2, 7, 185);

    Window_FillTilemap(&param0->unk_00, 0);
    Window_FillTilemap(&param0->unk_10, 0);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    u64 friendCode = DWC_CreateFriendKey(WiFiList_GetUserData(SaveData_GetWiFiList(param1->saveData)));
    if (friendCode) {
        MessageLoader_GetStrbuf(param2->unk_218, 47, strbuf);
        u32 xOffset = (184 - Font_CalcMaxLineWidth(FONT_SYSTEM, strbuf, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        
        ov64_0222E7F8(param2, friendCode);
        MessageLoader_GetStrbuf(param2->unk_218, 51, fmtString);
        StringTemplate_Format(param2->unk_214, strbuf, fmtString);
        Text_AddPrinterWithParamsAndColor(&param0->unk_10, FONT_SYSTEM, strbuf, Font_CalcCenterAlignment(FONT_SYSTEM, strbuf, 0, 120), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        MessageLoader_GetStrbuf(param2->unk_218, 48, strbuf);
        u32 xOffset = (184 - Font_CalcMaxLineWidth(FONT_SYSTEM, strbuf, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);

    param0->unk_20 = Graphics_GetScrnDataFromOpenNARC(param2->unk_21C, 11, 0, &param0->unk_24, heapID);
}

static void ov64_02230804(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    Window_Remove(&param0->unk_00);
    Window_Remove(&param0->unk_10);
    Heap_Free(param0->unk_20);
}

static void ov64_0223081C(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    StringTemplate_SetPlayerName(param2->unk_214, 0, SaveData_GetTrainerInfo(param1->saveData));
    ov64_0222E738(param2, 46);

    Bg_LoadToTilemapRect(param2->unk_00, Unk_ov64_02232258[2], param0->unk_24->rawData, 0, 0, param0->unk_24->screenWidth / 8, param0->unk_24->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[2]);
    Window_ScheduleCopyToVRAM(&param0->unk_00);
    Window_ScheduleCopyToVRAM(&param0->unk_10);
}

static void ov64_0223087C(UnkStruct_ov64_02230620 *param0, UnkStruct_ov64_0222E21C *param1)
{
    ov64_0222E7C8(param1);

    Bg_FillTilemapRect(param1->unk_00, Unk_ov64_02232258[2], 0, 0, 0, 32, 24, 0);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[2]);

    Window_ClearAndScheduleCopyToVRAM(&param0->unk_00);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_10);

    Bg_FillTilemapRect(param1->unk_00, Unk_ov64_02232258[3], 0, 0, 0, 32, 24, 0);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[3]);
}

static void ov64_022308DC(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    param0->unk_10 = SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(param1->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_BATTLE_PARK);

    ov64_02230B1C(param0, param1, param2, heapID);
}

static int ov64_02230904(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BOOL v0;

    switch (param1->unk_04) {
    case 0:
        param0->unk_0E = 0;
        param0->unk_00 = 0;
    case 1:
        ov64_02230BD8(param0, param1, param2, heapID);
        param1->unk_04 = 2;
        break;
    case 2:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param1->unk_04 = 6;
        } else {
            if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
                ov64_02232138(param0, -1);
                param1->unk_04 = 3;
                param0->unk_08 = 2;
            } else if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
                ov64_02232138(param0, 1);
                param1->unk_04 = 3;
                param0->unk_08 = 3;
            } else if (gSystem.heldKeys & PAD_KEY_UP) {
                param1->unk_04 = 5;
                param0->unk_08 = 0;
                param0->unk_0C = 4;
            } else if (gSystem.heldKeys & PAD_KEY_DOWN) {
                param1->unk_04 = 5;
                param0->unk_08 = 1;
                param0->unk_0C = 4;
            }
        }

        if ((gSystem.heldKeys & (PAD_KEY_UP | PAD_KEY_DOWN)) == 0) {
            param0->unk_0E = 0;
        }
        break;
    case 3:
        ov64_02230A58(param0, param1, param2, heapID);
        ov64_02230A9C(param0, param1, param2, heapID);
        param1->unk_04 = 4;
        break;
    case 4:
        v0 = ov64_02230A9C(param0, param1, param2, heapID);

        if (v0 == 1) {
            param1->unk_04 = 2;
        }
        break;
    case 5:
        if (param0->unk_0E) {
            param0->unk_0C--;

            if (param0->unk_0C > 0) {
                break;
            }
        }

        v0 = ov64_02230EA8(param1, param0->unk_08);

        if (v0) {
            Sound_PlayEffect(SEQ_SE_DP_BUTTON3);

            ov64_02230C1C(param0, param2);
            ov64_0222E074(param1, 4, 1);

            param0->unk_0E = 1;
            return 1;
        }

        param1->unk_04 = 2;
        break;
    case 6:
        ov64_02230C1C(param0, param2);
        ov64_0222E074(param1, 1, 9);
        return 1;
    }

    return 0;
}

static void ov64_02230A50(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    ov64_02230BA0(param0, param1, param2);
}

static void ov64_02230A58(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3)
{
    u32 v0;

    param0->unk_04 = 0;

    ov64_0222EA48(param2, 0);

    if (param0->unk_08 == 2) {
        v0 = 2;
    } else {
        v0 = 1;
    }

    ov64_02230C50(param0, param1, param2, v0, param0->unk_00, param3);
    Sound_PlayEffect(SEQ_SE_DP_SELECT5);
}

static BOOL ov64_02230A9C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3)
{
    u32 v0;
    s32 v1;
    NNSG2dViewRect v2;
    u32 v3;
    static void (*v4[4])(UnkStruct_ov64_02230904 *, UnkStruct_ov64_0222E21C *, u32, u32) = {
        ov64_02230D98, NULL, ov64_02230DE4, NULL
    };

    if (param0->unk_04 > 4) {
        Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[2], 0, 0);
        Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[3], 0, 0);

        if (param0->unk_08 == 2) {
            v0 = 2;
        } else {
            v0 = 1;
        }

        ov64_02230C50(param0, param1, param2, 0, param0->unk_00, param3);
        ov64_0222EA48(param2, 1);

        return 1;
    }

    v1 = (param0->unk_04 * 256) / 4;

    if (param0->unk_08 == 2) {
        v1 = -v1;
    }

    Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[2], 0, v1);
    Bg_ScheduleScroll(param2->unk_00, Unk_ov64_02232258[3], 0, v1);

    if (param0->unk_04 % (4 / 4)) {
        v3 = param0->unk_04 / (4 / 4);

        if (v4[v3]) {
            v4[v3](param0, param2, param0->unk_00, param0->unk_02);
        }
    }

    param0->unk_04++;

    return 0;
}

static void ov64_02230B1C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    int v0, v1;
    static const u32 v2[3] = {
        1,
        (1 + 500),
        (1 + 500),
    };

    ov64_02230F24(&param0->unk_DC, param2, heapID);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_02230F78(&param0->unk_14[v0], param2, &Unk_ov64_0223221C[v0], v2[v0], heapID);

        for (v1 = 0; v1 < 7; v1++) {
            ov64_02230F9C(&param0->unk_14[v0], param2, v1, Unk_ov64_02232434[v1], Unk_ov64_02232470[v1], heapID);
        }
    }
}

static void ov64_02230BA0(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2)
{
    int v0, v1;

    for (v0 = 0; v0 < 3; v0++) {
        for (v1 = 0; v1 < 7; v1++) {
            ov64_02231058(&param0->unk_14[v0], v1);
        }

        ov64_02230F98(&param0->unk_14[v0]);
    }

    ov64_02230F60(&param0->unk_DC);
}

static void ov64_02230BD8(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    ov64_0222E880(param2, param1->saveData, param1->unk_08.unk_04[param1->unk_07], heapID);
    ov64_0222E738(param2, 13);
    ov64_02230C50(param0, param1, param2, 0, param0->unk_00, heapID);
    ov64_0222EA28(param2, 1);
}

static void ov64_02230C1C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1)
{
    int v0;

    ov64_0222EA28(param1, 0);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_02231144(&param0->unk_14[v0], param1);
    }

    ov64_02230D50(param0, param1);
    ov64_0222E7C8(param1);
}

static void ov64_02230C50(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3, u32 param4, u32 param5)
{
    if (param3 == 0) {
        param0->unk_00 = param4;

        ov64_02230C8C(param0, param2, param4, param5);
    }

    ov64_022310D4(&param0->unk_14[param3], param1, param2, param4, &param0->unk_DC, param5);
}

static void ov64_02230C8C(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3)
{
    u32 v0;

    if (param0->unk_10 == 1) {
        Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    } else {
        Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4 + 3, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    }

    v0 = 22 + (1 * param2) + 1;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 5, 0, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_02230D50(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1)
{
    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 0x10, 0x0, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_02230D98(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3)
{
    int v0 = 22 + (1 * param3) + 1;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 5, 1, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_02230DE4(UnkStruct_ov64_02230904 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3)
{
    int v0;

    if (param0->unk_10 == 1) {
        Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    } else {
        Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4 + 3, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    }

    v0 = 22 + (1 * param2) + 1;

    Bg_CopyToTilemapRect(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 5, 0, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param1->unk_00, Unk_ov64_02232258[0]);
}

static BOOL ov64_02230EA8(UnkStruct_ov64_0222E060 *param0, int param1)
{
    int v0;
    u32 v1;
    s32 v2;
    WiFiList *v3 = SaveData_GetWiFiList(param0->saveData);
    v2 = param0->unk_07;

    if (param1 == 0) {
        for (v0 = 0; v0 < param0->unk_08.unk_00 - 1; v0++) {
            v2--;

            if (v2 < 0) {
                v2 += param0->unk_08.unk_00;
            }

            v1 = sub_0202AD2C(v3, param0->unk_08.unk_04[v2], 8);

            if (v1 != 2) {
                param0->unk_07 = v2;
                return 1;
            }
        }
    } else {
        for (v0 = 0; v0 < param0->unk_08.unk_00 - 1; v0++) {
            v2 = (v2 + 1) % param0->unk_08.unk_00;

            v1 = sub_0202AD2C(v3, param0->unk_08.unk_04[v2], 8);

            if (v1 != 2) {
                param0->unk_07 = v2;
                return 1;
            }
        }
    }

    return 0;
}

static void ov64_02230F24(UnkStruct_ov64_02230F60 *param0, UnkStruct_ov64_0222E21C *param1, u32 heapID)
{
    static const u8 v0[7] = {
        4,
        5,
        6,
        7,
        8,
        9,
        10,
    };
    int v1;

    for (v1 = 0; v1 < 7; v1++) {
        param0->unk_00[v1] = Graphics_GetScrnDataFromOpenNARC(param1->unk_21C, v0[v1], 0, &param0->unk_1C[v1], heapID);
    }
}

static void ov64_02230F60(UnkStruct_ov64_02230F60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        Heap_Free(param0->unk_00[v0]);
    }
}

static void ov64_02230F78(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E21C *param1, const UnkStruct_ov64_0223221C *param2, u32 param3, u32 heapID)
{
    int v0;

    param0->unk_00 = *param2;
    param0->unk_08 = param3;

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_0C[v0] = NULL;
        param0->unk_28[v0] = 0;
    }
}

static void ov64_02230F98(UnkStruct_ov64_02230F98 *param0)
{
    return;
}

static void ov64_02230F9C(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E21C *param1, u32 param2, u32 param3, const UnkStruct_ov64_0223222E *param4, u32 heapID)
{
    int v0;
    u16 v1;

    param0->unk_0C[param2] = Window_New(heapID, param3);
    param0->unk_28[param2] = param3;

    v1 = param0->unk_08;

    for (v0 = 0; v0 < param3; v0++) {
        Window_Init(&param0->unk_0C[param2][v0]);
        Window_Add(param1->unk_00, &param0->unk_0C[param2][v0], Unk_ov64_02232258[3], MATH_ABS(param0->unk_00.unk_00) + param4[v0].unk_00, MATH_ABS(param0->unk_00.unk_02) + param4[v0].unk_01, param4[v0].unk_02, param4[v0].unk_03, 7, v1);
        Window_FillTilemap(&param0->unk_0C[param2][v0], 0);
        v1 += (param4[v0].unk_02 * param4[v0].unk_03);
    }
}

static void ov64_02231058(UnkStruct_ov64_02230F98 *param0, u32 param1)
{
    if (param0->unk_0C[param1]) {
        Windows_Delete(param0->unk_0C[param1], param0->unk_28[param1]);
        param0->unk_0C[param1] = NULL;
        param0->unk_28[param1] = 0;
    }
}

static void ov64_02231080(UnkStruct_ov64_02230F98 *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_28[param1]; v0++) {
        Window_ScheduleCopyToVRAM(&param0->unk_0C[param1][v0]);
    }
}

static void ov64_022310A4(UnkStruct_ov64_02230F98 *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_28[param1]; v0++) {
        Window_ClearAndScheduleCopyToVRAM(&param0->unk_0C[param1][v0]);
        Window_FillTilemap(&param0->unk_0C[param1][v0], 0);
    }
}

static void ov64_022310D4(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 param3, const UnkStruct_ov64_02230F60 *param4, u32 param5)
{
    static void (*v0[7])(UnkStruct_ov64_02230F98 *, UnkStruct_ov64_0222E060 *, UnkStruct_ov64_0222E21C *, u32) = {
        ov64_02231164,
        ov64_02231E94,
        ov64_02231528,
        ov64_02231664,
        ov64_02231A00,
        ov64_02231BE0,
        ov64_02231D58
    };

    ov64_02231144(param0, param2);

    Bg_LoadToTilemapRect(param2->unk_00, Unk_ov64_02232258[2], param4->unk_1C[param3]->rawData, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param4->unk_1C[param3]->screenWidth / 8, param4->unk_1C[param3]->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param2->unk_00, Unk_ov64_02232258[2]);

    v0[param3](param0, param1, param2, param5);
}

static void ov64_02231144(UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E21C *param1)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        ov64_022310A4(param0, v0);
    }

    ov64_02232038(param1, &param0->unk_00);
}

static void ov64_02231164 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    WiFiList *wifiList = SaveData_GetWiFiList(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 0, 0, param1, param2, 14, 0, 4, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E8C0(param2, param1->saveData, param1->unk_08.unk_04[param1->unk_07], heapID);
    ov64_022320B8(param0, 0, 0, param1, param2, 61, 128, 4, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 0, 0, param1, param2, 15, 0, 28, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_022320B8(param0, 0, 1, param1, param2, 16, 0, 4, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 1));
    ov64_022320B8(param0, 0, 1, param1, param2, 18, 64, 4, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 0, 1, param1, param2, 17, 0, 20, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 2));
    ov64_022320B8(param0, 0, 1, param1, param2, 18, 64, 20, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 0, 2, param1, param2, 19, 0, 4, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 3));
    ov64_022320B8(param0, 0, 2, param1, param2, 20, 128, 4, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    if (ov64_0223217C(param1, heapID)) {
        ov64_022320B8(param0, 0, 2, param1, param2, 21, 0, 20, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
        ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 9));
        ov64_022320B8(param0, 0, 2, param1, param2, 22, 128, 20, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);
    }

    ov64_022320B8(param0, 0, 3, param1, param2, 23, 0, 6, TEXT_COLOR(15, 2, 0), strbuf, fmtString, 0);

    if (ov64_0222E8FC(param2, param1->saveData, param1->unk_08.unk_04[param1->unk_07]) != 0) {
        ov64_022320B8(param0, 0, 3, param1, param2, 24, 224, 6, TEXT_COLOR(15, 2, 0), strbuf, fmtString, 2);
    } 

    UnkStruct_ov5_021DE5D0 v3;
    u32 v0 = sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 8);
    u32 v1 = sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 7);
    sub_02076AAC(sub_0205CA14(v0, v1, 1), 2, &v3);

    void *buffer = Heap_AllocFromHeap(heapID, 0xC80);
    sub_020133D4(v3.narcID, v3.unk_14, heapID, 0, 0, 10, 10, buffer);
    Window_BlitBitmapRect(&param0->unk_0C[0][4], buffer, 0, 0, 80, 80, 4, 4, 80, 80);
    Heap_Free(buffer);

    Graphics_LoadPalette(v3.narcID, v3.unk_08, PAL_LOAD_MAIN_BG, 320, 32, heapID);

    TextColor color;
    if (v0 == 0) {
        color = TEXT_COLOR(5, 6, 0);
    } else if (v0 == 1) {
        color = TEXT_COLOR(3, 4, 0);
    } else {
        color = TEXT_COLOR(1, 2, 0);
    }

    ov64_0222E880(param2, param1->saveData, param1->unk_08.unk_04[param1->unk_07], heapID);
    ov64_022320B8(param0, 0, 4, param1, param2, 6, 44, 88, color, strbuf, fmtString, 1);

    ov64_02231080(param0, 0);

    int x = Window_GetXPos(&param0->unk_0C[0][4]);
    int y = Window_GetYPos(&param0->unk_0C[0][4]);
    Bg_ChangeTilemapRectPalette(param2->unk_00, BG_LAYER_MAIN_3, x, y, 11, 11, 10);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02231528 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BattleFrontier *frontier = SaveData_GetBattleFrontier(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 2, 0, param1, param2, 25, 0, 8, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    u32 entryID;
    if (sub_02030698(frontier, 100, param1->unk_08.unk_04[param1->unk_07]) == 0) {
        entryID = 30;
    } else {
        entryID = 31;
    }
    
    ov64_022320B8(param0, 2, 0, param1, param2, entryID, 0, 32, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_0222E970(param2, sub_02030698(frontier, 113, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 2, 0, param1, param2, 38, 160, 32, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 2, 0, param1, param2, 32, 0, 56, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_0222E970(param2, sub_02030698(frontier, 112, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 2, 0, param1, param2, 38, 160, 56, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_02231080(param0, 2);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02231664 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BattleFrontier *frontier = SaveData_GetBattleFrontier(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 3, 0, param1, param2, 26, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_022320B8(param0, 3, 1, param1, param2, 33, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_022320B8(param0, 3, 1, param1, param2, 35, 224, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    u32 entryID;
    if (sub_02030698(frontier, 102, param1->unk_08.unk_04[param1->unk_07]) == 0) {
        entryID = 30;
    } else {
        entryID = 31;
    }

    ov64_022320B8(param0, 3, 2, param1, param2, entryID, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 115, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 2, param1, param2, 38, 112, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 1);

    ov64_0222E970(param2, sub_02030698(frontier, 117, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 2, param1, param2, 39, 224, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 3, 2, param1, param2, 32, 0, 16, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 114, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 2, param1, param2, 38, 112, 16, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 1);

    ov64_0222E970(param2, sub_02030698(frontier, 116, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 2, param1, param2, 39, 224, 16, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 3, 3, param1, param2, 34, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_022320B8(param0, 3, 3, param1, param2, 35, 224, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    if (sub_02030698(frontier, 104, param1->unk_08.unk_04[param1->unk_07]) == 0) {
        entryID = 30;
    } else {
        entryID = 31;
    }

    ov64_022320B8(param0, 3, 4, param1, param2, entryID, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 119, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 4, param1, param2, 38, 112, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 1);

    ov64_0222E970(param2, sub_02030698(frontier, 121, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 4, param1, param2, 39, 224, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 3, 4, param1, param2, 32, 0, 16, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 118, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 4, param1, param2, 38, 112, 16, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 1);

    ov64_0222E970(param2, sub_02030698(frontier, 120, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 3, 4, param1, param2, 39, 224, 16, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_02231080(param0, 3);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02231A00 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BattleFrontier *frontier = SaveData_GetBattleFrontier(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 4, 0, param1, param2, 27, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);
    ov64_022320B8(param0, 4, 0, param1, param2, 36, 224, 20, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    u32 entryID;
    if (sub_02030698(frontier, 108, param1->unk_08.unk_04[param1->unk_07]) == 0) {
        entryID = 30;
    } else {
        entryID = 31;
    }

    ov64_022320B8(param0, 4, 0, param1, param2, entryID, 0, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 135, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 4, 0, param1, param2, 41, 112, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 1);

    ov64_0222E970(param2, sub_02030698(frontier, 136, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 4, 0, param1, param2, 40, 224, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 4, 0, param1, param2, 32, 0, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 134, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 4, 0, param1, param2, 41, 112, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 1);

    ov64_0222E970(param2, sub_02030698(frontier, 138, param1->unk_08.unk_04[param1->unk_07])); 
    ov64_022320B8(param0, 4, 0, param1, param2, 40, 224, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_02231080(param0, 4);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02231BE0 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BattleFrontier *frontier = SaveData_GetBattleFrontier(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 5, 0, param1, param2, 28, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    Strbuf *speciesName = MessageUtil_SpeciesName(sub_02030698(frontier, 124, param1->unk_08.unk_04[param1->unk_07]), heapID);
    Text_AddPrinterWithParamsAndColor(&param0->unk_0C[5][0], FONT_SYSTEM, speciesName, 0, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(speciesName);

    u32 entryID;
    if (sub_02030698(frontier, 106, param1->unk_08.unk_04[param1->unk_07]) == 0) {
        entryID = 30;
    } else {
        entryID = 31;
    }

    ov64_022320B8(param0, 5, 0, param1, param2, entryID, 0, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 123, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 5, 0, param1, param2, 38, 160, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 5, 0, param1, param2, 32, 0, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 122, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 5, 0, param1, param2, 38, 160, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_02231080(param0, 5);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02231D58 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BattleFrontier *frontier = SaveData_GetBattleFrontier(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 6, 0, param1, param2, 29, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    u32 entryID;
    if (sub_02030698(frontier, 110, param1->unk_08.unk_04[param1->unk_07]) == 0) {
        entryID = 30;
    } else {
        entryID = 31;
    }

    ov64_022320B8(param0, 6, 0, param1, param2, entryID, 0, 24, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 143, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 6, 0, param1, param2, 42, 160, 24, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_022320B8(param0, 6, 0, param1, param2, 32, 0, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_02030698(frontier, 142, param1->unk_08.unk_04[param1->unk_07]));
    ov64_022320B8(param0, 6, 0, param1, param2, 42, 160, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_02231080(param0, 6);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02231E94 (UnkStruct_ov64_02230F98 *param0, UnkStruct_ov64_0222E060 *param1, UnkStruct_ov64_0222E21C *param2, u32 heapID)
{
    BattleFrontier *unused = SaveData_GetBattleFrontier(param1->saveData);
    WiFiList *wifiList = SaveData_GetWiFiList(param1->saveData);

    Strbuf *strbuf = Strbuf_Init(128, heapID);
    Strbuf *fmtString = Strbuf_Init(128, heapID);

    ov64_022320B8(param0, 1, 0, param1, param2, 43, 0, 0, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E990(param2, 0);
    ov64_022320B8(param0, 1, 0, param1, param2, 44, 0, 24, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 10));
    ov64_022320B8(param0, 1, 0, param1, param2, 45, 160, 24, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_0222E990(param2, 1);
    ov64_022320B8(param0, 1, 0, param1, param2, 44, 0, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 11));
    ov64_022320B8(param0, 1, 0, param1, param2, 45, 160, 48, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_0222E990(param2, 2);
    ov64_022320B8(param0, 1, 0, param1, param2, 44, 0, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 0);

    ov64_0222E970(param2, sub_0202AD2C(wifiList, param1->unk_08.unk_04[param1->unk_07], 12));
    ov64_022320B8(param0, 1, 0, param1, param2, 45, 160, 72, TEXT_COLOR(1, 2, 0), strbuf, fmtString, 2);

    ov64_02231080(param0, 1);

    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void ov64_02232038(UnkStruct_ov64_0222E21C *param0, const UnkStruct_ov64_0223221C *param1)
{
    Bg_FillTilemapRect(param0->unk_00, Unk_ov64_02232258[2], 0, MATH_ABS(param1->unk_00), MATH_ABS(param1->unk_02), 32, 24, 0);
    Bg_ScheduleTilemapTransfer(param0->unk_00, Unk_ov64_02232258[2]);
    Bg_FillTilemapRect(param0->unk_00, Unk_ov64_02232258[3], 0, MATH_ABS(param1->unk_00), MATH_ABS(param1->unk_02), 32, 24, 0);
    Bg_ScheduleTilemapTransfer(param0->unk_00, Unk_ov64_02232258[3]);
}

static void ov64_022320B8 (UnkStruct_ov64_02230F98 *param0, u32 param1, u32 param2, UnkStruct_ov64_0222E060 *param3, UnkStruct_ov64_0222E21C *param4, u32 entryID, u32 xOffset, u32 yOffset, TextColor color, Strbuf *strbuf, Strbuf *fmtString, u32 param11)
{
    MessageLoader_GetStrbuf(param4->unk_218, entryID, fmtString);
    StringTemplate_Format(param4->unk_214, strbuf, fmtString);

    switch (param11) {
    case 1:
        xOffset -= ((Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0) + 1) / 2);
        break;
    case 2:
        xOffset -= Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
        break;
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_0C[param1][param2], FONT_SYSTEM, strbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);

}

static void ov64_02232138(UnkStruct_ov64_02230904 *param0, s32 param1)
{
    int v0;

    if (param0->unk_10 == 1) {
        v0 = 7;
    } else {
        v0 = 2;
    }

    if (param1 > 0) {
        param0->unk_02 = param0->unk_00;
        param0->unk_00 = (param0->unk_00 + param1) % v0;
    } else if (param1 < 0) {
        param0->unk_02 = param0->unk_00;
        param0->unk_00 = param0->unk_00 + param1;

        if (param0->unk_00 < 0) {
            param0->unk_00 += v0;
        }
    }
}

static BOOL ov64_0223217C(UnkStruct_ov64_0222E060 *param0, u32 heapID)
{
    if (!Bag_GetItemQuantity(SaveData_GetBag(param0->saveData), ITEM_POFFIN_CASE, heapID)) {
        return 0;
    }

    return 1;
}

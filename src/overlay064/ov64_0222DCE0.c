#include "overlay064/ov64_0222DCE0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02089438.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay063/ov63_0222AE60.h"
#include "overlay063/struct_ov63_0222AE60_decl.h"
#include "overlay063/struct_ov63_0222BB38_decl.h"
#include "overlay064/struct_ov64_022302EC.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "ascii_util.h"
#include "bag.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_text.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202309C.h"
#include "unk_0202ACE0.h"
#include "unk_0203061C.h"
#include "unk_0203909C.h"
#include "unk_0205C980.h"
#include "unk_0208694C.h"
#include "unk_020890F4.h"
#include "vars_flags.h"

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
    void * unk_00[2];
    NNSG2dScreenData * unk_08[2];
} UnkStruct_ov64_022300E4;

typedef struct {
    Strbuf* unk_00;
    Strbuf* unk_04;
} UnkStruct_ov64_0222E060_sub1;

typedef struct {
    const u16 * unk_00;
    BOOL unk_04;
} UnkStruct_ov64_0222E060_sub2;

typedef struct {
    u32 unk_00;
    u8 unk_04[32];
} UnkStruct_ov64_022301B4;

typedef struct {
    SaveData * unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    s8 unk_07;
    UnkStruct_ov64_022301B4 unk_08;
    UnkStruct_ov64_0222E060_sub1 unk_2C;
    UnkStruct_ov64_0222E060_sub2 unk_34;
} UnkStruct_ov64_0222E060;

typedef struct {
    BGL * unk_00;
    CellActorCollection * unk_04;
    NNSG2dRenderSurface unk_08;
    UnkStruct_0200C738 unk_78;
    SpriteResourceCollection * unk_204[4];
    StringTemplate * unk_214;
    MessageLoader * unk_218;
    NARC * unk_21C;
    Window unk_220;
    Strbuf* unk_230;
    Strbuf* unk_234;
    u32 unk_238;
    CellActorResourceData unk_23C;
    SpriteResource * unk_260[4];
    CellActor * unk_270[2];
    UnkStruct_ov64_022300E4 unk_278;
} UnkStruct_ov64_0222E21C;

typedef struct {
    u32 unk_00;
    Window unk_04;
    void * unk_14;
    NNSG2dScreenData * unk_18;
    Window unk_1C;
    UIControlData * unk_2C;
    u32 unk_30;
    u32 unk_34;
    Strbuf* unk_38;
} UnkStruct_ov64_0222F038;

typedef struct {
    UnkStruct_ov64_0223221C unk_00;
    Window unk_08;
    UnkStruct_ov63_0222BB38 * unk_18[8];
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
    UnkStruct_ov63_0222AE60 * unk_B0;
    Window unk_B4;
    Window unk_C4;
    Strbuf* unk_D4;
    u32 unk_D8;
    u32 unk_DC;
    Window unk_E0;
    ResourceMetadata * unk_F0[2];
    BmpList * unk_F8;
    UIControlData * unk_FC;
    s32 unk_100;
    CellActor * unk_104;
    u32 unk_108;
} UnkStruct_ov64_0222F0C4;

typedef struct {
    OverlayManager * unk_00;
    UnkStruct_0208737C * unk_04;
    UnkStruct_02089438 * unk_08;
} UnkStruct_ov64_02230444;

typedef struct {
    Window unk_00;
    Window unk_10;
    void * unk_20;
    NNSG2dScreenData * unk_24;
} UnkStruct_ov64_02230620;

typedef struct {
    void * unk_00[7];
    NNSG2dScreenData * unk_1C[7];
} UnkStruct_ov64_02230F60;

typedef struct {
    UnkStruct_ov64_0223221C unk_00;
    u32 unk_08;
    Window * unk_0C[7];
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

static void ov64_0222DF3C(void * param0);
static void ov64_0222DF48(UnkStruct_ov64_0222DFD0 * param0, u32 param1);
static void ov64_0222DFD0(UnkStruct_ov64_0222DFD0 * param0);
static void ov64_0222E040(UnkStruct_ov64_0222E060 * param0, void * param1, u32 param2);
static void ov64_0222E060(UnkStruct_ov64_0222E060 * param0);
static void ov64_0222E074(UnkStruct_ov64_0222E060 * param0, u8 param1, u8 param2);
static void ov64_0222E07C(UnkStruct_ov64_0222E060 * param0, const Strbuf *param1, const Strbuf *param2);
static u32 ov64_0222E09C(UnkStruct_ov64_0222E060 * param0, Strbuf *param1, Strbuf *param2);
static void ov64_0222E158(UnkStruct_ov64_0222E060 * param0, const u16 * param1);
static void ov64_0222E160(UnkStruct_ov64_0222E060 * param0, u32 param1);
static void ov64_0222E164(UnkStruct_ov64_0222E060 * param0);
static void ov64_0222E1A4(UnkStruct_ov64_0222E21C * param0, const UnkStruct_ov64_0222E060 * param1, u32 param2);
static void ov64_0222E21C(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E228(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E23C(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E270(void);
static void ov64_0222E290(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E3AC(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E3D8(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E570(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E5D8(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E604(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E620(UnkStruct_ov64_0222E21C * param0, const UnkStruct_ov64_0222E060 * param1, u32 param2);
static void ov64_0222E6B4(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E6D8(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E71C(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E738(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E7C8(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222E7F8(UnkStruct_ov64_0222E21C * param0, u64 param1);
static void ov64_0222E880(UnkStruct_ov64_0222E21C * param0, SaveData * param1, u32 param2, u32 param3);
static void ov64_0222E8C0(UnkStruct_ov64_0222E21C * param0, SaveData * param1, u32 param2, u32 param3);
static BOOL ov64_0222E8FC(UnkStruct_ov64_0222E21C * param0, SaveData * param1, u32 param2);
static void ov64_0222E970(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E990(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222E9A4(UnkStruct_ov64_0222E21C * param0, u32 param1);
static void ov64_0222EA0C(UnkStruct_ov64_0222E21C * param0);
static void ov64_0222EA28(UnkStruct_ov64_0222E21C * param0, BOOL param1);
static void ov64_0222EA48(UnkStruct_ov64_0222E21C * param0, BOOL param1);
static void ov64_0222EA68(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static int ov64_0222EA70(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222EC8C(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0222EC94(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222EE00(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0222EE20(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static BOOL ov64_0222EE84(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0222EF08(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_0222EF4C(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1);
static void ov64_0222EF64(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_0222EFBC(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static BOOL ov64_0222F038(const UnkStruct_ov64_0222F038 * param0);
static void ov64_0222F050(UnkStruct_ov64_0222F038 * param0);
static BOOL ov64_0222F068(UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1);
static void ov64_0222F09C(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static int ov64_0222F0C4(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222F40C(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0222F414(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222F5F4(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0222F668(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222F6E8(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static u32 ov64_0222F798(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0222F8F8(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static BOOL ov64_0222F948(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222FA70(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static u32 ov64_0222FB24(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static BOOL ov64_0222FBA4(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222FC1C(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static BOOL ov64_0222FC48(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_0222FC80(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, u32 param4, u32 param5, u32 param6);
static void ov64_0222FCF0(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2);
static void ov64_0222FD7C(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static void ov64_0222FDD0(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static void ov64_0222FE5C(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, int param2);
static void ov64_0222FE70(UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static BOOL ov64_0222FEFC(const UnkStruct_ov64_0222F0C4 * param0);
static void ov64_0222FF18(UnkStruct_ov64_0222F0C4 * param0);
static u32 ov64_0222FF38(const UnkStruct_ov64_0222F0C4 * param0);
static void ov64_0222FF48(BmpList * param0, u32 param1, u8 param2);
static void ov64_0222FF5C(UnkStruct_ov64_0222F0C4 * param0);
static BOOL ov64_02230008(UnkStruct_ov64_0222F0C4 * param0);
static void ov64_02230044(UnkStruct_ov64_0222F0C4 * param0);
static void ov64_02230074(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_0223221C * param2, u32 param3, u32 param4);
static void ov64_022300D8(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_022300E4(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2);
static void ov64_02230130(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2);
static void ov64_022301B4(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, UnkStruct_ov63_0222AE60 * param3, const UnkStruct_ov64_022300E4 * param4, const UnkStruct_ov64_022301B4 * param5, u32 param6, u32 param7);
static void ov64_02230240(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2);
static void ov64_022302CC(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_022302EC(UnkStruct_ov64_02230074 * param0, UnkStruct_ov63_0222AE60 * param1, UnkStruct_ov64_0222E21C * param2, const UnkStruct_ov64_022300E4 * param3, u32 param4, UnkStruct_0202B370 * param5, u32 param6, u32 param7);
static void ov64_022303CC(UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2, u32 param3);
static void ov64_02230444(UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static int ov64_0223044C(UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222DFD0 * param1, UnkStruct_ov64_0222E060 * param2, UnkStruct_ov64_0222E21C * param3, u32 param4);
static void ov64_022305CC(UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_022305D4(UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_022305D8(UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static UnkStruct_0208737C * ov64_022305DC(UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, u32 param2);
static void ov64_02230620(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static int ov64_02230628(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_02230678(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_02230680(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02230804(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0223081C(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_0223087C(UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_022308DC(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static int ov64_02230904(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02230A50(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_02230A58(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static BOOL ov64_02230A9C(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02230B1C(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02230BA0(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2);
static void ov64_02230BD8(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02230C1C(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_02230C50(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, u32 param4, u32 param5);
static void ov64_02230C8C(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static void ov64_02230D50(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_02230D98(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static void ov64_02230DE4(UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3);
static BOOL ov64_02230EA8(UnkStruct_ov64_0222E060 * param0, int param1);
static void ov64_02230F24(UnkStruct_ov64_02230F60 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2);
static void ov64_02230F60(UnkStruct_ov64_02230F60 * param0);
static void ov64_02230F78(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_0223221C * param2, u32 param3, u32 param4);
static void ov64_02230F98(UnkStruct_ov64_02230F98 * param0);
static void ov64_02230F9C(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3, const UnkStruct_ov64_0223222E * param4, u32 param5);
static void ov64_02231058(UnkStruct_ov64_02230F98 * param0, u32 param1);
static void ov64_02231080(UnkStruct_ov64_02230F98 * param0, u32 param1);
static void ov64_022310A4(UnkStruct_ov64_02230F98 * param0, u32 param1);
static void ov64_022310D4(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, const UnkStruct_ov64_02230F60 * param4, u32 param5);
static void ov64_02231144(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E21C * param1);
static void ov64_02231164(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02231528(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02231664(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02231A00(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02231BE0(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02231D58(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02231E94(UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3);
static void ov64_02232038(UnkStruct_ov64_0222E21C * param0, const UnkStruct_ov64_0223221C * param1);
static void ov64_022320B8(UnkStruct_ov64_02230F98 * param0, u32 param1, u32 param2, UnkStruct_ov64_0222E060 * param3, UnkStruct_ov64_0222E21C * param4, u32 param5, u32 param6, u32 param7, u32 param8, Strbuf *param9, Strbuf *param10);
static void ov64_02232138(UnkStruct_ov64_02230904 * param0, s32 param1);
static BOOL ov64_0223217C(UnkStruct_ov64_0222E060 * param0, u32 param1);

static const UnkStruct_ov64_0223221C Unk_ov64_0223221C[3] = {
    {0x0, 0x0, 0x20, 0x18},
    {0x20, 0x0, 0x20, 0x18},
    {0xFFFFFFFFFFFFFFE0, 0x0, 0x20, 0x18}
};

static const UnkStruct_ov97_0222DB78 Unk_ov64_02232390[5] = {
    {
        0x0,
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
        0x0
    },
    {
        0x0,
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
        0x0
    },
    {
        0x0,
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
        0x0
    },
    {
        0x0,
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
        0x0
    },
    {
        0x0,
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
        0x0
    }
};

static const u32 Unk_ov64_02232258[5] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static NNSG2dViewRect Unk_ov64_02232460 = {
    {0x0, (FX32_CONST(256))},
    {(255 << FX32_SHIFT), (192 << FX32_SHIFT)}
};

static const UnkStruct_ov61_0222C884 Unk_ov64_022321CA = {
    0x1,
    0x19,
    0xD,
    0x6,
    0x4,
    0x7,
    0xDC
};

static const UnkStruct_ov64_02232324 Unk_ov64_02232324[9] = {
    {
        {0x1, 0x4, 0xF, 0x4},
        0x2
    },
    {
        {0x1, 0x8, 0xF, 0x4},
        0x2
    },
    {
        {0x1, 0xC, 0xF, 0x4},
        0x2
    },
    {
        {0x1, 0x10, 0xF, 0x4},
        0x2
    },
    {
        {0x10, 0x4, 0xF, 0x4},
        0x2
    },
    {
        {0x10, 0x8, 0xF, 0x4},
        0x2
    },
    {
        {0x10, 0xC, 0xF, 0x4},
        0x2
    },
    {
        {0x10, 0x10, 0xF, 0x4},
        0x2
    },
    {
        {0xB, 0x14, 0xA, 0x4},
        0x0
    }
};

static const u8 Unk_ov64_02232428[4] = {
    0x0,
    0x1,
    0x2,
    0x3
};

static const UnkStruct_ov64_022322E4 Unk_ov64_022322E4[2][4] = {
    {
        {0x8, (u32)7},
        {0x9, (u32)10},
        {0xA, (u32)15},
        {0xB, (u32)2}
    },
    {
        {0x38, (u32)21},
        {0x9, (u32)10},
        {0xA, (u32)15},
        {0xB, (u32)2}
    }
};

static const UnkStruct_ov84_02240FA8 Unk_ov64_0223226C = {
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
    {0xE, 0x4, 0x10, 0x6},
    {0x16, 0xA, 0x8, 0x5},
    {0xE, 0xF, 0x11, 0x6},
    {0x2, 0x15, 0x1C, 0x3},
    {0x1, 0x5, 0xB, 0xD}
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321B4[1] = {
    {0x2, 0x4, 0x14, 0x9}
};

static const UnkStruct_ov64_0223222E Unk_ov64_02232242[5] = {
    {0x2, 0x5, 0xE, 0x2},
    {0x2, 0x8, 0x1C, 0x2},
    {0x2, 0xB, 0x1C, 0x4},
    {0x2, 0x10, 0x1C, 0x2},
    {0x2, 0x13, 0x1C, 0x4}
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321B0[1] = {
    {0x2, 0x5, 0x1C, 0xB}
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321B8[1] = {
    {0x2, 0x5, 0x14, 0xB}
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321A8[1] = {
    {0x2, 0x5, 0x14, 0xB}
};

static const UnkStruct_ov64_0223222E Unk_ov64_022321AC[1] = {
    {0x2, 0x5, 0x16, 0xB}
};

static const UnkStruct_ov64_0223222E * Unk_ov64_02232470[7] = {
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

int ov64_0222DCE0 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov64_0222DFD0 * v0;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);
    Heap_Create(3, 52, 0x70000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov64_0222DFD0), 52);
    memset(v0, 0, sizeof(UnkStruct_ov64_0222DFD0));

    ov64_0222E040(&v0->unk_28C, OverlayManager_Args(param0), 52);
    ov64_0222E1A4(&v0->unk_04, &v0->unk_28C, 52);
    ov64_0222EA68(&v0->unk_2C8, &v0->unk_28C, &v0->unk_04, 52);
    ov64_0222F09C(&v0->unk_304, &v0->unk_28C, &v0->unk_04, 52);
    ov64_02230444(&v0->unk_410, &v0->unk_28C, &v0->unk_04, 52);
    ov64_02230620(&v0->unk_41C, &v0->unk_28C, &v0->unk_04, 52);
    ov64_022308DC(&v0->unk_444, &v0->unk_28C, &v0->unk_04, 52);

    SetMainCallback(ov64_0222DF3C, v0);
    DisableHBlank();

    return 1;
}

int ov64_0222DDAC (OverlayManager * param0, int * param1)
{
    UnkStruct_ov64_0222DFD0 * v0 = OverlayManager_Data(param0);
    int v1;

    switch (*param1) {
    case 0:

        switch (v0->unk_00) {
        case 0:
            v1 = ov64_0222EA70(&v0->unk_2C8, &v0->unk_28C, &v0->unk_04, 52);
            break;
        case 1:
            v1 = ov64_0222F0C4(&v0->unk_304, &v0->unk_28C, &v0->unk_04, 52);
            break;
        case 2:
            v1 = ov64_0223044C(&v0->unk_410, v0, &v0->unk_28C, &v0->unk_04, 52);
            break;
        case 3:
            v1 = ov64_02230628(&v0->unk_41C, &v0->unk_28C, &v0->unk_04);
            break;
        case 4:
            v1 = ov64_02230904(&v0->unk_444, &v0->unk_28C, &v0->unk_04, 52);
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

int ov64_0222DEA4 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov64_0222DFD0 * v0 = OverlayManager_Data(param0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    ov64_0222EC8C(&v0->unk_2C8, &v0->unk_28C, &v0->unk_04);
    ov64_0222F40C(&v0->unk_304, &v0->unk_28C, &v0->unk_04);
    ov64_022305CC(&v0->unk_410, &v0->unk_28C, &v0->unk_04);
    ov64_02230678(&v0->unk_41C, &v0->unk_28C, &v0->unk_04);
    ov64_02230A50(&v0->unk_444, &v0->unk_28C, &v0->unk_04);

    ov64_0222E23C(&v0->unk_04);
    ov64_0222E060(&v0->unk_28C);

    OverlayManager_FreeData(param0);
    Heap_Destroy(52);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));

    return 1;
}

static void ov64_0222DF3C (void * param0)
{
    UnkStruct_ov64_0222DFD0 * v0 = param0;
    ov64_0222E228(&v0->unk_04);
}

static void ov64_0222DF48 (UnkStruct_ov64_0222DFD0 * param0, u32 param1)
{
    ov64_0222E1A4(&param0->unk_04, &param0->unk_28C, param1);

    ov64_0222EC94(&param0->unk_2C8, &param0->unk_28C, &param0->unk_04, param1);
    ov64_0222F414(&param0->unk_304, &param0->unk_28C, &param0->unk_04, param1);
    ov64_022305D4(&param0->unk_410, &param0->unk_28C, &param0->unk_04, param1);
    ov64_02230680(&param0->unk_41C, &param0->unk_28C, &param0->unk_04, param1);
    ov64_02230B1C(&param0->unk_444, &param0->unk_28C, &param0->unk_04, param1);

    SetMainCallback(ov64_0222DF3C, param0);
    DisableHBlank();
}

static void ov64_0222DFD0 (UnkStruct_ov64_0222DFD0 * param0)
{
    SetMainCallback(NULL, NULL);
    DisableHBlank();

    ov64_0222EE00(&param0->unk_2C8, &param0->unk_28C, &param0->unk_04);
    ov64_0222F5F4(&param0->unk_304, &param0->unk_28C, &param0->unk_04);
    ov64_022305D8(&param0->unk_410, &param0->unk_28C, &param0->unk_04);
    ov64_02230804(&param0->unk_41C, &param0->unk_28C, &param0->unk_04);
    ov64_02230BA0(&param0->unk_444, &param0->unk_28C, &param0->unk_04);
    ov64_0222E23C(&param0->unk_04);
}

static void ov64_0222E040 (UnkStruct_ov64_0222E060 * param0, void * param1, u32 param2)
{
    param0->unk_00 = param1;
    param0->unk_2C.unk_00 = Strbuf_Init(128, param2);
    param0->unk_2C.unk_04 = Strbuf_Init(128, param2);
}

static void ov64_0222E060 (UnkStruct_ov64_0222E060 * param0)
{
    Strbuf_Free(param0->unk_2C.unk_00);
    Strbuf_Free(param0->unk_2C.unk_04);
}

static void ov64_0222E074 (UnkStruct_ov64_0222E060 * param0, u8 param1, u8 param2)
{
    param0->unk_05 = param1;
    param0->unk_06 = param2;
}

static void ov64_0222E07C (UnkStruct_ov64_0222E060 * param0, const Strbuf *param1, const Strbuf *param2)
{
    if (param1) {
        Strbuf_Copy(param0->unk_2C.unk_00, param1);
    }

    if (param2) {
        Strbuf_Copy(param0->unk_2C.unk_04, param2);
    }
}

static u32 ov64_0222E09C (UnkStruct_ov64_0222E060 * param0, Strbuf *param1, Strbuf *param2)
{
    int v0;
    UnkStruct_0202B370 * v1;
    BOOL v2;
    BOOL v3;
    u64 v4;
    u64 v5;
    DWCFriendData * v6 = NULL;
    DWCUserData * v7 = NULL;
    int v8;
    int v9;

    v1 = sub_0202B370(param0->unk_00);
    v5 = DWC_CreateFriendKey(sub_0202AD28(v1));

    for (v0 = 0; v0 < 32; v0++) {
        v2 = sub_0202AF78(v1, v0);

        if (v2 == 0) {
            v4 = Strbuf_AtoI(param1, &v3);

            if ((v3 == 1) && (v4 != v5)) {
                v7 = sub_0202AD28(v1);

                if (!DWC_CheckFriendKey(v7, v4)) {
                    return 1;
                }

                v8 = sub_02039140(param0->unk_00, v4, &v9);

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

static void ov64_0222E158 (UnkStruct_ov64_0222E060 * param0, const u16 * param1)
{
    param0->unk_34.unk_00 = param1;
    param0->unk_34.unk_04 = 1;
}

static void ov64_0222E160 (UnkStruct_ov64_0222E060 * param0, u32 param1)
{
    param0->unk_07 = param1;
}

static void ov64_0222E164 (UnkStruct_ov64_0222E060 * param0)
{
    int v0;
    UnkStruct_0202B370 * v1;

    memset(&param0->unk_08, 0, sizeof(UnkStruct_ov64_022301B4));

    v1 = sub_0202B370(param0->unk_00);

    param0->unk_08.unk_00 = 0;

    for (v0 = 0; v0 < (8 * 4); v0++) {
        if (sub_0202AF78(v1, v0) == 1) {
            param0->unk_08.unk_04[param0->unk_08.unk_00] = v0;
            param0->unk_08.unk_00++;
        }
    }
}

static void ov64_0222E1A4 (UnkStruct_ov64_0222E21C * param0, const UnkStruct_ov64_0222E060 * param1, u32 param2)
{
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();
    param0->unk_21C = NARC_ctor(NARC_INDEX_GRAPHIC__PL_WIFINOTE, param2);

    ov64_0222E270();
    ov64_0222E290(param0, param2);
    ov64_0222E3D8(param0, param2);
    ov64_0222E5D8(param0, param2);
    ov64_0222E620(param0, param1, param2);
    ov64_0222E9A4(param0, param2);
    ov64_0222E6D8(param0, param2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
}

static void ov64_0222E21C (UnkStruct_ov64_0222E21C * param0)
{
    CellActorCollection_Update(param0->unk_04);
}

static void ov64_0222E228 (UnkStruct_ov64_0222E21C * param0)
{
    sub_0201C2B8(param0->unk_00);
    sub_0201DCAC();
    sub_0200A858();
}

static void ov64_0222E23C (UnkStruct_ov64_0222E21C * param0)
{
    ov64_0222EA0C(param0);
    ov64_0222E71C(param0);
    ov64_0222E6B4(param0);
    ov64_0222E604(param0);
    ov64_0222E570(param0);
    ov64_0222E3AC(param0);

    NARC_dtor(param0->unk_21C);
}

static void ov64_0222E270 (void)
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
        GX_VRAM_TEX_NONE, GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov64_0222E290 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    int v0;

    param0->unk_00 = sub_02018340(param1);

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v1);
    }

    for (v0 = 0; v0 < 5; v0++) {
        sub_020183C4(param0->unk_00, Unk_ov64_02232258[v0], &Unk_ov64_02232390[v0], 0);
        sub_02019690(Unk_ov64_02232258[v0], 32, 0, param1);
        sub_02019EBC(param0->unk_00, Unk_ov64_02232258[v0]);
    }

    sub_02007130(param0->unk_21C, 0, 0, 0, ((6 + 1) - 0) * 32, param1);
    sub_02007130(param0->unk_21C, 0, 4, 0, ((4 + 1) - 0) * 32, param1);

    sub_020070E8(param0->unk_21C, 18, param0->unk_00, Unk_ov64_02232258[0], 0, 0, 0, param1);
    sub_020070E8(param0->unk_21C, 18, param0->unk_00, Unk_ov64_02232258[2], 0, 0, 0, param1);
    sub_020070E8(param0->unk_21C, 13, param0->unk_00, Unk_ov64_02232258[4], 0, 0, 0, param1);

    sub_0200710C(param0->unk_21C, 12, param0->unk_00, Unk_ov64_02232258[0], 0, 0, 0, param1);
    sub_0200710C(param0->unk_21C, 14, param0->unk_00, Unk_ov64_02232258[4], 0, 0, 0, param1);
}

static void ov64_0222E3AC (UnkStruct_ov64_0222E21C * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_02019044(param0->unk_00, Unk_ov64_02232258[v0]);
    }

    Heap_FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;
}

static void ov64_0222E3D8 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    int v0;
    BOOL v1;

    NNS_G2dInitOamManagerModule();

    sub_0201DBEC(16, param1);
    sub_0200A784(0, 126, 0, 30, 0, 126, 0, 30, param1);

    {
        UnkStruct_ov22_022559F8 v2 = {
            64, 0x14000, 0, 0
        };

        v2.unk_0C = param1;
        sub_0201E88C(&v2, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    sub_0201F834(64, param1);
    sub_0201E994();
    sub_0201F8E4();

    param0->unk_04 = sub_020095C4(64, &param0->unk_78, param1);

    sub_0200A8B0(&param0->unk_08, &Unk_ov64_02232460, NNS_G2D_SURFACETYPE_MAIN2D, &param0->unk_78.unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_204[v0] = SpriteResourceCollection_New(64, v0, param1);
    }

    param0->unk_260[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_204[0], param0->unk_21C, 15, 0, 100, NNS_G2D_VRAM_TYPE_2DMAIN, param1);
    param0->unk_260[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_204[1], param0->unk_21C, 0, 0, 100, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param1);
    param0->unk_260[2] = SpriteResourceCollection_AddFrom(param0->unk_204[2], param0->unk_21C, 16, 0, 100, 2, param1);
    param0->unk_260[3] = SpriteResourceCollection_AddFrom(param0->unk_204[3], param0->unk_21C, 17, 0, 100, 3, param1);

    v1 = sub_0200A3DC(param0->unk_260[0]);
    GF_ASSERT(v1);

    v1 = sub_0200A640(param0->unk_260[1]);
    GF_ASSERT(v1);

    SpriteResource_ReleaseData(param0->unk_260[0]);
    SpriteResource_ReleaseData(param0->unk_260[1]);
    sub_020093B4(&param0->unk_23C, 100, 100, 100, 100, 0xffffffff, 0xffffffff, 0, 0, param0->unk_204[0], param0->unk_204[1], param0->unk_204[2], param0->unk_204[3], NULL, NULL);
}

static void ov64_0222E570 (UnkStruct_ov64_0222E21C * param0)
{
    int v0;

    sub_0200A4E4(param0->unk_260[0]);
    sub_0200A6DC(param0->unk_260[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Remove(param0->unk_204[v0], param0->unk_260[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_204[v0]);
    }

    CellActorCollection_Delete(param0->unk_04);
    sub_0201E958();
    sub_0201F8B4();
    sub_0200A878();
    sub_0201DC3C();
}

static void ov64_0222E5D8 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    param0->unk_214 = StringTemplate_Default(param1);
    param0->unk_218 = MessageLoader_Init(0, 26, 675, param1);
}

static void ov64_0222E604 (UnkStruct_ov64_0222E21C * param0)
{
    MessageLoader_Free(param0->unk_218);
    StringTemplate_Free(param0->unk_214);
}

static void ov64_0222E620 (UnkStruct_ov64_0222E21C * param0, const UnkStruct_ov64_0222E060 * param1, u32 param2)
{
    int v0;

    v0 = Options_Frame(SaveData_Options(param1->unk_00));

    Font_LoadScreenIndicatorsPalette(0, 7 * 0x20, param2);
    sub_0200DD0C(param0->unk_00, Unk_ov64_02232258[1], (1 + 9), 8, v0, param2);
    sub_0200DAA4(param0->unk_00, Unk_ov64_02232258[1], 1, 9, 0, param2);
    Window_Init(&param0->unk_220);
    BGL_AddWindow(param0->unk_00, &param0->unk_220, Unk_ov64_02232258[1], 1, 0, 24, 3, 7, (((1 + 9) + (18 + 12))));

    param0->unk_230 = Strbuf_Init(128, param2);
    param0->unk_234 = Strbuf_Init(128, param2);
}

static void ov64_0222E6B4 (UnkStruct_ov64_0222E21C * param0)
{
    Strbuf_Free(param0->unk_230);
    Strbuf_Free(param0->unk_234);
    BGL_DeleteWindow(&param0->unk_220);
}

static void ov64_0222E6D8 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    static const u8 v0[2] = {
        2, 3,
    };
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        param0->unk_278.unk_00[v1] = sub_020071D0(param0->unk_21C, v0[v1], 0, &param0->unk_278.unk_08[v1], param1);
    }
}

static void ov64_0222E71C (UnkStruct_ov64_0222E21C * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Heap_FreeToHeap(param0->unk_278.unk_00[v0]);
    }
}

static void ov64_0222E738 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    if (Text_IsPrinterActive(param0->unk_238) == 1) {
        Text_RemovePrinter(param0->unk_238);
    }

    BGL_FillWindow(&param0->unk_220, 0);
    MessageLoader_GetStrbuf(param0->unk_218, param1, param0->unk_234);
    StringTemplate_Format(param0->unk_214, param0->unk_230, param0->unk_234);

    param0->unk_238 = Text_AddPrinterWithParamsAndColor(&param0->unk_220, FONT_MESSAGE, param0->unk_230, 0, 4, TEXT_SPEED_QUICK, TEXT_COLOR(15, 2, 0), NULL);

    sub_0201A9A4(&param0->unk_220);
}

static void ov64_0222E7C8 (UnkStruct_ov64_0222E21C * param0)
{
    if (Text_IsPrinterActive(param0->unk_238) == 1) {
        Text_RemovePrinter(param0->unk_238);
    }

    sub_0201AD10(&param0->unk_220);
}

static void ov64_0222E7F8 (UnkStruct_ov64_0222E21C * param0, u64 param1)
{
    u64 v0;

    v0 = param1 / 100000000;
    StringTemplate_SetNumber(param0->unk_214, 1, v0, 4, 2, 1);

    v0 = (param1 / 10000) % 10000;
    StringTemplate_SetNumber(param0->unk_214, 2, v0, 4, 2, 1);

    v0 = param1 % 10000;
    StringTemplate_SetNumber(param0->unk_214, 3, v0, 4, 2, 1);
}

static void ov64_0222E880 (UnkStruct_ov64_0222E21C * param0, SaveData * param1, u32 param2, u32 param3)
{
    UnkStruct_0202B370 * v0;
    TrainerInfo * v1;

    v0 = sub_0202B370(param1);
    v1 = TrainerInfo_New(param3);

    TrainerInfo_SetName(v1, sub_0202AEF0(v0, param2));
    StringTemplate_SetPlayerName(param0->unk_214, 0, v1);
    Heap_FreeToHeap(v1);
}

static void ov64_0222E8C0 (UnkStruct_ov64_0222E21C * param0, SaveData * param1, u32 param2, u32 param3)
{
    TrainerInfo * v0 = TrainerInfo_New(param3);
    UnkStruct_0202B370 * v1 = sub_0202B370(param1);

    TrainerInfo_SetName(v0, sub_0202AF34(v1, param2));
    StringTemplate_SetPlayerName(param0->unk_214, 0, v0);
    Heap_FreeToHeap(v0);
}

static BOOL ov64_0222E8FC (UnkStruct_ov64_0222E21C * param0, SaveData * param1, u32 param2)
{
    UnkStruct_0202B370 * v0 = sub_0202B370(param1);
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

static void ov64_0222E970 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    StringTemplate_SetNumber(param0->unk_214, 0, param1, 4, 1, 1);
}

static void ov64_0222E990 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    StringTemplate_SetPlazaMinigameName(param0->unk_214, 0, param1);
}

static void ov64_0222E9A4 (UnkStruct_ov64_0222E21C * param0, u32 param1)
{
    static CellActorInitParamsEx v0[2] = {
        {
            NULL,
            NULL,
            {(FX32_CONST(6)), (FX32_CONST(98)), 0},
            {FX32_ONE, FX32_ONE, FX32_ONE},
            0,
            8,
            NNS_G2D_VRAM_TYPE_2DMAIN,
            0
        },
        {
            NULL,
            NULL,
            {(FX32_CONST(249)), (FX32_CONST(98)), 0},
            {FX32_ONE, FX32_ONE, FX32_ONE},
            0,
            8,
            NNS_G2D_VRAM_TYPE_2DMAIN,
            0
        },
    };
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        v0[v1].collection = param0->unk_04;
        v0[v1].resourceData = &param0->unk_23C;
        v0[v1].heapID = param1;

        param0->unk_270[v1] = CellActorCollection_AddEx(&v0[v1]);

        CellActor_SetAnimateFlag(param0->unk_270[v1], 1);
        CellActor_SetDrawFlag(param0->unk_270[v1], 0);
        CellActor_SetAnim(param0->unk_270[v1], v1);
    }
}

static void ov64_0222EA0C (UnkStruct_ov64_0222E21C * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_Delete(param0->unk_270[v0]);
    }
}

static void ov64_0222EA28 (UnkStruct_ov64_0222E21C * param0, BOOL param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_SetDrawFlag(param0->unk_270[v0], param1);
    }
}

static void ov64_0222EA48 (UnkStruct_ov64_0222E21C * param0, BOOL param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_SetAnimateFlag(param0->unk_270[v0], param1);
    }
}

static void ov64_0222EA68 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    ov64_0222EC94(param0, param1, param2, param3);
}

static int ov64_0222EA70 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    BOOL v0;

    switch (param1->unk_04) {
    case 0:
        ov64_0222EE20(param0, param1, param2);
        sub_0200F174(0, 17, 17, 0x0, 6, 1, param3);
        param1->unk_04 = 1;
        break;
    case 1:
        if (ScreenWipe_Done()) {
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
                    ov64_0222EFBC(param0, param2, 53, param3);
                    param1->unk_04 = 10;
                }
            }
        }
        break;
    case 4:
        sub_0200F174(0, 16, 16, 0x0, 6, 1, param3);
        param1->unk_04++;
        break;
    case 5:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    case 6:
        ov64_0222EE20(param0, param1, param2);
        sub_0200F174(0, 17, 17, 0x0, 6, 1, param3);
        param1->unk_04 = 7;
        break;
    case 7:
        if (ScreenWipe_Done()) {
            u64 v1;
            TrainerInfo * v2;

            v2 = TrainerInfo_New(param3);

            TrainerInfo_SetName(v2, Strbuf_GetData(param1->unk_2C.unk_00));
            StringTemplate_SetPlayerName(param2->unk_214, 0, v2);
            Heap_FreeToHeap(v2);

            v1 = Strbuf_AtoI(param1->unk_2C.unk_04, &v0);

            if (v0) {
                ov64_0222E7F8(param2, v1);
                ov64_0222EFBC(param0, param2, 49, param3);
                param1->unk_04 = 8;
            } else {
                ov64_0222EFBC(param0, param2, 50, param3);
                param1->unk_04 = 10;
            }
        }
        break;
    case 8:
        if (ov64_0222F038(param0) == 0) {
            break;
        }

        param0->unk_2C = sub_02002100(param2->unk_00, &Unk_ov64_022321CA, 1, 9, param3);
        param1->unk_04 = 9;
        break;
    case 9:
    {
        int v3;
        u32 v4;
        static const u8 v5[3] = {
            0, 50, 54,
        };

        v3 = sub_02002114(param0->unk_2C, param3);

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
                ov64_0222EFBC(param0, param2, v5[v4], param3);
                param1->unk_04 = 10;
            }
            break;
        }
    }
    break;
    case 10:
        if (ov64_0222F038(param0) == 0) {
            break;
        }

        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            ov64_0222F050(param0);
            param1->unk_04 = 3;
        }

        break;
    }

    return 0;
}

static void ov64_0222EC8C (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_0222EE00(param0, param1, param2);
}

static const u8 Unk_ov64_02232424[4] = {
    0x1,
    0x2,
    0x3,
    0x4
};

static const int Unk_ov64_022321FC[4] = {
    0xFFFFFFFFFFFFFFFC,
    0xFFFFFFFFFFFFFFFC,
    0xFFFFFFFFFFFFFFFC,
    0x0
};

static const u8 Unk_ov64_0223241C[4] = {
    0x8,
    0x30,
    0x58,
    0x80
};

// clang-format off
asm static void ov64_0222EC94 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x30
    str r0, [sp, #0x14]
    add r0, r0, #4
    add r5, r1, #0
    str r2, [sp, #0x18]
    str r3, [sp, #0x1c]
    bl Window_Init
    mov r0, #4
    str r0, [sp]
    mov r0, #0x1a
    str r0, [sp, #4]
    mov r0, #0x14
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    mov r0, #1
    str r0, [sp, #0x10]
    ldr r0, [sp, #0x18]
    ldr r1, [sp, #0x14]
    mov r2, #3
    ldr r0, [r0, #0]
    add r1, r1, #4
    add r3, r2, #0
    bl BGL_AddWindow
    ldr r0, [sp, #0x14]
    add r0, #0x1c
    bl Window_Init
    mov r0, #0x13
    str r0, [sp]
    mov r0, #0x1b
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    mov r0, #0x70
    str r0, [sp, #0x10]
    ldr r0, [sp, #0x18]
    ldr r1, [sp, #0x14]
    ldr r0, [r0, #0]
    add r1, #0x1c
    mov r2, #1
    mov r3, #2
    bl BGL_AddWindow
    ldr r0, [sp, #0x14]
    mov r1, #0
    add r0, r0, #4
    bl BGL_FillWindow
    ldr r0, [sp, #0x14]
    mov r1, #0
    add r0, #0x1c
    bl BGL_FillWindow
    ldr r1, [sp, #0x1c]
    mov r0, #0x80
    bl Strbuf_Init
    ldr r1, [sp, #0x14]
    str r0, [r1, #0x38]
    ldr r0, [r5, #0]
    bl SaveData_Options
    bl Options_TextFrameDelay
    ldr r1, [sp, #0x14]
    str r0, [r1, #0x34]
    ldr r1, [sp, #0x1c]
    mov r0, #0x80
    bl Strbuf_Init
    add r4, r0, #0
    ldr r1, [sp, #0x1c]
    mov r0, #0x80
    bl Strbuf_Init
    str r0, [sp, #0x24]
    ldr r0, [r5, #0]
    bl SaveData_GetTrainerInfo
    add r2, r0, #0
    mov r1, #0x62
    ldr r0, [sp, #0x18]
    lsl r1, r1, #2
    ldr r0, [r0, r1]
    mov r1, #0
    bl StringTemplate_SetPlayerName
    mov r0, #0
    str r0, [sp, #0x20]
    ldr r0, = Unk_ov64_02232424
              ldr r7, = Unk_ov64_022321FC
                        ldr r5, = Unk_ov64_0223241C
                                  str r0, [sp, #0x2c]
 _0222ED5A:
    mov r0, #0x63
    ldr r1, [sp, #0x18]
    lsl r0, r0, #2
    ldr r0, [r1, r0]
    ldr r1, [sp, #0x2c]
    ldr r2, [sp, #0x24]
    ldrb r1, [r1]
    bl MessageLoader_GetStrbuf
    mov r0, #0x62
    ldr r1, [sp, #0x18]
    lsl r0, r0, #2
    ldr r0, [r1, r0]
    ldr r2, [sp, #0x24]
    add r1, r4, #0
    bl StringTemplate_Format
    mov r0, #0
    add r1, r4, #0
    add r2, r0, #0
    mov r3, #0xd0
    bl Font_CalcCenterAlignment
    mov ip, r0
    ldr r0, [r7, #0]
    mov r6, ip
    str r0, [sp, #0x28]
    ldrb r0, [r5]
    ldr r3, [sp, #0x28]
    mov r1, #0
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10200
              add r2, r4, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x14]
    add r3, r3, r6
    add r0, r0, #4
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [sp, #0x2c]
    add r7, r7, #4
    add r0, r0, #1
    str r0, [sp, #0x2c]
    ldr r0, [sp, #0x20]
    add r5, r5, #1
    add r0, r0, #1
    str r0, [sp, #0x20]
    cmp r0, #4
    blt _0222ED5A
    add r0, r4, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x24]
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    mov r1, #0x19
    str r0, [sp]
    ldr r3, [sp, #0x14]
    ldr r0, [sp, #0x18]
    lsl r1, r1, #4
    ldr r0, [r0, r1]
    mov r1, #1
    mov r2, #0
    add r3, #0x18
    bl sub_020071D0
    ldr r1, [sp, #0x14]
    str r0, [r1, #0x14]
    add sp, #0x30
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

static void ov64_0222EE00 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    Strbuf_Free(param0->unk_38);
    BGL_DeleteWindow(&param0->unk_04);
    BGL_DeleteWindow(&param0->unk_1C);
    Heap_FreeToHeap(param0->unk_14);
}

static void ov64_0222EE20 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_0222E738(param2, 0);

    sub_0201A9A4(&param0->unk_04);
    sub_020198C0(param2->unk_00, Unk_ov64_02232258[2], param0->unk_18->rawData, 0, 0, param0->unk_18->screenWidth / 8, param0->unk_18->screenHeight / 8);
    sub_0201C63C(param2->unk_00, Unk_ov64_02232258[2], 0, 0);
    sub_0201C63C(param2->unk_00, Unk_ov64_02232258[2], 3, 0);

    ov64_0222EF08(param0, param2);
    sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[2]);
}

static BOOL ov64_0222EE84 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    BOOL v0 = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1501);
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(1501);
        param0->unk_00 = 3;
        return 1;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        if (param0->unk_00 > 0) {
            param0->unk_00--;
            v0 = 1;
        }
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        if (param0->unk_00 < 3) {
            param0->unk_00++;
            v0 = 1;
        }
    }

    if (v0 == 1) {
        Sound_PlayEffect(1509);
        ov64_0222EF08(param0, param2);
        sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[2]);
    }

    return 0;
}

static void ov64_0222EF08 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E21C * param1)
{
    int v0;
    static const u8 Unk_ov64_022321FC[4][2] = {
        {0x2, 0x4},
        {0x2, 0x9},
        {0x2, 0xE},
        {0x2, 0x13}
    };
    u8 v2;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00 == v0) {
            v2 = 1;
        } else {
            v2 = 0;
        }

        sub_02019E2C(param1->unk_00, Unk_ov64_02232258[2], Unk_ov64_022321FC[v0][0], Unk_ov64_022321FC[v0][1], 28, 4, v2);
    }
}

static void ov64_0222EF4C (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1)
{
    static const u8 v0[4] = {
        1, 2, 3, 5
    };

    ov64_0222E074(param1, v0[param0->unk_00], 0);
}

static void ov64_0222EF64 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E21C * param1)
{
    ov64_0222E7C8(param1);

    sub_02019CB8(param1->unk_00, Unk_ov64_02232258[2], 0, 0, 0, 32, 24, 0);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[2]);
    sub_02019CB8(param1->unk_00, Unk_ov64_02232258[3], 0, 0, 0, 32, 24, 0);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[3]);

    sub_0201AD10(&param0->unk_04);
}

static void ov64_0222EFBC (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    Strbuf* v0;

    v0 = Strbuf_Init(128, param3);

    BGL_FillWindow(&param0->unk_1C, 15);
    MessageLoader_GetStrbuf(param1->unk_218, param2, v0);
    StringTemplate_Format(param1->unk_214, param0->unk_38, v0);

    param0->unk_30 = Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_MESSAGE, param0->unk_38, 0, 0, param0->unk_34, TEXT_COLOR(1, 2, 0), NULL);

    sub_0200E060(&param0->unk_1C, 1, (1 + 9), 8);
    sub_0201A9A4(&param0->unk_1C);
    Strbuf_Free(v0);
}

static BOOL ov64_0222F038 (const UnkStruct_ov64_0222F038 * param0)
{
    if (Text_IsPrinterActive(param0->unk_30) == 0) {
        return 1;
    }

    return 0;
}

static void ov64_0222F050 (UnkStruct_ov64_0222F038 * param0)
{
    sub_0200E084(&param0->unk_1C, 1);
    sub_0201AD10(&param0->unk_1C);
}

static BOOL ov64_0222F068 (UnkStruct_ov64_0222F038 * param0, UnkStruct_ov64_0222E060 * param1)
{
    int v0;
    UnkStruct_0202B370 * v1;

    if (param0->unk_00 == 1) {
        v1 = sub_0202B370(param1->unk_00);

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

static void ov64_0222F09C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    param0->unk_DC = Options_TextFrameDelay(SaveData_Options(param1->unk_00));
    ov64_0222F414(param0, param1, param2, param3);
}

static int ov64_0222F0C4 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    u32 v0;
    UnkStruct_0202B370 * v1;
    u32 v2;

    switch (param1->unk_04) {
    case 0:
        param0->unk_00 = 0;
        param0->unk_02 = 0;
        param0->unk_04 = 0;
        param0->unk_06 = 0;
    case 1:
        ov64_0222E164(param1);
        ov64_0222F668(param0, param1, param2, param3);
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
        ov64_0222F8F8(param0, param1, param2, param3);
        param1->unk_04 = 4;
        break;
    case 4:
        v0 = ov64_0222F948(param0, param1, param2, param3);

        if (v0 == 1) {
            param1->unk_04 = 2;
        }
        break;
    case 5:
        ov64_0222E160(param1, ov64_0222FF38(param0));
        ov64_0222FA70(param0, param1, param2, param3);
        param1->unk_04 = 6;
        break;
    case 6:
        param1->unk_04 = ov64_0222FB24(param0, param1, param2, param3);
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
        sub_0200F174(0, 16, 16, 0x0, 6, 1, param3);

        v2 = ov64_0222FF38(param0);
        v1 = sub_0202B370(param1->unk_00);

        ov64_0222E158(param1, sub_0202AEF0(v1, param1->unk_08.unk_04[v2]));
        param1->unk_04 = 11;
        break;
    case 11:
        if (ScreenWipe_Done()) {
            ov64_0222F6E8(param0, param1, param2);
            ov64_0222E074(param1, 2, 4);
            return 1;
        }
        break;
    case 12:
        v2 = ov64_0222FF38(param0);
        v1 = sub_0202B370(param1->unk_00);
        sub_0202AF0C(v1, param1->unk_08.unk_04[v2], param1->unk_2C.unk_00);
    case 13:
        ov64_0222F668(param0, param1, param2, param3);
        sub_0200F174(0, 17, 17, 0x0, 6, 1, param3);
        param1->unk_04 = 14;
        break;
    case 14:
        if (ScreenWipe_Done()) {
            param1->unk_04 = 2;
        }
        break;
    case 15:
        ov64_0222FC1C(param0, param1, param2, param3);
        param1->unk_04 = 16;
        break;
    case 16:
        v0 = ov64_0222FC48(param0, param1, param2, param3);

        if (v0 == 1) {
            param1->unk_04 = 17;
        }
        break;
    case 17:
        v0 = sub_02002114(param0->unk_FC, param3);

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
            v1 = sub_0202B370(param1->unk_00);
            v2 = ov64_0222FF38(param0);

            sub_0202AFD4(v1, param1->unk_08.unk_04[v2]);
            sub_02030788(sub_0203068C(param1->unk_00), param1->unk_08.unk_04[v2]);
            ov64_0222E164(param1);
            ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, 0, param3);
            ov64_0222EA28(param2, 1);
            param1->unk_04 = 20;
        }
        break;
    case 20:
        ov64_02230044(param0);
        param1->unk_04 = 2;
        break;
    case 21:
        v0 = ov64_0222FBA4(param0, param1, param2, param3);

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

        if (gCoreSys.pressedKeys) {
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

static void ov64_0222F40C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_0222F5F4(param0, param1, param2);
}

static const u16 Unk_ov64_022321BC[3] = {
    0x1,
    0x1BB,
    0x1BB
};

static const CellActorInitParamsEx Unk_ov64_022322B4 = {
    NULL,
    NULL,
    {0x0, 0x0, 0x0},
    {FX32_ONE, FX32_ONE, FX32_ONE},
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    0x0
};

// clang-format off
asm static void ov64_0222F414 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x58
    ldr r4, = Unk_ov64_022322B4
              add r7, r2, #0
    str r3, [sp, #0x18]
    str r0, [sp, #0x14]
    add r3, sp, #0x28
    mov r2, #6
 _0222F424:
    ldmia r4 !, {r0, r1}
    stmia r3 !, {r0, r1}
    sub r2, r2, #1
    bne _0222F424
    ldr r4, [sp, #0x14]
    mov r0, #0
    ldr r5, = Unk_ov64_022321BC
              ldr r6, = Unk_ov64_0223221C
                        str r0, [sp, #0x24]
    add r4, #8
 _0222F438:
    ldr r0, [sp, #0x18]
    add r1, r7, #0
    str r0, [sp]
    ldrh r3, [r5]
    add r0, r4, #0
    add r2, r6, #0
    bl ov64_02230074
    ldr r0, [sp, #0x24]
    add r5, r5, #2
    add r0, r0, #1
    add r6, r6, #6
    add r4, #0x38
    str r0, [sp, #0x24]
    cmp r0, #3
    blt _0222F438
    ldr r0, [r7, #4]
    ldr r3, [sp, #0x18]
    mov r1, #0
    mov r2, #0x10
    bl ov63_0222AE60
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x18]
    add r1, #0xb4
    str r0, [r1, #0]
    ldr r0, [sp, #0x14]
    mov r1, #1
    add r0, #0xb4
    ldr r0, [r0, #0]
    mov r2, #2
    bl ov63_0222B02C
    ldr r0, [sp, #0x14]
    add r0, #0xb8
    bl Window_Init
    mov r0, #0x15
    str r0, [sp]
    mov r0, #8
    str r0, [sp, #4]
    mov r0, #3
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    mov r0, #0x70
    ldr r1, [sp, #0x14]
    str r0, [sp, #0x10]
    ldr r0, [r7, #0]
    add r1, #0xb8
    mov r2, #1
    mov r3, #0xd
    bl BGL_AddWindow
    ldr r0, [sp, #0x14]
    mov r1, #0
    add r0, #0xb8
    bl BGL_FillWindow
    ldr r1, [sp, #0x18]
    mov r0, #0x80
    bl Strbuf_Init
    add r4, r0, #0
    mov r0, #0x63
    lsl r0, r0, #2
    ldr r0, [r7, r0]
    mov r1, #7
    add r2, r4, #0
    bl MessageLoader_GetStrbuf
    mov r0, #0
    add r1, r4, #0
    add r2, r0, #0
    mov r3, #0x40
    bl Font_CalcCenterAlignment
    mov r1, #0
    add r3, r0, #0
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10200
              add r2, r4, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x14]
    str r1, [sp, #0xc]
    add r0, #0xb8
    bl Text_AddPrinterWithParamsAndColor
    add r0, r4, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x14]
    add r0, #0xe4
    bl Window_Init
    mov r0, #9
    str r0, [sp]
    mov r0, #0xf
    str r0, [sp, #4]
    mov r0, #8
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    mov r0, #0x88
    ldr r1, [sp, #0x14]
    str r0, [sp, #0x10]
    ldr r0, [r7, #0]
    add r1, #0xe4
    mov r2, #1
    mov r3, #0x10
    bl BGL_AddWindow
    ldr r0, [sp, #0x14]
    mov r1, #0
    add r0, #0xe4
    bl BGL_FillWindow
    mov r0, #0
    str r0, [sp, #0x1c]
    ldr r0, = Unk_ov64_022322E4
              ldr r6, [sp, #0x14]
    str r0, [sp, #0x20]
 _0222F530:
    ldr r1, [sp, #0x18]
    mov r0, #4
    bl sub_02013A04
    add r1, r6, #0
    add r1, #0xf4
    ldr r5, [sp, #0x20]
    str r0, [r1, #0]
    mov r4, #0
 _0222F542:
    add r0, r6, #0
    mov r1, #0x63
    add r0, #0xf4
    lsl r1, r1, #2
    ldr r0, [r0, #0]
    ldr r1, [r7, r1]
    ldr r2, [r5, #0]
    ldr r3, [r5, #4]
    bl sub_02013A4C
    add r4, r4, #1
    add r5, #8
    cmp r4, #4
    blt _0222F542
    ldr r0, [sp, #0x20]
    add r6, r6, #4
    add r0, #0x20
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x1c]
    add r0, r0, #1
    str r0, [sp, #0x1c]
    cmp r0, #2
    blt _0222F530
    ldr r0, [sp, #0x14]
    add r0, #0xc8
    bl Window_Init
    mov r0, #0x13
    str r0, [sp]
    mov r0, #0x1b
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    add r0, #0xf9
    ldr r1, [sp, #0x14]
    str r0, [sp, #0x10]
    ldr r0, [r7, #0]
    add r1, #0xc8
    mov r2, #1
    mov r3, #2
    bl BGL_AddWindow
    ldr r0, [sp, #0x14]
    mov r1, #0xf
    add r0, #0xc8
    bl BGL_FillWindow
    ldr r1, [sp, #0x18]
    mov r0, #0x80
    bl Strbuf_Init
    ldr r1, [sp, #0x14]
    add r1, #0xd8
    str r0, [r1, #0]
    ldr r0, [r7, #4]
    str r0, [sp, #0x28]
    mov r0, #0x1b
    lsl r0, r0, #4
    add r0, r7, r0
    str r0, [sp, #0x2c]
    ldr r0, [sp, #0x18]
    str r0, [sp, #0x54]
    add r0, sp, #0x28
    bl CellActorCollection_AddEx
    mov r2, #0x42
    ldr r1, [sp, #0x14]
    lsl r2, r2, #2
    str r0, [r1, r2]
    add r0, r1, #0
    ldr r0, [r0, r2]
    mov r1, #0
    bl CellActor_SetDrawFlag
    add sp, #0x58
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format off

static void ov64_0222F5F4 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    int v0;

    CellActor_Delete(param0->unk_104);
    BGL_DeleteWindow(&param0->unk_C4);
    Strbuf_Free(param0->unk_D4);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02013A3C(param0->unk_F0[v0]);
    }

    BGL_DeleteWindow(&param0->unk_E0);
    BGL_DeleteWindow(&param0->unk_B4);

    ov63_0222B078(param0->unk_B0);
    ov63_0222AF14(param0->unk_B0);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_022300D8(&param0->unk_08[v0], param2);
    }
}

static void ov64_0222F668 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    int v0;

    ov64_0222E738(param2, 5);

    sub_020198E8(param2->unk_00, Unk_ov64_02232258[0], 11, 20, 10, 4, param2->unk_278.unk_08[1]->rawData, 6, 0, param2->unk_278.unk_08[1]->screenWidth / 8, param2->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201A9A4(&param0->unk_B4);

    sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[0]);

    ov64_0222EA28(param2, 1);
    ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, 0, param3);
}

static void ov64_0222F6E8 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    int v0;

    ov64_0222E7C8(param2);
    sub_0201AD10(&param0->unk_B4);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_02230240(&param0->unk_08[v0], param2, &param2->unk_278);
    }

    ov64_0222EA28(param2, 0);

    sub_020198E8(param2->unk_00, Unk_ov64_02232258[0], 11, 20, 10, 4, param2->unk_278.unk_08[1]->rawData, 0, 8, param2->unk_278.unk_08[1]->screenWidth / 8, param2->unk_278.unk_08[1]->screenHeight / 8);
    sub_020198E8(param2->unk_00, Unk_ov64_02232258[0], 0x16, 0, 9, 3, param2->unk_278.unk_08[1]->rawData, 0x10, 0x0, param2->unk_278.unk_08[1]->screenWidth / 8, param2->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[0]);
}

static u32 ov64_0222F798 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    u16 v0;
    BOOL v1;
    BOOL v2;
    int v3;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        if (param0->unk_04 == 8) {
            Sound_PlayEffect(1501);
            return 3;
        }

        if (param1->unk_08.unk_00 <= param0->unk_04 + (param0->unk_00 * 8)) {
            return 0;
        }

        Sound_PlayEffect(1501);
        return 4;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(1501);
        return 3;
    }

    v0 = param0->unk_04;
    v1 = 0;
    v2 = 0;

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
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
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
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
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
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
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
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
            Sound_PlayEffect(1509);

            ov64_02230130(&param0->unk_08[0], param2, param0->unk_04);
            param0->unk_06 = v0;
        }
    }

    return 0;
}

static void ov64_0222F8F8 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    u16 v0;

    if (param0->unk_AC == 2) {
        v0 = 2;
    } else {
        v0 = 1;
    }

    ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, v0, param3);
    ov64_02230130(&param0->unk_08[0], param2, 10);
    ov64_0222EA48(param2, 0);

    Sound_PlayEffect(1505);
}

static BOOL ov64_0222F948 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    u32 v0;
    s32 v1;
    NNSG2dViewRect v2;
    u32 v3;
    static void (* v4[4])(UnkStruct_ov64_0222F0C4 *, UnkStruct_ov64_0222E21C *, u32, u32) = {
        ov64_0222FD7C, NULL, ov64_0222FDD0, NULL
    };

    if (param0->unk_AA >= 12) {
        sub_0201C63C(param2->unk_00, Unk_ov64_02232258[2], 0, 0);
        sub_0201C63C(param2->unk_00, Unk_ov64_02232258[3], 0, 0);

        v2 = Unk_ov64_02232460;
        sub_020230E0(&param2->unk_08, &v2);

        if (param0->unk_AC == 2) {
            v0 = 2;
        } else {
            v0 = 1;
        }

        ov64_02230240(&param0->unk_08[v0], param2, &param2->unk_278);
        ov64_0222FC80(param0, param1, param2, param0->unk_00, param0->unk_04, 0, param3);
        ov64_0222EA48(param2, 1);
        return 1;
    }

    v1 = (param0->unk_AA * 256) / 12;

    if (param0->unk_AC == 2) {
        v1 = -v1;
    }

    sub_0201C63C(param2->unk_00, Unk_ov64_02232258[2], 0, v1);
    sub_0201C63C(param2->unk_00, Unk_ov64_02232258[3], 0, v1);

    v2 = Unk_ov64_02232460;
    v2.posTopLeft.x += v1 << FX32_SHIFT;

    sub_020230E0(&param2->unk_08, &v2);

    if (param0->unk_AA % (12 / 4)) {
        v3 = param0->unk_AA / (12 / 4);

        if (v4[v3]) {
            v4[v3](param0, param2, param0->unk_00, param0->unk_02);
        }
    }

    param0->unk_AA++;
    return 0;
}

static void ov64_0222FA70 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    UnkStruct_ov84_02240FA8 v0;
    UnkStruct_0202B370 * v1;
    u32 v2;
    u32 v3;

    v1 = sub_0202B370(param1->unk_00);
    v3 = ov64_0222FF38(param0);
    v2 = sub_0202AD2C(v1, param1->unk_08.unk_04[v3], 8);
    v0 = Unk_ov64_0223226C;

    if (v2 == 2) {
        v0.unk_00 = param0->unk_F0[1];
    } else {
        v0.unk_00 = param0->unk_F0[0];
    }

    v0.unk_0C = &param0->unk_E0;
    param0->unk_F8 = sub_0200112C(&v0, 0, 0, param3);

    Window_Show(&param0->unk_E0, 1, 1, 9);
    sub_0201A9A4(&param0->unk_E0);

    ov64_0222E880(param2, param1->unk_00, param1->unk_08.unk_04[v3], param3);
    ov64_0222FE70(param0, param2, 12, param3);
    ov64_0222EA28(param2, 0);
}

static u32 ov64_0222FB24 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    u32 v0;
    u32 v1 = 6;

    if (ov64_0222FEFC(param0) == 0) {
        return v1;
    }

    v0 = sub_02001288(param0->unk_F8);

    switch (v0) {
    case 0xffffffff:
        return v1;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        ov64_0222EA28(param2, 1);
        v1 = 2;
        break;
    default:
        Sound_PlayEffect(1500);
        v1 = v0;
        break;
    }

    ov64_0222FF18(param0);

    Window_Clear(&param0->unk_E0, 1);
    sub_0201AD10(&param0->unk_E0);
    sub_02001384(param0->unk_F8, NULL, NULL);

    if (v1 == 2) {
        ov64_0222EA28(param2, 1);
    }

    return v1;
}

static BOOL ov64_0222FBA4 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    UnkStruct_0202B370 * v0;
    DWCFriendData * v1;
    u64 v2;
    u32 v3;

    v0 = sub_0202B370(param1->unk_00);
    v3 = ov64_0222FF38(param0);
    v1 = sub_0202AED8(v0, param1->unk_08.unk_04[v3]);
    v2 = DWC_GetFriendKey(v1);

    if (v2 != 0) {
        Sound_PlayEffect(1501);
        ov64_0222E7F8(param2, v2);
        ov64_0222E880(param2, param1->unk_00, param1->unk_08.unk_04[v3], param3);
        ov64_0222FE70(param0, param2, 55, param3);
        return 1;
    }

    return 0;
}

static void ov64_0222FC1C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    u32 v0;

    v0 = ov64_0222FF38(param0);

    ov64_0222E880(param2, param1->unk_00, param1->unk_08.unk_04[v0], param3);
    ov64_0222FE70(param0, param2, 52, param3);
}

static BOOL ov64_0222FC48 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    if (ov64_0222FEFC(param0) == 0) {
        return 0;
    }

    param0->unk_FC = sub_02002100(param2->unk_00, &Unk_ov64_022321CA, 1, 9, param3);
    return 1;
}

static void ov64_0222FC80 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    if (0 == param5) {
        param0->unk_00 = param3;
        param0->unk_04 = param4;

        ov64_0222FCF0(param0, param2, param3);
    }

    ov64_022300E4(&param0->unk_08[param5], param2, &param2->unk_278);
    ov64_022301B4(&param0->unk_08[param5], param1, param2, param0->unk_B0, &param2->unk_278, &param1->unk_08, param3, param6);
    ov64_02230130(&param0->unk_08[param5], param2, param4);
}

static void ov64_0222FCF0 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2)
{
    u32 v0;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 0x16, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 0, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);

    v0 = 0x16 + (2 * param2) + 1;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 3, Unk_ov64_02232428[param2], param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_0222FD7C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    u32 v0;

    v0 = 0x16 + (2 * param3) + 1;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 4, Unk_ov64_02232428[param3], param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_0222FDD0 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    u32 v0;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 0x16, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 0, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);

    v0 = 0x16 + (2 * param2) + 1;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 3, Unk_ov64_02232428[param2], param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_0222FE5C (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E060 * param1, int param2)
{
    param1->unk_04 = 3;
    param0->unk_AC = param2;
    param0->unk_AA = 0;
}

static void ov64_0222FE70 (UnkStruct_ov64_0222F0C4 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    Strbuf* v0;

    BGL_FillWindow(&param0->unk_C4, 15);

    v0 = Strbuf_Init(128, param3);

    MessageLoader_GetStrbuf(param1->unk_218, param2, v0);
    StringTemplate_Format(param1->unk_214, param0->unk_D4, v0);

    param0->unk_D8 = Text_AddPrinterWithParamsAndColor(&param0->unk_C4, FONT_MESSAGE, param0->unk_D4, 0, 0, param0->unk_DC, TEXT_COLOR(1, 2, 0), NULL);

    sub_0200E060(&param0->unk_C4, 1, (1 + 9), 8);
    sub_0201A9A4(&param0->unk_C4);
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
    sub_0200E084(&param0->unk_C4, 1);
    sub_0201AD10(&param0->unk_C4);
    sub_0201A9A4(&param0->unk_B4);
}

static u32 ov64_0222FF38 (const UnkStruct_ov64_0222F0C4 * param0)
{
    u32 v0;

    v0 = param0->unk_00 * 8;
    v0 += param0->unk_04;

    return v0;
}

static void ov64_0222FF48 (BmpList * param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }
}

static void ov64_0222FF5C (UnkStruct_ov64_0222F0C4 * param0)
{
    VecFx32 v0;
    u32 v1;

    CellActor_SetDrawFlag(param0->unk_104, 1);
    CellActor_SetAnim(param0->unk_104, 2);

    param0->unk_108 = 0;

    CellActor_SetAnimateFlag(param0->unk_104, 1);

    v1 = param0->unk_04;

    v0.x = ((MATH_ABS(Unk_ov64_0223221C[0].unk_00) + Unk_ov64_02232324[v1].unk_00.unk_00) * 8);
    v0.y = ((MATH_ABS(Unk_ov64_0223221C[0].unk_02) + Unk_ov64_02232324[v1].unk_00.unk_02) * 8) + (-4 + 256);
    v0.x <<= FX32_SHIFT;
    v0.y <<= FX32_SHIFT;

    CellActor_SetPosition(param0->unk_104, &v0);

    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2, 0);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    GX_SetVisibleWnd(GX_WNDMASK_OW);

    Sound_PlayEffect(1577);
}

static BOOL ov64_02230008 (UnkStruct_ov64_0222F0C4 * param0)
{
    u32 v0;

    if (CellActor_IsAnimated(param0->unk_104) == 0) {
        return 1;
    }

    v0 = CellActor_GetAnimFrame(param0->unk_104);

    if ((v0 - param0->unk_108) >= 2) {
        param0->unk_108 = v0;
        Sound_PlayEffect(1577);
    }

    return 0;
}

static void ov64_02230044 (UnkStruct_ov64_0222F0C4 * param0)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    CellActor_SetDrawFlag(param0->unk_104, 0);
    CellActor_SetAnimateFlag(param0->unk_104, 0);
}

static void ov64_02230074 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_0223221C * param2, u32 param3, u32 param4)
{
    param0->unk_00 = *param2;

    Window_Init(&param0->unk_08);
    BGL_AddWindow(param1->unk_00, &param0->unk_08, Unk_ov64_02232258[3], 4 + MATH_ABS(param2->unk_00), 4 + MATH_ABS(param2->unk_02), 26, 17, 7, param3);
}

static void ov64_022300D8 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1)
{
    BGL_DeleteWindow(&param0->unk_08);
}

static void ov64_022300E4 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2)
{
    sub_020198C0(param1->unk_00, Unk_ov64_02232258[2], param2->unk_08[0]->rawData, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param2->unk_08[0]->screenWidth / 8, param2->unk_08[0]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[2]);
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

        sub_02019E2C(param1->unk_00, Unk_ov64_02232324[v0].unk_08, MATH_ABS(param0->unk_00.unk_00) + Unk_ov64_02232324[v0].unk_00.unk_00, MATH_ABS(param0->unk_00.unk_02) + Unk_ov64_02232324[v0].unk_00.unk_02, Unk_ov64_02232324[v0].unk_00.unk_04, Unk_ov64_02232324[v0].unk_00.unk_05, v1);
    }

    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[2]);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_022301B4 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, UnkStruct_ov63_0222AE60 * param3, const UnkStruct_ov64_022300E4 * param4, const UnkStruct_ov64_022301B4 * param5, u32 param6, u32 param7)
{
    int v0;
    int v1;
    UnkStruct_0202B370 * v2;

    v2 = sub_0202B370(param1->unk_00);

    BGL_FillWindow(&param0->unk_08, 0);
    ov64_022302CC(param0, param2);

    v1 = param6 * 8;

    for (v0 = 0; v0 < 8; v0++) {
        if (param5->unk_00 > (v1 + v0)) {
            ov64_022302EC(param0, param3, param2, param4, v0, v2, param5->unk_04[v1 + v0], param7);
        } else {
            ov64_022303CC(param0, param2, param4, v0);
        }
    }

    sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[2]);
    sub_0201A9A4(&param0->unk_08);
}

static void ov64_02230240 (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2)
{
    ov64_022302CC(param0, param1);

    sub_0201AD10(&param0->unk_08);
    sub_02019CB8(param1->unk_00, Unk_ov64_02232258[2], 0, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param0->unk_00.unk_04, param0->unk_00.unk_05, 0);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[2]);
    sub_02019CB8(param1->unk_00, Unk_ov64_02232258[3], 0, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param0->unk_00.unk_04, param0->unk_00.unk_05, 0);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[3]);
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

static void ov64_022302EC (UnkStruct_ov64_02230074 * param0, UnkStruct_ov63_0222AE60 * param1, UnkStruct_ov64_0222E21C * param2, const UnkStruct_ov64_022300E4 * param3, u32 param4, UnkStruct_0202B370 * param5, u32 param6, u32 param7)
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
        param0->unk_18[param4] = ov63_0222B0C0(param1, &v2, v1, param7);
    }

    v4 = ((Unk_ov64_02232324[param4].unk_00.unk_00) * 8) + 0;
    v5 = ((Unk_ov64_02232324[param4].unk_00.unk_02) * 8) + -24;
    v3 = Strbuf_Init(128, param7);

    Strbuf_CopyChars(v3, sub_0202AEF0(param5, param6));
    Text_AddPrinterWithParamsAndColor(&param0->unk_08, FONT_SYSTEM, v3, v4, v5, TEXT_SPEED_NO_TRANSFER, v6[v0], NULL);
    Strbuf_Free(v3);
}

static void ov64_022303CC (UnkStruct_ov64_02230074 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_022300E4 * param2, u32 param3)
{
    sub_020198E8(param1->unk_00, Unk_ov64_02232258[2], MATH_ABS(param0->unk_00.unk_00) + Unk_ov64_02232324[param3].unk_00.unk_00, MATH_ABS(param0->unk_00.unk_02) + Unk_ov64_02232324[param3].unk_00.unk_02, 3, 4, param2->unk_08[1]->rawData, 0, 0, param2->unk_08[1]->screenWidth / 8, param2->unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[2]);
}

static void ov64_02230444 (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    ov64_022305D4(param0, param1, param2, param3);
}

static int ov64_0223044C (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222DFD0 * param1, UnkStruct_ov64_0222E060 * param2, UnkStruct_ov64_0222E21C * param3, u32 param4)
{
    int v0[4];

    switch (param2->unk_04) {
    case 0:
        param0->unk_04 = ov64_022305DC(param0, param2, param4);

        v0[0] = 4;
        v0[1] = 4;
        v0[2] = 4;
        v0[3] = 0;

        param0->unk_08 = sub_02089400(param4, 12, v0, SaveData_Options(param2->unk_00), 0, 0);
        ov64_0222DFD0(param1);
        param0->unk_00 = OverlayManager_New(&Unk_020F2DAC, param0->unk_04, param4);
        param2->unk_04 = 1;
        break;
    case 1:
        if (OverlayManager_Exec(param0->unk_00) == 0) {
            break;
        }

        OverlayManager_Free(param0->unk_00);

        if (param0->unk_04->unk_14 == 0) {
            param0->unk_00 = OverlayManager_New(&Unk_020F2DBC, param0->unk_08, param4);
            param2->unk_04 = 2;
        } else {
            ov64_0222E074(param2, 0, 0);
            param2->unk_04 = 3;
        }
        break;
    case 2:
        if (OverlayManager_Exec(param0->unk_00) == 0) {
            break;
        }

        OverlayManager_Free(param0->unk_00);
        ov64_0222E07C(param2, param0->unk_04->unk_18, param0->unk_08->unk_1C);
        ov64_0222E074(param2, 0, 6);
        param2->unk_04 = 3;
        break;
    case 3:
        sub_0208716C(param0->unk_04);
        sub_02089438(param0->unk_08);
        ov64_0222DF48(param1, param4);
        return 1;
    case 4:
        param0->unk_04 = ov64_022305DC(param0, param2, param4);
        ov64_0222DFD0(param1);
        param0->unk_00 = OverlayManager_New(&Unk_020F2DAC, param0->unk_04, param4);
        param2->unk_04 = 5;
        break;
    case 5:
        if (OverlayManager_Exec(param0->unk_00) == 0) {
            break;
        }

        OverlayManager_Free(param0->unk_00);

        if (param0->unk_04->unk_14 == 0) {
            ov64_0222E074(param2, 1, 12);
            ov64_0222E07C(param2, param0->unk_04->unk_18, NULL);
            param2->unk_04 = 6;
        } else {
            ov64_0222E074(param2, 1, 13);
            param2->unk_04 = 6;
        }
        break;
    case 6:
        sub_0208716C(param0->unk_04);
        ov64_0222DF48(param1, param4);
        return 1;
    }

    return 0;
}

static void ov64_022305CC (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_022305D8(param0, param1, param2);
}

static void ov64_022305D4 (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    return;
}

static void ov64_022305D8 (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    return;
}

static UnkStruct_0208737C * ov64_022305DC (UnkStruct_ov64_02230444 * param0, UnkStruct_ov64_0222E060 * param1, u32 param2)
{
    UnkStruct_0208737C * v0;

    v0 = sub_0208712C(param2, 7, 0, 7, SaveData_Options(param1->unk_00));

    if (param1->unk_34.unk_04 == 1) {
        {
            if (IsFullWidthChar(*param1->unk_34.unk_00) == 0) {
                Strbuf_CopyChars(v0->unk_18, param1->unk_34.unk_00);
            } else {
                Strbuf_Clear(v0->unk_18);
            }
        }

        param1->unk_34.unk_04 = 0;
    }

    return v0;
}

static void ov64_02230620 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    ov64_02230680(param0, param1, param2, param3);
}

static int ov64_02230628 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    switch (param1->unk_04) {
    case 0:
        ov64_0223081C(param0, param1, param2);
        param1->unk_04 = 1;
        break;
    case 1:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1501);
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

// clang-format off
asm static void ov64_02230680 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r0, #0
    str r1, [sp, #0x14]
    add r4, r2, #0
    add r7, r3, #0
    bl Window_Init
    mov r0, #0xd
    str r0, [sp]
    mov r0, #0x17
    str r0, [sp, #4]
    mov r0, #8
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    mov r0, #1
    str r0, [sp, #0x10]
    ldr r0, [r4, #0]
    add r1, r5, #0
    mov r2, #3
    mov r3, #5
    bl BGL_AddWindow
    add r0, r5, #0
    add r0, #0x10
    bl Window_Init
    mov r0, #8
    str r0, [sp]
    mov r0, #0xf
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    mov r0, #7
    str r0, [sp, #0xc]
    mov r0, #0xb9
    str r0, [sp, #0x10]
    add r1, r5, #0
    ldr r0, [r4, #0]
    add r1, #0x10
    mov r2, #3
    mov r3, #9
    bl BGL_AddWindow
    add r0, r5, #0
    mov r1, #0
    bl BGL_FillWindow
    add r0, r5, #0
    add r0, #0x10
    mov r1, #0
    bl BGL_FillWindow
    mov r0, #0x80
    add r1, r7, #0
    bl Strbuf_Init
    add r6, r0, #0
    mov r0, #0x80
    add r1, r7, #0
    bl Strbuf_Init
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x14]
    ldr r0, [r0, #0]
    bl sub_0202B370
    bl sub_0202AD28
    bl DWC_CreateFriendKey
    str r1, [sp, #0x1c]
    str r0, [sp, #0x24]
    ldr r0, [sp, #0x1c]
    mov r2, #0
    eor r0, r2
    ldr r2, [sp, #0x24]
    mov r1, #0
    eor r1, r2
    orr r0, r1
    beq _022307A6
    mov r0, #0x63
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x2f
    add r2, r6, #0
    bl MessageLoader_GetStrbuf
    mov r0, #0
    add r1, r6, #0
    add r2, r0, #0
    bl Font_CalcMaxLineWidth
    mov r1, #0xb8
    sub r0, r1, r0
    mov r1, #0
    lsr r3, r0, #1
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10200
    add r2, r6, #0
    str r0, [sp, #8]
    add r0, r5, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    ldr r1, [sp, #0x24]
    ldr r2, [sp, #0x1c]
    add r0, r4, #0
    bl ov64_0222E7F8
    mov r0, #0x63
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    ldr r2, [sp, #0x20]
    mov r1, #0x33
    bl MessageLoader_GetStrbuf
    mov r0, #0x62
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    ldr r2, [sp, #0x20]
    add r1, r6, #0
    bl StringTemplate_Format
    mov r0, #0
    add r1, r6, #0
    add r2, r0, #0
    mov r3, #0x78
    bl Font_CalcCenterAlignment
    mov r1, #0
    add r3, r0, #0
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10200
    add r2, r6, #0
    str r0, [sp, #8]
    add r0, r5, #0
    add r0, #0x10
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
    b _022307DA
 _022307A6:
    mov r0, #0x63
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x30
    add r2, r6, #0
    bl MessageLoader_GetStrbuf
    mov r0, #0
    add r1, r6, #0
    add r2, r0, #0
    bl Font_CalcMaxLineWidth
    mov r1, #0xb8
    sub r0, r1, r0
    mov r1, #0
    lsr r3, r0, #1
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10200
    add r2, r6, #0
    str r0, [sp, #8]
    add r0, r5, #0
    str r1, [sp, #0xc]
    bl Text_AddPrinterWithParamsAndColor
 _022307DA:
    add r0, r6, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x20]
    bl Strbuf_Free
    mov r0, #0x19
    add r3, r5, #0
    str r7, [sp]
    lsl r0, r0, #4
    ldr r0, [r4, r0]
    mov r1, #0xb
    mov r2, #0
    add r3, #0x24
    bl sub_020071D0
    str r0, [r5, #0x20]
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

static void ov64_02230804 (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    BGL_DeleteWindow(&param0->unk_00);
    BGL_DeleteWindow(&param0->unk_10);
    Heap_FreeToHeap(param0->unk_20);
}

static void ov64_0223081C (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    StringTemplate_SetPlayerName(param2->unk_214, 0, SaveData_GetTrainerInfo(param1->unk_00));
    ov64_0222E738(param2, 46);

    sub_020198C0(param2->unk_00, Unk_ov64_02232258[2], param0->unk_24->rawData, 0, 0, param0->unk_24->screenWidth / 8, param0->unk_24->screenHeight / 8);
    sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[2]);
    sub_0201A9A4(&param0->unk_00);
    sub_0201A9A4(&param0->unk_10);
}

static void ov64_0223087C (UnkStruct_ov64_02230620 * param0, UnkStruct_ov64_0222E21C * param1)
{
    ov64_0222E7C8(param1);

    sub_02019CB8(param1->unk_00, Unk_ov64_02232258[2], 0, 0, 0, 32, 24, 0);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[2]);

    sub_0201AD10(&param0->unk_00);
    sub_0201AD10(&param0->unk_10);

    sub_02019CB8(param1->unk_00, Unk_ov64_02232258[3], 0, 0, 0, 32, 24, 0);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[3]);
}

static void ov64_022308DC (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    param0->unk_10 = inline_0208BE68(SaveData_GetVarsFlags(param1->unk_00), 53);

    ov64_02230B1C(param0, param1, param2, param3);
}

static int ov64_02230904 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    BOOL v0;

    switch (param1->unk_04) {
    case 0:
        param0->unk_0E = 0;
        param0->unk_00 = 0;
    case 1:
        ov64_02230BD8(param0, param1, param2, param3);
        param1->unk_04 = 2;
        break;
    case 2:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1501);
            param1->unk_04 = 6;
        } else {
            if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
                ov64_02232138(param0, -1);
                param1->unk_04 = 3;
                param0->unk_08 = 2;
            } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
                ov64_02232138(param0, 1);
                param1->unk_04 = 3;
                param0->unk_08 = 3;
            } else if (gCoreSys.heldKeys & PAD_KEY_UP) {
                param1->unk_04 = 5;
                param0->unk_08 = 0;
                param0->unk_0C = 4;
            } else if (gCoreSys.heldKeys & PAD_KEY_DOWN) {
                param1->unk_04 = 5;
                param0->unk_08 = 1;
                param0->unk_0C = 4;
            }
        }

        if ((gCoreSys.heldKeys & (PAD_KEY_UP | PAD_KEY_DOWN)) == 0) {
            param0->unk_0E = 0;
        }
        break;
    case 3:
        ov64_02230A58(param0, param1, param2, param3);
        ov64_02230A9C(param0, param1, param2, param3);
        param1->unk_04 = 4;
        break;
    case 4:
        v0 = ov64_02230A9C(param0, param1, param2, param3);

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
            Sound_PlayEffect(1509);

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

static void ov64_02230A50 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
{
    ov64_02230BA0(param0, param1, param2);
}

static void ov64_02230A58 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
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
    Sound_PlayEffect(1505);
}

static BOOL ov64_02230A9C (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    u32 v0;
    s32 v1;
    NNSG2dViewRect v2;
    u32 v3;
    static void (* v4[4])(UnkStruct_ov64_02230904 *, UnkStruct_ov64_0222E21C *, u32, u32) = {
        ov64_02230D98, NULL, ov64_02230DE4, NULL
    };

    if (param0->unk_04 > 4) {
        sub_0201C63C(param2->unk_00, Unk_ov64_02232258[2], 0, 0);
        sub_0201C63C(param2->unk_00, Unk_ov64_02232258[3], 0, 0);

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

    sub_0201C63C(param2->unk_00, Unk_ov64_02232258[2], 0, v1);
    sub_0201C63C(param2->unk_00, Unk_ov64_02232258[3], 0, v1);

    if (param0->unk_04 % (4 / 4)) {
        v3 = param0->unk_04 / (4 / 4);

        if (v4[v3]) {
            v4[v3](param0, param2, param0->unk_00, param0->unk_02);
        }
    }

    param0->unk_04++;

    return 0;
}

static void ov64_02230B1C (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    int v0, v1;
    static const u32 v2[3] = {
        1, (1 + 500), (1 + 500),
    };

    ov64_02230F24(&param0->unk_DC, param2, param3);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_02230F78(&param0->unk_14[v0], param2, &Unk_ov64_0223221C[v0], v2[v0], param3);

        for (v1 = 0; v1 < 7; v1++) {
            ov64_02230F9C(&param0->unk_14[v0], param2, v1, Unk_ov64_02232434[v1], Unk_ov64_02232470[v1], param3);
        }
    }
}

static void ov64_02230BA0 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2)
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

static void ov64_02230BD8 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    ov64_0222E880(param2, param1->unk_00, param1->unk_08.unk_04[param1->unk_07], param3);
    ov64_0222E738(param2, 13);
    ov64_02230C50(param0, param1, param2, 0, param0->unk_00, param3);
    ov64_0222EA28(param2, 1);
}

static void ov64_02230C1C (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1)
{
    int v0;

    ov64_0222EA28(param1, 0);

    for (v0 = 0; v0 < 3; v0++) {
        ov64_02231144(&param0->unk_14[v0], param1);
    }

    ov64_02230D50(param0, param1);
    ov64_0222E7C8(param1);
}

static void ov64_02230C50 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, u32 param4, u32 param5)
{
    if (param3 == 0) {
        param0->unk_00 = param4;

        ov64_02230C8C(param0, param2, param4, param5);
    }

    ov64_022310D4(&param0->unk_14[param3], param1, param2, param4, &param0->unk_DC, param5);
}

static void ov64_02230C8C (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    u32 v0;

    if (param0->unk_10 == 1) {
        sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    } else {
        sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4 + 3, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    }

    v0 = 22 + (1 * param2) + 1;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 5, 0, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_02230D50 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1)
{
    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 0x10, 0x0, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_02230D98 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    int v0;

    v0 = 22 + (1 * param3) + 1;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 5, 1, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static void ov64_02230DE4 (UnkStruct_ov64_02230904 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3)
{
    int v0;

    if (param0->unk_10 == 1) {
        sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    } else {
        sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], 22, 0, 9, 3, param1->unk_278.unk_08[1]->rawData, 16, 4 + 3, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    }

    v0 = 22 + (1 * param2) + 1;

    sub_020198E8(param1->unk_00, Unk_ov64_02232258[0], v0, 0 + 1, 1, 1, param1->unk_278.unk_08[1]->rawData, 5, 0, param1->unk_278.unk_08[1]->screenWidth / 8, param1->unk_278.unk_08[1]->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, Unk_ov64_02232258[0]);
}

static BOOL ov64_02230EA8 (UnkStruct_ov64_0222E060 * param0, int param1)
{
    int v0;
    u32 v1;
    s32 v2;
    UnkStruct_0202B370 * v3;

    v3 = sub_0202B370(param0->unk_00);
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

static void ov64_02230F24 (UnkStruct_ov64_02230F60 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2)
{
    static const u8 v0[7] = {
        4, 5, 6, 7, 8, 9, 10,
    };
    int v1;

    for (v1 = 0; v1 < 7; v1++) {
        param0->unk_00[v1] = sub_020071D0(param1->unk_21C, v0[v1], 0, &param0->unk_1C[v1], param2);
    }
}

static void ov64_02230F60 (UnkStruct_ov64_02230F60 * param0)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        Heap_FreeToHeap(param0->unk_00[v0]);
    }
}

static void ov64_02230F78 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E21C * param1, const UnkStruct_ov64_0223221C * param2, u32 param3, u32 param4)
{
    int v0;

    param0->unk_00 = *param2;
    param0->unk_08 = param3;

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_0C[v0] = NULL;
        param0->unk_28[v0] = 0;
    }
}

static void ov64_02230F98 (UnkStruct_ov64_02230F98 * param0)
{
    return;
}

static void ov64_02230F9C (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E21C * param1, u32 param2, u32 param3, const UnkStruct_ov64_0223222E * param4, u32 param5)
{
    int v0;
    u16 v1;

    param0->unk_0C[param2] = sub_0201A778(param5, param3);
    param0->unk_28[param2] = param3;

    v1 = param0->unk_08;

    for (v0 = 0; v0 < param3; v0++) {
        Window_Init(&param0->unk_0C[param2][v0]);
        BGL_AddWindow(param1->unk_00, &param0->unk_0C[param2][v0], Unk_ov64_02232258[3], MATH_ABS(param0->unk_00.unk_00) + param4[v0].unk_00, MATH_ABS(param0->unk_00.unk_02) + param4[v0].unk_01, param4[v0].unk_02, param4[v0].unk_03, 7, v1);
        BGL_FillWindow(&param0->unk_0C[param2][v0], 0);
        v1 += (param4[v0].unk_02 * param4[v0].unk_03);
    }
}

static void ov64_02231058 (UnkStruct_ov64_02230F98 * param0, u32 param1)
{
    if (param0->unk_0C[param1]) {
        sub_0201A928(param0->unk_0C[param1], param0->unk_28[param1]);
        param0->unk_0C[param1] = NULL;
        param0->unk_28[param1] = 0;
    }
}

static void ov64_02231080 (UnkStruct_ov64_02230F98 * param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_28[param1]; v0++) {
        sub_0201A9A4(&param0->unk_0C[param1][v0]);
    }
}

static void ov64_022310A4 (UnkStruct_ov64_02230F98 * param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_28[param1]; v0++) {
        sub_0201AD10(&param0->unk_0C[param1][v0]);
        BGL_FillWindow(&param0->unk_0C[param1][v0], 0);
    }
}

static void ov64_022310D4 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3, const UnkStruct_ov64_02230F60 * param4, u32 param5)
{
    static void (* v0[7])(UnkStruct_ov64_02230F98 *, UnkStruct_ov64_0222E060 *, UnkStruct_ov64_0222E21C *, u32) = {
        ov64_02231164,
        ov64_02231E94,
        ov64_02231528,
        ov64_02231664,
        ov64_02231A00,
        ov64_02231BE0,
        ov64_02231D58
    };

    ov64_02231144(param0, param2);

    sub_020198C0(param2->unk_00, Unk_ov64_02232258[2], param4->unk_1C[param3]->rawData, MATH_ABS(param0->unk_00.unk_00), MATH_ABS(param0->unk_00.unk_02), param4->unk_1C[param3]->screenWidth / 8, param4->unk_1C[param3]->screenHeight / 8);
    sub_0201C3C0(param2->unk_00, Unk_ov64_02232258[2]);

    v0[param3](param0, param1, param2, param5);
}

static void ov64_02231144 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E21C * param1)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        ov64_022310A4(param0, v0);
    }

    ov64_02232038(param1, &param0->unk_00);
}

// clang-format off
asm static void ov64_02231164 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x50
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    str r3, [sp, #0x24]
    add r4, r2, #0
    bl sub_0202B370
    str r0, [sp, #0x2c]
    ldr r1, [sp, #0x24]
    mov r0, #0x80
    bl Strbuf_Init
    add r7, r0, #0
    ldr r1, [sp, #0x24]
    mov r0, #0x80
    bl Strbuf_Init
    add r6, r0, #0
    mov r1, #0
    str r4, [sp]
    mov r0, #0xe
    str r0, [sp, #4]
    str r1, [sp, #8]
    mov r0, #4
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    add r2, r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r1, [r5, #0]
    ldr r3, [sp, #0x24]
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    add r0, r4, #0
    bl ov64_0222E8C0
    mov r1, #0
    str r4, [sp]
    mov r0, #0x3d
    str r0, [sp, #4]
    mov r0, #0x80
    str r0, [sp, #8]
    mov r0, #4
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    add r2, r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    bl ov64_022320B8
    mov r1, #0
    str r4, [sp]
    mov r0, #0xf
    str r0, [sp, #4]
    str r1, [sp, #8]
    mov r0, #0x1c
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    add r2, r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    str r1, [sp, #0x1c]
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #4
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #1
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x2c]
    mov r2, #1
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x12
    str r0, [sp, #4]
    mov r0, #0x40
    str r0, [sp, #8]
    mov r0, #4
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #1
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x11
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #0x14
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #1
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x2c]
    mov r2, #2
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x12
    str r0, [sp, #4]
    mov r0, #0x40
    str r0, [sp, #8]
    mov r0, #0x14
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #1
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x13
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #4
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x2c]
    mov r2, #3
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x14
    str r0, [sp, #4]
    mov r0, #0x80
    str r0, [sp, #8]
    mov r0, #4
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    mov r1, #0
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    ldr r1, [sp, #0x24]
    add r0, r5, #0
    bl ov64_0223217C
    cmp r0, #0
    beq _02231390
    str r4, [sp]
    mov r0, #0x15
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #0x14
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x2c]
    mov r2, #9
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x16
    str r0, [sp, #4]
    mov r0, #0x80
    str r0, [sp, #8]
    mov r0, #0x14
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    mov r1, #0
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
 _02231390:
    str r4, [sp]
    mov r0, #0x17
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #6
    str r0, [sp, #0xc]
    ldr r0, = 0xF0200
    mov r2, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r1, [r5, #0]
    add r0, r4, #0
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl ov64_0222E8FC
    cmp r0, #0
    beq _022313EC
    str r4, [sp]
    mov r0, #0x18
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #6
    str r0, [sp, #0xc]
    ldr r0, = 0xF0200
    mov r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #3
    add r3, r5, #0
    bl ov64_022320B8
 _022313EC:
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x2c]
    mov r2, #8
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    mov r2, #7
    ldrsb r1, [r5, r2]
    str r0, [sp, #0x30]
    ldr r0, [sp, #0x2c]
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    ldr r0, [sp, #0x30]
    mov r2, #1
    bl sub_0205CA14
    mov r1, #2
    add r2, sp, #0x38
    bl sub_02076AAC
    mov r1, #0x32
    ldr r0, [sp, #0x24]
    lsl r1, r1, #6
    bl Heap_AllocFromHeap
    mov r3, #0
    str r0, [sp, #0x34]
    str r3, [sp]
    mov r0, #0xa
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r0, [sp, #0x34]
    ldr r2, [sp, #0x24]
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x38]
    ldr r1, [sp, #0x4c]
    bl sub_020133D4
    mov r1, #0x50
    str r1, [sp]
    mov r2, #0
    str r1, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    ldr r0, [sp, #0x20]
    ldr r1, [sp, #0x34]
    ldr r0, [r0, #0xc]
    add r3, r2, #0
    add r0, #0x40
    bl sub_0201ADDC
    ldr r0, [sp, #0x34]
    bl Heap_FreeToHeap
    mov r0, #0x20
    str r0, [sp]
    ldr r0, [sp, #0x24]
    mov r3, #5
    str r0, [sp, #4]
    ldr r0, [sp, #0x38]
    ldr r1, [sp, #0x40]
    mov r2, #0
    lsl r3, r3, #6
    bl sub_02006E84
    ldr r0, [sp, #0x30]
    cmp r0, #0
    bne _0223148A
    ldr r0, = 0x50600
    str r0, [sp, #0x28]
    b _0223149A
 _0223148A:
    cmp r0, #1
    bne _02231496
    mov r0, #0xc1
    lsl r0, r0, #0xa
    str r0, [sp, #0x28]
    b _0223149A
 _02231496:
    ldr r0, = 0x10200
    str r0, [sp, #0x28]
 _0223149A:
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r1, [r5, #0]
    ldr r3, [sp, #0x24]
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    add r0, r4, #0
    bl ov64_0222E880
    str r4, [sp]
    mov r0, #6
    str r0, [sp, #4]
    mov r0, #0x2c
    str r0, [sp, #8]
    mov r0, #0x58
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x28]
    mov r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #4
    add r3, r5, #0
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #0
    bl ov64_02231080
    ldr r0, [sp, #0x20]
    ldr r0, [r0, #0xc]
    add r0, #0x40
    bl sub_0201C29C
    add r5, r0, #0
    ldr r0, [sp, #0x20]
    ldr r0, [r0, #0xc]
    add r0, #0x40
    bl sub_0201C2A0
    add r3, r0, #0
    mov r0, #0xb
    str r0, [sp]
    str r0, [sp, #4]
    mov r0, #0xa
    str r0, [sp, #8]
    lsl r2, r5, #0x18
    lsl r3, r3, #0x18
    ldr r0, [r4, #0]
    mov r1, #3
    lsr r2, r2, #0x18
    lsr r3, r3, #0x18
    bl sub_02019E2C
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x50
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

// clang-format off
asm static void ov64_02231528 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    add r6, r3, #0
    add r4, r2, #0
    bl sub_0203068C
    str r0, [sp, #0x24]
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r7, r0, #0
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r6, r0, #0
    str r4, [sp]
    mov r0, #0x19
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #8
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x64
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    cmp r0, #0
    bne _0223158A
    mov r0, #0x1e
    b _0223158C
 _0223158A:
    mov r0, #0x1f
 _0223158C:
    str r4, [sp]
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x20
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x71
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x20
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    str r1, [sp, #0x1c]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x38
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x70
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x38
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    str r1, [sp, #0x1c]
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #2
    bl ov64_02231080
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

// clang-format off
asm static void ov64_02231664 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    add r6, r3, #0
    add r4, r2, #0
    bl sub_0203068C
    str r0, [sp, #0x24]
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r7, r0, #0
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r6, r0, #0
    str r4, [sp]
    mov r0, #0x1a
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    ldr r0, = 0x10200
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    str r2, [sp, #0x1c]
    mov r1, #3
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x21
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    ldr r0, = 0x10200
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    str r1, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r1, #3
    mov r2, #1
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x23
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #1
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x66
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    cmp r0, #0
    bne _0223170C
    mov r0, #0x1e
    b _0223170E
 _0223170C:
    mov r0, #0x1f
 _0223170E:
    str r4, [sp]
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    ldr r0, = 0x10200
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    str r1, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r1, #3
    mov r2, #2
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x73
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0x70
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #2
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x75
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x27
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    str r2, [sp, #0x1c]
    mov r1, #3
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    str r1, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r1, #3
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x72
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0x70
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #2
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x74
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x27
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #2
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    str r2, [sp, #0x1c]
    mov r1, #3
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x22
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    ldr r0, = 0x10200
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    str r1, [sp, #0x1c]
    mov r1, #3
    ldr r0, [sp, #0x20]
    add r2, r1, #0
    add r3, r5, #0
    bl ov64_022320B8
    mov r1, #3
    str r4, [sp]
    mov r0, #0x23
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    add r2, r1, #0
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x68
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    cmp r0, #0
    bne _022318A6
    mov r0, #0x1e
    b _022318A8
 _022318A6:
    mov r0, #0x1f
 _022318A8:
    str r4, [sp]
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    ldr r0, = 0x10200
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    str r1, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r1, #3
    mov r2, #4
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x77
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0x70
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #4
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x79
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x27
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #4
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r1, #0
    str r1, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r2, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    str r1, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r1, #3
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x76
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0x70
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #4
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x78
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x27
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #3
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #4
    add r3, r5, #0
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #3
    bl ov64_02231080
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

// clang-format off
asm static void ov64_02231A00 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    add r6, r3, #0
    add r4, r2, #0
    bl sub_0203068C
    str r0, [sp, #0x24]
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r7, r0, #0
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r6, r0, #0
    str r4, [sp]
    mov r0, #0x1b
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    ldr r0, = 0x10200
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    str r2, [sp, #0x1c]
    mov r1, #4
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x24
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0x14
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x6c
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    cmp r0, #0
    bne _02231A86
    mov r0, #0x1e
    b _02231A88
 _02231A86:
    mov r0, #0x1f
 _02231A88:
    str r4, [sp]
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x87
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x29
    str r0, [sp, #4]
    mov r0, #0x70
    str r0, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x88
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x28
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x86
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x29
    str r0, [sp, #4]
    mov r0, #0x70
    str r0, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #1
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x8a
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x28
    str r0, [sp, #4]
    mov r0, #0xe0
    str r0, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #4
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #4
    bl ov64_02231080
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

// clang-format off
asm static void ov64_02231BE0 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x30
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    str r3, [sp, #0x24]
    add r4, r2, #0
    bl sub_0203068C
    str r0, [sp, #0x28]
    ldr r1, [sp, #0x24]
    mov r0, #0x80
    bl Strbuf_Init
    add r7, r0, #0
    ldr r1, [sp, #0x24]
    mov r0, #0x80
    bl Strbuf_Init
    add r6, r0, #0
    str r4, [sp]
    mov r0, #0x1c
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    ldr r0, = 0x10200
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    mov r1, #5
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x28]
    mov r1, #0x7c
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    ldr r1, [sp, #0x24]
    bl MessageUtil_SpeciesName
    str r0, [sp, #0x2c]
    mov r0, #0x18
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x20]
    str r1, [sp, #0xc]
    ldr r0, [r0, #0x20]
    ldr r2, [sp, #0x2c]
    add r3, r1, #0
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [sp, #0x2c]
    bl Strbuf_Free
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x28]
    mov r1, #0x6a
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    cmp r0, #0
    bne _02231C7A
    mov r0, #0x1e
    b _02231C7C
 _02231C7A:
    mov r0, #0x1f
 _02231C7C:
    str r4, [sp]
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #5
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x28]
    mov r1, #0x7b
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #5
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #5
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x28]
    mov r1, #0x7a
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x26
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #5
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #5
    bl ov64_02231080
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x30
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

// clang-format off
asm static void ov64_02231D58 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    add r6, r3, #0
    add r4, r2, #0
    bl sub_0203068C
    str r0, [sp, #0x24]
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r7, r0, #0
    mov r0, #0x80
    add r1, r6, #0
    bl Strbuf_Init
    add r6, r0, #0
    str r4, [sp]
    mov r0, #0x1d
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    ldr r0, = 0x10200
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    mov r1, #6
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x6e
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    cmp r0, #0
    bne _02231DB8
    mov r0, #0x1e
    b _02231DBA
 _02231DB8:
    mov r0, #0x1f
 _02231DBA:
    str r4, [sp]
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x18
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #6
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x8f
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x2a
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x18
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #6
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    str r4, [sp]
    mov r0, #0x20
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #6
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r2, #7
    ldrsb r2, [r5, r2]
    ldr r0, [sp, #0x24]
    mov r1, #0x8e
    add r2, r5, r2
    ldrb r2, [r2, #0xc]
    bl sub_02030698
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x2a
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #6
    str r0, [sp, #0x10]
    str r7, [sp, #0x14]
    str r6, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #6
    bl ov64_02231080
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

// clang-format off
asm static void ov64_02231E94 (UnkStruct_ov64_02230F98 * param0, UnkStruct_ov64_0222E060 * param1, UnkStruct_ov64_0222E21C * param2, u32 param3)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [r5, #0]
    add r4, r2, #0
    add r7, r3, #0
    bl sub_0203068C
    ldr r0, [r5, #0]
    bl sub_0202B370
    str r0, [sp, #0x24]
    mov r0, #0x80
    add r1, r7, #0
    bl Strbuf_Init
    add r6, r0, #0
    mov r0, #0x80
    add r1, r7, #0
    bl Strbuf_Init
    add r7, r0, #0
    str r4, [sp]
    mov r0, #0x2b
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    ldr r0, = 0x10200
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    ldr r0, [sp, #0x20]
    mov r1, #1
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    add r0, r4, #0
    mov r1, #0
    bl ov64_0222E990
    str r4, [sp]
    mov r0, #0x2c
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x18
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #1
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x24]
    mov r2, #0xa
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x2d
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x18
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #1
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    add r0, r4, #0
    mov r1, #1
    bl ov64_0222E990
    str r4, [sp]
    mov r0, #0x2c
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #1
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x24]
    mov r2, #0xb
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x2d
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x30
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #1
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    add r0, r4, #0
    mov r1, #2
    bl ov64_0222E990
    str r4, [sp]
    mov r0, #0x2c
    str r0, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #1
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r3, r5, #0
    str r2, [sp, #0x1c]
    bl ov64_022320B8
    mov r1, #7
    ldrsb r1, [r5, r1]
    ldr r0, [sp, #0x24]
    mov r2, #0xc
    add r1, r5, r1
    ldrb r1, [r1, #0xc]
    bl sub_0202AD2C
    add r1, r0, #0
    add r0, r4, #0
    bl ov64_0222E970
    str r4, [sp]
    mov r0, #0x2d
    str r0, [sp, #4]
    mov r0, #0xa0
    str r0, [sp, #8]
    mov r0, #0x48
    str r0, [sp, #0xc]
    ldr r0, = 0x10200
    mov r1, #1
    str r0, [sp, #0x10]
    str r6, [sp, #0x14]
    str r7, [sp, #0x18]
    mov r0, #2
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x20]
    mov r2, #0
    add r3, r5, #0
    bl ov64_022320B8
    ldr r0, [sp, #0x20]
    mov r1, #1
    bl ov64_02231080
    add r0, r6, #0
    bl Strbuf_Free
    add r0, r7, #0
    bl Strbuf_Free
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on

static void ov64_02232038 (UnkStruct_ov64_0222E21C * param0, const UnkStruct_ov64_0223221C * param1)
{
    sub_02019CB8(param0->unk_00, Unk_ov64_02232258[2], 0, MATH_ABS(param1->unk_00), MATH_ABS(param1->unk_02), 32, 24, 0);
    sub_0201C3C0(param0->unk_00, Unk_ov64_02232258[2]);
    sub_02019CB8(param0->unk_00, Unk_ov64_02232258[3], 0, MATH_ABS(param1->unk_00), MATH_ABS(param1->unk_02), 32, 24, 0);
    sub_0201C3C0(param0->unk_00, Unk_ov64_02232258[3]);
}

// clang-format off
asm static void ov64_022320B8 (UnkStruct_ov64_02230F98 * param0, u32 param1, u32 param2, UnkStruct_ov64_0222E060 * param3, UnkStruct_ov64_0222E21C * param4, u32 param5, u32 param6, u32 param7, u32 param8, Strbuf *param9, Strbuf *param10)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r7, r0, #0
    mov r0, #0x63
    str r1, [sp, #0x10]
    str r2, [sp, #0x14]
    ldr r6, [sp, #0x30]
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    ldr r1, [sp, #0x34]
    ldr r2, [sp, #0x48]
    ldr r5, [sp, #0x38]
    ldr r4, [sp, #0x44]
    bl MessageLoader_GetStrbuf
    mov r0, #0x62
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    ldr r2, [sp, #0x48]
    add r1, r4, #0
    bl StringTemplate_Format
    ldr r0, [sp, #0x4c]
    cmp r0, #1
    beq _022320F0
    cmp r0, #2
    beq _02232102
    b _0223210E
 _022320F0:
    mov r0, #0
    add r1, r4, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    add r0, r0, #1
    lsr r0, r0, #1
    sub r5, r5, r0
    b _0223210E
 _02232102:
    mov r0, #0
    add r1, r4, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    sub r5, r5, r0
 _0223210E:
    ldr r0, [sp, #0x3c]
    mov r1, #0
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, [sp, #0x40]
    add r3, r5, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x10]
    str r1, [sp, #0xc]
    lsl r0, r0, #2
    add r0, r7, r0
    ldr r2, [r0, #0xc]
    ldr r0, [sp, #0x14]
    lsl r0, r0, #4
    add r0, r2, r0
    add r2, r4, #0
    bl Text_AddPrinterWithParamsAndColor
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

static void ov64_02232138 (UnkStruct_ov64_02230904 * param0, s32 param1)
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

static BOOL ov64_0223217C (UnkStruct_ov64_0222E060 * param0, u32 param1)
{
    if (!Bag_GetItemQuantity(SaveData_GetBag(param0->unk_00), 449, param1)) {
        return 0;
    }

    return 1;
}

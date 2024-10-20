#include "overlay065/ov65_0223648C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207DE04.h"
#include "struct_defs/struct_0207DFAC.h"
#include "struct_defs/struct_0207E060.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/struct_ov63_0222BE18_decl.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CD2C.h"
#include "overlay063/struct_ov63_0222CE44.h"
#include "overlay065/struct_ov65_022366E4.h"
#include "overlay065/struct_ov65_02236744_decl.h"
#include "overlay065/struct_ov65_02236760.h"
#include "overlay065/struct_ov65_022376D0.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_0209C390.h"

FS_EXTERN_OVERLAY(overlay63);

typedef struct {
    UnkStruct_0207DFAC *unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    s32 unk_08;
    s32 unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14[4];
    u8 unk_18[4];
    u8 unk_1C[4];
    u8 unk_20[4];
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
    u8 unk_27;
    u8 unk_28[4];
    u8 unk_2C;
    u8 unk_2D;
} UnkStruct_ov65_02236794;

typedef struct {
    UnkStruct_ov63_0222BEC0 *unk_00;
    UnkStruct_ov63_0222CE44 *unk_04;
    u16 unk_08;
    s16 unk_0A;
} UnkStruct_ov65_02237908;

typedef struct {
    BGL *unk_00;
    StringTemplate *unk_04;
    MessageLoader *unk_08;
    Strbuf *unk_0C;
    Strbuf *unk_10;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    CellActorCollection *unk_18;
    UnkStruct_0200C738 unk_1C;
    SpriteResourceCollection *unk_1A8[4];
    UnkStruct_ov63_0222BE18 *unk_1B8;
    UnkStruct_ov63_0222CD2C *unk_1BC;
    UnkStruct_ov65_02237908 unk_1C0[4];
    Window unk_1F0;
    Window unk_200;
    Window unk_210;
    Window unk_220;
    Window unk_230;
    UIControlData *unk_240;
    void *unk_244;
    NNSG2dScreenData *unk_248;
    void *unk_24C;
    void *unk_250;
    NNSG2dPaletteData *unk_254;
    s16 unk_258;
    s16 unk_25A;
} UnkStruct_ov65_02236840;

typedef struct UnkStruct_ov65_02236744_t {
    UnkStruct_ov65_02236794 unk_00;
    UnkStruct_ov65_02236840 unk_30;
} UnkStruct_ov65_022367A8;

static void ov65_02236780(void *param0);
static BOOL ov65_02236794(const UnkStruct_ov65_02236794 *param0);
static void ov65_022367A8(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_022367F8(UnkStruct_ov65_022367A8 *param0, u32 param1);
static void ov65_02236820(void);
static void ov65_02236840(UnkStruct_ov65_02236840 *param0, u32 param1);
static void ov65_022369F0(UnkStruct_ov65_02236840 *param0);
static void ov65_02236A28(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_02236B90(UnkStruct_ov65_02236840 *param0, u32 param1);
static void ov65_02236C10(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_02236C5C(UnkStruct_ov65_02236840 *param0);
static void ov65_02236C7C(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_02236D50(UnkStruct_ov65_02236840 *param0, u32 param1);
static void ov65_02236E04(UnkStruct_ov65_02236840 *param0);
static void ov65_02236E44(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2, u32 param3);
static void ov65_02236E50(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2, u8 param3, u32 param4);
static BOOL ov65_02236EF8(UnkStruct_ov65_02236840 *param0);
static void ov65_02236F38(UnkStruct_ov65_02236840 *param0);
static void ov65_02236F70(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, u32 param3);
static void ov65_02237018(UnkStruct_ov65_02236840 *param0);
static void ov65_02237034(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_0223709C(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02236840 *param1, const UnkStruct_0207DE04 *param2, int param3, u32 param4);
static void ov65_022371FC(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, u32 param3);
static void ov65_0223726C(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, int param3, u32 param4);
static void ov65_02237284(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, int param3, u32 param4);
static void ov65_022372B0(UnkStruct_ov65_02236840 *param0);
static void ov65_022372EC(UnkStruct_ov65_02236840 *param0, u32 param1);
static BOOL ov65_0223731C(UnkStruct_ov65_022367A8 *param0, u32 param1);
static void ov65_02237370(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_0223742C(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237450(const UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237464(u32 param0, u32 param1);
static void ov65_02237498(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1);
static BOOL ov65_022374DC(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237504(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237520(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237534(UnkStruct_ov65_022367A8 *param0);
static int ov65_02237548(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237550(UnkStruct_ov65_022367A8 *param0, u32 param1);
static void ov65_0223758C(UnkStruct_ov65_022367A8 *param0);
static void ov65_022375CC(UnkStruct_ov65_022367A8 *param0);
static void ov65_0223760C(UnkStruct_ov65_022367A8 *param0);
static void ov65_0223761C(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237628(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237654(u16 param0, void *param1);
static BOOL ov65_02237660(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237698(UnkStruct_ov65_022367A8 *param0);
static void ov65_022376A0(UnkStruct_ov65_022367A8 *param0, u32 param1, u32 param2);
static void ov65_022376D0(UnkStruct_ov65_022367A8 *param0, u32 param1, u32 param2);
static void ov65_022377A4(UnkStruct_ov65_022367A8 *param0);
static void ov65_022377E8(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237808(UnkStruct_ov65_022367A8 *param0, u32 param1);
static void ov65_0223782C(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237860(UnkStruct_ov65_022367A8 *param0, u32 param1);
static void ov65_0223789C(UnkStruct_ov65_022367A8 *param0);
static void ov65_022378C4(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1, u32 param2);
static void ov65_02237908(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1);
static void ov65_0223790C(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1);
static void ov65_02237940(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1);
static void ov65_0223796C(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1);
static void ov65_02237970(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237A10(UnkStruct_ov65_022367A8 *param0);
static void ov65_02237A24(UnkStruct_0207DE04 *param0, u32 param1);
static void ov65_02237A44(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237A54(UnkStruct_ov65_022367A8 *param0);
static BOOL ov65_02237A70(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237AA8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237AC0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237B9C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237BC4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237BF8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237C98(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237CB0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237CCC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237CE4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237D18(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237D60(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237D98(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237DD0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237DF8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237E24(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237E54(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237EA4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237EC0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237EF0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237F08(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237F48(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237FA0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237FB8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02237FF8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238050(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_0223806C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022380AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022380E8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238104(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238134(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_0223815C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238190(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022381CC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022381E4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238210(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238250(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022382B0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022382F0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238314(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238350(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238370(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022383AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022383D0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_0223846C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022384BC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_0223850C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238528(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238558(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238594(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022385AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022385D4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238608(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238660(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022386D0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238728(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_0223875C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_0223878C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022387AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022387E8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238838(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_022388FC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);
static BOOL ov65_02238910(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2);

static const u8 Unk_ov65_02239A20[4] = {
    0x8,
    0x0,
    0x4,
    0xC
};

static const u8 Unk_ov65_02239C04[18] = {
    0x5,
    0x4,
    0x3,
    0x2,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x5,
    0x5,
    0x5
};

static const UnkStruct_ov61_0222C884 Unk_ov65_02239A24 = {
    0x2,
    0x19,
    0xD,
    0x5,
    0x4,
    0x1,
    0x39
};

static u8 Unk_ov65_02239E5C[4] = {
    0x7E,
    0x7F,
    0x7F,
    0x7F
};

static const UnkStruct_ov65_022376D0 Unk_ov65_02239AD8[4] = {
    { 0xD0, 0x30, 0x0, 0x0, 0x1, 0x0 },
    { 0xE8, 0x48, 0x1, 0x0, 0x2, 0x0 },
    { 0xD0, 0x60, 0x2, 0x0, 0x0, 0x0 },
    { 0xB8, 0x48, 0x3, 0x0, 0x3, 0x0 }
};

static BOOL (*const Unk_ov65_02239B80[33])(UnkStruct_ov65_022367A8 *, UnkStruct_0207DE04 *, u32) = {
    ov65_02237A70,
    ov65_02237AA8,
    ov65_02237AC0,
    ov65_02237B9C,
    ov65_02237BC4,
    ov65_02237BF8,
    ov65_02237C98,
    ov65_02237CB0,
    ov65_02237CCC,
    ov65_02237CE4,
    ov65_02237D18,
    ov65_02237D60,
    ov65_02237D98,
    ov65_02237DD0,
    ov65_02237DF8,
    ov65_02237E24,
    ov65_02237E54,
    ov65_02237EA4,
    ov65_02237EC0,
    ov65_02237EF0,
    ov65_02237F08,
    ov65_02237F48,
    ov65_02237FA0,
    ov65_02237FB8,
    ov65_02237FF8,
    ov65_02238050,
    ov65_0223806C,
    ov65_022380AC,
    ov65_022380E8,
    ov65_02238104,
    ov65_02238134,
    ov65_0223815C,
    ov65_02238190
};

static BOOL (*const Unk_ov65_02239B08[30])(UnkStruct_ov65_022367A8 *, UnkStruct_0207DE04 *, u32) = {
    ov65_022381CC,
    ov65_022381E4,
    ov65_02238210,
    ov65_02238250,
    ov65_022382B0,
    ov65_022382F0,
    ov65_02238314,
    ov65_02238350,
    ov65_02238370,
    ov65_022383AC,
    ov65_022383D0,
    ov65_0223846C,
    ov65_022384BC,
    ov65_0223850C,
    ov65_02238528,
    ov65_02238558,
    ov65_02238594,
    ov65_022385AC,
    ov65_022385D4,
    ov65_02238608,
    ov65_02238660,
    ov65_022386D0,
    ov65_02238728,
    ov65_0223875C,
    ov65_0223878C,
    ov65_022387AC,
    ov65_022387E8,
    ov65_02238838,
    ov65_022388FC,
    ov65_02238910
};

static void (*const Unk_ov65_02239A2C[4])(UnkStruct_ov65_022367A8 *, UnkStruct_ov65_02237908 *) = {
    ov65_02237908,
    ov65_0223790C,
    ov65_02237940,
    ov65_0223796C,
};

int ov65_0223648C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov65_022367A8 *v0;
    UnkStruct_0207DE04 *v1 = OverlayManager_Args(param0);
    BOOL v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);

    v2 = sub_020389B8();
    GF_ASSERT(v2 == 1);

    Heap_Create(3, 96, 0x18000);
    Heap_Create(3, 97, 0xa000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov65_022367A8), 96);

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov65_022367A8));
    MI_CpuFill8(v0->unk_00.unk_1C, 1, sizeof(u8) * 4);
    MI_CpuFill8(v0->unk_00.unk_20, 1, sizeof(u8) * 4);

    sub_0201DBEC(16, 96);

    v0->unk_00.unk_00 = sub_020388E8();
    v0->unk_00.unk_00->unk_00.unk_21 = v0->unk_00.unk_00->unk_00.unk_22;
    v0->unk_00.unk_04 = ov65_02236794(&v0->unk_00);
    v0->unk_00.unk_06 = 0xff;

    sub_0209C390(v0);

    ov65_0223760C(v0);
    ov65_022367A8(v0, v1, 96);

    SetMainCallback(ov65_02236780, v0);
    sub_02039734();

    v0->unk_00.unk_27 = 1;

    return 1;
}

int ov65_02236548(OverlayManager *param0, int *param1)
{
    UnkStruct_ov65_022367A8 *v0 = OverlayManager_Data(param0);
    UnkStruct_0207DE04 *v1 = OverlayManager_Args(param0);
    BOOL v2;

    switch (*param1) {
    case 0:
        sub_0200F174(3, 1, 1, 0x0, 6, 1, 96);
        (*param1)++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            (*param1)++;
        }
        break;
    case 2:
        if (v0->unk_00.unk_27) {
            ov65_02237370(v0, v1, 96);
        }

        if (v0->unk_00.unk_04) {
            if (CommInfo_IsInitialized() == 1) {
                ov65_02237970(v0);
                CommInfo_ServerSendArray();
                ov65_0223782C(v0);
            }

            v2 = Unk_ov65_02239B80[v0->unk_00.unk_05](v0, v1, 96);
        } else {
            v2 = Unk_ov65_02239B08[v0->unk_00.unk_05](v0, v1, 96);

            if (CommInfo_IsInitialized() == 1) {
                ov65_02237860(v0, 96);
            }
        }

        if (ov65_02237660(v0)) {
            ov65_02237034(v0, v1, 96);
        }

        ov65_022377A4(v0);

        if (v2 == 1) {
            v1->unk_03 = v0->unk_00.unk_07;
            v1->unk_04 = v0->unk_00.unk_11;
            (*param1)++;
        }
        break;
    case 3:
        sub_0200F174(3, 0, 0, 0x0, 6, 1, 96);
        (*param1)++;
        break;
    case 4:
        if (ScreenWipe_Done()) {
            return 1;
        }

        break;
    }

    ov65_022372B0(&v0->unk_30);
    CellActorCollection_Update(v0->unk_30.unk_18);

    return 0;
}

int ov65_0223668C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov65_022367A8 *v0 = OverlayManager_Data(param0);
    UnkStruct_0207DE04 *v1 = OverlayManager_Args(param0);

    SetMainCallback(NULL, NULL);

    ov65_0223761C(v0);
    ov65_022377E8(v0);
    ov65_02237504(v0);
    ov65_022367F8(v0, 96);

    sub_0201DC3C();
    OverlayManager_FreeData(param0);
    Heap_Destroy(97);
    Heap_Destroy(96);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));

    return 1;
}

void ov65_022366E4(UnkStruct_ov65_02236744 *param0, const UnkStruct_ov65_022366E4 *param1)
{
    if (param0->unk_00.unk_04 == 0) {
        if (param1->unk_00 == CommSys_CurNetId()) {
            switch (param1->unk_04) {
            case 1:
                param0->unk_00.unk_13 = 1;
                break;
            case 0:
                param0->unk_00.unk_13 = 2;
                break;
            case 2:
                param0->unk_00.unk_13 = 3;
                break;
            }
        } else {
            switch (param1->unk_04) {
            case 1:
                param0->unk_00.unk_28[param1->unk_00] = 1;
                break;

            case 0:
            case 2:
                if (CommInfo_IsInitialized() == 1) {
                    CommInfo_InitPlayer(param1->unk_00);
                }
                break;
            }
        }
    }
}

void ov65_02236744(UnkStruct_ov65_02236744 *param0)
{
    if (param0->unk_00.unk_2C == 0) {
        param0->unk_00.unk_2C = 1;

        CommTiming_StartSync(13);
    }
}

void ov65_02236760(UnkStruct_ov65_02236744 *param0, const UnkStruct_ov65_02236760 *param1)
{
    if (param0->unk_00.unk_04 != 1) {
        memcpy(param0->unk_00.unk_20, param1->unk_00, sizeof(u8) * 4);
    }
}

static void ov65_02236780(void *param0)
{
    UnkStruct_ov65_022367A8 *v0 = param0;

    sub_0201C2B8(v0->unk_30.unk_00);
    sub_0201DCAC();
    sub_0200A858();
}

static BOOL ov65_02236794(const UnkStruct_ov65_02236794 *param0)
{
    if (CommSys_CurNetId() == 0) {
        return 1;
    }

    return 0;
}

static void ov65_022367A8(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236820();
    ov65_02236840(&param0->unk_30, param2);
    ov65_02236A28(&param0->unk_30, param1, param2);
    ov65_02236C10(&param0->unk_30, param1, param2);
    ov65_02236C7C(&param0->unk_30, param1, param2);
    ov65_02237034(param0, param1, param2);
    ov65_02236D50(&param0->unk_30, param2);
}

static void ov65_022367F8(UnkStruct_ov65_022367A8 *param0, u32 param1)
{
    ov65_02236E04(&param0->unk_30);
    ov65_02236C5C(&param0->unk_30);
    ov65_02236B90(&param0->unk_30, param1);
    ov65_022369F0(&param0->unk_30);
}

static void ov65_02236820(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov65_02236840(UnkStruct_ov65_02236840 *param0, u32 param1)
{
    NARC *v0;

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

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 0, &v2, 0);
        sub_02019690(0, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 1, &v3, 0);
        sub_02019690(1, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 2, &v4, 0);
        sub_02019690(2, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 2);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);

    v0 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, param1);

    sub_02007130(v0, 13, 0, 5 * 32, 1 * 32, param1);
    sub_020070E8(v0, 12, param0->unk_00, 2, 0 * 32, (24 * 2) * 32, 0, param1);

    param0->unk_244 = sub_020071D0(v0, 14, 0, &param0->unk_248, param1);

    {
        param0->unk_250 = sub_020071EC(v0, 44, &param0->unk_254, param1);

        sub_020070E8(v0, 45, param0->unk_00, 0, 0, 0, 0, param1);
        sub_0200710C(v0, 46, param0->unk_00, 0, 0, 0, 0, param1);
        ov65_022372EC(param0, 0);

        param0->unk_258 = 3;
        param0->unk_25A = 1;
    }

    NARC_dtor(v0);
}

static void ov65_022369F0(UnkStruct_ov65_02236840 *param0)
{
    Heap_FreeToHeap(param0->unk_244);
    Heap_FreeToHeap(param0->unk_250);
    sub_02019044(param0->unk_00, 2);
    sub_02019044(param0->unk_00, 1);
    sub_02019044(param0->unk_00, 0);
    Heap_FreeToHeap(param0->unk_00);
}

static void ov65_02236A28(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    Font_LoadScreenIndicatorsPalette(0, 1 * 0x20, param2);

    v0 = Options_Frame(SaveData_Options(param1->unk_08));

    sub_0200DD0C(param0->unk_00, 1, 1, 2, v0, param2);
    sub_0200DAA4(param0->unk_00, 1, (1 + (18 + 12)), 3, 0, param2);
    sub_0200DAA4(param0->unk_00, 2, (0 + (24 * 2)), 4, 0, param2);
    BGL_AddWindow(param0->unk_00, &param0->unk_1F0, 1, 2, 19, 27, 4, 1, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_1F0, 15);
    sub_0200E060(&param0->unk_1F0, 1, 1, 2);
    BGL_AddWindow(param0->unk_00, &param0->unk_200, 1, 1, 1, 27, 2, 1, (((1 + (18 + 12)) + 9) + (27 * 4)));
    BGL_FillWindow(&param0->unk_200, 15);
    Window_Show(&param0->unk_200, 1, (1 + (18 + 12)), 3);
    BGL_AddWindow(param0->unk_00, &param0->unk_210, 1, 2, 16, 28, 2, 1, ((((1 + (18 + 12)) + 9) + (27 * 4)) + (27 * 2)));
    BGL_FillWindow(&param0->unk_210, 0);
    BGL_AddWindow(param0->unk_00, &param0->unk_220, 1, 1, 5, 20, 8, 1, (((((1 + (18 + 12)) + 9) + (27 * 4)) + (27 * 2)) + (28 * 2)));
    BGL_FillWindow(&param0->unk_220, 15);
    Window_Show(&param0->unk_220, 1, (1 + (18 + 12)), 3);
    BGL_AddWindow(param0->unk_00, &param0->unk_230, 1, 23, 5, 7, 5, 1, ((((((1 + (18 + 12)) + 9) + (27 * 4)) + (27 * 2)) + (28 * 2)) + (20 * 8)));
    BGL_FillWindow(&param0->unk_230, 15);
}

static void ov65_02236B90(UnkStruct_ov65_02236840 *param0, u32 param1)
{
    ov65_02236F38(param0);

    sub_0200E084(&param0->unk_1F0, 0);
    BGL_DeleteWindow(&param0->unk_1F0);
    Window_Clear(&param0->unk_200, 0);
    BGL_DeleteWindow(&param0->unk_200);
    BGL_DeleteWindow(&param0->unk_210);
    Window_Clear(&param0->unk_220, 0);
    BGL_DeleteWindow(&param0->unk_220);
    Window_Clear(&param0->unk_230, 0);
    BGL_DeleteWindow(&param0->unk_230);

    if (param0->unk_240 != NULL) {
        sub_02002154(param0->unk_240, param1);
    }
}

static void ov65_02236C10(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2)
{
    param0->unk_04 = StringTemplate_Default(param2);
    param0->unk_08 = MessageLoader_Init(0, 26, 674, param2);
    param0->unk_0C = Strbuf_Init(256, param2);
    param0->unk_10 = Strbuf_Init(256, param2);
    param0->unk_14 = 0xff;
    param0->unk_16 = Options_TextFrameDelay(SaveData_Options(param1->unk_08));
}

static void ov65_02236C5C(UnkStruct_ov65_02236840 *param0)
{
    Strbuf_Free(param0->unk_10);
    Strbuf_Free(param0->unk_0C);
    MessageLoader_Free(param0->unk_08);
    StringTemplate_Free(param0->unk_04);
}

static void ov65_02236C7C(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2)
{
    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
        StringTemplate_SetPlazaMinigameName(param0->unk_04, 0, UnkEnum_ov66_022324D0_00);
        break;
    case 2:
        StringTemplate_SetPlazaMinigameName(param0->unk_04, 0, UnkEnum_ov66_022324D0_01);
        break;
    case 3:
        StringTemplate_SetPlazaMinigameName(param0->unk_04, 0, UnkEnum_ov66_022324D0_02);
        break;
    }

    MessageLoader_GetStrbuf(param0->unk_08, Unk_ov65_02239E5C[param1->unk_00], param0->unk_10);
    StringTemplate_Format(param0->unk_04, param0->unk_0C, param0->unk_10);
    Text_AddPrinterWithParamsAndColor(&param0->unk_200, FONT_SYSTEM, param0->unk_0C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    sub_0201A9A4(&param0->unk_200);
    sub_0201A9A4(&param0->unk_220);
    MessageLoader_GetStrbuf(param0->unk_08, 128, param0->unk_0C);
    Text_AddPrinterWithParamsAndColor(&param0->unk_210, FONT_SYSTEM, param0->unk_0C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A9A4(&param0->unk_210);
    sub_0201A9A4(&param0->unk_1F0);
}

static void ov65_02236D50(UnkStruct_ov65_02236840 *param0, u32 param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param1);

    {
        UnkStruct_ov22_022559F8 v1 = {
            4, (128 * 1024), (16 * 1024), 0
        };

        v1.unk_0C = param1;
        sub_0201E88C(&v1, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(4, param1);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_18 = sub_020095C4(4, &param0->unk_1C, param1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1A8[v0] = SpriteResourceCollection_New(4, v0, param1);
    }

    param0->unk_1B8 = ov63_0222BE18(4, param1);
    param0->unk_1BC = ov63_0222CCE4(param0->unk_18, NULL, 4, NNS_G2D_VRAM_TYPE_2DMAIN, param1);
}

static void ov65_02236E04(UnkStruct_ov65_02236840 *param0)
{
    int v0;

    ov63_0222CD9C(param0->unk_1BC);
    ov63_0222BE58(param0->unk_1B8);

    CellActorCollection_Delete(param0->unk_18);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_1A8[v0]);
    }

    sub_0201E958();
    sub_0201F8B4();
    sub_0200A878();
}

static void ov65_02236E44(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2, u32 param3)
{
    ov65_02236E50(param0, param1, param2, 0, param3);
}

static void ov65_02236E50(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, u32 param2, u8 param3, u32 param4)
{
    Strbuf *v0;
    int v1;

    if (param0->unk_14 != 0xff) {
        if (Text_IsPrinterActive(param0->unk_14) != 0) {
            Text_RemovePrinter(param0->unk_14);
            param0->unk_14 = 0xff;
        }
    }

    BGL_FillWindow(&param0->unk_1F0, 15);
    v0 = Strbuf_Init(256, param4);

    MessageLoader_GetStrbuf(param0->unk_08, param2, v0);
    StringTemplate_Format(param0->unk_04, param0->unk_0C, v0);

    param0->unk_14 = Text_AddPrinterWithParamsAndColor(&param0->unk_1F0, FONT_MESSAGE, param0->unk_0C, 0, 0, param0->unk_16, TEXT_COLOR(1, 2, 15), NULL);

    sub_0201A9A4(&param0->unk_1F0);
    Strbuf_Free(v0);

    v1 = Options_Frame(SaveData_Options(param1->unk_08));

    sub_0200DD0C(param0->unk_00, 1, 1, 2, v1, param4);

    param0->unk_15 = param3;
}

static BOOL ov65_02236EF8(UnkStruct_ov65_02236840 *param0)
{
    if (param0->unk_14 == 0xff) {
        if (param0->unk_15 > 0) {
            param0->unk_15--;
            return 0;
        }
    } else {
        if (Text_IsPrinterActive(param0->unk_14) == 0) {
            if (param0->unk_14 != 0xff) {
                param0->unk_14 = 0xff;
            }
        }
    }

    if ((param0->unk_14 == 0xff) && (param0->unk_15 == 0)) {
        return 1;
    }

    return 0;
}

static void ov65_02236F38(UnkStruct_ov65_02236840 *param0)
{
    if (param0->unk_14 != 0xff) {
        if (Text_IsPrinterActive(param0->unk_14) != 0) {
            Text_RemovePrinter(param0->unk_14);
        }

        param0->unk_14 = 0xff;
    }

    BGL_FillWindow(&param0->unk_1F0, 15);
    sub_0201A9A4(&param0->unk_1F0);

    param0->unk_15 = 0;
}

static void ov65_02236F70(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, u32 param3)
{
    Strbuf *v0;
    Strbuf *v1;

    v0 = Strbuf_Init(256, param3);
    v1 = Strbuf_Init(256, param3);

    ov65_0223726C(param0, param1, param2, 0, param3);
    ov65_02237284(param0, param1, param2, 1, param3);

    MessageLoader_GetStrbuf(param0->unk_08, 131, v0);
    StringTemplate_Format(param0->unk_04, v1, v0);

    BGL_FillWindow(&param0->unk_230, 15);
    Text_AddPrinterWithParamsAndColor(&param0->unk_230, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Window_Show(&param0->unk_230, 1, (1 + (18 + 12)), 3);
    sub_0201A9A4(&param0->unk_230);

    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov65_02237018(UnkStruct_ov65_02236840 *param0)
{
    Window_Clear(&param0->unk_230, 1);
    sub_0201AD10(&param0->unk_230);
}

static void ov65_02237034(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;
    int v1 = 4;

    if (CommInfo_IsInitialized() == 0) {
        return;
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((v0 == 0) && (sub_02032DE0(v0) == 1)) {
            ov65_0223709C(param0, &param0->unk_30, param1, v0, param2);
        } else {
            if (sub_02032E00(v0) == 1) {
                ov65_0223709C(param0, &param0->unk_30, param1, v0, param2);
            } else {
                ov65_022371FC(&param0->unk_30, param1, v0, param2);
            }
        }
    }
}

static void ov65_0223709C(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02236840 *param1, const UnkStruct_0207DE04 *param2, int param3, u32 param4)
{
    Strbuf *v0;
    Strbuf *v1;
    u8 v2;
    u8 v3;

    v0 = Strbuf_Init(256, param4);
    v1 = Strbuf_Init(256, param4);

    ov65_0223726C(param1, param2, param3, 0, param4);

    MessageLoader_GetStrbuf(param1->unk_08, 129, v0);
    StringTemplate_Format(param1->unk_04, v1, v0);
    BGL_WindowColor(&param1->unk_220, 15, 0, param3 * (2 * 8), (20 * 8), (2 * 8));
    Text_AddPrinterWithParamsAndColor(&param1->unk_220, FONT_SYSTEM, v1, 0, param3 * (2 * 8), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);

    ov65_02237284(param1, param2, param3, 0, param4);

    MessageLoader_GetStrbuf(param1->unk_08, 130, v0);
    StringTemplate_Format(param1->unk_04, v1, v0);
    Text_AddPrinterWithParamsAndColor(&param1->unk_220, FONT_SYSTEM, v1, 72, param3 * (2 * 8), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    sub_0201A9A4(&param1->unk_220);

    if (param3 == CommSys_CurNetId()) {
        if (param0->unk_00.unk_00->unk_00.unk_21) {
            v2 = 2;
        } else {
            v2 = 1;
        }

        v3 = 0;
    } else {
        if (param0->unk_00.unk_20[param3]) {
            v2 = 2;
        } else {
            v2 = 1;
        }
    }

    sub_020198E8(param1->unk_00, 2, 18, 5 + (param3 * 2), 2, 2, param1->unk_248->rawData, v2 * 2, 0, param1->unk_248->screenWidth / 8, param1->unk_248->screenHeight / 8);
    sub_02019E2C(param1->unk_00, 2, 18, 5 + (param3 * 2), 2, 2, 5);
    sub_0201C3C0(param1->unk_00, 2);
    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov65_022371FC(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, u32 param3)
{
    BGL_WindowColor(&param0->unk_220, 15, 0, param2 * (2 * 8), (20 * 8), (2 * 8));
    sub_020198E8(param0->unk_00, 2, 18, 5 + param2 * 2, 2, 2, param0->unk_248->rawData, 0 * 2, 0, param0->unk_248->screenWidth / 8, param0->unk_248->screenHeight / 8);
    sub_0201C3C0(param0->unk_00, 2);
    sub_0201A9A4(&param0->unk_220);
}

static void ov65_0223726C(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, int param3, u32 param4)
{
    TrainerInfo *v0;

    v0 = CommInfo_TrainerInfo(param2);
    StringTemplate_SetPlayerName(param0->unk_04, param3, v0);
}

static void ov65_02237284(UnkStruct_ov65_02236840 *param0, const UnkStruct_0207DE04 *param1, int param2, int param3, u32 param4)
{
    TrainerInfo *v0;
    u16 v1;

    v0 = CommInfo_TrainerInfo(param2);
    v1 = TrainerInfo_ID_LowHalf(v0);

    StringTemplate_SetNumber(param0->unk_04, param3, v1, 5, 2, 1);
}

static void ov65_022372B0(UnkStruct_ov65_02236840 *param0)
{
    if (param0->unk_258 <= 0) {
        ov65_022372EC(param0, param0->unk_25A);
        param0->unk_258 = 3;
        param0->unk_25A = (param0->unk_25A + 1) % 18;
    } else {
        param0->unk_258--;
    }
}

static void ov65_022372EC(UnkStruct_ov65_02236840 *param0, u32 param1)
{
    BOOL v0;
    u16 *v1;
    u32 v2;

    v2 = Unk_ov65_02239C04[param1];
    v1 = param0->unk_254->pRawData;
    v0 = sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_MAIN, 0 * 32, &v1[v2 * 16], 32);

    GF_ASSERT(v0);
}

static BOOL ov65_0223731C(UnkStruct_ov65_022367A8 *param0, u32 param1)
{
    param0->unk_00.unk_00->unk_00.unk_22 = 1 - param0->unk_00.unk_00->unk_00.unk_22;
    param0->unk_00.unk_00->unk_00.unk_21 = param0->unk_00.unk_00->unk_00.unk_22;

    ov4_021D2584(param0->unk_00.unk_00->unk_00.unk_21);
    ov4_021D222C(&(param0->unk_00.unk_00->unk_00), sizeof(UnkStruct_0207E060));

    if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
        ov65_02237520(param0);
    } else {
        ov65_02237534(param0);
    }

    return param0->unk_00.unk_00->unk_00.unk_22;
}

static void ov65_02237370(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;
    BOOL v1;
    BOOL v2;

    if (param0->unk_00.unk_04) {
        if ((param0->unk_00.unk_05 == 27) || (param0->unk_00.unk_05 == 28) || (param0->unk_00.unk_05 == 29)) {
            return;
        }

        if (sub_020380E4() <= 2) {
            if ((ov65_02237548(param0) <= 1) && (ov65_02237450(param0) == 0)) {
                return;
            }
        }
    } else {
        if ((param0->unk_00.unk_05 == 15) || (param0->unk_00.unk_05 == 16) || (param0->unk_00.unk_05 == 17) || (param0->unk_00.unk_05 == 7) || (param0->unk_00.unk_05 == 6)) {
            return;
        }
    }

    v2 = ov65_02237A54(param0);
    v0 = ov65_02237628(param0);

    if (ov65_02237548(param0) > CommSys_ConnectedCount()) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    if ((sub_020380E4() >= 3) || (sub_020383E8()) || sub_02038284() || (CommSys_IsPlayerConnected(0) == 0) || (ov65_02237450(param0) == 0) || (v1 == 1) || (v2 == 1) || (v0 == 1)) {
        if (param0->unk_00.unk_04) {
            param0->unk_00.unk_05 = 27;
        } else {
            param0->unk_00.unk_05 = 15;
        }
    }
}

static void ov65_0223742C(UnkStruct_ov65_022367A8 *param0)
{
    if ((sub_020380E4() > 3) || sub_02038284() || (sub_020383E8())) {
        param0->unk_00.unk_05 = 15;
    }
}

static BOOL ov65_02237450(const UnkStruct_ov65_022367A8 *param0)
{
    if (CommSys_ConnectedCount() > 0) {
        return 1;
    }

    return 0;
}

static BOOL ov65_02237464(u32 param0, u32 param1)
{
    BOOL v0;

    v0 = sub_020380A0(param0);

    if (v0 == 1) {
        switch (param1) {
        case 0:
            sub_02038B00();
            break;
        case 1:
        case 2:
        case 3:
            sub_02038B20();
            break;
        }
    }

    return v0;
}

static void ov65_02237498(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_00.unk_00->unk_00.unk_1B = 18;
        break;
    case 1:
        param0->unk_00.unk_00->unk_00.unk_1B = 22;
        break;
    case 2:
        param0->unk_00.unk_00->unk_00.unk_1B = 24;
        break;
    case 3:
        param0->unk_00.unk_00->unk_00.unk_1B = 26;
        break;
    }

    ov4_021D222C(&(param0->unk_00.unk_00->unk_00), sizeof(UnkStruct_0207E060));
}

static BOOL ov65_022374DC(UnkStruct_ov65_022367A8 *param0)
{
    if (param0->unk_00.unk_11 == 1) {
        return 0;
    }

    if (ov65_02237450(param0) == 1) {
        ov4_021D1E74(97);
        param0->unk_00.unk_11 = 1;
        return 1;
    }

    return 0;
}

static BOOL ov65_02237504(UnkStruct_ov65_022367A8 *param0)
{
    if (param0->unk_00.unk_11 == 0) {
        return 0;
    }

    ov4_021D1F18();
    param0->unk_00.unk_11 = 0;

    return 1;
}

static void ov65_02237520(UnkStruct_ov65_022367A8 *param0)
{
    if (ov65_022374DC(param0)) {
        sub_02004A84(sub_020041FC());
    }
}

static void ov65_02237534(UnkStruct_ov65_022367A8 *param0)
{
    if (ov65_02237504(param0)) {
        sub_02004A68(0, 120);
    }
}

static int ov65_02237548(UnkStruct_ov65_022367A8 *param0)
{
    if (param0->unk_00.unk_04) {
        return CommInfo_CountReceived();
    } else {
        return CommInfo_CountReceived();
    }
}

static BOOL ov65_02237550(UnkStruct_ov65_022367A8 *param0, u32 param1)
{
    int v0;
    int v1;
    BOOL v2 = 1;

    v1 = CommSys_CurNetId();
    v1--;

    for (v0 = v1; v0 >= 0; v0--) {
        if (sub_02032DC4(v0) == 1) {
            ov65_022376A0(param0, v0, param1);
        } else if (sub_02032E00(v0) == 0) {
            v2 = 0;
        }
    }

    return v2;
}

static void ov65_0223758C(UnkStruct_ov65_022367A8 *param0)
{
    int v0;
    UnkStruct_ov65_022366E4 v1;
    BOOL v2;

    v1.unk_04 = 0;

    for (v0 = 1; v0 < 4; v0++) {
        if (sub_02032DC4(v0) == 1) {
            v1.unk_00 = v0;
            v2 = CommSys_SendData(22, &v1, sizeof(UnkStruct_ov65_022366E4));
            GF_ASSERT(v2 == 1);
            CommInfo_InitPlayer(v0);
        }
    }
}

static void ov65_022375CC(UnkStruct_ov65_022367A8 *param0)
{
    int v0;
    UnkStruct_ov65_022366E4 v1;
    BOOL v2;

    v1.unk_04 = 0;

    for (v0 = 1; v0 < 4; v0++) {
        if (sub_02032DE0(v0) == 1) {
            v1.unk_00 = v0;
            v2 = CommSys_SendData(22, &v1, sizeof(UnkStruct_ov65_022366E4));
            GF_ASSERT(v2 == 1);
            CommInfo_InitPlayer(v0);
        }
    }
}

static void ov65_0223760C(UnkStruct_ov65_022367A8 *param0)
{
    ov4_021D1120(ov65_02237654, param0);
}

static void ov65_0223761C(UnkStruct_ov65_022367A8 *param0)
{
    ov4_021D1120(NULL, NULL);
}

static BOOL ov65_02237628(UnkStruct_ov65_022367A8 *param0)
{
    int v0;
    BOOL v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00.unk_14[v0] == 1) {
            if (sub_02032E00(param0->unk_00.unk_18[v0]) == 1) {
                v1 = 1;
            }

            param0->unk_00.unk_14[v0] = 0;
            param0->unk_00.unk_18[v0] = 0;
        }
    }

    return v1;
}

static void ov65_02237654(u16 param0, void *param1)
{
    UnkStruct_ov65_022367A8 *v0 = param1;

    v0->unk_00.unk_14[param0] = 1;
    v0->unk_00.unk_18[param0] = param0;
}

static BOOL ov65_02237660(UnkStruct_ov65_022367A8 *param0)
{
    int v0;
    BOOL v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00.unk_1C[v0] != param0->unk_00.unk_20[v0]) {
            v1 = 1;
        }

        param0->unk_00.unk_1C[v0] = param0->unk_00.unk_20[v0];
    }

    if (param0->unk_00.unk_24) {
        param0->unk_00.unk_24 = 0;
        v1 = 1;
    }

    return v1;
}

static void ov65_02237698(UnkStruct_ov65_022367A8 *param0)
{
    param0->unk_00.unk_24 = 1;
}

static void ov65_022376A0(UnkStruct_ov65_022367A8 *param0, u32 param1, u32 param2)
{
    if (sub_02032E00(param1) == 0) {
        sub_02032E1C(param1);

        param0->unk_00.unk_25 = param1;

        ov65_022376D0(param0, param1, param2);
        ov65_02237698(param0);
    }
}

static void ov65_022376D0(UnkStruct_ov65_022367A8 *param0, u32 param1, u32 param2)
{
    UnkStruct_ov65_022376D0 v0;
    TrainerInfo *v1;

    if (param0->unk_30.unk_1C0[param1].unk_00 != NULL) {
        return;
    }

    v0 = Unk_ov65_02239AD8[param1];

    if (param1 != CommSys_CurNetId()) {
        v1 = CommInfo_TrainerInfo(param1);
        GF_ASSERT(v1 != NULL);
        v0.unk_0A = TrainerInfo_Appearance(v1);
    } else {
        if (param0->unk_00.unk_00->unk_00.unk_1E == 0) {
            v0.unk_0A = 0x0;
        } else {
            v0.unk_0A = 0x61;
        }
    }

    param0->unk_30.unk_1C0[param1].unk_00 = ov63_0222BEC0(param0->unk_30.unk_1B8, &v0);

    if (ov63_0222CE18(param0->unk_30.unk_1BC, v0.unk_0A) == 0) {
        ov63_0222CDE8(param0->unk_30.unk_1BC, v0.unk_0A, 2, param2);
    }

    param0->unk_30.unk_1C0[param1].unk_04 = ov63_0222CE44(param0->unk_30.unk_1BC, param0->unk_30.unk_1C0[param1].unk_00, 0, param2);
    ov63_0222D008(param0->unk_30.unk_1C0[param1].unk_04, 0);
    param0->unk_30.unk_1C0[param1].unk_08++;
}

static void ov65_022377A4(UnkStruct_ov65_022367A8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Unk_ov65_02239A2C[param0->unk_30.unk_1C0[v0].unk_08](param0, &param0->unk_30.unk_1C0[v0]);
    }

    ov63_0222BE84(param0->unk_30.unk_1B8);
    ov63_0222CEE4(param0->unk_30.unk_1BC);
}

static void ov65_022377E8(UnkStruct_ov65_022367A8 *param0)
{
    ov63_0222CE24(param0->unk_30.unk_1BC);
    memset(param0->unk_30.unk_1C0, 0, sizeof(UnkStruct_ov65_02237908) * 4);
}

static void ov65_02237808(UnkStruct_ov65_022367A8 *param0, u32 param1)
{
    UnkStruct_ov65_022366E4 v0;
    BOOL v1;

    v0.unk_00 = param1;
    v0.unk_04 = 2;
    v1 = CommSys_SendData(22, &v0, sizeof(UnkStruct_ov65_022366E4));

    GF_ASSERT(v1 == 1);
}

static void ov65_0223782C(UnkStruct_ov65_022367A8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00.unk_25 + 1 < v0) {
            if (sub_02032DC4(v0) == 1) {
                ov65_02237808(param0, v0);
                CommInfo_InitPlayer(v0);
            }
        }
    }
}

static void ov65_02237860(UnkStruct_ov65_022367A8 *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00.unk_28[v0] == 1) {
            if (sub_02032DE0(v0) == 1) {
                ov65_022376A0(param0, v0, param1);
                param0->unk_00.unk_28[v0] = 0;
                param0->unk_00.unk_12 = 1;
            }
        }
    }
}

static void ov65_0223789C(UnkStruct_ov65_022367A8 *param0)
{
    GF_ASSERT(param0->unk_30.unk_24C == NULL);
    param0->unk_30.unk_24C = sub_0200E7FC(&param0->unk_30.unk_1F0, 1);
}

static void ov65_022378C4(UnkStruct_ov65_022367A8 *param0, const UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    if (param0->unk_30.unk_24C == NULL) {
        return;
    }

    DeleteWaitDial(param0->unk_30.unk_24C);

    param0->unk_30.unk_24C = NULL;
    v0 = Options_Frame(SaveData_Options(param1->unk_08));

    sub_0200DD0C(param0->unk_30.unk_00, 1, 1, 2, v0, param2);
}

static void ov65_02237908(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1)
{
    return;
}

static void ov65_0223790C(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1)
{
    u32 v0;

    ov63_0222CFA4(param1->unk_04, 0);
    ov63_0222CFA8(param1->unk_04);
    ov63_0222D008(param1->unk_04, 1);

    param1->unk_08 = 2;
    v0 = ov63_0222BF90(param1->unk_00, 6);
    param1->unk_0A = 16 + Unk_ov65_02239A20[v0];
}

static void ov65_02237940(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1)
{
    ov63_0222CFB4(param1->unk_04);

    param1->unk_0A--;

    if (param1->unk_0A <= 0) {
        ov63_0222CFC0(param1->unk_04);
        ov63_0222CFA4(param1->unk_04, 1);
        param1->unk_08 = 3;
    }
}

static void ov65_0223796C(UnkStruct_ov65_022367A8 *param0, UnkStruct_ov65_02237908 *param1)
{
    return;
}

static void ov65_02237970(UnkStruct_ov65_022367A8 *param0)
{
    int v0;
    int v1;
    BOOL v2 = 0;
    int v3;
    int v4;
    UnkStruct_ov65_02236760 v5;

    if (CommInfo_IsInitialized() == 0) {
        return;
    }

    v1 = CommInfo_CountReceived();

    if (CommInfo_IsReceivingData()) {
        if (!sub_02036254(5)) {
            v2 = 1;
        }
    }

    for (v0 = 0; v0 < v1; v0++) {
        if (v0 == 0) {
            v4 = param0->unk_00.unk_00->unk_00.unk_21;
        } else {
            v3 = sub_02032F40(v0);
            GF_ASSERT(v3 != 32);
            v4 = param0->unk_00.unk_00->unk_24[v3].unk_21;
        }

        if (param0->unk_00.unk_20[v0] != v4) {
            v2 = 1;
        }

        param0->unk_00.unk_20[v0] = v4;
    }

    if (v2 == 1) {
        BOOL v6;

        memcpy(v5.unk_00, param0->unk_00.unk_20, sizeof(u8) * 4);
        CommSys_SendData(24, &v5, sizeof(UnkStruct_ov65_02236760));
    }
}

static BOOL ov65_02237A10(UnkStruct_ov65_022367A8 *param0)
{
    if (CommTiming_IsSyncState(13)) {
        return 1;
    }

    return 0;
}

static void ov65_02237A24(UnkStruct_0207DE04 *param0, u32 param1)
{
    void *v0;
    Journal *v1;
    UnkStruct_0207E060 *v2;

    v1 = SaveData_GetJournal(param0->unk_08);
    v0 = sub_0202C244(param1, 29);

    Journal_SaveData(v1, v0, 4);
}

static void ov65_02237A44(UnkStruct_ov65_022367A8 *param0)
{
    param0->unk_00.unk_10 = 1;
    param0->unk_00.unk_0C = (60 * 30);
}

static BOOL ov65_02237A54(UnkStruct_ov65_022367A8 *param0)
{
    if (param0->unk_00.unk_10 == 0) {
        return 0;
    }

    if (param0->unk_00.unk_0C > 0) {
        param0->unk_00.unk_0C--;
        return 0;
    }

    return 1;
}

static BOOL ov65_02237A70(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
        ov65_02237520(param0);
    }

    ov4_021D26EC(0);
    CommMan_SetErrorHandling(0, 1);
    ov65_022376D0(param0, CommSys_CurNetId(), param2);

    param0->unk_00.unk_05 = 1;

    return 0;
}

static BOOL ov65_02237AA8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 107, param2);

    param0->unk_00.unk_05 = 2;
    return 0;
}

static BOOL ov65_02237AC0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    if (ov65_02237450(param0) == 1) {
        int v1;
        UnkStruct_ov65_022366E4 v2;
        BOOL v3;

        v1 = CommInfo_NewNetworkId();

        if (v1 != 0xff) {
            if (param0->unk_00.unk_06 != 0) {
                if (sub_02032F40(v1) == 32) {
                    v2.unk_00 = v1;
                    v2.unk_04 = 0;

                    CommInfo_InitPlayer(v1);

                    v3 = CommSys_SendData(22, &v2, sizeof(UnkStruct_ov65_022366E4));
                    GF_ASSERT(v3 == 1);
                } else {
                    param0->unk_00.unk_06 = v1;
                }
            }
        }
    }

    do {
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(1501);

            if (ov65_02237450(param0) == 0) {
                param0->unk_00.unk_05 = 6;
                break;
            } else {
                if (param1->unk_01 <= ov65_02237548(param0)) {
                    param0->unk_00.unk_05 = 8;
                    break;
                } else {
                    param0->unk_00.unk_05 = 6;
                    break;
                }
            }
        }

        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(1501);
            param0->unk_00.unk_05 = 22;
            break;
        }

        if (param0->unk_00.unk_06 != 0xff) {
            Sound_PlayEffect(1501);
            param0->unk_00.unk_05 = 3;
            break;
        }

        if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
            param0->unk_00.unk_05 = 30;
            Sound_PlayEffect(1501);
            break;
        }
    } while (0);

    return 0;
}

static BOOL ov65_02237B9C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236F70(&param0->unk_30, param1, param0->unk_00.unk_06, param2);
    ov65_02236E44(&param0->unk_30, param1, 108, param2);

    param0->unk_00.unk_05 = 4;

    return 0;
}

static BOOL ov65_02237BC4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002100(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, param2);
    param0->unk_00.unk_05 = 5;

    return 0;
}

static BOOL ov65_02237BF8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;
    UnkStruct_ov65_022366E4 v1;
    BOOL v2;

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        v1.unk_00 = param0->unk_00.unk_06;

        if (v0 == 0) {
            v1.unk_04 = 1;

            ov65_022376A0(param0, param0->unk_00.unk_06, param2);

            if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
                ov65_02237504(param0);
                ov65_02237520(param0);
            }

            if (param1->unk_02 <= ov65_02237548(param0)) {
                param0->unk_00.unk_05 = 8;
            } else {
                param0->unk_00.unk_05 = 1;
            }
        } else {
            v1.unk_04 = 0;

            CommInfo_InitPlayer(param0->unk_00.unk_06);

            param0->unk_00.unk_05 = 1;
        }

        v2 = CommSys_SendData(22, &v1, sizeof(UnkStruct_ov65_022366E4));
        GF_ASSERT(v2 == 1);

        param0->unk_00.unk_06 = 0xff;
        ov65_02237018(&param0->unk_30);
        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_02237C98(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 119, param2);

    param0->unk_00.unk_05 = 7;
    return 0;
}

static BOOL ov65_02237CB0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_00.unk_05 = 19;
    return 0;
}

static BOOL ov65_02237CCC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 111, param2);

    param0->unk_00.unk_05 = 9;
    return 0;
}

static BOOL ov65_02237CE4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002100(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, param2);
    param0->unk_00.unk_05 = 10;

    return 0;
}

static BOOL ov65_02237D18(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            param0->unk_00.unk_05 = 11;
        } else {
            if (param1->unk_02 <= ov65_02237548(param0)) {
                param0->unk_00.unk_05 = 19;
            } else {
                param0->unk_00.unk_05 = 1;
            }
        }

        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_02237D60(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    param0->unk_00.unk_08 = 30;

    ov65_0223758C(param0);
    ov65_02236E44(&param0->unk_30, param1, 102, param2);
    ov65_0223789C(param0);
    ov65_02237A44(param0);

    param0->unk_00.unk_05 = 12;
    ov4_021D25FC();

    return 0;
}

static BOOL ov65_02237D98(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    if (CommSys_ConnectedCount() != CommInfo_CountReceived()) {
        ov65_0223758C(param0);
        return 0;
    }

    v0 = ov4_021D25C0();

    if (v0 == 0) {
        return 0;
    }

    ov4_021D26EC(1);
    param0->unk_00.unk_05 = 13;

    return 0;
}

static BOOL ov65_02237DD0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    if (param0->unk_00.unk_08 == 0) {
        v0 = CommSys_SendData(23, NULL, 0);

        if (v0) {
            param0->unk_00.unk_05 = 14;
        }
    } else {
        param0->unk_00.unk_08--;
    }

    return 0;
}

static BOOL ov65_02237DF8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (CommTiming_IsSyncState(13)) {
        ov65_02237498(param0, param1);
        sub_020365F4();
        CommTiming_StartSync(14);

        param0->unk_00.unk_05 = 15;
    }

    return 0;
}

static BOOL ov65_02237E24(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (CommTiming_IsSyncState(14)) {
        u16 v0 = param0->unk_00.unk_00->unk_00.unk_1B;
        BOOL v1;

        v1 = sub_02036614(CommSys_CurNetId(), &v0);

        if (v1 == 1) {
            param0->unk_00.unk_05 = 16;
        }
    }

    return 0;
}

static BOOL ov65_02237E54(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;
    int v1;
    int v2;
    const u16 *v3;
    int v4;

    v1 = ov65_02237548(param0);
    v2 = CommSys_CurNetId();
    v4 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (v2 != v0) {
            v3 = sub_0203664C(v0);

            if (v3 != NULL) {
                if (v3[0] == param0->unk_00.unk_00->unk_00.unk_1B) {
                    v4++;
                } else {
                    param0->unk_00.unk_05 = 27;
                }
            }
        } else {
            v4++;
        }
    }

    if (v4 == v1) {
        param0->unk_00.unk_05 = 17;
    }

    return 0;
}

static BOOL ov65_02237EA4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    CommMan_SetErrorHandling(1, 1);
    CommTiming_StartSync(18);

    param0->unk_00.unk_05 = 18;

    return 0;
}

static BOOL ov65_02237EC0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (CommTiming_IsSyncState(18)) {
        param0->unk_00.unk_07 = 1;

        ov65_02237A24(param1, param2);
        ov65_022378C4(param0, param1, param2);

        return 1;
    }

    return 0;
}

static BOOL ov65_02237EF0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 120, param2);
    param0->unk_00.unk_05 = 20;

    return 0;
}

static BOOL ov65_02237F08(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002054(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, 1, param2);
    param0->unk_00.unk_05 = 21;

    return 0;
}

static BOOL ov65_02237F48(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            param0->unk_00.unk_05 = 22;
        } else {
            if (ov65_02237450(param0)) {
                if (param1->unk_02 <= ov65_02237548(param0)) {
                    param0->unk_00.unk_05 = 8;
                } else {
                    param0->unk_00.unk_05 = 1;
                }
            } else {
                param0->unk_00.unk_05 = 1;
            }
        }

        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_02237FA0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 121, param2);

    param0->unk_00.unk_05 = 23;
    return 0;
}

static BOOL ov65_02237FB8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002054(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, 1, param2);
    param0->unk_00.unk_05 = 24;

    return 0;
}

static BOOL ov65_02237FF8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            param0->unk_00.unk_05 = 25;
        } else {
            if (ov65_02237450(param0)) {
                if (param1->unk_02 <= ov65_02237548(param0)) {
                    param0->unk_00.unk_05 = 8;
                } else {
                    param0->unk_00.unk_05 = 1;
                }
            } else {
                param0->unk_00.unk_05 = 1;
            }
        }

        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_02238050(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 122, param2);

    param0->unk_00.unk_08 = 30;
    param0->unk_00.unk_05 = 26;

    return 0;
}

static BOOL ov65_0223806C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_00.unk_08--;

    if (param0->unk_00.unk_08 > 0) {
        return 0;
    }

    param0->unk_00.unk_07 = 0;

    sub_02038378();
    ov65_022375CC(param0);
    sub_02038B60();
    CommMan_SetErrorHandling(0, 1);

    return 1;
}

static BOOL ov65_022380AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (param0->unk_30.unk_240 != NULL) {
        sub_02002154(param0->unk_30.unk_240, param2);
        param0->unk_30.unk_240 = NULL;
    }

    ov65_02237018(&param0->unk_30);
    ov65_022378C4(param0, param1, param2);

    param0->unk_00.unk_05 = 28;
    return 0;
}

static BOOL ov65_022380E8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 118, param2);
    param0->unk_00.unk_05 = 29;
    ov65_022375CC(param0);

    return 0;
}

static BOOL ov65_02238104(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    sub_02038378();
    sub_02038B60();
    ov65_022375CC(param0);
    param0->unk_00.unk_07 = 0;
    CommMan_SetErrorHandling(0, 1);

    return 1;
}

static BOOL ov65_02238134(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    u32 v0;

    if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
        v0 = 125;
    } else {
        v0 = 124;
    }

    ov65_02236E44(&param0->unk_30, param1, v0, param2);

    param0->unk_00.unk_05 = 31;
    return 0;
}

static BOOL ov65_0223815C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002100(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, param2);
    param0->unk_00.unk_05 = 32;

    return 0;
}

static BOOL ov65_02238190(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            ov65_0223731C(param0, param2);

            ov65_02237698(param0);
        }

        param0->unk_00.unk_05 = 1;
        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_022381CC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    CommInfo_SendBattleRegulation();
    CommMan_SetErrorHandling(0, 1);
    param0->unk_00.unk_05 = 1;
    return 0;
}

static BOOL ov65_022381E4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02237550(param0, param2);

    if (CommSys_IsPlayerConnected(0) == 0) {
        param0->unk_00.unk_05 = 15;
    } else {
        if (sub_02032E00(0)) {
            param0->unk_00.unk_05 = 2;
        }
    }

    return 0;
}

static BOOL ov65_02238210(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02237550(param0, param2);
    ov65_0223726C(&param0->unk_30, param1, 0, 0, param2);
    ov65_02236E44(&param0->unk_30, param1, 114, param2);
    ov65_0223789C(param0);

    param0->unk_00.unk_05 = 3;

    return 0;
}

static BOOL ov65_02238250(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    ov65_02237550(param0, param2);

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    if (param0->unk_00.unk_13 != 0) {
        ov65_022378C4(param0, param1, param2);

        switch (param0->unk_00.unk_13) {
        case 1:
            param0->unk_00.unk_05 = 4;
            break;
        case 2:
            param0->unk_00.unk_05 = 6;
            param0->unk_00.unk_2D = 116;
            break;
        case 3:
            param0->unk_00.unk_05 = 6;
            param0->unk_00.unk_2D = 132;

            break;
        }
    }

    return 0;
}

static BOOL ov65_022382B0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_0223726C(&param0->unk_30, param1, 0, 0, param2);
    ov65_02236E50(&param0->unk_30, param1, 115, 30, param2);
    param0->unk_00.unk_05 = 5;
    ov65_022376A0(param0, CommSys_CurNetId(), 96);

    return 0;
}

static BOOL ov65_022382F0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    ov65_02237550(param0, param2);

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_00.unk_05 = 8;

    return 0;
}

static BOOL ov65_02238314(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_0223726C(&param0->unk_30, param1, 0, 0, param2);
    ov65_02236E44(&param0->unk_30, param1, param0->unk_00.unk_2D, param2);

    param0->unk_00.unk_05 = 7;

    sub_02038378();
    sub_02038B60();

    return 0;
}

static BOOL ov65_02238350(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_00.unk_07 = 0;
    CommMan_SetErrorHandling(0, 1);

    return 1;
}

static BOOL ov65_02238370(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02237550(param0, param2);
    ov65_02236E44(&param0->unk_30, param1, 123, param2);
    ov65_0223789C(param0);

    param0->unk_00.unk_05 = 9;

    if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
        ov65_02237520(param0);
    }

    return 0;
}

static BOOL ov65_022383AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    ov65_02237550(param0, param2);
    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_00.unk_05 = 10;

    return 0;
}

static BOOL ov65_022383D0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02237550(param0, param2);

    if (param0->unk_00.unk_12) {
        param0->unk_00.unk_12 = 0;

        if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
            ov65_02237504(param0);
            ov65_02237520(param0);
        }

        ov65_02237698(param0);
    }

    if (ov65_02237A10(param0) == 1) {
        sub_020365F4();
        CommTiming_StartSync(14);

        ov65_022378C4(param0, param1, param2);
        ov65_02236E44(&param0->unk_30, param1, 102, param2);
        ov65_02237A44(param0);

        param0->unk_00.unk_08 = (10 * 30);
        ov65_0223789C(param0);
        param0->unk_00.unk_05 = 11;
    } else {
        if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
            ov65_022378C4(param0, param1, param2);
            param0->unk_00.unk_05 = 18;
        }
    }

    return 0;
}

static BOOL ov65_0223846C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    if (CommTiming_IsSyncState(14)) {
        u16 v1 = param0->unk_00.unk_00->unk_00.unk_1B;
        BOOL v2;

        v0 = ov65_02237548(param0);

        if (CommSys_ConnectedCount() != v0) {
            param0->unk_00.unk_08--;

            if (param0->unk_00.unk_08 <= 0) {
                param0->unk_00.unk_05 = 15;
            }

            return 0;
        }

        v2 = sub_02036614(CommSys_CurNetId(), &v1);

        if (v2 == 1) {
            param0->unk_00.unk_05 = 12;
        }
    }

    return 0;
}

static BOOL ov65_022384BC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;
    int v1;
    int v2;
    const u16 *v3;
    int v4;

    v1 = ov65_02237548(param0);
    v2 = CommSys_CurNetId();
    v4 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (v2 != v0) {
            v3 = sub_0203664C(v0);

            if (v3 != NULL) {
                if (v3[0] == param0->unk_00.unk_00->unk_00.unk_1B) {
                    v4++;
                } else {
                    param0->unk_00.unk_05 = 15;
                }
            }
        } else {
            v4++;
        }
    }

    if (v4 == v1) {
        param0->unk_00.unk_05 = 13;
    }

    return 0;
}

static BOOL ov65_0223850C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    CommMan_SetErrorHandling(1, 1);
    CommTiming_StartSync(18);

    param0->unk_00.unk_05 = 14;

    return 0;
}

static BOOL ov65_02238528(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (CommTiming_IsSyncState(18)) {
        ov65_022378C4(param0, param1, param2);
        param0->unk_00.unk_07 = 1;
        ov65_02237A24(param1, param2);

        return 1;
    }

    return 0;
}

static BOOL ov65_02238558(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (param0->unk_30.unk_240 != NULL) {
        sub_02002154(param0->unk_30.unk_240, param2);
        param0->unk_30.unk_240 = NULL;
    }

    ov65_02237018(&param0->unk_30);
    ov65_022378C4(param0, param1, param2);

    param0->unk_00.unk_05 = 16;

    return 0;
}

static BOOL ov65_02238594(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 118, param2);

    param0->unk_00.unk_05 = 17;

    return 0;
}

static BOOL ov65_022385AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    sub_02038378();
    sub_02038B60();

    param0->unk_00.unk_07 = 0;

    CommMan_SetErrorHandling(0, 1);

    return 1;
}

static BOOL ov65_022385D4(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    u32 v0;

    ov65_02237550(param0, param2);

    if (param0->unk_00.unk_00->unk_00.unk_21 == 1) {
        v0 = 125;
    } else {
        v0 = 124;
    }

    ov65_02236E44(&param0->unk_30, param1, v0, param2);

    param0->unk_00.unk_05 = 19;
    return 0;
}

static BOOL ov65_02238608(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    ov65_02237550(param0, param2);

    if (ov65_02237A10(param0) == 1) {
        param0->unk_00.unk_05 = 10;
        ov65_02236F38(&param0->unk_30);
        return 0;
    }

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002100(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, param2);
    param0->unk_00.unk_05 = 20;

    return 0;
}

static BOOL ov65_02238660(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    ov65_02237550(param0, param2);

    if (ov65_02237A10(param0) == 1) {
        param0->unk_00.unk_05 = 10;
        ov65_02236F38(&param0->unk_30);
        sub_02002154(param0->unk_30.unk_240, param2);
        param0->unk_30.unk_240 = NULL;
        return 0;
    }

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            ov65_0223731C(param0, param2);

            ov65_02237698(param0);
        }

        param0->unk_00.unk_05 = 8;
        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_022386D0(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    param0->unk_00.unk_26 = sub_02032F40(0);

    GF_ASSERT(param0->unk_00.unk_26 != 32);
    ov65_0223726C(&param0->unk_30, param1, 0, 0, param2);

    sub_02038378();
    param0->unk_00.unk_27 = 0;

    ov65_02236E44(&param0->unk_30, param1, 132, param2);
    param0->unk_00.unk_05 = 22;

    return 0;
}

static BOOL ov65_02238728(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    param0->unk_30.unk_240 = sub_02002100(param0->unk_30.unk_00, &Unk_ov65_02239A24, (0 + (24 * 2)), 4, param2);
    param0->unk_00.unk_05 = 23;

    return 0;
}

static BOOL ov65_0223875C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    int v0;

    v0 = sub_02002114(param0->unk_30.unk_240, param2);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            param0->unk_00.unk_05 = 24;
        } else {
            param0->unk_00.unk_05 = 29;
        }

        param0->unk_30.unk_240 = NULL;
    }

    return 0;
}

static BOOL ov65_0223878C(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_02236E44(&param0->unk_30, param1, 17, param2);
    ov65_0223789C(param0);

    param0->unk_00.unk_08 = 90;
    param0->unk_00.unk_05 = 25;

    return 0;
}

static BOOL ov65_022387AC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    BOOL v0;

    if (param0->unk_00.unk_08 > 0) {
        param0->unk_00.unk_08--;
        return 0;
    }

    v0 = ov65_02236EF8(&param0->unk_30);

    if (v0 == 0) {
        return 0;
    }

    if (ov65_02237464(param0->unk_00.unk_26, param1->unk_00)) {
        param0->unk_00.unk_05 = 26;
    }

    return 0;
}

static BOOL ov65_022387E8(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    ov65_0223742C(param0);

    if ((sub_020380E4() == 1) && (CommSys_IsPlayerConnected(0) == 1)) {
        sub_0203632C(0);
        ov65_022378C4(param0, param1, param2);
        sub_0200F174(3, 0, 0, 0x0, 6, 1, param2);
        param0->unk_00.unk_05 = 27;
    }

    return 0;
}

static BOOL ov65_02238838(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (ScreenWipe_Done()) {
        CommInfo_Init(param1->unk_08, NULL);

        param0->unk_00.unk_27 = 1;

        {
            ov65_022377E8(param0);
            ov65_022367F8(param0, param2);

            memset(&param0->unk_30, 0, sizeof(UnkStruct_ov65_02236840));

            ov65_0223760C(param0);
            ov65_022367A8(param0, param1, param2);
            sub_02039734();
        }

        {
            param0->unk_00.unk_12 = 0;
            param0->unk_00.unk_13 = 0;

            memset(param0->unk_00.unk_14, 0, sizeof(u8) * 4);
            memset(param0->unk_00.unk_18, 0, sizeof(u8) * 4);

            MI_CpuFill8(param0->unk_00.unk_1C, 1, sizeof(u8) * 4);
            MI_CpuFill8(param0->unk_00.unk_20, 1, sizeof(u8) * 4);

            param0->unk_00.unk_24 = 0;
            param0->unk_00.unk_26 = 0;

            memset(param0->unk_00.unk_28, 0, sizeof(u8) * 4);
        }

        sub_0200F174(3, 1, 1, 0x0, 6, 1, param2);

        param0->unk_00.unk_05 = 28;
    }

    return 0;
}

static BOOL ov65_022388FC(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    if (ScreenWipe_Done()) {
        param0->unk_00.unk_05 = 0;
    }

    return 0;
}

static BOOL ov65_02238910(UnkStruct_ov65_022367A8 *param0, UnkStruct_0207DE04 *param1, u32 param2)
{
    sub_02038378();
    sub_02038B60();

    param0->unk_00.unk_07 = 0;
    CommMan_SetErrorHandling(0, 1);

    return 1;
}

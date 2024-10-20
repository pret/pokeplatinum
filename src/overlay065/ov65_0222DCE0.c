#include "overlay065/ov65_0222DCE0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02012B20_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207DFAC.h"
#include "struct_defs/struct_0207E060.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay065/ov65_02235060.h"
#include "overlay065/struct_ov65_0222E99C.h"
#include "overlay065/struct_ov65_0222EBE0_decl.h"
#include "overlay065/struct_ov65_0222EBE0_t.h"
#include "overlay065/struct_ov65_0222F6EC.h"
#include "overlay065/struct_ov65_02234E50.h"
#include "overlay065/struct_ov65_022354D8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay098/struct_ov98_02247168.h"

#include "assert.h"
#include "bag.h"
#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "enums.h"
#include "error_handling.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "poffin.h"
#include "pokemon.h"
#include "render_text.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02023FCC.h"
#include "unk_0202631C.h"
#include "unk_0202ACE0.h"
#include "unk_0202C858.h"
#include "unk_0203061C.h"
#include "unk_02030CE8.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203909C.h"
#include "unk_020393C8.h"
#include "unk_0207DFAC.h"
#include "unk_02099550.h"
#include "unk_0209C390.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(overlay63);

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov65_02239CDC;

static UnkStruct_0207E060 * ov65_02234FA8(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static u8 ov65_02234FC4(int param0);
static BOOL ov65_02234FCC(UnkStruct_ov65_0222EBE0 * param0, int param1, int param2);
static void ov65_0222E5E0(void * param0);
static void ov65_0222E618(void);
static void ov65_0222E638(BGL * param0);
static void ov65_0222EBE0(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0222EC2C(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0222EC5C(BGL * param0);
static void ov65_0222ECA8(UnkStruct_ov65_0222EBE0 * param0, NARC * param1);
static void ov65_0222EDD0(void);
static void ov65_0222EE18(UnkStruct_ov65_0222EBE0 * param0, NARC * param1);
static void ov65_0222EE8C(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0222EE98(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0222E87C(UnkStruct_ov65_0222EBE0 * param0, UnkStruct_ov65_022354D8 * param1);
static void ov65_0222E8A8(UnkStruct_ov65_0222EBE0 * param0, UnkStruct_ov65_022354D8 * param1);
static void ov65_022302B0(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static int ov65_02230164(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02230298(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static UnkStruct_ov65_022354D8 * ov65_0222E8D4(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_0222E90C(BGL * param0, UnkStruct_ov65_0222E99C * param1, NARC * param2, u32 param3);
static void ov65_0222E99C(UnkStruct_ov65_0222E99C * param0);
static void ov65_0222E9C0(BGL * param0, UnkStruct_ov65_0222E99C * param1, u32 param2, u8 param3, u8 param4, u32 param5, u32 param6);
static void ov65_0222EA38(BGL * param0, UnkStruct_ov65_0222E99C * param1, u32 param2, u8 param3, u8 param4, u32 param5);
static void ov65_0222EAD0(Window * param0, UnkStruct_ov65_0222E99C * param1, u16 param2, u16 param3, u32 param4, u32 param5);
static void ov65_0222EB1C(Window * param0, UnkStruct_ov65_0222E99C * param1, u16 param2, u16 param3, u32 param4);
static int ov65_0222EBAC(u32 param0);
static int ov65_0222EBB8(void);
static void ov65_02232F90(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_02232FB0(UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2);
static BOOL ov65_02232FCC(const UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02232FE0(UnkStruct_ov65_0222EBE0 * param0, NARC * param1, u32 param2);
static void ov65_02233068(UnkStruct_ov65_0222EBE0 * param0);
static u32 ov65_022330C0(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_022331E0(UnkStruct_ov65_0222EBE0 * param0);
static BOOL ov65_02233208(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static u32  ov65_02233240(const UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0223324C(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0223327C(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_02233638(UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2);
static void ov65_0223366C(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static u32 ov65_0223368C(const UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_022336A4(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_022336C4(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_022332C4(u32 param0, u32 param1, void * param2);
static void ov65_02234A10(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_022332FC(UnkStruct_ov65_0222EBE0 * param0, NARC * param1, u32 param2);
static void ov65_02233570(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_022335F8(NNSG2dScreenData * param0, u8 param1);
static void ov65_022336D4(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0223370C(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02233874(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_02233940(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_02233E20(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_02233EF0(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_0223416C(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_022342A8(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_022343CC(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_0223449C(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_02234628(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02234694(UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov65_022346C4(UnkStruct_ov65_0222EBE0 * param0, Strbuf *param1, u32 param2, u32 param3);
static void ov65_02234708(UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void ov65_02234788(UnkStruct_ov65_0222EBE0 * param0, u8 param1, u8 param2, u8 param3, u8 param4);
static u32 ov65_0223484C(u32 param0, TextColor *param1);
static void ov65_02234900(UnkStruct_ov65_0222EBE0 * param0, Window * param1, u32 param2, u32 param3, u32 param4);
static void ov65_0223498C(UnkStruct_ov65_0222EBE0 * param0, Window * param1, u32 param2, u32 param3, u32 param4);
static void ov65_02234A68(UnkStruct_ov65_0222EBE0 * param0, NARC * param1, u32 param2);
static void ov65_02234CFC(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02234D6C(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02234DA0(UnkStruct_ov65_0222EBE0 * param0);
static u32 ov65_02234DD8(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02234E40(u32 param0, u32 param1, void * param2);
static void ov65_02234E50(UnkStruct_ov65_02234E50 * param0, u32 param1);
static BOOL ov65_02234E8C(UnkStruct_ov65_02234E50 * param0, u32 param1, u32 param2, u32 param3);
static void ov65_02234F68(UnkStruct_ov65_0222EBE0 * param0, int param1);
static void ov65_0222EF4C(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02232CA8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static void ov65_02232B58(UnkStruct_ov65_0222EBE0 * param0, int param1, BOOL param2);
static void ov65_02232DFC(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02232E58(UnkStruct_ov65_0222EBE0 * param0, int param1);
static void ov65_02232E70(UnkStruct_ov65_0222EBE0 * param0, int param1);
static void ov65_02232F50(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02232DC0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static u32 ov65_022319B8(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_02231A0C(void);
static BOOL ov65_02231A54(void);
static void ov65_02231A74(UnkStruct_ov65_0222EBE0 * param0, u32 param1);
static void ov65_0222F6EC(UnkStruct_ov65_0222EBE0 * param0);
static void ov65_0223500C(UnkStruct_ov65_0222EBE0 * param0, BOOL param1);
static void ov65_0223503C(UnkStruct_ov65_0222EBE0 * param0);
static int ov65_0222F010(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F164(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F1A8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F21C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F288(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F304(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F3DC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F7AC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F7F0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F7FC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F808(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F868(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F8AC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F90C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FC48(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222F490(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FAA0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FB44(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FCB8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FCDC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FFAC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022302C4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230634(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230774(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022307B0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230860(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022309D0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230A30(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230AF8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230BB4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230C04(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230CAC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230CB0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230CB4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232530(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230E04(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230FBC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231200(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231440(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230CF8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230D20(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230D6C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022315A4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022316F0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231A98(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231E64(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231FE0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231FE4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232020(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232024(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232028(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022321F4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0223229C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022322DC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232358(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022323C0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232558(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232564(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022325AC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022325C4(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232608(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232698(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_022326F0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232734(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0223278C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0223288C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0223294C(UnkStruct_ov65_0222EBE0 * param0, int param1);
static BOOL ov65_02232EDC(UnkStruct_ov65_0222EBE0 * param0);
static BOOL ov65_02232F00(UnkStruct_ov65_0222EBE0 * param0);
static BOOL ov65_02232F30(UnkStruct_ov65_0222EBE0 * param0);
static int ov65_022305EC(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02232B28(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02230CB8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_02231FE8(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0222FBD0(UnkStruct_ov65_0222EBE0 * param0, int param1);
static int ov65_0223128C(UnkStruct_ov65_0222EBE0 * param0, int param1);

static const s8 Unk_ov65_0223893C[5] = {
    0xFFFFFFFFFFFFFFF8,
    0xFFFFFFFFFFFFFFF7,
    0xFFFFFFFFFFFFFFF6,
    0xFFFFFFFFFFFFFFF6,
    0xFFFFFFFFFFFFFFF7
};

static const u8 Unk_ov65_0223892C[3] = {
    0x0,
    0x2,
    0x4
};

static const u8 Unk_ov65_02238930[3] = {
    0x1,
    0x3,
    0x5
};

static const TouchScreenHitTable Unk_ov65_0223895C[3] = {
    {0xA0, 0xC0, 0x8, 0x40},
    {0xA0, 0xC0, 0x50, 0xB0},
    {0xA0, 0xC0, 0xC0, 0xF8}
};

static int (* Unk_ov65_02239D2C[])(UnkStruct_ov65_0222EBE0 *, int) = {
    ov65_0222F010,
    ov65_0222F164,
    ov65_0222F1A8,
    ov65_0222F21C,
    ov65_0222F288,
    ov65_0222F304,
    ov65_0222F3DC,
    ov65_0222F7AC,
    ov65_0222F7F0,
    ov65_0222F7FC,
    ov65_0222F808,
    ov65_0222F868,
    ov65_0222F8AC,
    ov65_0222F90C,
    ov65_0222F490,
    ov65_0222FAA0,
    ov65_0222FCB8,
    ov65_0222FCDC,
    ov65_0222FFAC,
    ov65_022302C4,
    ov65_022305EC,
    ov65_02230634,
    ov65_02230774,
    ov65_022307B0,
    ov65_02230860,
    ov65_022309D0,
    ov65_02230A30,
    ov65_02230AF8,
    ov65_02230BB4,
    ov65_02230C04,
    ov65_02230CAC,
    ov65_02230CB0,
    ov65_02230CB4,
    ov65_02232530,
    ov65_02232B28,
    ov65_02230CB8,
    ov65_02230E04,
    ov65_02230FBC,
    ov65_02231440,
    ov65_02230CF8,
    ov65_02230D20,
    ov65_02230D6C,
    ov65_022315A4,
    ov65_022316F0,
    ov65_02231A98,
    ov65_02231E64,
    ov65_02232020,
    ov65_02232024,
    ov65_02232028,
    ov65_022321F4,
    ov65_0223229C,
    ov65_022322DC,
    ov65_02232358,
    ov65_022323C0,
    ov65_02232558,
    ov65_02232564,
    ov65_022325AC,
    ov65_022325C4,
    ov65_02232608,
    ov65_02232698,
    ov65_022326F0,
    ov65_02232734,
    ov65_0223278C,
    ov65_0223288C,
    ov65_0223294C,
    ov65_0222FC48,
    ov65_02231FE0,
    ov65_02231FE4,
    ov65_02231200,
    ov65_0222FB44,
    ov65_02231FE8,
    ov65_0222FBD0
};

static const u8 Unk_ov65_02238934[4] = {
    0x8,
    0x7,
    0x5,
    0x7
};

static const UnkStruct_ov61_0222C884 Unk_ov65_0223894C = {
    0x2,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x115
};

static BOOL ov65_0222DCE0 (UnkStruct_ov65_0222EBE0 * param0)
{
    return inline_0208BE68(SaveData_GetVarsFlags(param0->unk_160), 53);
}

static BOOL ov65_0222DCF8 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (!Bag_GetItemQuantity(SaveData_GetBag(param0->unk_160), 449, 54)) {
        return 0;
    }

    return 1;
}

static BOOL ov65_0222DD1C (UnkStruct_ov65_0222EBE0 * param0)
{
    return 1;
}

static u32 ov65_0222DD20 (UnkStruct_ov65_0222EBE0 * param0, UnkStruct_0207E060 * param1)
{
    u32 v0;

    v0 = param1->unk_1B;

    if ((v0 == 20) || (v0 == 21)) {
        if (ov65_0222DCE0(param0) == 0) {
            v0 = 29;
        }
    }

    if ((v0 == 22) || (v0 == 23) || (v0 == 24) || (v0 == 25) || (v0 == 26) || (v0 == 27)) {
        if (ov65_0222DD1C(param0) == 0) {
            v0 = 29;
        }
    }

    if ((v0 == 18) || (v0 == 19)) {
        if (ov65_0222DCF8(param0) == 0) {
            v0 = 29;
        }
    }

    return v0;
}

static BOOL ov65_0222DD64 (int param0)
{
    switch (param0) {
    case 19:
    case 18:
    case 23:
    case 22:
    case 27:
    case 26:
    case 25:
    case 24:
        return 1;
    default:
        return 0;
    }
}

static u32 ov65_0222DD94 (int param0)
{
    switch (param0) {
    case 19:
    case 18:
        return 11;
    case 23:
    case 22:
        return 13;
    case 27:
    case 26:
        return 15;
    case 25:
    case 24:
        return 14;
    default:
        break;
    }

    GF_ASSERT(0);
    return 0;
}

static BOOL ov65_0222DDD4 (int param0)
{
    switch (param0) {
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        return 1;
    default:
        return 0;
    }
}

static BOOL ov65_0222DDFC (int param0)
{
    if (ov65_0222DDD4(param0)) {
        return 1;
    }

    switch (param0) {
    case 15:
    case 19:
    case 21:
    case 23:
    case 27:
    case 25:
        return 1;
    }

    return 0;
}

static BOOL ov65_0222DE40 (int param0)
{
    switch (param0) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        return 1;
    default:
        return 0;
    }
}

static BOOL ov65_0222DE68 (int param0)
{
    if (ov65_0222DE40(param0)) {
        return 1;
    }

    switch (param0) {
    case 8:
    case 18:
    case 20:
    case 22:
    case 26:
    case 24:
    case 1:
        return 1;
    }

    return 0;
}

static BOOL ov65_0222DEB0 (int param0)
{
    switch (param0) {
    case 15:
    case 12:
    case 13:
    case 14:
        return 1;
    }

    return 0;
}

static int ov65_0222DED4 (int param0)
{
    int v0 = 29;

    switch (param0) {
    case 19:
        v0 = 18;
        break;
    case 21:
        v0 = 20;
        break;
    case 23:
        v0 = 22;
        break;
    case 27:
        v0 = 26;
        break;
    case 25:
        v0 = 24;
        break;
    case 15:
        v0 = 8;
        break;
    case 9:
        v0 = 2;
        break;
    case 10:
        v0 = 3;
        break;
    case 11:
        v0 = 4;
        break;
    case 12:
        v0 = 5;
        break;
    case 13:
        v0 = 6;
        break;
    case 14:
        v0 = 7;
        break;
    case 16:
        v0 = 1;
        break;
    case 18:
        v0 = 19;
        break;
    case 20:
        v0 = 21;
        break;
    case 22:
        v0 = 23;
        break;
    case 26:
        v0 = 27;
        break;
    case 24:
        v0 = 25;
        break;
    case 8:
        v0 = 15;
        break;
    case 2:
        v0 = 9;
        break;
    case 3:
        v0 = 10;
        break;
    case 4:
        v0 = 11;
        break;
    case 5:
        v0 = 12;
        break;
    case 6:
        v0 = 13;
        break;
    case 7:
        v0 = 14;
        break;

    case 1:
        v0 = 16;
        break;
    }

    return v0;
}

static int ov65_0222DF88 (UnkStruct_ov65_0222EBE0 * param0)
{
    Party * v0 = Party_GetFromSavedata(param0->unk_160);
    Pokemon * v1;
    int v2 = Party_GetCurrentCount(v0);
    int v3, v4 = 0;

    for (v3 = 0; v3 < v2; v3++) {
        v1 = Party_GetPokemonBySlotIndex(v0, v3);

        if (Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL) == 0) {
            continue;
        }

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL)) {
            continue;
        }

        v4++;
    }

    return v4;
}

static void ov65_0222DFD4 (int param0)
{
    if ((param0 == 19) || (18 == param0)) {
        sub_02038B00();
    } else if (ov65_0222DD64(param0)) {
        sub_02038B20();
    } else if (param0 == 16) {
        sub_02038B60();
    } else if ((param0 == 21) || (param0 == 20)) {
        sub_0203632C(0);
        sub_02038EA4();
    } else {
        sub_0203632C(1);
        sub_02038B84();
    }
}

static void ov65_0222E01C (UnkStruct_ov65_0222EBE0 * param0)
{
    NARC * v0;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);

    v0 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, 54);

    param0->unk_15C = sub_02018340(54);
    param0->unk_164 = StringTemplate_Default(54);
    param0->unk_168 = MessageLoader_Init(0, 26, 674, 54);
    param0->unk_16C = MessageLoader_Init(0, 26, 695, 54);

    ov65_0222E618();
    ov65_0222E638(param0->unk_15C);
    ov65_0222ECA8(param0, v0);

    inline_ov61_0222C3B0(&param0->unk_E2C, v0, 4, 54);

    SetMainCallback(ov65_0222E5E0, param0);

    ov65_0222EDD0();
    ov65_0222EE18(param0, v0);
    ov65_0222EE8C(param0);

    NARC_dtor(v0);
}

int ov65_0222E2A8 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov65_0222EBE0 * v0;
    UnkStruct_ov98_02247168 * v1;
    u32 v2;

    switch (*param1) {
    case 0:
        v1 = OverlayManager_Args(param0);

        if (sub_020389B8()) {
            switch (v1->unk_04) {
            case 8:
            case 9:
            case 10:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 12:
            case 7:
                Heap_Create(3, 121, 0x10000);
                break;
            default:
                break;
            }
        } else {
            Heap_Create(3, 121, 0x10000);
        }

        Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);

        if (v1->unk_04 == 1) {
            Heap_Create(3, 54, 0x70000);
        } else {
            Heap_Create(3, 54, 0xa0000);
        }

        v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov65_0222EBE0), 54);

        MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov65_0222EBE0));
        sub_0201DBEC(32, 54);

        v0->unk_180 = 8;
        v0->unk_160 = v1->unk_00;
        v0->unk_00 = sub_0202B370(v0->unk_160);
        v0->unk_3B4 = v1->unk_04;
        v0->unk_3AC = 8;
        v0->unk_3D0 = -1;

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);

        ov65_0222EBE0(v0);
        ov65_0222E01C(v0);

        sub_0200F174(0, 1, 1, 0x0, 6, 1, 54);

        if (sub_020389B8()) {
            sub_02039734();
        } else {
            sub_02099550();
        }

        v2 = sub_0201E450(4);
        GF_ASSERT(v2 == 1);
        (*param1)++;
        break;
    case 1:
        v0 = OverlayManager_Data(param0);
        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

int ov65_0222E3FC (OverlayManager * param0, int * param1)
{
    UnkStruct_ov65_0222EBE0 * v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done()) {
            *param1 = 1;
        }
        break;
    case 1:
        if (Unk_ov65_02239D2C[v0->unk_3A8] != NULL) {
            static int v1 = 0;

            if (v1 != v0->unk_3A8) {
                (void)0;
            }

            v1 = v0->unk_3A8;
            *param1 = (*Unk_ov65_02239D2C[v0->unk_3A8])(v0, *param1);
        }
        break;
    case 2:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    }

    if (v0->unk_18C) {
        CellActorCollection_Update(v0->unk_18C);
    }

    if (ov65_02235194(&v0->unk_3EC) == 1) {
        ov65_02235244(&v0->unk_3EC);
    }

    inline_ov61_0222C0F8(&v0->unk_E2C);

    return 0;
}

static void ov65_0222E47C (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;

    SetMainCallback(NULL, NULL);

    inline_ov61_0222C160(&param0->unk_E2C);

    if (ov65_02235194(&param0->unk_3EC) == 1) {
        ov65_02235130(&param0->unk_3EC);
    }

    if (ov65_02232FCC(param0) == 1) {
        ov65_02233068(param0);
    }

    ov65_0222E99C(&param0->unk_BD0);
    sub_020127BC(param0->unk_32C);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_31C[v0]);
    }

    CellActorCollection_Delete(param0->unk_18C);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    ov65_0222EF4C(param0);
    ov65_0222EC5C(param0->unk_15C);

    MessageLoader_Free(param0->unk_16C);
    MessageLoader_Free(param0->unk_168);
    StringTemplate_Free(param0->unk_164);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));
}

int ov65_0222E548 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov65_0222EBE0 * v0 = OverlayManager_Data(param0);
    UnkStruct_ov98_02247168 * v1;

    ov65_0222E47C(v0);

    v1 = OverlayManager_Args(param0);
    v1->unk_04 = v0->unk_3AC;

    if ((v0->unk_3AC == 8) || (v0->unk_3AC == 10)) {
        sub_02099560();
    } else {
        v1->unk_08 = ov4_021D2388();
    }

    ov65_0222EC2C(v0);

    OverlayManager_FreeData(param0);
    sub_0201E530();
    sub_0201DC3C();
    Heap_Destroy(54);

    switch (v0->unk_3AC) {
    case 8:
    case 9:
    case 10:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 12:
    case 7:
        Heap_Destroy(121);
        break;
    default:
        break;
    }

    if (ov65_02231A54() == 1) {
        sub_02004A68(0, 120);
    }

    return 1;
}

static void ov65_0222E5E0 (void * param0)
{
    UnkStruct_ov65_0222EBE0 * v0 = param0;

    sub_0201C2B8(v0->unk_15C);
    sub_0201DCAC();
    sub_0200A858();

    inline_ov61_0222C1FC(&v0->unk_E2C);

    if (v0->unk_1158 == 1) {
        sub_0200F338(0);
        sub_0200F338(1);
        v0->unk_1158 = 0;
    }
}

static void ov65_0222E618 (void)
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

static void ov65_0222E638 (BGL * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019690(0, 32, 0, 54);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
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

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019690(1, 32, 0, 54);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019690(2, 32, 0, 54);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v4, 0);
        sub_02019690(3, 32, 0, 54);
        sub_02019EBC(param0, 3);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v5, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v6 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v6, 0);
        sub_02019EBC(param0, 5);
    }

    {
        UnkStruct_ov97_0222DB78 v7 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v7, 0);
        sub_02019EBC(param0, 6);
    }

    {
        UnkStruct_ov97_0222DB78 v8 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 7, &v8, 0);
        sub_02019EBC(param0, 7);
    }

    sub_02019690(0, 32, 0, 54);
    sub_02019690(1, 32, 0, 54);
    sub_02019690(2, 32, 0, 54);
    sub_02019690(3, 32, 0, 54);
    sub_02019690(4, 32, 0, 54);
    sub_02019690(5, 32, 0, 54);
    sub_02019690(6, 32, 0, 54);
    sub_02019690(7, 32, 0, 54);

    BGL_SetPriority(0, 3);
    BGL_SetPriority(1, 1);
    BGL_SetPriority(3, 0);
    BGL_SetPriority(2, 0);

    G2_BlendNone();
    G2S_BlendNone();
}

static void ov65_0222E87C (UnkStruct_ov65_0222EBE0 * param0, UnkStruct_ov65_022354D8 * param1)
{
    int v0;

    for (v0 = 0; v0 < (32 + 1); v0++) {
        if (param0->unk_B4C[v0] == NULL) {
            param0->unk_B4C[v0] = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov65_0222E8A8 (UnkStruct_ov65_0222EBE0 * param0, UnkStruct_ov65_022354D8 * param1)
{
    int v0;

    for (v0 = 0; v0 < (32 + 1); v0++) {
        if (param0->unk_B4C[v0] == param1) {
            param0->unk_B4C[v0] = NULL;
            return;
        }
    }

    GF_ASSERT(0);
}

static UnkStruct_ov65_022354D8 * ov65_0222E8D4 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < (32 + 1); v0++) {
        if (param0->unk_B4C[v0]) {
            if (ov65_022354D8(param0->unk_B4C[v0]) == param1) {
                return param0->unk_B4C[v0];
            }
        }
    }

    return NULL;
}

static void ov65_0222E90C (BGL * param0, UnkStruct_ov65_0222E99C * param1, NARC * param2, u32 param3)
{
    sub_02007130(param2, 13, 0, 8 * 32, 2 * 32, param3);
    sub_02007130(param2, 13, 4, 13 * 32, 2 * 32, param3);
    sub_020070E8(param2, 12, param0, 1, 0, 0, 0, param3);
    sub_020070E8(param2, 12, param0, 6, 0, 0, 0, param3);

    if (param1->unk_08 == NULL) {
        param1->unk_08 = sub_020071B4(param2, 12, 0, &param1->unk_0C, param3);
    }

    if (param1->unk_00 == NULL) {
        param1->unk_00 = sub_020071D0(param2, 14, 0, &param1->unk_04, param3);
    }
}

static void ov65_0222E99C (UnkStruct_ov65_0222E99C * param0)
{
    if (param0->unk_00 != NULL) {
        Heap_FreeToHeap(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_08 != NULL) {
        Heap_FreeToHeap(param0->unk_08);
        param0->unk_08 = NULL;
    }
}

static void ov65_0222E9C0 (BGL * param0, UnkStruct_ov65_0222E99C * param1, u32 param2, u8 param3, u8 param4, u32 param5, u32 param6)
{
    int v0;

    sub_020198E8(param0, param2, param3, param4, 2, 2, param1->unk_04->rawData, 2 * param5, 0, param1->unk_04->screenWidth / 8, param1->unk_04->screenHeight / 8);

    v0 = ov65_0222EBAC(param2);

    sub_02019E2C(param0, param2, param3, param4, 2, 2, v0 + param6);
    sub_0201C3C0(param0, param2);
}

static void ov65_0222EA38 (BGL * param0, UnkStruct_ov65_0222E99C * param1, u32 param2, u8 param3, u8 param4, u32 param5)
{
    u8 v0 = 0;
    u8 v1 = 0;

    switch (param5) {
    case 1:
        v1 = 3;
        break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        v0 = 1;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        v1 = 6;
        break;
    case 15:
        v0 = 1;
    case 8:
        v1 = 7;
        break;
    case 23:
    case 25:
    case 27:
        v0 = 1;
    case 22:
    case 24:
    case 26:
        v1 = 10;
        break;
    case 19:
        v0 = 1;
    case 18:
        v1 = 9;
        break;
    case 21:
        v0 = 1;
    case 20:
        v1 = 11;
        break;
    case 16:
        v1 = 4;
        break;
    case 0:
        v1 = 8;
        break;
    case 29:
    case 28:
        v1 = 5;
        break;
    default:
        v1 = 5;
        break;
    }

    ov65_0222E9C0(param0, param1, param2, param3, param4, v1, v0);
}

static void ov65_0222EAD0 (Window * param0, UnkStruct_ov65_0222E99C * param1, u16 param2, u16 param3, u32 param4, u32 param5)
{
    int v0;

    sub_0201ADDC(param0, param1->unk_0C->pRawData, (2 * 8) * param4, 0, param1->unk_0C->W * 8, param1->unk_0C->H * 8, param2, param3, 2 * 8, 2 * 8);
    v0 = ov65_0222EBAC(param0->unk_04);
    sub_0201C2B4(param0, v0 + param5);
}

static void ov65_0222EB1C (Window * param0, UnkStruct_ov65_0222E99C * param1, u16 param2, u16 param3, u32 param4)
{
    u8 v0 = 0;
    u8 v1 = 0;

    switch (param4) {
    case 1:
        v1 = 3;
        break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        v0 = 1;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        v1 = 6;
        break;
    case 15:
        v0 = 1;
    case 8:
        v1 = 7;
        break;
    case 23:
    case 25:
    case 27:
        v0 = 1;
    case 22:
    case 24:
    case 26:
        v1 = 10;
        break;
    case 19:
        v0 = 1;
    case 18:
        v1 = 9;
        break;
    case 21:
        v0 = 1;
    case 20:
        v1 = 11;
        break;
    case 16:
        v1 = 4;
        break;
    case 0:
        v1 = 8;
        break;
    case 29:
    case 28:
        v1 = 5;
        break;
    default:
        v1 = 5;
        break;
    }

    ov65_0222EAD0(param0, param1, param2, param3, v1, v0);
}

static int ov65_0222EBAC (u32 param0)
{
    if (param0 < 4) {
        return 8;
    }

    return 13;
}

static int ov65_0222EBB8 (void)
{
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 54);
    ov65_02231A0C();

    return 18;
}

static void ov65_0222EBE0 (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;
    int v1;

    param0->unk_174 = Strbuf_Init((190 * 2), 54);
    param0->unk_17C = Strbuf_Init((190 * 2), 54);
    param0->unk_170 = Strbuf_Init((190 * 2), 54);
    param0->unk_178 = Strbuf_Init((90 * 2), 54);
    param0->unk_3A8 = 0;
}

static void ov65_0222EC2C (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;

    Strbuf_Free(param0->unk_178);
    Strbuf_Free(param0->unk_174);
    Strbuf_Free(param0->unk_17C);
    Strbuf_Free(param0->unk_170);
}

static void ov65_0222EC5C (BGL * param0)
{
    sub_02019044(param0, 7);
    sub_02019044(param0, 6);
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeap(param0);
}

static void ov65_0222ECA8 (UnkStruct_ov65_0222EBE0 * param0, NARC * param1)
{
    BGL * v0 = param0->unk_15C;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);

    sub_02007130(param1, 3, 0, 0, 0, 54);
    sub_02007130(param1, 3, 4, 0, 0, 54);

    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 54);
    Font_LoadScreenIndicatorsPalette(0, 12 * 0x20, 54);

    sub_020070E8(param1, 2, v0, 0, 0, 0, 0, 54);
    sub_0200710C(param1, 5, v0, 0, 0, 0, 0, 54);
    sub_020070E8(param1, 10, v0, 4, 0, 0, 0, 54);
    sub_0200710C(param1, 11, v0, 4, 0, 0, 0, 54);

    {
        int v1 = Options_Frame(SaveData_Options(param0->unk_160));

        sub_0200DD0C(v0, 2, (512 - (18 + 12)), 10, v1, 54);
        sub_0200DAA4(v0, 2, ((512 - (18 + 12)) - 9), 11, 0, 54);
        sub_0200DAA4(v0, 1, ((512 - (18 + 12)) - 9), 11, 0, 54);
    }
}

static void ov65_0222EDD0 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, (128 * 1024), (16 * 1024), 54
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(20, 54);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void ov65_0222EE18 (UnkStruct_ov65_0222EBE0 * param0, NARC * param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 54);

    param0->unk_18C = sub_020095C4(8, &param0->unk_190, 54);

    sub_0200964C(&param0->unk_190, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_31C[v0] = SpriteResourceCollection_New(1, v0, 54);
    }

    param0->unk_32C = sub_02012744(1, 54);
}

static void ov65_0222EE8C (UnkStruct_ov65_0222EBE0 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov65_0222EE98 (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0, v1;

    if (BGL_WindowAdded(&param0->unk_350)) {
        Window_Clear(&param0->unk_350, 0);
        BGL_DeleteWindow(&param0->unk_350);
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_350, 3, 5, 1, 22, 2, 13, 512 - 18 * 3);
    BGL_FillWindow(&param0->unk_350, 0x8000);
    MessageLoader_GetStrbuf(param0->unk_168, 21, param0->unk_178);

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, param0->unk_178, 0, 22 * 8);

        Text_AddPrinterWithParamsAndColor(&param0->unk_350, FONT_MESSAGE, param0->unk_178, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    sub_0201A9A4(&param0->unk_350);
}

static void ov65_0222EF4C (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;

    ov65_02232DFC(param0);

    if (BGL_WindowAdded(&param0->unk_350)) {
        BGL_DeleteWindow(&param0->unk_350);
    }

    if (BGL_WindowAdded(&param0->unk_330)) {
        BGL_DeleteWindow(&param0->unk_330);
    }

    if (BGL_WindowAdded(&param0->unk_390)) {
        BGL_DeleteWindow(&param0->unk_390);
    }

    if (BGL_WindowAdded(&param0->unk_340)) {
        BGL_DeleteWindow(&param0->unk_340);
    }

    if (BGL_WindowAdded(&param0->unk_370)) {
        BGL_DeleteWindow(&param0->unk_370);
    }

    if (param0->unk_150) {
        sub_02001384(param0->unk_150, NULL, NULL);
    }

    if (param0->unk_14C) {
        sub_02013A3C(param0->unk_14C);
        param0->unk_14C = NULL;
    }

    if (BGL_WindowAdded(&param0->unk_360)) {
        BGL_DeleteWindow(&param0->unk_360);
    }
}

static const UnkStruct_ov61_0222C884 Unk_ov65_02238944 = {
    0x2,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x51
};

static const UnkStruct_ov61_0222C884 Unk_ov65_02238954 = {
    0x1,
    0x19,
    0x13,
    0x6,
    0x4,
    0xD,
    0x189
};

static int ov65_0222F010 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0;

    if (sub_020389B8()) {
        ov65_02232DC0(param0, ov4_021D2388());
        param0->unk_04 = sub_020388E8();
        param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;

        v0 = ov65_0222DD20(param0, &param0->unk_04->unk_00);

        if ((v0 == 8) || (v0 == 18) || (v0 == 20) || (v0 == 22) || (v0 == 23) || (v0 == 24) || (v0 == 25) || (v0 == 26) || (v0 == 27) || (v0 == 19)) {
            ov65_02232E58(param0, 16);
            CommInfo_Delete();
            sub_02038398();

            param0->unk_04 = sub_020388E8();
            param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;
            param0->unk_3BC = 20;
            param0->unk_3A8 = 65;
        } else {
            ov65_02232B58(param0, 77, 0);
            CommMan_SetErrorHandling(1, 1);
            CommTiming_StartSync(16);
            param0->unk_3A8 = 61;
        }
    } else {
        sub_02004550(11, 1175, 1);
        ov65_0222EE98(param0);

        if (!DWC_CheckHasProfile(sub_0202AD28(param0->unk_00))) {
            BGL_SetPriority(0, 3);
            BGL_SetPriority(1, 0);
            BGL_SetPriority(3, 0);
            BGL_SetPriority(2, 1);

            ov65_02232CA8(param0, 18);

            param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_02238954, ((512 - (18 + 12)) - 9), 11, 54);
            param0->unk_3A8 = 6;
        } else if (!DWC_CheckValidConsole(sub_0202AD28(param0->unk_00))) {
            ov65_02232CA8(param0, 20);
            param0->unk_3A8 = 3;
        } else {
            ov65_02232B58(param0, 17, 1);
            param0->unk_3A8 = 1;
        }
    }

    return param1;
}

static int ov65_0222F164 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_02238944, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 2;
    }

    return param1;
}

static int ov65_0222F1A8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        if (v1 == 0) {
            param0->unk_04 = sub_0203871C(param0->unk_160, sizeof(UnkStruct_0207DFAC));
            ov65_02232B58(param0, 23, 1);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));
            param0->unk_3A8 = 14;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F21C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232CA8(param0, 21);
        BGL_SetPriority(3, 0);
        BGL_SetPriority(2, 1);
        BGL_SetPriority(1, 0);
        BGL_SetPriority(0, 3);

        param0->unk_184 = sub_02002054(param0->unk_15C, &Unk_ov65_02238954, ((512 - (18 + 12)) - 9), 11, 1, 54);
        param0->unk_3A8 = 4;
    }

    return param1;
}

static int ov65_0222F288 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        sub_0200E084(&param0->unk_360, 0);
        BGL_DeleteWindow(&param0->unk_360);

        if (v1 == 0) {
            ov65_02232CA8(param0, 22);
            param0->unk_184 = sub_02002054(param0->unk_15C, &Unk_ov65_02238954, ((512 - (18 + 12)) - 9), 11, 1, 54);
            param0->unk_3A8 = 5;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F304 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        BGL_SetPriority(3, 0);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(1, 1);
        BGL_SetPriority(0, 3);
        sub_0200E084(&param0->unk_360, 0);
        BGL_DeleteWindow(&param0->unk_360);

        if (v1 == 0) {
            WiFiList_Init(param0->unk_00);
            Email_Init(SaveData_SaveTable(param0->unk_160, 35));
            sub_02030764(sub_0203068C(param0->unk_160));
            param0->unk_3A8 = 14;
            param0->unk_04 = sub_0203871C(param0->unk_160, sizeof(UnkStruct_0207DFAC));
            ov65_02232B58(param0, 23, 1);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));
            param0->unk_3C8 = 1;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F3DC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        BGL_SetPriority(0, 3);
        BGL_SetPriority(1, 1);
        BGL_SetPriority(3, 0);
        BGL_SetPriority(2, 0);
        sub_0200E084(&param0->unk_360, 0);
        BGL_DeleteWindow(&param0->unk_360);

        if (v1 == 0) {
            param0->unk_3A8 = 14;
            param0->unk_04 = sub_0203871C(param0->unk_160, sizeof(UnkStruct_0207DFAC));
            ov65_02232B58(param0, 23, 1);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));
            param0->unk_3C8 = 1;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F490 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    BGL_SetPriority(0, 3);
    BGL_SetPriority(1, 1);
    BGL_SetPriority(3, 0);
    BGL_SetPriority(2, 0);
    param0->unk_3A8 = 15;
    return param1;
}

static void ov65_0222F4C4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(param0->unk_160);
    PokedexData * v1 = SaveData_Pokedex(param0->unk_160);
    Party * v2 = Party_GetFromSavedata(param0->unk_160);
    UnkStruct_0202C878 * v3 = sub_0202C878(param0->unk_160);
    int v4, v5;

    GF_ASSERT((sizeof(UnkStruct_0207E060)) == sizeof(UnkStruct_0207E060));

    v4 = Party_GetCurrentCount(v2);

    for (v5 = 0; v5 < v4; v5++) {
        Pokemon * v6 = Party_GetPokemonBySlotIndex(v2, v5);

        param0->unk_04->unk_00.unk_00[v5] = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
        param0->unk_04->unk_00.unk_0C[v5] = Pokemon_GetValue(v6, MON_DATA_HELD_ITEM, NULL);
    }

    param0->unk_04->unk_00.unk_18 = TrainerInfo_GameCode(v0);
    param0->unk_04->unk_00.unk_19 = TrainerInfo_RegionCode(v0);
    param0->unk_04->unk_00.unk_1A = sub_02027474(v1);
    param0->unk_04->unk_00.unk_1B = 29;

    ov65_02232E70(param0, param1);

    param0->unk_04->unk_00.unk_1C = 0;
    param0->unk_04->unk_00.unk_1D = TrainerInfo_Appearance(v0);
    param0->unk_04->unk_00.unk_1E = TrainerInfo_Gender(v0);
    param0->unk_04->unk_00.unk_1F = sub_0202C8C0(v3);
    param0->unk_04->unk_00.unk_20 = sub_0202C8C4(v3);
    param0->unk_04->unk_00.unk_21 = 1;
    param0->unk_04->unk_00.unk_22 = 1;

    ov4_021D222C((const char *)&param0->unk_04->unk_00, (sizeof(UnkStruct_0207E060)));
    ov4_021D2198(&param0->unk_04->unk_24[0], (sizeof(UnkStruct_0207E060)));
}

static int ov65_0222F5BC (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0, v1 = 0;
    UnkStruct_0207E060 * v2;
    u32 v3;

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_0C[v0] = 0;

        if (param0->unk_115A > v0) {
            if (DWC_STATUS_OFFLINE != ov65_02234FC4(v0)) {
                v2 = ov65_02234FA8(param0, v0);
                v3 = ov65_0222DD20(param0, v2);

                if ((v3 != 0) && (v3 != 28) && (v2->unk_1D != 0x0)) {
                    param0->unk_0C[v1] = v0 + 1;
                    v1++;
                } else {
                    if ((v3 == 28)) {
                        if (ov65_0223368C(param0, v0 + 1) != 0) {
                            ov65_0223366C(param0, v0 + 1);
                        }
                    }
                }
            }
        }
    }

    return v1;
}

static int ov65_0222F62C (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0, v1 = 0;
    BOOL v2;
    BOOL v3;
    UnkStruct_ov65_022354D8 * v4;
    UnkStruct_0207E060 * v5;
    u32 v6;

    for (v0 = 0; v0 < 32; v0++) {
        v5 = ov65_02234FA8(param0, v0);
        v6 = ov65_0222DD20(param0, v5);

        if ((param0->unk_4C[v0] != v6) || (param0->unk_CC[v0] != v5->unk_21)) {
            v4 = ov65_0222E8D4(param0, v0 + 1);

            if (v4) {
                v2 = ov65_0222DDFC(param0->unk_4C[v0]);
                v3 = ov65_0222DDFC(v6);

                if ((v2 == 1) && (v3 == 0)) {
                    ov65_0223558C(&param0->unk_3EC, v4, 0);
                } else if ((v2 == 0) && (v3 == 1)) {
                    ov65_0223558C(&param0->unk_3EC, v4, 1);
                }

                param0->unk_4C[v0] = v6;
                param0->unk_CC[v0] = v5->unk_21;

                sub_0202AE2C(param0->unk_00, v0, 7, v5->unk_1D);
                sub_0202AE2C(param0->unk_00, v0, 8, v5->unk_1E);
                v1++;
            }
        }
    }

    return v1;
}

static void ov65_0222F6EC (UnkStruct_ov65_0222EBE0 * param0)
{
    UnkStruct_ov65_0222F6EC * v0 = sub_020382F8();
    int v1, v2 = v0->unk_00;
    int v3 = ov4_021D1F3C(v0->unk_00, v0->unk_04);

    if ((v3 == 11) || (v2 == ((DWC_ERROR_NUM)+5))) {
        v1 = 14;
        v3 = 11;
    } else if (v2 == ((DWC_ERROR_NUM)+6)) {
        v1 = 13;
        v3 = 12;
    } else {
        if (v3 >= 0) {
            v1 = 0 + v3;
        } else {
            v1 = 11;
        }
    }

    ov65_02232DFC(param0);
    StringTemplate_SetNumber(param0->unk_164, 0, v2, 5, 2, 1);

    param0->unk_3BC = 30;

    ov65_02232CA8(param0, v1);

    switch (v3) {
    case 1:
    case 4:
    case 5:
    case 11:
        param0->unk_3A8 = 10;
        break;
    case 6:
    case 7:
    case 8:
    case 9:
        param0->unk_3A8 = 10;
        break;
    case 10:
        param0->unk_3A8 = 10;
        break;
    case 0:
    case 2:
    case 3:
    default:
        param0->unk_3A8 = 35;
        break;
    }
}

static int ov65_0222F7AC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        if (BGL_WindowAdded(&param0->unk_360)) {
            sub_0200E084(&param0->unk_360, 0);
            BGL_DeleteWindow(&param0->unk_360);
        }

        param0->unk_3A8 = 8;
    }

    return param1;
}

static int ov65_0222F7F0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    param0->unk_3A8 = 9;
    return param1;
}

static int ov65_0222F7FC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    param0->unk_3A8 = 11;
    return param1;
}

static int ov65_0222F808 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (param0->unk_3BC > 0) {
        param0->unk_3BC--;
        return param1;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        if (BGL_WindowAdded(&param0->unk_360)) {
            sub_0200E084(&param0->unk_360, 0);
            BGL_DeleteWindow(&param0->unk_360);
        }

        ov65_02232B58(param0, 88, 0);
        param0->unk_3A8 = 11;
    }

    return param1;
}

static int ov65_0222F868 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_0223894C, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 12;
    }

    return param1;
}

static int ov65_0222F8AC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else if (v1 == 0) {
        sub_02038350();
        ov65_02232E58(param0, 16);
        param0->unk_3A8 = 13;
    } else {
        ov65_02232E58(param0, 16);
        sub_02038350();
        CommInfo_Delete();
        param0->unk_3AC = 8;
        param0->unk_3A8 = 34;
    }

    ov65_02232DFC(param0);
    return param1;
}

static int ov65_0222F90C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    NARC * v1;

    if (!sub_020334A4()) {
        if (ov65_02235194(&param0->unk_3EC) == 1) {
            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);
            ov65_02235130(&param0->unk_3EC);

            for (v0 = 0; v0 < (32 + 1); v0++) {
                param0->unk_B4C[v0] = NULL;
            }

            sub_0200A93C(54);
            sub_0200A944(54);
        }

        if (ov65_02232FCC(param0) == 1) {
            ov65_02233068(param0);
        }

        if (BGL_WindowAdded(&param0->unk_350)) {
            Window_Clear(&param0->unk_350, 0);
            BGL_DeleteWindow(&param0->unk_350);
        }

        if (BGL_WindowAdded(&param0->unk_340)) {
            BGL_DeleteWindow(&param0->unk_340);
        }

        sub_02019EBC(param0->unk_15C, 3);

        v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, 54);
        ov65_0222ECA8(param0, v1);
        NARC_dtor(v1);

        inline_ov96_0223BDEC(&param0->unk_E2C, 1);

        param0->unk_1158 = 1;

        if (param0->unk_14C) {
            BGL_DeleteWindow(&param0->unk_370);
            sub_02001384(param0->unk_150, NULL, NULL);
            param0->unk_150 = NULL;
            sub_02013A3C(param0->unk_14C);
            param0->unk_14C = NULL;
        }

        MI_CpuClear8(param0->unk_0C, 32);
        MI_CpuClear8(param0->unk_2C, 32);
        MI_CpuClear8(param0->unk_4C, 32 * sizeof(int));
        MI_CpuClear8(param0->unk_CC, 32 * sizeof(int));

        ov65_0222EE98(param0);
        param0->unk_04 = sub_0203871C(param0->unk_160, sizeof(UnkStruct_0207DFAC));
        ov65_02232B58(param0, 23, 1);
        GF_ASSERT(param0->unk_188 == NULL);
        param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));
        param0->unk_3A8 = 14;
    }

    return param1;
}

// clang-format off
asm static int ov65_0222FAA0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    push {r3, r4, r5, lr}
    add r5, r0, #0
    mov r0, #6
    lsl r0, r0, #6
    ldr r0, [r5, r0]
    add r4, r1, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    bl Text_IsPrinterActive
    cmp r0, #0
    beq _0222FABC
    add r0, r4, #0
    pop {r3, r4, r5, pc}
 _0222FABC:
    bl ov4_021D27E0
    cmp r0, #0
    beq _0222FAF6
    mov r0, #0xd1
    mov r1, #0x45
    lsl r0, r0, #2
    str r1, [r5, r0]
    add r0, r5, #0
    mov r1, #0x1e
    mov r2, #1
    bl ov65_02232B58
    mov r0, #0x62
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    cmp r0, #0
    beq _0222FAE4
    bl ErrorHandling_AssertFail
 _0222FAE4:
    mov r1, #0xb3
    lsl r1, r1, #2
    add r0, r5, r1
    sub r1, #0xea
    bl sub_0200E7FC
    mov r1, #0x62
    lsl r1, r1, #2
    str r0, [r5, r1]
 _0222FAF6:
    bl sub_02038294
    cmp r0, #0
    beq _0222FB2A
    mov r0, #0xd9
    lsl r0, r0, #2
    ldr r1, [r5, r0]
    cmp r1, #0
    beq _0222FB10
    mov r1, #0x10
    sub r0, #0x20
    str r1, [r5, r0]
    b _0222FB40
 _0222FB10:
    add r0, r5, #0
    mov r1, #0x10
    bl ov65_0222F4C4
    add r0, r5, #0
    bl ov65_0222F5BC
    bl ov65_0222EBB8
    mov r1, #0xd1
    lsl r1, r1, #2
    str r0, [r5, r1]
    b _0222FB40
 _0222FB2A:
    bl sub_020383E8
    cmp r0, #0
    bne _0222FB3A
    bl sub_020380E4
    cmp r0, #3
    bne _0222FB40
 _0222FB3A:
    add r0, r5, #0
    bl ov65_0222F6EC
 _0222FB40:
    add r0, r4, #0
    pop {r3, r4, r5, pc}
}
// clang-format on

static int ov65_0222FB44 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (ov4_021D27E0()) {
        SaveData_SaveStateInit(param0->unk_160, 0);
        param0->unk_3A8 = 71;
        return param1;
    }

    if (sub_02038294()) {
        if (param0->unk_3C8) {
            param0->unk_3A8 = 16;
        } else {
            ov65_0222F4C4(param0, 16);
            ov65_0222F5BC(param0);
            param0->unk_3A8 = ov65_0222EBB8();
        }
    } else if (sub_020383E8() || (sub_020380E4() == 3)) {
        ov65_0222F6EC(param0);
    }

    return param1;
}

static int ov65_0222FBD0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (ov4_021D27E0()) {
        int v0 = SaveData_SaveStateMain(param0->unk_160);

        if ((v0 != 0) && (v0 != 1)) {
            ov4_021D27F4();
        } else {
            return param1;
        }
    }

    if (sub_02038294()) {
        if (param0->unk_3C8) {
            param0->unk_3A8 = 16;
        } else {
            ov65_0222F4C4(param0, 16);
            ov65_0222F5BC(param0);
            param0->unk_3A8 = ov65_0222EBB8();
        }
    } else if (sub_020383E8() || (sub_020380E4() == 3)) {
        ov65_0222F6EC(param0);
    }

    return param1;
}

static int ov65_0222FC48 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;

    if (param0->unk_3BC > 0) {
        param0->unk_3BC--;
        return param1;
    }

    if (sub_020382C0()) {
        param0->unk_3A8 = ov65_0222EBB8();
    } else if (sub_020383E8() || (sub_020380E4() == 3)) {
        ov65_0222F6EC(param0);
    } else if ((sub_020380E4() >= 4) || sub_02038284() || !CommSys_IsPlayerConnected(0)) {
        sub_02038378();
        param0->unk_3A8 = ov65_0222EBB8();
    }

    return param1;
}

static int ov65_0222FCB8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    ov65_02232DFC(param0);
    ov65_02232CA8(param0, 19);

    param0->unk_3A8 = 17;
    param0->unk_3C8 = 0;

    return param1;
}

static int ov65_0222FCDC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        if (param0->unk_3B4 == 1) {
            param0->unk_3AC = 10;
            param0->unk_3A8 = 34;
            sub_02038350();
        } else if (0 == sub_0202AF94(param0->unk_00)) {
            ov65_02232B58(param0, 26, 1);
            param0->unk_3A8 = 59;
            param0->unk_3BC = 1;
        } else {
            ov65_0222F4C4(param0, 16);
            ov65_0222F5BC(param0);

            param0->unk_3A8 = ov65_0222EBB8();

            if (BGL_WindowAdded(&param0->unk_360)) {
                sub_0200E084(&param0->unk_360, 0);
                BGL_DeleteWindow(&param0->unk_360);
            }
        }
    }

    return param1;
}

static void ov65_0222FD70 (UnkStruct_ov65_0222EBE0 * param0)
{
    TextColor v0;
    int v1, v2, v3;
    TrainerInfo * v4 = SaveData_GetTrainerInfo(param0->unk_160);
    Strbuf* v5 = TrainerInfo_NameNewStrbuf(v4, 54);
    u32 v6;

    if (!BGL_WindowAdded(&param0->unk_340)) {
        Strbuf_Free(v5);
        return;
    }

    BGL_FillWindow(&param0->unk_340, 0);

    v1 = TrainerInfo_Gender(v4);

    if (v1 == 0) {
        v0 = TEXT_COLOR(5, 6, 0);
    } else {
        v0 = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_340, FONT_SYSTEM, v5, 32, 0, TEXT_SPEED_NO_TRANSFER, v0, NULL);
    Strbuf_Free(v5);

    v6 = ov65_0222DD20(param0, &param0->unk_04->unk_00);
    v3 = ov65_0223484C(v6, &v0);

    if (v6 == 1) {
        if (ov4_021D2388() == -1) {
            MessageLoader_GetStrbuf(param0->unk_168, v3, param0->unk_170);
        } else {
            v1 = sub_0202AD2C(param0->unk_00, ov4_021D2388(), 8);

            if (0 == v1) {
                v0 = TEXT_COLOR(5, 6, 0);
            } else if (1 == v1) {
                v0 = TEXT_COLOR(3, 4, 0);
            }

            Strbuf_CopyChars(param0->unk_170, sub_0202AEF0(param0->unk_00, ov4_021D2388()));
        }
    } else {
        MessageLoader_GetStrbuf(param0->unk_168, v3, param0->unk_170);
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_340, FONT_SYSTEM, param0->unk_170, 102, 0, TEXT_SPEED_NO_TRANSFER, v0, NULL);
    ov65_0222EA38(param0->unk_15C, &param0->unk_BD0, 1, 2, 1, v6);

    if (param0->unk_04->unk_00.unk_21) {
        v2 = 8;
    } else {
        v2 = 1;
    }

    ov65_0222E9C0(param0->unk_15C, &param0->unk_BD0, 1, 26, 1, v2, 0);
    sub_0201A9A4(&param0->unk_340);
}

static void ov65_0222FED8 (BmpList * param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }
}

static void ov65_0222FEEC (UnkStruct_ov65_0222EBE0 * param0)
{
    if (BGL_WindowAdded(&param0->unk_340)) {
        BGL_DeleteWindow(&param0->unk_340);
    }

    if (BGL_WindowAdded(&param0->unk_350)) {
        Window_Clear(&param0->unk_350, 0);
        BGL_DeleteWindow(&param0->unk_350);
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_340, 3, 1, 1, 28, 2, 13, ((512 - 18 * 3) - (28 * 2)));
    BGL_AddWindow(param0->unk_15C, &param0->unk_350, 1, 1, 1, 28, 2, 13, (((512 - (18 + 12)) - 9) - (28 * 2)));
    BGL_FillWindow(&param0->unk_350, 15);
    sub_0201A9A4(&param0->unk_350);
    Window_Show(&param0->unk_350, 0, ((512 - (18 + 12)) - 9), 11);
}

static int ov65_0222FFAC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0, v1;
    int v2 = 0;
    NARC * v3;
    UnkStruct_ov65_022354D8 * v4;
    int v5;

    if (ScreenWipe_Done() == 0) {
        return param1;
    }

    if (sub_020383E8() == 0) {
        if (!sub_020382C0()) {
            return param1;
        }
    }

    ov4_021D113C(sub_0207DFAC);

    inline_ov96_0223BDEC(&param0->unk_E2C, 0);

    v3 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, 54);

    ov65_0222E90C(param0->unk_15C, &param0->unk_BD0, v3, 54);
    ov65_02232F30(param0);
    ov65_02232DFC(param0);

    sub_02019EBC(param0->unk_15C, 3);

    if (param0->unk_14C) {
        BGL_DeleteWindow(&param0->unk_370);
        sub_02001384(param0->unk_150, NULL, NULL);
        param0->unk_150 = NULL;
        sub_02013A3C(param0->unk_14C);
        param0->unk_14C = NULL;
    }

    if (ov65_02235194(&param0->unk_3EC) == 0) {
        if (param0->unk_04->unk_00.unk_1E == 0) {
            v5 = 0x0;
        } else {
            v5 = 0x61;
        }

        param0->unk_115A = sub_0202AFB4(param0->unk_00);

        ov65_02235060(&param0->unk_3EC, 54, v3, param0->unk_15C, v5, param0->unk_115A);
        v4 = ov65_02235380(&param0->unk_3EC, v5);
        ov65_0222E87C(param0, v4);
    }

    if (ov65_02232FCC(param0) == 0) {
        ov65_02232FE0(param0, v3, 54);
    }

    ov65_022336A4(param0, 54);
    ov65_02232DFC(param0);
    ov65_0222F5BC(param0);
    ov65_0222FEEC(param0);
    ov65_02232E58(param0, 16);

    sub_02038B60();
    param0->unk_3D0 = -1;

    NARC_dtor(v3);
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 54);
    param0->unk_3A8 = 19;

    CommMan_SetErrorHandling(0, 0);
    return param1;
}

static int ov65_0223012C (UnkStruct_ov65_0222EBE0 * param0)
{
    if (sub_020380E4() == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov65_02230140 (UnkStruct_ov65_0222EBE0 * param0)
{
    if ((ov4_021D2568() != -1)) {
        ov4_021D2584(param0->unk_04->unk_00.unk_21);
        return 1;
    }

    return 0;
}

static int ov65_02230164 (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;
    int v1, v2;
    UnkStruct_ov65_022354D8 * v3;
    BOOL v4;
    UnkStruct_0207E060 * v5;
    BOOL v6;
    BOOL v7;

    v0 = ov65_0222F5BC(param0);
    v6 = 0;
    v7 = 0;

    if (memcmp(param0->unk_0C, param0->unk_2C, sizeof(u8) * 32) != 0) {
        for (v1 = 0; v1 < 32; v1++) {
            v4 = 0;

            for (v2 = 0; v2 < 32; v2++) {
                if (param0->unk_0C[v2] == param0->unk_2C[v1]) {
                    v4 = 1;
                    break;
                }
            }

            if ((v4 == 0) && (param0->unk_2C[v1] != 0)) {
                v3 = ov65_0222E8D4(param0, param0->unk_2C[v1]);

                if (v3 != NULL) {
                    ov65_02235478(&param0->unk_3EC, v3);
                    ov65_0222E8A8(param0, v3);
                    ov65_0223366C(param0, param0->unk_2C[v1]);
                    ov65_02232FB0(param0, param0->unk_2C[v1], 54);
                    v7 = 1;
                }
            }

            v4 = 0;

            for (v2 = 0; v2 < 32; v2++) {
                if (param0->unk_0C[v1] == param0->unk_2C[v2]) {
                    v4 = 1;
                    break;
                }
            }

            if ((v4 == 0) && (param0->unk_0C[v1] != 0)) {
                v5 = ov65_02234FA8(param0, param0->unk_0C[v1] - 1);
                v3 = ov65_022353EC(&param0->unk_3EC, v5->unk_1D, param0->unk_0C[v1]);

                if (v3) {
                    ov65_02233638(param0, param0->unk_0C[v1], 2);
                    ov65_0222E87C(param0, v3);
                    v6 = 1;
                } else {
                    ov65_02233638(param0, param0->unk_0C[v1], 1);
                    param0->unk_0C[v1] = 0;
                }
            }
        }

        memcpy(param0->unk_2C, param0->unk_0C, sizeof(u8) * 32);
        ov65_022336C4(param0);

        if (v6 == 1) {
            Sound_PlayEffect(1615);
        } else if (v7 == 1) {
            Sound_PlayEffect(1615);
        }
    }

    return v0;
}

static void ov65_02230298 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;
    u32 v1;
    u32 v2;
    BOOL v3;
    int v4;

    v4 = ov65_0222F62C(param0);

    if (v4 > 0) {
        ov65_022336A4(param0, param1);
    }
}

static void ov65_022302B0 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    ov65_02230164(param0);
    ov65_02230298(param0, param1);
}

static int ov65_022302C4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0 = 0;
    int v1;
    u32 v2;
    UnkStruct_ov65_022354D8 * v3;
    u32 v4;

    if (ScreenWipe_Done() == 0) {
        return param1;
    }

    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    if (sub_020380E4() == 4) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 29;
        ov65_02232E58(param0, 16);
        sub_02038378();
        return param1;
    }

    ov65_022302B0(param0, 54);
    ov65_022331E0(param0);
    ov65_022355EC(&param0->unk_3EC);

    if (ov65_0223537C(&param0->unk_3EC) == 0) {
        if (ov4_021D2568() == -1) {
            if (PAD_BUTTON_X & gCoreSys.pressedKeys) {
                if (ov65_02232F00(param0)) {
                    ov65_02232B58(param0, 90, 0);
                } else {
                    ov65_02232B58(param0, 91, 0);
                }

                Sound_PlayEffect(1501);
                ov65_0222FD70(param0);
                param0->unk_3A8 = 20;
                ov65_02232F90(param0, 54);
                return param1;
            }
        }

        v2 = ov65_022330C0(param0, 54);
        v3 = ov65_0222E8D4(param0, v2);

        if (v2 != 0) {
            if (v3) {
                ov65_0223532C(&param0->unk_3EC, v3);
            } else {
                ov65_02235370(&param0->unk_3EC);
            }
        } else {
            ov65_02235370(&param0->unk_3EC);
        }
    }

    v1 = ov65_0223012C(param0);

    if ((0 != v1) && (param0->unk_3D0 != -1)) {
        Sound_PlayEffect(1572);
        param0->unk_3A8 = 48;
        return param1;
    }

    if ((param0->unk_3D0 == -1) && (ov4_021D2568() != -1)) {
        param0->unk_3D0 = ov4_021D2568();
        ov65_02232DC0(param0, param0->unk_3D0);
        ov65_02232B58(param0, 76, 0);
        ov4_021D2584(param0->unk_04->unk_00.unk_21);
        param0->unk_3A4 = 0;
    } else if ((param0->unk_3D0 != -1) && (ov4_021D2568() == -1)) {
        ov4_021D2584(0);
        ov65_02232DC0(param0, param0->unk_3D0);
        ov65_02232B58(param0, 18, 0);
        sub_02038378();
        param0->unk_3A8 = 27;
        return param1;
    }

    if ((ov4_021D254C() == 1) && (ov4_021D2568() == -1)) {
        ov4_021D2584(0);
    }

    v4 = ov65_0222DD20(param0, &param0->unk_04->unk_00);

    if (param0->unk_3D0 == -1) {
        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            if (ov65_0222DDFC(v4)) {
                Sound_PlayEffect(1501);
                param0->unk_3A8 = 39;
                ov65_02232F90(param0, 54);
                return param1;
            }
        }

        v0 = ov65_02235198(&param0->unk_3EC);
        ov65_022355FC(&param0->unk_3EC);
    }

    switch (v0) {
    case 0:
        return param1;
    case 1:
        Sound_PlayEffect(1501);

        if (ov65_0222DDFC(v4)) {
            param0->unk_3A8 = 39;
        } else {
            param0->unk_3AC = 8;
            param0->unk_3A8 = 57;
            ov65_02232B58(param0, 25, 1);

            v0 = 0xfffffffe;
        }

        ov65_02232F90(param0, 54);
        return param1;
    case 3:
        Sound_PlayEffect(1501);

        if (ov65_0222DDFC(v4)) {
            ov65_022355B0(&param0->unk_3EC);
            param0->unk_3A8 = 39;
        } else {
            if (v4 == 16) {
                if (sub_020382C0() == 1) {
                    ov65_022355B0(&param0->unk_3EC);
                    param0->unk_3A8 = 36;
                }
            }
        }

        ov65_02232F90(param0, 54);
        return param1;
        break;
    case 2:
        Sound_PlayEffect(1501);

        if (ov65_0222DDFC(v4)) {
            param0->unk_3A8 = 39;
        } else {
            param0->unk_3A8 = 42;
        }

        ov65_02232F90(param0, 54);
        return param1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return param1;
}

static int ov65_022305EC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (0 != ov65_02230140(param0)) {
        param0->unk_3A8 = 19;
        ov65_0223503C(param0);
    } else if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_3A8 = 19;

        ov65_0223503C(param0);
        ov65_02232DFC(param0);
    }

    return param1;
}

static int ov65_02230634 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    UnkStruct_0207E060 * v0;
    int v1;
    int v2;

    v0 = ov65_02234FA8(param0, param0->unk_3E2 - 1);
    v1 = v0->unk_21;
    v2 = ov65_0222DD20(param0, v0);

    param0->unk_3A0--;

    if (param0->unk_3A0 < 0) {
        param0->unk_3A8 = 70;
    } else if (sub_020380E4() == 5) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 15, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020380E4() == 3) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 27;
    } else if ((sub_020380E4() == 4) || (sub_02038284())) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 19, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020383E8()) {
        ov65_0222F6EC(param0);
    } else if (v1 == 0) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 27;
    } else if (v2 != 16) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020380E4() == 1) {
        ov65_02232DFC(param0);
        ov65_02232E58(param0, 1);
        param0->unk_3A8 = 24;
        sub_0202B13C(param0->unk_00, param0->unk_3E2 - 1);
    }

    return param1;
}

static int ov65_02230774 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    ov65_02232DC0(param0, ov4_021D2388());
    ov65_02232B58(param0, 14, 0);
    ov65_02232E58(param0, 1);

    param0->unk_3A8 = 23;

    sub_0202B13C(param0->unk_00, ov4_021D2388());

    return param1;
}

static int ov65_022307B0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    UnkStruct_0207E060 * v0;
    int v1;
    int v2;

    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    if (ov4_021D2388() < 0) {
        ov65_02232B58(param0, 19, 0);
        param0->unk_3A8 = 27;
        return param1;
    }

    v0 = ov65_02234FA8(param0, ov4_021D2388());
    v2 = ov65_0222DD20(param0, v0);

    if ((v2 != 16) && (v2 != 1)) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 27;
        return param1;
    }

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
            ov65_02232DFC(param0);
            param0->unk_3A8 = 24;
        } else {
            ov65_02230860(param0, param1);
        }
    }

    return param1;
}

static int ov65_02230860 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    UnkStruct_0207E060 * v0;
    int v1;

    if (ov4_021D2388() < 0) {
        ov65_02232B58(param0, 19, 0);
        param0->unk_3A8 = 27;
        return param1;
    }

    v0 = ov65_02234FA8(param0, ov4_021D2388());
    v1 = ov65_0222DD20(param0, v0);

    ov65_022302B0(param0, 54);
    ov65_022331E0(param0);

    if (sub_020380E4() == 5) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 15, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020380E4() == 3) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 27;
    } else if ((sub_020380E4() == 4) || (sub_02038284())) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 19, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020383E8()) {
        ov65_0222F6EC(param0);
    } else if ((v1 != 16) && (v1 != 1)) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 27;
    } else if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232B58(param0, 20, 0);
        param0->unk_3A8 = 25;
    } else {
        if (ov4_021D2544()) {
            ov65_0222E9C0(param0->unk_15C, &param0->unk_BD0, 1, 2, 1, 2, 0);
        } else {
            ov65_0222E9C0(param0->unk_15C, &param0->unk_BD0, 1, 2, 1, 3, 0);
        }
    }

    return param1;
}

static int ov65_022309D0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        sub_0202B13C(param0->unk_00, ov4_021D2388());

        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_0223894C, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 26;
    }

    return param1;
}

static int ov65_02230A30 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        if ((sub_020380E4() >= 4) || sub_02038284() || !CommSys_IsPlayerConnected(0)) {
            ov65_02232DFC(param0);

            ov65_02232E58(param0, 16);
            sub_02002154(param0->unk_184, 54);
            param0->unk_3D0 = -1;
            param0->unk_3BC = 20;
            param0->unk_3A8 = 65;
        } else if (sub_020383E8()) {
            ov65_0222F6EC(param0);
        }

        return param1;
    } else if (v1 == 0) {
        if (!sub_020383E8()) {
            ov65_02232E58(param0, 16);
            sub_020383D4();
            param0->unk_3D0 = -1;
            param0->unk_3BC = 20;
            param0->unk_3A8 = 65;
        } else {
            ov65_0222F6EC(param0);
        }
    } else {
        param0->unk_3A8 = 24;
    }

    ov65_02232DFC(param0);
    return param1;
}

static int ov65_02230AF8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0;

    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    v0 = ov65_0222DD20(param0, &param0->unk_04->unk_00);

    if (v0 != 16) {
        ov65_02232E58(param0, 16);
    }

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        param0->unk_3BC = 30;
        return param1;
    }

    param0->unk_3BC--;

    if ((gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) || (param0->unk_3BC == 0)) {
        ov65_02232DFC(param0);
        sub_02038378();
        sub_02038B60();

        if (ov65_02235194(&param0->unk_3EC) == 0) {
            param0->unk_3BC = 20;
            param0->unk_3A8 = 65;
        } else {
            ov65_02232F30(param0);
            ov65_0222FD70(param0);

            param0->unk_3D0 = -1;
            param0->unk_3A8 = 19;

            ov65_0223503C(param0);
        }
    }

    return param1;
}

static int ov65_02230BB4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232DFC(param0);
        ov65_02232E58(param0, 16);
        sub_02038378();
        param0->unk_3BC = 20;
        param0->unk_3A8 = 65;
    }

    return param1;
}

static int ov65_02230C04 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        param0->unk_3BC = 30;
        return param1;
    }

    param0->unk_3BC--;

    if ((gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) || (param0->unk_3BC == 0)) {
        ov65_02232DFC(param0);
        ov65_02232E58(param0, 16);

        sub_02038B60();

        if (ov65_02235194(&param0->unk_3EC) == 0) {
            param0->unk_3A8 = ov65_0222EBB8();
        } else {
            ov65_02232F30(param0);
            ov65_0222FD70(param0);

            param0->unk_3D0 = -1;
            param0->unk_3A8 = 19;

            ov65_0223503C(param0);
        }
    }

    return param1;
}

static int ov65_02230CAC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02230CB0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02230CB4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02230CB8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (param0->unk_3BC > 0) {
        param0->unk_3BC--;
        return param1;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232B58(param0, 26, 1);
        param0->unk_3A8 = 59;
        param0->unk_3BC = 1;
    }

    return param1;
}

static int ov65_02230CF8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    ov65_022355FC(&param0->unk_3EC);
    ov65_02232B58(param0, 10, 0);

    param0->unk_3A8 = 40;

    return param1;
}

static int ov65_02230D20 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    ov65_022355FC(&param0->unk_3EC);

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_0223894C, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 41;
    }

    return param1;
}

static int ov65_02230D6C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    ov65_022355FC(&param0->unk_3EC);

    if ((param0->unk_3D0 == -1) && (ov4_021D2568() != -1)) {
        ov4_021D2584(param0->unk_04->unk_00.unk_21);

        if (v1 == 0xffffffff) {
            sub_02002154(param0->unk_184, 54);
        }

        v1 = 1;
    }

    if (v1 == 0xffffffff) {
        return param1;
    } else if (v1 == 0) {
        ov65_02232E58(param0, 16);
        sub_02038B60();
        ov65_0223503C(param0);
    } else {
        ov65_0223503C(param0);
        ov65_0223500C(param0, 1);
    }

    param0->unk_3A8 = 19;

    return param1;
}

UnkStruct_ov65_02239CDC Unk_ov65_02239CDC[10] = {
    {0x5D, (u32)0},
    {0x5E, (u32)1},
    {0x1C, (u32)15}
};

static UnkStruct_ov65_02239CDC Unk_ov65_02239C38 = {
    0x22,
    (u32)29
};

static UnkStruct_ov65_02239CDC Unk_ov65_02239C30 = {
    0x20,
    (u32)21
};

static UnkStruct_ov65_02239CDC Unk_ov65_02239C28 = {
    0x1E,
    (u32)19
};

static UnkStruct_ov65_02239CDC Unk_ov65_02239C20 = {
    0x29,
    (u32)0xfffffffe
};

UnkStruct_ov65_02239CDC Unk_ov65_02239C5C[] = {
    {0x47, (u32)23},
    {0x47, (u32)25},
    {0x47, (u32)27},
    {0x29, (u32)0xfffffffe}
};

UnkStruct_ov65_02239CDC Unk_ov65_02239C7C[] = {
    {0x5F, (u32)11},
    {0x60, (u32)9},
    {0x61, (u32)10},
    {0x29, (u32)0xfffffffe}
};

UnkStruct_ov65_02239CDC Unk_ov65_02239C9C[] = {
    {0x62, (u32)14},
    {0x63, (u32)12},
    {0x64, (u32)13},
    {0x29, (u32)0xfffffffe}
};

static UnkStruct_ov84_02240FA8 Unk_ov65_02239CBC = {
    NULL,
    ov65_0222FED8,
    NULL,
    NULL,
    0x3,
    0x3,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static const UnkStruct_ov84_02240FA8 Unk_ov65_02238AD0 = {
    NULL,
    ov65_0222FED8,
    NULL,
    NULL,
    NELEMS(Unk_ov65_02239C7C),
    NELEMS(Unk_ov65_02239C7C),
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static const UnkStruct_ov84_02240FA8 Unk_ov65_02238AF0 = {
    NULL,
    ov65_0222FED8,
    NULL,
    NULL,
    NELEMS(Unk_ov65_02239C5C),
    NELEMS(Unk_ov65_02239C5C),
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static int ov65_02230E04 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0, v1;
    UnkStruct_ov84_02240FA8 v2;
    UnkStruct_ov65_02239CDC * v3;

    v1 = 3;
    v2 = Unk_ov65_02239CBC;
    v3 = Unk_ov65_02239CDC;

    if (ov65_0222DCF8(param0) == 1) {
        v1++;
        v2.unk_10++;
        v2.unk_12++;
        v3[v1 - 1] = Unk_ov65_02239C28;
    }

    if (ov65_0222DCE0(param0) == 1) {
        v1++;
        v2.unk_10++;
        v2.unk_12++;

        v3[v1 - 1] = Unk_ov65_02239C30;
    }

    if (ov65_0222DD1C(param0) == 1) {
        v1++;
        v2.unk_10++;
        v2.unk_12++;
        v3[v1 - 1] = Unk_ov65_02239C38;
    }

    {
        v1++;
        v2.unk_10++;
        v2.unk_12++;
        v3[v1 - 1] = Unk_ov65_02239C20;
    }

    param0->unk_154 = sub_02013A04(v1, 54);

    for (v0 = 0; v0 < v1; v0++) {
        sub_02013A4C(param0->unk_154, param0->unk_168, v3[v0].unk_00, v3[v0].unk_04);
    }

    if (BGL_WindowAdded(&param0->unk_380)) {
        Window_Clear(&param0->unk_380, 0);
        BGL_DeleteWindow(&param0->unk_380);
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_380, 2, 16, 3, 15, v1 * 2, 13, ((((((512 - (18 + 12)) - 9) - 10) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)) - v1 * 2);
    Window_Show(&param0->unk_380, 1, ((512 - (18 + 12)) - 9), 11);

    v2.unk_00 = param0->unk_154;
    v2.unk_0C = &param0->unk_380;

    param0->unk_158 = sub_0200112C(&v2, 0, param0->unk_3D4, 54);

    sub_0201A9A4(&param0->unk_380);
    ov65_02232B58(param0, 8, 0);
    ov65_022355FC(&param0->unk_3EC);

    param0->unk_3A8 = 37;
    return param1;
}

static int ov65_02230FBC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0;
    int v1 = ov65_0222DF88(param0);
    int v2 = ov65_022319B8(param0);

    ov65_022355FC(&param0->unk_3EC);

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        if (0 != ov65_02230140(param0)) {
            param0->unk_3A8 = 19;
            Window_Clear(&param0->unk_380, 0);
            BGL_DeleteWindow(&param0->unk_380);
            sub_02001384(param0->unk_158, NULL, &param0->unk_3D4);
            sub_02013A3C(param0->unk_154);
            ov65_02232DFC(param0);
        }

        return param1;
    }

    v0 = sub_02001288(param0->unk_158);

    if (0 != ov65_02230140(param0)) {
        v0 = 0xfffffffe;
    }

    switch (v0) {
    case 0xffffffff:
        return param1;
    case 0xfffffffe:
        param0->unk_3A8 = 19;
        ov65_02232DFC(param0);
        Sound_PlayEffect(1501);
        break;
    default:
        Sound_PlayEffect(1501);

        if ((v0 == 19) && (v2 != 0)) {
            if (v2 == 1) {
                ov65_02232B58(param0, 104, 0);
            } else if (v2 == 3) {
                ov65_02232B58(param0, 106, 0);
            } else {
                ov65_02232B58(param0, 105, 0);
            }

            param0->unk_3A8 = 29;
        } else if ((v0 == 15) && (2 > v1)) {
            ov65_02232B58(param0, 89, 0);
            param0->unk_3A8 = 29;
        } else if ((v0 == 1) && (2 > v1)) {
            ov65_02232B58(param0, 103, 0);
            param0->unk_3A8 = 29;
        } else if ((v0 == 0) || (v0 == 1) || (v0 == 29)) {
            Window_Clear(&param0->unk_380, 0);
            BGL_DeleteWindow(&param0->unk_380);
            sub_02001384(param0->unk_158, NULL, &param0->unk_3D4);
            sub_02013A3C(param0->unk_154);
            ov65_0223128C(param0, v0);
            param0->unk_3A8 = 38;
            return param1;
        } else {
            ov65_02232E58(param0, v0);
            param0->unk_3A8 = 19;
            ov65_02232DFC(param0);
        }

        {
            BOOL v3 = 1;

            if (ov65_0222DD64(v0) && (param0->unk_3A8 == 19)) {
                param0->unk_3A8 = 68;
                ov65_02234FCC(param0, -1, v0);
                ov65_0222DFD4(v0);
                ov65_02232E58(param0, v0);
                param0->unk_3AC = ov65_0222DD94(v0);
                v3 = 0;
            } else {
                ov65_02234FCC(param0, -1, v0);
                ov65_0222DFD4(v0);
            }

            if (param0->unk_3A8 == 19) {
                ov65_0223500C(param0, v3);
            }
        }
        break;
    }

    Window_Clear(&param0->unk_380, 0);
    BGL_DeleteWindow(&param0->unk_380);
    sub_02001384(param0->unk_158, NULL, &param0->unk_3D4);
    sub_02013A3C(param0->unk_154);

    return param1;
}

static int ov65_02231200 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0;

    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    ov65_022355FC(&param0->unk_3EC);

    if (0 != ov65_02230140(param0)) {
        param0->unk_3A8 = 19;
    }

    if (sub_020382C0()) {
        CommMan_SetErrorHandling(0, 1);

        sub_0203632C(0);
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 54);

        param0->unk_3E4 = 0;

        CommInfo_Init(param0->unk_160, NULL);

        CommInfo_SendBattleRegulation();

        sub_02032E1C(CommSys_CurNetId());
        param1 = 2;
    }

    return param1;
}

static int ov65_0223128C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0, v1;
    UnkStruct_ov84_02240FA8 v2;
    UnkStruct_ov65_02239CDC * v3;

    switch (param1) {
    case 0:
        v3 = Unk_ov65_02239C7C;
        v1 = NELEMS(Unk_ov65_02239C7C);
        param0->unk_3DC = 1;
        v2 = Unk_ov65_02238AD0;
        break;
    case 1:
        v3 = Unk_ov65_02239C9C;
        v1 = NELEMS(Unk_ov65_02239C9C);
        param0->unk_3DC = 0;
        v2 = Unk_ov65_02238AD0;
        break;
    case 29:
        v3 = Unk_ov65_02239C5C;
        v1 = NELEMS(Unk_ov65_02239C5C);
        v2 = Unk_ov65_02238AF0;
        param0->unk_3DC = 2;
        break;
    }

    param0->unk_154 = sub_02013A04(v1, 54);

    for (v0 = 0; v0 < v1; v0++) {
        if (v3[v0].unk_00 != 71) {
            sub_02013A4C(param0->unk_154, param0->unk_168, v3[v0].unk_00, v3[v0].unk_04);
        } else {
            StringTemplate_SetPlazaMinigameName(param0->unk_164, 0, v0);
            MessageLoader_GetStrbuf(param0->unk_168, v3[v0].unk_00, param0->unk_170);
            StringTemplate_Format(param0->unk_164, param0->unk_178, param0->unk_170);
            sub_02013A6C(param0->unk_154, param0->unk_178, v3[v0].unk_04);
        }
    }

    if (BGL_WindowAdded(&param0->unk_380)) {
        Window_Clear(&param0->unk_380, 0);
        BGL_DeleteWindow(&param0->unk_380);
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_380, 2, 16, 9, 15, v1 * 2, 13, ((((((512 - (18 + 12)) - 9) - 10) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)) - v1 * 2);
    Window_Show(&param0->unk_380, 1, ((512 - (18 + 12)) - 9), 11);

    v2.unk_00 = param0->unk_154;
    v2.unk_0C = &param0->unk_380;

    param0->unk_158 = sub_0200112C(&v2, 0, param0->unk_3D6[param0->unk_3DC], 54);

    sub_0201A9A4(&param0->unk_380);

    return 1;
}

static int ov65_02231440 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0;

    ov65_022355FC(&param0->unk_3EC);

    if (0 != ov65_02230140(param0)) {
        param0->unk_3A8 = 19;
        Window_Clear(&param0->unk_380, 0);
        BGL_DeleteWindow(&param0->unk_380);
        sub_02001384(param0->unk_158, NULL, &param0->unk_3D6[param0->unk_3DC]);
        sub_02013A3C(param0->unk_154);
        ov65_02232DFC(param0);
        return param1;
    }

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    v0 = sub_02001288(param0->unk_158);

    switch (v0) {
    case 0xffffffff:
        return param1;
    case 0xfffffffe:
        Sound_PlayEffect(1501);
        param0->unk_3A8 = 36;
        break;
    default:
        Sound_PlayEffect(1501);
        ov65_02232E58(param0, v0);
        param0->unk_3A8 = 19;
        ov65_02232DFC(param0);
        break;
    }

    if (param0->unk_3A8 == 19) {
        BOOL v1 = 1;

        if (ov65_0222DD64(v0)) {
            param0->unk_3A8 = 68;
            ov65_02234FCC(param0, -1, v0);
            ov65_0222DFD4(v0);
            ov65_02232E58(param0, v0);
            param0->unk_3AC = ov65_0222DD94(v0);
            v1 = 0;
        } else {
            ov65_02234FCC(param0, -1, v0);
            sub_02038B84();
        }

        ov65_0223500C(param0, v1);
    }

    Window_Clear(&param0->unk_380, 0);
    BGL_DeleteWindow(&param0->unk_380);
    sub_02001384(param0->unk_158, NULL, &param0->unk_3D6[param0->unk_3DC]);
    sub_02013A3C(param0->unk_154);

    return param1;
}

static const struct {
    u32 unk_00;
    u32 unk_04;
} Unk_ov65_02238968[] = {
    {0x27, (u32)1},
    {0x29, (u32)0xfffffffe}
};

static const UnkStruct_ov84_02240FA8 Unk_ov65_02238A90 = {
    NULL,
    ov65_0222FED8,
    NULL,
    NULL,
    NELEMS(Unk_ov65_02238968),
    NELEMS(Unk_ov65_02238968),
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static int ov65_022315A4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    u16 v1, v2;
    UnkStruct_0207E060 * v3;
    UnkStruct_ov65_022354D8 * v4;
    UnkStruct_ov65_022354D8 * v5;
    u32 v6;

    v1 = ov65_02235254(&param0->unk_3EC);
    v4 = ov65_0222E8D4(param0, 0);

    GF_ASSERT(v4);

    v5 = ov65_0222E8D4(param0, v1);

    if (v5 == NULL) {
        ov65_02232DC0(param0, v1 - 1);
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 29;
        return param1;
    }

    v6 = ov65_022354E8(v4);

    ov65_022354F8(&param0->unk_3EC, v5, v6);

    v3 = ov65_02234FA8(param0, v1 - 1);
    v2 = ov65_0222DD20(param0, v3);

    param0->unk_3DE = v2;

    ov65_02232DC0(param0, v1 - 1);

    if (v2 == 15) {
        v0 = 3;
    } else if (v2 == 19) {
        v0 = 4;
    } else if (v2 == 18) {
        v0 = 83;
    } else if (v2 == 21) {
        v0 = 5;
    } else if (v2 == 20) {
        v0 = 84;
    } else if (v2 == 23) {
        StringTemplate_SetPlazaMinigameName(param0->unk_164, 1, UnkEnum_ov66_022324D0_00);
        v0 = 6;
    } else if (v2 == 22) {
        v0 = 85;
    } else if (v2 == 25) {
        StringTemplate_SetPlazaMinigameName(param0->unk_164, 1, UnkEnum_ov66_022324D0_01);
        v0 = 6;
    } else if (v2 == 24) {
        v0 = 85;
    } else if (v2 == 27) {
        StringTemplate_SetPlazaMinigameName(param0->unk_164, 1, UnkEnum_ov66_022324D0_02);
        v0 = 6;
    } else if (v2 == 26) {
        v0 = 85;
    } else if (ov65_0222DDD4(v2)) {
        v0 = 2;
    } else if (v2 == 8) {
        v0 = 82;
    } else if (ov65_0222DE40(v2)) {
        v0 = 81;
    } else if (v2 == 1) {
        v0 = 86;
    } else {
        v0 = 7;
    }

    ov65_02232B58(param0, v0, 0);
    param0->unk_3A8 = 43;

    return param1;
}

static int ov65_022316F0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    UnkStruct_ov65_022354D8 * v0;
    u32 v1;
    int v2, v3;
    UnkStruct_0207E060 * v4;

    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    v2 = ov65_02235254(&param0->unk_3EC);
    v0 = ov65_0222E8D4(param0, v2);
    v1 = ov65_02230140(param0);

    if (0 != v1) {
        ov65_0223556C(&param0->unk_3EC, v0);
        ov65_02232DFC(param0);
        param0->unk_3A8 = 19;
        return param1;
    }

    if (v0 == NULL) {
        ov65_0223556C(&param0->unk_3EC, v0);
        sub_02001384(param0->unk_158, NULL, NULL);
        ov65_02232DC0(param0, v2 - 1);
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 29;
        return param1;
    } else {
        v4 = ov65_02234FA8(param0, v2 - 1);
        v3 = ov65_0222DD20(param0, v4);

        if ((param0->unk_3DE != v3)) {
            ov65_0223556C(&param0->unk_3EC, v0);
            ov65_02232DC0(param0, v2 - 1);
            ov65_02232B58(param0, 16, 0);
            param0->unk_3A8 = 29;
            return param1;
        }
    }

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    {
        int v5, v6;
        UnkStruct_ov84_02240FA8 v7;
        u16 v8, v9, v10;
        UnkStruct_0207E060 * v11;

        v6 = NELEMS(Unk_ov65_02238968);
        v7 = Unk_ov65_02238A90;
        v8 = ov65_02235254(&param0->unk_3EC);
        v11 = ov65_02234FA8(param0, v8 - 1);
        v9 = ov65_0222DD20(param0, v11);
        v10 = v11->unk_21;

        param0->unk_3E0 = v10;

        v10 += param0->unk_04->unk_00.unk_21;
        param0->unk_154 = sub_02013A04(v6, 54);
        v5 = 0;

        for (v5 = 0; v5 < NELEMS(Unk_ov65_02238968); v5++) {
            if (v5 == 0) {
                if (ov65_0222DE68(v9) || (v9 == 0) || (v9 == 28) || (v9 >= 29)) {
                    v7.unk_12 -= 1;
                    v7.unk_10 -= 1;
                    v6 -= 1;
                } else if (v9 == 16) {
                    if (v10 == 2) {
                        sub_02013A4C(param0->unk_154, param0->unk_168, 36, Unk_ov65_02238968[v5].unk_04);
                    } else {
                        v7.unk_12 -= 1;
                        v7.unk_10 -= 1;
                        v6 -= 1;
                    }
                } else {
                    sub_02013A4C(param0->unk_154, param0->unk_168, Unk_ov65_02238968[v5].unk_00, Unk_ov65_02238968[v5].unk_04);
                }
            } else {
                sub_02013A4C(param0->unk_154, param0->unk_168, Unk_ov65_02238968[v5].unk_00, Unk_ov65_02238968[v5].unk_04);
            }
        }

        BGL_AddWindow(param0->unk_15C, &param0->unk_380, 2, 16, 11 + ((3 - v6) * 2), 15, v6 * 2, 13, ((((((512 - (18 + 12)) - 9) - 10) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)));
        Window_Show(&param0->unk_380, 1, ((512 - (18 + 12)) - 9), 11);

        v7.unk_00 = param0->unk_154;
        v7.unk_0C = &param0->unk_380;

        param0->unk_158 = sub_0200112C(&v7, 0, 0, 54);

        sub_0201A9A4(&param0->unk_380);
    }

    param0->unk_3A8 = 44;
    return param1;
}

static BOOL ov65_02231978 (UnkStruct_0207E060 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (495 == param0->unk_00[v0]) {
            return 0;
        }

        if (495 < param0->unk_00[v0]) {
            return 0;
        }

        if (467 < param0->unk_0C[v0]) {
            return 0;
        }
    }

    return 1;
}

static u32 ov65_022319B8 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (!Bag_HasItemsInPocket(SaveData_GetBag(param0->unk_160), 4)) {
        return 1;
    }

    if (!Bag_GetItemQuantity(SaveData_GetBag(param0->unk_160), 449, 54)) {
        return 3;
    }

    if (sub_0202AC98(Poffin_GetSavedataBlock(param0->unk_160)) >= 100) {
        return 2;
    }

    return 0;
}

static void ov65_02231A0C (void)
{
    u32 v0;

    ov4_021D2584(0);

    if (ov65_02231A54() == 0) {
        if (IsNight() == 0) {
            v0 = 1085;
        } else {
            v0 = 1086;
        }

        sub_02004234(0);
        sub_02004550(11, v0, 1);
    } else {
        sub_02004AD4(sub_020041FC(), 120);
    }
}

static BOOL ov65_02231A54 (void)
{
    u32 v0;

    v0 = sub_020041FC();

    if ((v0 != 1085) && (v0 != 1086)) {
        return 0;
    }

    return 1;
}

static void ov65_02231A74 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    void * v0;
    Journal * v1;

    v1 = SaveData_GetJournal(param0->unk_160);
    v0 = sub_0202C244(54, 29);

    Journal_SaveData(v1, v0, 4);
}

static int ov65_02231A98 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u32 v0;
    int v1, v2, v3 = 0, v4;
    u16 v5;
    int v6;
    UnkStruct_ov65_022354D8 * v7;
    UnkStruct_0207E060 * v8;

    v0 = sub_02001288(param0->unk_158);
    v6 = ov65_02230140(param0);

    if (0 != v6) {
        v0 = 0xfffffffe;
    }

    v2 = ov65_02235254(&param0->unk_3EC);
    v7 = ov65_0222E8D4(param0, v2);

    if (sub_020383E8()) {
        Window_Clear(&param0->unk_380, 0);
        BGL_DeleteWindow(&param0->unk_380);
        sub_02001384(param0->unk_158, NULL, NULL);
        sub_02013A3C(param0->unk_154);

        if (v7 != NULL) {
            ov65_0223556C(&param0->unk_3EC, v7);
        }

        ov65_0222F6EC(param0);
        return param1;
    }

    switch (v0) {
    case 0xffffffff:
        if (v7 == NULL) {
            sub_02001384(param0->unk_158, NULL, NULL);
            ov65_02232DC0(param0, v2 - 1);
            ov65_02232B58(param0, 16, 0);
            param0->unk_3A8 = 29;
            v3 = 1;
            break;
        } else {
            v8 = ov65_02234FA8(param0, v2 - 1);
            v1 = ov65_0222DD20(param0, v8);
            v4 = v8->unk_21;

            if ((param0->unk_3DE != v1) || ((ov65_0222DD64(v1) == 0) && (param0->unk_3E0 != v4))) {
                ov65_02232DC0(param0, v2 - 1);
                ov65_02232B58(param0, 16, 0);
                param0->unk_3A8 = 29;
                v3 = 1;
                break;
            }
        }

        return param1;

    case 0xfffffffe:
        Sound_PlayEffect(1501);
        param0->unk_3A8 = 19;
        break;
    default:
        Sound_PlayEffect(1501);

        if (v0 == 1) {
            param0->unk_3A8 = 19;
            param0->unk_3E2 = v2;

            if (v2 != 0) {
                int v9 = ov65_0222DF88(param0);
                int v10 = ov65_022319B8(param0);

                v8 = ov65_02234FA8(param0, v2 - 1);
                v1 = ov65_0222DD20(param0, v8);
                v4 = v8->unk_21;

                if ((param0->unk_3DE != v1) || ((ov65_0222DD64(v1) == 0) && (param0->unk_3E0 != v4))) {
                    ov65_02232DC0(param0, v2 - 1);
                    ov65_02232B58(param0, 16, 0);
                    param0->unk_3A8 = 29;
                    v3 = 1;
                    break;
                }

                if (!ov65_02231978(v8)) {
                    ov65_02232DC0(param0, v2 - 1);
                    ov65_02232B58(param0, 16, 0);
                    param0->unk_3A8 = 29;
                    v3 = 1;
                    break;
                }

                if (ov65_0222DEB0(v1) && (2 > v9)) {
                    if (15 == v1) {
                        ov65_02232B58(param0, 89, 0);
                    } else {
                        ov65_02232B58(param0, 103, 0);
                    }

                    param0->unk_3A8 = 29;
                    v3 = 1;
                    break;
                }

                if ((v1 == 19) && (v10 != 0)) {
                    if (v10 == 1) {
                        ov65_02232B58(param0, 104, 0);
                    } else if (v10 == 3) {
                        ov65_02232B58(param0, 106, 0);
                    } else {
                        ov65_02232B58(param0, 105, 0);
                    }

                    param0->unk_3A8 = 29;
                    v3 = 1;
                    break;
                }

                if (ov65_0222DD64(v1) == 0) {
                    if (v4 != param0->unk_04->unk_00.unk_21) {
                        if (v4) {
                            ov65_02232B58(param0, 134, 0);
                        } else {
                            ov65_02232B58(param0, 135, 0);
                        }

                        ov65_02232E58(param0, ov65_0222DED4(v1));

                        param0->unk_3A8 = 63;
                        v3 = 1;
                        break;
                    }
                }

                v1 = ov65_0222DED4(v1);

                if (29 == v1) {
                    break;
                }

                if (ov65_02234FC4(v2 - 1) == DWC_STATUS_MATCH_SC_SV) {
                    if (ov65_02234FCC(param0, v2 - 1, v1)) {
                        param0->unk_3A0 = (60 * 30);
                        ov65_0222DFD4(v1);
                        ov65_02232E58(param0, v1);
                        ov65_02232DC0(param0, v2 - 1);
                        ov65_02232B58(param0, 17, 0);
                        GF_ASSERT(param0->unk_188 == NULL);
                        param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));

                        if (v1 != 1) {
                            param0->unk_3A8 = 45;
                        } else {
                            param0->unk_3A0 = (60 * 30);
                            param0->unk_3A8 = 21;
                        }

                        v3 = 1;
                    } else {
                        ov65_02232DC0(param0, v2 - 1);
                        ov65_02232B58(param0, 16, 0);
                        param0->unk_3A8 = 29;
                        v3 = 1;
                    }
                } else {
                    ov65_02232DC0(param0, v2 - 1);
                    ov65_02232B58(param0, 16, 0);
                    param0->unk_3A8 = 29;
                    v3 = 1;
                    break;
                }
            }
        } else if (v0 == 2) {
            param0->unk_3A8 = 54;
        }

        break;
    }

    if (v3 == 0) {
        ov65_02232DFC(param0);
    }

    Window_Clear(&param0->unk_380, 0);
    BGL_DeleteWindow(&param0->unk_380);
    sub_02001384(param0->unk_158, NULL, NULL);
    sub_02013A3C(param0->unk_154);

    if (v7 != NULL) {
        ov65_0223556C(&param0->unk_3EC, v7);
    }

    if (param0->unk_3A8 == 19) {
        (void)0;
    } else {
        (void)0;
    }

    return param1;
}

static int ov65_02231E64 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;

    param0->unk_3A0--;

    if (param0->unk_3A0 < 0) {
        param0->unk_3A8 = 70;
    } else if (sub_020380E4() == 3) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020380E4() == 5) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 15, 0);
        param0->unk_3A8 = 27;
    } else if ((sub_020380E4() == 4) || (sub_02038284())) {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020383E8()) {
        ov65_0222F6EC(param0);
    } else if (sub_020380E4() == 1) {
        v0 = ov65_0222DD20(param0, &param0->unk_04->unk_00);

        if (ov65_0222DD64(v0) == 0) {
            param0->unk_3A8 = 49;
            ov65_02232DFC(param0);
            CommInfo_Init(param0->unk_160, NULL);
            param0->unk_3BC = 30;
        } else if (CommSys_IsPlayerConnected(0) == 1) {
            ov65_02232DFC(param0);
            CommInfo_Init(param0->unk_160, NULL);
            CommMan_SetErrorHandling(0, 1);
            ov65_0222DFD4(v0);

            param0->unk_3AC = ov65_0222DD94(v0);

            sub_0203632C(0);
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 54);

            param0->unk_3E4 = 0;
            param1 = 2;
        } else {
            if (CommSys_WifiConnected() == 1) {
                ov65_02232DC0(param0, ov4_021D2388());
                ov65_02232B58(param0, 18, 0);
                param0->unk_3A8 = 27;
            }
        }
    }

    return param1;
}

static int ov65_02231FE0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02231FE4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02231FE8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    ov65_02232F30(param0);
    ov65_02232E58(param0, 16);

    sub_02038378();

    param0->unk_3D0 = -1;
    param0->unk_3A8 = 19;

    ov65_0223503C(param0);
    ov65_02232DFC(param0);

    return param1;
}

static int ov65_02232020 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02232024 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    return param1;
}

static int ov65_02232028 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1;
    UnkStruct_0207E060 * v2;
    int v3;

    v2 = ov65_02234FA8(param0, ov4_021D2388());
    v0 = ov65_0222DD20(param0, &param0->unk_04->unk_00);
    v1 = ov65_0222DD20(param0, v2);
    v3 = param0->unk_04->unk_00.unk_21;

    if ((v0 == 12) && (v1 == 5)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 13) && (v1 == 6)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 14) && (v1 == 7)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 9) && (v1 == 2)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 10) && (v1 == 3)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 11) && (v1 == 4)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 15) && (v1 == 8)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 19) && (v1 == 18)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 21) && (v1 == 20)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 23) && (v1 == 22)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 25) && (v1 == 24)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 27) && (v1 == 26)) {
        param0->unk_3A8 = 49;
    } else if ((v0 == 16) && (v1 == 1) && (v3 > 0)) {
        param0->unk_3A8 = 22;
        return param1;
    } else {
        ov65_02232DC0(param0, ov4_021D2388());
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 29;
        ov65_02232E58(param0, 16);
        sub_02038378();
        return param1;
    }

    ov65_02232DC0(param0, ov4_021D2388());
    ov65_02232B58(param0, 11, 0);

    CommInfo_Init(param0->unk_160, NULL);

    param0->unk_3A8 = 49;
    param0->unk_3BC = 30;

    return param1;
}

static BOOL ov65_022321A8 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (sub_020380E4() >= 3) {
        ov65_02232DC0(param0, param0->unk_3D0);
        ov65_02232B58(param0, 18, 0);
        param0->unk_3A8 = 27;
    } else if (sub_020383E8()) {
        ov65_0222F6EC(param0);
    } else {
        return 0;
    }

    param0->unk_3E4 = 0;
    return 1;
}

static int ov65_022321F4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if ((sub_020380E4() >= 4) || sub_02038284() || !CommSys_IsPlayerConnected(0)) {
        if (param0->unk_3E4) {
            ov65_02232B58(param0, 101, 0);
        } else {
            ov65_02232DC0(param0, param0->unk_3D0);
            ov65_02232B58(param0, 18, 0);
        }

        param0->unk_3E4 = 0;
        param0->unk_3A8 = 27;
    } else if (ov65_022321A8(param0)) {
        (void)0;
    } else {
        if (param0->unk_3BC == 0) {
            if (CommTiming_IsSyncState(13)) {
                sub_020365F4();
                CommTiming_StartSync(14);

                param0->unk_3E4 = 0;
                param0->unk_3A8 = 50;
            }
        } else {
            param0->unk_3BC--;

            if (param0->unk_3BC == 0) {
                CommTiming_StartSync(13);
            }
        }
    }

    return param1;
}

static int ov65_0223229C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (ov65_022321A8(param0)) {
        (void)0;
    } else if (CommTiming_IsSyncState(14)) {
        u16 v0 = ov65_0222DD20(param0, &param0->unk_04->unk_00);
        BOOL v1;

        v1 = sub_02036614(CommSys_CurNetId(), &v0);

        if (v1) {
            param0->unk_3A8 = 51;
        }
    }

    return param1;
}

static int ov65_022322DC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    const u16 * v0;
    int v1 = 0;

    if (CommSys_CurNetId() == 0) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    v0 = sub_0203664C(v1);

    if (ov65_022321A8(param0)) {
        (void)0;
    } else if (v0 != NULL) {
        u16 v2 = ov65_0222DD20(param0, &param0->unk_04->unk_00);
        u16 v3 = ov65_0222DED4(v2);

        if ((v0[0] == v3) || (v0[0] == v2)) {
            CommTiming_StartSync(15);
            param0->unk_3A8 = 52;
        } else {
            ov65_02232DC0(param0, ov4_021D2388());
            ov65_02232B58(param0, 16, 0);
            param0->unk_3A8 = 27;
        }
    }

    return param1;
}

static int ov65_02232358 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;

    if (ov65_022321A8(param0)) {
        (void)0;
    } else if (CommTiming_IsSyncState(15)) {
        CommInfo_SendBattleRegulation();
        CommMan_SetErrorHandling(1, 1);
        CommTiming_StartSync(18);

        param0->unk_3A8 = 53;
    }

    return param1;
}

static BOOL ov65_02232390 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        return 1;
    }

    if (BGL_WindowAdded(&param0->unk_330) == 0) {
        return 1;
    }

    return 0;
}

static int ov65_022323C0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1[8];
    UnkStruct_0207E060 * v2;

    if (ov65_022321A8(param0)) {
        (void)0;
    } else if (CommTiming_IsSyncState(18) && (ov65_02232390(param0) == 1)) {
        sub_020391DC(param0->unk_160, v1, 54);
        ov65_02232DFC(param0);

        v2 = ov65_02234FA8(param0, ov4_021D2388());
        v0 = ov65_0222DD20(param0, v2);

        if ((v0 == 15) || (v0 == 8)) {
            v0 = 8;
            param0->unk_3AC = 7;
        } else if ((v0 == 19) || (v0 == 18)) {
            v0 = 18;
            param0->unk_3AC = 11;
        } else if ((v0 == 21) || (v0 == 20)) {
            v0 = 20;
            param0->unk_3AC = 12;
        } else if ((v0 == 23) || (v0 == 22)) {
            v0 = 22;
            param0->unk_3AC = 13;
        } else if ((v0 == 25) || (v0 == 24)) {
            v0 = 24;
            param0->unk_3AC = 14;
        } else if ((v0 == 27) || (v0 == 26)) {
            v0 = 26;
            param0->unk_3AC = 15;
        } else if ((v0 == 9) || (v0 == 2)) {
            v0 = 2;
            param0->unk_3AC = 1;
        } else if ((v0 == 10) || (v0 == 3)) {
            v0 = 3;
            param0->unk_3AC = 2;
        } else if ((v0 == 11) || (v0 == 4)) {
            v0 = 4;
            param0->unk_3AC = 3;
        } else if ((v0 == 12) || (v0 == 5)) {
            v0 = 5;
            param0->unk_3AC = 4;
        } else if ((v0 == 13) || (v0 == 6)) {
            v0 = 6;
            param0->unk_3AC = 5;
        } else if ((v0 == 14) || (v0 == 7)) {
            v0 = 7;
            param0->unk_3AC = 6;
        }

        ov65_02231A74(param0, ov4_021D2388());
        ov65_02232E58(param0, v0);

        sub_0200F174(0, 0, 0, 0x0, 6, 1, 54);

        param1 = 2;
    }

    return param1;
}

static int ov65_02232530 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    sub_02019EBC(param0->unk_15C, 3);

    param0->unk_3C4 = 0;
    param0->unk_3A8 = ov65_0222EBB8();

    return param1;
}

static int ov65_02232558 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    u16 v0, v1;
    int v2, v3, v4, v5;

    param0->unk_3A8 = 55;

    return param1;
}

static int ov65_02232564 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (0 != ov65_0223012C(param0)) {
        param0->unk_3A8 = 56;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        param0->unk_3A8 = 56;
    }

    return param1;
}

static int ov65_022325AC (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0, v1;
    int v2 = 0;

    ov65_02232DFC(param0);
    param0->unk_3A8 = 19;

    return param1;
}

static int ov65_022325C4 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_0223894C, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 58;
    }

    return param1;
}

static int ov65_02232608 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1 = sub_02002114(param0->unk_184, 54);

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (0 != ov65_02230140(param0)) {
        if (v1 == 0xffffffff) {
            sub_02002154(param0->unk_184, 54);
        }

        v1 = 0xfffffffe;
    }

    if (v1 == 0xffffffff) {
        return param1;
    } else if (v1 == 0) {
        ov65_02232B58(param0, 26, 1);
        param0->unk_3A8 = 59;
        param0->unk_3BC = 1;
    } else {
        ov65_02232DFC(param0);
        param0->unk_3A8 = 19;
        ov65_0223503C(param0);
    }

    return param1;
}

static int ov65_02232698 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (param0->unk_3BC == 1) {
        param0->unk_3BC = 0;
        sub_02038350();
    }

    if (!CommMan_IsInitialized()) {
        sub_0202B0F8(param0->unk_00);
        ov65_02232B58(param0, 27, 1);

        param0->unk_3A8 = 60;
        param0->unk_3BC = 30;
    }

    return param1;
}

static int ov65_022326F0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    param0->unk_3BC--;

    if (param0->unk_3BC == 0) {
        param0->unk_3AC = 8;
        param0->unk_3A8 = 34;
        ov65_02232DFC(param0);
    }

    return param1;
}

static int ov65_02232734 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (CommTiming_IsSyncState(16) == 0) {
        return param1;
    }

    CommMan_SetErrorHandling(0, 1);

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_0223894C, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 62;
    }

    return param1;
}

static int ov65_0223278C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1;

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (sub_02038294() || sub_02038284() || (sub_020380E4() >= 3)) {
        sub_02002154(param0->unk_184, 54);
        ov65_02232B58(param0, 101, 0);
        param0->unk_3A8 = 28;
    } else if (sub_020383E8()) {
        sub_02002154(param0->unk_184, 54);
        ov65_0222F6EC(param0);
    } else {
        v1 = sub_02002114(param0->unk_184, 54);

        if (v1 == 0xffffffff) {
            return param1;
        } else if (v1 == 0) {
            ov65_02232B58(param0, 138, 0);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));
            param0->unk_3E4 = 1;
            param0->unk_3A8 = 49;
            param0->unk_3BC = 30;
        } else {
            ov65_02232DFC(param0);
            CommInfo_Delete();
            sub_020383D4();
            param0->unk_3BC = 20;
            param0->unk_3A8 = 65;
        }

        param0->unk_04 = sub_020388E8();
        param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;
    }

    return param1;
}

static int ov65_0223288C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    {
        int v0, v1, v2;
        UnkStruct_ov65_022354D8 * v3;
        UnkStruct_0207E060 * v4;

        v1 = ov65_02235254(&param0->unk_3EC);
        v3 = ov65_0222E8D4(param0, v1);

        if (v3 == NULL) {
            ov65_02232DC0(param0, v1 - 1);
            ov65_02232B58(param0, 16, 0);
            param0->unk_3A8 = 29;
            return param1;
        } else {
            v4 = ov65_02234FA8(param0, v1 - 1);
            v0 = ov65_0222DD20(param0, v4);
            v2 = v4->unk_21;

            if ((param0->unk_3DE != v0) || (param0->unk_3E0 != v2)) {
                ov65_02232DC0(param0, v1 - 1);
                ov65_02232B58(param0, 16, 0);
                param0->unk_3A8 = 29;
                return param1;
            }
        }
    }

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = sub_02002100(param0->unk_15C, &Unk_ov65_0223894C, ((512 - (18 + 12)) - 9), 11, 54);
        param0->unk_3A8 = 64;
    }

    return param1;
}

static int ov65_0223294C (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;
    int v1, v2;

    {
        int v3, v4;
        UnkStruct_ov65_022354D8 * v5;
        UnkStruct_0207E060 * v6;

        v3 = ov65_02235254(&param0->unk_3EC);
        v5 = ov65_0222E8D4(param0, v3);

        if (v5 == NULL) {
            sub_02002154(param0->unk_184, 54);
            ov65_02232DC0(param0, v3 - 1);
            ov65_02232B58(param0, 16, 0);
            param0->unk_3A8 = 29;
            return param1;
        } else {
            v6 = ov65_02234FA8(param0, v3 - 1);
            v2 = ov65_0222DD20(param0, v6);
            v4 = v6->unk_21;

            if ((param0->unk_3DE != v2) || (param0->unk_3E0 != v4)) {
                sub_02002154(param0->unk_184, 54);
                ov65_02232DC0(param0, v3 - 1);
                ov65_02232B58(param0, 16, 0);
                param0->unk_3A8 = 29;
                return param1;
            }
        }
    }

    if (sub_020380E4() >= 3) {
        sub_02002154(param0->unk_184, 54);
        ov65_02232B58(param0, 18, 0);
        sub_02038378();
        param0->unk_3A8 = 29;
        return param1;
    } else if (sub_020383E8()) {
        sub_02002154(param0->unk_184, 54);
        ov65_0222F6EC(param0);
    } else {
        v1 = sub_02002114(param0->unk_184, 54);

        if (v1 == 0xffffffff) {
            return param1;
        } else if (v1 == 0) {
            v2 = ov65_0222DED4(param0->unk_3DE);

            if (29 == v2) {
                (void)0;
            } else if (ov65_02234FC4(param0->unk_3E2 - 1) == DWC_STATUS_MATCH_SC_SV) {
                ov65_02232EDC(param0);

                if (ov65_02234FCC(param0, param0->unk_3E2 - 1, v2)) {
                    param0->unk_3A0 = (60 * 30);
                    ov65_0222DFD4(v2);

                    sub_0203632C(0);

                    ov65_02232E58(param0, v2);
                    ov65_02232DC0(param0, param0->unk_3E2 - 1);
                    ov65_02232B58(param0, 17, 0);

                    GF_ASSERT(param0->unk_188 == NULL);
                    param0->unk_188 = sub_0200E7FC(&param0->unk_330, (512 - (18 + 12)));

                    if (v2 != 1) {
                        param0->unk_3A8 = 45;
                        return param1;
                    } else {
                        param0->unk_3A0 = (60 * 30);
                        param0->unk_3A8 = 21;

                        return param1;
                    }
                }
            }
        }

        ov65_02232DFC(param0);
        ov65_02232E58(param0, 16);
        ov65_02232F30(param0);
        ov65_0222FD70(param0);

        param0->unk_3A8 = 19;

        return param1;
    }

    return param1;
}

static int ov65_02232B28 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (!CommMan_IsInitialized()) {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 54);
        param1 = 2;
    }

    return param1;
}

static void ov65_02232B58 (UnkStruct_ov65_0222EBE0 * param0, int param1, BOOL param2)
{
    u8 v0 = Options_TextFrameDelay(SaveData_Options(param0->unk_160));

    ov65_02232F50(param0);

    if (BGL_WindowAdded(&param0->unk_360)) {
        sub_0200E084(&param0->unk_360, 0);
        BGL_DeleteWindow(&param0->unk_360);
    }

    if (BGL_WindowAdded(&param0->unk_330)) {
        sub_0200E084(&param0->unk_330, 0);
        BGL_DeleteWindow(&param0->unk_330);
    }

    if (param0->unk_180 != 8) {
        if (Text_IsPrinterActive(param0->unk_180) != 0) {
            Text_RemovePrinter(param0->unk_180);
            param0->unk_180 = 8;
        }
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_330, 2, 2, 19, 27, 4, 12, (((512 - (18 + 12)) - 73) - (27 * 4)));

    if (param2) {
        MessageLoader_GetStrbuf(param0->unk_16C, param1, param0->unk_170);
    } else {
        MessageLoader_GetStrbuf(param0->unk_168, param1, param0->unk_170);
    }

    StringTemplate_Format(param0->unk_164, param0->unk_174, param0->unk_170);
    BGL_FillWindow(&param0->unk_330, 15);
    sub_0200E060(&param0->unk_330, 1, (512 - (18 + 12)), 10);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);

    param0->unk_180 = Text_AddPrinterWithParams(&param0->unk_330, FONT_MESSAGE, param0->unk_174, 0, 0, v0, NULL);

    sub_0201A9A4(&param0->unk_330);
}

static void ov65_02232CA8 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    ov65_02232F50(param0);

    if (BGL_WindowAdded(&param0->unk_360)) {
        sub_0200E084(&param0->unk_360, 0);
        BGL_DeleteWindow(&param0->unk_360);
    }

    if (BGL_WindowAdded(&param0->unk_330)) {
        sub_0200E084(&param0->unk_330, 0);
        BGL_DeleteWindow(&param0->unk_330);
    }

    if (param0->unk_180 != 8) {
        if (Text_IsPrinterActive(param0->unk_180) != 0) {
            Text_RemovePrinter(param0->unk_180);
            param0->unk_180 = 8;
        }
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_360, 2, 4, 4, 23, 16, 12, (((512 - (18 + 12)) - 9) - (23 * 16)));
    MessageLoader_GetStrbuf(param0->unk_16C, param1, param0->unk_170);
    StringTemplate_Format(param0->unk_164, param0->unk_174, param0->unk_170);

    BGL_FillWindow(&param0->unk_360, 15);
    Window_Show(&param0->unk_360, 1, ((512 - (18 + 12)) - 9), 11);

    param0->unk_180 = Text_AddPrinterWithParams(&param0->unk_360, 1, param0->unk_174, 0, 0, 0xff, NULL);
    sub_0201A9A4(&param0->unk_360);
}

static void ov65_02232DC0 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (param1 != -1) {
        TrainerInfo * v0 = TrainerInfo_New(54);

        TrainerInfo_SetName(v0, sub_0202AEF0(param0->unk_00, param1));
        StringTemplate_SetPlayerName(param0->unk_164, 0, v0);
        Heap_FreeToHeap(v0);
    }
}

static void ov65_02232DFC (UnkStruct_ov65_0222EBE0 * param0)
{
    ov65_02232F50(param0);

    if (param0->unk_180 != 8) {
        if (Text_IsPrinterActive(param0->unk_180) != 0) {
            Text_RemovePrinter(param0->unk_180);
            param0->unk_180 = 8;
        }
    }

    if (BGL_WindowAdded(&param0->unk_330)) {
        sub_0200E084(&param0->unk_330, 0);
        BGL_DeleteWindow(&param0->unk_330);
    }
}

static void ov65_02232E58 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    ov65_02232E70(param0, param1);
    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
}

static void ov65_02232E70 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    int v0;

    if (param0->unk_04 == NULL) {
        return;
    }

    v0 = ov65_0222DD20(param0, &param0->unk_04->unk_00);

    if (v0 != param1) {
        param0->unk_04->unk_00.unk_1B = param1;

        if (ov65_0222DE40(param1) || (param1 == 8) || (param1 == 20) || (param1 == 22) || (param1 == 24) || (param1 == 26) || (param1 == 18)) {
            (void)0;
        } else if (param1 == 1) {
            sub_0200564C(0, 30);
        } else if (param1 == 16) {
            ov4_021D2584(0);

            if (ov65_02231A54() == 1) {
                sub_0200560C(120, 30, 1);
            }
        }
    }

    ov65_0222FD70(param0);
}

static BOOL ov65_02232EDC (UnkStruct_ov65_0222EBE0 * param0)
{
    param0->unk_04->unk_00.unk_21 = 1 - param0->unk_04->unk_00.unk_21;

    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
    return param0->unk_04->unk_00.unk_21;
}

static BOOL ov65_02232F00 (UnkStruct_ov65_0222EBE0 * param0)
{
    param0->unk_04->unk_00.unk_22 = 1 - param0->unk_04->unk_00.unk_22;
    param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;

    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
    return param0->unk_04->unk_00.unk_22;
}

static BOOL ov65_02232F30 (UnkStruct_ov65_0222EBE0 * param0)
{
    param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;

    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
    return param0->unk_04->unk_00.unk_22;
}

static void ov65_02232F50 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (param0->unk_188) {
        sub_0200EBC8(param0->unk_188);

        param0->unk_188 = NULL;

        if (BGL_WindowAdded(&param0->unk_330)) {
            sub_0200E084(&param0->unk_330, 0);
            BGL_DeleteWindow(&param0->unk_330);
        }
    }
}

static void ov65_02232F90 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    ov65_0223324C(param0);
    ov65_02235370(&param0->unk_3EC);
    ov65_022336A4(param0, param1);
}

static void ov65_02232FB0 (UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2)
{
    if (ov65_02233240(param0) == param1) {
        ov65_02232F90(param0, param2);
    }
}

static BOOL ov65_02232FCC (const UnkStruct_ov65_0222EBE0 * param0)
{
    if (param0->unk_BE0.unk_4C == NULL) {
        return 0;
    }

    return 1;
}

static void ov65_02232FE0 (UnkStruct_ov65_0222EBE0 * param0, NARC * param1, u32 param2)
{
    static const TouchScreenHitTable v0[8] = {
        {0, 47, 0, 119},
        {48, 95, 0, 119},
        {96, 143, 0, 119},
        {144, 191, 0, 119},
        {0, 47, 128, 255},
        {48, 95, 128, 255},
        {96, 143, 128, 255},
        {144, 191, 128, 255}
    };

    memset(&param0->unk_BE0, 0, sizeof(UnkStruct_ov65_02234E50));

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);

    param0->unk_BE0.unk_4C = sub_02023FCC(v0, 8, ov65_022332C4, param0, param2);
    param0->unk_BE0.unk_00 = StringTemplate_Default(param2);

    ov65_022332FC(param0, param1, param2);

    param0->unk_BE0.unk_78 = 1;

    ov65_022336D4(param0);
    ov65_0223370C(param0);
}

static void ov65_02233068 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (ov65_02232FCC(param0) == 0) {
        return;
    }

    ov65_02233570(param0);

    sub_02024034(param0->unk_BE0.unk_4C);
    param0->unk_BE0.unk_4C = NULL;

    StringTemplate_Free(param0->unk_BE0.unk_00);
    param0->unk_BE0.unk_00 = NULL;

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
}

static u32 ov65_022330C0 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    u32 v0, v1;
    u32 v2;
    BOOL v3;

    v0 = ov65_02235270(&param0->unk_3EC);
    v1 = ov65_022352CC(&param0->unk_3EC);

    if ((v1 >= 3) && (v1 <= 6)) {
        v0 = v1;
    }

    if ((v0 >= 3) && (v0 <= 6)) {
        if (param0->unk_BE0.unk_70 != (v0 - 3)) {
            param0->unk_BE0.unk_70 = (v0 - 3);

            Sound_PlayEffect(1505);
            ov65_022336D4(param0);

            param0->unk_BE0.unk_75 = 1;
            param0->unk_BE0.unk_78 = 1;
        }
    }

    if (param0->unk_BE0.unk_73 == 1) {
        param0->unk_BE0.unk_73 = 2;
        param0->unk_BE0.unk_74 = 0;

        ov65_02233874(param0, param1);
        ov65_02234D6C(param0);
    }

    if (param0->unk_BE0.unk_73 == 0) {
        sub_0202404C(param0->unk_BE0.unk_4C);
        ov65_02234A10(param0);

        if (param0->unk_BE0.unk_75 == 1) {
            ov65_0223370C(param0);
            param0->unk_BE0.unk_75 = 0;
        }
    }

    if ((param0->unk_BE0.unk_73 == 2) || (param0->unk_BE0.unk_73 == 3)) {
        v2 = ov65_02234DD8(param0);
        v3 = ov65_02233208(param0, v2);

        if (v3 == 1) {
            param0->unk_BE0.unk_77 = param0->unk_BE0.unk_71;
            param0->unk_BE0.unk_71 = 0;
            param0->unk_BE0.unk_72 = 0;
            param0->unk_BE0.unk_75 = 1;
            param0->unk_BE0.unk_78 = 1;
            param0->unk_BE0.unk_73 = 0;

            ov65_02234DA0(param0);
            Sound_PlayEffect(1501);
        } else {
            if (v2 != 0) {
                Sound_PlayEffect(1501);
                ov65_0223327C(param0, v2);
                ov65_02233874(param0, param1);
            }
        }
    }

    return param0->unk_BE0.unk_71;
}

static void ov65_022331E0 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (param0->unk_BE0.unk_73 == 0) {
        if (param0->unk_BE0.unk_75 == 1) {
            ov65_0223370C(param0);
            param0->unk_BE0.unk_75 = 0;
        }
    }
}

static BOOL ov65_02233208 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    if ((param0->unk_BE0.unk_73 == 3)) {
        return 0;
    }

    if ((gCoreSys.heldKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN)) || (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X)) || (param1 == 2)) {
        return 1;
    }

    return 0;
}

static u32 ov65_02233240 (const UnkStruct_ov65_0222EBE0 * param0)
{
    return param0->unk_BE0.unk_71;
}

static void ov65_0223324C (UnkStruct_ov65_0222EBE0 * param0)
{
    if (ov65_02232FCC(param0) == 1) {
        param0->unk_BE0.unk_71 = 0;
        param0->unk_BE0.unk_72 = 0;
        param0->unk_BE0.unk_73 = 0;
        param0->unk_BE0.unk_75 = 1;
        param0->unk_BE0.unk_78 = 1;

        ov65_02234DA0(param0);
    }
}

static void ov65_0223327C (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    u32 v0;

    if (ov65_0222DCE0(param0) == 1) {
        v0 = 7;
    } else {
        v0 = 1 + 1;
    }

    if (param1 == 3) {
        param0->unk_BE0.unk_74 = (param0->unk_BE0.unk_74 + 1) % v0;
    } else {
        param0->unk_BE0.unk_74--;

        if (param0->unk_BE0.unk_74 < 0) {
            param0->unk_BE0.unk_74 += v0;
        }
    }
}

static void ov65_022332C4 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov65_0222EBE0 * v0 = param2;
    u32 v1;

    v1 = (v0->unk_BE0.unk_70 * 8) + param0;
    v1++;

    if (v0->unk_BE0.unk_50[v1 - 1] != 2) {
        return;
    }

    if (v0->unk_BE0.unk_71 != 0) {
        return;
    }

    switch (param1) {
    case 0:
        v0->unk_BE0.unk_71 = v1;
        Sound_PlayEffect(1501);
        break;
    default:
        break;
    }
}

static void ov65_022332FC (UnkStruct_ov65_0222EBE0 * param0, NARC * param1, u32 param2)
{
    int v0, v1;
    int v2, v3;

    sub_02019EBC(param0->unk_15C, 4);
    sub_02007130(param1, 16, 4, 0 * 32, 4 * 32, param2);
    sub_02007130(param1, 19, 4, 4 * 32, 5 * 32, param2);
    sub_020070E8(param1, 15, param0->unk_15C, 4, 0, 0, 0, param2);
    sub_020070E8(param1, 18, param0->unk_15C, 6, (0 + 48), 0, 0, param2);
    sub_0200710C(param1, 17, param0->unk_15C, 4, 0, 0, 0, param2);

    param0->unk_BE0.unk_04 = sub_020071D0(param1, 20, 0, &param0->unk_BE0.unk_08, param2);

    ov65_022335F8(param0->unk_BE0.unk_08, (0 + 48));

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_BE0.unk_0C[v0] = sub_020071D0(param1, 21 + v0, 0, &param0->unk_BE0.unk_28[v0], param2);
        ov65_022335F8(param0->unk_BE0.unk_28[v0], (0 + 48));
    }

    param0->unk_BE0.unk_44 = sub_020071D0(param1, 28, 0, &param0->unk_BE0.unk_48, param2);

    ov65_022335F8(param0->unk_BE0.unk_48, (0 + 48));
    Font_LoadScreenIndicatorsPalette(4, 15 * 32, param2);

    for (v0 = 0; v0 < 8; v0++) {
        v2 = v0 / 4;
        v3 = v0 % 4;

        Window_Init(&param0->unk_BE0.unk_7C[v0]);
        BGL_AddWindow(param0->unk_15C, &param0->unk_BE0.unk_7C[v0], 5, 4 + (16 * v2), 1 + (6 * v3), 9, 3, 15, 1 + ((9 * 3) * v0));
        BGL_FillWindow(&param0->unk_BE0.unk_7C[v0], 0);
        sub_0201A9A4(&param0->unk_BE0.unk_7C[v0]);

        for (v1 = 0; v1 < 2; v1++) {
            Window_Init(&param0->unk_BE0.unk_FC[v0][v1]);
            BGL_AddWindow(param0->unk_15C, &param0->unk_BE0.unk_FC[v0][v1], 5, 1 + (16 * v2) + (v1 * 12), 1 + (6 * v3), 2, 3, 13, ((((9 * 3) * 8) + 1) + 1) + ((2 * 3) * ((v0 * 2) + v1)));
            BGL_FillWindow(&param0->unk_BE0.unk_FC[v0][v1], 0);
            sub_0201A9A4(&param0->unk_BE0.unk_FC[v0][v1]);
        }
    }

    BGL_AddWindow(param0->unk_15C, &param0->unk_BE0.unk_1FC, 7, 1, 1, 30, 21, 15, 1);
    BGL_FillWindow(&param0->unk_BE0.unk_1FC, 0);
    sub_0201A9A4(&param0->unk_BE0.unk_1FC);

    ov65_02234A68(param0, param1, param2);
}

static void ov65_02233570 (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0, v1;

    ov65_02234CFC(param0);

    for (v0 = 0; v0 < 8; v0++) {
        BGL_DeleteWindow(&param0->unk_BE0.unk_7C[v0]);

        for (v1 = 0; v1 < 2; v1++) {
            BGL_DeleteWindow(&param0->unk_BE0.unk_FC[v0][v1]);
        }
    }

    BGL_DeleteWindow(&param0->unk_BE0.unk_1FC);
    Heap_FreeToHeap(param0->unk_BE0.unk_04);

    for (v0 = 0; v0 < 7; v0++) {
        Heap_FreeToHeap(param0->unk_BE0.unk_0C[v0]);
    }

    Heap_FreeToHeap(param0->unk_BE0.unk_44);
}

static void ov65_022335F8 (NNSG2dScreenData * param0, u8 param1)
{
    u16 * v0;
    int v1, v2;
    int v3, v4;

    v0 = (u16 *)param0->rawData;
    v3 = param0->screenWidth / 8;
    v4 = param0->screenHeight / 8;

    for (v1 = 0; v1 < v4; v1++) {
        for (v2 = 0; v2 < v3; v2++) {
            v0[(v1 * v3) + v2] += param1;
        }
    }
}

static void ov65_02233638 (UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2)
{
    GF_ASSERT(param1 > 0);
    GF_ASSERT(param2 > 0);
    GF_ASSERT(param2 < 3);

    param0->unk_BE0.unk_50[param1 - 1] = param2;
    param0->unk_BE0.unk_75 = 1;
}

static void ov65_0223366C (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    GF_ASSERT(param1 > 0);

    param0->unk_BE0.unk_50[param1 - 1] = 0;
    param0->unk_BE0.unk_75 = 1;
}

static u32 ov65_0223368C (const UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    GF_ASSERT(param1 > 0);
    return param0->unk_BE0.unk_50[param1 - 1];
}

static void ov65_022336A4 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    if (param0->unk_BE0.unk_73 != 0) {
        ov65_02233874(param0, param1);
    } else {
        param0->unk_BE0.unk_78 = 1;
        ov65_0223370C(param0);
    }
}

static void ov65_022336C4 (UnkStruct_ov65_0222EBE0 * param0)
{
    param0->unk_BE0.unk_78 = 1;
    param0->unk_BE0.unk_75 = 1;
}

static void ov65_022336D4 (UnkStruct_ov65_0222EBE0 * param0)
{
    sub_02019E2C(param0->unk_15C, 4, 0, 0, 32, 24, param0->unk_BE0.unk_70 + 0);
    sub_0201C3C0(param0->unk_15C, 4);
}

static void ov65_0223370C (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0, v1;
    int v2;
    int v3;
    int v4, v5;
    int v6;
    int v7;
    BOOL v8;
    BOOL v9;

    if (param0->unk_BE0.unk_78 == 1) {
        param0->unk_BE0.unk_78 = 0;
        v8 = 1;
        sub_02019CB8(param0->unk_15C, 6, 0, 0, 0, 32, 24, 0);
    } else {
        v8 = 0;
    }

    for (v0 = 0; v0 < 8; v0++) {
        v6 = (param0->unk_BE0.unk_70 * 8) + v0 + 1;

        if (param0->unk_BE0.unk_50[v6 - 1] != 0) {
            v2 = sub_0202AD2C(param0->unk_00, v6 - 1, 8);

            if (v2 == 0) {
                v3 = 1;
            } else {
                v3 = 0;
            }
        } else {
            v3 = 2;
        }

        v4 = v0 / 4;
        v5 = v0 % 4;

        if (v6 == param0->unk_BE0.unk_71) {
            v7 = param0->unk_BE0.unk_72;
        } else {
            v7 = 0;
        }

        if ((v6 == param0->unk_BE0.unk_71) || (v6 == param0->unk_BE0.unk_77)) {
            v9 = 1;
        } else {
            v9 = 0;
        }

        if ((v8 == 1) || (v9 == 1)) {
            ov65_02234788(param0, 0 + (16 * v4), 0 + (6 * v5), v3, v7);

            if (v3 != 2) {
                ov65_02234900(param0, &param0->unk_BE0.unk_7C[v0], v6, v7, v0);
                ov65_0223498C(param0, param0->unk_BE0.unk_FC[v0], v6, v7, v0);
            } else {
                BGL_FillWindow(&param0->unk_BE0.unk_7C[v0], 0);
                sub_0201A9A4(&param0->unk_BE0.unk_7C[v0]);

                for (v1 = 0; v1 < 2; v1++) {
                    BGL_FillWindow(&param0->unk_BE0.unk_FC[v0][v1], 0);
                    sub_0201A9A4(&param0->unk_BE0.unk_FC[v0][v1]);
                }
            }
        }
    }

    sub_0201C3C0(param0->unk_15C, 6);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
}

static void ov65_02233874 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    static void (* v0[7])(UnkStruct_ov65_0222EBE0 *, u32) = {
        ov65_02233940,
        ov65_0223449C,
        ov65_02233E20,
        ov65_02233EF0,
        ov65_0223416C,
        ov65_022342A8,
        ov65_022343CC
    };
    int v1;
    int v2;

    v1 = sub_0202AD2C(param0->unk_00, param0->unk_BE0.unk_71 - 1, 8);

    if (v1 == 1) {
        v2 = 4 + 3;
    } else {
        v2 = 4 + 4;
    }

    sub_02019574(param0->unk_15C, 6, param0->unk_BE0.unk_28[param0->unk_BE0.unk_74]->rawData, param0->unk_BE0.unk_28[param0->unk_BE0.unk_74]->szByte);
    sub_02019E2C(param0->unk_15C, 6, 0, 0, 32, 24, v2);
    sub_02019EBC(param0->unk_15C, 7);

    if (ov65_0222DCE0(param0) == 0) {
        ov65_02234628(param0);
    }

    BGL_FillWindow(&param0->unk_BE0.unk_1FC, 0x0);

    v0[param0->unk_BE0.unk_74](param0, param1);

    sub_0201C3C0(param0->unk_15C, 6);
    sub_0201A9A4(&param0->unk_BE0.unk_1FC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
}

// clang-format off
asm static void ov65_02233940 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r5, r0, #0
    ldr r0, = 0xB89
    mov r2, #8
    ldrb r0, [r5, r0]
    sub r4, r0, #1
    ldr r0, [r5, #0]
    add r1, r4, #0
    bl sub_0202AD2C
    cmp r0, #0
    bne _0223395E
    ldr r0, = 0x50600
    b _02233962
 _0223395E:
    mov r0, #0xc1
    lsl r0, r0, #0xa
 _02233962:
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    bl ov65_02234F68
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #8
    ldr r2, [r5, r2]
    mov r1, #0x2a
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r0, #8
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, [sp, #0x14]
    add r2, #0x79
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, = 0xD14
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r1, #1
    mov r3, #0x20
    bl Text_AddPrinterWithParamsAndColor
    add r0, r5, #0
    add r1, r4, #0
    bl ov65_02234FA8
    str r0, [sp, #0x10]
    ldr r1, [sp, #0x10]
    add r0, r5, #0
    bl ov65_0222DD20
    add r1, sp, #0x14
    add r7, r0, #0
    bl ov65_0223484C
    mov r2, #0x5a
    lsl r2, r2, #2
    add r1, r0, #0
    ldr r0, [r5, r2]
    add r2, #8
    ldr r2, [r5, r2]
    bl MessageLoader_GetStrbuf
    mov r0, #8
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, [sp, #0x14]
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x71
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #0x68
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0x36
    bl TrainerInfo_New
    add r6, r0, #0
    ldr r0, [r5, #0]
    add r1, r4, #0
    bl sub_0202AF34
    add r1, r0, #0
    add r0, r6, #0
    bl TrainerInfo_SetName
    ldr r0, = 0xB18
    mov r1, #0
    ldr r0, [r5, r0]
    add r2, r6, #0
    bl StringTemplate_SetPlayerName
    add r0, r6, #0
    bl Heap_FreeToHeap
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x2b
    bl MessageLoader_GetStrbuf
    mov r0, #0x20
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r1, #0x96
    mov r0, #0x5a
    add r2, r1, #0
    lsl r0, r0, #2
    add r2, #0xda
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x20
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x2c
    bl MessageLoader_GetStrbuf
    mov r0, #0x38
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #1
    bl sub_0202AD2C
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, = 0xB18
    mov r1, #0
    ldr r0, [r5, r0]
    mov r3, #4
    bl StringTemplate_SetNumber
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #8
    ldr r2, [r5, r2]
    mov r1, #0x2d
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r0, #0x38
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #0x78
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #2
    bl sub_0202AD2C
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, = 0xB18
    mov r1, #0
    ldr r0, [r5, r0]
    mov r3, #4
    bl StringTemplate_SetNumber
    mov r0, #0x5a
    mov r1, #0x2e
    lsl r0, r0, #2
    lsl r2, r1, #3
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x38
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0x5a
    mov r1, #0x2f
    lsl r0, r0, #2
    lsl r2, r1, #3
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl MessageLoader_GetStrbuf
    mov r0, #0x50
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #3
    bl sub_0202AD2C
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, = 0xB18
    mov r1, #0
    ldr r0, [r5, r0]
    mov r3, #4
    bl StringTemplate_SetNumber
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #8
    ldr r2, [r5, r2]
    mov r1, #0x30
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x50
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
    add r0, r5, #0
    bl ov65_0222DCF8
    cmp r0, #1
    bne _02233CF4
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x31
    bl MessageLoader_GetStrbuf
    mov r0, #0x68
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #9
    bl sub_0202AD2C
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, = 0xB18
    mov r1, #0
    ldr r0, [r5, r0]
    mov r3, #4
    bl StringTemplate_SetNumber
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #8
    ldr r2, [r5, r2]
    mov r1, #0x32
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x68
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    b _02233CE8
 _02233CE8:
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
 _02233CF4:
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x33
    bl MessageLoader_GetStrbuf
    mov r0, #0x80
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #6
    bl sub_0202AD2C
    add r2, r0, #0
    beq _02233DC8
    mov r0, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, = 0xB18
    mov r1, #2
    ldr r0, [r5, r0]
    add r3, r1, #0
    bl StringTemplate_SetNumber
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #4
    bl sub_0202AD2C
    mov r1, #0
    add r2, r0, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, = 0xB18
    mov r3, #4
    ldr r0, [r5, r0]
    bl StringTemplate_SetNumber
    ldr r0, [r5, #0]
    add r1, r4, #0
    mov r2, #5
    bl sub_0202AD2C
    add r2, r0, #0
    ldr r0, = 0xB18
    mov r1, #1
    ldr r0, [r5, r0]
    bl StringTemplate_SetMonthName
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #8
    ldr r2, [r5, r2]
    mov r1, #0x4a
    bl MessageLoader_GetStrbuf
    mov r2, #0x5e
    ldr r0, = 0xB18
    lsl r2, r2, #2
    ldr r1, [r5, r2]
    sub r2, #8
    ldr r0, [r5, r0]
    ldr r2, [r5, r2]
    bl StringTemplate_Format
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x80
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
 _02233DC8:
    mov r3, #2
    str r3, [sp]
    mov r0, #0x57
    ldr r1, = 0xB08
    str r7, [sp, #4]
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    add r1, r5, r1
    mov r2, #6
    bl ov65_0222EA38
    ldr r0, [sp, #0x10]
    add r0, #0x21
    str r0, [sp, #0x10]
    ldrb r0, [r0]
    cmp r0, #0
    beq _02233DEE
    mov r1, #8
    b _02233DF0
 _02233DEE:
    mov r1, #1
 _02233DF0:
    mov r0, #2
    str r0, [sp]
    str r1, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    mov r0, #0x57
    lsl r0, r0, #2
    ldr r1, = 0xB08
    ldr r0, [r5, r0]
    add r1, r5, r1
    mov r2, #6
    mov r3, #0x1c
    bl ov65_0222E9C0
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on

static void ov65_02233E20 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;

    v0 = param0->unk_BE0.unk_71 - 1;

    {
        MessageLoader_GetStrbuf(param0->unk_168, 52, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    {
        ov65_022346C4(param0, param0->unk_178, 0, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 65, 113, v0, 120, 24);
    }

    {
        MessageLoader_GetStrbuf(param0->unk_168, 59, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 65, 112, v0, 120, 48);
    }
}

// clang-format off
asm static void ov65_02233EF0 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    push {r3, r4, r5, lr}
    sub sp, #0x10
    add r5, r0, #0
    ldr r0, = 0xB89
    mov r2, #0x5a
    ldrb r0, [r5, r0]
    lsl r2, r2, #2
    mov r1, #0x35
    sub r4, r0, #1
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    bl MessageLoader_GetStrbuf
    mov r1, #0
    str r1, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0xF0E00
    add r2, #0x79
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    ldr r0, = 0xD14
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x3c
    bl MessageLoader_GetStrbuf
    mov r0, #0x18
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x3e
    bl MessageLoader_GetStrbuf
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x18
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
    mov r1, #0x5e
    lsl r1, r1, #2
    ldr r1, [r5, r1]
    add r0, r5, #0
    mov r2, #1
    add r3, r4, #0
    bl ov65_022346C4
    mov r0, #0x30
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0x68
    str r0, [sp]
    mov r0, #0x30
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x41
    mov r2, #0x73
    add r3, r4, #0
    bl ov65_02234694
    mov r0, #0xd4
    str r0, [sp]
    mov r0, #0x30
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x42
    mov r2, #0x75
    add r3, r4, #0
    bl ov65_02234694
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x3b
    bl MessageLoader_GetStrbuf
    mov r0, #0x40
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0x68
    str r0, [sp]
    mov r0, #0x40
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x41
    mov r2, #0x72
    add r3, r4, #0
    bl ov65_02234694
    mov r0, #0xd4
    str r0, [sp]
    mov r0, #0x40
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x42
    mov r2, #0x74
    add r3, r4, #0
    bl ov65_02234694
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x3d
    bl MessageLoader_GetStrbuf
    mov r0, #0x58
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x3e
    bl MessageLoader_GetStrbuf
    mov r1, #0x5e
    lsl r1, r1, #2
    mov r0, #0
    ldr r1, [r5, r1]
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0xe8
    sub r3, r1, r0
    mov r0, #0x58
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    bl Text_AddPrinterWithParamsAndColor
    mov r1, #0x5e
    lsl r1, r1, #2
    ldr r1, [r5, r1]
    add r0, r5, #0
    mov r2, #2
    add r3, r4, #0
    bl ov65_022346C4
    mov r0, #0x70
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
              mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
              str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0x68
    str r0, [sp]
    mov r0, #0x70
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x41
    mov r2, #0x77
    add r3, r4, #0
    bl ov65_02234694
    mov r0, #0xd4
    str r0, [sp]
    mov r0, #0x70
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x42
    mov r2, #0x79
    add r3, r4, #0
    bl ov65_02234694
    mov r2, #0x5a
    lsl r2, r2, #2
    ldr r0, [r5, r2]
    add r2, #0x10
    ldr r2, [r5, r2]
    mov r1, #0x3b
    bl MessageLoader_GetStrbuf
    mov r0, #0x80
    str r0, [sp]
    mov r2, #0xff
    str r2, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    ldr r0, = 0xD14
    str r1, [sp, #0xc]
    add r2, #0x79
    ldr r2, [r5, r2]
    add r0, r5, r0
    mov r3, #8
    bl Text_AddPrinterWithParamsAndColor
    mov r0, #0x68
    str r0, [sp]
    mov r0, #0x80
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x41
    mov r2, #0x76
    add r3, r4, #0
    bl ov65_02234694
    mov r0, #0xd4
    str r0, [sp]
    mov r0, #0x80
    str r0, [sp, #4]
    add r0, r5, #0
    mov r1, #0x42
    mov r2, #0x78
    add r3, r4, #0
    bl ov65_02234694
    add sp, #0x10
    pop {r3, r4, r5, pc}
}
// clang-format on

static void ov65_0223416C (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;

    v0 = param0->unk_BE0.unk_71 - 1;

    {
        MessageLoader_GetStrbuf(param0->unk_168, 54, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        MessageLoader_GetStrbuf(param0->unk_168, 63, param0->unk_178);

        {
            u32 v1 = 180 - (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0) + 1) / 2;
            Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, v1, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        }
    }

    {
        ov65_022346C4(param0, param0->unk_178, 3, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 68, 135, v0, 104, 48);
        ov65_02234694(param0, 67, 136, v0, 212, 48);
    }

    {
        MessageLoader_GetStrbuf(param0->unk_168, 59, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

        ov65_02234694(param0, 68, 134, v0, 104, 80);
        ov65_02234694(param0, 67, 138, v0, 212, 80);
    }
}

static void ov65_022342A8 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;
    int v1;
    UnkStruct_0203068C * v2;
    Strbuf* v3;

    v2 = sub_0203068C(param0->unk_160);
    v0 = param0->unk_BE0.unk_71 - 1;

    {
        MessageLoader_GetStrbuf(param0->unk_168, 55, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

        v1 = sub_02030698(v2, 124, v0);
        v3 = MessageUtil_SpeciesName(v1, param1);

        {
            u32 v4 = 33 - (Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0) + 1) / 2;
            Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, v3, v4, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        }

        Strbuf_Free(v3);
    }

    {
        ov65_022346C4(param0, param0->unk_178, 4, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 65, 123, v0, 108, 48);
    }

    {
        MessageLoader_GetStrbuf(param0->unk_168, 59, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 65, 122, v0, 108, 80);
    }
}

static void ov65_022343CC (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;

    v0 = param0->unk_BE0.unk_71 - 1;

    {
        MessageLoader_GetStrbuf(param0->unk_168, 56, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    {
        ov65_022346C4(param0, param0->unk_178, 5, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 69, 143, v0, 112, 24);
    }

    {
        MessageLoader_GetStrbuf(param0->unk_168, 59, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234694(param0, 69, 142, v0, 112, 48);
    }
}

static void ov65_0223449C (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    int v0;
    UnkStruct_0202B370 * v1;

    v1 = sub_0202B370(param0->unk_160);

    v0 = param0->unk_BE0.unk_71 - 1;

    {
        MessageLoader_GetStrbuf(param0->unk_168, 70, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    {
        StringTemplate_SetPlazaMinigameName(param0->unk_BE0.unk_00, 0, UnkEnum_ov66_022324D0_00);
        MessageLoader_GetStrbuf(param0->unk_168, 71, param0->unk_170);
        StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234708(param0, 72, sub_0202AD2C(v1, v0, 10), 164, 24);
    }

    {
        StringTemplate_SetPlazaMinigameName(param0->unk_BE0.unk_00, 0, UnkEnum_ov66_022324D0_01);
        MessageLoader_GetStrbuf(param0->unk_168, 71, param0->unk_170);
        StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234708(param0, 72, sub_0202AD2C(v1, v0, 11), 164, 48);
    }

    {
        StringTemplate_SetPlazaMinigameName(param0->unk_BE0.unk_00, 0, UnkEnum_ov66_022324D0_02);
        MessageLoader_GetStrbuf(param0->unk_168, 71, param0->unk_170);
        StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 72, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        ov65_02234708(param0, 72, sub_0202AD2C(v1, v0, 12), 164, 72);
    }
}

static void ov65_02234628 (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;
    int v1;

    v1 = 7 - 2;

    for (v0 = 0; v0 < v1; v0++) {
        sub_020198E8(param0->unk_15C, 6, 0x1a + (0x1 * v0), 0, 0x1, 0x1, param0->unk_BE0.unk_48->rawData, 0, 0, param0->unk_BE0.unk_48->screenWidth / 8, param0->unk_BE0.unk_48->screenHeight / 8);
    }

    sub_02019E2C(param0->unk_15C, 6, 0x1a, 0, (0x1 * v1), 0x1, 4 + 2);
}

static void ov65_02234694 (UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    int v0;
    UnkStruct_0203068C * v1;

    v1 = sub_0203068C(param0->unk_160);
    v0 = sub_02030698(v1, param2, param3);

    ov65_02234708(param0, param1, v0, param4, param5);
}

static void ov65_022346C4 (UnkStruct_ov65_0222EBE0 * param0, Strbuf *param1, u32 param2, u32 param3)
{
    UnkStruct_0203068C * v0;
    BOOL v1;
    u32 v2;
    static const u32 v3[6] = {
        100, 102, 104, 108, 106, 110,
    };

    GF_ASSERT(param2 < 6);

    v0 = sub_0203068C(param0->unk_160);
    v1 = sub_02030698(v0, v3[param2], param3);

    if (v1 == 0) {
        v2 = 57;
    } else {
        v2 = 58;
    }

    MessageLoader_GetStrbuf(param0->unk_168, v2, param1);
}

static void ov65_02234708 (UnkStruct_ov65_0222EBE0 * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, param2, 4, 1, 1);
    MessageLoader_GetStrbuf(param0->unk_168, param1, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);

    {
        u32 v0 = param3 - (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0) + 1) / 2;
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, v0, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

static void ov65_02234788 (UnkStruct_ov65_0222EBE0 * param0, u8 param1, u8 param2, u8 param3, u8 param4)
{
    u16 v0, v1;
    u16 * v2;

    GF_ASSERT(param4 < 4);

    if (param4 == 3) {
        param4 = 1;
    }

    if ((param4 < 2)) {
        v0 = 16 * param4;
        v1 = 6 * param3;

        sub_020198E8(param0->unk_15C, 6, param1, param2, 16, 6, param0->unk_BE0.unk_08->rawData, v0, v1, 32, 18);
    } else {
        v0 = 0;
        v1 = 6 * param3;
        v2 = (u16 *)param0->unk_BE0.unk_08->rawData;

        sub_020198E8(param0->unk_15C, 6, param1, param2, 16, 6, &v2[32 * 18], v0, v1, 16, 18);
    }

    sub_02019E2C(param0->unk_15C, 6, param1, param2, 16, 6, param3 + 4);
}

static u32 ov65_0223484C(u32 param0, TextColor *param1)
{
    u32 v0;

    *param1 = TEXT_COLOR(1, 2, 0);

    switch (param0) {
    case 1:
        v0 = 36;
        *param1 = TEXT_COLOR(2, 14, 0);
        break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        v0 = 27;
        *param1 = TEXT_COLOR(2, 14, 0);
        break;
    case 9:
        v0 = 96;
        break;
    case 10:
        v0 = 97;
        break;
    case 11:
        v0 = 95;
        break;
    case 12:
        v0 = 99;
        break;
    case 13:
        v0 = 100;
        break;
    case 14:
        v0 = 98;
        break;
    case 8:
        v0 = 29;
        *param1 = TEXT_COLOR(2, 14, 0);
        break;
    case 15:
        v0 = 28;
        break;
    case 18:
        v0 = 31;
        *param1 = TEXT_COLOR(2, 14, 0);
        break;
    case 19:
        v0 = 30;
        break;
    case 20:
        v0 = 33;
        *param1 = TEXT_COLOR(2, 14, 0);
        break;
    case 21:
        v0 = 32;
        break;
    case 22:
    case 24:
    case 26:
        v0 = 35;
        *param1 = TEXT_COLOR(2, 14, 0);
        break;
    case 23:
    case 25:
    case 27:
        v0 = 34;
        break;
    case 16:
        v0 = 79;
        break;
    default:
        v0 = 92;
        break;
    }

    return v0;
}

static void ov65_02234900 (UnkStruct_ov65_0222EBE0 * param0, Window * param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    TextColor v1;
    int v2;

    BGL_FillWindow(param1, 0);

    v2 = Unk_ov65_02238934[param3];
    v0 = sub_0202AD2C(param0->unk_00, param2 - 1, 8);

    if (v0 == 0) {
        v1 = TEXT_COLOR(5, 6, 0);
    } else {
        v1 = TEXT_COLOR(3, 4, 0);
    }

    ov65_02234F68(param0, param2 - 1);

    MessageLoader_GetStrbuf(param0->unk_168, 42, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
    Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, param0->unk_178, 0, v2, TEXT_SPEED_NO_TRANSFER, v1, NULL);
    sub_0201A9A4(param1);
}

static void ov65_0223498C (UnkStruct_ov65_0222EBE0 * param0, Window * param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_0207E060 * v3;
    u32 v4;

    v3 = ov65_02234FA8(param0, param2 - 1);
    v4 = ov65_0222DD20(param0, v3);
    v0 = Unk_ov65_02238934[param3];

    for (v1 = 0; v1 < 2; v1++) {
        BGL_FillWindow(&param1[v1], 0);

        if (v1 == 0) {
            ov65_0222EB1C(&param1[v1], &param0->unk_BD0, 0, v0, v4);
        } else {
            if (v3->unk_21) {
                v2 = 8;
            } else {
                v2 = 1;
            }

            ov65_0222EAD0(&param1[v1], &param0->unk_BD0, 0, v0, v2, 0);
        }

        sub_0201A9A4(&param1[v1]);
    }
}

static void ov65_02234A10 (UnkStruct_ov65_0222EBE0 * param0)
{
    static const u8 v0[4] = {
        0, 1, 2, 1
    };

    if (param0->unk_BE0.unk_71 == 0) {
        return;
    }

    param0->unk_BE0.unk_76++;

    if (param0->unk_BE0.unk_76 >= v0[param0->unk_BE0.unk_72]) {
        param0->unk_BE0.unk_76 = 0;
        param0->unk_BE0.unk_72++;

        param0->unk_BE0.unk_75 = 1;

        if (param0->unk_BE0.unk_72 >= 4) {
            param0->unk_BE0.unk_76 = 0;
            param0->unk_BE0.unk_72 = 0;
            param0->unk_BE0.unk_73 = 1;
        }
    }
}

static void ov65_02234A68 (UnkStruct_ov65_0222EBE0 * param0, NARC * param1, u32 param2)
{
    BOOL v0;
    int v1;
    CellActorResourceData v2;
    Window v3;
    Strbuf* v4;
    UnkStruct_02012B20 * v5;
    int v6;
    UnkStruct_020127E8 v7;
    u32 v8;
    CellActorInitParamsEx v9[3] = {
        {
            NULL,
            NULL,
            {FX32_CONST(40), FX32_CONST(172) + (256 * FX32_ONE), 0},
            {FX32_ONE, FX32_ONE, FX32_ONE},
            0,
            128,
            NNS_G2D_VRAM_TYPE_2DSUB,
            0
        },
        {
            NULL,
            NULL,
            {FX32_CONST(128), FX32_CONST(172) + (256 * FX32_ONE), 0},
            {FX32_ONE, FX32_ONE, FX32_ONE},
            0,
            128,
            NNS_G2D_VRAM_TYPE_2DSUB,
            0
        },
        {
            NULL,
            NULL,
            {FX32_CONST(224), FX32_CONST(172) + (256 * FX32_ONE), 0},
            {FX32_ONE, FX32_ONE, FX32_ONE},
            0,
            128,
            NNS_G2D_VRAM_TYPE_2DSUB,
            0
        },
    };

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);

    param0->unk_BE0.unk_20C[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_31C[0], param1, 42, 0, 30, NNS_G2D_VRAM_TYPE_2DSUB, param2);
    param0->unk_BE0.unk_20C[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_31C[1], param1, 43, 0, 30, NNS_G2D_VRAM_TYPE_2DSUB, 8, param2);
    param0->unk_BE0.unk_20C[2] = SpriteResourceCollection_AddFrom(param0->unk_31C[2], param1, 40, 0, 30, 2, param2);
    param0->unk_BE0.unk_20C[3] = SpriteResourceCollection_AddFrom(param0->unk_31C[3], param1, 41, 0, 30, 3, param2);

    v0 = sub_0200A450(param0->unk_BE0.unk_20C[0]);
    GF_ASSERT(v0);

    v0 = sub_0200A640(param0->unk_BE0.unk_20C[1]);
    GF_ASSERT(v0);

    SpriteResource_ReleaseData(param0->unk_BE0.unk_20C[0]);
    SpriteResource_ReleaseData(param0->unk_BE0.unk_20C[1]);
    sub_020093B4(&v2, 30, 30, 30, 30, 0xffffffff, 0xffffffff, 0, 0, param0->unk_31C[0], param0->unk_31C[1], param0->unk_31C[2], param0->unk_31C[3], NULL, NULL);

    for (v1 = 0; v1 < 3; v1++) {
        v9[v1].collection = param0->unk_18C;
        v9[v1].resourceData = &v2;
        v9[v1].heapID = param2;

        param0->unk_BE0.unk_21C[v1] = CellActorCollection_AddEx(&v9[v1]);

        CellActor_SetAnim(param0->unk_BE0.unk_21C[v1], Unk_ov65_02238930[v1]);
    }

    Font_InitManager(FONT_SUBSCREEN, param2);
    Window_Init(&v3);
    BGL_AddFramelessWindow(param0->unk_15C, &v3, 8, 2, 0, 0);

    v4 = Strbuf_Init(64, param2);
    MessageLoader_GetStrbuf(param0->unk_168, 73, v4);

    {
        v8 = -((Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0) + 1) / 2);
        Text_AddPrinterWithParamsAndColor(&v3, FONT_SUBSCREEN, v4, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(v4);

    v5 = sub_02012B20(&v3, param2);
    v6 = sub_02012B58(v5, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = sub_0201ED94(v6, 1, NNS_G2D_VRAM_TYPE_2DSUB, &param0->unk_BE0.unk_228);

    GF_ASSERT(v0);

    v7.unk_00 = param0->unk_32C;
    v7.unk_04 = &v3;
    v7.unk_08 = param0->unk_18C;
    v7.unk_0C = sub_0200A72C(param0->unk_BE0.unk_20C[1], NULL);
    v7.unk_10 = param0->unk_BE0.unk_21C[1];
    v7.unk_14 = param0->unk_BE0.unk_228.unk_04;
    v7.unk_18 = v8;
    v7.unk_1C = -8;
    v7.unk_20 = 0;
    v7.unk_24 = 0;
    v7.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v7.unk_2C = param2;

    param0->unk_BE0.unk_234 = sub_02012B60(&v7, v5);

    sub_02012B48(v5);
    BGL_DeleteWindow(&v3);
    Font_Free(FONT_SUBSCREEN);

    param0->unk_BE0.unk_244 = sub_02023FCC(Unk_ov65_0223895C, 3, ov65_02234E40, param0, param2);
}

static void ov65_02234CFC (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;

    sub_02024034(param0->unk_BE0.unk_244);
    sub_02012BD8(param0->unk_BE0.unk_234);
    sub_0201EE28(&param0->unk_BE0.unk_228);

    for (v0 = 0; v0 < 3; v0++) {
        CellActor_Delete(param0->unk_BE0.unk_21C[v0]);
    }

    sub_0200A4E4(param0->unk_BE0.unk_20C[0]);
    sub_0200A6DC(param0->unk_BE0.unk_20C[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Remove(param0->unk_31C[v0], param0->unk_BE0.unk_20C[v0]);
    }
}

static void ov65_02234D6C (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;

    param0->unk_BE0.unk_238 = 1;
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    param0->unk_BE0.unk_23C = 0;

    for (v0 = 0; v0 < 3; v0++) {
        ov65_02234E50(&param0->unk_BE0, v0);
    }
}

static void ov65_02234DA0 (UnkStruct_ov65_0222EBE0 * param0)
{
    if (param0->unk_BE0.unk_238 == 2) {
        CellActor_SetDrawFlag(param0->unk_BE0.unk_21C[1], 1);
        sub_020129D0(param0->unk_BE0.unk_234, 1);
    }

    param0->unk_BE0.unk_238 = 0;

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static u32 ov65_02234DD8 (UnkStruct_ov65_0222EBE0 * param0)
{
    int v0;
    BOOL v1;

    if (param0->unk_BE0.unk_238 == 0) {
        return 0;
    }

    param0->unk_BE0.unk_23C = 3;
    param0->unk_BE0.unk_240 = 0xff;

    sub_0202404C(param0->unk_BE0.unk_244);

    for (v0 = 0; v0 < 3; v0++) {
        if ((param0->unk_BE0.unk_238 == 2) && (v0 == 1)) {
            continue;
        }

        v1 = ov65_02234E8C(&param0->unk_BE0, v0, param0->unk_BE0.unk_23C, param0->unk_BE0.unk_240);

        if (v1 == 1) {
            return 1 + v0;
        }
    }

    return 0;
}

static void ov65_02234E40 (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov65_0222EBE0 * v0 = param2;

    v0->unk_BE0.unk_23C = param0;
    v0->unk_BE0.unk_240 = param1;
}

static void ov65_02234E50 (UnkStruct_ov65_02234E50 * param0, u32 param1)
{
    CellActor_SetAnim(param0->unk_21C[param1], Unk_ov65_02238930[param1]);
    SpriteActor_SetAnimFrame(param0->unk_21C[param1], (5 - 1));

    if (param1 == 1) {
        sub_020128C4(param0->unk_234, -18, Unk_ov65_0223893C[0]);
    }
}

static BOOL ov65_02234E8C (UnkStruct_ov65_02234E50 * param0, u32 param1, u32 param2, u32 param3)
{
    BOOL v0 = 0;
    u32 v1;
    u32 v2;

    if ((param2 == param1)) {
        v1 = CellActor_GetAnimFrame(param0->unk_21C[param1]);

        if ((param3 == 0) || (param3 == 2)) {
            if (param3 == 0) {
                CellActor_SetAnim(param0->unk_21C[param1], Unk_ov65_0223892C[param1]);
            }

            if (v1 < 3) {
                CellActor_UpdateAnim(param0->unk_21C[param1], FX32_CONST(2));
                v1 = CellActor_GetAnimFrame(param0->unk_21C[param1]);

                if (param1 == 1) {
                    sub_020128C4(param0->unk_234, -18, Unk_ov65_0223893C[v1]);
                }

                if (v1 >= 3) {
                    v0 = 1;
                }
            }
        } else if (param3 == 1) {
            if (v1 < 3) {
                v0 = 1;
            }
        }
    } else {
        v2 = CellActor_GetActiveAnim(param0->unk_21C[param1]);
        v1 = CellActor_GetAnimFrame(param0->unk_21C[param1]);

        if (v2 == Unk_ov65_0223892C[param1]) {
            CellActor_SetAnim(param0->unk_21C[param1], Unk_ov65_02238930[param1]);
            SpriteActor_SetAnimFrame(param0->unk_21C[param1], (5 - 1) - v1);
        }

        CellActor_UpdateAnim(param0->unk_21C[param1], FX32_CONST(2));
    }

    return v0;
}

static void ov65_02234F68 (UnkStruct_ov65_0222EBE0 * param0, int param1)
{
    if (param1 != -1) {
        TrainerInfo * v0 = TrainerInfo_New(54);

        TrainerInfo_SetName(v0, sub_0202AEF0(param0->unk_00, param1));
        StringTemplate_SetPlayerName(param0->unk_BE0.unk_00, 0, v0);
        Heap_FreeToHeap(v0);
    }
}

static UnkStruct_0207E060 * ov65_02234FA8 (UnkStruct_ov65_0222EBE0 * param0, u32 param1)
{
    GF_ASSERT(param1 < 32);

    return &param0->unk_04->unk_24[param1];
}

static u8 ov65_02234FC4 (int param0)
{
    return ov4_021D2234(param0);
}

static BOOL ov65_02234FCC (UnkStruct_ov65_0222EBE0 * param0, int param1, int param2)
{
    CommTool_Init(15);
    ov4_021D2584(param0->unk_04->unk_00.unk_21);

    if (ov65_0222DD64(param2) == 1) {
        ov4_021D2618(1, 121);
    } else {
        ov4_021D2618(0, 121);
    }

    sub_0209C3AC();

    return sub_020380A0(param1);
}

static void ov65_0223500C (UnkStruct_ov65_0222EBE0 * param0, BOOL param1)
{
    if (param0->unk_E28 == 0) {
        param0->unk_E28 = 1;
        ov65_02235378(&param0->unk_3EC, 1);

        if (param1 == 1) {
            ov65_02232B58(param0, 9, 0);
        }
    }
}

static void ov65_0223503C (UnkStruct_ov65_0222EBE0 * param0)
{
    if (param0->unk_E28 == 1) {
        param0->unk_E28 = 0;
        ov65_02232DFC(param0);
        ov65_02235378(&param0->unk_3EC, 0);
    }
}

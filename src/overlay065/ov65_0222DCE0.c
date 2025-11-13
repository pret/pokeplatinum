#include "overlay065/ov65_0222DCE0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "generated/journal_online_events.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02012B20_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0207DFAC.h"
#include "struct_defs/struct_0207E060.h"
#include "struct_defs/struct_02099F80.h"
#include "struct_defs/wi_fi_history.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay065/ov65_02235060.h"
#include "overlay065/struct_ov65_0222E99C.h"
#include "overlay065/struct_ov65_0222EBE0_decl.h"
#include "overlay065/struct_ov65_0222EBE0_t.h"
#include "overlay065/struct_ov65_0222F6EC.h"
#include "overlay065/struct_ov65_02234E50.h"
#include "overlay065/struct_ov65_022354D8.h"
#include "overlay098/struct_ov98_02247168.h"

#include "assert.h"
#include "bag.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "communication_information.h"
#include "communication_system.h"
#include "enums.h"
#include "error_handling.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "pltt_transfer.h"
#include "poffin.h"
#include "pokedex.h"
#include "pokemon.h"
#include "render_oam.h"
#include "render_text.h"
#include "render_window.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
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
#include "touch_pad.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "trainer_info.h"
#include "unk_02012744.h"
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
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay63);

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov65_02239CDC;

static UnkStruct_0207E060 *ov65_02234FA8(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static u8 ov65_02234FC4(int param0);
static BOOL ov65_02234FCC(UnkStruct_ov65_0222EBE0 *param0, int param1, int param2);
static void ov65_0222E5E0(void *param0);
static void ov65_0222E618(void);
static void ov65_0222E638(BgConfig *param0);
static void ov65_0222EBE0(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0222EC2C(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0222EC5C(BgConfig *param0);
static void ov65_0222ECA8(UnkStruct_ov65_0222EBE0 *param0, NARC *param1);
static void ov65_0222EDD0(void);
static void ov65_0222EE18(UnkStruct_ov65_0222EBE0 *param0, NARC *param1);
static void ov65_0222EE8C(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0222EE98(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0222E87C(UnkStruct_ov65_0222EBE0 *param0, UnkStruct_ov65_022354D8 *param1);
static void ov65_0222E8A8(UnkStruct_ov65_0222EBE0 *param0, UnkStruct_ov65_022354D8 *param1);
static int ov65_02230164(UnkStruct_ov65_0222EBE0 *param0);
static UnkStruct_ov65_022354D8 *ov65_0222E8D4(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_0222E90C(BgConfig *param0, UnkStruct_ov65_0222E99C *param1, NARC *param2, u32 param3);
static void ov65_0222E99C(UnkStruct_ov65_0222E99C *param0);
static void ov65_0222E9C0(BgConfig *param0, UnkStruct_ov65_0222E99C *param1, u32 param2, u8 param3, u8 param4, u32 param5, u32 param6);
static void ov65_0222EA38(BgConfig *param0, UnkStruct_ov65_0222E99C *param1, u32 param2, u8 param3, u8 param4, u32 param5);
static void ov65_0222EAD0(Window *param0, UnkStruct_ov65_0222E99C *param1, u16 param2, u16 param3, u32 param4, u32 param5);
static void ov65_0222EB1C(Window *param0, UnkStruct_ov65_0222E99C *param1, u16 param2, u16 param3, u32 param4);
static int ov65_0222EBAC(u32 param0);
static int ov65_0222EBB8(void);
static void ov65_02232F90(UnkStruct_ov65_0222EBE0 *param0, u32 heapID);
static void ov65_02232FB0(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 heapID);
static BOOL ov65_02232FCC(const UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02232FE0(UnkStruct_ov65_0222EBE0 *param0, NARC *param1, u32 heapID);
static void ov65_02233068(UnkStruct_ov65_0222EBE0 *param0);
static u32 ov65_022330C0(UnkStruct_ov65_0222EBE0 *param0, u32 heapID);
static void ov65_022331E0(UnkStruct_ov65_0222EBE0 *param0);
static BOOL ov65_02233208(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static u32 ov65_02233240(const UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0223324C(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0223327C(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_02233638(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 param2);
static void ov65_0223366C(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static u32 ov65_0223368C(const UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_022336A4(UnkStruct_ov65_0222EBE0 *param0, u32 heapID);
static void ov65_022336C4(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_022332C4(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov65_02234A10(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_022332FC(UnkStruct_ov65_0222EBE0 *param0, NARC *param1, u32 heapID);
static void ov65_02233570(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_022335F8(NNSG2dScreenData *param0, u8 param1);
static void ov65_022336D4(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0223370C(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02233874(UnkStruct_ov65_0222EBE0 *param0, u32 heapID);
static void ov65_02233940(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_02233E20(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_02233EF0(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_0223416C(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_022342A8(UnkStruct_ov65_0222EBE0 *param0, u32 heapID);
static void ov65_022343CC(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_0223449C(UnkStruct_ov65_0222EBE0 *param0, u32 param1);
static void ov65_02234628(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02234694(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov65_022346C4(UnkStruct_ov65_0222EBE0 *param0, Strbuf *param1, u32 param2, u32 param3);
static void ov65_02234708(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void ov65_02234788(UnkStruct_ov65_0222EBE0 *param0, u8 param1, u8 param2, u8 param3, u8 param4);
static u32 ov65_0223484C(u32 param0, TextColor *param1);
static void ov65_02234900(UnkStruct_ov65_0222EBE0 *param0, Window *param1, u32 param2, u32 param3, u32 param4);
static void ov65_0223498C(UnkStruct_ov65_0222EBE0 *param0, Window *param1, u32 param2, u32 param3, u32 param4);
static void ov65_02234A68(UnkStruct_ov65_0222EBE0 *param0, NARC *param1, u32 heapID);
static void ov65_02234CFC(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02234D6C(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02234DA0(UnkStruct_ov65_0222EBE0 *param0);
static u32 ov65_02234DD8(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02234E40(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov65_02234E50(UnkStruct_ov65_02234E50 *param0, u32 param1);
static BOOL ov65_02234E8C(UnkStruct_ov65_02234E50 *param0, u32 param1, u32 param2, u32 param3);
static void ov65_02234F68(UnkStruct_ov65_0222EBE0 *param0, int param1);
static void ov65_0222EF4C(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02232CA8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static void ov65_02232B58(UnkStruct_ov65_0222EBE0 *param0, int param1, BOOL param2);
static void ov65_02232DFC(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02232E58(UnkStruct_ov65_0222EBE0 *param0, int param1);
static void ov65_02232E70(UnkStruct_ov65_0222EBE0 *param0, int param1);
static void ov65_02232F50(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02232DC0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static u32 ov65_022319B8(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_02231A0C(void);
static BOOL ov65_02231A54(void);
static void ov65_02231A74(UnkStruct_ov65_0222EBE0 *param0, u32 unused);
static void ov65_0222F6EC(UnkStruct_ov65_0222EBE0 *param0);
static void ov65_0223500C(UnkStruct_ov65_0222EBE0 *param0, BOOL param1);
static void ov65_0223503C(UnkStruct_ov65_0222EBE0 *param0);
static int ov65_0222F010(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F164(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F1A8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F21C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F288(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F304(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F3DC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F7AC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F7F0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F7FC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F808(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F868(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F8AC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F90C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FC48(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222F490(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FAA0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FB44(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FCB8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FCDC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FFAC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022302C4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230634(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230774(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022307B0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230860(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022309D0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230A30(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230AF8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230BB4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230C04(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230CAC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230CB0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230CB4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232530(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230E04(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230FBC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231200(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231440(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230CF8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230D20(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230D6C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022315A4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022316F0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231A98(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231E64(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231FE0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231FE4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232020(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232024(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232028(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022321F4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0223229C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022322DC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232358(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022323C0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232558(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232564(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022325AC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022325C4(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232608(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232698(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_022326F0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232734(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0223278C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0223288C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0223294C(UnkStruct_ov65_0222EBE0 *param0, int param1);
static BOOL ov65_02232EDC(UnkStruct_ov65_0222EBE0 *param0);
static BOOL ov65_02232F00(UnkStruct_ov65_0222EBE0 *param0);
static BOOL ov65_02232F30(UnkStruct_ov65_0222EBE0 *param0);
static int ov65_022305EC(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02232B28(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02230CB8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_02231FE8(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0222FBD0(UnkStruct_ov65_0222EBE0 *param0, int param1);
static int ov65_0223128C(UnkStruct_ov65_0222EBE0 *param0, int param1);

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
    { 0xA0, 0xC0, 0x8, 0x40 },
    { 0xA0, 0xC0, 0x50, 0xB0 },
    { 0xA0, 0xC0, 0xC0, 0xF8 }
};

static int (*Unk_ov65_02239D2C[])(UnkStruct_ov65_0222EBE0 *, int) = {
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

static const WindowTemplate Unk_ov65_0223894C = {
    0x2,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x115
};

static BOOL ov65_0222DCE0(UnkStruct_ov65_0222EBE0 *param0)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(param0->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_BATTLE_PARK);
}

static BOOL ov65_0222DCF8(UnkStruct_ov65_0222EBE0 *param0)
{
    if (!Bag_GetItemQuantity(SaveData_GetBag(param0->saveData), ITEM_POFFIN_CASE, HEAP_ID_54)) {
        return 0;
    }

    return 1;
}

static BOOL ov65_0222DD1C(UnkStruct_ov65_0222EBE0 *param0)
{
    return 1;
}

static u32 ov65_0222DD20(UnkStruct_ov65_0222EBE0 *param0, UnkStruct_0207E060 *param1)
{
    u32 v0 = param1->unk_1B;

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

static BOOL ov65_0222DD64(int param0)
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

static u32 ov65_0222DD94(int param0)
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

static BOOL ov65_0222DDD4(int param0)
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

static BOOL ov65_0222DDFC(int param0)
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

static BOOL ov65_0222DE40(int param0)
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

static BOOL ov65_0222DE68(int param0)
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

static BOOL ov65_0222DEB0(int param0)
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

static int ov65_0222DED4(int param0)
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

static int ov65_0222DF88(UnkStruct_ov65_0222EBE0 *param0)
{
    Party *v0 = SaveData_GetParty(param0->saveData);
    Pokemon *v1;
    int v2 = Party_GetCurrentCount(v0);
    int v3, v4 = 0;

    for (v3 = 0; v3 < v2; v3++) {
        v1 = Party_GetPokemonBySlotIndex(v0, v3);

        if (Pokemon_GetValue(v1, MON_DATA_HP, NULL) == 0) {
            continue;
        }

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL)) {
            continue;
        }

        v4++;
    }

    return v4;
}

static void ov65_0222DFD4(int param0)
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

static void ov65_0222E01C(UnkStruct_ov65_0222EBE0 *param0)
{
    NARC *v0;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);

    v0 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_54);

    param0->unk_15C = BgConfig_New(HEAP_ID_54);
    param0->unk_164 = StringTemplate_Default(HEAP_ID_54);
    param0->unk_168 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0674, HEAP_ID_54);
    param0->unk_16C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0695, HEAP_ID_54);

    ov65_0222E618();
    ov65_0222E638(param0->unk_15C);
    ov65_0222ECA8(param0, v0);

    inline_ov61_0222C3B0(&param0->unk_E2C, v0, 4, 54);

    SetVBlankCallback(ov65_0222E5E0, param0);

    ov65_0222EDD0();
    ov65_0222EE18(param0, v0);
    ov65_0222EE8C(param0);

    NARC_dtor(v0);
}

int ov65_0222E2A8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov65_0222EBE0 *v0;
    UnkStruct_ov98_02247168 *v1;
    u32 v2;

    switch (*param1) {
    case 0:
        v1 = ApplicationManager_Args(appMan);

        if (CommMan_IsConnectedToWifi()) {
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
                Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_PARTY_MENU1, 0x10000);
                break;
            default:
                break;
            }
        } else {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_PARTY_MENU1, 0x10000);
        }

        Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);

        if (v1->unk_04 == 1) {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_54, 0x70000);
        } else {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_54, 0xa0000);
        }

        v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov65_0222EBE0), HEAP_ID_54);

        MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov65_0222EBE0));
        VramTransfer_New(32, HEAP_ID_54);

        v0->unk_180 = 8;
        v0->saveData = v1->saveData;
        v0->unk_00 = SaveData_GetWiFiList(v0->saveData);
        v0->unk_3B4 = v1->unk_04;
        v0->unk_3AC = 8;
        v0->unk_3D0 = -1;

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);

        ov65_0222EBE0(v0);
        ov65_0222E01C(v0);

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_54);

        if (CommMan_IsConnectedToWifi()) {
            sub_02039734();
        } else {
            sub_02099550();
        }

        v2 = InitializeTouchPad(4);
        GF_ASSERT(v2 == 1);
        (*param1)++;
        break;
    case 1:
        v0 = ApplicationManager_Data(appMan);
        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

int ov65_0222E3FC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov65_0222EBE0 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone()) {
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
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    if (v0->unk_18C) {
        SpriteList_Update(v0->unk_18C);
    }

    if (ov65_02235194(&v0->unk_3EC) == 1) {
        ov65_02235244(&v0->unk_3EC);
    }

    inline_ov61_0222C0F8(&v0->unk_E2C);

    return 0;
}

static void ov65_0222E47C(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;

    SetVBlankCallback(NULL, NULL);

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

    SpriteList_Delete(param0->unk_18C);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    ov65_0222EF4C(param0);
    ov65_0222EC5C(param0->unk_15C);

    MessageLoader_Free(param0->unk_16C);
    MessageLoader_Free(param0->unk_168);
    StringTemplate_Free(param0->unk_164);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));
}

int ov65_0222E548(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov65_0222EBE0 *v0 = ApplicationManager_Data(appMan);
    UnkStruct_ov98_02247168 *v1;

    ov65_0222E47C(v0);

    v1 = ApplicationManager_Args(appMan);
    v1->unk_04 = v0->unk_3AC;

    if ((v0->unk_3AC == 8) || (v0->unk_3AC == 10)) {
        sub_02099560();
    } else {
        v1->unk_08 = ov4_021D2388();
    }

    ov65_0222EC2C(v0);

    ApplicationManager_FreeData(appMan);
    DisableTouchPad();
    VramTransfer_Free();
    Heap_Destroy(HEAP_ID_54);

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
        Heap_Destroy(HEAP_ID_PARTY_MENU1);
        break;
    default:
        break;
    }

    if (ov65_02231A54() == 1) {
        Sound_SetInitialVolumeForHandle(SOUND_HANDLE_TYPE_FIELD_BGM, 120);
    }

    return 1;
}

static void ov65_0222E5E0(void *param0)
{
    UnkStruct_ov65_0222EBE0 *v0 = param0;

    Bg_RunScheduledUpdates(v0->unk_15C);
    VramTransfer_Process();
    RenderOam_Transfer();

    inline_ov61_0222C1FC(&v0->unk_E2C);

    if (v0->unk_1158 == 1) {
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_SUB);
        v0->unk_1158 = 0;
    }
}

static void ov65_0222E618(void)
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

static void ov65_0222E638(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x1000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_54);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xd000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_54);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xd800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_54);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x18000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v4, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_54);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
    }

    {
        BgTemplate v5 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v5, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v6 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v6, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_1);
    }

    {
        BgTemplate v7 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_2, &v7, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_2);
    }

    {
        BgTemplate v8 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x18000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v8, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_3);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(5, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(6, 32, 0, HEAP_ID_54);
    Bg_ClearTilesRange(7, 32, 0, HEAP_ID_54);

    Bg_SetPriority(BG_LAYER_MAIN_0, 3);
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    Bg_SetPriority(BG_LAYER_MAIN_3, 0);
    Bg_SetPriority(BG_LAYER_MAIN_2, 0);

    G2_BlendNone();
    G2S_BlendNone();
}

static void ov65_0222E87C(UnkStruct_ov65_0222EBE0 *param0, UnkStruct_ov65_022354D8 *param1)
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

static void ov65_0222E8A8(UnkStruct_ov65_0222EBE0 *param0, UnkStruct_ov65_022354D8 *param1)
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

static UnkStruct_ov65_022354D8 *ov65_0222E8D4(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
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

static void ov65_0222E90C(BgConfig *param0, UnkStruct_ov65_0222E99C *param1, NARC *param2, u32 param3)
{
    Graphics_LoadPaletteFromOpenNARC(param2, 13, 0, 8 * 32, 2 * 32, param3);
    Graphics_LoadPaletteFromOpenNARC(param2, 13, 4, 13 * 32, 2 * 32, param3);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param2, 12, param0, 1, 0, 0, 0, param3);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param2, 12, param0, 6, 0, 0, 0, param3);

    if (param1->unk_08 == NULL) {
        param1->unk_08 = Graphics_GetCharDataFromOpenNARC(param2, 12, 0, &param1->unk_0C, param3);
    }

    if (param1->unk_00 == NULL) {
        param1->unk_00 = Graphics_GetScrnDataFromOpenNARC(param2, 14, 0, &param1->unk_04, param3);
    }
}

static void ov65_0222E99C(UnkStruct_ov65_0222E99C *param0)
{
    if (param0->unk_00 != NULL) {
        Heap_Free(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_08 != NULL) {
        Heap_Free(param0->unk_08);
        param0->unk_08 = NULL;
    }
}

static void ov65_0222E9C0(BgConfig *param0, UnkStruct_ov65_0222E99C *param1, u32 param2, u8 param3, u8 param4, u32 param5, u32 param6)
{
    int v0;

    Bg_CopyToTilemapRect(param0, param2, param3, param4, 2, 2, param1->unk_04->rawData, 2 * param5, 0, param1->unk_04->screenWidth / 8, param1->unk_04->screenHeight / 8);

    v0 = ov65_0222EBAC(param2);

    Bg_ChangeTilemapRectPalette(param0, param2, param3, param4, 2, 2, v0 + param6);
    Bg_ScheduleTilemapTransfer(param0, param2);
}

static void ov65_0222EA38(BgConfig *param0, UnkStruct_ov65_0222E99C *param1, u32 param2, u8 param3, u8 param4, u32 param5)
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

static void ov65_0222EAD0(Window *param0, UnkStruct_ov65_0222E99C *param1, u16 param2, u16 param3, u32 param4, u32 param5)
{
    int v0;

    Window_BlitBitmapRect(param0, param1->unk_0C->pRawData, (2 * 8) * param4, 0, param1->unk_0C->W * 8, param1->unk_0C->H * 8, param2, param3, 2 * 8, 2 * 8);
    v0 = ov65_0222EBAC(param0->bgLayer);
    Window_SetPalette(param0, v0 + param5);
}

static void ov65_0222EB1C(Window *param0, UnkStruct_ov65_0222E99C *param1, u16 param2, u16 param3, u32 param4)
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

static int ov65_0222EBAC(u32 param0)
{
    if (param0 < 4) {
        return 8;
    }

    return 13;
}

static int ov65_0222EBB8(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_54);
    ov65_02231A0C();

    return 18;
}

static void ov65_0222EBE0(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;
    int v1;

    param0->unk_174 = Strbuf_Init(190 * 2, HEAP_ID_54);
    param0->unk_17C = Strbuf_Init(190 * 2, HEAP_ID_54);
    param0->unk_170 = Strbuf_Init(190 * 2, HEAP_ID_54);
    param0->unk_178 = Strbuf_Init(90 * 2, HEAP_ID_54);
    param0->unk_3A8 = 0;
}

static void ov65_0222EC2C(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;

    Strbuf_Free(param0->unk_178);
    Strbuf_Free(param0->unk_174);
    Strbuf_Free(param0->unk_17C);
    Strbuf_Free(param0->unk_170);
}

static void ov65_0222EC5C(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Heap_Free(param0);
}

static void ov65_0222ECA8(UnkStruct_ov65_0222EBE0 *param0, NARC *param1)
{
    BgConfig *v0 = param0->unk_15C;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);

    Graphics_LoadPaletteFromOpenNARC(param1, 3, 0, 0, 0, HEAP_ID_54);
    Graphics_LoadPaletteFromOpenNARC(param1, 3, 4, 0, 0, HEAP_ID_54);

    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_54);
    Font_LoadScreenIndicatorsPalette(0, 12 * 0x20, HEAP_ID_54);

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 2, v0, 0, 0, 0, 0, HEAP_ID_54);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 5, v0, 0, 0, 0, 0, HEAP_ID_54);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 10, v0, 4, 0, 0, 0, HEAP_ID_54);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 11, v0, 4, 0, 0, 0, HEAP_ID_54);

    {
        int v1 = Options_Frame(SaveData_GetOptions(param0->saveData));

        LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_2, 512 - (18 + 12), 10, v1, HEAP_ID_54);
        LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_2, (512 - (18 + 12)) - 9, 11, 0, HEAP_ID_54);
        LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_1, (512 - (18 + 12)) - 9, 11, 0, HEAP_ID_54);
    }
}

static void ov65_0222EDD0(void)
{
    {
        CharTransferTemplate v0 = {
            20, 128 * 1024, 16 * 1024, 54
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    PlttTransfer_Init(20, HEAP_ID_54);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void ov65_0222EE18(UnkStruct_ov65_0222EBE0 *param0, NARC *param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, 54);

    param0->unk_18C = SpriteList_InitRendering(8, &param0->unk_190, HEAP_ID_54);

    SetSubScreenViewRect(&param0->unk_190, 0, 256 * FX32_ONE);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_31C[v0] = SpriteResourceCollection_New(1, v0, HEAP_ID_54);
    }

    param0->unk_32C = sub_02012744(1, HEAP_ID_54);
}

static void ov65_0222EE8C(UnkStruct_ov65_0222EBE0 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov65_0222EE98(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0, v1;

    if (Window_IsInUse(&param0->unk_350)) {
        Window_EraseStandardFrame(&param0->unk_350, 0);
        Window_Remove(&param0->unk_350);
    }

    Window_Add(param0->unk_15C, &param0->unk_350, 3, 5, 1, 22, 2, 13, 512 - 18 * 3);
    Window_FillTilemap(&param0->unk_350, 0x8000);
    MessageLoader_GetStrbuf(param0->unk_168, 21, param0->unk_178);

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, param0->unk_178, 0, 22 * 8);

        Text_AddPrinterWithParamsAndColor(&param0->unk_350, FONT_MESSAGE, param0->unk_178, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    Window_ScheduleCopyToVRAM(&param0->unk_350);
}

static void ov65_0222EF4C(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;

    ov65_02232DFC(param0);

    if (Window_IsInUse(&param0->unk_350)) {
        Window_Remove(&param0->unk_350);
    }

    if (Window_IsInUse(&param0->unk_330)) {
        Window_Remove(&param0->unk_330);
    }

    if (Window_IsInUse(&param0->unk_390)) {
        Window_Remove(&param0->unk_390);
    }

    if (Window_IsInUse(&param0->unk_340)) {
        Window_Remove(&param0->unk_340);
    }

    if (Window_IsInUse(&param0->unk_370)) {
        Window_Remove(&param0->unk_370);
    }

    if (param0->unk_150) {
        ListMenu_Free(param0->unk_150, NULL, NULL);
    }

    if (param0->unk_14C) {
        StringList_Free(param0->unk_14C);
        param0->unk_14C = NULL;
    }

    if (Window_IsInUse(&param0->unk_360)) {
        Window_Remove(&param0->unk_360);
    }
}

static const WindowTemplate Unk_ov65_02238944 = {
    0x2,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x51
};

static const WindowTemplate Unk_ov65_02238954 = {
    0x1,
    0x19,
    0x13,
    0x6,
    0x4,
    0xD,
    0x189
};

static int ov65_0222F010(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    u32 v0;

    if (CommMan_IsConnectedToWifi()) {
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
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_11, SEQ_WIFILOBBY, 1);
        ov65_0222EE98(param0);

        if (!DWC_CheckHasProfile(WiFiList_GetUserData(param0->unk_00))) {
            Bg_SetPriority(BG_LAYER_MAIN_0, 3);
            Bg_SetPriority(BG_LAYER_MAIN_1, 0);
            Bg_SetPriority(BG_LAYER_MAIN_3, 0);
            Bg_SetPriority(BG_LAYER_MAIN_2, 1);

            ov65_02232CA8(param0, 18);

            param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_02238954, (512 - (18 + 12)) - 9, 11, 54);
            param0->unk_3A8 = 6;
        } else if (!DWC_CheckValidConsole(WiFiList_GetUserData(param0->unk_00))) {
            ov65_02232CA8(param0, 20);
            param0->unk_3A8 = 3;
        } else {
            ov65_02232B58(param0, 17, 1);
            param0->unk_3A8 = 1;
        }
    }

    return param1;
}

static int ov65_0222F164(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_02238944, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 2;
    }

    return param1;
}

static int ov65_0222F1A8(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        if (v1 == 0) {
            param0->unk_04 = sub_0203871C(param0->saveData, sizeof(UnkStruct_0207DFAC));
            ov65_02232B58(param0, 23, 1);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));
            param0->unk_3A8 = 14;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F21C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232CA8(param0, 21);
        Bg_SetPriority(BG_LAYER_MAIN_3, 0);
        Bg_SetPriority(BG_LAYER_MAIN_2, 1);
        Bg_SetPriority(BG_LAYER_MAIN_1, 0);
        Bg_SetPriority(BG_LAYER_MAIN_0, 3);

        param0->unk_184 = Menu_MakeYesNoChoiceWithCursorAt(param0->unk_15C, &Unk_ov65_02238954, (512 - (18 + 12)) - 9, 11, 1, 54);
        param0->unk_3A8 = 4;
    }

    return param1;
}

static int ov65_0222F288(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        Window_EraseMessageBox(&param0->unk_360, 0);
        Window_Remove(&param0->unk_360);

        if (v1 == 0) {
            ov65_02232CA8(param0, 22);
            param0->unk_184 = Menu_MakeYesNoChoiceWithCursorAt(param0->unk_15C, &Unk_ov65_02238954, (512 - (18 + 12)) - 9, 11, 1, 54);
            param0->unk_3A8 = 5;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F304(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        Bg_SetPriority(BG_LAYER_MAIN_3, 0);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Bg_SetPriority(BG_LAYER_MAIN_1, 1);
        Bg_SetPriority(BG_LAYER_MAIN_0, 3);
        Window_EraseMessageBox(&param0->unk_360, 0);
        Window_Remove(&param0->unk_360);

        if (v1 == 0) {
            WiFiList_Init(param0->unk_00);
            Email_Init(SaveData_SaveTable(param0->saveData, SAVE_TABLE_ENTRY_EMAIL));
            sub_02030764(SaveData_GetBattleFrontier(param0->saveData));
            param0->unk_3A8 = 14;
            param0->unk_04 = sub_0203871C(param0->saveData, sizeof(UnkStruct_0207DFAC));
            ov65_02232B58(param0, 23, 1);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));
            param0->unk_3C8 = 1;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F3DC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        return param1;
    } else {
        Bg_SetPriority(BG_LAYER_MAIN_0, 3);
        Bg_SetPriority(BG_LAYER_MAIN_1, 1);
        Bg_SetPriority(BG_LAYER_MAIN_3, 0);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Window_EraseMessageBox(&param0->unk_360, 0);
        Window_Remove(&param0->unk_360);

        if (v1 == 0) {
            param0->unk_3A8 = 14;
            param0->unk_04 = sub_0203871C(param0->saveData, sizeof(UnkStruct_0207DFAC));
            ov65_02232B58(param0, 23, 1);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));
            param0->unk_3C8 = 1;
        } else {
            param0->unk_3A8 = 34;
        }
    }

    return param1;
}

static int ov65_0222F490(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    Bg_SetPriority(BG_LAYER_MAIN_0, 3);
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    Bg_SetPriority(BG_LAYER_MAIN_3, 0);
    Bg_SetPriority(BG_LAYER_MAIN_2, 0);
    param0->unk_3A8 = 15;
    return param1;
}

static void ov65_0222F4C4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param0->saveData);
    Pokedex *v1 = SaveData_GetPokedex(param0->saveData);
    Party *v2 = SaveData_GetParty(param0->saveData);
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(param0->saveData);
    int v4, v5;

    GF_ASSERT((sizeof(UnkStruct_0207E060)) == sizeof(UnkStruct_0207E060));

    v4 = Party_GetCurrentCount(v2);

    for (v5 = 0; v5 < v4; v5++) {
        Pokemon *v6 = Party_GetPokemonBySlotIndex(v2, v5);

        param0->unk_04->unk_00.unk_00[v5] = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
        param0->unk_04->unk_00.unk_0C[v5] = Pokemon_GetValue(v6, MON_DATA_HELD_ITEM, NULL);
    }

    param0->unk_04->unk_00.unk_18 = TrainerInfo_GameCode(v0);
    param0->unk_04->unk_00.unk_19 = TrainerInfo_RegionCode(v0);
    param0->unk_04->unk_00.unk_1A = Pokedex_IsNationalDexObtained(v1);
    param0->unk_04->unk_00.unk_1B = 29;

    ov65_02232E70(param0, param1);

    param0->unk_04->unk_00.unk_1C = 0;
    param0->unk_04->unk_00.unk_1D = TrainerInfo_Appearance(v0);
    param0->unk_04->unk_00.unk_1E = TrainerInfo_Gender(v0);
    param0->unk_04->unk_00.unk_1F = WiFiHistory_GetCountry(wiFiHistory);
    param0->unk_04->unk_00.unk_20 = WiFiHistory_GetRegion(wiFiHistory);
    param0->unk_04->unk_00.unk_21 = 1;
    param0->unk_04->unk_00.unk_22 = 1;

    ov4_021D222C((const char *)&param0->unk_04->unk_00, sizeof(UnkStruct_0207E060));
    ov4_021D2198(&param0->unk_04->unk_24[0], sizeof(UnkStruct_0207E060));
}

static int ov65_0222F5BC(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0, v1 = 0;
    UnkStruct_0207E060 *v2;
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
                    if (v3 == 28) {
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

static int ov65_0222F62C(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0, v1 = 0;
    BOOL v2;
    BOOL v3;
    UnkStruct_ov65_022354D8 *v4;
    UnkStruct_0207E060 *v5;
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

static void ov65_0222F6EC(UnkStruct_ov65_0222EBE0 *param0)
{
    UnkStruct_ov65_0222F6EC *v0 = sub_020382F8();
    int v1, v2 = v0->unk_00;
    int v3 = NintendoWFC_GetErrorCode(v0->unk_00, v0->unk_04);

    if ((v3 == 11) || (v2 == ((DWC_ERROR_NUM) + 5))) {
        v1 = 14;
        v3 = 11;
    } else if (v2 == ((DWC_ERROR_NUM) + 6)) {
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

static int ov65_0222F7AC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        if (Window_IsInUse(&param0->unk_360)) {
            Window_EraseMessageBox(&param0->unk_360, 0);
            Window_Remove(&param0->unk_360);
        }

        param0->unk_3A8 = 8;
    }

    return param1;
}

static int ov65_0222F7F0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    param0->unk_3A8 = 9;
    return param1;
}

static int ov65_0222F7FC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    param0->unk_3A8 = 11;
    return param1;
}

static int ov65_0222F808(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (param0->unk_3BC > 0) {
        param0->unk_3BC--;
        return param1;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        if (Window_IsInUse(&param0->unk_360)) {
            Window_EraseMessageBox(&param0->unk_360, 0);
            Window_Remove(&param0->unk_360);
        }

        ov65_02232B58(param0, 88, 0);
        param0->unk_3A8 = 11;
    }

    return param1;
}

static int ov65_0222F868(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_0223894C, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 12;
    }

    return param1;
}

static int ov65_0222F8AC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

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

static int ov65_0222F90C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    NARC *v1;

    if (!WirelessDriver_IsReady()) {
        if (ov65_02235194(&param0->unk_3EC) == 1) {
            SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
            SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
            ov65_02235130(&param0->unk_3EC);

            for (v0 = 0; v0 < (32 + 1); v0++) {
                param0->unk_B4C[v0] = NULL;
            }

            RenderOam_ClearMain(54);
            RenderOam_ClearSub(54);
        }

        if (ov65_02232FCC(param0) == 1) {
            ov65_02233068(param0);
        }

        if (Window_IsInUse(&param0->unk_350)) {
            Window_EraseStandardFrame(&param0->unk_350, 0);
            Window_Remove(&param0->unk_350);
        }

        if (Window_IsInUse(&param0->unk_340)) {
            Window_Remove(&param0->unk_340);
        }

        Bg_ClearTilemap(param0->unk_15C, BG_LAYER_MAIN_3);

        v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_54);
        ov65_0222ECA8(param0, v1);
        NARC_dtor(v1);

        inline_ov96_0223BDEC(&param0->unk_E2C, 1);

        param0->unk_1158 = 1;

        if (param0->unk_14C) {
            Window_Remove(&param0->unk_370);
            ListMenu_Free(param0->unk_150, NULL, NULL);
            param0->unk_150 = NULL;
            StringList_Free(param0->unk_14C);
            param0->unk_14C = NULL;
        }

        MI_CpuClear8(param0->unk_0C, 32);
        MI_CpuClear8(param0->unk_2C, 32);
        MI_CpuClear8(param0->unk_4C, 32 * sizeof(int));
        MI_CpuClear8(param0->unk_CC, 32 * sizeof(int));

        ov65_0222EE98(param0);
        param0->unk_04 = sub_0203871C(param0->saveData, sizeof(UnkStruct_0207DFAC));
        ov65_02232B58(param0, 23, 1);
        GF_ASSERT(param0->unk_188 == NULL);
        param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));
        param0->unk_3A8 = 14;
    }

    return param1;
}

static int ov65_0222FAA0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != FALSE) {
        return param1;
    }

    if (ov4_021D27E0()) {
        param0->unk_3A8 = 69;
        ov65_02232B58(param0, 30, 1);
        GF_ASSERT(param0->unk_188 == NULL);
        param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));
    }

    if (sub_02038294()) {
        if (param0->unk_3C8) {
            param0->unk_3A8 = 16;
        } else {
            ov65_0222F4C4(param0, 16);
            ov65_0222F5BC(param0);
            param0->unk_3A8 = ov65_0222EBB8();
        }
    } else if (sub_020383E8() || sub_020380E4() == 3) {
        ov65_0222F6EC(param0);
    }

    return param1;
}

static int ov65_0222FB44(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (ov4_021D27E0()) {
        SaveData_SaveStateInit(param0->saveData, 0);
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

static int ov65_0222FBD0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (ov4_021D27E0()) {
        int v0 = SaveData_SaveStateMain(param0->saveData);

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

static int ov65_0222FC48(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static int ov65_0222FCB8(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    ov65_02232DFC(param0);
    ov65_02232CA8(param0, 19);

    param0->unk_3A8 = 17;
    param0->unk_3C8 = 0;

    return param1;
}

static int ov65_0222FCDC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
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

            if (Window_IsInUse(&param0->unk_360)) {
                Window_EraseMessageBox(&param0->unk_360, 0);
                Window_Remove(&param0->unk_360);
            }
        }
    }

    return param1;
}

static void ov65_0222FD70(UnkStruct_ov65_0222EBE0 *param0)
{
    TextColor v0;
    int v1, v2, v3;
    TrainerInfo *v4 = SaveData_GetTrainerInfo(param0->saveData);
    Strbuf *v5 = TrainerInfo_NameNewStrbuf(v4, 54);
    u32 v6;

    if (!Window_IsInUse(&param0->unk_340)) {
        Strbuf_Free(v5);
        return;
    }

    Window_FillTilemap(&param0->unk_340, 0);

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
    Window_ScheduleCopyToVRAM(&param0->unk_340);
}

static void ov65_0222FED8(ListMenu *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static void ov65_0222FEEC(UnkStruct_ov65_0222EBE0 *param0)
{
    if (Window_IsInUse(&param0->unk_340)) {
        Window_Remove(&param0->unk_340);
    }

    if (Window_IsInUse(&param0->unk_350)) {
        Window_EraseStandardFrame(&param0->unk_350, 0);
        Window_Remove(&param0->unk_350);
    }

    Window_Add(param0->unk_15C, &param0->unk_340, 3, 1, 1, 28, 2, 13, (512 - 18 * 3) - (28 * 2));
    Window_Add(param0->unk_15C, &param0->unk_350, 1, 1, 1, 28, 2, 13, ((512 - (18 + 12)) - 9) - (28 * 2));
    Window_FillTilemap(&param0->unk_350, 15);
    Window_ScheduleCopyToVRAM(&param0->unk_350);
    Window_DrawStandardFrame(&param0->unk_350, 0, (512 - (18 + 12)) - 9, 11);
}

static int ov65_0222FFAC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0, v1;
    int v2 = 0;
    NARC *v3;
    UnkStruct_ov65_022354D8 *v4;
    int v5;

    if (IsScreenFadeDone() == FALSE) {
        return param1;
    }

    if (sub_020383E8() == 0) {
        if (!sub_020382C0()) {
            return param1;
        }
    }

    ov4_021D113C(sub_0207DFAC);

    inline_ov96_0223BDEC(&param0->unk_E2C, 0);

    v3 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_54);

    ov65_0222E90C(param0->unk_15C, &param0->unk_BD0, v3, 54);
    ov65_02232F30(param0);
    ov65_02232DFC(param0);

    Bg_ClearTilemap(param0->unk_15C, BG_LAYER_MAIN_3);

    if (param0->unk_14C) {
        Window_Remove(&param0->unk_370);
        ListMenu_Free(param0->unk_150, NULL, NULL);
        param0->unk_150 = NULL;
        StringList_Free(param0->unk_14C);
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
        ov65_02232FE0(param0, v3, HEAP_ID_54);
    }

    ov65_022336A4(param0, HEAP_ID_54);
    ov65_02232DFC(param0);
    ov65_0222F5BC(param0);
    ov65_0222FEEC(param0);
    ov65_02232E58(param0, 16);

    sub_02038B60();
    param0->unk_3D0 = -1;

    NARC_dtor(v3);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_54);
    param0->unk_3A8 = 19;

    CommMan_SetErrorHandling(0, 0);
    return param1;
}

static int ov65_0223012C(UnkStruct_ov65_0222EBE0 *param0)
{
    if (sub_020380E4() == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov65_02230140(UnkStruct_ov65_0222EBE0 *param0)
{
    if (ov4_021D2568() != -1) {
        ov4_021D2584(param0->unk_04->unk_00.unk_21);
        return 1;
    }

    return 0;
}

static int ov65_02230164(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;
    int v1, v2;
    UnkStruct_ov65_022354D8 *v3;
    BOOL v4;
    UnkStruct_0207E060 *v5;
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
                    ov65_02232FB0(param0, param0->unk_2C[v1], HEAP_ID_54);
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
            Sound_PlayEffect(SEQ_SE_DP_TELE2);
        } else if (v7 == 1) {
            Sound_PlayEffect(SEQ_SE_DP_TELE2);
        }
    }

    return v0;
}

static void ov65_02230298(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
{
    int v0;
    u32 v1;
    u32 v2;
    BOOL v3;
    int v4 = ov65_0222F62C(param0);

    if (v4 > 0) {
        ov65_022336A4(param0, heapID);
    }
}

static void ov65_022302B0(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
{
    ov65_02230164(param0);
    ov65_02230298(param0, heapID);
}

static int ov65_022302C4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    u32 v0 = 0;
    int v1;
    u32 v2;
    UnkStruct_ov65_022354D8 *v3;
    u32 v4;

    if (IsScreenFadeDone() == FALSE) {
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

    ov65_022302B0(param0, HEAP_ID_54);
    ov65_022331E0(param0);
    ov65_022355EC(&param0->unk_3EC);

    if (ov65_0223537C(&param0->unk_3EC) == 0) {
        if (ov4_021D2568() == -1) {
            if (PAD_BUTTON_X & gSystem.pressedKeys) {
                if (ov65_02232F00(param0)) {
                    ov65_02232B58(param0, 90, 0);
                } else {
                    ov65_02232B58(param0, 91, 0);
                }

                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov65_0222FD70(param0);
                param0->unk_3A8 = 20;
                ov65_02232F90(param0, HEAP_ID_54);
                return param1;
            }
        }

        v2 = ov65_022330C0(param0, HEAP_ID_54);
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
        Sound_PlayEffect(SEQ_SE_DP_UG_020);
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
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            if (ov65_0222DDFC(v4)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->unk_3A8 = 39;
                ov65_02232F90(param0, HEAP_ID_54);
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
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        if (ov65_0222DDFC(v4)) {
            param0->unk_3A8 = 39;
        } else {
            param0->unk_3AC = 8;
            param0->unk_3A8 = 57;
            ov65_02232B58(param0, 25, 1);

            v0 = 0xfffffffe;
        }

        ov65_02232F90(param0, HEAP_ID_54);
        return param1;
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

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

        ov65_02232F90(param0, HEAP_ID_54);
        return param1;
        break;
    case 2:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        if (ov65_0222DDFC(v4)) {
            param0->unk_3A8 = 39;
        } else {
            param0->unk_3A8 = 42;
        }

        ov65_02232F90(param0, HEAP_ID_54);
        return param1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return param1;
}

static int ov65_022305EC(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static int ov65_02230634(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    UnkStruct_0207E060 *v0;
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

static int ov65_02230774(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    ov65_02232DC0(param0, ov4_021D2388());
    ov65_02232B58(param0, 14, 0);
    ov65_02232E58(param0, 1);

    param0->unk_3A8 = 23;

    sub_0202B13C(param0->unk_00, ov4_021D2388());

    return param1;
}

static int ov65_022307B0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    UnkStruct_0207E060 *v0;
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
        if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
            ov65_02232DFC(param0);
            param0->unk_3A8 = 24;
        } else {
            ov65_02230860(param0, param1);
        }
    }

    return param1;
}

static int ov65_02230860(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    UnkStruct_0207E060 *v0;
    int v1;

    if (ov4_021D2388() < 0) {
        ov65_02232B58(param0, 19, 0);
        param0->unk_3A8 = 27;
        return param1;
    }

    v0 = ov65_02234FA8(param0, ov4_021D2388());
    v1 = ov65_0222DD20(param0, v0);

    ov65_022302B0(param0, HEAP_ID_54);
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
    } else if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
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

static int ov65_022309D0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (sub_020383E8()) {
        ov65_0222F6EC(param0);
        return param1;
    }

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        sub_0202B13C(param0->unk_00, ov4_021D2388());

        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_0223894C, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 26;
    }

    return param1;
}

static int ov65_02230A30(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    if (v1 == 0xffffffff) {
        if ((sub_020380E4() >= 4) || sub_02038284() || !CommSys_IsPlayerConnected(0)) {
            ov65_02232DFC(param0);

            ov65_02232E58(param0, 16);
            Menu_DestroyForExit(param0->unk_184, 54);
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

static int ov65_02230AF8(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

    if ((gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) || (param0->unk_3BC == 0)) {
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

static int ov65_02230BB4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232DFC(param0);
        ov65_02232E58(param0, 16);
        sub_02038378();
        param0->unk_3BC = 20;
        param0->unk_3A8 = 65;
    }

    return param1;
}

static int ov65_02230C04(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

    if ((gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) || (param0->unk_3BC == 0)) {
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

static int ov65_02230CAC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02230CB0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02230CB4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02230CB8(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (param0->unk_3BC > 0) {
        param0->unk_3BC--;
        return param1;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        ov65_02232B58(param0, 26, 1);
        param0->unk_3A8 = 59;
        param0->unk_3BC = 1;
    }

    return param1;
}

static int ov65_02230CF8(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    ov65_022355FC(&param0->unk_3EC);
    ov65_02232B58(param0, 10, 0);

    param0->unk_3A8 = 40;

    return param1;
}

static int ov65_02230D20(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    ov65_022355FC(&param0->unk_3EC);

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_0223894C, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 41;
    }

    return param1;
}

static int ov65_02230D6C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    ov65_022355FC(&param0->unk_3EC);

    if ((param0->unk_3D0 == -1) && (ov4_021D2568() != -1)) {
        ov4_021D2584(param0->unk_04->unk_00.unk_21);

        if (v1 == 0xffffffff) {
            Menu_DestroyForExit(param0->unk_184, 54);
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
    { 0x5D, (u32)0 },
    { 0x5E, (u32)1 },
    { 0x1C, (u32)15 }
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
    { 0x47, (u32)23 },
    { 0x47, (u32)25 },
    { 0x47, (u32)27 },
    { 0x29, (u32)0xfffffffe }
};

UnkStruct_ov65_02239CDC Unk_ov65_02239C7C[] = {
    { 0x5F, (u32)11 },
    { 0x60, (u32)9 },
    { 0x61, (u32)10 },
    { 0x29, (u32)0xfffffffe }
};

UnkStruct_ov65_02239CDC Unk_ov65_02239C9C[] = {
    { 0x62, (u32)14 },
    { 0x63, (u32)12 },
    { 0x64, (u32)13 },
    { 0x29, (u32)0xfffffffe }
};

static ListMenuTemplate Unk_ov65_02239CBC = {
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

static const ListMenuTemplate Unk_ov65_02238AD0 = {
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

static const ListMenuTemplate Unk_ov65_02238AF0 = {
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

static int ov65_02230E04(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0, v1;
    ListMenuTemplate v2;
    UnkStruct_ov65_02239CDC *v3;

    v1 = 3;
    v2 = Unk_ov65_02239CBC;
    v3 = Unk_ov65_02239CDC;

    if (ov65_0222DCF8(param0) == 1) {
        v1++;
        v2.count++;
        v2.maxDisplay++;
        v3[v1 - 1] = Unk_ov65_02239C28;
    }

    if (ov65_0222DCE0(param0) == 1) {
        v1++;
        v2.count++;
        v2.maxDisplay++;

        v3[v1 - 1] = Unk_ov65_02239C30;
    }

    if (ov65_0222DD1C(param0) == 1) {
        v1++;
        v2.count++;
        v2.maxDisplay++;
        v3[v1 - 1] = Unk_ov65_02239C38;
    }

    {
        v1++;
        v2.count++;
        v2.maxDisplay++;
        v3[v1 - 1] = Unk_ov65_02239C20;
    }

    param0->unk_154 = StringList_New(v1, HEAP_ID_54);

    for (v0 = 0; v0 < v1; v0++) {
        StringList_AddFromMessageBank(param0->unk_154, param0->unk_168, v3[v0].unk_00, v3[v0].unk_04);
    }

    if (Window_IsInUse(&param0->unk_380)) {
        Window_EraseStandardFrame(&param0->unk_380, 0);
        Window_Remove(&param0->unk_380);
    }

    Window_Add(param0->unk_15C, &param0->unk_380, 2, 16, 3, 15, v1 * 2, 13, ((((((512 - (18 + 12)) - 9) - 10) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)) - v1 * 2);
    Window_DrawStandardFrame(&param0->unk_380, 1, (512 - (18 + 12)) - 9, 11);

    v2.choices = param0->unk_154;
    v2.window = &param0->unk_380;

    param0->unk_158 = ListMenu_New(&v2, 0, param0->unk_3D4, HEAP_ID_54);

    Window_ScheduleCopyToVRAM(&param0->unk_380);
    ov65_02232B58(param0, 8, 0);
    ov65_022355FC(&param0->unk_3EC);

    param0->unk_3A8 = 37;
    return param1;
}

static int ov65_02230FBC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    u32 v0;
    int v1 = ov65_0222DF88(param0);
    int v2 = ov65_022319B8(param0);

    ov65_022355FC(&param0->unk_3EC);

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        if (0 != ov65_02230140(param0)) {
            param0->unk_3A8 = 19;
            Window_EraseStandardFrame(&param0->unk_380, 0);
            Window_Remove(&param0->unk_380);
            ListMenu_Free(param0->unk_158, NULL, &param0->unk_3D4);
            StringList_Free(param0->unk_154);
            ov65_02232DFC(param0);
        }

        return param1;
    }

    v0 = ListMenu_ProcessInput(param0->unk_158);

    if (0 != ov65_02230140(param0)) {
        v0 = 0xfffffffe;
    }

    switch (v0) {
    case 0xffffffff:
        return param1;
    case 0xfffffffe:
        param0->unk_3A8 = 19;
        ov65_02232DFC(param0);
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    default:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

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
            Window_EraseStandardFrame(&param0->unk_380, 0);
            Window_Remove(&param0->unk_380);
            ListMenu_Free(param0->unk_158, NULL, &param0->unk_3D4);
            StringList_Free(param0->unk_154);
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

    Window_EraseStandardFrame(&param0->unk_380, 0);
    Window_Remove(&param0->unk_380);
    ListMenu_Free(param0->unk_158, NULL, &param0->unk_3D4);
    StringList_Free(param0->unk_154);

    return param1;
}

static int ov65_02231200(UnkStruct_ov65_0222EBE0 *param0, int param1)
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
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_54);

        param0->unk_3E4 = 0;

        CommInfo_Init(param0->saveData, NULL);

        CommInfo_SendBattleRegulation();

        sub_02032E1C(CommSys_CurNetId());
        param1 = 2;
    }

    return param1;
}

static int ov65_0223128C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0, v1;
    ListMenuTemplate v2;
    UnkStruct_ov65_02239CDC *v3;

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

    param0->unk_154 = StringList_New(v1, HEAP_ID_54);

    for (v0 = 0; v0 < v1; v0++) {
        if (v3[v0].unk_00 != 71) {
            StringList_AddFromMessageBank(param0->unk_154, param0->unk_168, v3[v0].unk_00, v3[v0].unk_04);
        } else {
            StringTemplate_SetPlazaMinigameName(param0->unk_164, 0, v0);
            MessageLoader_GetStrbuf(param0->unk_168, v3[v0].unk_00, param0->unk_170);
            StringTemplate_Format(param0->unk_164, param0->unk_178, param0->unk_170);
            StringList_AddFromStrbuf(param0->unk_154, param0->unk_178, v3[v0].unk_04);
        }
    }

    if (Window_IsInUse(&param0->unk_380)) {
        Window_EraseStandardFrame(&param0->unk_380, 0);
        Window_Remove(&param0->unk_380);
    }

    Window_Add(param0->unk_15C, &param0->unk_380, 2, 16, 9, 15, v1 * 2, 13, ((((((512 - (18 + 12)) - 9) - 10) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22)) - v1 * 2);
    Window_DrawStandardFrame(&param0->unk_380, 1, (512 - (18 + 12)) - 9, 11);

    v2.choices = param0->unk_154;
    v2.window = &param0->unk_380;

    param0->unk_158 = ListMenu_New(&v2, 0, param0->unk_3D6[param0->unk_3DC], HEAP_ID_54);

    Window_ScheduleCopyToVRAM(&param0->unk_380);

    return 1;
}

static int ov65_02231440(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    u32 v0;

    ov65_022355FC(&param0->unk_3EC);

    if (0 != ov65_02230140(param0)) {
        param0->unk_3A8 = 19;
        Window_EraseStandardFrame(&param0->unk_380, 0);
        Window_Remove(&param0->unk_380);
        ListMenu_Free(param0->unk_158, NULL, &param0->unk_3D6[param0->unk_3DC]);
        StringList_Free(param0->unk_154);
        ov65_02232DFC(param0);
        return param1;
    }

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    v0 = ListMenu_ProcessInput(param0->unk_158);

    switch (v0) {
    case 0xffffffff:
        return param1;
    case 0xfffffffe:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        param0->unk_3A8 = 36;
        break;
    default:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
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

    Window_EraseStandardFrame(&param0->unk_380, 0);
    Window_Remove(&param0->unk_380);
    ListMenu_Free(param0->unk_158, NULL, &param0->unk_3D6[param0->unk_3DC]);
    StringList_Free(param0->unk_154);

    return param1;
}

static const struct {
    u32 unk_00;
    u32 unk_04;
} Unk_ov65_02238968[] = {
    { 0x27, (u32)1 },
    { 0x29, (u32)0xfffffffe }
};

static const ListMenuTemplate Unk_ov65_02238A90 = {
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

static int ov65_022315A4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    u16 v1, v2;
    UnkStruct_0207E060 *v3;
    UnkStruct_ov65_022354D8 *v4;
    UnkStruct_ov65_022354D8 *v5;
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

static int ov65_022316F0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    UnkStruct_ov65_022354D8 *v0;
    u32 v1;
    int v2, v3;
    UnkStruct_0207E060 *v4;

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
        ListMenu_Free(param0->unk_158, NULL, NULL);
        ov65_02232DC0(param0, v2 - 1);
        ov65_02232B58(param0, 16, 0);
        param0->unk_3A8 = 29;
        return param1;
    } else {
        v4 = ov65_02234FA8(param0, v2 - 1);
        v3 = ov65_0222DD20(param0, v4);

        if (param0->unk_3DE != v3) {
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
        ListMenuTemplate v7;
        u16 v8, v9, v10;
        UnkStruct_0207E060 *v11;

        v6 = NELEMS(Unk_ov65_02238968);
        v7 = Unk_ov65_02238A90;
        v8 = ov65_02235254(&param0->unk_3EC);
        v11 = ov65_02234FA8(param0, v8 - 1);
        v9 = ov65_0222DD20(param0, v11);
        v10 = v11->unk_21;

        param0->unk_3E0 = v10;

        v10 += param0->unk_04->unk_00.unk_21;
        param0->unk_154 = StringList_New(v6, HEAP_ID_54);
        v5 = 0;

        for (v5 = 0; v5 < NELEMS(Unk_ov65_02238968); v5++) {
            if (v5 == 0) {
                if (ov65_0222DE68(v9) || (v9 == 0) || (v9 == 28) || (v9 >= 29)) {
                    v7.maxDisplay -= 1;
                    v7.count -= 1;
                    v6 -= 1;
                } else if (v9 == 16) {
                    if (v10 == 2) {
                        StringList_AddFromMessageBank(param0->unk_154, param0->unk_168, 36, Unk_ov65_02238968[v5].unk_04);
                    } else {
                        v7.maxDisplay -= 1;
                        v7.count -= 1;
                        v6 -= 1;
                    }
                } else {
                    StringList_AddFromMessageBank(param0->unk_154, param0->unk_168, Unk_ov65_02238968[v5].unk_00, Unk_ov65_02238968[v5].unk_04);
                }
            } else {
                StringList_AddFromMessageBank(param0->unk_154, param0->unk_168, Unk_ov65_02238968[v5].unk_00, Unk_ov65_02238968[v5].unk_04);
            }
        }

        Window_Add(param0->unk_15C, &param0->unk_380, 2, 16, 11 + ((3 - v6) * 2), 15, v6 * 2, 13, (((((512 - (18 + 12)) - 9) - 10) - (18 + 12 + 24)) - (27 * 4)) - (11 * 22));
        Window_DrawStandardFrame(&param0->unk_380, 1, (512 - (18 + 12)) - 9, 11);

        v7.choices = param0->unk_154;
        v7.window = &param0->unk_380;

        param0->unk_158 = ListMenu_New(&v7, 0, 0, HEAP_ID_54);

        Window_ScheduleCopyToVRAM(&param0->unk_380);
    }

    param0->unk_3A8 = 44;
    return param1;
}

static BOOL ov65_02231978(UnkStruct_0207E060 *param0)
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

static u32 ov65_022319B8(UnkStruct_ov65_0222EBE0 *param0)
{
    if (!Bag_HasItemsInPocket(SaveData_GetBag(param0->saveData), POCKET_BERRIES)) {
        return 1;
    }

    if (!Bag_GetItemQuantity(SaveData_GetBag(param0->saveData), ITEM_POFFIN_CASE, HEAP_ID_54)) {
        return 3;
    }

    if (PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(param0->saveData)) >= MAX_POFFINS) {
        return 2;
    }

    return 0;
}

static void ov65_02231A0C(void)
{
    u32 bgmID;

    ov4_021D2584(0);

    if (ov65_02231A54() == 0) {
        if (IsNight() == FALSE) {
            bgmID = SEQ_PC_01;
        } else {
            bgmID = SEQ_PC_02;
        }

        Sound_SetScene(SOUND_SCENE_NONE);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_11, bgmID, 1);
    } else {
        Sound_SetInitialVolumeForSequence(Sound_GetCurrentBGM(), 120);
    }
}

static BOOL ov65_02231A54(void)
{
    u32 v0 = Sound_GetCurrentBGM();

    if ((v0 != 1085) && (v0 != 1086)) {
        return 0;
    }

    return 1;
}

static void ov65_02231A74(UnkStruct_ov65_0222EBE0 *param0, u32 unused)
{
    JournalEntry *journalEntry = SaveData_GetJournal(param0->saveData);
    void *journalEntryOnlineEvent = JournalEntry_CreateEventMisc(54, ONLINE_EVENT_WIFI_CLUB);

    JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
}

static int ov65_02231A98(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    u32 v0;
    int v1, v2, v3 = 0, v4;
    u16 v5;
    int v6;
    UnkStruct_ov65_022354D8 *v7;
    UnkStruct_0207E060 *v8;

    v0 = ListMenu_ProcessInput(param0->unk_158);
    v6 = ov65_02230140(param0);

    if (0 != v6) {
        v0 = 0xfffffffe;
    }

    v2 = ov65_02235254(&param0->unk_3EC);
    v7 = ov65_0222E8D4(param0, v2);

    if (sub_020383E8()) {
        Window_EraseStandardFrame(&param0->unk_380, 0);
        Window_Remove(&param0->unk_380);
        ListMenu_Free(param0->unk_158, NULL, NULL);
        StringList_Free(param0->unk_154);

        if (v7 != NULL) {
            ov65_0223556C(&param0->unk_3EC, v7);
        }

        ov65_0222F6EC(param0);
        return param1;
    }

    switch (v0) {
    case 0xffffffff:
        if (v7 == NULL) {
            ListMenu_Free(param0->unk_158, NULL, NULL);
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
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        param0->unk_3A8 = 19;
        break;
    default:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

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
                        param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));

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

    Window_EraseStandardFrame(&param0->unk_380, 0);
    Window_Remove(&param0->unk_380);
    ListMenu_Free(param0->unk_158, NULL, NULL);
    StringList_Free(param0->unk_154);

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

static int ov65_02231E64(UnkStruct_ov65_0222EBE0 *param0, int param1)
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
            CommInfo_Init(param0->saveData, NULL);
            param0->unk_3BC = 30;
        } else if (CommSys_IsPlayerConnected(0) == 1) {
            ov65_02232DFC(param0);
            CommInfo_Init(param0->saveData, NULL);
            CommMan_SetErrorHandling(0, 1);
            ov65_0222DFD4(v0);

            param0->unk_3AC = ov65_0222DD94(v0);

            sub_0203632C(0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_54);

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

static int ov65_02231FE0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02231FE4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02231FE8(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static int ov65_02232020(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02232024(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    return param1;
}

static int ov65_02232028(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1;
    UnkStruct_0207E060 *v2;
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

    CommInfo_Init(param0->saveData, NULL);

    param0->unk_3A8 = 49;
    param0->unk_3BC = 30;

    return param1;
}

static BOOL ov65_022321A8(UnkStruct_ov65_0222EBE0 *param0)
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

static int ov65_022321F4(UnkStruct_ov65_0222EBE0 *param0, int param1)
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
                CommTool_ClearReceivedTempDataAllPlayers();
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

static int ov65_0223229C(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static int ov65_022322DC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    const u16 *v0;
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

static int ov65_02232358(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static BOOL ov65_02232390(UnkStruct_ov65_0222EBE0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        return 1;
    }

    if (Window_IsInUse(&param0->unk_330) == 0) {
        return 1;
    }

    return 0;
}

static int ov65_022323C0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1[8];
    UnkStruct_0207E060 *v2;

    if (ov65_022321A8(param0)) {
        (void)0;
    } else if (CommTiming_IsSyncState(18) && (ov65_02232390(param0) == 1)) {
        sub_020391DC(param0->saveData, v1, HEAP_ID_54);
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

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_54);

        param1 = 2;
    }

    return param1;
}

static int ov65_02232530(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    Bg_ClearTilemap(param0->unk_15C, BG_LAYER_MAIN_3);

    param0->unk_3C4 = 0;
    param0->unk_3A8 = ov65_0222EBB8();

    return param1;
}

static int ov65_02232558(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    u16 v0, v1;
    int v2, v3, v4, v5;

    param0->unk_3A8 = 55;

    return param1;
}

static int ov65_02232564(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (0 != ov65_0223012C(param0)) {
        param0->unk_3A8 = 56;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        param0->unk_3A8 = 56;
    }

    return param1;
}

static int ov65_022325AC(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0, v1;
    int v2 = 0;

    ov65_02232DFC(param0);
    param0->unk_3A8 = 19;

    return param1;
}

static int ov65_022325C4(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_0223894C, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 58;
    }

    return param1;
}

static int ov65_02232608(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (0 != ov65_02230140(param0)) {
        if (v1 == 0xffffffff) {
            Menu_DestroyForExit(param0->unk_184, 54);
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

static int ov65_02232698(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static int ov65_022326F0(UnkStruct_ov65_0222EBE0 *param0, int param1)
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

static int ov65_02232734(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (CommTiming_IsSyncState(16) == 0) {
        return param1;
    }

    CommMan_SetErrorHandling(0, 1);

    if (Text_IsPrinterActive(param0->unk_180) == 0) {
        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_0223894C, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 62;
    }

    return param1;
}

static int ov65_0223278C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1;

    if (Text_IsPrinterActive(param0->unk_180) != 0) {
        return param1;
    }

    if (sub_02038294() || sub_02038284() || (sub_020380E4() >= 3)) {
        Menu_DestroyForExit(param0->unk_184, 54);
        ov65_02232B58(param0, 101, 0);
        param0->unk_3A8 = 28;
    } else if (sub_020383E8()) {
        Menu_DestroyForExit(param0->unk_184, 54);
        ov65_0222F6EC(param0);
    } else {
        v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

        if (v1 == 0xffffffff) {
            return param1;
        } else if (v1 == 0) {
            ov65_02232B58(param0, 138, 0);
            GF_ASSERT(param0->unk_188 == NULL);
            param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));
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

static int ov65_0223288C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    {
        int v0, v1, v2;
        UnkStruct_ov65_022354D8 *v3;
        UnkStruct_0207E060 *v4;

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
        param0->unk_184 = Menu_MakeYesNoChoice(param0->unk_15C, &Unk_ov65_0223894C, (512 - (18 + 12)) - 9, 11, 54);
        param0->unk_3A8 = 64;
    }

    return param1;
}

static int ov65_0223294C(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    int v0;
    int v1, v2;

    {
        int v3, v4;
        UnkStruct_ov65_022354D8 *v5;
        UnkStruct_0207E060 *v6;

        v3 = ov65_02235254(&param0->unk_3EC);
        v5 = ov65_0222E8D4(param0, v3);

        if (v5 == NULL) {
            Menu_DestroyForExit(param0->unk_184, 54);
            ov65_02232DC0(param0, v3 - 1);
            ov65_02232B58(param0, 16, 0);
            param0->unk_3A8 = 29;
            return param1;
        } else {
            v6 = ov65_02234FA8(param0, v3 - 1);
            v2 = ov65_0222DD20(param0, v6);
            v4 = v6->unk_21;

            if ((param0->unk_3DE != v2) || (param0->unk_3E0 != v4)) {
                Menu_DestroyForExit(param0->unk_184, 54);
                ov65_02232DC0(param0, v3 - 1);
                ov65_02232B58(param0, 16, 0);
                param0->unk_3A8 = 29;
                return param1;
            }
        }
    }

    if (sub_020380E4() >= 3) {
        Menu_DestroyForExit(param0->unk_184, 54);
        ov65_02232B58(param0, 18, 0);
        sub_02038378();
        param0->unk_3A8 = 29;
        return param1;
    } else if (sub_020383E8()) {
        Menu_DestroyForExit(param0->unk_184, 54);
        ov65_0222F6EC(param0);
    } else {
        v1 = Menu_ProcessInputAndHandleExit(param0->unk_184, 54);

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
                    param0->unk_188 = Window_AddWaitDial(&param0->unk_330, 512 - (18 + 12));

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

static int ov65_02232B28(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (!CommMan_IsInitialized()) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_54);
        param1 = 2;
    }

    return param1;
}

static void ov65_02232B58(UnkStruct_ov65_0222EBE0 *param0, int param1, BOOL param2)
{
    u8 v0 = Options_TextFrameDelay(SaveData_GetOptions(param0->saveData));

    ov65_02232F50(param0);

    if (Window_IsInUse(&param0->unk_360)) {
        Window_EraseMessageBox(&param0->unk_360, 0);
        Window_Remove(&param0->unk_360);
    }

    if (Window_IsInUse(&param0->unk_330)) {
        Window_EraseMessageBox(&param0->unk_330, 0);
        Window_Remove(&param0->unk_330);
    }

    if (param0->unk_180 != 8) {
        if (Text_IsPrinterActive(param0->unk_180) != 0) {
            Text_RemovePrinter(param0->unk_180);
            param0->unk_180 = 8;
        }
    }

    Window_Add(param0->unk_15C, &param0->unk_330, 2, 2, 19, 27, 4, 12, ((512 - (18 + 12)) - 73) - (27 * 4));

    if (param2) {
        MessageLoader_GetStrbuf(param0->unk_16C, param1, param0->unk_170);
    } else {
        MessageLoader_GetStrbuf(param0->unk_168, param1, param0->unk_170);
    }

    StringTemplate_Format(param0->unk_164, param0->unk_174, param0->unk_170);
    Window_FillTilemap(&param0->unk_330, 15);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_330, 1, 512 - (18 + 12), 10);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);

    param0->unk_180 = Text_AddPrinterWithParams(&param0->unk_330, FONT_MESSAGE, param0->unk_174, 0, 0, v0, NULL);

    Window_ScheduleCopyToVRAM(&param0->unk_330);
}

static void ov65_02232CA8(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    ov65_02232F50(param0);

    if (Window_IsInUse(&param0->unk_360)) {
        Window_EraseMessageBox(&param0->unk_360, 0);
        Window_Remove(&param0->unk_360);
    }

    if (Window_IsInUse(&param0->unk_330)) {
        Window_EraseMessageBox(&param0->unk_330, 0);
        Window_Remove(&param0->unk_330);
    }

    if (param0->unk_180 != 8) {
        if (Text_IsPrinterActive(param0->unk_180) != 0) {
            Text_RemovePrinter(param0->unk_180);
            param0->unk_180 = 8;
        }
    }

    Window_Add(param0->unk_15C, &param0->unk_360, 2, 4, 4, 23, 16, 12, ((512 - (18 + 12)) - 9) - (23 * 16));
    MessageLoader_GetStrbuf(param0->unk_16C, param1, param0->unk_170);
    StringTemplate_Format(param0->unk_164, param0->unk_174, param0->unk_170);

    Window_FillTilemap(&param0->unk_360, 15);
    Window_DrawStandardFrame(&param0->unk_360, 1, (512 - (18 + 12)) - 9, 11);

    param0->unk_180 = Text_AddPrinterWithParams(&param0->unk_360, 1, param0->unk_174, 0, 0, 0xff, NULL);
    Window_ScheduleCopyToVRAM(&param0->unk_360);
}

static void ov65_02232DC0(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (param1 != -1) {
        TrainerInfo *v0 = TrainerInfo_New(HEAP_ID_54);

        TrainerInfo_SetName(v0, sub_0202AEF0(param0->unk_00, param1));
        StringTemplate_SetPlayerName(param0->unk_164, 0, v0);
        Heap_Free(v0);
    }
}

static void ov65_02232DFC(UnkStruct_ov65_0222EBE0 *param0)
{
    ov65_02232F50(param0);

    if (param0->unk_180 != 8) {
        if (Text_IsPrinterActive(param0->unk_180) != 0) {
            Text_RemovePrinter(param0->unk_180);
            param0->unk_180 = 8;
        }
    }

    if (Window_IsInUse(&param0->unk_330)) {
        Window_EraseMessageBox(&param0->unk_330, 0);
        Window_Remove(&param0->unk_330);
    }
}

static void ov65_02232E58(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    ov65_02232E70(param0, param1);
    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
}

static void ov65_02232E70(UnkStruct_ov65_0222EBE0 *param0, int param1)
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
            Sound_FadeOutBGM(0, 30);
        } else if (param1 == 16) {
            ov4_021D2584(0);

            if (ov65_02231A54() == 1) {
                Sound_FadeInBGM(120, 30, BGM_FADE_IN_TYPE_FROM_CURRENT);
            }
        }
    }

    ov65_0222FD70(param0);
}

static BOOL ov65_02232EDC(UnkStruct_ov65_0222EBE0 *param0)
{
    param0->unk_04->unk_00.unk_21 = 1 - param0->unk_04->unk_00.unk_21;

    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
    return param0->unk_04->unk_00.unk_21;
}

static BOOL ov65_02232F00(UnkStruct_ov65_0222EBE0 *param0)
{
    param0->unk_04->unk_00.unk_22 = 1 - param0->unk_04->unk_00.unk_22;
    param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;

    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
    return param0->unk_04->unk_00.unk_22;
}

static BOOL ov65_02232F30(UnkStruct_ov65_0222EBE0 *param0)
{
    param0->unk_04->unk_00.unk_21 = param0->unk_04->unk_00.unk_22;

    ov4_021D222C(&(param0->unk_04->unk_00), sizeof(UnkStruct_0207E060));
    return param0->unk_04->unk_00.unk_22;
}

static void ov65_02232F50(UnkStruct_ov65_0222EBE0 *param0)
{
    if (param0->unk_188) {
        DestroyWaitDialTaskOnly(param0->unk_188);

        param0->unk_188 = NULL;

        if (Window_IsInUse(&param0->unk_330)) {
            Window_EraseMessageBox(&param0->unk_330, 0);
            Window_Remove(&param0->unk_330);
        }
    }
}

static void ov65_02232F90(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
{
    ov65_0223324C(param0);
    ov65_02235370(&param0->unk_3EC);
    ov65_022336A4(param0, heapID);
}

static void ov65_02232FB0(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 heapID)
{
    if (ov65_02233240(param0) == param1) {
        ov65_02232F90(param0, heapID);
    }
}

static BOOL ov65_02232FCC(const UnkStruct_ov65_0222EBE0 *param0)
{
    if (param0->unk_BE0.unk_4C == NULL) {
        return 0;
    }

    return 1;
}

static void ov65_02232FE0(UnkStruct_ov65_0222EBE0 *param0, NARC *param1, u32 heapID)
{
    static const TouchScreenHitTable v0[8] = {
        { 0, 47, 0, 119 },
        { 48, 95, 0, 119 },
        { 96, 143, 0, 119 },
        { 144, 191, 0, 119 },
        { 0, 47, 128, 255 },
        { 48, 95, 128, 255 },
        { 96, 143, 128, 255 },
        { 144, 191, 128, 255 }
    };

    memset(&param0->unk_BE0, 0, sizeof(UnkStruct_ov65_02234E50));

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);

    param0->unk_BE0.unk_4C = TouchScreenActions_RegisterHandler(v0, 8, ov65_022332C4, param0, heapID);
    param0->unk_BE0.unk_00 = StringTemplate_Default(heapID);

    ov65_022332FC(param0, param1, heapID);

    param0->unk_BE0.unk_78 = 1;

    ov65_022336D4(param0);
    ov65_0223370C(param0);
}

static void ov65_02233068(UnkStruct_ov65_0222EBE0 *param0)
{
    if (ov65_02232FCC(param0) == 0) {
        return;
    }

    ov65_02233570(param0);

    TouchScreenActions_Free(param0->unk_BE0.unk_4C);
    param0->unk_BE0.unk_4C = NULL;

    StringTemplate_Free(param0->unk_BE0.unk_00);
    param0->unk_BE0.unk_00 = NULL;

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
}

static u32 ov65_022330C0(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
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

            Sound_PlayEffect(SEQ_SE_DP_SELECT5);
            ov65_022336D4(param0);

            param0->unk_BE0.unk_75 = 1;
            param0->unk_BE0.unk_78 = 1;
        }
    }

    if (param0->unk_BE0.unk_73 == 1) {
        param0->unk_BE0.unk_73 = 2;
        param0->unk_BE0.unk_74 = 0;

        ov65_02233874(param0, heapID);
        ov65_02234D6C(param0);
    }

    if (param0->unk_BE0.unk_73 == 0) {
        TouchScreenActions_HandleAction(param0->unk_BE0.unk_4C);
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
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        } else {
            if (v2 != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov65_0223327C(param0, v2);
                ov65_02233874(param0, heapID);
            }
        }
    }

    return param0->unk_BE0.unk_71;
}

static void ov65_022331E0(UnkStruct_ov65_0222EBE0 *param0)
{
    if (param0->unk_BE0.unk_73 == 0) {
        if (param0->unk_BE0.unk_75 == 1) {
            ov65_0223370C(param0);
            param0->unk_BE0.unk_75 = 0;
        }
    }
}

static BOOL ov65_02233208(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    if (param0->unk_BE0.unk_73 == 3) {
        return 0;
    }

    if ((gSystem.heldKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN)) || (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X)) || (param1 == 2)) {
        return 1;
    }

    return 0;
}

static u32 ov65_02233240(const UnkStruct_ov65_0222EBE0 *param0)
{
    return param0->unk_BE0.unk_71;
}

static void ov65_0223324C(UnkStruct_ov65_0222EBE0 *param0)
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

static void ov65_0223327C(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
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

static void ov65_022332C4(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov65_0222EBE0 *v0 = param2;
    u32 v1 = (v0->unk_BE0.unk_70 * 8) + param0;
    v1++;

    if (v0->unk_BE0.unk_50[v1 - 1] != 2) {
        return;
    }

    if (v0->unk_BE0.unk_71 != 0) {
        return;
    }

    switch (param1) {
    case TOUCH_BUTTON_PRESSED:
        v0->unk_BE0.unk_71 = v1;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    default:
        break;
    }
}

static void ov65_022332FC(UnkStruct_ov65_0222EBE0 *param0, NARC *param1, u32 heapID)
{
    int v0, v1;
    int v2, v3;

    Bg_ClearTilemap(param0->unk_15C, BG_LAYER_SUB_0);
    Graphics_LoadPaletteFromOpenNARC(param1, 16, 4, 0 * 32, 4 * 32, heapID);
    Graphics_LoadPaletteFromOpenNARC(param1, 19, 4, 4 * 32, 5 * 32, heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 15, param0->unk_15C, 4, 0, 0, 0, heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 18, param0->unk_15C, 6, 0 + 48, 0, 0, heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 17, param0->unk_15C, 4, 0, 0, 0, heapID);

    param0->unk_BE0.unk_04 = Graphics_GetScrnDataFromOpenNARC(param1, 20, 0, &param0->unk_BE0.unk_08, heapID);

    ov65_022335F8(param0->unk_BE0.unk_08, 0 + 48);

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_BE0.unk_0C[v0] = Graphics_GetScrnDataFromOpenNARC(param1, 21 + v0, 0, &param0->unk_BE0.unk_28[v0], heapID);
        ov65_022335F8(param0->unk_BE0.unk_28[v0], 0 + 48);
    }

    param0->unk_BE0.unk_44 = Graphics_GetScrnDataFromOpenNARC(param1, 28, 0, &param0->unk_BE0.unk_48, heapID);

    ov65_022335F8(param0->unk_BE0.unk_48, 0 + 48);
    Font_LoadScreenIndicatorsPalette(4, 15 * 32, heapID);

    for (v0 = 0; v0 < 8; v0++) {
        v2 = v0 / 4;
        v3 = v0 % 4;

        Window_Init(&param0->unk_BE0.unk_7C[v0]);
        Window_Add(param0->unk_15C, &param0->unk_BE0.unk_7C[v0], 5, 4 + (16 * v2), 1 + (6 * v3), 9, 3, 15, 1 + ((9 * 3) * v0));
        Window_FillTilemap(&param0->unk_BE0.unk_7C[v0], 0);
        Window_ScheduleCopyToVRAM(&param0->unk_BE0.unk_7C[v0]);

        for (v1 = 0; v1 < 2; v1++) {
            Window_Init(&param0->unk_BE0.unk_FC[v0][v1]);
            Window_Add(param0->unk_15C, &param0->unk_BE0.unk_FC[v0][v1], 5, 1 + (16 * v2) + (v1 * 12), 1 + (6 * v3), 2, 3, 13, ((((9 * 3) * 8) + 1) + 1) + ((2 * 3) * ((v0 * 2) + v1)));
            Window_FillTilemap(&param0->unk_BE0.unk_FC[v0][v1], 0);
            Window_ScheduleCopyToVRAM(&param0->unk_BE0.unk_FC[v0][v1]);
        }
    }

    Window_Add(param0->unk_15C, &param0->unk_BE0.unk_1FC, 7, 1, 1, 30, 21, 15, 1);
    Window_FillTilemap(&param0->unk_BE0.unk_1FC, 0);
    Window_ScheduleCopyToVRAM(&param0->unk_BE0.unk_1FC);

    ov65_02234A68(param0, param1, heapID);
}

static void ov65_02233570(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0, v1;

    ov65_02234CFC(param0);

    for (v0 = 0; v0 < 8; v0++) {
        Window_Remove(&param0->unk_BE0.unk_7C[v0]);

        for (v1 = 0; v1 < 2; v1++) {
            Window_Remove(&param0->unk_BE0.unk_FC[v0][v1]);
        }
    }

    Window_Remove(&param0->unk_BE0.unk_1FC);
    Heap_Free(param0->unk_BE0.unk_04);

    for (v0 = 0; v0 < 7; v0++) {
        Heap_Free(param0->unk_BE0.unk_0C[v0]);
    }

    Heap_Free(param0->unk_BE0.unk_44);
}

static void ov65_022335F8(NNSG2dScreenData *param0, u8 param1)
{
    u16 *v0;
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

static void ov65_02233638(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 param2)
{
    GF_ASSERT(param1 > 0);
    GF_ASSERT(param2 > 0);
    GF_ASSERT(param2 < 3);

    param0->unk_BE0.unk_50[param1 - 1] = param2;
    param0->unk_BE0.unk_75 = 1;
}

static void ov65_0223366C(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    GF_ASSERT(param1 > 0);

    param0->unk_BE0.unk_50[param1 - 1] = 0;
    param0->unk_BE0.unk_75 = 1;
}

static u32 ov65_0223368C(const UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    GF_ASSERT(param1 > 0);
    return param0->unk_BE0.unk_50[param1 - 1];
}

static void ov65_022336A4(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
{
    if (param0->unk_BE0.unk_73 != 0) {
        ov65_02233874(param0, heapID);
    } else {
        param0->unk_BE0.unk_78 = 1;
        ov65_0223370C(param0);
    }
}

static void ov65_022336C4(UnkStruct_ov65_0222EBE0 *param0)
{
    param0->unk_BE0.unk_78 = 1;
    param0->unk_BE0.unk_75 = 1;
}

static void ov65_022336D4(UnkStruct_ov65_0222EBE0 *param0)
{
    Bg_ChangeTilemapRectPalette(param0->unk_15C, 4, 0, 0, 32, 24, param0->unk_BE0.unk_70 + 0);
    Bg_ScheduleTilemapTransfer(param0->unk_15C, 4);
}

static void ov65_0223370C(UnkStruct_ov65_0222EBE0 *param0)
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
        Bg_FillTilemapRect(param0->unk_15C, 6, 0, 0, 0, 32, 24, 0);
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
                Window_FillTilemap(&param0->unk_BE0.unk_7C[v0], 0);
                Window_ScheduleCopyToVRAM(&param0->unk_BE0.unk_7C[v0]);

                for (v1 = 0; v1 < 2; v1++) {
                    Window_FillTilemap(&param0->unk_BE0.unk_FC[v0][v1], 0);
                    Window_ScheduleCopyToVRAM(&param0->unk_BE0.unk_FC[v0][v1]);
                }
            }
        }
    }

    Bg_ScheduleTilemapTransfer(param0->unk_15C, 6);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
}

static void ov65_02233874(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
{
    static void (*v0[7])(UnkStruct_ov65_0222EBE0 *, u32) = {
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

    Bg_LoadTilemapBuffer(param0->unk_15C, 6, param0->unk_BE0.unk_28[param0->unk_BE0.unk_74]->rawData, param0->unk_BE0.unk_28[param0->unk_BE0.unk_74]->szByte);
    Bg_ChangeTilemapRectPalette(param0->unk_15C, 6, 0, 0, 32, 24, v2);
    Bg_ClearTilemap(param0->unk_15C, BG_LAYER_SUB_3);

    if (ov65_0222DCE0(param0) == 0) {
        ov65_02234628(param0);
    }

    Window_FillTilemap(&param0->unk_BE0.unk_1FC, 0x0);

    v0[param0->unk_BE0.unk_74](param0, heapID);

    Bg_ScheduleTilemapTransfer(param0->unk_15C, 6);
    Window_ScheduleCopyToVRAM(&param0->unk_BE0.unk_1FC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void ov65_02233940(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    int v0 = param0->unk_BE0.unk_71 - 1;
    TextColor color;

    if (sub_0202AD2C(param0->unk_00, v0, 8) == 0) {
        color = TEXT_COLOR(5, 6, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    ov65_02234F68(param0, v0);
    MessageLoader_GetStrbuf(param0->unk_168, 42, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_MESSAGE, param0->unk_178, 32, 8, TEXT_SPEED_NO_TRANSFER, color, NULL);

    UnkStruct_0207E060 *v2 = ov65_02234FA8(param0, v0);
    u32 v3 = ov65_0222DD20(param0, v2);
    MessageLoader_GetStrbuf(param0->unk_168, ov65_0223484C(v3, &color), param0->unk_170);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_170, 104, 8, TEXT_SPEED_NO_TRANSFER, color, NULL);

    TrainerInfo *trainerInfo = TrainerInfo_New(HEAP_ID_54);
    TrainerInfo_SetName(trainerInfo, sub_0202AF34(param0->unk_00, v0));
    StringTemplate_SetPlayerName(param0->unk_BE0.unk_00, 0, trainerInfo);
    Heap_Free(trainerInfo);
    MessageLoader_GetStrbuf(param0->unk_168, 43, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetStrbuf(param0->unk_168, 150, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
    u32 xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetStrbuf(param0->unk_168, 44, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 56, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, sub_0202AD2C(param0->unk_00, v0, 1), 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(param0->unk_168, 45, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 120, 56, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, sub_0202AD2C(param0->unk_00, v0, 2), 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(param0->unk_168, 46, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
    xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 56, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetStrbuf(param0->unk_168, 47, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, sub_0202AD2C(param0->unk_00, v0, 3), 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(param0->unk_168, 48, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
    xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    if (ov65_0222DCF8(param0) == TRUE) {
        MessageLoader_GetStrbuf(param0->unk_168, 49, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 104, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

        StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, sub_0202AD2C(param0->unk_00, v0, 9), 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        MessageLoader_GetStrbuf(param0->unk_168, 50, param0->unk_170);
        StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
        xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 104, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    MessageLoader_GetStrbuf(param0->unk_168, 51, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 128, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    u32 v4 = sub_0202AD2C(param0->unk_00, v0, 6);
    if (v4 != 0) {
        StringTemplate_SetNumber(param0->unk_BE0.unk_00, 2, v4, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, sub_0202AD2C(param0->unk_00, v0, 4), 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_SetMonthName(param0->unk_BE0.unk_00, 1, sub_0202AD2C(param0->unk_00, v0, 5));
        MessageLoader_GetStrbuf(param0->unk_168, 74, param0->unk_170);
        StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);
        xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 128, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    ov65_0222EA38(param0->unk_15C, &param0->unk_BD0, 6, 2, 2, v3);

    int v5;

    if (v2->unk_21) {
        v5 = 8;
    } else {
        v5 = 1;
    }

    ov65_0222E9C0(param0->unk_15C, &param0->unk_BD0, 6, 28, 2, v5, 0);
}

static void ov65_02233E20(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    int v0 = param0->unk_BE0.unk_71 - 1;

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

static void ov65_02233EF0(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    int v0 = param0->unk_BE0.unk_71 - 1;

    MessageLoader_GetStrbuf(param0->unk_168, 53, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    MessageLoader_GetStrbuf(param0->unk_168, 60, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetStrbuf(param0->unk_168, 62, param0->unk_178);
    u32 xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    ov65_022346C4(param0, param0->unk_178, 1, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    ov65_02234694(param0, 65, 115, v0, 104, 48);
    ov65_02234694(param0, 66, 117, v0, 212, 48);

    MessageLoader_GetStrbuf(param0->unk_168, 59, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 64, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    ov65_02234694(param0, 65, 114, v0, 104, 64);
    ov65_02234694(param0, 66, 116, v0, 212, 64);

    MessageLoader_GetStrbuf(param0->unk_168, 61, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 88, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetStrbuf(param0->unk_168, 62, param0->unk_178);
    xOffset = 232 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, xOffset, 88, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    ov65_022346C4(param0, param0->unk_178, 2, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 112, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    ov65_02234694(param0, 65, 119, v0, 104, 112);
    ov65_02234694(param0, 66, 121, v0, 212, 112);

    MessageLoader_GetStrbuf(param0->unk_168, 59, param0->unk_178);
    Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 128, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    ov65_02234694(param0, 65, 118, v0, 104, 128);
    ov65_02234694(param0, 66, 120, v0, 212, 128);
}

static void ov65_0223416C(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    int v0 = param0->unk_BE0.unk_71 - 1;

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

static void ov65_022342A8(UnkStruct_ov65_0222EBE0 *param0, u32 heapID)
{
    int v0;
    int v1;
    BattleFrontier *frontier;
    Strbuf *v3;

    frontier = SaveData_GetBattleFrontier(param0->saveData);
    v0 = param0->unk_BE0.unk_71 - 1;

    {
        MessageLoader_GetStrbuf(param0->unk_168, 55, param0->unk_178);
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

        v1 = sub_02030698(frontier, 124, v0);
        v3 = MessageUtil_SpeciesName(v1, heapID);

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

static void ov65_022343CC(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    int v0 = param0->unk_BE0.unk_71 - 1;

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

static void ov65_0223449C(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    int v0;
    WiFiList *v1 = SaveData_GetWiFiList(param0->saveData);

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

static void ov65_02234628(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;
    int v1 = 7 - 2;

    for (v0 = 0; v0 < v1; v0++) {
        Bg_CopyToTilemapRect(param0->unk_15C, 6, 0x1a + (0x1 * v0), 0, 0x1, 0x1, param0->unk_BE0.unk_48->rawData, 0, 0, param0->unk_BE0.unk_48->screenWidth / 8, param0->unk_BE0.unk_48->screenHeight / 8);
    }

    Bg_ChangeTilemapRectPalette(param0->unk_15C, 6, 0x1a, 0, 0x1 * v1, 0x1, 4 + 2);
}

static void ov65_02234694(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    int v0;
    BattleFrontier *frontier = SaveData_GetBattleFrontier(param0->saveData);
    v0 = sub_02030698(frontier, param2, param3);

    ov65_02234708(param0, param1, v0, param4, param5);
}

static void ov65_022346C4(UnkStruct_ov65_0222EBE0 *param0, Strbuf *param1, u32 param2, u32 param3)
{
    BattleFrontier *frontier;
    BOOL v1;
    u32 v2;
    static const u32 v3[6] = {
        100,
        102,
        104,
        108,
        106,
        110,
    };

    GF_ASSERT(param2 < 6);

    frontier = SaveData_GetBattleFrontier(param0->saveData);
    v1 = sub_02030698(frontier, v3[param2], param3);

    if (v1 == 0) {
        v2 = 57;
    } else {
        v2 = 58;
    }

    MessageLoader_GetStrbuf(param0->unk_168, v2, param1);
}

static void ov65_02234708(UnkStruct_ov65_0222EBE0 *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    StringTemplate_SetNumber(param0->unk_BE0.unk_00, 0, param2, 4, 1, 1);
    MessageLoader_GetStrbuf(param0->unk_168, param1, param0->unk_170);
    StringTemplate_Format(param0->unk_BE0.unk_00, param0->unk_178, param0->unk_170);

    {
        u32 v0 = param3 - (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0) + 1) / 2;
        Text_AddPrinterWithParamsAndColor(&param0->unk_BE0.unk_1FC, FONT_SYSTEM, param0->unk_178, v0, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

static void ov65_02234788(UnkStruct_ov65_0222EBE0 *param0, u8 param1, u8 param2, u8 param3, u8 param4)
{
    u16 v0, v1;
    u16 *v2;

    GF_ASSERT(param4 < 4);

    if (param4 == 3) {
        param4 = 1;
    }

    if (param4 < 2) {
        v0 = 16 * param4;
        v1 = 6 * param3;

        Bg_CopyToTilemapRect(param0->unk_15C, 6, param1, param2, 16, 6, param0->unk_BE0.unk_08->rawData, v0, v1, 32, 18);
    } else {
        v0 = 0;
        v1 = 6 * param3;
        v2 = (u16 *)param0->unk_BE0.unk_08->rawData;

        Bg_CopyToTilemapRect(param0->unk_15C, 6, param1, param2, 16, 6, &v2[32 * 18], v0, v1, 16, 18);
    }

    Bg_ChangeTilemapRectPalette(param0->unk_15C, 6, param1, param2, 16, 6, param3 + 4);
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

static void ov65_02234900(UnkStruct_ov65_0222EBE0 *param0, Window *param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    TextColor v1;
    int v2;

    Window_FillTilemap(param1, 0);

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
    Window_ScheduleCopyToVRAM(param1);
}

static void ov65_0223498C(UnkStruct_ov65_0222EBE0 *param0, Window *param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_0207E060 *v3;
    u32 v4;

    v3 = ov65_02234FA8(param0, param2 - 1);
    v4 = ov65_0222DD20(param0, v3);
    v0 = Unk_ov65_02238934[param3];

    for (v1 = 0; v1 < 2; v1++) {
        Window_FillTilemap(&param1[v1], 0);

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

        Window_ScheduleCopyToVRAM(&param1[v1]);
    }
}

static void ov65_02234A10(UnkStruct_ov65_0222EBE0 *param0)
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

static void ov65_02234A68(UnkStruct_ov65_0222EBE0 *param0, NARC *param1, u32 heapID)
{
    BOOL v0;
    int v1;
    SpriteResourcesHeader v2;
    Window v3;
    Strbuf *v4;
    UnkStruct_02012B20 *v5;
    int v6;
    UnkStruct_020127E8 v7;
    u32 v8;
    AffineSpriteListTemplate v9[3] = {
        { NULL,
            NULL,
            { FX32_CONST(40), FX32_CONST(172) + (256 * FX32_ONE), 0 },
            { FX32_ONE, FX32_ONE, FX32_ONE },
            0,
            128,
            NNS_G2D_VRAM_TYPE_2DSUB,
            0 },
        { NULL,
            NULL,
            { FX32_CONST(128), FX32_CONST(172) + (256 * FX32_ONE), 0 },
            { FX32_ONE, FX32_ONE, FX32_ONE },
            0,
            128,
            NNS_G2D_VRAM_TYPE_2DSUB,
            0 },
        { NULL,
            NULL,
            { FX32_CONST(224), FX32_CONST(172) + (256 * FX32_ONE), 0 },
            { FX32_ONE, FX32_ONE, FX32_ONE },
            0,
            128,
            NNS_G2D_VRAM_TYPE_2DSUB,
            0 },
    };

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);

    param0->unk_BE0.unk_20C[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_31C[0], param1, 42, 0, 30, NNS_G2D_VRAM_TYPE_2DSUB, heapID);
    param0->unk_BE0.unk_20C[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_31C[1], param1, 43, 0, 30, NNS_G2D_VRAM_TYPE_2DSUB, 8, heapID);
    param0->unk_BE0.unk_20C[2] = SpriteResourceCollection_AddFrom(param0->unk_31C[2], param1, 40, 0, 30, 2, heapID);
    param0->unk_BE0.unk_20C[3] = SpriteResourceCollection_AddFrom(param0->unk_31C[3], param1, 41, 0, 30, 3, heapID);

    v0 = SpriteTransfer_RequestCharAtEndWithHardwareMappingType(param0->unk_BE0.unk_20C[0]);
    GF_ASSERT(v0);

    v0 = SpriteTransfer_RequestPlttFreeSpace(param0->unk_BE0.unk_20C[1]);
    GF_ASSERT(v0);

    SpriteResource_ReleaseData(param0->unk_BE0.unk_20C[0]);
    SpriteResource_ReleaseData(param0->unk_BE0.unk_20C[1]);
    SpriteResourcesHeader_Init(&v2, 30, 30, 30, 30, 0xffffffff, 0xffffffff, 0, 0, param0->unk_31C[0], param0->unk_31C[1], param0->unk_31C[2], param0->unk_31C[3], NULL, NULL);

    for (v1 = 0; v1 < 3; v1++) {
        v9[v1].list = param0->unk_18C;
        v9[v1].resourceData = &v2;
        v9[v1].heapID = heapID;

        param0->unk_BE0.unk_21C[v1] = SpriteList_AddAffine(&v9[v1]);

        Sprite_SetAnim(param0->unk_BE0.unk_21C[v1], Unk_ov65_02238930[v1]);
    }

    Font_InitManager(FONT_SUBSCREEN, heapID);
    Window_Init(&v3);
    Window_AddToTopLeftCorner(param0->unk_15C, &v3, 8, 2, 0, 0);

    v4 = Strbuf_Init(64, heapID);
    MessageLoader_GetStrbuf(param0->unk_168, 73, v4);

    {
        v8 = -((Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_178, 0) + 1) / 2);
        Text_AddPrinterWithParamsAndColor(&v3, FONT_SUBSCREEN, v4, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(v4);

    v5 = sub_02012B20(&v3, heapID);
    v6 = sub_02012B58(v5, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = CharTransfer_AllocRange(v6, 1, NNS_G2D_VRAM_TYPE_2DSUB, &param0->unk_BE0.unk_228);

    GF_ASSERT(v0);

    v7.unk_00 = param0->unk_32C;
    v7.unk_04 = &v3;
    v7.unk_08 = param0->unk_18C;
    v7.unk_0C = SpriteTransfer_GetPaletteProxy(param0->unk_BE0.unk_20C[1], NULL);
    v7.unk_10 = param0->unk_BE0.unk_21C[1];
    v7.unk_14 = param0->unk_BE0.unk_228.offset;
    v7.unk_18 = v8;
    v7.unk_1C = -8;
    v7.unk_20 = 0;
    v7.unk_24 = 0;
    v7.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v7.heapID = heapID;

    param0->unk_BE0.unk_234 = sub_02012B60(&v7, v5);

    sub_02012B48(v5);
    Window_Remove(&v3);
    Font_Free(FONT_SUBSCREEN);

    param0->unk_BE0.unk_244 = TouchScreenActions_RegisterHandler(Unk_ov65_0223895C, 3, ov65_02234E40, param0, heapID);
}

static void ov65_02234CFC(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;

    TouchScreenActions_Free(param0->unk_BE0.unk_244);
    sub_02012BD8(param0->unk_BE0.unk_234);
    CharTransfer_ClearRange(&param0->unk_BE0.unk_228);

    for (v0 = 0; v0 < 3; v0++) {
        Sprite_Delete(param0->unk_BE0.unk_21C[v0]);
    }

    SpriteTransfer_ResetCharTransfer(param0->unk_BE0.unk_20C[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_BE0.unk_20C[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Remove(param0->unk_31C[v0], param0->unk_BE0.unk_20C[v0]);
    }
}

static void ov65_02234D6C(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;

    param0->unk_BE0.unk_238 = 1;
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    param0->unk_BE0.unk_23C = 0;

    for (v0 = 0; v0 < 3; v0++) {
        ov65_02234E50(&param0->unk_BE0, v0);
    }
}

static void ov65_02234DA0(UnkStruct_ov65_0222EBE0 *param0)
{
    if (param0->unk_BE0.unk_238 == 2) {
        Sprite_SetDrawFlag(param0->unk_BE0.unk_21C[1], TRUE);
        sub_020129D0(param0->unk_BE0.unk_234, 1);
    }

    param0->unk_BE0.unk_238 = 0;

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static u32 ov65_02234DD8(UnkStruct_ov65_0222EBE0 *param0)
{
    int v0;
    BOOL v1;

    if (param0->unk_BE0.unk_238 == 0) {
        return 0;
    }

    param0->unk_BE0.unk_23C = 3;
    param0->unk_BE0.unk_240 = 0xff;

    TouchScreenActions_HandleAction(param0->unk_BE0.unk_244);

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

static void ov65_02234E40(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov65_0222EBE0 *v0 = param2;

    v0->unk_BE0.unk_23C = param0;
    v0->unk_BE0.unk_240 = param1;
}

static void ov65_02234E50(UnkStruct_ov65_02234E50 *param0, u32 param1)
{
    Sprite_SetAnim(param0->unk_21C[param1], Unk_ov65_02238930[param1]);
    Sprite_SetAnimFrame(param0->unk_21C[param1], 5 - 1);

    if (param1 == 1) {
        FontOAM_SetXY(param0->unk_234, -18, Unk_ov65_0223893C[0]);
    }
}

static BOOL ov65_02234E8C(UnkStruct_ov65_02234E50 *param0, u32 param1, u32 param2, u32 param3)
{
    BOOL v0 = 0;
    u32 v1;
    u32 v2;

    if (param2 == param1) {
        v1 = Sprite_GetAnimFrame(param0->unk_21C[param1]);

        if ((param3 == 0) || (param3 == 2)) {
            if (param3 == 0) {
                Sprite_SetAnim(param0->unk_21C[param1], Unk_ov65_0223892C[param1]);
            }

            if (v1 < 3) {
                Sprite_UpdateAnim(param0->unk_21C[param1], FX32_CONST(2));
                v1 = Sprite_GetAnimFrame(param0->unk_21C[param1]);

                if (param1 == 1) {
                    FontOAM_SetXY(param0->unk_234, -18, Unk_ov65_0223893C[v1]);
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
        v2 = Sprite_GetActiveAnim(param0->unk_21C[param1]);
        v1 = Sprite_GetAnimFrame(param0->unk_21C[param1]);

        if (v2 == Unk_ov65_0223892C[param1]) {
            Sprite_SetAnim(param0->unk_21C[param1], Unk_ov65_02238930[param1]);
            Sprite_SetAnimFrame(param0->unk_21C[param1], (5 - 1) - v1);
        }

        Sprite_UpdateAnim(param0->unk_21C[param1], FX32_CONST(2));
    }

    return v0;
}

static void ov65_02234F68(UnkStruct_ov65_0222EBE0 *param0, int param1)
{
    if (param1 != -1) {
        TrainerInfo *v0 = TrainerInfo_New(HEAP_ID_54);

        TrainerInfo_SetName(v0, sub_0202AEF0(param0->unk_00, param1));
        StringTemplate_SetPlayerName(param0->unk_BE0.unk_00, 0, v0);
        Heap_Free(v0);
    }
}

static UnkStruct_0207E060 *ov65_02234FA8(UnkStruct_ov65_0222EBE0 *param0, u32 param1)
{
    GF_ASSERT(param1 < 32);

    return &param0->unk_04->unk_24[param1];
}

static u8 ov65_02234FC4(int param0)
{
    return ov4_021D2234(param0);
}

static BOOL ov65_02234FCC(UnkStruct_ov65_0222EBE0 *param0, int param1, int param2)
{
    CommTool_Init(15);
    ov4_021D2584(param0->unk_04->unk_00.unk_21);

    if (ov65_0222DD64(param2) == 1) {
        ov4_021D2618(1, HEAP_ID_PARTY_MENU1);
    } else {
        ov4_021D2618(0, HEAP_ID_PARTY_MENU1);
    }

    sub_0209C3AC();

    return sub_020380A0(param1);
}

static void ov65_0223500C(UnkStruct_ov65_0222EBE0 *param0, BOOL param1)
{
    if (param0->unk_E28 == 0) {
        param0->unk_E28 = 1;
        ov65_02235378(&param0->unk_3EC, 1);

        if (param1 == 1) {
            ov65_02232B58(param0, 9, 0);
        }
    }
}

static void ov65_0223503C(UnkStruct_ov65_0222EBE0 *param0)
{
    if (param0->unk_E28 == 1) {
        param0->unk_E28 = 0;
        ov65_02232DFC(param0);
        ov65_02235378(&param0->unk_3EC, 0);
    }
}

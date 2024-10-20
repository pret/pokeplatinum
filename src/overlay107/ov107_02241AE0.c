#include "overlay107/ov107_02241AE0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay107/ov107_02249604.h"
#include "overlay107/ov107_02249B1C.h"
#include "overlay107/ov107_02249C98.h"
#include "overlay107/ov107_02249D14.h"
#include "overlay107/struct_ov107_02241D6C_decl.h"
#include "overlay107/struct_ov107_02249954.h"
#include "overlay107/struct_ov107_02249B8C_decl.h"

#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200C440.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_020302D0.h"
#include "unk_0203061C.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0205DFC4.h"
#include "unk_0208C098.h"
#include "unk_02096420.h"
#include "unk_0209BA80.h"

FS_EXTERN_OVERLAY(overlay104);

const u16 Unk_ov107_02249F84[] = {
	0xDD,
	0xD9,
	0x10F,
	0xFD,
	0x115,
	0x10D,
	0x11E,
	0x128,
	0x110,
	0x111,
	0xEC,
	0x102,
	0xD6,
	0xE6,
	0x113,
	0xEA,
	0xD5,
	0xE8,
	0x109,
	0x114,
	0xDC,
	0x129,
	0x11F,
	0x10A,
	0x10B,
	0x10C,
	0x10E
};

const u16 Unk_ov107_02249FBA[NELEMS(Unk_ov107_02249F84)] = {
	0xA,
	0xF,
	0x5,
	0xF,
	0xA,
	0xA,
	0xA,
	0xA,
	0xA,
	0xA,
	0xF,
	0xF,
	0x5,
	0xF,
	0xA,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14,
	0x14
};

const u16 Unk_ov107_0224A02C[] = {
	0x95,
	0x96,
	0x97,
	0x98,
	0x99,
	0x9C,
	0x9D,
	0x9E,
	0xC9,
	0xCA,
	0xCB,
	0xCC,
	0xCD,
	0xCE,
	0xCF,
	0xB8,
	0xB9,
	0xBA,
	0xBB,
	0xBC,
	0xBD,
	0xBE,
	0xBF,
	0xC0,
	0xC1,
	0xC2,
	0xC3,
	0xC4,
	0xC5,
	0xC6,
	0xC7,
	0xC8
};

const u16 Unk_ov107_0224A06C[NELEMS(Unk_ov107_0224A02C)] = {
	0x2,
	0x2,
	0x2,
	0x2,
	0x2,
	0x2,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5,
	0x5
};

const u16 Unk_ov107_02249E06[] = {
	0xC,
	0xC,
	NELEMS(Unk_ov107_02249F84)
};

const u16 Unk_ov107_02249E12[] = {
	0x8,
	0x8,
	NELEMS(Unk_ov107_0224A02C)
};


struct UnkStruct_ov107_02241D6C_t {
    OverlayManager * unk_00;
    UnkStruct_0203068C * unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E_0 : 1;
    u8 unk_0E_1 : 1;
    u8 unk_0E_2 : 1;
    u8 unk_0E_3 : 1;
    u8 unk_0E_4 : 1;
    u8 unk_0E_5 : 2;
    u8 unk_0E_7 : 1;
    u8 unk_0F;
    u16 unk_10;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    u16 unk_18;
    u16 unk_1A;
    MessageLoader * unk_1C;
    MessageLoader * unk_20;
    StringTemplate * unk_24;
    Strbuf* unk_28;
    Strbuf* unk_2C;
    Strbuf* unk_30[3];
    u16 unk_3C[8];
    BGL * unk_4C;
    Window unk_50[18];
    UnkStruct_02081CF4 unk_170;
    UIControlData * unk_17C;
    ResourceMetadata unk_180[3];
    BmpList * unk_198;
    ResourceMetadata * unk_19C;
    UnkStruct_ov84_02240FA8 unk_1A0;
    PaletteData * unk_1C0;
    UnkStruct_0200C440 * unk_1C4;
    Options * unk_1C8;
    SaveData * unk_1CC;
    UnkStruct_020302DC * unk_1D0;
    UnkStruct_0203041C * unk_1D4;
    UnkStruct_ov107_02249954 unk_1D8;
    UnkStruct_ov107_02249B8C * unk_3E8;
    UnkStruct_ov107_02249B8C * unk_3EC;
    UnkStruct_ov107_02249B8C * unk_3F0;
    UnkStruct_ov107_02249B8C * unk_3F4[4];
    UnkStruct_ov107_02249B8C * unk_404[4];
    UnkStruct_ov107_02249B8C * unk_414;
    UnkStruct_ov107_02249B8C * unk_418;
    UnkStruct_ov107_02249B8C * unk_41C;
    UnkStruct_ov107_02249B8C * unk_420[4];
    UnkStruct_ov107_02249B8C * unk_430;
    UnkStruct_ov107_02249B8C * unk_434;
    u16 * unk_438;
    Party * unk_43C;
    NARC * unk_440;
    u16 unk_444[40];
    u8 unk_494;
    u8 unk_495;
    u8 unk_496;
    u8 unk_497[3];
    u16 unk_49A;
    u32 unk_49C;
};

int ov107_02241AE0(OverlayManager * param0, int * param1);
int ov107_02241BD4(OverlayManager * param0, int * param1);
int ov107_02241D2C(OverlayManager * param0, int * param1);
static BOOL ov107_02241D6C(UnkStruct_ov107_02241D6C * param0);
static void ov107_02241E70(UnkStruct_ov107_02241D6C * param0);
static BOOL ov107_02241EC8(UnkStruct_ov107_02241D6C * param0);
static BOOL ov107_02242C64(UnkStruct_ov107_02241D6C * param0);
static BOOL ov107_02242D60(UnkStruct_ov107_02241D6C * param0);
static BOOL ov107_02242DCC(UnkStruct_ov107_02241D6C * param0);
static void ov107_02242E14(UnkStruct_ov107_02241D6C * param0);
static void ov107_02242F24(void);
static void ov107_02242F5C(UnkStruct_ov107_02241D6C * param0);
static void ov107_02243384(UnkStruct_ov107_02241D6C * param0);
static void ov107_02243324(UnkStruct_ov107_02241D6C * param0);
static void ov107_022433A8(BGL * param0);
static void ov107_022433EC(void * param0);
static void ov107_02243424(void);
static void ov107_02243444(BGL * param0);
static void ov107_02243588(UnkStruct_ov107_02241D6C * param0, u32 param1);
static void ov107_022435FC(void);
static void ov107_02243630(UnkStruct_ov107_02241D6C * param0, u32 param1);
static void ov107_022436AC(UnkStruct_ov107_02241D6C * param0, u32 param1);
static void ov107_022436F4(UnkStruct_ov107_02241D6C * param0, u32 param1);
static void ov107_02243678(void);
static void ov107_0224373C(UnkStruct_ov107_02241D6C * param0, u32 param1);
static u8 ov107_0224379C(UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_022437CC(UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10);
static u8 ov107_02243860(UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9);
static u8 ov107_02243890(UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10);
static u8 ov107_02243918(UnkStruct_ov107_02241D6C * param0, int param1, u8 param2);
static void ov107_02243950(UnkStruct_ov107_02241D6C * param0, Window * param1, Pokemon * param2);
static void ov107_02243B5C(UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u16 param3, u16 param4, int param5);
static void ov107_02243B84(UnkStruct_ov107_02241D6C * param0, Window * param1, Pokemon * param2);
static void ov107_02243C18(UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u32 param3, u32 param4, Pokemon * param5, u32 param6, u32 param7, u32 param8);
static void ov107_02243CC0(UnkStruct_ov107_02241D6C * param0, Window * param1);
static void ov107_02243CFC(UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u8 param3);
static void ov107_02243DB0(UnkStruct_ov107_02241D6C * param0, Window * param1);
static void ov107_02243DE4(UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u8 param3);
static void ov107_02243E74(UnkStruct_ov107_02241D6C * param0, Window * param1);
static void ov107_02243F4C(UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u32 param3);
static void ov107_02243FA4(UnkStruct_ov107_02241D6C * param0);
static void ov107_0224400C(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244018(UnkStruct_ov107_02241D6C * param0);
static void ov107_0224403C(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244064(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244094(UnkStruct_ov107_02241D6C * param0);
static void ov107_0224409C(UnkStruct_ov107_02241D6C * param0);
static void ov107_022440C0(UnkStruct_ov107_02241D6C * param0);
static void ov107_022440C8(UnkStruct_ov107_02241D6C * param0, u8 param1);
static void ov107_02244120(UnkStruct_ov107_02241D6C * param0);
static void ov107_0224414C(UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2);
static void ov107_022441B0(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2, int param3);
static void ov107_022441DC(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244240(UnkStruct_ov107_02241D6C * param0, u8 param1);
static void ov107_0224440C(BmpList * param0, u32 param1, u8 param2);
static void ov107_02244560(BmpList * param0, u32 param1, u8 param2);
static void ov107_022445C4(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244690(BmpList * param0, u32 param1, u8 param2);
static void ov107_02244708(BmpList * param0, u32 param1, u8 param2);
static void ov107_02244780(UnkStruct_ov107_02241D6C * param0);
static void ov107_0224486C(BmpList * param0, u32 param1, u8 param2);
static void ov107_022448E8(BmpList * param0, u32 param1, u8 param2);
static void ov107_02244944(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244A1C(BmpList * param0, u32 param1, u8 param2);
static void ov107_02244A74(UnkStruct_ov107_02241D6C * param0, u32 param1, s32 param2, u32 param3, int param4);
static void ov107_02244A8C(UnkStruct_ov107_02241D6C * param0, u32 param1, BoxPokemon * param2);
static void ov107_02244A98(UnkStruct_ov107_02241D6C * param0, u32 param1);
static void ov107_02244AB4(UnkStruct_ov107_02241D6C * param0, Window * param1, u32 param2, u32 param3, u8 param4);
static void ov107_02244B24(UnkStruct_ov107_02241D6C * param0, Window * param1, u32 param2, u32 param3, u8 param4);
static void ov107_02244B8C(UnkStruct_ov107_02241D6C * param0, Window * param1, u32 param2, u32 param3, u8 param4, u8 param5);
static u8 ov107_02243EF8(UnkStruct_ov107_02241D6C * param0, Window * param1, u16 param2);
static void ov107_02244BD0(UnkStruct_ov107_02241D6C * param0, int * param1, int param2);
static void ov107_02244BD8(UnkStruct_ov107_02241D6C * param0, int param1);
static void ov107_02244C70(UnkStruct_ov107_02241D6C * param0);
static void ov107_02244CA0(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2);
static void ov107_02244D08(UnkStruct_ov107_02241D6C * param0, u32 * param1, u32 * param2, u8 param3);
static u16 ov107_02244D5C(UnkStruct_ov107_02241D6C * param0, u16 param1, u8 param2);
static u16 ov107_02244D90(u16 param0);
static u16 ov107_02244DE0(UnkStruct_ov107_02241D6C * param0, u16 param1, u8 param2);
static void ov107_02244E14(UnkStruct_ov107_02241D6C * param0, u16 * param1, u16 * param2, u16 * param3, u16 * param4);
static BOOL ov107_02244E44(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2);
static void ov107_0224503C(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2);
static u32 ov107_022450E8(UnkStruct_ov107_02241D6C * param0, u8 param1);
static u32 ov107_02245114(UnkStruct_ov107_02241D6C * param0, u8 param1);
static void ov107_02245140(UnkStruct_ov107_02241D6C * param0, s8 param1);
static void ov107_0224518C(UnkStruct_ov107_02241D6C * param0, s8 param1);
static void ov107_022451D8(UnkStruct_ov107_02241D6C * param0);
static BOOL ov107_02245210(Pokemon * param0);
static void ov107_02245288(Window * param0);
BOOL ov107_0224529C(UnkStruct_ov107_02241D6C * param0, u16 param1, u16 param2);
void ov107_022452F4(UnkStruct_ov107_02241D6C * param0, u16 param1);
void ov107_02245338(int param0, int param1, void * param2, void * param3);
void ov107_02245368(UnkStruct_ov107_02241D6C * param0, u16 param1, u16 param2);
void ov107_022453F8(UnkStruct_ov107_02241D6C * param0, u16 param1);
void ov107_02245408(int param0, int param1, void * param2, void * param3);
void ov107_0224542C(UnkStruct_ov107_02241D6C * param0);
void ov107_02245438(int param0, int param1, void * param2, void * param3);
static void ov107_02245454(Pokemon * param0, u16 param1);
static void ov107_02245464(UnkStruct_ov107_02241D6C * param0, Window * param1);
static void ov107_022454F8(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2);
static void ov107_022455A0(UnkStruct_ov107_02241D6C * param0, u8 param1, u16 param2);
static void ov107_02245618(UnkStruct_ov107_02241D6C * param0);
static void ov107_02245650(UnkStruct_ov107_02241D6C * param0, Window * param1);
static void ov107_02245660(UnkStruct_ov107_02241D6C * param0);
static void ov107_022456E4(UnkStruct_ov107_02241D6C * param0);
static void ov107_02245730(UnkStruct_ov107_02241D6C * param0);
static void ov107_02245780(UnkStruct_ov107_02241D6C * param0, Window * param1);
static void ov107_022459D0(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2);
static void ov107_02245B40(UnkStruct_ov107_02241D6C * param0, u8 param1);
static void ov107_02245B90(UnkStruct_ov107_02241D6C * param0, u8 param1);
static void ov107_02245BE0(UnkStruct_ov107_02241D6C * param0);
static void ov107_02245C00(UnkStruct_ov107_02241D6C * param0);
static void ov107_02245C94(UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2);
extern void ov107_2243860(void);

static const u16 Unk_ov107_02249E00[] = {
    0x22,
    0x23,
    0x24
};

static const u16 Unk_ov107_02249E0C[] = {
    0xA,
    0x8,
    0xC
};

static const u32 Unk_ov107_02249FF0[][3] = {
    {0x1, 0x13, 0x1},
    {0x2, 0x14, 0x2},
    {0x3, 0x15, 0x3},
    {0x1, 0x16, 0x4},
    {0x1, 0x17, 0xfffffffe}
};

static const u16 Unk_ov107_02249E46[3][3] = {
    {0x0, 0x64, 0x64},
    {0x0, 0x64, 0x96},
    {0x0, 0x32, 0x32}
};

static const u16 Unk_ov107_02249E34[3][3] = {
    {0x0, 0x2A, 0x2B},
    {0x0, 0x44, 0x45},
    {0x0, 0x0, 0x0}
};

static const UnkStruct_ov84_02240FA8 Unk_ov107_02249EE4 = {
    NULL,
    ov107_0224440C,
    ov107_02244560,
    NULL,
    (((NELEMS(Unk_ov107_0224A02C)) + (NELEMS(Unk_ov107_02249F84))) + 1),
    0x7,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0x0,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

int ov107_02241AE0 (OverlayManager * param0, int * param1)
{
    int v0;
    UnkStruct_ov107_02241D6C * v1;
    UnkStruct_ov104_0223597C * v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov107_02242F24();
    Heap_Create(3, 100, 0x25000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov107_02241D6C), 100);
    memset(v1, 0, sizeof(UnkStruct_ov107_02241D6C));

    v1->unk_4C = sub_02018340(100);
    v1->unk_00 = param0;
    v2 = (UnkStruct_ov104_0223597C *)OverlayManager_Args(param0);
    v1->unk_1CC = v2->unk_00;
    v1->unk_1D0 = sub_020302DC(v1->unk_1CC);
    v1->unk_1D4 = sub_0203041C(v1->unk_1CC);
    v1->unk_09 = v2->unk_04;
    v1->unk_438 = &v2->unk_20;
    v1->unk_1C8 = SaveData_Options(v1->unk_1CC);
    v1->unk_43C = v2->unk_18;
    v1->unk_12 = 0xff;
    v1->unk_49A = v2->unk_28;
    v1->unk_04 = sub_0203068C(v1->unk_1CC);

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_497[v0] = 1;
    }

    if (ov104_0223BA14(v1->unk_09) == 0) {
        v1->unk_14 = 3;
    } else {
        v1->unk_14 = 4;
    }

    v1->unk_15 = v1->unk_14;
    v1->unk_0C = (v1->unk_15 - 1);

    ov107_02242F5C(v1);

    if (ov104_0223BA14(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    return 1;
}

int ov107_02241BD4 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov107_02241D6C * v0 = OverlayManager_Data(param0);

    if (v0->unk_496 == 1) {
        switch (*param1) {
        case 1:
            v0->unk_496 = 0;
            ov107_022451D8(v0);

            if (v0->unk_414 != NULL) {
                ov107_02249B8C(v0->unk_414);
                v0->unk_0E_2 = 0;
            }

            ov107_02249DBC(&v0->unk_50[6], Options_Frame(v0->unk_1C8));
            ov104_0222E5D0(v0->unk_24, 0);

            v0->unk_0A = ov107_02243918(v0, 8, FONT_MESSAGE);

            ov107_02244BD0(v0, param1, 3);
            break;
        }
    } else if (v0->unk_12 != 0xff) {
        switch (*param1) {
        case 1:
        case 3:
            v0->unk_496 = 0;
            ov107_022451D8(v0);
            ov107_02244BD0(v0, param1, 2);
            break;
        }
    }

    switch (*param1) {
    case 0:
        if (ov107_02241D6C(v0) == 1) {
            ov107_02244BD0(v0, param1, 1);
        }
        break;
    case 1:
        if (ov107_02241EC8(v0) == 1) {
            if (v0->unk_0E_1 == 1) {
                ov107_02244BD0(v0, param1, 2);
            } else {
                if (ov104_0223BA14(v0->unk_09) == 1) {
                    ov107_02244BD0(v0, param1, 3);
                } else {
                    ov107_02244BD0(v0, param1, 4);
                }
            }
        }
        break;
    case 2:
        if (ov107_02242C64(v0) == 1) {
            ov107_02244BD0(v0, param1, 1);
        }
        break;
    case 3:
        if (ov107_02242D60(v0) == 1) {
            ov107_02244BD0(v0, param1, 4);
        }
        break;
    case 4:
        if (ov107_02242DCC(v0) == 1) {
            return 1;
        }
        break;
    }

    ov107_02245C00(v0);
    CellActorCollection_Update(v0->unk_1D8.unk_00);

    return 0;
}

int ov107_02241D2C (OverlayManager * param0, int * param1)
{
    int v0;
    UnkStruct_ov107_02241D6C * v1 = OverlayManager_Data(param0);

    *(v1->unk_438) = v1->unk_0D;

    sub_0201DC3C();
    ov107_02242E14(v1);

    OverlayManager_FreeData(param0);
    SetMainCallback(NULL, NULL);
    Heap_Destroy(100);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov107_02241D6C (UnkStruct_ov107_02241D6C * param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            sub_020365F4();
            CommTiming_StartSync(215);
        }

        param0->unk_08++;
        break;
    case 1:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (CommTiming_IsSyncState(215) == 1) {
                sub_020365F4();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (ov107_0224529C(param0, 10, 0) == 1) {
                param0->unk_08++;
            }
        } else {
            ov107_02241E70(param0);
            sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 100);
            param0->unk_08++;
        }
        break;
    case 3:
        if (ov104_0223BA14(param0->unk_09) == 1) {
            if (param0->unk_0F >= 2) {
                param0->unk_0F = 0;
                ov107_02241E70(param0);
                sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 100);
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 4:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov107_02241E70 (UnkStruct_ov107_02241D6C * param0)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    Window * v7;

    ov107_02244E14(param0, &v2, &v3, &v4, &v5);

    v7 = &param0->unk_50[0];
    BGL_FillWindow(v7, 0);

    ov107_02245464(param0, v7);
    ov107_02245780(param0, v7);
    ov107_02243CC0(param0, &param0->unk_50[3]);
    ov107_02243DB0(param0, &param0->unk_50[2]);
    ov107_02243FA4(param0);

    GXLayers_TurnBothDispOn();
    return;
}

static BOOL ov107_02241EC8 (UnkStruct_ov107_02241D6C * param0)
{
    u8 v0, v1;
    u8 v2;
    u16 v3;
    int v4;
    u32 v5, v6;
    Pokemon * v7;

    switch (param0->unk_08) {
    case 0:
        if (param0->unk_0E_5 == 1) {
            ov107_02244064(param0);
            ov107_02249C60(param0->unk_430, 204, 100);
            param0->unk_08 = 2;
            param0->unk_0E_5 = 0;
            return 0;
        } else if (param0->unk_0E_5 == 2) {
            ov107_0224409C(param0);
            ov107_02249C60(param0->unk_430, 211, 106);
            param0->unk_08 = 8;
            param0->unk_0E_5 = 0;
            return 0;
        }

        ov107_02244BD8(param0, gCoreSys.pressedKeys);

        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(1500);

            if (param0->unk_0D >= param0->unk_15) {
                return 1;
            } else {
                ov107_0224400C(param0);
                ov107_02244018(param0);
                param0->unk_08 = 1;
                break;
            }
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            if (param0->unk_0D != param0->unk_15) {
                Sound_PlayEffect(1500);
                param0->unk_0D = param0->unk_15;
                ov107_02244C70(param0);
            }
            break;
        }
        break;
    case 1:
        v6 = sub_02001288(param0->unk_198);
        ov107_02249CE0(v6, 1500);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_0224403C(param0);
            ov107_02243FA4(param0);
            param0->unk_08 = 0;
            break;
        case 0:
            ov107_0224403C(param0);
            ov107_02244064(param0);
            param0->unk_08 = 2;
            break;
        case 5:
            ov107_0224403C(param0);
            ov107_0224409C(param0);
            param0->unk_08 = 8;
            break;
        case 9:
            ov107_0224403C(param0);
            ov107_02245B40(param0, param0->unk_0D);
            param0->unk_08 = 20;
            break;
        case 10:
            ov107_0224403C(param0);
            ov107_02245B90(param0, param0->unk_0D);
            param0->unk_08 = 21;
            break;
        case 11:
            ov107_0224403C(param0);
            ov107_02243FA4(param0);
            param0->unk_08 = 0;
            break;
        }
        break;
    case 2:
        sub_020014D0(param0->unk_198, &param0->unk_16);

        if (gCoreSys.pressedKeys & PAD_KEY_UP) {
            if (param0->unk_16 == 0) {
                sub_02001408(param0->unk_198, (UnkStruct_ov84_02240FA8 *)&param0->unk_1A0, 0, ((NELEMS(Unk_ov107_02249FF0)) - 1), 1, PAD_KEY_DOWN, NULL, NULL);
                sub_020013AC(param0->unk_198);
                Sound_PlayEffect(1500);
                ov107_0224379C(param0, &param0->unk_50[6], 28, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return 0;
            }
        } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
            if (param0->unk_16 == ((NELEMS(Unk_ov107_02249FF0)) - 1)) {
                sub_02001408(param0->unk_198, (UnkStruct_ov84_02240FA8 *)&param0->unk_1A0, 0, 0, 1, PAD_KEY_UP, NULL, NULL);
                sub_020013AC(param0->unk_198);
                Sound_PlayEffect(1500);
                ov107_0224379C(param0, &param0->unk_50[6], 24, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return 0;
            }
        }

        v6 = sub_02001288(param0->unk_198);

        ov107_02249CE0(v6, 1500);
        sub_020014D0(param0->unk_198, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02245288(&param0->unk_50[6]);
            ov107_02244094(param0);
            ov107_02244018(param0);
            param0->unk_08 = 1;
            break;
        case 1:
        case 2:
        case 3:
            param0->unk_13 = v6;
            ov107_02244094(param0);
            ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));

            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 0);

            if (v2 < Unk_ov107_02249FF0[param0->unk_16][0]) {
                param0->unk_0A = ov107_02243918(param0, 33, FONT_MESSAGE);
                param0->unk_08 = 7;
            } else {
                ov107_02244A74(param0, 0, Unk_ov107_02249E0C[param0->unk_16], 3, 0);
                param0->unk_0A = ov107_02243918(param0, 55, FONT_MESSAGE);
                ov107_022441DC(param0);
                param0->unk_08 = 3;
            }
            break;
        case 4:
            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 0);

            if (v2 == 3) {
                sub_020057A4(1500, 0);
                Sound_PlayEffect(1523);
            } else {
                param0->unk_13 = v6;
                ov107_02244094(param0);
                v3 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
                ov107_02244A74(param0, 0, Unk_ov107_02249E46[0][v2], 4, 0);
                param0->unk_0A = ov107_02243918(param0, 38, FONT_MESSAGE);
                ov107_022441DC(param0);
                param0->unk_08 = 4;
            }
            break;
        }
        break;
    case 3:
        v6 = sub_02001BE0(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
            ov107_02245618(param0);

            v3 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 0);

            if (v2 < Unk_ov107_02249FF0[param0->unk_16][0]) {
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                param0->unk_0A = ov107_02243918(param0, 33, FONT_MESSAGE);
                param0->unk_08 = 7;
                break;
            }

            if (v3 < Unk_ov107_02249E0C[param0->unk_16]) {
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                param0->unk_0A = ov107_02243918(param0, 32, FONT_MESSAGE);
                param0->unk_08 = 7;
                break;
            }

            if (param0->unk_16 == 0) {
                if (Pokemon_GetValue(v7, MON_DATA_CURRENT_HP, NULL) == Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL)) {
                    param0->unk_0A = ov107_02243918(param0, 37, FONT_MESSAGE);
                    param0->unk_08 = 7;
                    break;
                }
            } else if (param0->unk_16 == 1) {
                if (ov107_02245210(v7) == 0) {
                    param0->unk_0A = ov107_02243918(param0, 37, FONT_MESSAGE);
                    param0->unk_08 = 7;
                    break;
                }
            } else {
                if ((Pokemon_GetValue(v7, MON_DATA_CURRENT_HP, NULL) == Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL)) && (ov107_02245210(v7) == 0)) {
                    param0->unk_0A = ov107_02243918(param0, 37, FONT_MESSAGE);
                    param0->unk_08 = 7;
                    break;
                }
            }

            ov107_02245288(&param0->unk_50[6]);

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov104_0223BC2C(param0->unk_04, param0->unk_09, Unk_ov107_02249E0C[param0->unk_13 - 1]);
                ov107_02245780(param0, &param0->unk_50[0]);
                ov107_022454F8(param0, param0->unk_0D, param0->unk_13);
                param0->unk_08 = 18;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_02245288(&param0->unk_50[6]);
            ov107_02244064(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 4:
        v6 = sub_02001BE0(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);

            v3 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 0);

            if (v3 < Unk_ov107_02249E46[0][v2]) {
                ov107_02245618(param0);
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                param0->unk_0A = ov107_02243918(param0, 41, FONT_MESSAGE);
                param0->unk_08 = 7;
                break;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_02245C94(param0, param0->unk_0D, 4);
                param0->unk_08 = 5;
                break;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_02245288(&param0->unk_50[6]);
            ov107_02244064(param0);
            param0->unk_08 = 2;
            break;
        }
        break;
    case 5:
        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 6;
        }
        break;
    case 6:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245618(param0);
            ov107_02244064(param0);
            ov107_02249C60(param0->unk_430, 204, 100);
            param0->unk_08 = 2;
        }
        break;
    case 7:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245288(&param0->unk_50[6]);
            ov107_02244064(param0);
            param0->unk_08 = 2;
        }
        break;
    case 8:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        v6 = sub_02001288(param0->unk_198);
        ov107_02249CE0(v6, 1500);
        sub_020014D0(param0->unk_198, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02245288(&param0->unk_50[6]);
            ov107_022440C0(param0);
            ov107_02244018(param0);
            param0->unk_08 = 1;
            break;
        case 6:
            param0->unk_13 = v6;
            ov107_02245288(&param0->unk_50[6]);
            ov107_022440C0(param0);
            ov107_022440C8(param0, 6);
            param0->unk_08 = 9;
            break;
        case 7:
            param0->unk_13 = v6;

            ov107_02245288(&param0->unk_50[6]);
            ov107_022440C0(param0);

            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 1);

            if (v2 == 1) {
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                param0->unk_0A = ov107_02243918(param0, 54, FONT_MESSAGE);
                param0->unk_08 = 14;
                return 0;
            }

            ov107_022440C8(param0, 7);
            param0->unk_08 = 9;
            break;
        case 8:
            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 1);

            if (v2 == 3) {
                sub_020057A4(1500, 0);
                Sound_PlayEffect(1523);
            } else {
                param0->unk_13 = v6;
                ov107_022440C0(param0);
                ov107_02244A74(param0, 0, Unk_ov107_02249E46[1][v2], 4, 0);
                param0->unk_0A = ov107_02243918(param0, 38, FONT_MESSAGE);
                ov107_022441DC(param0);
                param0->unk_08 = 11;
            }
            break;
        }
        break;
    case 9:
        v6 = sub_02001288(param0->unk_198);
        ov107_02249CE0(v6, 1500);
        sub_020014D0(param0->unk_198, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            ov107_02244120(param0);
            ov107_0224409C(param0);
            param0->unk_08 = 8;
            break;
        default:
            sub_0201AD10(&param0->unk_50[12]);

            ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
            ov107_02244A74(param0, 0, ov107_02244D5C(param0, param0->unk_16, param0->unk_13), 3, 0);

            param0->unk_0A = ov107_02243918(param0, 55, FONT_MESSAGE);

            ov107_022441DC(param0);
            ov107_02249BAC(param0->unk_3F0, 0);

            param0->unk_08 = 10;
            break;
        }
        break;
    case 10:
        v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
        v6 = sub_02001BE0(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);
            v3 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

            if (v3 < ov107_02244D5C(param0, param0->unk_16, param0->unk_13)) {
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                param0->unk_0A = ov107_02243918(param0, 32, FONT_MESSAGE);

                ov107_02249BAC(param0->unk_3F0, 0);
                param0->unk_08 = 15;
                break;
            }

            if (Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL) == 0) {
                if (ov104_0223BA14(param0->unk_09) == 0) {
                    ov107_02244120(param0);
                    ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                    ov104_0223BC2C(param0->unk_04, param0->unk_09, ov107_02244D5C(param0, param0->unk_16, param0->unk_13));
                    ov107_02245780(param0, &param0->unk_50[0]);
                    ov107_022455A0(param0, param0->unk_0D, ov107_02244DE0(param0, param0->unk_16, param0->unk_13));
                    param0->unk_08 = 18;
                } else {
                    param0->unk_10 = ov107_02244DE0(param0, param0->unk_16, param0->unk_13);
                    ov107_02244120(param0);
                    ov107_02245288(&param0->unk_50[6]);
                    param0->unk_0E_1 = 1;
                    return 1;
                }
            } else {
                ov107_02244A8C(param0, 0, Pokemon_GetBoxPokemon(v7));
                StringTemplate_SetItemNameWithArticle(param0->unk_24, 1, Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL));
                param0->unk_0A = ov107_02243918(param0, 60, FONT_MESSAGE);
                param0->unk_08 = 16;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_022456E4(param0);
            param0->unk_08 = 9;
            break;
        }
        break;
    case 11:
        v6 = sub_02001BE0(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);

            v3 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));
            v2 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 1);

            if (v3 < Unk_ov107_02249E46[1][v2]) {
                ov107_02245618(param0);
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                param0->unk_0A = ov107_02243918(param0, 41, FONT_MESSAGE);
                param0->unk_08 = 14;
                break;
            }

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_02245C94(param0, param0->unk_0D, 8);
                param0->unk_08 = 12;
                break;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_02245288(&param0->unk_50[6]);
            ov107_0224409C(param0);
            param0->unk_08 = 8;
            break;
        }
        break;
    case 12:
        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 13;
        }
        break;
    case 13:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245618(param0);
            ov107_0224409C(param0);
            ov107_02249C60(param0->unk_430, 211, 106);
            param0->unk_08 = 8;
        }
        break;
    case 14:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245288(&param0->unk_50[6]);
            ov107_0224409C(param0);
            param0->unk_08 = 8;
        }
        break;
    case 15:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_022456E4(param0);
            param0->unk_08 = 9;
        }
        break;
    case 16:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            param0->unk_0A = ov107_02243918(param0, 61, FONT_MESSAGE);
            ov107_022441DC(param0);
            param0->unk_08 = 17;
        }
        break;
    case 17:
        v6 = sub_02001BE0(param0->unk_17C);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            ov107_02245618(param0);

            if (ov104_0223BA14(param0->unk_09) == 0) {
                ov107_02244120(param0);
                ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
                ov104_0223BC2C(param0->unk_04, param0->unk_09, ov107_02244D5C(param0, param0->unk_16, param0->unk_13));
                ov107_02245780(param0, &param0->unk_50[0]);
                ov107_022455A0(param0, param0->unk_0D, ov107_02244DE0(param0, param0->unk_16, param0->unk_13));
                param0->unk_08 = 18;
            } else {
                param0->unk_10 = ov107_02244DE0(param0, param0->unk_16, param0->unk_13);
                ov107_02244120(param0);
                ov107_02245288(&param0->unk_50[6]);
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            ov107_02245618(param0);
            ov107_022456E4(param0);
            param0->unk_08 = 9;
            break;
        }
        break;
    case 18:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->unk_08 = 19;
        }
        break;
    case 19:
        if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245288(&param0->unk_50[6]);
            ov107_02243FA4(param0);
            param0->unk_08 = 0;
        }
        break;
    case 20:
        if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
            ov107_02245140(param0, -1);
        } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
            ov107_02245140(param0, 1);
        } else if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245BE0(param0);
            ov107_02244018(param0);
            param0->unk_08 = 1;
        }
        break;
    case 21:
        if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
            ov107_0224518C(param0, -1);
        } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
            ov107_0224518C(param0, 1);
        } else if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            ov107_02245BE0(param0);
            ov107_02244018(param0);
            param0->unk_08 = 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02242C64 (UnkStruct_ov107_02241D6C * param0)
{
    u8 v0;
    Pokemon * v1;

    switch (param0->unk_08) {
    case 0:
        param0->unk_0E_5 = 0;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov107_0224529C(param0, 11, param0->unk_0D) == 1) {
            param0->unk_0E_1 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_12 == 0xff) {
            break;
        }

        param0->unk_0F = 0;

        if ((param0->unk_13 == 4) || (param0->unk_13 == 8)) {
            ov107_02245C94(param0, param0->unk_12, param0->unk_13);
        } else {
            ov107_022459D0(param0, param0->unk_12, param0->unk_13);
        }

        param0->unk_08++;
        break;
    case 2:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_12);

        if (ov107_02244E44(param0, v0, param0->unk_13) == 1) {
            param0->unk_0B = 30;
            param0->unk_08++;
        }
        break;
    case 3:
        param0->unk_0B--;

        if (param0->unk_0B == 0) {
            sub_020365F4();
            CommTiming_StartSync(130);
            param0->unk_08++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(130) == 1) {
            sub_020365F4();
            CommTool_Init(100);

            param0->unk_12 = 0xff;

            if (param0->unk_0E_5 == 0) {
                ov107_02245288(&param0->unk_50[6]);
                ov107_02243FA4(param0);
            }

            param0->unk_496 = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov107_02242D60 (UnkStruct_ov107_02241D6C * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        if (ov107_0224529C(param0, 13, 0) == 1) {
            param0->unk_0B = 30;
            param0->unk_08++;
        }
        break;
    case 1:
        if (param0->unk_0B > 0) {
            param0->unk_0B--;
        }

        if (param0->unk_0B == 0) {
            sub_020365F4();
            CommTiming_StartSync(131);
            param0->unk_08++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(131) == 1) {
            sub_020365F4();
            ov107_02245288(&param0->unk_50[6]);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02242DCC (UnkStruct_ov107_02241D6C * param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 100);
        param0->unk_08++;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov107_02242E14 (UnkStruct_ov107_02241D6C * param0)
{
    u8 v0;
    int v1, v2;

    ov107_02249B8C(param0->unk_3E8);
    ov107_02249B8C(param0->unk_3EC);
    ov107_02249B8C(param0->unk_3F0);

    ov107_02249B8C(param0->unk_430);
    ov107_02249B8C(param0->unk_418);
    ov107_02249B8C(param0->unk_41C);
    ov107_02249B8C(param0->unk_434);

    v0 = ov104_0223B7A8(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        ov107_02249B8C(param0->unk_3F4[v1]);
        ov107_02249B8C(param0->unk_404[v1]);
        ov107_02249B8C(param0->unk_420[v1]);
    }

    sub_02039794();

    sub_02002FA0(param0->unk_1C0, 2);
    sub_02002FA0(param0->unk_1C0, 0);
    sub_02002F54(param0->unk_1C0);

    param0->unk_1C0 = NULL;

    ov107_02249954(&param0->unk_1D8);

    MessageLoader_Free(param0->unk_20);
    MessageLoader_Free(param0->unk_1C);
    StringTemplate_Free(param0->unk_24);
    Strbuf_Free(param0->unk_28);
    Strbuf_Free(param0->unk_2C);
    sub_0200C560(param0->unk_1C4);

    for (v1 = 0; v1 < 3; v1++) {
        Strbuf_Free(param0->unk_30[v1]);
    }

    ov107_02249D5C(param0->unk_50, 0);
    ov107_022433A8(param0->unk_4C);

    NARC_dtor(param0->unk_440);
    return;
}

static void ov107_02242F24 (void)
{
    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov107_02242F5C (UnkStruct_ov107_02241D6C * param0)
{
    u32 v0, v1;
    u32 v2, v3, v4, v5;
    u8 v6;
    u16 v7, v8, v9, v10, v11, v12, v13, v14;
    int v15, v16, v17;
    Window * v18;
    Pokemon * v19;

    param0->unk_440 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 100);

    ov107_02243324(param0);
    ov107_02243384(param0);

    param0->unk_20 = MessageLoader_Init(1, 26, 199, 100);
    param0->unk_1C = MessageLoader_Init(1, 26, 391, 100);
    param0->unk_24 = StringTemplate_Default(100);
    param0->unk_28 = Strbuf_Init(600, 100);
    param0->unk_2C = Strbuf_Init(600, 100);

    for (v15 = 0; v15 < 3; v15++) {
        param0->unk_30[v15] = Strbuf_Init(32, 100);
    }

    Font_LoadTextPalette(0, 13 * 32, 100);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, 100);

    param0->unk_1C4 = sub_0200C440(1, 2, 0, 100);

    ov107_02249D14(param0->unk_4C, param0->unk_50, 0);
    ov107_02244E14(param0, &v9, &v10, &v11, &v12);

    param0->unk_3E8 = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 4, 160, 10, 0, NULL);
    param0->unk_3EC = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 5, 160, 124, 0, NULL);

    ov107_02249BAC(param0->unk_3E8, 0);
    ov107_02249BAC(param0->unk_3EC, 0);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v13 = 64;
        v14 = 64 + 8;
    } else {
        v13 = 32;
        v14 = 32 + 8;
    }

    v6 = ov104_0223B7A8(param0->unk_09, 1);

    for (v15 = 0; v15 < v6; v15++) {
        param0->unk_404[v15] = ov107_02249B1C(&param0->unk_1D8, 2, 2, 2, 0, 64 * v15 + v14, 58 + 4, 2, NULL);

        v19 = Party_GetPokemonBySlotIndex(param0->unk_43C, v15);

        if (Pokemon_GetValue(v19, MON_DATA_HELD_ITEM, NULL) == 0) {
            ov107_02249BAC(param0->unk_404[v15], 0);
        }

        v2 = Pokemon_GetValue(v19, MON_DATA_CURRENT_HP, NULL);
        v3 = Pokemon_GetValue(v19, MON_DATA_MAX_HP, NULL);
        v4 = ov107_022450E8(param0, HealthBar_Color(v2, v3, 48));
        v5 = ov107_02245114(param0, HealthBar_Color(v2, v3, 48));

        param0->unk_420[v15] = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, v5, 64 * v15 + v13, 58 + 20, 3, NULL);
        param0->unk_3F4[v15] = ov107_02249B1C(&param0->unk_1D8, 3 + v15, 3, 3, v4, 64 * v15 + v13, 58, 2, NULL);

        ov107_02249C08(param0->unk_3F4[v15], Party_GetPokemonBySlotIndex(param0->unk_43C, v15));
    }

    param0->unk_3F0 = ov107_02249B1C(&param0->unk_1D8, 1, 1, 1, 0, 24, 162, 0, NULL);

    ov107_022499BC(&param0->unk_1D8, 17);
    ov107_022499FC(&param0->unk_1D8, 17);
    ov107_02249BAC(param0->unk_3F0, 0);
    ov107_02244D08(param0, &v0, &v1, 0);

    param0->unk_418 = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 1, v0, v1, 2, NULL);
    param0->unk_41C = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 2, v0, v1, 2, NULL);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        ov107_02249BAC(param0->unk_41C, 0);
    }

    param0->unk_430 = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 11, 20, 20, 0, NULL);
    ov107_02249BAC(param0->unk_430, 0);

    param0->unk_434 = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 3, 20, 20, 1, NULL);
    ov107_02249BAC(param0->unk_434, 0);

    if (CommSys_IsInitialized()) {
        sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetMainCallback(ov107_022433EC, (void *)param0);
    return;
}

static void ov107_02243324 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02243424();
    ov107_02243444(param0->unk_4C);

    param0->unk_1C0 = sub_02002F38(100);

    sub_02002F70(param0->unk_1C0, 2, (32 * 16), 100);
    sub_02002F70(param0->unk_1C0, 0, (32 * 16), 100);

    ov107_02243588(param0, 3);
    ov107_022435FC();
    ov107_02243630(param0, 2);
    ov107_02243678();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov107_0224373C(param0, 4);

    return;
}

static void ov107_02243384 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02249604(&param0->unk_1D8, param0->unk_43C, ov104_0223BA14(param0->unk_09));
    return;
}

static void ov107_022433A8 (BGL * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 0);
    sub_02019044(param0, 1);
    sub_02019044(param0, 4);

    Heap_FreeToHeap(param0);
    return;
}

static void ov107_022433EC (void * param0)
{
    UnkStruct_ov107_02241D6C * v0 = param0;

    if (v0->unk_1C0 != NULL) {
        sub_02003694(v0->unk_1C0);
    }

    sub_0201C2B8(v0->unk_4C);
    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov107_02243424 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    return;
}

static void ov107_02243444 (BGL * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
        sub_02019690(1, 32, 0, 100);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v2, 0);
        sub_02019690(0, 32, 0, 100);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019690(2, 32, 0, 100);
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
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v4, 0);
        sub_02019690(3, 32, 0, 100);
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
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v5, 0);
        sub_02019EBC(param0, 4);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

    return;
}

static void ov107_02243588 (UnkStruct_ov107_02241D6C * param0, u32 param1)
{
    sub_020070E8(param0->unk_440, 34, param0->unk_4C, param1, 0, 0, 1, 100);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        sub_0200710C(param0->unk_440, 35, param0->unk_4C, param1, 0, 0, 1, 100);
    } else {
        sub_0200710C(param0->unk_440, 36, param0->unk_4C, param1, 0, 0, 1, 100);
    }

    return;
}

static void ov107_022435FC (void)
{
    void * v0;
    NNSG2dPaletteData * v1;

    v0 = sub_02006F88(150, 137, &v1, 100);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 4));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 4));
    Heap_FreeToHeap(v0);

    return;
}

static void ov107_02243630 (UnkStruct_ov107_02241D6C * param0, u32 param1)
{
    sub_020070E8(param0->unk_440, 34, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_440, 38, param0->unk_4C, param1, 0, 0, 1, 100);

    return;
}

static void ov107_02243678 (void)
{
    void * v0;
    NNSG2dPaletteData * v1;

    v0 = sub_02006F88(150, 137, &v1, 100);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 4));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 4));

    Heap_FreeToHeap(v0);
    return;
}

static void ov107_022436AC (UnkStruct_ov107_02241D6C * param0, u32 param1)
{
    sub_020070E8(param0->unk_440, 34, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_440, 39, param0->unk_4C, param1, 0, 0, 1, 100);

    return;
}

static void ov107_022436F4 (UnkStruct_ov107_02241D6C * param0, u32 param1)
{
    sub_020070E8(param0->unk_440, 34, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_440, 37, param0->unk_4C, param1, 0, 0, 1, 100);

    return;
}

static void ov107_0224373C (UnkStruct_ov107_02241D6C * param0, u32 param1)
{
    sub_020070E8(param0->unk_440, 125, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_0200710C(param0->unk_440, 126, param0->unk_4C, param1, 0, 0, 1, 100);
    sub_02007130(param0->unk_440, 171, 4, 0, 0x20, 100);

    return;
}

static u8 ov107_0224379C (UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    ov107_022437CC(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_022437CC (UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10)
{
    u8 v0;
    BGL_FillWindow(param1, param8);
    MessageLoader_GetStrbuf(param0->unk_20, param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);
    
    switch (param10) {
    case 1:
        param3 -= (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0);
        break;
    }

    v0 = Text_AddPrinterWithParamsAndColor(param1, param9, param0->unk_28, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
    sub_0201A9A4(param1);
    
    return v0;
}

static u8 ov107_02243860 (UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9)
{
    return ov107_02243890(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

static u8 ov107_02243890 (UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u32 param3, u32 param4, u32 param5, u8 param6, u8 param7, u8 param8, u8 param9, u32 param10)
{
    u8 v0;
    MessageLoader_GetStrbuf(param0->unk_20, param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);
    
    switch (param10) {
    case 1:
        param3 -= (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28, 0);
        break;
    }

    v0 = Text_AddPrinterWithParamsAndColor(param1, param9, param0->unk_28, param3, param4, param5, TEXT_COLOR(param6, param7, param8), NULL);
    sub_0201A9A4(param1);
    
    return v0;
}

static u8 ov107_02243918 (UnkStruct_ov107_02241D6C * param0, int param1, u8 param2)
{
    u8 v0;

    v0 = ov107_0224379C(param0, &param0->unk_50[6], param1, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, param2);
    sub_0201A9A4(&param0->unk_50[6]);

    return v0;
}

asm static void ov107_02243950 (UnkStruct_ov107_02241D6C * param0, Window * param1, Pokemon * param2)
{
    push {r4, r5, r6, lr}
    sub sp, #8
    add r4, r1, #0
    add r5, r0, #0
    add r6, r2, #0
    add r0, r4, #0
    mov r1, #0
    bl BGL_FillWindow
    add r0, r6, #0
    mov r1, #6
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    mov r1, #0
    bl StringTemplate_SetItemName
    mov r0, #8
    str r0, [sp]
    mov r3, #0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x46
    str r3, [sp, #4]
    bl ov107_02243B5C
    mov r0, #8
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x47
    mov r3, #0x40
    bl ov107_02243B5C
    add r0, r6, #0
    bl Pokemon_GetNature
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    mov r1, #0
    bl StringTemplate_SetNatureName
    mov r0, #0x18
    str r0, [sp]
    mov r3, #0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x48
    str r3, [sp, #4]
    bl ov107_02243B5C
    mov r0, #0x18
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x49
    mov r3, #0x40
    bl ov107_02243B5C
    add r0, r6, #0
    mov r1, #0xa
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    mov r1, #0
    bl StringTemplate_SetAbilityName
    mov r0, #0x28
    str r0, [sp]
    mov r3, #0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x4a
    str r3, [sp, #4]
    bl ov107_02243B5C
    mov r0, #0x28
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x4b
    mov r3, #0x40
    bl ov107_02243B5C
    add r0, r6, #0
    mov r1, #0xa5
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_02244A74
    mov r0, #0x38
    str r0, [sp]
    mov r3, #0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x4c
    str r3, [sp, #4]
    bl ov107_02243B5C
    mov r0, #0x38
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x4d
    mov r3, #0x50
    bl ov107_02243B5C
    add r0, r6, #0
    mov r1, #0xa6
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_02244A74
    mov r0, #0x38
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x4e
    mov r3, #0x60
    bl ov107_02243B5C
    mov r0, #0x38
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x4f
    mov r3, #0xb0
    bl ov107_02243B5C
    add r0, r6, #0
    mov r1, #0xa8
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_02244A74
    mov r0, #0x48
    str r0, [sp]
    mov r3, #0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x50
    str r3, [sp, #4]
    bl ov107_02243B5C
    mov r0, #0x48
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x51
    mov r3, #0x50
    bl ov107_02243B5C
    add r0, r6, #0
    mov r1, #0xa9
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_02244A74
    mov r0, #0x48
    str r0, [sp]
    mov r0, #0
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x52
    mov r3, #0x60
    bl ov107_02243B5C
    mov r0, #0x48
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x53
    mov r3, #0xb0
    bl ov107_02243B5C
    add r0, r6, #0
    mov r1, #0xa7
    mov r2, #0
    bl Pokemon_GetValue
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #3
    bl ov107_02244A74
    mov r0, #0x58
    str r0, [sp]
    mov r3, #0
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x54
    str r3, [sp, #4]
    bl ov107_02243B5C
    mov r0, #0x58
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #0x55
    mov r3, #0x50
    bl ov107_02243B5C
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #8
    pop {r4, r5, r6, pc}
}

static void ov107_02243B5C (UnkStruct_ov107_02241D6C * param0, Window * param1, int param2, u16 param3, u16 param4, int param5)
{
    ov107_02243890(param0, param1, param2, param3, param4, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, param5);
}

static void ov107_02243B84 (UnkStruct_ov107_02241D6C * param0, Window * param1, Pokemon * param2)
{
    BGL_FillWindow(param1, 0);

    ov107_02243C18(param0, param1, 0, 88, 92, param2, 54, 58, 66);
    ov107_02243C18(param0, param1, 1, 89, 92, param2, 55, 59, 67);
    ov107_02243C18(param0, param1, 2, 90, 92, param2, 56, 60, 68);
    ov107_02243C18(param0, param1, 3, 91, 92, param2, 57, 61, 69);

    sub_0201A9A4(param1);
    return;
}

static void ov107_02243C18 (UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u32 param3, u32 param4, Pokemon * param5, u32 param6, u32 param7, u32 param8)
{
    u16 v0, v1, v2, v3;

    v0 = 24;
    v1 = 12 + (param2 * 24);
    v2 = 137;
    v3 = 12 + (param2 * 24);

    StringTemplate_SetMoveName(param0->unk_24, param2, Pokemon_GetValue(param5, param6, NULL));
    param0->unk_0A = ov107_02243860(param0, param1, param3, v0, v1, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);

    ov107_02244A74(param0, 4, Pokemon_GetValue(param5, param7, NULL), MON_DATA_IS_DATA_INVALID, 0);
    ov107_02244A74(param0, 5, Pokemon_GetValue(param5, param8, NULL), MON_DATA_IS_DATA_INVALID, 0);
    param0->unk_0A = ov107_02243890(param0, param1, param4, v2, v3, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);

    return;
}

static void ov107_02243CC0 (UnkStruct_ov107_02241D6C * param0, Window * param1)
{
    int v0;
    u8 v1;

    BGL_FillWindow(param1, 0);

    v1 = ov104_0223B7A8(param0->unk_09, 1);

    for (v0 = 0; v0 < v1; v0++) {
        ov107_02243CFC(param0, param1, v0, 0);
    }

    sub_0201A9A4(param1);
    return;
}

static void ov107_02243CFC (UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u8 param3)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    Pokemon * v7;

    v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, param2);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    if (param3 == 0) {
        v1 = v0 + (64 * param2);
        v2 = 1;
        v5 = 24 + v0 + (64 * param2);
        v6 = 1;
        v3 = 32 + v0 + (64 * param2);
        v4 = 1;
    } else {
        v1 = 4;
        v2 = 0;
        v5 = 24 + 4;
        v6 = 0;
        v3 = 32 + 4;
        v4 = 0;
    }

    sub_0200C5BC(param0->unk_1C4, Pokemon_GetValue(v7, MON_DATA_CURRENT_HP, NULL), 3, 1, param1, v1, v2);
    sub_0200C578(param0->unk_1C4, 0, param1, v5, v6);
    sub_0200C5BC(param0->unk_1C4, Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL), 3, 0, param1, v3, v4);

    return;
}

static void ov107_02243DB0 (UnkStruct_ov107_02241D6C * param0, Window * param1)
{
    int v0;
    u8 v1;

    v1 = ov104_0223B7A8(param0->unk_09, 1);

    for (v0 = 0; v0 < v1; v0++) {
        ov107_02243DE4(param0, param1, v0, 0);
    }

    sub_0201A9A4(param1);
    return;
}

static void ov107_02243DE4 (UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u8 param3)
{
    u32 v0, v1, v2, v3, v4;
    u16 v5, v6;
    Pokemon * v7;

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v5 = 40;
        v6 = 80;
    } else {
        v5 = 8;
        v6 = 48;
    }

    v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, param2);

    if (param3 == 0) {
        v1 = v5 + (64 * param2);
        v2 = 1;
        v3 = v6 + (64 * param2);
        v4 = 1;
    } else {
        v1 = 4;
        v2 = 0;
        v3 = (8 * 6);
        v4 = 0;
    }

    sub_0200C648(param0->unk_1C4, 1, Pokemon_GetValue(v7, MON_DATA_LEVEL, NULL), 3, 0, param1, v1, v2);
    v0 = Pokemon_GetValue(v7, MON_DATA_GENDER, NULL);
    ov107_02244B8C(param0, param1, v3, v4, FONT_SYSTEM, v0);

    return;
}

static void ov107_02243E74 (UnkStruct_ov107_02241D6C * param0, Window * param1)
{
    u16 v0;

    v0 = sub_02030698(param0->unk_04, sub_0205E630(param0->unk_09), sub_0205E6A8(sub_0205E630(param0->unk_09)));

    ov107_02249D84(param0->unk_4C, param1);
    BGL_FillWindow(param1, 15);

    ov107_02244AB4(param0, param1, 1, 1, FONT_SYSTEM);
    ov107_02244A74(param0, 0, v0, 4, 1);

    param0->unk_0A = ov107_02243860(param0, param1, 4, 16, 1 * 16, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);
    sub_0201A9A4(param1);

    return;
}

static u8 ov107_02243EF8 (UnkStruct_ov107_02241D6C * param0, Window * param1, u16 param2)
{
    u8 v0;

    BGL_FillWindow(param1, 0);
    MessageLoader_GetStrbuf(param0->unk_1C, param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);

    v0 = Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_28, 0, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    sub_0201A9A4(param1);
    return v0;
}

static void ov107_02243F4C (UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2, u32 param3)
{
    u16 v0;

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    BGL_WindowColor(param1, 0, v0 + (64 * param2), 0, 8 * 3, 9);
    sub_0200C5BC(param0->unk_1C4, param3, 3, 1, param1, v0 + (64 * param2), 1);
    sub_0201A9A4(param1);

    return;
}

static void ov107_02243FA4 (UnkStruct_ov107_02241D6C * param0)
{

    param0->unk_0A = ov107_022437CC(param0, &param0->unk_50[1], 6, 16, 1 + 4, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
    ov107_02249DBC(&param0->unk_50[7], Options_Frame(param0->unk_1C8));
    param0->unk_0A = ov107_0224379C(param0, &param0->unk_50[7], 5, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void ov107_0224400C (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02245288(&param0->unk_50[7]);
    return;
}

static void ov107_02244018 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02249DBC(&param0->unk_50[8], Options_Frame(param0->unk_1C8));
    param0->unk_16 = 0;
    ov107_02244944(param0);

    return;
}

static void ov107_0224403C (UnkStruct_ov107_02241D6C * param0)
{
    sub_020014DC(param0->unk_198, &param0->unk_18, &param0->unk_1A);

    ov107_02245288(&param0->unk_50[8]);
    ov107_02245730(param0);

    return;
}

static void ov107_02244064 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));

    param0->unk_0A = ov107_02243918(param0, 24, FONT_MESSAGE);
    param0->unk_16 = 0;

    ov107_022445C4(param0);
    return;
}

static void ov107_02244094 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02245730(param0);
    return;
}

static void ov107_0224409C (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
    param0->unk_16 = 0;
    ov107_02244780(param0);

    return;
}

static void ov107_022440C0 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02245730(param0);
    return;
}

static void ov107_022440C8 (UnkStruct_ov107_02241D6C * param0, u8 param1)
{
    param0->unk_0E_3 = 1;

    ov107_02245288(&param0->unk_50[6]);

    sub_0201ACF4(&param0->unk_50[6]);
    sub_0201ACF4(&param0->unk_50[9]);

    ov107_022436F4(param0, 2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    sub_0201AD10(&param0->unk_50[4]);

    param0->unk_16 = 0;

    ov107_02244240(param0, param1);
    ov107_02243E74(param0, &param0->unk_50[15]);

    return;
}

static void ov107_02244120 (UnkStruct_ov107_02241D6C * param0)
{
    if (param0->unk_0E_3 == 1) {
        param0->unk_0E_3 = 0;
        sub_0201AD10(&param0->unk_50[12]);
        ov107_02245730(param0);
        ov107_02245660(param0);
    }

    return;
}

static void ov107_0224414C (UnkStruct_ov107_02241D6C * param0, Window * param1, u8 param2)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_180[v0].unk_00 = NULL;
        param0->unk_180[v0].unk_04 = 0;
    }

    param0->unk_170.unk_00 = param0->unk_180;
    param0->unk_170.unk_04 = param1;
    param0->unk_170.unk_08 = 0;
    param0->unk_170.unk_09 = 1;
    param0->unk_170.unk_0A = param2;
    param0->unk_170.unk_0B_0 = 0;
    param0->unk_170.unk_0B_4 = 0;
    param0->unk_170.unk_0B_6 = 1;

    return;
}

static void ov107_022441B0 (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2, int param3)
{
    int v0;
    void * v1;

    MessageLoader_GetStrbuf(param0->unk_20, param3, param0->unk_30[param1]);

    param0->unk_180[param1].unk_00 = (const void *)param0->unk_30[param1];
    param0->unk_180[param1].unk_04 = param2;

    return;
}

static void ov107_022441DC (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02249D84(param0->unk_4C, &param0->unk_50[13]);
    ov107_0224414C(param0, &param0->unk_50[13], 2);
    ov107_022441B0(param0, 0, 0, 30);
    ov107_022441B0(param0, 1, 1, 31);

    param0->unk_17C = sub_02001B7C(&param0->unk_170, 8, 0, 0, 100, PAD_BUTTON_B);
    param0->unk_0E_4 = 1;

    return;
}

static void ov107_02244240 (UnkStruct_ov107_02241D6C * param0, u8 param1)
{
    u8 v0, v1, v2;
    u16 v3;
    int v4;
    MessageLoader * v5;

    ov107_0224503C(param0, param0->unk_0D, 1);
    v2 = ov107_02249C98(param0->unk_14, param0->unk_0D);
    ov107_02243CFC(param0, &param0->unk_50[17], v2, 1);

    sub_0201A9A4(&param0->unk_50[17]);
    ov107_02243DE4(param0, &param0->unk_50[16], v2, 1);
    sub_0201A9A4(&param0->unk_50[16]);

    ov107_02249BAC(param0->unk_3F0, 1);
    ov107_02249BAC(param0->unk_3E8, 1);
    ov107_02249BAC(param0->unk_3EC, 1);
    ov107_02249BAC(param0->unk_434, 1);

    v5 = MessageLoader_Init(1, 26, 392, 100);
    v0 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 1);

    if (param1 == 6) {
        v1 = Unk_ov107_02249E12[v0 - 1];
    } else {
        v1 = Unk_ov107_02249E06[v0 - 1];
    }

    param0->unk_19C = sub_02013A04((v1 + 1), 100);

    for (v4 = 0; v4 < v1; v4++) {
        if (param1 == 6) {
            v3 = Unk_ov107_0224A02C[v4];
        } else {
            v3 = Unk_ov107_02249F84[v4];
        }

        sub_02013A4C(param0->unk_19C, v5, v3, v4);
    }

    sub_02013A4C(param0->unk_19C, param0->unk_20, 13, 0xfffffffe);

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.unk_00 = param0->unk_19C;
    param0->unk_1A0.unk_0C = &param0->unk_50[5];
    param0->unk_1A0.unk_1C = param0;
    param0->unk_1A0.unk_04 = ov107_0224440C;
    param0->unk_1A0.unk_08 = ov107_02244560;
    param0->unk_1A0.unk_10 = (v1 + 1);
    param0->unk_1A0.unk_18_0 = 0;
    param0->unk_1A0.unk_12 = 6;
    param0->unk_1A0.unk_15 = 0;
    param0->unk_1A0.unk_1A_15 = 1;
    param0->unk_198 = sub_0200112C(&param0->unk_1A0, 0, 0, 100);

    ov107_02245650(param0, &param0->unk_50[5]);
    MessageLoader_Free(v5);

    return;
}

static void ov107_0224440C (BmpList * param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2, v3, v4, v5;
    UnkStruct_ov107_02241D6C * v6 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(1500);
        sub_020014D0(v6->unk_198, &v5);
    } else {
        v5 = 0;
    }

    v0 = sub_02001504(param0, 2);
    v1 = sub_02001504(param0, 3);

    sub_020014DC(param0, &v3, &v4);

    if (v3 == 0) {
        ov107_02249BAC(v6->unk_3E8, 0);
        ov107_02249BAC(v6->unk_3EC, 1);
    } else if (v3 == (v0 - v1)) {
        ov107_02249BAC(v6->unk_3E8, 1);
        ov107_02249BAC(v6->unk_3EC, 0);
    } else {
        ov107_02249BAC(v6->unk_3E8, 1);
        ov107_02249BAC(v6->unk_3EC, 1);
    }

    ov107_02249BB8(v6->unk_434, 158, (24 + v4 * 16));

    if (param1 != 0xfffffffe) {
        ov107_02243EF8(v6, &v6->unk_50[12], ov107_02244DE0(v6, v5, v6->unk_13));

        ov107_022499BC(&v6->unk_1D8, ov107_02244DE0(v6, v5, v6->unk_13));
        ov107_022499FC(&v6->unk_1D8, ov107_02244DE0(v6, v5, v6->unk_13));
    } else {
        ov107_022499BC(&v6->unk_1D8, 0xffff);
        ov107_022499FC(&v6->unk_1D8, 0xffff);
        BGL_FillWindow(&v6->unk_50[12], 0);
        sub_0201A9A4(&v6->unk_50[12]);
    }

    return;
}

static void ov107_02244560 (BmpList * param0, u32 param1, u8 param2)
{
    UnkStruct_ov107_02241D6C * v0 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    if (param1 != 0xfffffffe) {
        ov107_02244A74(v0, 0, ov107_02244D5C(v0, param1, v0->unk_13), 4, 1);

        v0->unk_0A = ov107_02243890(v0, &v0->unk_50[5], 4, 128, param2, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 2);
        sub_0201A9A4(&v0->unk_50[5]);
    }

    return;
}

static void ov107_022445C4 (UnkStruct_ov107_02241D6C * param0)
{
    u8 v0, v1;
    u16 v2;
    int v3;

    ov107_02249D84(param0->unk_4C, &param0->unk_50[10]);
    BGL_FillWindow(&param0->unk_50[10], 15);

    param0->unk_19C = sub_02013A04((NELEMS(Unk_ov107_02249FF0)), 100);

    for (v3 = 0; v3 < (NELEMS(Unk_ov107_02249FF0)); v3++) {
        sub_02013A4C(param0->unk_19C, param0->unk_20, Unk_ov107_02249FF0[v3][1], Unk_ov107_02249FF0[v3][2]);
    }

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.unk_00 = param0->unk_19C;
    param0->unk_1A0.unk_0C = &param0->unk_50[10];
    param0->unk_1A0.unk_1C = param0;
    param0->unk_1A0.unk_04 = ov107_02244690;
    param0->unk_1A0.unk_08 = ov107_02244708;
    param0->unk_1A0.unk_10 = (NELEMS(Unk_ov107_02249FF0));
    param0->unk_1A0.unk_12 = (NELEMS(Unk_ov107_02249FF0));
    param0->unk_1A0.unk_18_0 = 15;
    param0->unk_198 = sub_0200112C(&param0->unk_1A0, 0, 0, 100);

    ov107_02245650(param0, &param0->unk_50[10]);

    return;
}

static void ov107_02244690 (BmpList * param0, u32 param1, u8 param2)
{
    u8 v0;
    u16 v1;
    UnkStruct_ov107_02241D6C * v2 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }

    v0 = ov107_02249CAC(v2->unk_1CC, v2->unk_09, 0);

    switch (param1) {
    case 4:
        if (v0 == 3) {
            v1 = 27;
        } else if (v0 == 1) {
            v1 = 25;
        } else {
            v1 = 26;
        }
        break;
    case 0xfffffffe:
        v1 = 28;
        break;
    default:
        v1 = 24;
        break;
    }

    ov107_0224379C(v2, &v2->unk_50[6], v1, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
    return;
}

static void ov107_02244708 (BmpList * param0, u32 param1, u8 param2)
{
    u16 v0;
    u8 v1, v2;
    UnkStruct_ov107_02241D6C * v3 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    sub_020014D0(param0, &v0);
    v1 = ov107_02249CAC(v3->unk_1CC, v3->unk_09, 0);

    switch (param1) {
    case 1:
    case 2:
    case 3:
        if (v1 >= Unk_ov107_02249FF0[param1 - 1][0]) {
            v2 = 1;
        } else {
            v2 = 2;
        }
        break;
    case 4:
        if (v1 == 3) {
            v2 = 2;
        } else {
            v2 = 1;
        }
        break;
    default:
        v2 = 1;
        break;
    }

    sub_020013D8(param0, v2, 15, 2);
    return;
}

static const u32 Unk_ov107_02249F54[][3] = {
    {0x1, 0x2C, 0x6},
    {0x2, 0x2D, 0x7},
    {0x1, 0x2E, 0x8},
    {0x1, 0x2F, 0xfffffffe}
};

static void ov107_02244780 (UnkStruct_ov107_02241D6C * param0)
{
    u8 v0, v1;
    u16 v2;
    int v3;

    sub_02019120(0, 0);
    ov107_02249D84(param0->unk_4C, &param0->unk_50[11]);
    BGL_FillWindow(&param0->unk_50[11], 15);

    param0->unk_19C = sub_02013A04((NELEMS(Unk_ov107_02249F54)), 100);

    for (v3 = 0; v3 < (NELEMS(Unk_ov107_02249F54)); v3++) {
        sub_02013A4C(param0->unk_19C, param0->unk_20, Unk_ov107_02249F54[v3][1], Unk_ov107_02249F54[v3][2]);
    }

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.unk_00 = param0->unk_19C;
    param0->unk_1A0.unk_0C = &param0->unk_50[11];
    param0->unk_1A0.unk_1C = param0;
    param0->unk_1A0.unk_04 = ov107_0224486C;
    param0->unk_1A0.unk_08 = ov107_022448E8;
    param0->unk_1A0.unk_10 = (NELEMS(Unk_ov107_02249F54));
    param0->unk_1A0.unk_12 = (NELEMS(Unk_ov107_02249F54));
    param0->unk_1A0.unk_18_0 = 15;
    param0->unk_198 = sub_0200112C(&param0->unk_1A0, 0, 0, 100);

    ov107_02245650(param0, &param0->unk_50[11]);

    sub_0201A9A4(&param0->unk_50[11]);
    sub_02019120(0, 1);

    return;
}

static void ov107_0224486C (BmpList * param0, u32 param1, u8 param2)
{
    u16 v0;
    u8 v1;
    UnkStruct_ov107_02241D6C * v2 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }

    v1 = ov107_02249CAC(v2->unk_1CC, v2->unk_09, 1);

    switch (param1) {
    case 6:
        v0 = 48;
        break;
    case 7:
        v0 = 49;
        break;
    case 8:
        if (v1 == 3) {
            v0 = 52;
        } else if (v1 == 1) {
            v0 = 50;
        } else {
            v0 = 51;
        }
        break;
    default:
        v0 = 53;
        break;
    }

    ov107_0224379C(v2, &v2->unk_50[6], v0, 1, 1, 0xff, 1, 2, 15, 1);
    return;
}

static void ov107_022448E8 (BmpList * param0, u32 param1, u8 param2)
{
    u8 v0, v1;
    UnkStruct_ov107_02241D6C * v2 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    v0 = ov107_02249CAC(v2->unk_1CC, v2->unk_09, 1);

    switch (param1) {
    case 7:
        if (v0 >= Unk_ov107_02249F54[param1 - 6][0]) {
            v1 = 1;
        } else {
            v1 = 2;
        }
        break;
    case 8:
        if (v0 == 3) {
            v1 = 2;
        } else {
            v1 = 1;
        }
        break;
    default:
        v1 = 1;
        break;
    }

    sub_020013D8(param0, v1, 15, 2);
    return;
}

static const u32 Unk_ov107_02249F2C[][2] = {
    {0x9, 0x0},
    {0xA, 0x5},
    {0xB, 0x9},
    {0xC, 0xA},
    {0xD, 0xfffffffe}
};

static const u16 Unk_ov107_02249E18[] = {
    0xE,
    0xF,
    0x10,
    0x11,
    0x12
};

static void ov107_02244944 (UnkStruct_ov107_02241D6C * param0)
{
    int v0;

    ov107_02249D84(param0->unk_4C, &param0->unk_50[9]);
    BGL_FillWindow(&param0->unk_50[9], 15);

    param0->unk_19C = sub_02013A04(5, 100);

    for (v0 = 0; v0 < 5; v0++) {
        sub_02013A4C(param0->unk_19C, param0->unk_20, Unk_ov107_02249F2C[v0][0], Unk_ov107_02249F2C[v0][1]);
    }

    param0->unk_1A0 = Unk_ov107_02249EE4;
    param0->unk_1A0.unk_00 = param0->unk_19C;
    param0->unk_1A0.unk_0C = &param0->unk_50[9];
    param0->unk_1A0.unk_1C = param0;
    param0->unk_1A0.unk_04 = ov107_02244A1C;
    param0->unk_1A0.unk_08 = NULL;
    param0->unk_1A0.unk_10 = 5;
    param0->unk_1A0.unk_12 = 5;
    param0->unk_1A0.unk_18_0 = 15;
    param0->unk_1A0.unk_1C = param0;
    param0->unk_198 = sub_0200112C(&param0->unk_1A0, param0->unk_18, param0->unk_1A, 100);

    ov107_02245650(param0, &param0->unk_50[9]);
    sub_0201A9A4(&param0->unk_50[9]);

    return;
}

static void ov107_02244A1C (BmpList * param0, u32 param1, u8 param2)
{
    UnkStruct_ov107_02241D6C * v0;
    u16 v1;

    v0 = (UnkStruct_ov107_02241D6C *)sub_02001504(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }

    sub_020014D0(param0, &v1);
    ov107_0224379C(v0, &v0->unk_50[8], Unk_ov107_02249E18[v1], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);

    return;
}

static void ov107_02244A74 (UnkStruct_ov107_02241D6C * param0, u32 param1, s32 param2, u32 param3, int param4)
{
    StringTemplate_SetNumber(param0->unk_24, param1, param2, param3, param4, 1);
    return;
}

static void ov107_02244A8C (UnkStruct_ov107_02241D6C * param0, u32 param1, BoxPokemon * param2)
{
    StringTemplate_SetSpeciesName(param0->unk_24, param1, param2);
    return;
}

static void ov107_02244A98 (UnkStruct_ov107_02241D6C * param0, u32 param1)
{
    StringTemplate_SetPlayerName(param0->unk_24, param1, SaveData_GetTrainerInfo(param0->unk_1CC));
    return;
}

static void ov107_02244AB4 (UnkStruct_ov107_02241D6C * param0, Window * param1, u32 param2, u32 param3, u8 param4)
{
    TextColor v0;
    const TrainerInfo * v1;
    Strbuf* v2;

    v1 = SaveData_GetTrainerInfo(param0->unk_1CC);
    v2 = Strbuf_Init((7 + 1), 100);

    Strbuf_CopyChars(v2, TrainerInfo_Name(v1));

    if (TrainerInfo_Gender(v1) == 0) {
        v0 = TEXT_COLOR(7, 8, 0);
    } else {
        v0 = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(param1, param4, v2, param2, param3, TEXT_SPEED_NO_TRANSFER, v0, NULL);
    sub_0201A9A4(param1);
    Strbuf_Free(v2);

    return;
}

static void ov107_02244B24 (UnkStruct_ov107_02241D6C * param0, Window * param1, u32 param2, u32 param3, u8 param4)
{
    TrainerInfo * v0;
    TextColor v1;

    v0 = CommInfo_TrainerInfo((CommSys_CurNetId() ^ 1));

    if (TrainerInfo_Gender(v0) == 0) {
        v1 = TEXT_COLOR(7, 8, 0);
    } else {
        v1 = TEXT_COLOR(3, 4, 0);
    }

    StringTemplate_SetPlayerName(param0->unk_24, 0, v0);
    ov107_02243860(param0, param1, 1, param2, param3, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(v1), GET_TEXT_SHADOW_COLOR(v1), GET_TEXT_BG_COLOR(v1), FONT_SYSTEM);

    return;
}

static void ov107_02244B8C (UnkStruct_ov107_02241D6C * param0, Window * param1, u32 param2, u32 param3, u8 param4, u8 param5)
{
    u32 v0, v1;
    u8 v2, v3, v4;

    if (param5 == 0) {
        v0 = 86;
        v2 = 7;
        v3 = 8;
        v4 = 0;
    } else if (param5 == 1) {
        v0 = 87;
        v2 = 3;
        v3 = 4;
        v4 = 0;
    } else {
        return;
    }

    ov107_02243860(param0, param1, v0, param2, param3, TEXT_SPEED_NO_TRANSFER, v2, v3, v4, param4);

    return;
}

static void ov107_02244BD0 (UnkStruct_ov107_02241D6C * param0, int * param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static void ov107_02244BD8 (UnkStruct_ov107_02241D6C * param0, int param1)
{
    u8 v0;
    int v1;

    v1 = 0;
    v0 = ov107_02249C98(param0->unk_14, param0->unk_0D);

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == 0) {
            param0->unk_0D += (param0->unk_14 - 1);
        } else {
            param0->unk_0D--;
        }

        v1 = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == (param0->unk_14 - 1)) {
            param0->unk_0D -= (param0->unk_14 - 1);
        } else {
            param0->unk_0D++;
        }

        v1 = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_0D < param0->unk_14) {
            return;
        }

        param0->unk_0D = param0->unk_0C;
        v1 = 1;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_0D >= param0->unk_15) {
            return;
        }

        param0->unk_0C = param0->unk_0D;
        param0->unk_0D = param0->unk_15;

        v1 = 1;
    }

    if (v1 == 1) {
        ov107_02244C70(param0);
    }

    return;
}

static void ov107_02244C70 (UnkStruct_ov107_02241D6C * param0)
{
    Sound_PlayEffect(1500);

    if (ov104_0223BA14(param0->unk_09) == 1) {
        ov107_0224529C(param0, 12, param0->unk_0D);
    }

    ov107_02244CA0(param0, param0->unk_0D, 0);
    return;
}

static void ov107_02244CA0 (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2)
{
    UnkStruct_ov107_02249B8C * v0;
    u32 v1, v2, v3, v4;

    if (param2 == 0) {
        v0 = param0->unk_418;
        v3 = 1;
        v4 = 0;
    } else {
        v0 = param0->unk_41C;
        v3 = 2;
        v4 = 17;
    }

    if (param1 >= param0->unk_15) {
        ov107_02249BEC(v0, v4);
        ov107_02249BB8(v0, 224, 160);
    } else {
        ov107_02249BEC(v0, v3);
        ov107_02244D08(param0, &v1, &v2, param1);
        ov107_02249BB8(v0, v1, v2);
    }

    return;
}

static void ov107_02244D08 (UnkStruct_ov107_02241D6C * param0, u32 * param1, u32 * param2, u8 param3)
{
    if (ov104_0223BA14(param0->unk_09) == 1) {
        if (param3 == 0) {
            *param1 = 40;
        } else if (param3 == 1) {
            *param1 = 104;
        } else if (param3 == 2) {
            *param1 = 168;
        } else {
            *param1 = 232;
        }
    } else {
        if (param3 == 0) {
            *param1 = 72;
        } else if (param3 == 1) {
            *param1 = 136;
        } else {
            *param1 = 200;
        }
    }

    *param2 = 88;
    return;
}

static u16 ov107_02244D5C (UnkStruct_ov107_02241D6C * param0, u16 param1, u8 param2)
{
    u8 v0, v1, v2, v3;

    v0 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 1);
    v2 = Unk_ov107_02249E06[v0 - 1];
    v3 = Unk_ov107_02249E12[v0 - 1];

    if (param2 == 6) {
        return Unk_ov107_0224A06C[param1];
    }

    return Unk_ov107_02249FBA[param1];
}

static u16 ov107_02244D90 (u16 param0)
{
    int v0;

    for (v0 = 0; v0 < (NELEMS(Unk_ov107_02249F84)); v0++) {
        if (Unk_ov107_02249F84[v0] == param0) {
            return Unk_ov107_02249FBA[v0];
        }
    }

    for (v0 = 0; v0 < (NELEMS(Unk_ov107_0224A02C)); v0++) {
        if (Unk_ov107_0224A02C[v0] == param0) {
            return Unk_ov107_0224A06C[v0];
        }
    }

    GF_ASSERT(0);
    return 0;
}

static u16 ov107_02244DE0 (UnkStruct_ov107_02241D6C * param0, u16 param1, u8 param2)
{
    u8 v0, v1, v2, v3;

    v0 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 1);
    v2 = Unk_ov107_02249E06[v0 - 1];
    v3 = Unk_ov107_02249E12[v0 - 1];

    if (param2 == 6) {
        return Unk_ov107_0224A02C[param1];
    }

    return Unk_ov107_02249F84[param1];
}

static void ov107_02244E14 (UnkStruct_ov107_02241D6C * param0, u16 * param1, u16 * param2, u16 * param3, u16 * param4)
{
    if (ov104_0223BA14(param0->unk_09) == 0) {
        *param1 = 28;
        *param2 = 0;
        *param3 = 0;
        *param4 = 0;
    } else {
        *param1 = 0;
        *param2 = 0;
        *param3 = 120;
        *param4 = 0;
    }

    return;
}

static BOOL ov107_02244E44 (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2)
{
    u32 v0, v1, v2, v3;
    u16 v4;
    u8 v5;
    Pokemon * v6;

    v5 = ov107_02249C98(param0->unk_14, param1);
    v6 = Party_GetPokemonBySlotIndex(param0->unk_43C, v5);
    v0 = Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL);
    v1 = Pokemon_GetValue(v6, MON_DATA_MAX_HP, NULL);
    v2 = ov107_022450E8(param0, HealthBar_Color(v0, v1, 48));
    v3 = ov107_02245114(param0, HealthBar_Color(v0, v1, 48));

    switch (param2) {
    case 4:
    case 8:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    case 1:
    case 2:
    case 3:
        if (param0->unk_0E_2 == 0) {
            param0->unk_0E_2 = 1;

            if (ov104_0223BA14(param0->unk_09) == 0) {
                v4 = 64;
            } else {
                v4 = 32;
            }

            param0->unk_414 = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 8, v4 + (64 * v5), 62, 0, NULL);
        }

        if (param0->unk_414 != NULL) {
            if (ov107_02249C40(param0->unk_414) == 0) {
                ov107_02249B8C(param0->unk_414);
                param0->unk_414 = NULL;
            }
        }

        if (param0->unk_414 == NULL) {
            ov107_02243F4C(param0, &param0->unk_50[3], v5, Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL));
            ov107_02249BEC(param0->unk_420[v5], v3);
            ov107_02249C1C(param0->unk_3F4[v5], v2);
            param0->unk_0E_2 = 0;
            return 1;
        }
        break;
    case 6:
    case 7:
        if (param0->unk_0E_2 == 0) {
            param0->unk_0E_2 = 1;

            if (ov104_0223BA14(param0->unk_09) == 0) {
                v4 = 64;
            } else {
                v4 = 32;
            }

            param0->unk_414 = ov107_02249B1C(&param0->unk_1D8, 0, 0, 0, 16, v4 + (64 * v5), 62, 0, NULL);
        }

        if (ov107_02249C40(param0->unk_414) == 0) {
            ov107_02249B8C(param0->unk_414);
            param0->unk_414 = NULL;
            param0->unk_0E_2 = 0;
            return 1;
        }
        break;
    case 9:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    case 10:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    }

    return 0;
}

static void ov107_0224503C (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2)
{
    u8 v0, v1;
    u16 v2;
    s16 v3, v4, v5, v6;

    v0 = ov107_02249C98(param0->unk_14, param1);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v2 = 64;
    } else {
        v2 = 32;
    }

    if (param2 == 1) {
        v3 = 40;
        v4 = 80;
        v1 = 0;
    } else {
        v3 = (64 * v0 + v2);
        v4 = 58;
        v1 = 2;
    }

    v5 = (v3 + 8);
    v6 = (v4 + 4);

    ov107_02249C58(param0->unk_404[v0], v5, v6);
    ov107_02249BB8(param0->unk_404[v0], v5, v6);
    ov107_02249C4C(param0->unk_404[v0], v1);
    ov107_02249C58(param0->unk_3F4[v0], v3, v4);
    ov107_02249BB8(param0->unk_3F4[v0], v3, v4);
    ov107_02249C4C(param0->unk_3F4[v0], v1);

    return;
}

static u32 ov107_022450E8 (UnkStruct_ov107_02241D6C * param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 4:
        v0 = 1;
        break;
    case 3:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 1:
        v0 = 4;
        break;
    }

    return v0;
}

static u32 ov107_02245114 (UnkStruct_ov107_02241D6C * param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 4:
        v0 = 15;
        break;
    case 3:
        v0 = 15;
        break;
    case 2:
        v0 = 14;
        break;
    case 1:
        v0 = 13;
        break;
    }

    return v0;
}

static void ov107_02245140 (UnkStruct_ov107_02241D6C * param0, s8 param1)
{
    Pokemon * v0;
    s8 v1;

    v1 = param0->unk_0D;
    v1 += param1;

    if (v1 < 0) {
        v1 = (param0->unk_14 - 1);
    } else if (v1 >= param0->unk_14) {
        v1 = 0;
    }

    param0->unk_0D = v1;
    ov107_02244C70(param0);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
    ov107_02243950(param0, &param0->unk_50[4], v0);

    return;
}

static void ov107_0224518C (UnkStruct_ov107_02241D6C * param0, s8 param1)
{
    Pokemon * v0;
    s8 v1;

    v1 = param0->unk_0D;
    v1 += param1;

    if (v1 < 0) {
        v1 = (param0->unk_14 - 1);
    } else if (v1 >= param0->unk_14) {
        v1 = 0;
    }

    param0->unk_0D = v1;
    ov107_02244C70(param0);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
    ov107_02243B84(param0, &param0->unk_50[4], v0);

    return;
}

static void ov107_022451D8 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02245618(param0);
    ov107_02245730(param0);
    ov107_02244120(param0);
    ov107_02245288(&param0->unk_50[6]);
    ov107_02245BE0(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov107_02249BAC(param0->unk_430, 0);

    return;
}

static BOOL ov107_02245210 (Pokemon * param0)
{
    u8 v0;

    v0 = 0;

    if (Pokemon_GetValue(param0, MON_DATA_MOVE1_CUR_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE1_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE2_CUR_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE2_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE3_CUR_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE3_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE4_CUR_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE4_MAX_PP, NULL)) {
        v0 = 1;
    }

    return v0;
}

static void ov107_02245288 (Window * param0)
{
    sub_0200E084(param0, 1);
    sub_0201AD10(param0);
    return;
}

BOOL ov107_0224529C (UnkStruct_ov107_02241D6C * param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 10:
        v1 = 49;
        ov107_022452F4(param0, param1);
        break;
    case 11:
        v1 = 50;
        ov107_02245368(param0, param1, param2);
        break;
    case 12:
        v1 = 51;
        ov107_022453F8(param0, param1);
        break;
    case 13:
        v1 = 52;
        ov107_0224542C(param0);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_444, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov107_022452F4 (UnkStruct_ov107_02241D6C * param0, u16 param1)
{
    int v0, v1;
    TrainerInfo * v2;

    v1 = 0;
    v2 = SaveData_GetTrainerInfo(param0->unk_1CC);

    param0->unk_444[v1] = param1;
    v1 += 1;

    param0->unk_444[v1] = TrainerInfo_Gender(v2);
    v1 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_444[v1 + v0] = ov107_02249CAC(param0->unk_1CC, param0->unk_09, v0);
    }

    v1 += 3;

    return;
}

void ov107_02245338 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_ov107_02241D6C * v2 = param3;
    const u16 * v3 = param2;

    v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        v2->unk_497[v0] = (u8)v3[v1 + v0];
    }

    v1 += 3;

    return;
}

void ov107_02245368 (UnkStruct_ov107_02241D6C * param0, u16 param1, u16 param2)
{
    param0->unk_444[0] = param1;
    param0->unk_444[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_12 == 0xff) {
            param0->unk_12 = param2;
        }
    }

    param0->unk_444[2] = param0->unk_12;
    param0->unk_444[4] = param0->unk_10;
    param0->unk_444[5] = param0->unk_13;

    return;
}

void ov107_022453A0 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_ov107_02241D6C * v2 = param3;
    const u16 * v3 = param2;

    v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_495 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_12 != 0xff) {
            v2->unk_495 = 0;
        } else {
            v2->unk_12 = v2->unk_495 + v2->unk_15;
            v2->unk_10 = v3[4];
            v2->unk_13 = v3[5];
        }
    } else {
        v2->unk_12 = v3[2];
        v2->unk_10 = v3[4];
        v2->unk_13 = v3[5];
    }

    return;
}

void ov107_022453F8 (UnkStruct_ov107_02241D6C * param0, u16 param1)
{
    param0->unk_444[0] = param1;
    param0->unk_444[1] = param0->unk_0D;

    return;
}

void ov107_02245408 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov107_02241D6C * v0 = param3;
    const u16 * v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_494 = (u8)v1[1];
    ov107_02244CA0(v0, v0->unk_494, 1);

    return;
}

void ov107_0224542C (UnkStruct_ov107_02241D6C * param0)
{
    param0->unk_444[0] = 1;
    return;
}

void ov107_02245438 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov107_02241D6C * v0 = param3;
    const u16 * v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_496 = (u8)v1[0];
    return;
}

static void ov107_02245454 (Pokemon * param0, u16 param1)
{
    ApplyItemEffectsToPokemon(param0, param1, 0, 0, 100);
    return;
}

static void ov107_02245464 (UnkStruct_ov107_02241D6C * param0, Window * param1)
{
    u16 v0, v1, v2, v3, v4, v5;

    ov107_02244E14(param0, &v2, &v3, &v4, &v5);

    if (ov104_0223BA14(param0->unk_09) == 0) {
        v0 = v2 + 0;
        v1 = v3 + 0;
        ov107_02244AB4(param0, param1, v0, v1, FONT_SYSTEM);
    } else {
        if (CommSys_CurNetId() == 0) {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_02244AB4(param0, param1, v0, v1, FONT_SYSTEM);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_02244B24(param0, param1, v0, v1, 0);
        } else {
            v0 = v2 + 0;
            v1 = v3 + 0;

            ov107_02244B24(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            ov107_02244AB4(param0, param1, v0, v1, FONT_SYSTEM);
        }
    }

    sub_0201A9A4(param1);
    return;
}

static void ov107_022454F8 (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2)
{
    u32 v0;
    Pokemon * v1;

    v1 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));
    v0 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, 0);

    ov107_02244A8C(param0, 0, Pokemon_GetBoxPokemon(v1));
    ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));

    param0->unk_0A = ov107_02243918(param0, Unk_ov107_02249E00[param2 - 1], FONT_MESSAGE);

    switch (param2) {
    case 1:
        ov107_02245454(v1, 24);
        break;
    case 2:
        ov107_02245454(v1, 41);
        break;
    case 3:
        ov107_02245454(v1, 24);
        ov107_02245454(v1, 41);
        break;

    default:
        GF_ASSERT(0);
    }

    Sound_PlayEffect(1516);

    return;
}

static void ov107_022455A0 (UnkStruct_ov107_02241D6C * param0, u8 param1, u16 param2)
{
    Pokemon * v0;

    v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));

    Pokemon_SetValue(v0, 6, &param2);

    ov107_02249BAC(param0->unk_404[ov107_02249C98(param0->unk_14, param1)], 1);
    ov107_02244A8C(param0, 0, Pokemon_GetBoxPokemon(v0));

    StringTemplate_SetItemName(param0->unk_24, 1, param2);
    param0->unk_0A = ov107_02243918(param0, 59, FONT_MESSAGE);
    Sound_PlayEffect(1572);

    return;
}

static void ov107_02245618 (UnkStruct_ov107_02241D6C * param0)
{
    if (param0->unk_0E_4 == 1) {
        param0->unk_0E_4 = 0;
        sub_02001BC4(param0->unk_17C, NULL);
        Window_Clear(param0->unk_170.unk_04, 1);
        sub_0201AD10(param0->unk_170.unk_04);
    }

    return;
}

static void ov107_02245650 (UnkStruct_ov107_02241D6C * param0, Window * param1)
{
    param0->unk_0E_0 = 1;
    return;
}

static void ov107_02245660 (UnkStruct_ov107_02241D6C * param0)
{
    ov107_02249BAC(param0->unk_3F0, 0);
    ov107_02249BAC(param0->unk_3E8, 0);
    ov107_02249BAC(param0->unk_3EC, 0);
    ov107_02249BAC(param0->unk_434, 0);

    Window_Clear(&param0->unk_50[15], 1);
    sub_0201AD10(&param0->unk_50[15]);

    ov107_0224503C(param0, param0->unk_0D, 0);

    BGL_FillWindow(&param0->unk_50[17], 0);
    sub_0201AD10(&param0->unk_50[17]);
    BGL_FillWindow(&param0->unk_50[16], 0);
    sub_0201AD10(&param0->unk_50[16]);

    return;
}

static void ov107_022456E4 (UnkStruct_ov107_02241D6C * param0)
{
    u16 v0;

    ov107_02245288(&param0->unk_50[6]);
    ov107_02249BAC(param0->unk_3F0, 1);

    sub_020013AC(param0->unk_198);
    sub_020014D0(param0->unk_198, &v0);

    ov107_02243EF8(param0, &param0->unk_50[12], ov107_02244DE0(param0, v0, param0->unk_13));
    return;
}

static void ov107_02245730 (UnkStruct_ov107_02241D6C * param0)
{
    Window * v0;

    if (param0->unk_0E_0 == 1) {
        param0->unk_0E_0 = 0;
        v0 = (Window *)sub_02001504(param0->unk_198, 18);

        Window_Clear(v0, 1);
        BGL_FillWindow(v0, 0);
        sub_0201AD10(v0);

        sub_02013A3C(param0->unk_19C);
        sub_02001384(param0->unk_198, NULL, NULL);
    }

    return;
}

asm static void ov107_02245780 (UnkStruct_ov107_02241D6C * param0, Window * param1)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x30
    add r4, r1, #0
    add r1, sp, #0x28
    str r1, [sp]
    add r1, sp, #0x2c
    add r3, sp, #0x28
    add r5, r0, #0
    add r1, #2
    add r2, sp, #0x2c
    add r3, #2
    bl ov107_02244E14
    ldrb r0, [r5, #9]
    bl ov104_0223BA14
    cmp r0, #0
    bne _0224581A
    add r1, sp, #0x28
    ldrh r0, [r1, #6]
    ldrh r6, [r1, #4]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl BGL_WindowColor
    ldrb r0, [r5, #9]
    bl sub_0205E630
    str r0, [sp, #0x1c]
    ldrb r0, [r5, #9]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    ldr r0, [r5, #4]
    ldr r1, [sp, #0x1c]
    bl sub_02030698
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #4
    bl ov107_02244A74
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02243890
    strb r0, [r5, #0xa]
    b _022459C2
 _0224581A:
    bl CommSys_CurNetId
    cmp r0, #0
    add r1, sp, #0x28
    bne _022458F4
    ldrh r0, [r1, #6]
    ldrh r6, [r1, #4]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl BGL_WindowColor
    ldrb r0, [r5, #9]
    bl sub_0205E630
    str r0, [sp, #0x20]
    ldrb r0, [r5, #9]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    ldr r0, [r5, #4]
    ldr r1, [sp, #0x20]
    bl sub_02030698
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #4
    bl ov107_02244A74
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02243890
    add r1, sp, #0x28
    strb r0, [r5, #0xa]
    ldrh r0, [r1, #2]
    ldrh r6, [r1]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl BGL_WindowColor
    mov r0, #1
    str r0, [sp]
    ldr r2, = 0x436
    add r0, r5, #0
    ldrh r2, [r5, r2]
    mov r1, #0
    mov r3, #4
    bl ov107_02244A74
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r1, #2
    str r1, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #3
    add r3, r7, #0
    bl ov107_02243890
    strb r0, [r5, #0xa]
    b _022459C2
 _022458F4:
    ldrh r0, [r1, #6]
    ldrh r6, [r1, #4]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl BGL_WindowColor
    mov r0, #1
    str r0, [sp]
    ldr r2, = 0x436
    add r0, r5, #0
    ldrh r2, [r5, r2]
    mov r1, #0
    mov r3, #4
    bl ov107_02244A74
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r1, #2
    str r1, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    add r0, r5, #0
    add r1, r4, #0
    mov r2, #3
    add r3, r7, #0
    bl ov107_02243890
    add r1, sp, #0x28
    strb r0, [r5, #0xa]
    ldrh r0, [r1, #2]
    ldrh r6, [r1]
    mov r1, #0
    add r0, #0x68
    lsl r0, r0, #0x10
    lsr r7, r0, #0x10
    add r2, r7, #0
    mov r0, #0x30
    sub r2, #0x30
    str r0, [sp]
    mov r0, #0x10
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    add r0, r4, #0
    lsr r2, r2, #0x10
    add r3, r6, #0
    bl BGL_WindowColor
    ldrb r0, [r5, #9]
    bl sub_0205E630
    str r0, [sp, #0x24]
    ldrb r0, [r5, #9]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    ldr r0, [r5, #4]
    ldr r1, [sp, #0x24]
    bl sub_02030698
    add r2, r0, #0
    mov r0, #1
    str r0, [sp]
    add r0, r5, #0
    mov r1, #0
    mov r3, #4
    bl ov107_02244A74
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    mov r2, #2
    str r2, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    add r0, r5, #0
    add r1, r4, #0
    add r3, r7, #0
    str r2, [sp, #0x18]
    bl ov107_02243890
    strb r0, [r5, #0xa]
 _022459C2:
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x30
    pop {r3, r4, r5, r6, r7, pc}
}

static void ov107_022459D0 (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2)
{
    u8 v0, v1;
    u16 v2;
    u16 v3[4];
    u16 v4, v5, v6;

    Sound_PlayEffect(1507);

    v1 = param0->unk_15;
    v0 = ov107_02249C9C(v1, param1);

    switch (param2) {
    case 1:
    case 2:
    case 3:
        v2 = Unk_ov107_02249E0C[param2 - 1];
        break;
    case 6:
    case 7:
        v2 = ov107_02244D90(param0->unk_10);
        break;
    case 9:
    case 10:
        v2 = 0;
        break;
    }

    if (CommSys_CurNetId() == 0) {
        if (param1 < v1) {
            ov107_02244A98(param0, 5);
            ov104_0223BC2C(param0->unk_04, param0->unk_09, v2);
        } else {
            ov107_02249CF4(param0->unk_24, 5);
            param0->unk_49A -= v2;
        }
    } else {
        if (param1 < v1) {
            ov107_02249CF4(param0->unk_24, 5);
            param0->unk_49A -= v2;
        } else {
            ov107_02244A98(param0, 5);
            ov104_0223BC2C(param0->unk_04, param0->unk_09, v2);
        }
    }

    ov107_02245780(param0, &param0->unk_50[0]);
    ov107_02245618(param0);
    ov107_02245BE0(param0);
    ov107_02244120(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    ov107_02245288(&param0->unk_50[6]);

    switch (param2) {
    case 1:
    case 2:
    case 3:
        ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
        ov107_022454F8(param0, v0, param2);
        break;
    case 6:
    case 7:
        ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));
        ov107_022455A0(param0, v0, param0->unk_10);
        break;
    case 9:
        ov107_02245B40(param0, v0);
        break;
    case 10:
        ov107_02245B90(param0, v0);
        break;
    }

    return;
}

static void ov107_02245B40 (UnkStruct_ov107_02241D6C * param0, u8 param1)
{
    Pokemon * v0;

    ov107_02243630(param0, 2);

    sub_0201AD10(&param0->unk_50[6]);
    sub_0201AD10(&param0->unk_50[5]);
    sub_0201AD10(&param0->unk_50[15]);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));
    ov107_02243950(param0, &param0->unk_50[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov107_02245B90 (UnkStruct_ov107_02241D6C * param0, u8 param1)
{
    Pokemon * v0;

    ov107_022436AC(param0, 2);

    sub_0201AD10(&param0->unk_50[6]);
    sub_0201AD10(&param0->unk_50[5]);
    sub_0201AD10(&param0->unk_50[15]);

    v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));

    ov107_02243B84(param0, &param0->unk_50[4], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov107_02245BE0 (UnkStruct_ov107_02241D6C * param0)
{
    BGL_FillWindow(&param0->unk_50[4], 0);
    sub_0201ACF4(&param0->unk_50[4]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    return;
}

static void ov107_02245C00 (UnkStruct_ov107_02241D6C * param0)
{
    int v0;
    u8 v1, v2;
    Pokemon * v3;

    v1 = ov104_0223B7A8(param0->unk_09, 1);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_43C, v0);
        v2 = ov104_0222E240(Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL), Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL));

        if (param0->unk_3F4[v0] != NULL) {
            ov107_02249C1C(param0->unk_3F4[v0], v2);

            if ((v0 != ov107_02249C98(param0->unk_14, param0->unk_0D)) || (param0->unk_0D >= param0->unk_15)) {
                ov107_02249C28(param0->unk_3F4[v0], 0);
            } else {
                ov107_02249C28(param0->unk_3F4[v0], 1);
            }
        }
    }

    return;
}

static void ov107_02245C94 (UnkStruct_ov107_02241D6C * param0, u8 param1, u8 param2)
{
    u8 v0, v1, v2, v3;
    u32 v4;
    u16 v5[4];

    v3 = ov104_0223B7A8(param0->unk_09, 0);

    if (param2 == 4) {
        v2 = 0;
    } else {
        v2 = 1;
    }

    v0 = param0->unk_15;
    v1 = ov107_02249C9C(v0, param1);

    if (CommSys_CurNetId() == 0) {
        if (param1 < v0) {
            ov107_02244A98(param0, 5);

            v4 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, v2);
            ov104_0223BC2C(param0->unk_04, param0->unk_09, Unk_ov107_02249E46[v2][v4]);

            v4 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, v2);
            v5[0] = (v4 + 1);
            sub_020306E4(sub_0203068C(param0->unk_1CC), sub_0205E5B4(param0->unk_09, v2), sub_0205E6A8(sub_0205E5B4(param0->unk_09, v2)), (v4 + 1));

            if (ov104_0223BA14(param0->unk_09) == 1) {
                if (param2 == 4) {
                    param0->unk_0E_5 = 1;
                } else {
                    param0->unk_0E_5 = 2;
                }
            }
        } else {
            ov107_02249CF4(param0->unk_24, 5);
            v4 = param0->unk_497[v2];
            param0->unk_49A -= Unk_ov107_02249E46[v2][v4];
            param0->unk_497[v2]++;
        }
    } else {
        if (param1 < v0) {
            ov107_02249CF4(param0->unk_24, 5);
            v4 = param0->unk_497[v2];
            param0->unk_49A -= Unk_ov107_02249E46[v2][v4];
            param0->unk_497[v2]++;
        } else {
            ov107_02244A98(param0, 5);
            v4 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, v2);

            ov104_0223BC2C(param0->unk_04, param0->unk_09, Unk_ov107_02249E46[v2][v4]);
            v4 = ov107_02249CAC(param0->unk_1CC, param0->unk_09, v2);

            v5[0] = (v4 + 1);
            sub_020306E4(sub_0203068C(param0->unk_1CC), sub_0205E5B4(param0->unk_09, v2), sub_0205E6A8(sub_0205E5B4(param0->unk_09, v2)), (v4 + 1));

            if (ov104_0223BA14(param0->unk_09) == 1) {
                if (param2 == 4) {
                    param0->unk_0E_5 = 1;
                } else {
                    param0->unk_0E_5 = 2;
                }
            }
        }
    }

    ov107_02245618(param0);
    ov107_02245780(param0, &param0->unk_50[0]);
    ov107_02249DBC(&param0->unk_50[6], Options_Frame(param0->unk_1C8));

    param0->unk_0A = ov107_02243918(param0, Unk_ov107_02249E34[v2][v4], FONT_MESSAGE);

    return;
}

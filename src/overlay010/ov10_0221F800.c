#include "overlay010/ov10_0221F800.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "battle/graphic/pl_batt_obj/pl_batt_obj.naix"
#include "overlay010/struct_ov10_0221F800.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "bag.h"
#include "camera.h"
#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "journal.h"
#include "map_header.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "pokemon_summary_app.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02014000.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_0202F1D4.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_0207E0B8.h"
#include "unk_0208C098.h"

typedef struct UnkStruct_ov10_0221FB28_t UnkStruct_ov10_0221FB28;
typedef u8 (*UnkFuncPtr_ov10_02222AD0)(UnkStruct_ov10_0221FB28 *);

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u32 unk_14;
} UnkStruct_ov10_0221FB28_sub1;

typedef struct UnkStruct_ov10_0221FB28_t {
    UnkStruct_ov10_0221F800 *unk_00;
    const UnkFuncPtr_ov10_02222AD0 *unk_04;
    PaletteData *unk_08;
    BGL *unk_0C;
    Window unk_10[24];
    SpriteRenderer *unk_190;
    SpriteGfxHandler *unk_194;
    CellActorData *unk_198[30];
    u32 unk_210;
    UnkStruct_ov10_0221FB28_sub1 unk_214[6];
    u16 unk_298[96];
    u16 unk_358[96];
    u16 unk_418[96];
    u16 unk_4D8[48];
    u16 unk_538[2][384];
    UnkStruct_02012744 *unk_B38;
    FontOAM *unk_B3C[4];
    GenericPointerData *unk_B4C;
    UnkStruct_02014014 *unk_B50;
    void *unk_B54;
    u8 unk_B58[4];
    u8 unk_B5C[4];
    u8 unk_B60[4];
    u8 unk_B64[4];
    s32 unk_B68;
    s16 unk_B6C;
    s16 unk_B6E;
    s8 unk_B70;
    s8 unk_B71;
    u8 unk_B72;
    u8 unk_B73;
    u8 unk_B74;
    u8 unk_B75;
    u8 unk_B76;
    u16 unk_B78;
    u16 unk_B7A;
    Window unk_B7C;
    Window unk_B8C;
    GXBG0As unk_B9C;
    MessageLoader *unk_BA0;
    StringTemplate *unk_BA4;
    Strbuf *unk_BA8;
    int unk_BAC;
    int unk_BB0;
    UIControlData *unk_BB4;
    void *unk_BB8;
    int unk_BBC;
    int unk_BC0;
    BOOL unk_BC4;
};

static void ov10_0221F870(SysTask *param0, void *param1);
static void ov10_0221F900(void);
static u8 ov10_0221FB28(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_0221FE10(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_0221FE48(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220014(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220228(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220350(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220360(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_022203A0(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_022203BC(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_022204C0(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220A34(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220A50(SysTask *param0, UnkStruct_ov10_0221FB28 *param1);
static u8 ov10_022205F4(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220604(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_02220698(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_022206D8(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_0222094C(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_0221FC78(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_0221FD00(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_0221FBFC(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_022209E0(UnkStruct_ov10_0221FB28 *param0);
static BOOL ov10_02220AD0(void);
static void ov10_02220B00(UnkStruct_ov10_0221FB28 *param0, UnkStruct_ov104_02241308 *param1, int param2);
static CellActorData *ov10_02220BA0(UnkStruct_ov10_0221FB28 *param0, const u32 *param1);
static void ov10_02220BE8(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02220C2C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02220C64(void *param0);
static void ov10_02220C94(UnkStruct_ov10_0221FB28 *param0, GXBG0As param1, int param2);
static void ov10_02220E30(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02220E70(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221004(void);
static void ov10_0222101C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022214A0(UnkStruct_ov10_0221FB28 *param0, int param1, int param2);
static void ov10_022210F4(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221188(UnkStruct_ov10_0221FB28 *param0, u8 param1, s16 param2, s16 param3);
static void ov10_022212AC(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022213B8(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221440(UnkStruct_ov10_0221FB28 *param0, u32 param1, s16 param2, s16 param3);
static void ov10_0222146C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022217CC(UnkStruct_ov10_0221FB28 *param0);
static int ov10_022218BC(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022218F4(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221588(UnkStruct_ov10_0221FB28 *param0);
static void ov10_0222166C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022216E0(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221970(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221A10(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221A3C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02222050(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221E58(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221AE4(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221C14(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02221C48(UnkStruct_ov10_0221FB28 *param0, u8 param1);
static void ov10_022223C0(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022223E8(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02222720(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022220B4(UnkStruct_ov10_0221FB28 *param0);
static void ov10_0222216C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02222208(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022222A4(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02222340(UnkStruct_ov10_0221FB28 *param0, s16 param1);
static u32 ov10_02221928(u32 param0, BOOL param1);
static u32 ov10_0222194C(u32 param0, BOOL param1);
static void ov10_022227A4(UnkStruct_ov10_0221F800 *param0);
static u8 ov10_02220700(UnkStruct_ov10_0221FB28 *param0);
static u8 ov10_022208B0(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02220F1C(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02220DCC(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02220DFC(UnkStruct_ov10_0221FB28 *param0);
static void ov10_022229D4(UnkStruct_ov10_0221FB28 *param0);
static void ov10_0221F930(UnkStruct_ov10_0221FB28 *param0);
static BOOL ov10_02222A08(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02222A28(UnkStruct_ov10_0221FB28 *param0);
static void ov10_02222A48(UnkStruct_ov10_0221FB28 *param0);

static const u32 Unk_ov10_02222DB4[][7] = {
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB807, 0xB807, 0xB807, 0xB807, 0x2, 0x0, 0x0 },
    { 0xB808, 0xB807, 0xB808, 0xB808, 0x1, 0x0, 0x1 },
    { 0xB808, 0xB807, 0xB808, 0xB808, 0x1, 0x0, 0x1 }
};

static const UnkFuncPtr_ov10_02222AD0 Unk_ov10_02222AD0[] = {
    ov10_0221FBFC,
    ov10_0221FE10,
    ov10_022209E0,
    ov10_0221FE10,
    ov10_02220A34
};

static const UnkFuncPtr_ov10_02222AD0 Unk_ov10_02222AA8[] = {
    ov10_0221FC78,
    ov10_0221FE10,
    ov10_0221FE48,
    ov10_02220014,
    ov10_02220228
};

static const UnkFuncPtr_ov10_02222AD0 Unk_ov10_02222CA8[] = {
    ov10_0221FD00,
    ov10_0221FE10,
    ov10_0221FE48,
    ov10_02220014,
    ov10_02220350,
    ov10_0221FE10,
    ov10_02220360,
    ov10_022203A0,
    ov10_022205F4,
    ov10_02220604,
    ov10_0221FE10,
    ov10_02220698,
    ov10_0221FE10,
    ov10_0222094C,
    ov10_0221FE10,
    ov10_02220700,
    ov10_0221FE10,
    ov10_022208B0,
    ov10_02220A34
};

static const UnkFuncPtr_ov10_02222AD0 Unk_ov10_02222C38[] = {
    ov10_0221FD00,
    ov10_0221FE10,
    ov10_0221FE48,
    ov10_02220014,
    ov10_022205F4,
    ov10_02220604,
    ov10_0221FE10,
    ov10_022206D8,
    ov10_0221FE10,
    ov10_02220700,
    ov10_0221FE10,
    ov10_022208B0,
    ov10_02220A34
};

static const u8 Unk_ov10_02222A7C[][2] = {
    { 0x6, 0x6 },
    { 0x0, 0x6 },
    { 0x0, 0x6 },
    { 0x4, 0xA },
    { 0x0, 0xA },
    { 0x0, 0xA }
};

static const UnkStruct_ov61_0222C884 Unk_ov10_02222CF4[] = {
    { 0x1, 0x6, 0x1, 0x9, 0x2, 0x0, 0x1 },
    { 0x1, 0x1, 0x4, 0x5, 0x2, 0x0, 0x13 },
    { 0x1, 0x7, 0x4, 0x8, 0x2, 0x0, 0x1D },
    { 0x1, 0x8, 0x3, 0x6, 0x1, 0x3, 0x2D },
    { 0x1, 0x6, 0x7, 0x9, 0x2, 0x0, 0x33 },
    { 0x1, 0x1, 0xA, 0x5, 0x2, 0x0, 0x45 },
    { 0x1, 0x7, 0xA, 0x8, 0x2, 0x0, 0x4F },
    { 0x1, 0x8, 0x9, 0x6, 0x1, 0x4, 0x5F },
    { 0x1, 0x6, 0xD, 0x9, 0x2, 0x0, 0x65 },
    { 0x1, 0x1, 0x10, 0x5, 0x2, 0x0, 0x77 },
    { 0x1, 0x7, 0x10, 0x8, 0x2, 0x0, 0x81 },
    { 0x1, 0x8, 0xF, 0x6, 0x1, 0x5, 0x91 },
    { 0x1, 0x16, 0x2, 0x9, 0x2, 0x0, 0x97 },
    { 0x1, 0x11, 0x5, 0x5, 0x2, 0x0, 0xA9 },
    { 0x1, 0x17, 0x5, 0x8, 0x2, 0x0, 0xB3 },
    { 0x1, 0x18, 0x4, 0x6, 0x1, 0x6, 0xC3 },
    { 0x1, 0x16, 0x8, 0x9, 0x2, 0x0, 0xC9 },
    { 0x1, 0x11, 0xB, 0x5, 0x2, 0x0, 0xDB },
    { 0x1, 0x17, 0xB, 0x8, 0x2, 0x0, 0xE5 },
    { 0x1, 0x18, 0xA, 0x6, 0x1, 0x7, 0xF5 },
    { 0x1, 0x16, 0xE, 0x9, 0x2, 0x0, 0xFB },
    { 0x1, 0x11, 0x11, 0x5, 0x2, 0x0, 0x10D },
    { 0x1, 0x17, 0x11, 0x8, 0x2, 0x0, 0x117 },
    { 0x1, 0x18, 0x10, 0x6, 0x1, 0x8, 0x127 }
};

static const u8 Unk_ov10_02222A70[][2] = {
    { 0x0, 0x0 },
    { 0x0, 0x6 },
    { 0x0, 0xC },
    { 0x10, 0x1 },
    { 0x10, 0x7 },
    { 0x10, 0xD }
};

static const u8 Unk_ov10_02222C6C[][10] = {
    { 0x1E, 0x10, 0x26, 0x18, 0x2E, 0x18, 0x24, 0x2C, 0x10, 0xE },
    { 0x1E, 0x40, 0x26, 0x48, 0x2E, 0x48, 0x24, 0x5C, 0x10, 0x3E },
    { 0x1E, 0x70, 0x26, 0x78, 0x2E, 0x78, 0x24, 0x8C, 0x10, 0x6E },
    { 0x9E, 0x18, 0xA6, 0x20, 0xAE, 0x20, 0xA4, 0x34, 0x90, 0x16 },
    { 0x9E, 0x48, 0xA6, 0x50, 0xAE, 0x50, 0xA4, 0x64, 0x90, 0x46 },
    { 0x9E, 0x78, 0xA6, 0x80, 0xAE, 0x80, 0xA4, 0x94, 0x90, 0x76 }
};

static const u32 Unk_ov10_02222F3C[][7] = {
    { 0xB809, 0xB808, 0xB809, 0xB809, 0x1, 0x1, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB810, 0xB80A, 0xB80B, 0xB80B, 0x1, 0x0, 0x0 },
    { 0xB811, 0xB80B, 0xB80C, 0xB80C, 0x1, 0x2, 0x0 },
    { 0xB80A, 0xB808, 0xB809, 0xB809, 0x1, 0x1, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB810, 0xB80A, 0xB80B, 0xB80B, 0x1, 0x0, 0x0 },
    { 0xB811, 0xB80B, 0xB80C, 0xB80C, 0x1, 0x2, 0x0 },
    { 0xB80B, 0xB808, 0xB809, 0xB809, 0x1, 0x1, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB810, 0xB80A, 0xB80B, 0xB80B, 0x1, 0x0, 0x0 },
    { 0xB811, 0xB80B, 0xB80C, 0xB80C, 0x1, 0x2, 0x0 },
    { 0xB80C, 0xB808, 0xB809, 0xB809, 0x1, 0x1, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB810, 0xB80A, 0xB80B, 0xB80B, 0x1, 0x0, 0x0 },
    { 0xB811, 0xB80B, 0xB80C, 0xB80C, 0x1, 0x2, 0x0 },
    { 0xB80D, 0xB808, 0xB809, 0xB809, 0x1, 0x1, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB810, 0xB80A, 0xB80B, 0xB80B, 0x1, 0x0, 0x0 },
    { 0xB811, 0xB80B, 0xB80C, 0xB80C, 0x1, 0x2, 0x0 },
    { 0xB80E, 0xB808, 0xB809, 0xB809, 0x1, 0x1, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB80F, 0xB809, 0xB80A, 0xB80A, 0x1, 0x0, 0x0 },
    { 0xB810, 0xB80A, 0xB80B, 0xB80B, 0x1, 0x0, 0x0 },
    { 0xB811, 0xB80B, 0xB80C, 0xB80C, 0x1, 0x2, 0x0 }
};

static const UnkStruct_ov61_0222C884 Unk_ov10_02222A68 = {
    0x0,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x94
};

void ov10_0221F800(UnkStruct_ov10_0221F800 *param0)
{
    UnkStruct_ov10_0221FB28 *v0;

    v0 = SysTask_GetParam(SysTask_StartAndAllocateParam(ov10_0221F870, sizeof(UnkStruct_ov10_0221FB28), 100, param0->unk_24));
    memset(v0, 0, sizeof(UnkStruct_ov10_0221FB28));

    v0->unk_00 = param0;
    v0->unk_B73 = 0;
    v0->unk_BBC = sub_0202FAC0();

    if (v0->unk_BBC == 1) {
        if ((v0->unk_00->unk_00 != NULL) && (v0->unk_00->unk_00->unk_198 != NULL)) {
            v0->unk_BBC = Bag_CanRemoveItem(SaveData_GetBag(v0->unk_00->unk_00->unk_198), 465, 1, param0->unk_24);
        }
    }
}

static void ov10_0221F870(SysTask *param0, void *param1)
{
    UnkStruct_ov10_0221FB28 *v0 = param1;

    switch (v0->unk_B73) {
    case 0:
        v0->unk_B73 = ov10_0221FB28(v0);
        break;
    case 1:
        while (TRUE) {
            u8 v1 = v0->unk_04[v0->unk_B74](v0);

            if (v1 != 0) {
                v0->unk_B74++;
            }

            if (v1 != 2) {
                break;
            }
        }

        if (v0->unk_00->unk_28 == 2) {
            ov10_0221F930(v0);
        }
        break;
    case 2:
        if (ov10_02220A50(param0, v0) == 1) {
            return;
        }
    }

    if (v0->unk_B74 != 0) {
        ov10_02220C2C(v0);
        sub_0200C7EC(v0->unk_194);
    }

    if (v0->unk_00->unk_28 != 0) {
        G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }
}

static void ov10_0221F900(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_BC,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
}

static void ov10_0221F930(UnkStruct_ov10_0221FB28 *param0)
{
    if (ov10_02222A08(param0) == 0) {
        return;
    }

    switch (param0->unk_BB0) {
    case 0:
        break;
    case 1:
        ov10_022229D4(param0);
        MessageLoader_GetStrbuf(param0->unk_BA0, 0, param0->unk_BA8);
        param0->unk_BAC = Text_AddPrinterWithParams(&param0->unk_B7C, FONT_MESSAGE, param0->unk_BA8, 0, 0, TEXT_SPEED_INSTANT, NULL);
        sub_0201C3C0(param0->unk_0C, 0);
        param0->unk_BB0 = 2;
        break;
    case 2:
        if (param0->unk_BBC == 1) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                param0->unk_BB0 = 3;
            }
        }
        break;
    case 3:
        if (param0->unk_BC0 == 1) {
            MessageLoader_GetStrbuf(param0->unk_BA0, 2, param0->unk_BA8);
        } else {
            MessageLoader_GetStrbuf(param0->unk_BA0, 1, param0->unk_BA8);
        }

        BGL_WindowColor(&param0->unk_B8C, 15, 0, 0, 27 * 8, 4 * 8);
        sub_0200E060(&param0->unk_B8C, 0, 1, 15);

        param0->unk_BAC = Text_AddPrinterWithParams(&param0->unk_B8C, FONT_MESSAGE, param0->unk_BA8, 0, 0, TEXT_SPEED_INSTANT, NULL);
        param0->unk_BB4 = sub_02002054(param0->unk_0C, &Unk_ov10_02222A68, (1 + (18 + 12)), 14, 1, param0->unk_00->unk_24);

        sub_0201C3C0(param0->unk_0C, 0);
        param0->unk_BB0 = 4;
        break;
    case 4: {
        u32 v0 = sub_02002114(param0->unk_BB4, param0->unk_00->unk_24);

        switch (v0) {
        case 0:
            param0->unk_BB0 = 5;
            param0->unk_BB4 = NULL;
            break;
        case 0xfffffffe:
            param0->unk_BB0 = 1;
            param0->unk_BB4 = NULL;
            break;
        }
    } break;
    case 5:
        ov10_022229D4(param0);
        MessageLoader_GetStrbuf(param0->unk_BA0, 5, param0->unk_BA8);
        param0->unk_BAC = Text_AddPrinterWithParams(&param0->unk_B7C, FONT_MESSAGE, param0->unk_BA8, 0, 0, TEXT_SPEED_INSTANT, NULL);
        sub_0201C3C0(param0->unk_0C, 0);
        param0->unk_BB0 = 6;
        break;
    case 6:
        break;
    case 7:
        if (param0->unk_BB4 != NULL) {
            sub_02002154(param0->unk_BB4, param0->unk_00->unk_24);
            param0->unk_BB4 = NULL;
        }

        sub_0200E084(&param0->unk_B7C, 0);
        sub_0201C3C0(param0->unk_0C, 0);
        param0->unk_BB0 = 8;
        break;
    case 8:
        break;
    }
}

static u8 ov10_0221FB28(UnkStruct_ov10_0221FB28 *param0)
{
    G2_BlendNone();

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    ov10_0221F900();

    param0->unk_0C = sub_02018340(param0->unk_00->unk_24);
    param0->unk_08 = sub_02002F38(param0->unk_00->unk_24);

    sub_02002F70(param0->unk_08, 0, 32 * 16, param0->unk_00->unk_24);
    sub_0201975C(4, 0x0);

    param0->unk_B76 = 0;
    param0->unk_B75 = 8;
    param0->unk_B74 = 0;

    switch (param0->unk_00->unk_28) {
    case 0:
        param0->unk_04 = Unk_ov10_02222AD0;
        break;
    case 1:
        param0->unk_04 = Unk_ov10_02222AA8;
        break;
    case 2:
        if (param0->unk_00->unk_2A == 3) {
            param0->unk_04 = Unk_ov10_02222C38;
        } else {
            param0->unk_04 = Unk_ov10_02222CA8;
        }

        ov10_022227A4(param0->unk_00);
        break;
    }

    return 1;
}

static u8 ov10_0221FBFC(UnkStruct_ov10_0221FB28 *param0)
{
    switch (param0->unk_B76) {
    case 0:
        ov10_02221970(param0);
        ov10_02221A3C(param0);
        break;
    case 1:
        ov10_02221E58(param0);
        ov10_02222050(param0);
        break;
    case 2:
        param0->unk_B76 = 0;
        param0->unk_B75 = 32;
        ov10_02221AE4(param0);
        ov10_022223C0(param0);
        ov10_02222720(param0);
        ov10_02221C14(param0);
        sub_02039734();
        sub_0208C120(0, param0->unk_00->unk_24);
        SetMainCallback(ov10_02220C64, param0);
        return 1;
    }

    param0->unk_B76++;
    return 0;
}

static u8 ov10_0221FC78(UnkStruct_ov10_0221FB28 *param0)
{
    switch (param0->unk_B76) {
    case 0:
        ov10_02220C94(param0, GX_BG0_AS_3D, 0);
        ov10_02220E70(param0);
        ov10_02221004();
        break;
    case 1:
        ov10_022214A0(param0, 0, 0);
        ov10_0222101C(param0);
        sub_02039734();
        ov10_022217CC(param0);
        break;
    case 2:
        sub_0208C120(0, param0->unk_00->unk_24);
        SetMainCallback(ov10_02220C64, param0);
        param0->unk_B76 = 0;
        param0->unk_B70 = 8;
        param0->unk_B71 = 4;
        param0->unk_B68 = 16;
        return 1;
    }

    param0->unk_B76++;
    return 0;
}

static u8 ov10_0221FD00(UnkStruct_ov10_0221FB28 *param0)
{
    switch (param0->unk_B76) {
    case 0:
        ov10_02220C94(param0, GX_BG0_AS_2D, 1);
        ov10_02220E70(param0);
        ov10_02220F1C(param0);
        ov10_02221004();
        {
            BOOL v0;
            int v1;

            v0 = sub_0202F330(param0->unk_00->unk_00->unk_198, param0->unk_00->unk_24, &v1, 0);
            param0->unk_BC0 = v1;
        }
        {
            int v2;
            TrainerInfo *v3;

            param0->unk_BC4 = 0;

            for (v2 = 0; v2 < (7 + 1); v2++) {
                v3 = CommInfo_TrainerInfo(v2);

                if (v3 != NULL) {
                    if (TrainerInfo_GameCode(v3) == 0) {
                        param0->unk_BC4 = 1;
                        break;
                    }
                }
            }
        }
        break;
    case 1:
        ov10_022214A0(param0, -32, -16);
        ov10_02221588(param0);
        sub_02039734();
        break;
    case 2:
        sub_0208C120(0, param0->unk_00->unk_24);
        SetMainCallback(ov10_02220C64, param0);
        param0->unk_B76 = 0;
        param0->unk_B70 = 4;
        param0->unk_B71 = 2;
        param0->unk_B68 = 12;
        param0->unk_BA0 = MessageLoader_Init(0, 26, 605, param0->unk_00->unk_24);
        param0->unk_BA4 = StringTemplate_Default(param0->unk_00->unk_24);
        param0->unk_BA8 = Strbuf_Init((2 * 160), param0->unk_00->unk_24);
        param0->unk_BB0 = 1;

        return 1;
    }

    param0->unk_B76++;
    return 0;
}

static u8 ov10_0221FE10(UnkStruct_ov10_0221FB28 *param0)
{
    if (ScreenWipe_Done() == 0) {
        return 0;
    }

    if (param0->unk_B75 == param0->unk_B76) {
        param0->unk_B76 = 0;
        return 1;
    }

    param0->unk_B76++;
    return 0;
}

static u8 ov10_0221FE48(UnkStruct_ov10_0221FB28 *param0)
{
    if (sub_020192EC(param0->unk_0C, 3) <= 24) {
        param0->unk_B76 = 0;
        param0->unk_B6C = 0;
        param0->unk_B6E = 0;

        sub_0201C63C(param0->unk_0C, 3, 0, 24);
        sub_0201C63C(param0->unk_0C, 2, 0, -24);

        ov10_02221188(param0, 0, 0, 0);
        ov10_02221188(param0, 1, 0, 0);
        ov10_02221188(param0, 2, 0, 0);
        ov10_02221188(param0, 3, 0, 0);
        ov10_02221440(param0, 0, 0, 0);
        ov10_02221440(param0, 1, 0, 0);
        ov10_02221440(param0, 2, 0, 0);
        ov10_02221440(param0, 3, 0, 0);

        return 1;
    }

    sub_0201C63C(param0->unk_0C, 3, 2, param0->unk_B68);
    sub_0201C63C(param0->unk_0C, 2, 1, param0->unk_B68);

    param0->unk_B76++;

    ov10_02221188(param0, 0, param0->unk_B68 * param0->unk_B76 - 256, 0);
    ov10_02221188(param0, 1, param0->unk_B68 * param0->unk_B76 - 256, 0);
    ov10_02221188(param0, 2, 256 - param0->unk_B68 * param0->unk_B76, 0);
    ov10_02221188(param0, 3, 256 - param0->unk_B68 * param0->unk_B76, 0);
    ov10_02221440(param0, 0, param0->unk_B68 * param0->unk_B76 - 256, 0);
    ov10_02221440(param0, 1, param0->unk_B68 * param0->unk_B76 - 256, 0);
    ov10_02221440(param0, 2, 256 - param0->unk_B68 * param0->unk_B76, 0);
    ov10_02221440(param0, 3, 256 - param0->unk_B68 * param0->unk_B76, 0);

    return 0;
}

static u8 ov10_02220014(UnkStruct_ov10_0221FB28 *param0)
{
    s16 v0, v1;

    if ((ov10_022218BC(param0) == 0) && (param0->unk_B76 > 24)) {
        param0->unk_B76 = 0;
        return 1;
    }

    if (param0->unk_B76 == 0) {
        if (param0->unk_00->unk_28 == 1) {
            Sound_PlayEffect(1813);
        } else {
            Sound_PlayEffect(2130);
        }
    }

    if (param0->unk_B76 == 24) {
        sub_0201C63C(param0->unk_0C, 3, 0, 24);
        sub_0201C63C(param0->unk_0C, 2, 0, -24);
        sub_0201C63C(param0->unk_0C, 3, 3, 0);
        sub_0201C63C(param0->unk_0C, 2, 3, 0);

        ov10_02221188(param0, 0, 0, 0);
        ov10_02221188(param0, 1, 0, 0);
        ov10_02221188(param0, 2, 0, 0);
        ov10_02221188(param0, 3, 0, 0);

        ov10_02221440(param0, 0, 0, 0);
        ov10_02221440(param0, 1, 0, 0);
        ov10_02221440(param0, 2, 0, 0);
        ov10_02221440(param0, 3, 0, 0);
    } else if (param0->unk_B76 < 24) {
        v0 = (LCRNG_Next() % param0->unk_B70) - (param0->unk_B70 / 2);
        v1 = (LCRNG_Next() % param0->unk_B71) - (param0->unk_B71 / 2);

        if (((v0 < 0) && (param0->unk_B6C < 0)) || ((v0 > 0) && (param0->unk_B6C > 0))) {
            v0 *= -1;
        }

        if (((v1 < 0) && (param0->unk_B6E < 0)) || ((v1 > 0) && (param0->unk_B6E > 0))) {
            v1 *= -1;
        }

        sub_0201C63C(param0->unk_0C, 3, 0, 24 + v0);
        sub_0201C63C(param0->unk_0C, 2, 0, -24 + v0);
        sub_0201C63C(param0->unk_0C, 3, 3, v1);
        sub_0201C63C(param0->unk_0C, 2, 3, v1);

        ov10_02221188(param0, 0, v0, v1);
        ov10_02221188(param0, 1, v0, v1);
        ov10_02221188(param0, 2, v0, v1);
        ov10_02221188(param0, 3, v0, v1);

        ov10_02221440(param0, 0, v0, v1);
        ov10_02221440(param0, 1, v0, v1);
        ov10_02221440(param0, 2, v0, v1);
        ov10_02221440(param0, 3, v0, v1);

        param0->unk_B6C = v0;
        param0->unk_B6E = v1;
    }

    param0->unk_B76++;

    return 0;
}

static u8 ov10_02220228(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_B76 == 8) {
        sub_0200F174(0, 0, 0, 0x7fff, 6, 1, param0->unk_00->unk_24);
    }

    if ((param0->unk_B76 >= 8) && (ScreenWipe_Done() == 1)) {
        param0->unk_B73 = 2;
        return 1;
    }

    if (param0->unk_B76 == 0) {
        Sound_PlayEffect(1817);
    }

    sub_0201C63C(param0->unk_0C, 3, 1, 16);
    sub_0201C63C(param0->unk_0C, 2, 2, 16);

    param0->unk_B76++;

    ov10_02221188(param0, 0, -16 * param0->unk_B76, 0);
    ov10_02221188(param0, 1, -16 * param0->unk_B76, 0);
    ov10_02221188(param0, 2, 16 * param0->unk_B76, 0);
    ov10_02221188(param0, 3, 16 * param0->unk_B76, 0);

    ov10_02221440(param0, 0, -16 * param0->unk_B76, 0);
    ov10_02221440(param0, 1, -16 * param0->unk_B76, 0);
    ov10_02221440(param0, 2, 16 * param0->unk_B76, 0);
    ov10_02221440(param0, 3, 16 * param0->unk_B76, 0);

    return 0;
}

static u8 ov10_02220350(UnkStruct_ov10_0221FB28 *param0)
{
    param0->unk_B75 = 16;
    return 2;
}

static u8 ov10_02220360(UnkStruct_ov10_0221FB28 *param0)
{
    if (ov10_02220AD0() == 1) {
        if (param0->unk_00->unk_2A == 1) {
            param0->unk_B72 = 0;
        } else {
            param0->unk_B72 = 1;
        }
    } else {
        if (param0->unk_00->unk_2A == 1) {
            param0->unk_B72 = 1;
        } else {
            param0->unk_B72 = 0;
        }
    }

    return 2;
}

static u8 ov10_022203A0(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_B72 == 0) {
        return ov10_022203BC(param0);
    }

    return ov10_022204C0(param0);
}

static u8 ov10_022203BC(UnkStruct_ov10_0221FB28 *param0)
{
    sub_0201C63C(param0->unk_0C, 2, 2, Unk_ov10_02222A7C[param0->unk_B76][0]);
    sub_0201C63C(param0->unk_0C, 3, 2, Unk_ov10_02222A7C[param0->unk_B76][0]);
    ov10_02221188(param0, 0, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221188(param0, 1, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221188(param0, 2, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221188(param0, 3, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 0, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 1, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 2, Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 3, Unk_ov10_02222A7C[param0->unk_B76][1], 0);

    if (param0->unk_B76 == 0) {
        Sound_PlayEffect(2131);
    }

    if (param0->unk_B76 == 5) {
        param0->unk_B76 = 0;
        return 1;
    } else {
        param0->unk_B76++;
    }

    return 0;
}

static u8 ov10_022204C0(UnkStruct_ov10_0221FB28 *param0)
{
    sub_0201C63C(param0->unk_0C, 2, 1, Unk_ov10_02222A7C[param0->unk_B76][0]);
    sub_0201C63C(param0->unk_0C, 3, 1, Unk_ov10_02222A7C[param0->unk_B76][0]);

    ov10_02221188(param0, 0, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221188(param0, 1, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221188(param0, 2, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221188(param0, 3, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 0, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 1, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 2, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);
    ov10_02221440(param0, 3, -Unk_ov10_02222A7C[param0->unk_B76][1], 0);

    if (param0->unk_B76 == 0) {
        Sound_PlayEffect(2131);
    }

    if (param0->unk_B76 == 5) {
        param0->unk_B76 = 0;
        return 1;
    } else {
        param0->unk_B76++;
    }

    return 0;
}

static u8 ov10_022205F4(UnkStruct_ov10_0221FB28 *param0)
{
    param0->unk_B75 = 16;
    return 2;
}

static u8 ov10_02220604(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_B76 == 0) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

        GX_SetVisibleWnd(GX_WNDMASK_W0);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    }

    if (param0->unk_B76 == 16) {
        param0->unk_B76 = 0;
        param0->unk_B75 = 32;
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        return 1;
    } else {
        G2_SetWnd0Position(0, 95 - param0->unk_B76 - 24, 255, 96 + param0->unk_B76 - 24);
        param0->unk_B76++;
    }

    return 0;
}

static u8 ov10_02220698(UnkStruct_ov10_0221FB28 *param0)
{
    Sound_PlayEffect(1818);
    SpriteActor_EnableObject(param0->unk_198[12], 1);
    SpriteActor_EnableObject(param0->unk_198[13], 1);
    sub_0200D364(param0->unk_198[12], 0);
    param0->unk_B75 = 32;
    return 1;
}

static u8 ov10_022206D8(UnkStruct_ov10_0221FB28 *param0)
{
    Sound_PlayEffect(1818);
    SpriteActor_EnableObject(param0->unk_198[12], 1);
    param0->unk_B75 = 64;
    return 1;
}

static u8 ov10_02220700(UnkStruct_ov10_0221FB28 *param0)
{
    if (ov10_02222A08(param0) == 0) {
        param0->unk_B75 = 1;
        return 1;
    }

    if ((param0->unk_BC4 == 0) && (param0->unk_BB4 != NULL)) {
        return 0;
    }

    if (param0->unk_BB0 == 5) {
        return 0;
    }

    if ((param0->unk_BB0 != 6) && (param0->unk_BB0 != 5) && (param0->unk_BB0 != 7) && (param0->unk_BB0 != 8)) {
        param0->unk_BB0 = 7;
        param0->unk_B76 = 0xff;
    }

    switch (param0->unk_B76) {
    case 0:
        ov10_022229D4(param0);
        MessageLoader_GetStrbuf(param0->unk_BA0, 8, param0->unk_BA8);
        param0->unk_BAC = Text_AddPrinterWithParams(&param0->unk_B7C, FONT_MESSAGE, param0->unk_BA8, 0, 0, TEXT_SPEED_INSTANT, NULL);
        ov10_02222A28(param0);
        param0->unk_B76++;
        break;
    case 1: {
        int v0;

        v0 = sub_0202F41C(param0->unk_00->unk_00->unk_198, param0->unk_00->unk_2C, 0, 0, &param0->unk_B78, &param0->unk_B7A);

        if (v0 == 2) {
            MessageLoader_GetStrbuf(param0->unk_BA0, 6, param0->unk_BA8);
            Sound_PlayEffect(1563);
        } else if (v0 == 3) {
            MessageLoader_GetStrbuf(param0->unk_BA0, 7, param0->unk_BA8);
        } else {
            break;
        }

        ov10_02222A48(param0);
        BGL_WindowColor(&param0->unk_B7C, 15, 0, 0, 27 * 8, 4 * 8);

        param0->unk_BAC = Text_AddPrinterWithParams(&param0->unk_B7C, FONT_MESSAGE, param0->unk_BA8, 0, 0, TEXT_SPEED_INSTANT, NULL);
    }

        param0->unk_B75 = 0;
        param0->unk_B76++;
        break;
    case 2:
        param0->unk_B75++;

        if (param0->unk_B75 > 30) {
            param0->unk_B75 = 0;
            param0->unk_B76++;
        }
        break;
    default:
        sub_0200E084(&param0->unk_B7C, 0);
        sub_0201C3C0(param0->unk_0C, 0);
        param0->unk_B76 = 0;
        param0->unk_B75 = 64 / 3;
        return 1;
    }

    sub_0201C3C0(param0->unk_0C, 0);
    return 0;
}

static u8 ov10_022208B0(UnkStruct_ov10_0221FB28 *param0)
{
    switch (param0->unk_B76) {
    case 0:
        ov10_022229D4(param0);
        MessageLoader_GetStrbuf(param0->unk_BA0, 9, param0->unk_BA8);
        param0->unk_BAC = Text_AddPrinterWithParams(&param0->unk_B7C, FONT_MESSAGE, param0->unk_BA8, 0, 0, TEXT_SPEED_INSTANT, NULL);
        CommTiming_StartSync(62);

        if (param0->unk_BBC == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        }

        param0->unk_B76++;
        break;
    case 1:
        if (CommTiming_IsSyncState(62)) {
            param0->unk_B76 = 0;
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    sub_0201C3C0(param0->unk_0C, 0);
    return 0;
}

static u8 ov10_0222094C(UnkStruct_ov10_0221FB28 *param0)
{
    if (ov10_02220AD0() == 1) {
        if (param0->unk_00->unk_2A == 1) {
            sub_02003120(param0->unk_08, 0, 4 * 16, 0, 3 * 16, 0x20);
        } else {
            sub_02003120(param0->unk_08, 0, 4 * 16, 0, 0 * 16, 0x20);
        }
    } else {
        if (param0->unk_00->unk_2A == 1) {
            sub_02003120(param0->unk_08, 0, 4 * 16, 0, 0 * 16, 0x20);
        } else {
            sub_02003120(param0->unk_08, 0, 4 * 16, 0, 3 * 16, 0x20);
        }
    }

    sub_0200387C(param0->unk_08, 1);
    Sound_PlayEffect(1819);
    param0->unk_B75 = 64;
    return 1;
}

static u8 ov10_022209E0(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_B76 == 0) {
        Sound_PlayEffect(1817);
    }

    if (param0->unk_B76 == 16) {
        param0->unk_B76 = 0;
        param0->unk_B75 = 64;
        return 1;
    }

    param0->unk_B76++;

    ov10_02222340(param0, 16 - param0->unk_B76);
    ov10_02221C48(param0, param0->unk_B76);

    return 0;
}

static u8 ov10_02220A34(UnkStruct_ov10_0221FB28 *param0)
{
    sub_0208C120(1, param0->unk_00->unk_24);
    param0->unk_B73 = 2;
    return 1;
}

static u8 ov10_02220A50(SysTask *param0, UnkStruct_ov10_0221FB28 *param1)
{
    if (ScreenWipe_Done() == 0) {
        return 0;
    }

    SetMainCallback(NULL, NULL);
    ov10_02222A48(param1);

    if (param1->unk_00->unk_28 != 0) {
        ov10_02220DCC(param1);
        ov10_02220DFC(param1);
        ov10_02220E30(param1);
        ov10_022218F4(param1);
        ov10_0222146C(param1);
    } else {
        ov10_02221A10(param1);
        ov10_022223E8(param1);
    }

    ov10_02220BE8(param1);

    sub_0201DC3C();
    sub_02002FA0(param1->unk_08, 0);
    sub_02002F54(param1->unk_08);

    param1->unk_00->unk_2B = 1;
    SysTask_FinishAndFreeParam(param0);

    return 1;
}

static BOOL ov10_02220AD0(void)
{
    switch (sub_020362F4(CommSys_CurNetId())) {
    case 0:
    case 2:
        return 1;
    case 1:
    case 3:
        return 0;
    }

    return 0;
}

static void ov10_02220B00(UnkStruct_ov10_0221FB28 *param0, UnkStruct_ov104_02241308 *param1, int param2)
{
    sub_0201DBEC(64, param0->unk_00->unk_24);

    param0->unk_190 = sub_0200C6E4(param0->unk_00->unk_24);
    param0->unk_194 = sub_0200C704(param0->unk_190);
    {
        UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        UnkStruct_ov104_022412F4 v1 = {
            0, 1024 * 64, 1024 * 16, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        v1.unk_00 = param2;
        sub_0200C73C(param0->unk_190, &v0, &v1, 16);
    }

    sub_0200C7C0(param0->unk_190, param0->unk_194, param2);
    sub_0200CB30(param0->unk_190, param0->unk_194, param1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static CellActorData *ov10_02220BA0(UnkStruct_ov10_0221FB28 *param0, const u32 *param1)
{
    SpriteTemplate v0;

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = param1[5];
    v0.plttIdx = param1[6];
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.resources[0] = param1[0];
    v0.resources[1] = param1[1];
    v0.resources[2] = param1[2];
    v0.resources[3] = param1[3];
    v0.bgPriority = param1[4];
    v0.transferToVRAM = FALSE;

    return SpriteActor_LoadResources(param0->unk_190, param0->unk_194, &v0);
}

static void ov10_02220BE8(UnkStruct_ov10_0221FB28 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_210; v0++) {
        sub_0200D0F4(param0->unk_198[v0]);
    }

    sub_0200D0B0(param0->unk_190, param0->unk_194);
    sub_0200C8D4(param0->unk_190);
}

static void ov10_02220C2C(UnkStruct_ov10_0221FB28 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < param0->unk_210; v0++) {
        CellActor_UpdateAnim(param0->unk_198[v0]->unk_00, FX32_ONE);
    }
}

static void ov10_02220C64(void *param0)
{
    UnkStruct_ov10_0221FB28 *v0 = param0;

    sub_0201C2B8(v0->unk_0C);
    sub_02003694(v0->unk_08);
    sub_0201DCAC();
    sub_0200C800();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov10_02220C94(UnkStruct_ov10_0221FB28 *param0, GXBG0As param1, int param2)
{
    param0->unk_B9C = param1;

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        v0.unk_0C = param1;
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
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 3, &v1, 0);
        sub_02019EBC(param0->unk_0C, 3);
        sub_0201C63C(param0->unk_0C, 3, 0, 256);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 2, &v2, 0);
        sub_02019EBC(param0->unk_0C, 2);
        sub_0201C63C(param0->unk_0C, 2, 0, -256);
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
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 1, &v3, 0);
        sub_02019EBC(param0->unk_0C, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);

        if (param2 == 1) {
            sub_02019184(param0->unk_0C, 1, 3, 24);
        }
    }

    if (param1 == GX_BG0_AS_2D) {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 0, &v4, 0);
        sub_02019EBC(param0->unk_0C, 0);

        if (param0->unk_BBC == 1) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        } else {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        }
    }
}

static void ov10_02220DCC(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_B7C.unk_0C != NULL) {
        BGL_DeleteWindow(&param0->unk_B7C);
    }

    if (param0->unk_B8C.unk_0C != NULL) {
        BGL_DeleteWindow(&param0->unk_B8C);
    }
}

static void ov10_02220DFC(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_BA8 != NULL) {
        Strbuf_Free(param0->unk_BA8);
    }

    if (param0->unk_BA4 != NULL) {
        StringTemplate_Free(param0->unk_BA4);
    }

    if (param0->unk_BA0 != NULL) {
        MessageLoader_Free(param0->unk_BA0);
    }
}

static void ov10_02220E30(UnkStruct_ov10_0221FB28 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    sub_02019044(param0->unk_0C, 3);
    sub_02019044(param0->unk_0C, 2);
    sub_02019044(param0->unk_0C, 1);

    if (param0->unk_B9C == GX_BG0_AS_2D) {
        sub_02019044(param0->unk_0C, 0);
    }

    Heap_FreeToHeap(param0->unk_0C);
}

static void ov10_02220E70(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__VS_DEMO_GRA, param0->unk_00->unk_24);

    sub_020070E8(v0, 0, param0->unk_0C, 1, 0, 0, 0, param0->unk_00->unk_24);
    sub_0200710C(v0, 4, param0->unk_0C, 1, 0, 0, 0, param0->unk_00->unk_24);
    sub_0200710C(v0, 2, param0->unk_0C, 2, 0, 0, 0, param0->unk_00->unk_24);
    sub_0200710C(v0, 3, param0->unk_0C, 3, 0, 0, 0, param0->unk_00->unk_24);
    sub_02007130(v0, 1, 0, 0, 0, param0->unk_00->unk_24);
    sub_02003070(param0->unk_08, 0, 0, 0x20 * 5);
    sub_0201975C(1, 0x18c6);
    NARC_dtor(v0);
}

static void ov10_02220F1C(UnkStruct_ov10_0221FB28 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_B9C == GX_BG0_AS_2D && param0->unk_00 != NULL && param0->unk_00->unk_00 != NULL && param0->unk_00->unk_00->unk_108 != NULL);
    v0 = Options_Frame(param0->unk_00->unk_00->unk_108);

    sub_0200DD0C(param0->unk_0C, 0, 1, 15, v0, param0->unk_00->unk_24);
    sub_02003070(param0->unk_08, 0, 15 * 16, 0x20 * 1);
    sub_0200DAA4(param0->unk_0C, 0, (1 + (18 + 12)), 14, 0, param0->unk_00->unk_24);
    sub_02003070(param0->unk_08, 0, 14 * 16, 0x20 * 1);
    Font_LoadTextPalette(0, 13 * 0x20, param0->unk_00->unk_24);
    sub_02003070(param0->unk_08, 0, 13 * 16, 0x20 * 1);
    BGL_AddWindow(param0->unk_0C, &param0->unk_B7C, 0, 0x2, 0x13, 27, 4, 13, ((1 + (18 + 12)) + 9));
    BGL_AddWindow(param0->unk_0C, &param0->unk_B8C, 0, 0x2, 0x13, 27, 4, 13, ((1 + (18 + 12)) + 9));
}

static void ov10_02221004(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 8, 8);
}

static void ov10_0222101C(UnkStruct_ov10_0221FB28 *param0)
{
    UnkStruct_ov104_02241308 v0 = {
        2, 1, 2, 2, 0, 0
    };
    u32 v1;

    ov10_02220B00(param0, &v0, 12 + 8 + 1);
    ov10_022210F4(param0);

    for (v1 = 0; v1 < 12; v1++) {
        param0->unk_198[v1] = ov10_02220BA0(param0, &Unk_ov10_02222DB4[v1][0]);
    }

    ov10_02221188(param0, 0, -256, 0);
    ov10_02221188(param0, 1, -256, 0);
    ov10_02221188(param0, 2, 256, 0);
    ov10_02221188(param0, 3, 256, 0);
    ov10_022212AC(param0);

    param0->unk_210 = 12;

    ov10_022213B8(param0);
    ov10_02221440(param0, 0, -256, 0);
    ov10_02221440(param0, 1, -256, 0);
    ov10_02221440(param0, 2, 256, 0);
    ov10_02221440(param0, 3, 256, 0);
}

static void ov10_022210F4(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param0->unk_00->unk_24);

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, ball_status_indicator_player_ncgr, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 47111);
    sub_0200CC9C(param0->unk_190, param0->unk_194, 108, 8, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 47111);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, ball_status_indicator_player_ncer, 1, 47111);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, ball_status_indicator_player_nanr, 1, 47111);
    NARC_dtor(v0);
}

static void ov10_02221188(UnkStruct_ov10_0221FB28 *param0, u8 param1, s16 param2, s16 param3)
{
    u32 v0;
    u8 v1[] = { 0, 3, 6, 9 };

    for (v0 = 0; v0 < 3; v0++) {
        SpriteActor_SetSpritePositionXY(param0->unk_198[v1[param1] + v0], param0->unk_B58[param1] + v0 * 19 + param2, param0->unk_B5C[param1] + param3);
    }
}

static void ov10_022211F0(UnkStruct_ov10_0221FB28 *param0, Party *param1, u16 param2, u16 param3)
{
    Pokemon *v0;
    u8 v1;
    u8 v2, v3, v4;

    v3 = (u8)Party_GetCurrentCount(param1);
    v4 = 0;

    for (v1 = 0; v1 < param2; v1++) {
        sub_0200D364(param0->unk_198[v1 + param3], 0);

        if (v3 > v1) {
            v0 = Party_GetPokemonBySlotIndex(param1, v1);

            if ((Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) == 0) || (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0)) {
                continue;
            }

            v2 = PokemonSummary_StatusIconAnimIdx(v0);

            if (v2 == 6) {
                sub_0200D364(param0->unk_198[v4 + param3], 3);
            } else if (v2 != 7) {
                sub_0200D364(param0->unk_198[v4 + param3], 2);
            } else {
                sub_0200D364(param0->unk_198[v4 + param3], 1);
            }

            v4++;
        }
    }
}

static void ov10_022212AC(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_00->unk_29 == 0) {
        ov10_022211F0(param0, param0->unk_00->unk_04[0], 6, 0);
        ov10_022211F0(param0, param0->unk_00->unk_04[1], 6, 6);
    } else {
        ov10_022211F0(param0, param0->unk_00->unk_04[0], 3, 0);
        ov10_022211F0(param0, param0->unk_00->unk_04[2], 3, 3);
        ov10_022211F0(param0, param0->unk_00->unk_04[1], 3, 6);
        ov10_022211F0(param0, param0->unk_00->unk_04[3], 3, 9);
    }
}

static void ov10_0222130C(UnkStruct_ov10_0221FB28 *param0, u32 param1, Strbuf *param2)
{
    Window *v0;
    UnkStruct_020127E8 v1;

    v0 = &param0->unk_10[0];

    BGL_AddFramelessWindow(param0->unk_0C, v0, 8, 2, 0, 0);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);

    v1.unk_00 = param0->unk_B38;
    v1.unk_04 = v0;
    v1.unk_08 = sub_0200D9B0(param0->unk_194);
    v1.unk_0C = sub_0200D04C(param0->unk_194, 47111);
    v1.unk_10 = NULL;
    v1.unk_14 = ((1024 - (8 * 2) - (4 * 4)) - (8 * 2) * param1) * 0x20;
    v1.unk_18 = 0;
    v1.unk_1C = 0;
    v1.unk_20 = 2;
    v1.unk_24 = 0;
    v1.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_2C = param0->unk_00->unk_24;

    param0->unk_B3C[param1] = sub_020127E8(&v1);

    sub_02012A60(param0->unk_B3C[param1], 0);
    BGL_DeleteWindow(v0);
}

static void ov10_022213B8(UnkStruct_ov10_0221FB28 *param0)
{
    param0->unk_B38 = sub_02012744(8, param0->unk_00->unk_24);

    ov10_0222130C(param0, 0, param0->unk_00->unk_14[0]);
    ov10_0222130C(param0, 2, param0->unk_00->unk_14[1]);

    if (param0->unk_00->unk_29 == 1) {
        ov10_0222130C(param0, 1, param0->unk_00->unk_14[2]);
        ov10_0222130C(param0, 3, param0->unk_00->unk_14[3]);
    } else {
        ov10_0222130C(param0, 1, param0->unk_00->unk_14[0]);
        ov10_0222130C(param0, 3, param0->unk_00->unk_14[1]);

        sub_020129D0(param0->unk_B3C[1], 0);
        sub_020129D0(param0->unk_B3C[3], 0);
    }
}

static void ov10_02221440(UnkStruct_ov10_0221FB28 *param0, u32 param1, s16 param2, s16 param3)
{
    sub_020128C4(param0->unk_B3C[param1], param0->unk_B60[param1] + param2, param0->unk_B64[param1] + param3);
}

static void ov10_0222146C(UnkStruct_ov10_0221FB28 *param0)
{
    u32 v0;

    if (param0->unk_00->unk_28 == 0) {
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_02012870(param0->unk_B3C[v0]);
    }

    sub_020127BC(param0->unk_B38);
}

static void ov10_022214A0(UnkStruct_ov10_0221FB28 *param0, int param1, int param2)
{
    if (param0->unk_00->unk_29 == 1) {
        param0->unk_B58[0] = (24 - 4);
        param0->unk_B5C[0] = (140 + 6) + param1;
        param0->unk_B58[1] = ((24 - 4) + 19 * 3 + 4);
        param0->unk_B5C[1] = ((140 + 6) + 16) + param1;
        param0->unk_B58[2] = (136 - 4 - 4);
        param0->unk_B5C[2] = 44 + param2;
        param0->unk_B58[3] = ((136 - 4 - 4) + 19 * 3 + 4);
        param0->unk_B5C[3] = (44 + 16) + param2;
        param0->unk_B60[0] = (15 - 4);
        param0->unk_B64[0] = (114 + 6) + param1;
        param0->unk_B60[1] = 76;
        param0->unk_B64[1] = (130 + 6) + param1;
        param0->unk_B60[2] = (123 - 4);
        param0->unk_B64[2] = 18 + param2;
        param0->unk_B60[3] = 184;
        param0->unk_B64[3] = 34 + param2;
    } else {
        param0->unk_B58[0] = 24;
        param0->unk_B5C[0] = 160 + param1;
        param0->unk_B58[1] = (24 + 19 * 3);
        param0->unk_B5C[1] = 160 + param1;
        param0->unk_B58[2] = 136;
        param0->unk_B5C[2] = 48 + param2;
        param0->unk_B58[3] = (136 + 19 * 3);
        param0->unk_B5C[3] = 48 + param2;
        param0->unk_B60[0] = 15;
        param0->unk_B64[0] = 134 + param1;
        param0->unk_B60[2] = 128;
        param0->unk_B64[2] = 22 + param2;
    }
}

static void ov10_02221588(UnkStruct_ov10_0221FB28 *param0)
{
    UnkStruct_ov104_02241308 v0 = {
        2, 1, 2, 2, 0, 0
    };
    u32 v1;

    ov10_02220B00(param0, &v0, 14 + 8 + 1);
    ov10_022210F4(param0);
    ov10_0222166C(param0);

    for (v1 = 0; v1 < 14; v1++) {
        param0->unk_198[v1] = ov10_02220BA0(param0, &Unk_ov10_02222DB4[v1][0]);
    }

    ov10_02221188(param0, 0, -256, 0);
    ov10_02221188(param0, 1, -256, 0);
    ov10_02221188(param0, 2, 256, 0);
    ov10_02221188(param0, 3, 256, 0);
    ov10_022212AC(param0);
    ov10_022216E0(param0);
    ov10_022213B8(param0);
    ov10_02221440(param0, 0, -256, 0);
    ov10_02221440(param0, 1, -256, 0);
    ov10_02221440(param0, 2, 256, 0);
    ov10_02221440(param0, 3, 256, 0);

    param0->unk_210 = 14;
}

static void ov10_0222166C(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__VS_DEMO_GRA, param0->unk_00->unk_24);

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 5, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47112);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 6, 0, 47112);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 7, 0, 47112);
    NARC_dtor(v0);
}

static void ov10_022216E0(UnkStruct_ov10_0221FB28 *param0)
{
    SpriteActor_EnableObject(param0->unk_198[12], 0);
    SpriteActor_EnableObject(param0->unk_198[13], 0);

    if (param0->unk_00->unk_2A == 3) {
        SpriteActor_SetSpritePositionXY(param0->unk_198[12], 128, (96 - 24));
        sub_0200D364(param0->unk_198[12], 3 - 1);
        return;
    }

    if (ov10_02220AD0() == 1) {
        if (param0->unk_00->unk_2A == 1) {
            SpriteActor_SetSpritePositionXY(param0->unk_198[12], 48, (96 - 24));
            SpriteActor_SetSpritePositionXY(param0->unk_198[13], 208, (96 - 24));
        } else {
            SpriteActor_SetSpritePositionXY(param0->unk_198[12], 208, (96 - 24));
            SpriteActor_SetSpritePositionXY(param0->unk_198[13], 48, (96 - 24));
        }
    } else {
        if (param0->unk_00->unk_2A == 1) {
            SpriteActor_SetSpritePositionXY(param0->unk_198[12], 208, (96 - 24));
            SpriteActor_SetSpritePositionXY(param0->unk_198[13], 48, (96 - 24));
        } else {
            SpriteActor_SetSpritePositionXY(param0->unk_198[12], 48, (96 - 24));
            SpriteActor_SetSpritePositionXY(param0->unk_198[13], 208, (96 - 24));
        }
    }

    sub_0200D364(param0->unk_198[12], 1 - 1);
    sub_0200D364(param0->unk_198[13], 2 - 1);
}

static void ov10_022217CC(UnkStruct_ov10_0221FB28 *param0)
{
    Camera *camera;
    void *v1;

    param0->unk_B4C = sub_02024220(param0->unk_00->unk_24, 0, 4, 0, 2, NULL);

    G3X_AlphaBlend(1);
    sub_02014000();

    param0->unk_B54 = Heap_AllocFromHeap(param0->unk_00->unk_24, 0x4800);
    param0->unk_B50 = sub_02014014(ov10_02221928, ov10_0222194C, param0->unk_B54, 0x4800, 1, param0->unk_00->unk_24);

    camera = sub_02014784(param0->unk_B50);
    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);

    v1 = sub_020144C4(61, 2, param0->unk_00->unk_24);
    sub_020144CC(param0->unk_B50, v1, (1 << 1) | (1 << 3), 1);

    sub_020146F4(param0->unk_B50, 0, NULL, NULL);
    sub_020146F4(param0->unk_B50, 1, NULL, NULL);
    sub_020146F4(param0->unk_B50, 2, NULL, NULL);
    sub_020146F4(param0->unk_B50, 3, NULL, NULL);
    sub_020146F4(param0->unk_B50, 4, NULL, NULL);
}

static int ov10_022218BC(UnkStruct_ov10_0221FB28 *param0)
{
    const MtxFx43 *v0;
    int v1;

    if (param0->unk_00->unk_28 != 1) {
        return 0;
    }

    sub_020241B4();

    if (sub_02014710(param0->unk_B50) == 0) {
        return 0;
    }

    sub_0201469C();
    sub_020146C0();

    return 1;
}

static void ov10_022218F4(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_00->unk_28 != 1) {
        return;
    }

    sub_0201411C(param0->unk_B50);
    Heap_FreeToHeap(param0->unk_B54);
    sub_020242C4(param0->unk_B4C);
}

static u32 ov10_02221928(u32 param0, BOOL param1)
{
    u32 v0;
    NNSGfdTexKey v1;

    v1 = NNS_GfdAllocTexVram(param0, param1, 0);
    sub_020145B4(v1);

    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    v0 = NNS_GfdGetTexKeyAddr(v1);

    return v0;
}

static u32 ov10_0222194C(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, NNS_GFD_ALLOC_FROM_LOW);
    sub_020145F4(v0);

    if (v0 == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(0);
    }

    v1 = NNS_GfdGetPlttKeyAddr(v0);

    return v1;
}

static void ov10_02221970(UnkStruct_ov10_0221FB28 *param0)
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
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 1, &v1, 0);
        sub_02019EBC(param0->unk_0C, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
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

        sub_020183C4(param0->unk_0C, 2, &v2, 0);
        sub_02019EBC(param0->unk_0C, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 3, &v3, 0);
    }
}

static void ov10_02221A10(UnkStruct_ov10_0221FB28 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    sub_02019044(param0->unk_0C, 3);
    sub_02019044(param0->unk_0C, 2);
    sub_02019044(param0->unk_0C, 1);
    Heap_FreeToHeap(param0->unk_0C);
}

static void ov10_02221A3C(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, param0->unk_00->unk_24);

    sub_020070E8(v0, 15, param0->unk_0C, 3, 0, 0, 0, param0->unk_00->unk_24);
    sub_0200710C(v0, 17, param0->unk_0C, 3, 0, 0, 0, param0->unk_00->unk_24);

    {
        NNSG2dPaletteData *v1;
        void *v2;
        u16 *v3;

        v2 = NARC_AllocAndReadWholeMember(v0, 16, param0->unk_00->unk_24);
        NNS_G2dGetUnpackedPaletteData(v2, &v1);
        sub_0201972C(3, (void *)v1->pRawData, v1->szByte, 0);

        v3 = (u16 *)v1->pRawData;
        memcpy(param0->unk_4D8, &v3[3 * 16], 32 * 3);
        Heap_FreeToHeap(v2);
    }

    LoadScreenDataFromNARC(param0->unk_00->unk_24, param0->unk_298, param0->unk_358, param0->unk_418);
    NARC_dtor(v0);
}

static void ov10_02221AE4(UnkStruct_ov10_0221FB28 *param0)
{
    u16 *v0;
    u32 v1;

    for (v1 = 0; v1 < 6; v1++) {
        if ((v1 == 0) || (v1 == 3)) {
            v0 = param0->unk_298;
        } else if (param0->unk_214[v1].unk_04 == 0) {
            v0 = param0->unk_418;
        } else {
            v0 = param0->unk_358;
        }

        sub_020198E8(param0->unk_0C, 2, Unk_ov10_02222A70[v1][0], Unk_ov10_02222A70[v1][1], 16, 6, (const void *)v0, 0, 0, 16, 6);

        if (param0->unk_214[v1].unk_04 != 0) {
            sub_02019E2C(
                param0->unk_0C, 2, Unk_ov10_02222A70[v1][0], Unk_ov10_02222A70[v1][1], 16, 6, 3 + v1);

            if (((v1 < 3) && (param0->unk_00->unk_29 == 1)) || ((v1 >= 3) && (param0->unk_00->unk_29 == 0))) {
                sub_0201972C(
                    2, (void *)&param0->unk_4D8[16 * 1], 16 * 2, (3 + v1) * 16 * 2);
            } else {
                sub_0201972C(
                    2, (void *)&param0->unk_4D8[0], 16 * 2, (3 + v1) * 16 * 2);
            }
        }
    }

    sub_0201C3C0(param0->unk_0C, 2);
}

static void ov10_02221BC8(UnkStruct_ov10_0221FB28 *param0, u16 *param1, u8 param2)
{
    u16 *v0;
    u16 v1, v2;

    v0 = sub_02019FE4(param0->unk_0C, param2);

    if (param0->unk_00->unk_29 == 0) {
        v1 = 16;
    } else {
        v1 = 0;
    }

    for (v2 = 0; v2 < 24; v2++) {
        memcpy(&param1[v2 * 16], &v0[v2 * 32 + v1], 16 * 2);
        memset(&v0[v2 * 32 + v1], 0, 16 * 2);
    }
}

static void ov10_02221C14(UnkStruct_ov10_0221FB28 *param0)
{
    ov10_02221BC8(param0, &param0->unk_538[0][0], 1);
    ov10_02221BC8(param0, &param0->unk_538[1][0], 2);

    sub_0201C3C0(param0->unk_0C, 1);
    sub_0201C3C0(param0->unk_0C, 2);
}

static void ov10_02221C48(UnkStruct_ov10_0221FB28 *param0, u8 param1)
{
    if (param0->unk_00->unk_29 == 0) {
        sub_020198E8(param0->unk_0C, 1, 16 + 16 - param1, 0, param1, 24, (const void *)&param0->unk_538[0][0], 0, 0, 16, 24);
        sub_020198E8(param0->unk_0C, 2, 16 + 16 - param1, 0, param1, 24, (const void *)&param0->unk_538[1][0], 0, 0, 16, 24);
    } else {
        sub_020198E8(param0->unk_0C, 1, 0, 0, param1, 24, (const void *)&param0->unk_538[0][0], 16 - param1, 0, 16, 24);
        sub_020198E8(param0->unk_0C, 2, 0, 0, param1, 24, (const void *)&param0->unk_538[1][0], 16 - param1, 0, 16, 24);
    }

    sub_0201C3C0(param0->unk_0C, 1);
    sub_0201C3C0(param0->unk_0C, 2);
}

static void ov10_02221D14(UnkStruct_ov10_0221FB28 *param0, Party *param1, u8 param2)
{
    Pokemon *v0;
    u16 v1;
    u16 v2;

    v2 = (u16)Party_GetCurrentCount(param1);

    for (v1 = 0; v1 < 3; v1++) {
        if (v2 <= v1) {
            param0->unk_214[v1 + param2].unk_00 = PokeIconSpriteIndex(0, 0, 0);
            continue;
        }

        v0 = Party_GetPokemonBySlotIndex(param1, v1);

        param0->unk_214[v1 + param2].unk_00 = Pokemon_IconSpriteIndex(v0);
        param0->unk_214[v1 + param2].unk_04 = (u16)Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);

        if (param0->unk_214[v1 + param2].unk_04 == 0) {
            continue;
        }

        param0->unk_214[v1 + param2].unk_0F = (u16)Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL);
        param0->unk_214[v1 + param2].unk_06 = (u16)Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, NULL);
        param0->unk_214[v1 + param2].unk_08 = (u16)Pokemon_GetValue(v0, MON_DATA_MAX_HP, NULL);
        param0->unk_214[v1 + param2].unk_0C = (u16)Pokemon_GetValue(v0, MON_DATA_LEVEL, NULL);
        param0->unk_214[v1 + param2].unk_0A = (u16)Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, NULL);
        param0->unk_214[v1 + param2].unk_10 = (u8)Pokemon_GetValue(v0, MON_DATA_MAIL_ID, NULL);
        param0->unk_214[v1 + param2].unk_11 = (u8)Pokemon_GetValue(v0, MON_DATA_FORM, NULL);

        if (Pokemon_GetValue(v0, MON_DATA_NIDORAN_HAS_NICKNAME, NULL) == 1) {
            param0->unk_214[v1 + param2].unk_0E = 0;
        } else {
            param0->unk_214[v1 + param2].unk_0E = 1;
        }

        param0->unk_214[v1 + param2].unk_0D = Pokemon_GetGender(v0);
        param0->unk_214[v1 + param2].unk_14 = (u8)PokemonSummary_StatusIconAnimIdx(v0);
    }
}

static void ov10_02221E58(UnkStruct_ov10_0221FB28 *param0)
{
    memset(param0->unk_214, 0, sizeof(UnkStruct_ov10_0221FB28_sub1) * 6);

    ov10_02221D14(param0, param0->unk_00->unk_04[0], 0);
    ov10_02221D14(param0, param0->unk_00->unk_04[2], 3);
}

static u8 ov10_02221E84(UnkStruct_ov10_0221FB28 *param0, u32 param1)
{
    if (param0->unk_214[param1].unk_06 == 0) {
        return 0;
    }

    if ((param0->unk_214[param1].unk_14 != 7) && (param0->unk_214[param1].unk_14 != 0)) {
        return 5;
    }

    switch (HealthBar_Color(param0->unk_214[param1].unk_06, param0->unk_214[param1].unk_08, 48)) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    }

    return 0;
}

static void ov10_02221EEC(UnkStruct_ov10_0221FB28 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_198[param1 * 5 + v0] = ov10_02220BA0(param0, &Unk_ov10_02222F3C[param1 * 5 + v0][0]);
        SpriteActor_SetSpritePositionXY(param0->unk_198[param1 * 5 + v0], Unk_ov10_02222C6C[param1][v0 * 2], Unk_ov10_02222C6C[param1][v0 * 2 + 1]);
    }

    if (param0->unk_214[param1].unk_04 == 0) {
        for (v0 = 0; v0 < 5; v0++) {
            SpriteActor_EnableObject(param0->unk_198[param1 * 5 + v0], 0);
        }
    } else {
        sub_0200D41C(param0->unk_198[param1 * 5 + 0], PokeIconPaletteIndex(param0->unk_214[param1].unk_04, param0->unk_214[param1].unk_11, param0->unk_214[param1].unk_0F));
        sub_0200D364(param0->unk_198[param1 * 5 + 0], ov10_02221E84(param0, param1));

        if (param0->unk_214[param1].unk_0A == 0) {
            SpriteActor_EnableObject(param0->unk_198[param1 * 5 + 1], 0);
        } else if (Item_IsMail(param0->unk_214[param1].unk_0A) == 1) {
            sub_0200D364(param0->unk_198[param1 * 5 + 1], 1);
        } else {
            sub_0200D364(param0->unk_198[param1 * 5 + 1], 0);
        }

        if (param0->unk_214[param1].unk_10 == 0) {
            SpriteActor_EnableObject(param0->unk_198[param1 * 5 + 2], 0);
        } else {
            sub_0200D364(param0->unk_198[param1 * 5 + 2], 2);
        }

        if (param0->unk_214[param1].unk_14 == 7) {
            SpriteActor_EnableObject(param0->unk_198[param1 * 5 + 3], 0);
        } else {
            sub_0200D364(param0->unk_198[param1 * 5 + 3], param0->unk_214[v0].unk_14);
        }
    }
}

static void ov10_02222050(UnkStruct_ov10_0221FB28 *param0)
{
    UnkStruct_ov104_02241308 v0 = {
        9, 4, 4, 4, 0, 0
    };
    u32 v1;

    ov10_02220B00(param0, &v0, 30 + 1);
    ov10_022220B4(param0);
    ov10_0222216C(param0);
    ov10_02222208(param0);
    ov10_022222A4(param0);

    for (v1 = 0; v1 < 6; v1++) {
        ov10_02221EEC(param0, v1);
    }

    ov10_02222340(param0, 16);

    param0->unk_210 = 30;
}

static void ov10_022220B4(UnkStruct_ov10_0221FB28 *param0)
{
    u32 v0;
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, param0->unk_00->unk_24);

    sub_0200CD0C(param0->unk_190, param0->unk_194, v1, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 47112);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_190, param0->unk_194, v1, PokeIcon32KCellsFileIndex(), 0, 47113);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_190, param0->unk_194, v1, PokeIcon32KAnimationFileIndex(), 0, 47113);

    for (v0 = 0; v0 < 6; v0++) {
        SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_190, param0->unk_194, v1, param0->unk_214[v0].unk_00, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47113 + v0);
    }

    NARC_dtor(v1);
}

static void ov10_0222216C(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, param0->unk_00->unk_24);

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 20, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47119);
    sub_0200CD0C(param0->unk_190, param0->unk_194, v0, 21, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 47113);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 19, 0, 47114);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 18, 0, 47114);
    NARC_dtor(v0);
}

static void ov10_02222208(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PST_GRA, param0->unk_00->unk_24);

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 64, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47120);
    sub_0200CD0C(param0->unk_190, param0->unk_194, v0, 65, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 47114);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 63, 0, 47115);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 62, 0, 47115);
    NARC_dtor(v0);
}

static void ov10_022222A4(UnkStruct_ov10_0221FB28 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, param0->unk_00->unk_24);

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47121);
    sub_0200CD0C(param0->unk_190, param0->unk_194, v0, 8, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 47115);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 1, 0, 47116);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_190, param0->unk_194, v0, 0, 0, 47116);
    NARC_dtor(v0);
}

static void ov10_02222340(UnkStruct_ov10_0221FB28 *param0, s16 param1)
{
    s32 v0, v1, v2;

    if (param0->unk_00->unk_29 == 0) {
        v2 = 3;
        param1 *= 8;
    } else {
        v2 = 0;
        param1 *= -8;
    }

    for (v0 = 0; v0 < 3; v0++) {
        for (v1 = 0; v1 < 5; v1++) {
            SpriteActor_SetSpritePositionXY(
                param0->unk_198[(v2 + v0) * 5 + v1], Unk_ov10_02222C6C[v2 + v0][v1 * 2] + param1, Unk_ov10_02222C6C[v2 + v0][v1 * 2 + 1]);
        }
    }
}

static void ov10_022223C0(UnkStruct_ov10_0221FB28 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 24; v0++) {
        sub_0201A8D4(param0->unk_0C, &param0->unk_10[v0], &Unk_ov10_02222CF4[v0]);
    }
}

static void ov10_022223E8(UnkStruct_ov10_0221FB28 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 24; v0++) {
        BGL_DeleteWindow(&param0->unk_10[v0]);
    }
}

static void ov10_02222400(UnkStruct_ov10_0221FB28 *param0, MessageLoader *param1, UnkStruct_0200C440 *param2, StringTemplate *param3, Strbuf *param4, u32 param5)
{
    Pokemon *v0;
    Window *v1;
    Strbuf *v2;

    v1 = &param0->unk_10[param5 * 4 + 0];

    if (param5 < 3) {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_04[0], param5);
    } else {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_04[2], param5 - 3);
    }

    v2 = MessageLoader_GetNewStrbuf(param1, 8 + param5);

    StringTemplate_SetNickname(param3, 0, Pokemon_GetBoxPokemon(v0));
    StringTemplate_Format(param3, param4, v2);
    Strbuf_Free(v2);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param4, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (param0->unk_214[param5].unk_0E == 0) {
        if (param0->unk_214[param5].unk_0D == 0) {
            MessageLoader_GetStrbuf(param1, 27, param4);
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param4, 64, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
        } else if (param0->unk_214[param5].unk_0D == 1) {
            MessageLoader_GetStrbuf(param1, 28, param4);
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param4, 64, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
        }
    }
}

static void ov10_022224F0(UnkStruct_ov10_0221FB28 *param0, MessageLoader *param1, UnkStruct_0200C440 *param2, StringTemplate *param3, Strbuf *param4, u32 param5)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_10[param5 * 4 + 1];

    sub_0200C648(param2, 1, param0->unk_214[param5].unk_0C, 3, 0, v0, 0, 5 - 3);
}

static void ov10_02222528(UnkStruct_ov10_0221FB28 *param0, MessageLoader *param1, UnkStruct_0200C440 *param2, StringTemplate *param3, Strbuf *param4, u32 param5)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;
    int v3, v4;

    v3 = 28 - 28;
    v4 = 0 + 2;
    v0 = &param0->unk_10[param5 * 4 + 2];

    sub_0200C5BC(param2, param0->unk_214[param5].unk_06, 3, 1, v0, v3, v4);
    sub_0200C578(param2, 0, v0, v3 + 8 * 3, v4);
    sub_0200C5BC(param2, param0->unk_214[param5].unk_08, 3, 0, v0, v3 + (8 * 3) + 8, v4);
}

static void ov10_02222594(UnkStruct_ov10_0221FB28 *param0, u32 param1)
{
    Window *v0;
    u32 v1;

    v0 = &param0->unk_10[param1 * 4 + 3];
    v1 = HealthBar_Color(param0->unk_214[param1].unk_06, param0->unk_214[param1].unk_08, 48);

    switch (v1) {
    case 0:
        break;
    case 4:
    case 3:
        sub_0201972C(
            1, &param0->unk_4D8[9], 2 * 2, (v0->unk_09 * 16 + 9) * 2);
        break;
    case 2:
        sub_0201972C(
            1, &param0->unk_4D8[(9 + 16)], 2 * 2, (v0->unk_09 * 16 + 9) * 2);
        break;
    case 1:
        sub_0201972C(
            1, &param0->unk_4D8[(9 + 32)], 2 * 2, (v0->unk_09 * 16 + 9) * 2);
        break;
    }

    v1 = App_PixelCount(param0->unk_214[param1].unk_06, param0->unk_214[param1].unk_08, 48);

    BGL_WindowColor(v0, 10, 0, 2, v1, 1);
    BGL_WindowColor(v0, 9, 0, 3, v1, 2);
    BGL_WindowColor(v0, 10, 0, 5, v1, 1);
}

static void ov10_02222684(UnkStruct_ov10_0221FB28 *param0, MessageLoader *param1, UnkStruct_0200C440 *param2, StringTemplate *param3, Strbuf *param4, u32 param5)
{
    Pokemon *v0;
    Window *v1;
    Strbuf *v2;
    u32 v3;

    v1 = &param0->unk_10[param5 * 4];

    BGL_FillWindow(&v1[0], 0);
    BGL_FillWindow(&v1[1], 0);
    BGL_FillWindow(&v1[2], 0);
    BGL_FillWindow(&v1[3], 0);

    ov10_02222400(param0, param1, param2, param3, param4, param5);
    ov10_022224F0(param0, param1, param2, param3, param4, param5);
    ov10_02222528(param0, param1, param2, param3, param4, param5);
    ov10_02222594(param0, param5);

    sub_0201A9A4(&v1[0]);
    sub_0201A9A4(&v1[1]);
    sub_0201A9A4(&v1[2]);
    sub_0201A9A4(&v1[3]);
}

static void ov10_02222720(UnkStruct_ov10_0221FB28 *param0)
{
    MessageLoader *v0;
    UnkStruct_0200C440 *v1;
    StringTemplate *v2;
    Strbuf *v3;
    u32 v4;

    v0 = MessageLoader_Init(0, 26, 453, param0->unk_00->unk_24);
    v1 = sub_0200C440(15, 14, 0, param0->unk_00->unk_24);
    v2 = StringTemplate_Default(param0->unk_00->unk_24);
    v3 = Strbuf_Init(32, param0->unk_00->unk_24);

    for (v4 = 0; v4 < 6; v4++) {
        if (param0->unk_214[v4].unk_04 == 0) {
            continue;
        }

        ov10_02222684(param0, v0, v1, v2, v3, v4);
    }

    Strbuf_Free(v3);
    MessageLoader_Free(v0);
    sub_0200C560(v1);
    StringTemplate_Free(v2);
}

static void ov10_022227A4(UnkStruct_ov10_0221F800 *param0)
{
    void *v0;
    u16 *v1;
    u16 *v2;
    u8 v3;
    u8 v4;
    u8 v5;
    u8 v6;

    if (param0->unk_00 == NULL) {
        return;
    }

    v6 = CommSys_CurNetId();
    v5 = param0->unk_2A - 1;

    if (MapHeader_IsUnionRoom(param0->unk_00->mapHeaderID) == 1) {
        v3 = TrainerClass_Gender(param0->unk_00->trainerData[v6 ^ 1].class);
        v1 = Heap_AllocFromHeap(param0->unk_24, sizeof(u16) * 8);

        Strbuf_ToChars(param0->unk_14[sub_020362F4(v6 ^ 1)], v1, 8);
        v0 = sub_0202C174(v1, v3, v5, param0->unk_24);
        Heap_FreeToHeap(v1);
    } else {
        switch (sub_0203895C()) {
        case 1:
            v3 = TrainerClass_Gender(param0->unk_00->trainerData[v6 ^ 1].class);
            v1 = Heap_AllocFromHeap(param0->unk_24, sizeof(u16) * 8);

            Strbuf_ToChars(param0->unk_14[sub_020362F4(v6 ^ 1)], v1, 8);

            v0 = sub_0202BFCC(v1, v3, v5, param0->unk_24);
            Heap_FreeToHeap(v1);
            break;
        case 2:
            v3 = TrainerClass_Gender(param0->unk_00->trainerData[v6 ^ 1].class);
            v1 = Heap_AllocFromHeap(param0->unk_24, sizeof(u16) * 8);

            Strbuf_ToChars(param0->unk_14[sub_020362F4(v6 ^ 1)], v1, 8);

            v0 = sub_0202C00C(v1, v3, v5, param0->unk_24);
            Heap_FreeToHeap(v1);
            break;
        case 3:
            v3 = TrainerClass_Gender(param0->unk_00->trainerData[v6 ^ 1].class);
            v1 = Heap_AllocFromHeap(param0->unk_24, sizeof(u16) * 8);

            Strbuf_ToChars(param0->unk_14[sub_020362F4(v6 ^ 1)], v1, 8);

            v0 = sub_0202C0AC(v1, v3, v5, param0->unk_24);
            Heap_FreeToHeap(v1);
            break;
        case 4:
            v1 = Heap_AllocFromHeap(param0->unk_24, sizeof(u16) * 8);
            v2 = Heap_AllocFromHeap(param0->unk_24, sizeof(u16) * 8);

            if (ov10_02220AD0() == 1) {
                v3 = TrainerClass_Gender(param0->unk_00->trainerData[1].class);
                v4 = TrainerClass_Gender(param0->unk_00->trainerData[3].class);

                Strbuf_ToChars(param0->unk_14[1], v1, 8);
                Strbuf_ToChars(param0->unk_14[3], v2, 8);
            } else {
                v3 = TrainerClass_Gender(param0->unk_00->trainerData[0].class);
                v4 = TrainerClass_Gender(param0->unk_00->trainerData[2].class);

                Strbuf_ToChars(param0->unk_14[0], v1, 8);
                Strbuf_ToChars(param0->unk_14[2], v2, 8);
            }

            v0 = sub_0202C04C(v1, v2, v3, v4, v5, param0->unk_24);

            Heap_FreeToHeap(v1);
            Heap_FreeToHeap(v2);
            break;
        default:
            return;
        }
    }

    Journal_SaveData(param0->unk_00->unk_120, v0, 4);
}

static void ov10_022229D4(UnkStruct_ov10_0221FB28 *param0)
{
    BGL_WindowColor(&param0->unk_B7C, 15, 0, 0, 27 * 8, 4 * 8);
    sub_0200E060(&param0->unk_B7C, 0, 1, 15);
}

static BOOL ov10_02222A08(UnkStruct_ov10_0221FB28 *param0)
{
    if ((param0->unk_00->unk_00->unk_198 == NULL) || (sub_0202F250() == 0)) {
        return 0;
    }

    return 1;
}

static void ov10_02222A28(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_BB8 == NULL) {
        param0->unk_BB8 = sub_0200E7FC(&param0->unk_B7C, 1);
    }
}

static void ov10_02222A48(UnkStruct_ov10_0221FB28 *param0)
{
    if (param0->unk_BB8 != NULL) {
        DeleteWaitDial(param0->unk_BB8);
        param0->unk_BB8 = NULL;
    }
}

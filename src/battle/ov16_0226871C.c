#include "battle/ov16_0226871C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02012B20_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0209C370.h"

#include "battle/battle_display.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/ov16_0226DE44.h"
#include "battle/struct_ov16_02260C00.h"
#include "battle/struct_ov16_02260F14.h"
#include "battle/struct_ov16_022623F0.h"
#include "battle/struct_ov16_02269668.h"
#include "battle/struct_ov16_0226AC98.h"
#include "battle/struct_ov16_0226C378.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay011/ov11_0221F800.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "assert.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "message_util.h"
#include "move_table.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02012744.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201E86C.h"
#include "unk_0207C908.h"
#include "unk_0208C098.h"

typedef struct {
    UnkStruct_ov16_02268A14 *unk_00;
    SysTask *unk_04;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    u8 unk_12;
    u8 unk_13;
} UnkStruct_ov16_0226B988;

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov16_02270294;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov16_022702F4;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov16_0226A3F4;

typedef struct {
    SysTask *unk_00;
    u8 *unk_04;
    void *unk_08;
    u8 *unk_0C;
    UnkStruct_ov16_0226A3F4 unk_10;
    u16 unk_1C;
} UnkStruct_ov16_02268A14_sub3_sub1;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    union {
        struct {
            u8 unk_00;
        } unk_04_val1;
        struct {
            int unk_00;
        } unk_04_val2;
        struct {
            const s16 *unk_00;
            const UnkStruct_ov16_022702F4 *unk_04;
            int unk_08;
            u8 unk_0C;
            u8 unk_0D;
            u8 unk_0E;
            u8 unk_0F;
            u8 unk_10;
            UnkStruct_ov16_02270294 unk_11;
        } unk_04_val3;
        struct {
            UnkStruct_ov16_02268A14_sub3_sub1 *unk_00[4];
            UnkStruct_ov16_02268A14_sub3_sub1 *unk_10;
            NNSG2dCharacterData *unk_14;
            void *unk_18;
            int unk_1C;
        } unk_04_val4;
        s16 unk_04_val5[2];
    };
} UnkStruct_ov16_02268A14_sub3;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    u8 unk_08;
    u8 unk_09;
} UnkStruct_ov16_02268A14_sub4;

typedef struct {
    const UnkStruct_ov16_022702F4 *unk_00;
    u8 unk_04;
    s8 unk_05;
} UnkStruct_ov16_02268A14_sub1;

typedef struct {
    FontOAM *unk_00;
    SpriteManagerAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov16_0226A98C;

typedef struct {
    s16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
} UnkStruct_ov16_02268FCC;

typedef struct {
    u8 unk_00;
    s8 unk_01;
    s8 unk_02;
    u8 unk_03;
} UnkStruct_ov16_0226CB10;

typedef union {
    UnkStruct_ov16_02269668 val1;
    UnkStruct_ov16_02260C00 val2;
    UnkStruct_ov16_02260F14 val3;
    UnkStruct_ov16_022623F0 val4;
} UnkStruct_ov16_02268A14_sub2;

typedef struct {
    Window unk_00;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov16_0226AEA0;

typedef struct {
    UnkStruct_ov16_0226AC98 unk_00;
    u16 *unk_18[4];
    UnkStruct_ov16_0226AEA0 unk_28[4];
    UnkStruct_ov16_0226AEA0 unk_78[4];
    UnkStruct_ov16_0226AEA0 unk_C8[4];
} UnkStruct_ov16_0226ABD4;

typedef struct UnkStruct_ov16_02268A14_t {
    BattleSystem *unk_00;
    UnkStruct_0209C370 *unk_04;
    SysTask *unk_08;
    SysTask *unk_0C;
    SysTask *unk_10;
    UnkStruct_ov16_02268A14_sub1 unk_14;
    UnkStruct_ov16_02268A14_sub2 unk_1A;
    u16 *unk_3C[7];
    u16 *unk_58;
    u16 *unk_5C;
    u16 *unk_60;
    SysTask *unk_64;
    UnkStruct_ov16_0226ABD4 unk_68[4];
    UnkStruct_02012744 *unk_4C8;
    UnkStruct_ov16_0226A98C unk_4CC[13];
    UnkStruct_02012B20 *unk_5B8;
    CellActorData *unk_5BC[6];
    CellActorData *unk_5D4[6];
    CellActorData *unk_5EC[4];
    CellActorData *unk_5FC[4];
    CellActorData *unk_60C[4];
    SysTask *unk_61C[4];
    UnkStruct_ov16_02268FCC unk_62C[6];
    SysTask *unk_664;
    u8 unk_668;
    u8 unk_669;
    u8 unk_66A;
    s8 unk_66B;
    u8 unk_66C;
    u8 unk_66D;
    u8 unk_66E;
    u8 unk_66F;
    u8 unk_670;
    s16 unk_672;
    u8 unk_674;
    s16 unk_676;
    SysTask *unk_678;
    UnkStruct_ov16_02268A14_sub3 unk_67C;
    UnkStruct_ov16_02268A14_sub4 unk_6A0;
    s32 unk_6AC;
    s32 unk_6B0;
    s32 unk_6B4;
    UnkStruct_ov16_0226DC24 *unk_6B8;
    UnkStruct_ov16_0226CB10 unk_6BC;
    u8 unk_6C0;
    u8 unk_6C1;
    struct {
        UnkStruct_ov16_0226DEEC *unk_00;
        u8 unk_04;
        u8 unk_05;
        u8 unk_06;
    } unk_6C4;
} UnkStruct_ov16_02268A14;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    union {
        struct {
            u16 unk_04_val1_unk_00;
            u16 unk_04_val1_unk_02;
            u16 unk_04_val1_unk_04;
            u16 unk_04_val1_unk_06;
        };
        u16 unk_04_val2[4];
    };
    union {
        struct {
            u16 unk_0C_val1_unk_00;
            u16 unk_0C_val1_unk_02;
            u16 unk_0C_val1_unk_04;
            u16 unk_0C_val1_unk_06;
        };
        u16 unk_0C_val2[4];
    };
    const TouchScreenRect *unk_14;
    const int *unk_18;
    const u8 *unk_1C;
    int (*unk_20)(UnkStruct_ov16_02268A14 *param0, int param1);
    void (*unk_24)(UnkStruct_ov16_02268A14 *param0, int param1);
    void (*unk_28)(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
    int (*unk_2C)(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
} UnkStruct_ov16_02270670;

static void *ov16_0226871C(void);
static void ov16_02269654(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269668(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_022698A8(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_022698BC(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269924(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269938(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269E94(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static int ov16_0226A318(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static int ov16_0226A3F4(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_022699AC(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_0226AF0C(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226AFF4(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226B028(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226B2BC(SysTaskFunc param0, UnkStruct_ov16_02268A14 *param1);
static void ov16_0226B2F0(UnkStruct_ov16_02268A14 *param0);
static int ov16_0226A4A4(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static int ov16_0226A634(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static int ov16_0226A528(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269C7C(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269D14(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269DB0(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_02269F68(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_0226A04C(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_0226A12C(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_0226B06C(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_0226B088(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226B0DC(UnkStruct_ov16_02268A14 *param0, int param1);
static int ov16_0226A934(u8 param0);
static void ov16_02268F00(UnkStruct_ov16_02268A14 *param0);
void ov16_02269168(UnkStruct_ov16_02268A14 *param0, u8 param1[], u8 param2[]);
void ov16_022691BC(UnkStruct_ov16_02268A14 *param0);
void ov16_02269218(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226BC50(SysTask *param0, void *param1);
static void ov16_0226B198(void);
static void ov16_0226BCBC(SysTask *param0, void *param1);
static void ov16_0226B1C4(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_0226B1E8(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226B390(SysTask *param0, void *param1);
static void ov16_0226B4E0(SysTask *param0, void *param1);
static void ov16_0226B780(SysTask *param0, void *param1);
static void ov16_0226B264(UnkStruct_ov16_02268A14 *param0, int param1, u8 *param2, int param3);
static void ov16_0226B20C(UnkStruct_ov16_02268A14 *param0, u8 *param1, int param2);
static void ov16_0226B318(UnkStruct_ov16_02268A14 *param0, int param1);
void ov16_0226947C(UnkStruct_ov16_02268A14 *param0, int param1, int param2);
static void ov16_022694A8(SysTask *param0, void *param1);
static void ov16_0226B314(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226A98C(UnkStruct_ov16_02268A14 *param0, UnkStruct_ov16_0226A98C *param1, const Strbuf *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov16_0226AEA0 *param10);
static void ov16_0226AAC0(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A698(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A718(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A768(UnkStruct_ov16_02268A14 *param0);
static CellActorData *ov16_0226A7A4(UnkStruct_ov16_02268A14 *param0, Pokemon *param1, int param2, int param3, int param4, int param5);
static void ov16_0226A928(SysTask *param0, void *param1);
static void ov16_0226B988(SysTask *param0, void *param1);
static void ov16_0226BA88(SysTask *param0, void *param1);
static void ov16_0226BB94(void *param0);
static TextColor ov16_0226B924(int param0, int param1);
void ov16_0226BCCC(UnkStruct_ov16_02268A14 *param0, int param1);
BOOL ov16_0226BCD0(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226BCE4(SysTask *param0, void *param1);
static void ov16_02268FCC(SysTask *param0, void *param1);
static int ov16_0226BE48(UnkStruct_ov16_02268A14 *param0);
static int ov16_0226BEC0(UnkStruct_ov16_02268A14 *param0, int param1);
static int ov16_0226C1F8(UnkStruct_ov16_02268A14 *param0, int param1);
static int ov16_0226C3C8(UnkStruct_ov16_02268A14 *param0, int param1);
static int ov16_0226CA14(UnkStruct_ov16_02268A14 *param0, int param1);
static u32 ov16_0226CB10(UnkStruct_ov16_0226CB10 *param0, int param1, int param2, const u8 *param3);
static void ov16_0226C0A0(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226C378(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226C9B8(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226B31C(UnkStruct_ov16_02268A14 *param0, const s16 *param1, const UnkStruct_ov16_022702F4 *param2, int param3, int param4);
static UnkStruct_ov16_0226ABD4 *ov16_0226ABD4(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226ABE8(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A95C(const Strbuf *param0, int param1, int *param2, int *param3);
static void ov16_0226AEA0(UnkStruct_ov16_02268A14 *param0, const Strbuf *param1, enum Font param2, UnkStruct_ov16_0226AEA0 *param3, TextColor param4);
static void ov16_0226AAF8(UnkStruct_ov16_02268A14 *param0);
static int ov16_0226C100(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226BD74(SysTask *param0, void *param1);
static int ov16_0226CD18(UnkStruct_ov16_02268A14 *param0);
static int ov16_0226CD84(UnkStruct_ov16_02268A14 *param0);
static int ov16_0226CDDC(UnkStruct_ov16_02268A14 *param0);
static int ov16_0226CE34(UnkStruct_ov16_02268A14 *param0);
static void inline_ov16_0226B314(SysTaskFunc param0, UnkStruct_ov16_02268A14 *param1);
static void inline_ov16_0226B318_1(SysTask *param0, void *param1);
static void inline_ov16_0226B318_1_sub(UnkStruct_ov16_02268A14 *param0);
static void inline_ov16_0226B314_1(SysTask *param0, void *param1);

__attribute__((aligned(4))) static const u16 Unk_ov16_02270264[] = {
    0x31,
    0x2A,
    0x2F,
    0x2B,
    0x2C,
    0x30,
    0x2D
};

__attribute__((aligned(4))) static const u16 Unk_ov16_022702B4[][2] = {
    { 0x20, 0x3E },
    { 0xA0, 0x3E },
    { 0x20, 0x7E },
    { 0xA0, 0x7E }
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270284[][2] = {
    { 0x3B, 0x3E },
    { 0xBB, 0x3E },
    { 0x3B, 0x7E },
    { 0xBB, 0x7E }
};

__attribute__((aligned(4))) static const u16 Unk_ov16_022702D4[][2] = {
    { 0x4C, 0x3E },
    { 0xCC, 0x3E },
    { 0x4C, 0x7E },
    { 0xCC, 0x7E }
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270328[][2] = {
    { 0x3C, 0x74 },
    { 0xC4, 0x20 },
    { 0xC4, 0x74 },
    { 0x3C, 0x20 },
    { 0x80, 0xB2 }
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270304[][2] = {
    { 0x3C, 0x74 },
    { 0xC4, 0x38 },
    { 0xC4, 0x74 },
    { 0x3C, 0x38 }
};

static const UnkStruct_ov97_0222DB78 Unk_ov16_02270540[] = {
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x6000, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x6800, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x7000, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x7800, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov16_02270350[] = {
    { 0x18, 0x90, 0x0, 0xFF },
    { 0x90, 0xC0, 0x0, 0x50 },
    { 0x90, 0xC0, 0xB0, 0xFF },
    { 0x98, 0xC0, 0x58, 0xA8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov16_022702A4[NELEMS(Unk_ov16_02270350) - 1] = {
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_02270A08[NELEMS(Unk_ov16_02270350) - 1] = {
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_022701EC[2][3] = {
    { 0x0, 0x0, 0x0 },
    { 0x1, 0x3, 0x2 }
};

static const TouchScreenRect Unk_ov16_02270214[] = {
    { 0x18, 0x90, 0x0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov16_02270258[] = {
    { 0x28, 0x80, 0x18, 0xE8 },
    { 0x98, 0xC0, 0x58, 0xA8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov16_022702E4[NELEMS(Unk_ov16_02270350) - 1] = {
    0x1,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_02270A04[NELEMS(Unk_ov16_02270350) - 1] = {
    0x1,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_022701CC[2][1] = {
    { 0x0 },
    { 0x1 }
};

static const TouchScreenRect Unk_ov16_0227038C[] = {
    { 0x98, 0xC0, 0x8, 0xF8 },
    { 0x18, 0x50, 0x0, 0x80 },
    { 0x18, 0x50, 0x80, 0xFF },
    { 0x58, 0x90, 0x0, 0x80 },
    { 0x58, 0x90, 0x80, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov16_02270364[NELEMS(Unk_ov16_0227038C) - 1] = {
    0xFF,
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_02270A14[NELEMS(Unk_ov16_0227038C) - 1] = {
    0x4,
    0x8,
    0x9,
    0xA,
    0xB
};

__attribute__((aligned(4))) static const u8 Unk_ov16_022701E4[3][2] = {
    { 0x1, 0x2 },
    { 0x3, 0x4 },
    { 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov16_0227024C[] = {
    { 0x28, 0x60, 0x8, 0xF8 },
    { 0x70, 0xA8, 0x8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov16_02270224[NELEMS(Unk_ov16_0227024C) - 1] = {
    0x1,
    0xFF
};

__attribute__((aligned(4))) static const u8 Unk_ov16_02270A00[NELEMS(Unk_ov16_0227024C) - 1] = {
    0x1,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_022701C8[2][1] = {
    { 0x0 },
    { 0x1 }
};

static const TouchScreenRect Unk_ov16_022703BC[] = {
    { 0x58, 0x90, 0x0, 0x78 },
    { 0x8, 0x50, 0x88, 0xFF },
    { 0x58, 0x90, 0x88, 0xFF },
    { 0x8, 0x50, 0x0, 0x78 },
    { 0x98, 0xC0, 0x8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov16_02270314[NELEMS(Unk_ov16_022703BC) - 1] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0xFF
};

__attribute__((aligned(4))) static const u8 Unk_ov16_02270A0C[NELEMS(Unk_ov16_022703BC) - 1] = {
    0x6,
    0xC,
    0xD,
    0x5,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov16_022701DC[3][2] = {
    { 0x3, 0x1 },
    { 0x0, 0x2 },
    { 0x4, 0x4 }
};

static const TouchScreenRect Unk_ov16_02270204[] = {
    { 0x98, 0xC0, 0x0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov16_022701D8[NELEMS(Unk_ov16_02270204) - 1] = {
    0x1
};

__attribute__((aligned(4))) static const u8 Unk_ov16_022701C4[NELEMS(Unk_ov16_02270204) - 1] = {
    0x4
};

static const UnkStruct_ov16_02270670 Unk_ov16_02270670[] = {
    {
        0x1C,
        0xF2,
        { 0xFFFF, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270350,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_02269654,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270350,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_02269654,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270350,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_02269668,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270350,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_02269668,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270214,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_022698A8,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0x2, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270214,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_022698BC,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_02270350,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_02269654,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_02270350,
        Unk_ov16_022702A4,
        Unk_ov16_02270A08,
        ov16_0226BEC0,
        ov16_0226C0A0,
        ov16_02269668,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270258,
        Unk_ov16_022702E4,
        Unk_ov16_02270A04,
        ov16_0226C100,
        NULL,
        ov16_02269924,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270258,
        Unk_ov16_022702E4,
        Unk_ov16_02270A04,
        ov16_0226C100,
        NULL,
        ov16_02269938,
        ov16_0226A318,
    },
    {
        0x1C,
        0xF2,
        { 0x3, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_0227038C,
        Unk_ov16_02270364,
        Unk_ov16_02270A14,
        ov16_0226C1F8,
        ov16_0226C378,
        ov16_022699AC,
        ov16_0226A3F4,
    },
    {
        0x1C,
        0xF2,
        { 0x4, 0x5, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_022703BC,
        Unk_ov16_02270314,
        Unk_ov16_02270A0C,
        ov16_0226C3C8,
        ov16_0226C9B8,
        ov16_0226A12C,
        ov16_0226A528,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_0227024C,
        Unk_ov16_02270224,
        Unk_ov16_02270A00,
        ov16_0226CA14,
        NULL,
        ov16_02269C7C,
        ov16_0226A4A4,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_0227024C,
        Unk_ov16_02270224,
        Unk_ov16_02270A00,
        ov16_0226CA14,
        NULL,
        ov16_02269D14,
        ov16_0226A4A4,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_0227024C,
        Unk_ov16_02270224,
        Unk_ov16_02270A00,
        ov16_0226CA14,
        NULL,
        ov16_02269DB0,
        ov16_0226A4A4,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_0227024C,
        Unk_ov16_02270224,
        Unk_ov16_02270A00,
        ov16_0226CA14,
        NULL,
        ov16_02269F68,
        ov16_0226A4A4,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov16_0227024C,
        Unk_ov16_02270224,
        Unk_ov16_02270A00,
        ov16_0226CA14,
        NULL,
        ov16_0226A04C,
        ov16_0226A4A4,
    },
    {
        0x1C,
        0xF2,
        { 0x6, 0x4, 0x0, 0xFFFF },
        { 0x2, 0x3, 0x3, 0x0 },
        Unk_ov16_02270204,
        Unk_ov16_022701D8,
        Unk_ov16_022701C4,
        NULL,
        NULL,
        ov16_02269E94,
        ov16_0226A634,
    },
};

static const SpriteTemplate Unk_ov16_02270414 = {
    0xC,
    0xD,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E37, 0x4E37, 0x4E2F, 0x4E2F, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

static const SpriteTemplate Unk_ov16_02270448 = {
    0xF6,
    0x9,
    0x0,
    0x0,
    0xB,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E38, 0x4E37, 0x4E30, 0x4E30, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

static const SpriteTemplate Unk_ov16_0227047C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E39, 0x4E34, 0x4E31, 0x4E31, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

static const SpriteTemplate Unk_ov16_022704B0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x4E45, 0x4E36, 0x4E35, 0x4E35, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0,
};

__attribute__((aligned(4))) static const s16 Unk_ov16_022703A4[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_022702F4[] = {
    { 0x4, 0xF, 0x2, 0x1D },
    { 0x11, 0x17, 0x0, 0x9 },
    { 0x11, 0x17, 0x16, 0x1F },
    { 0x12, 0x17, 0xB, 0x14 },
};

__attribute__((aligned(4))) static const s16 Unk_ov16_022703F4[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_02270378[] = {
    { 0x2, 0x9, 0x0, 0xF },
    { 0x2, 0x9, 0x10, 0x1F },
    { 0xA, 0x11, 0x0, 0xF },
    { 0xA, 0x11, 0x10, 0x1F },
    { 0x12, 0x17, 0x1, 0x1E },
};

__attribute__((aligned(4))) static const s16 Unk_ov16_0227022C[] = {
    0x22F,
    0x22C,
    0x229,
    0x226,
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_02270274[] = {
    { 0x3, 0x9, 0x0, 0xF },
    { 0x3, 0x9, 0x10, 0x1F },
    { 0xB, 0x11, 0x0, 0xF },
    { 0xB, 0x11, 0x10, 0x1F },
};

__attribute__((aligned(4))) static const s16 Unk_ov16_022703D4[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_0227033C[] = {
    { 0xA, 0x11, 0x0, 0xE },
    { 0x0, 0x9, 0x11, 0x1F },
    { 0xA, 0x11, 0x11, 0x1F },
    { 0x0, 0x9, 0x0, 0xE },
    { 0x12, 0x17, 0x1, 0x1E },
};

__attribute__((aligned(4))) static const s16 Unk_ov16_022701FC[] = {
    0x238,
    0x235,
    0x232,
    0x23B,
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_022702C4[] = {
    { 0xB, 0x11, 0x0, 0xE },
    { 0x1, 0x9, 0x11, 0x1F },
    { 0xB, 0x11, 0x11, 0x1F },
    { 0x1, 0x9, 0x0, 0xE },
};

__attribute__((aligned(4))) static const s16 Unk_ov16_02270240[][3] = {
    { 0x0, 0x5, 0xA },
    { 0x0, 0xC0, 0x180 },
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_0227021C[] = {
    { 0xD, 0x14, 0x0, 0x1F },
    { 0x4, 0xB, 0x0, 0x1F },
};

__attribute__((aligned(4))) static const s16 Unk_ov16_022701F4[3] = {
    0x0,
    0xC0,
    0x180
};

__attribute__((aligned(4))) static const UnkStruct_ov16_022702F4 Unk_ov16_022701D0[] = {
    { 0x12, 0x17, 0x0, 0x1F }
};

static const UnkStruct_ov16_02270294 Unk_ov16_02270294[] = {
    { 0x80, 0x4C },
    { 0x28, 0xA4 },
    { 0xD8, 0xA4 },
    { 0x80, 0xA8 }
};

__attribute__((aligned(4))) static const int Unk_ov16_022705B0[][4] = {
    { 0x1, 0x1, 0x1, 0x1 },
    { 0x0, 0x1, 0x0, 0x1 },
    { 0x0, 0x1, 0x1, 0x1 },
    { 0x1, 0x1, 0x1, 0x1 },
    { 0x1, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x1, 0x0, 0x1 },
    { 0x0, 0x1, 0x1, 0x1 },
    { 0x1, 0x1, 0x0, 0x1 },
    { 0x1, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x0, 0x1 },
};

static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_ov16_022704E4[] = {
    { 0xF3, 0x10B },
    { 0xF4, 0x10C },
    { 0xF5, 0x10D },
    { 0xF6, 0x10E },
    { 0xF7, 0x10F },
    { 0xF8, 0x110 },
    { 0xF9, 0x111 },
    { 0xFA, 0x112 },
    { 0xFB, 0x113 },
    { 0xFC, 0x114 },
    { 0xFD, 0x115 },
    { 0xFE, 0x116 },
    { 0xFF, 0x117 },
    { 0x100, 0x118 },
    { 0x101, 0x119 },
    { 0x102, 0x11A },
    { 0x103, 0x11B },
    { 0x11C, 0x11D },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
    { 0xFFFF, 0xFFFF },
};

static void *ov16_0226871C(void)
{
    UnkStruct_ov16_02268A14 *v0;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_02268A14));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_02268A14));
    v0->unk_66B = -1;

    return v0;
}

void ov16_02268744(BGL *param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov16_02270540); v0++) {
        sub_020183C4(param0, 4 + v0, &Unk_ov16_02270540[v0], 0);
        sub_02019EE0(param0, 4 + v0, (0x6000 / 0x20 - 1));
        sub_02019184(param0, 4 + v0, 0, 0);
        sub_02019184(param0, 4 + v0, 3, 0);
    }
}

void ov16_022687A0(BGL *param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov16_02270540); v0++) {
        sub_02019120(4 + v0, 0);
        sub_02019044(param0, 4 + v0);
    }
}

void *ov16_022687C8(NARC *param0, NARC *param1, BattleSystem *param2, int param3, UnkStruct_0209C370 *param4)
{
    UnkStruct_ov16_02268A14 *v0;
    PaletteData *v1;
    int v2;

    v0 = ov16_0226871C();
    v0->unk_00 = param2;
    v0->unk_66D = param3;
    v0->unk_04 = param4;

    if (v0->unk_04 != NULL) {
        v0->unk_6C0 = param4->unk_00;
    } else {
        (void)0;
    }

    v1 = BattleSystem_PaletteSys(param2);
    v2 = ov16_0223E240(param2);

    if (v2 >= NELEMS(Unk_ov16_022704E4)) {
        v2 = 0;
        GF_ASSERT(0);
    }

    v0->unk_4C8 = sub_02012744(13, 5);
    v0->unk_678 = SysTask_Start(ov16_0226BCE4, v0, 1310);

    {
        NNSG2dScreenData *v3;
        void *v4;
        int v5;
        int v6;

        for (v5 = 0; v5 < 7; v5++) {
            v0->unk_3C[v5] = Heap_AllocFromHeap(5, 0x800);

            if ((BattleSystem_BattleType(param2) & 0x80) && (Unk_ov16_02270264[v5] == 49)) {
                v6 = 170;
            } else {
                v6 = Unk_ov16_02270264[v5];
            }

            v4 = sub_02006F6C(7, v6, 1, &v3, 5);

            MI_CpuCopy32(v3->rawData, v0->unk_3C[v5], 0x800);
            Heap_FreeToHeap(v4);
        }
    }

    {
        u16 *v7;
        int v8;

        v8 = (BattleSystem_BattleType(param2) & 0x80) ? 340 : 242;
        v0->unk_58 = Heap_AllocFromHeap(5, 0x200);

        PaletteSys_LoadPalette(v1, 7, v8, 5, 1, 0, 0);

        if (Unk_ov16_022704E4[v2].unk_00 != 0xffff) {
            PaletteSys_LoadPalette(v1, 7, Unk_ov16_022704E4[v2].unk_00, 5, 1, 0x20, 0);
        }

        v7 = sub_02003164(v1, 1);
        MI_CpuCopy16(v7, v0->unk_58, 0x200);
    }

    {
        int v9, v10;

        for (v10 = 0; v10 < 4; v10++) {
            MI_CpuFill8(&v0->unk_68[v10].unk_00, 0xff, sizeof(UnkStruct_ov16_0226AC98));
        }
    }

    {
        int v11, v12;

        for (v12 = 0; v12 < 4; v12++) {
            for (v11 = 0; v11 < 4; v11++) {
                v0->unk_68[v12].unk_18[v11] = Heap_AllocFromHeap(5, sub_0208C098(6));
            }
        }
    }

    {
        NNSG2dPaletteData *v13;
        void *v14;
        int v15;

        v0->unk_5C = Heap_AllocFromHeap(5, 0x40);
        v0->unk_60 = Heap_AllocFromHeap(5, 0x40);

        MI_CpuCopy16(v0->unk_58, v0->unk_5C, 0x20);
        MI_CpuCopy16(&v0->unk_58[7 * 16], &v0->unk_5C[16 * 1], 0x20);

        if (BattleSystem_BattleType(param2) & 0x80) {
            v15 = 341;
        } else if (Unk_ov16_022704E4[v2].unk_02 != 0xffff) {
            v15 = Unk_ov16_022704E4[v2].unk_02;
        } else {
            v15 = 267;
        }

        v14 = sub_02006F88(7, v15, &v13, 5);

        if (BattleSystem_BattleType(param2) & 0x80) {
            MI_CpuCopy16(v13->pRawData, v0->unk_60, 0x40);
        } else {
            MI_CpuCopy16(v13->pRawData, v0->unk_60, 0x20);
        }

        Heap_FreeToHeap(v14);
        RenderControlFlags_ZeroSpeedUpBattle();
        RenderControlFlags_ZeroWaitBattle();

        v0->unk_64 = SysTask_Start(ov16_0226BD74, v0, 55000);
    }

    return v0;
}

void ov16_02268A14(UnkStruct_ov16_02268A14 *param0)
{
    int v0;

    if (param0->unk_04 != NULL) {
        param0->unk_04->unk_00 = param0->unk_6C0;
    }

    ov16_0226B1E8(param0);
    ov16_02268F00(param0);
    ov16_02268B8C(param0);

    sub_020127BC(param0->unk_4C8);
    SysTask_Done(param0->unk_678);

    for (v0 = 0; v0 < 7; v0++) {
        Heap_FreeToHeap(param0->unk_3C[v0]);
    }

    Heap_FreeToHeap(param0->unk_58);
    ov16_0226ABE8(param0);
    Heap_FreeToHeap(param0->unk_5C);
    Heap_FreeToHeap(param0->unk_60);
    SysTask_Done(param0->unk_64);
    Heap_FreeToHeap(param0);
}

void ov16_02268A88(UnkStruct_ov16_02268A14 *param0)
{
    BGL *v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;
    PaletteData *v3;
    int v4;

    v1 = ov16_0223E010(param0->unk_00);
    v2 = ov16_0223E018(param0->unk_00);
    v0 = BattleSystem_BGL(param0->unk_00);
    v3 = BattleSystem_PaletteSys(param0->unk_00);

    {
        int v5;

        if (BattleSystem_BattleType(param0->unk_00) & 0x80) {
            v5 = 169;
        } else {
            v5 = 28;
        }

        sub_02006E3C(7, v5, v0, 4, 0, 0x6000, 1, 5);
    }

    sub_0207C9EC(v1, v2, 20017, 20017);
    sub_0207C9B0(BattleSystem_PaletteSys(param0->unk_00), 3, v1, v2, NNS_G2D_VRAM_TYPE_2DSUB, 20020);

    for (v4 = 0; v4 < 4; v4++) {
        sub_0207C948(v1, v2, NNS_G2D_VRAM_TYPE_2DSUB, 0, 20025 + v4);
    }

    if (BattleSystem_BattleType(param0->unk_00) & 0x400) {
        ov16_0226DE44(v1, v2, 5, v3, 20412, 20036, 20406, 20395);
        param0->unk_6C4.unk_00 = ov16_0226DEEC(v1, v2, 5, 20412, 20036, 20406, 20395, 10, 0);
    }
}

void ov16_02268B8C(UnkStruct_ov16_02268A14 *param0)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;

    v1 = ov16_0223E010(param0->unk_00);
    v2 = ov16_0223E018(param0->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        sub_0207CA34(v2, 20025 + v0);
    }

    sub_0207CA3C(v2, 20020);
    sub_0207CA44(v2, 20017, 20017);

    if (BattleSystem_BattleType(param0->unk_00) & 0x400) {
        ov16_0226DF68(param0->unk_6C4.unk_00);
        ov16_0226DEC4(v2, 20412, 20036, 20406, 20395);
    }
}

void ov16_02268C04(NARC *param0, NARC *param1, UnkStruct_ov16_02268A14 *param2, int param3, int param4, void *param5)
{
    const UnkStruct_ov16_02270670 *v0, *v1;
    int v2;
    BGL *v3;
    SpriteRenderer *v4;
    SpriteGfxHandler *v5;

    if (param5 != NULL) {
        MI_CpuCopy8(param5, &param2->unk_1A, sizeof(UnkStruct_ov16_02268A14_sub2));
    }

    param2->unk_66E = 0;

    v3 = BattleSystem_BGL(param2->unk_00);
    v4 = ov16_0223E010(param2->unk_00);
    v5 = ov16_0223E018(param2->unk_00);

    if (param2->unk_66B == -1) {
        param4 = 1;
        v1 = NULL;
    } else {
        v1 = &Unk_ov16_02270670[param2->unk_66B];
    }

    v0 = &Unk_ov16_02270670[param3];

    if (0) {
        int v6;

        if (BattleSystem_BattleType(param2->unk_00) & 0x80) {
            v6 = 169;
        } else {
            v6 = v0->unk_00;
        }

        sub_020070E8(param0, v6, v3, 4, 0, (0x6000 - (32 * 12 * 0x20)), 1, 5);

        if (param2->unk_66D == 0) {
            sub_020070E8(param0, 37, v3, 4, ((0x6000 - (32 * 12 * 0x20)) / 0x20), (32 * 12 * 0x20), 1, 5);
        } else {
            sub_020070E8(param0, 38, v3, 4, ((0x6000 - (32 * 12 * 0x20)) / 0x20), (32 * 12 * 0x20), 1, 5);
        }
    }

    if (1) {
        sub_02002FBC(BattleSystem_PaletteSys(param2->unk_00), param2->unk_58, 1, 0, 0x200);
    }

    for (v2 = 0; v2 < 4; v2++) {
        if ((v0->unk_04_val2[v2] != 0xffff) && ((param4 == 1) || (v0->unk_04_val2[v2] != v1->unk_04_val2[v2]))) {
            sub_02019574(v3, 4 + v2, param2->unk_3C[v0->unk_04_val2[v2]], 0x800);
            sub_0201C3C0(v3, 4 + v2);
        }
    }

    SpriteRenderer_LoadPalette(BattleSystem_PaletteSys(param2->unk_00), 3, v4, v5, param1, 72, 0, 7, NNS_G2D_VRAM_TYPE_2DSUB, 20023);
    param2->unk_66B = param3;

    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_BGALL), 8, 12);
    ov16_0226B1E8(param2);

    if (v0->unk_28 != NULL) {
        v0->unk_28(param2, param3, param4);
    }

    SysTask_ExecuteAfterVBlank(ov16_0226BC50, param2, 10);
}

void ov16_02268D40(NARC *param0, UnkStruct_ov16_02268A14 *param1)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;

    GF_ASSERT(param1->unk_5BC[0] == NULL && param1->unk_5D4[0] == NULL);

    v1 = ov16_0223E010(param1->unk_00);
    v2 = ov16_0223E018(param1->unk_00);

    SpriteRenderer_LoadCharResObjFromOpenNarc(v1, v2, param0, 208, 1, NNS_G2D_VRAM_TYPE_2DSUB, 20023);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v1, v2, param0, 207, 1, 20015);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v1, v2, param0, 209, 1, 20015);

    SpriteRenderer_LoadCharResObjFromOpenNarc(v1, v2, param0, 205, 1, NNS_G2D_VRAM_TYPE_2DSUB, 20024);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v1, v2, param0, 204, 1, 20016);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v1, v2, param0, 206, 1, 20016);

    for (v0 = 0; v0 < 6; v0++) {
        param1->unk_5BC[v0] = SpriteActor_LoadResources(v1, v2, &Unk_ov16_02270414);
        sub_0200D4D0(param1->unk_5BC[v0]->unk_00, 12 + 19 * v0, 13, ((192 + 80) << FX32_SHIFT));
        sub_0200D6A4(param1->unk_5BC[v0], 1);

        param1->unk_5D4[v0] = SpriteActor_LoadResources(v1, v2, &Unk_ov16_02270448);
        sub_0200D4D0(param1->unk_5D4[v0]->unk_00, 246 + -12 * v0, 9, ((192 + 80) << FX32_SHIFT));
    }

    ov16_02269218(param1);

    GF_ASSERT(param1->unk_08 == NULL);
    param1->unk_08 = SysTask_Start(ov16_02268FCC, param1, 1300);

    {
        PaletteData *v3;

        v3 = BattleSystem_PaletteSys(param1->unk_00);
        ov16_0226DB7C(v1, v2, v3, 5, 20411, 20035, 20405, 20394);
        param1->unk_6B8 = ov16_0226DC24(v1, v2, 5, 20411, 20035, 20405, 20394, 5, 0);
    }
}

static void ov16_02268F00(UnkStruct_ov16_02268A14 *param0)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;

    GF_ASSERT(param0->unk_5BC[0] != NULL && param0->unk_5D4[0] != NULL);

    v1 = ov16_0223E010(param0->unk_00);
    v2 = ov16_0223E018(param0->unk_00);

    SpriteGfxHandler_UnloadCharObjById(v2, 20023);
    SpriteGfxHandler_UnloadCellObjById(v2, 20015);
    SpriteGfxHandler_UnloadAnimObjById(v2, 20015);
    SpriteGfxHandler_UnloadCharObjById(v2, 20024);
    SpriteGfxHandler_UnloadCellObjById(v2, 20016);
    SpriteGfxHandler_UnloadAnimObjById(v2, 20016);
    SpriteGfxHandler_UnloadPlttObjById(v2, 20023);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200D0F4(param0->unk_5BC[v0]);
        param0->unk_5BC[v0] = NULL;

        sub_0200D0F4(param0->unk_5D4[v0]);
        param0->unk_5D4[v0] = NULL;
    }

    SysTask_Done(param0->unk_08);
    param0->unk_08 = NULL;

    ov16_0226DBFC(v2, 20411, 20035, 20405, 20394);
    ov16_0226DCA8(param0->unk_6B8);
}

static void ov16_02268FCC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    int v1;
    UnkStruct_ov16_02268FCC *v2;

    for (v1 = 0; v1 < 6; v1++) {
        v2 = &v0->unk_62C[v1];

        switch (v2->unk_03) {
        case 0:
        default:
            if (sub_0200D400(v0->unk_5BC[v1]->unk_00) == 0) {
                break;
            }

            if (v2->unk_02 >= 87) {
                v2->unk_04 = 0;
                v2->unk_05 = 10;
            } else {
                break;
            }

            v2->unk_05 += LCRNG_Next() % 8;
            v2->unk_07 = 2;
            v2->unk_03++;
            break;
        case 1:
            if (v2->unk_05 > 0) {
                v2->unk_05--;
                break;
            }

            v2->unk_03++;
            break;
        case 2:
        case 4:
            sub_0200D7C0(v0->unk_5BC[v1], 0x800);
            v2->unk_00 += 0x180;

            sub_0200D500(v0->unk_5BC[v1], 12 + 19 * v1 + v2->unk_00 / 0x100, 13, ((192 + 80) << FX32_SHIFT));
            v2->unk_06++;

            if (v2->unk_06 >= v2->unk_07) {
                v2->unk_06 = 0;

                if (v2->unk_03 == 2) {
                    v2->unk_03++;
                } else {
                    sub_0200D79C(v0->unk_5BC[v1], 0);
                    sub_0200D500(v0->unk_5BC[v1], 12 + 19 * v1, 13, ((192 + 80) << FX32_SHIFT));

                    v2->unk_00 = 0;

                    if (v2->unk_08 < 1) {
                        v2->unk_08++;

                        if (v2->unk_07 > 1) {
                            v2->unk_07--;
                        }

                        v2->unk_03 = 2;
                    } else {
                        v2->unk_08 = 0;
                        v2->unk_03 = 0;
                    }
                }
            }

            break;
        case 3:
            sub_0200D7C0(v0->unk_5BC[v1], -0x800);
            v2->unk_00 -= 0x180;

            sub_0200D500(v0->unk_5BC[v1], 12 + 19 * v1 + v2->unk_00 / 0x100, 13, ((192 + 80) << FX32_SHIFT));
            v2->unk_06++;

            if (v2->unk_06 >= v2->unk_07 * 2) {
                v2->unk_06 = 0;
                v2->unk_03++;
            }
            break;
        }
    }
}

void ov16_0226914C(UnkStruct_ov16_02268A14 *param0, const u8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_62C[v0].unk_02 = param1[v0];
    }
}

void ov16_02269168(UnkStruct_ov16_02268A14 *param0, u8 param1[], u8 param2[])
{
    int v0, v1;

    for (v0 = 0; v0 < 6; v0++) {
        v1 = ov16_0226A934(param1[v0]);

        CellActor_SetAnim(param0->unk_5BC[v0]->unk_00, v1);
        SpriteActor_UpdateObject(param0->unk_5BC[v0]->unk_00);

        v1 = ov16_0226A934(param2[v0]);

        CellActor_SetAnim(param0->unk_5D4[v0]->unk_00, v1);
        SpriteActor_UpdateObject(param0->unk_5D4[v0]->unk_00);
    }
}

void ov16_022691BC(UnkStruct_ov16_02268A14 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_5BC[0] != NULL && param0->unk_5D4[0] != NULL);

    for (v0 = 0; v0 < 6; v0++) {
        SpriteActor_DrawSprite(param0->unk_5BC[v0]->unk_00, 1);
    }

    if (BattleSystem_BattleType(param0->unk_00) & 0x1) {
        for (v0 = 0; v0 < 6; v0++) {
            SpriteActor_DrawSprite(param0->unk_5D4[v0]->unk_00, 1);
        }
    }
}

void ov16_02269218(UnkStruct_ov16_02268A14 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_5BC[0] != NULL && param0->unk_5D4[0] != NULL);

    for (v0 = 0; v0 < 6; v0++) {
        SpriteActor_DrawSprite(param0->unk_5BC[v0]->unk_00, 0);
        SpriteActor_DrawSprite(param0->unk_5D4[v0]->unk_00, 0);
    }
}

int ov16_0226925C(UnkStruct_ov16_02268A14 *param0)
{
    int v0, v1, v2, v3;
    const UnkStruct_ov16_02270670 *v4;
    int v5 = 0;

    GF_ASSERT(param0->unk_66B != -1);

    v4 = &Unk_ov16_02270670[param0->unk_66B];

    if ((v4->unk_14 == NULL) || (param0->unk_66E == 1)) {
        return 0xffffffff;
    }

    GF_ASSERT(v4->unk_18 != NULL);

    if (BattleSystem_BattleType(param0->unk_00) & 0x400) {
        v1 = ov16_0226CD18(param0);
    } else {
        v1 = sub_02022664(v4->unk_14);

        if (v1 == 0xffffffff) {
            v1 = ov16_0226BE48(param0);
            v5++;
        }
    }

    if (v1 == 0xffffffff) {
        v0 = 0xffffffff;
        v3 = 0xff;
    } else {
        v0 = v4->unk_18[v1];
        v3 = v4->unk_1C[v1];
    }

    if (v4->unk_2C != NULL) {
        v0 = v4->unk_2C(param0, v0, v3);

        if (v0 != 0xffffffff) {
            if (v4->unk_24 != NULL) {
                v4->unk_24(param0, v1);
            }

            MI_CpuClear8(&param0->unk_6BC, sizeof(UnkStruct_ov16_0226CB10));
            ov16_0226DDE8(param0->unk_6B8);

            if (v5 > 0) {
                param0->unk_6C0 = 1;
            } else {
                param0->unk_6C0 = 0;
            }
        }
    }

    return v0;
}

BOOL ov16_02269348(UnkStruct_ov16_02268A14 *param0)
{
    if ((param0->unk_0C == NULL) && (param0->unk_10 == NULL) && (ov16_0226BCD0(param0) == 1)) {
        return 1;
    }

    return 0;
}

int ov16_02269368(int param0, int param1)
{
    switch (param0) {
    case 0x0:
        return (param1 == 4) ? 9 : 8;
    case 0x1:
    case 0x2:
    case 0x10:
        return (param1 == 4) ? 6 : 4;
    case 0x4:
    case 0x80:
        return 1;
    case 0x8:
        return (param1 == 4) ? 7 : 2;
    case 0x100:
        return (param1 == 4) ? 4 : 6;
    case 0x40:
        return 3;
    case 0x200:
        return 10;
    case 0x20:
        return 5;
    case 0x400:
        return 11;
    default:
        GF_ASSERT(0);
        return 0;
    }
}

void ov16_0226940C(UnkStruct_ov16_02268A14 *param0)
{
    int v0;

    GXS_SetVisibleWnd(GX_WNDMASK_W0);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);

    v0 = 255 - (param0->unk_6AC / 0x100);

    if (v0 < 0) {
        v0 = 0;
    }

    G2S_SetWnd0Position(v0, 0, 255, 192);
}

void ov16_0226947C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    if (param0->unk_6AC == param2 * 0x100) {
        return;
    }

    param0->unk_6B0 = param1;
    param0->unk_6B4 = param2 << 8;

    SysTask_Start(ov16_022694A8, param0, 1200);
}

static void ov16_022694A8(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    int v1 = 0;
    BGL *v2;

    v2 = BattleSystem_BGL(v0->unk_00);
    v0->unk_6AC += v0->unk_6B0;

    if (((v0->unk_6B0 <= 0) && (v0->unk_6AC <= v0->unk_6B4)) || ((v0->unk_6B0 > 0) && (v0->unk_6AC >= v0->unk_6B4))) {
        v0->unk_6AC = v0->unk_6B4;
        v1 = 1;
    }

    sub_02019184(v2, 6, 0, v0->unk_6AC / 0x100);
    ov16_0226940C(v0);

    if (v1 == 1) {
        sub_02019EE0(v2, 7, (0x6000 / 0x20 - 1));
        sub_02019120(7, 0);
        BGL_SetPriority(7, 0);
        GXS_SetVisibleWnd(GX_WNDMASK_NONE);
        SysTask_Done(param0);
        return;
    }
}

static void ov16_02269550(UnkStruct_ov16_02268A14 *param0, int param1)
{
    BOOL v0;
    UnkStruct_ov16_0226B988 *v1;

    param0->unk_66E = 1;

    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
    G2S_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
    G2S_SetWnd0Position(0, 0, 255, (18 * 8));
    G2S_SetWnd1Position(0, (18 * 8), 255, 192);
    GXS_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);

    v1 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0226B988));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov16_0226B988));

    v1->unk_00 = param0;
    v1->unk_12 = param1;
    v1->unk_08 = -(255 * 100);
    v1->unk_0A = (40 * 100);
    v1->unk_0C = ((255 * 100) - v1->unk_08) / 100;
    v1->unk_0E = ((40 * 100) - v1->unk_0A) / 100;

    Sound_PlayEffect(1806);
    SysTask_Start(ov16_0226B988, v1, 1210);

    v0 = SetHBlankCallback(ov16_0226BB94, v1);
    GF_ASSERT(v0 == 1);

    v1->unk_04 = SysTask_ExecuteOnVBlank(ov16_0226BA88, v1, 10);
}

static void ov16_02269654(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0;

    v0 = param0->unk_1A.val1.unk_00;

    ov16_02269668(param0, param1, param2);
    ov16_02269550(param0, v0);
}

static void ov16_02269668(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    Strbuf *v0, *v1, *v2, *v3;
    MessageLoader *v4;
    int v5;
    UnkStruct_ov16_02269668 *v6;

    v6 = &param0->unk_1A.val1;
    v5 = v6->unk_00;

    param0->unk_6C1 = v6->unk_08;

    v4 = BattleSystem_MessageLoader(param0->unk_00);

    param0->unk_66A = v5;

    if (BattleSystem_BattleType(param0->unk_00) & 0x20) {
        v0 = MessageLoader_GetNewStrbuf(v4, 931);
        v1 = MessageLoader_GetNewStrbuf(v4, 932);
        v2 = MessageLoader_GetNewStrbuf(v4, 933);
    } else if (BattleSystem_BattleType(param0->unk_00) & 0x200) {
        v0 = MessageLoader_GetNewStrbuf(v4, 1223);
        v1 = MessageLoader_GetNewStrbuf(v4, 932);
        v2 = MessageLoader_GetNewStrbuf(v4, 933);
    } else {
        v0 = MessageLoader_GetNewStrbuf(v4, 924);
        v1 = MessageLoader_GetNewStrbuf(v4, 925);
        v2 = MessageLoader_GetNewStrbuf(v4, 926);
    }

    if (param0->unk_6C1 == 1) {
        v3 = MessageLoader_GetNewStrbuf(v4, 928);
        param0->unk_66F = 1;
    } else {
        v3 = MessageLoader_GetNewStrbuf(v4, 927);
        param0->unk_66F = 0;
    }

    ov16_0226A98C(param0, &param0->unk_4CC[0], v0, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 84, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v1, FONT_SUBSCREEN, TEXT_COLOR(4, 5, 6), 2, 20023, 40, 170, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[2], v2, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 2, 20023, 216, 170, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[3], v3, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 178, 1, NULL);

    Strbuf_Free(v0);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);

    if ((BattleSystem_BattleType(param0->unk_00) & (0x20 | 0x200)) == 0) {
        Pokemon *v7;
        CellActorData *v8;
        int v9, v10;

        v7 = BattleSystem_PartyPokemon(param0->unk_00, v6->unk_01, v6->unk_02);
        ov16_0226A698(param0);
        v8 = ov16_0226A7A4(param0, v7, v5, v6->unk_04, v6->unk_06, v6->unk_03);

        sub_020129A4(param0->unk_4CC[0].unk_00, &v9, &v10);

        if (v5 == 4) {
            v9 += param0->unk_4CC[0].unk_10 + 32 / 2;
        } else {
            v9 -= 32 / 2;
        }

        sub_0200D500(v8, v9, v10 - (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT), ((192 + 80) << FX32_SHIFT));
    }
}

static void ov16_022698A8(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0;

    v0 = param0->unk_1A.val1.unk_00;

    ov16_022698BC(param0, param1, param2);
    ov16_02269550(param0, v0);
}

static void ov16_022698BC(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0;

    v0 = param0->unk_1A.val1.unk_00;

    ov16_02269668(param0, param1, param2);

    {
        BGL *v1;

        v1 = BattleSystem_BGL(param0->unk_00);

        sub_02019CB8(v1, 4, (0x6000 / 0x20 - 1), 0, 0x10, 32, 8, 17);
        sub_0201C3C0(v1, 5);
    }

    sub_020129D0(param0->unk_4CC[1].unk_00, 0);
    sub_020129D0(param0->unk_4CC[2].unk_00, 0);
    sub_020129D0(param0->unk_4CC[3].unk_00, 0);
}

static void ov16_02269924(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0;

    v0 = param0->unk_1A.val1.unk_00;

    ov16_02269938(param0, param1, param2);
    ov16_02269550(param0, v0);
}

static void ov16_02269938(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0;

    v0 = param0->unk_1A.val1.unk_00;

    ov16_02269668(param0, param1, param2);

    {
        BGL *v1;

        v1 = BattleSystem_BGL(param0->unk_00);

        sub_02019CB8(v1, 4, (0x6000 / 0x20 - 1), 0, 0x10, 10, 8, 17);
        sub_02019CB8(v1, 4, (0x6000 / 0x20 - 1), 0x16, 0x10, 10, 8, 17);
        sub_0201C3C0(v1, 5);
    }

    sub_020129D0(param0->unk_4CC[1].unk_00, 0);
    sub_020129D0(param0->unk_4CC[2].unk_00, 0);
}

static void ov16_022699AC(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    UnkStruct_ov16_02260C00 *v0;
    int v1;
    MessageLoader *v2;
    UnkStruct_ov16_0226ABD4 *v3;
    TextColor v4;

    v0 = &param0->unk_1A.val2;
    GF_ASSERT(v0 != NULL);

    param0->unk_66A = v0->unk_10;

    v2 = BattleSystem_MessageLoader(param0->unk_00);
    v3 = ov16_0226ABD4(param0, v0->unk_10);

    ov16_0226AF0C(param0);

    {
        ov16_0226A98C(param0, &param0->unk_4CC[0], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 64, 46, 1, &v3->unk_28[0]);
        ov16_0226A98C(param0, &param0->unk_4CC[1], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 192, 46, 1, &v3->unk_28[1]);
        ov16_0226A98C(param0, &param0->unk_4CC[2], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 64, 110, 1, &v3->unk_28[2]);
        ov16_0226A98C(param0, &param0->unk_4CC[3], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 192, 110, 1, &v3->unk_28[3]);
    }

    {
        for (v1 = 0; v1 < 4; v1++) {
            v4 = ov16_0226B924(v0->unk_08[v1], v0->unk_0C[v1]);
            ov16_0226A98C(param0, &param0->unk_4CC[9 + v1], NULL, FONT_SYSTEM, v4, 4, 20023, Unk_ov16_022702D4[v1][0], Unk_ov16_022702D4[v1][1], 0, &v3->unk_78[v1]);
            ov16_0226A98C(param0, &param0->unk_4CC[5 + v1], NULL, FONT_SYSTEM, v4, 4, 20023, Unk_ov16_02270284[v1][0], Unk_ov16_02270284[v1][1], 0, &v3->unk_C8[v1]);
        }
    }

    {
        Strbuf *v5;

        v5 = MessageLoader_GetNewStrbuf(v2, 929);
        ov16_0226A98C(param0, &param0->unk_4CC[4], v5, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 178, 1, NULL);
        Strbuf_Free(v5);
    }

    {
        int v6;

        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_00[v1] != 0) {
                v6 = MoveTable_LoadParam(v0->unk_00[v1], MOVEATTRIBUTE_TYPE);
                ov16_0226B06C(param0, v6, v1);
            } else {
                ov16_0226B088(param0, v1);
                break;
            }
        }
    }

    {
        BGL *v7;

        v7 = BattleSystem_BGL(param0->unk_00);

        if (v0->unk_00[0] == 0) {
            sub_020129D0(param0->unk_4CC[0].unk_00, 0);
            sub_020129D0(param0->unk_4CC[5].unk_00, 0);
            sub_020129D0(param0->unk_4CC[9].unk_00, 0);
        }

        if (v0->unk_00[1] == 0) {
            sub_020129D0(param0->unk_4CC[1].unk_00, 0);
            sub_020129D0(param0->unk_4CC[6].unk_00, 0);
            sub_020129D0(param0->unk_4CC[10].unk_00, 0);
        }

        if (v0->unk_00[2] == 0) {
            sub_020129D0(param0->unk_4CC[2].unk_00, 0);
            sub_020129D0(param0->unk_4CC[7].unk_00, 0);
            sub_020129D0(param0->unk_4CC[11].unk_00, 0);
        }

        if (v0->unk_00[3] == 0) {
            sub_020129D0(param0->unk_4CC[3].unk_00, 0);
            sub_020129D0(param0->unk_4CC[8].unk_00, 0);
            sub_020129D0(param0->unk_4CC[12].unk_00, 0);
        }
    }
}

static void ov16_02269C7C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    Strbuf *v1, *v2;

    v0 = BattleSystem_MessageLoader(param0->unk_00);
    v1 = MessageLoader_GetNewStrbuf(v0, 940);
    v2 = MessageLoader_GetNewStrbuf(v0, 941);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v2, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    Strbuf_Free(v1);
    Strbuf_Free(v2);
}

static void ov16_02269D14(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    Strbuf *v1, *v2;

    v0 = BattleSystem_MessageLoader(param0->unk_00);
    v1 = MessageLoader_GetNewStrbuf(v0, 1181);
    v2 = MessageLoader_GetNewStrbuf(v0, 1182);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v2, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    Strbuf_Free(v1);
    Strbuf_Free(v2);
}

static void ov16_02269DB0(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    Strbuf *v1, *v2, *v3, *v4;
    StringTemplate *v5;
    UnkStruct_ov16_022623F0 *v6;

    v6 = &param0->unk_1A.val4;
    v0 = BattleSystem_MessageLoader(param0->unk_00);
    v5 = BattleSystem_StringTemplate(param0->unk_00);
    v1 = MessageLoader_GetNewStrbuf(v0, 1186);
    v2 = MessageLoader_GetNewStrbuf(v0, 1187);
    v3 = Strbuf_Init(100, 5);
    v4 = Strbuf_Init(100, 5);

    StringTemplate_SetMoveName(v5, 0, v6->unk_00);
    StringTemplate_Format(v5, v3, v1);
    StringTemplate_Format(v5, v4, v2);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v4, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
    Strbuf_Free(v4);
}

static void ov16_02269E94(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    Strbuf *v1;

    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_BGALL), 31, 0);

    v0 = BattleSystem_MessageLoader(param0->unk_00);
    v1 = MessageLoader_GetNewStrbuf(v0, 1260);

    {
        BGL *v2;
        NNSG2dScreenData *v3;
        void *v4;

        v4 = sub_02006F6C(7, 46, 1, &v3, 5);
        MI_CpuCopy32(v3->rawData, param0->unk_3C[6], 0x800);
        Heap_FreeToHeap(v4);

        v2 = BattleSystem_BGL(param0->unk_00);
        sub_02019574(v2, 4, param0->unk_3C[6], 0x800);
        sub_0201C3C0(v2, 4);
    }

    {
        BGL *v5 = BattleSystem_BGL(param0->unk_00);

        MI_CpuClear32(param0->unk_3C[4], 0x800);
        sub_02019574(v5, 5, param0->unk_3C[4], 0x800);
        sub_0201C3C0(v5, 5);
    }

    ov16_0226A98C(param0, &param0->unk_4CC[0], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 178, 1, NULL);
    Strbuf_Free(v1);
}

static void ov16_02269F68(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    Strbuf *v1, *v2, *v3, *v4;
    StringTemplate *v5;
    UnkStruct_ov16_022623F0 *v6;

    v6 = &param0->unk_1A.val4;
    v0 = BattleSystem_MessageLoader(param0->unk_00);
    v5 = BattleSystem_StringTemplate(param0->unk_00);
    v1 = MessageLoader_GetNewStrbuf(v0, 1217);
    v2 = MessageLoader_GetNewStrbuf(v0, 1218);
    v3 = Strbuf_Init(100, 5);
    v4 = Strbuf_Init(100, 5);

    StringTemplate_SetMoveName(v5, 0, v6->unk_00);
    StringTemplate_Format(v5, v3, v1);
    StringTemplate_Format(v5, v4, v2);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v4, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
    Strbuf_Free(v4);
}

static void ov16_0226A04C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    Strbuf *v1, *v2, *v3, *v4;
    StringTemplate *v5;
    UnkStruct_ov16_022623F0 *v6;

    v6 = &param0->unk_1A.val4;
    v0 = BattleSystem_MessageLoader(param0->unk_00);
    v5 = BattleSystem_StringTemplate(param0->unk_00);
    v1 = MessageLoader_GetNewStrbuf(v0, 1215);
    v2 = MessageLoader_GetNewStrbuf(v0, 1216);
    v3 = Strbuf_Init(100, 5);
    v4 = Strbuf_Init(100, 5);

    StringTemplate_SetMoveName(v5, 0, v6->unk_00);
    StringTemplate_Format(v5, v3, v1);
    StringTemplate_Format(v5, v4, v2);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v4, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
    Strbuf_Free(v4);
}

static void ov16_0226A12C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    UnkStruct_ov16_02260F14 *v0;
    int v1;
    MessageLoader *v2;
    u8 v3[4];
    Strbuf *v4, *v5;
    Pokemon *v6;
    BoxPokemon *v7;
    StringTemplate *v8;
    TextColor v9;
    u8 v10[6];
    u8 v11[6];
    int v12;

    v0 = &param0->unk_1A.val3;

    param0->unk_66C = v0->unk_21;
    param0->unk_66A = v0->unk_20;

    v2 = BattleSystem_MessageLoader(param0->unk_00);
    v8 = BattleSystem_StringTemplate(param0->unk_00);

    ov16_0226B20C(param0, v3, 0);
    ov16_0226A698(param0);
    ov16_0226AAF8(param0);
    ov16_0223F87C(param0->unk_00, v10);
    ov16_0223F858(param0->unk_00, v11);

    v4 = Strbuf_Init((12 + 2 + (5 * 2)), 5);

    for (v1 = 0; v1 < 4; v1++) {
        v12 = v11[2 + v1];

        if ((v0->unk_00[v12].unk_01_2 == 1) && (v3[v1] == 1)) {
            if (v0->unk_00[v12].unk_01_0 == 0) {
                v5 = MessageLoader_GetNewStrbuf(v2, 962);
            } else if (v0->unk_00[v12].unk_01_0 == 1) {
                v5 = MessageLoader_GetNewStrbuf(v2, 963);
            } else {
                v5 = MessageLoader_GetNewStrbuf(v2, 964);
            }

            v6 = BattleSystem_PartyPokemon(param0->unk_00, v12, v0->unk_00[v12].unk_00);
            v7 = Pokemon_GetBoxPokemon(v6);

            StringTemplate_SetNickname(v8, 0, v7);
            StringTemplate_Format(v8, v4, v5);

            if (v1 & 1) {
                v9 = TEXT_COLOR(1, 2, 3);
            } else {
                v9 = TEXT_COLOR(4, 5, 6);
            }

            ov16_0226A98C(param0, &param0->unk_4CC[0 + v1], v4, FONT_SUBSCREEN, v9, 6, 20023, Unk_ov16_02270328[v1][0], Unk_ov16_02270328[v1][1], 1, NULL);
            Strbuf_Free(v5);

            {
                switch (v1) {
                case 1:
                    ov16_0226A7A4(param0, v6, 3, v0->unk_00[v12].unk_04, v0->unk_00[v12].unk_06, v0->unk_00[v12].unk_02);
                    break;
                case 3:
                    ov16_0226A7A4(param0, v6, 5, v0->unk_00[v12].unk_04, v0->unk_00[v12].unk_06, v0->unk_00[v12].unk_02);
                    break;
                }
            }
        } else {
            if (v3[v1] == 0) {
                ov16_0226B0DC(param0, v1);
            }
        }
    }

    Strbuf_Free(v4);

    {
        Strbuf *v13;

        v13 = MessageLoader_GetNewStrbuf(v2, 930);
        ov16_0226A98C(param0, &param0->unk_4CC[4], v13, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, Unk_ov16_02270328[4][0], Unk_ov16_02270328[4][1], 1, NULL);
        Strbuf_Free(v13);
    }
}

static int ov16_0226A318(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0, v1, v2;

    v2 = 0xff;

    switch (param1) {
    case 0xffffffff:
    default:
        return param1;
    case 1:
        v0 = 0;
        v1 = 0;

        switch (param0->unk_66A) {
        case 0:
            v2 = param0->unk_66A;
            break;
        case 2:
        case 4:
            v2 = param0->unk_66A - 2;
            break;
        }
        break;
    case 2:
        v0 = 1;
        v1 = 1;
        break;
    case 3:
        v0 = 2;
        v1 = 1;
        break;
    case 4:
        v0 = 3;
        v1 = 1;
        break;
    }

    ov16_0226B318(param0, param2);
    ov16_0226B2BC(ov16_0226B390, param0);

    param0->unk_67C.unk_04_val3.unk_00 = Unk_ov16_022703A4[param1 - 1];
    param0->unk_67C.unk_04_val3.unk_04 = &Unk_ov16_022702F4[param1 - 1];
    param0->unk_67C.unk_04_val3.unk_0C = 1;
    param0->unk_67C.unk_04_val3.unk_08 = param1;
    param0->unk_67C.unk_04_val3.unk_0D = v0;
    param0->unk_67C.unk_04_val3.unk_0E = v2;
    param0->unk_67C.unk_04_val3.unk_0F = v1;
    param0->unk_67C.unk_04_val3.unk_11 = Unk_ov16_02270294[param1 - 1];
    param0->unk_67C.unk_04_val3.unk_10 = 1;

    return param1;
}

static int ov16_0226A3F4(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    UnkStruct_ov16_02260C00 *v0;
    u32 v1[2];
    u32 v2;
    const UnkStruct_ov16_0226A3F4 *v3[2];
    const s16 *v4;
    const UnkStruct_ov16_022702F4 *v5;

    if (param1 == 0xffffffff) {
        return param1;
    }

    v0 = &param0->unk_1A.val2;

    if ((param1 >= 1) && (param1 <= 4)) {
        if (v0->unk_00[param1 - 1] == 0) {
            return 0xffffffff;
        }
    }

    v2 = param1 - 1;

    switch (param1) {
    case 0xffffffff:
    default:
        return 0xffffffff;
    case 1:
    case 2:
    case 3:
    case 4:
        v4 = Unk_ov16_022703F4[param1 - 1];
        v5 = &Unk_ov16_02270378[param1 - 1];
        break;
    case 0xff:
        v4 = Unk_ov16_022703F4[NELEMS(Unk_ov16_022703F4) - 1];
        v5 = &Unk_ov16_02270378[NELEMS(Unk_ov16_022703F4) - 1];
        break;
    }

    ov16_0226B318(param0, param2);
    ov16_0226B2BC(ov16_0226B4E0, param0);

    param0->unk_67C.unk_04_val3.unk_00 = v4;
    param0->unk_67C.unk_04_val3.unk_04 = v5;
    param0->unk_67C.unk_04_val3.unk_0C = 3;
    param0->unk_67C.unk_04_val3.unk_08 = param1;
    param0->unk_67C.unk_04_val3.unk_10 = 1;

    return param1;
}

static int ov16_0226A4A4(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0;

    switch (param1) {
    case 0xffffffff:
    default:
        return param1;
    case 1:
        v0 = 0;
        break;
    case 0xff:
        v0 = 1;
        break;
    }

    ov16_0226B318(param0, param2);
    ov16_0226B2BC(ov16_0226B390, param0);

    if (param1 == 1) {
        param0->unk_67C.unk_04_val3.unk_00 = Unk_ov16_02270240[1];
        param0->unk_67C.unk_04_val3.unk_04 = &Unk_ov16_0227021C[1];
    } else {
        param0->unk_67C.unk_04_val3.unk_00 = Unk_ov16_02270240[0];
        param0->unk_67C.unk_04_val3.unk_04 = &Unk_ov16_0227021C[0];
    }

    param0->unk_67C.unk_04_val3.unk_0C = 6;
    param0->unk_67C.unk_04_val3.unk_08 = param1;
    param0->unk_67C.unk_04_val3.unk_0D = v0;
    param0->unk_67C.unk_04_val3.unk_0F = 3;
    param0->unk_67C.unk_04_val3.unk_10 = 1;

    return param1;
}

static int ov16_0226A528(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    UnkStruct_ov16_02260F14 *v0;
    u8 v1[4];

    v0 = &param0->unk_1A.val3;

    ov16_0226B20C(param0, v1, 1);

    switch (param1) {
    case 0xffffffff:
    default:
        return param1;
    case 1:
        if (v1[2 - 2] == 0) {
            return 0xffffffff;
        }
        break;
    case 2:
        if (v1[3 - 2] == 0) {
            return 0xffffffff;
        }
        break;
    case 3:
        if (v1[4 - 2] == 0) {
            return 0xffffffff;
        }
        break;
    case 4:
        if (v1[5 - 2] == 0) {
            return 0xffffffff;
        }
        break;
    case 0xff:
        ov16_0226B318(param0, NELEMS(Unk_ov16_02270A0C) - 1);
        ov16_0226B2BC(ov16_0226B390, param0);

        param0->unk_67C.unk_04_val3.unk_00 = Unk_ov16_022703D4[NELEMS(Unk_ov16_022703D4) - 1];
        param0->unk_67C.unk_04_val3.unk_04 = &Unk_ov16_0227033C[NELEMS(Unk_ov16_0227033C) - 1];
        param0->unk_67C.unk_04_val3.unk_0C = 4;
        param0->unk_67C.unk_04_val3.unk_08 = param1;
        param0->unk_67C.unk_04_val3.unk_0D = 4;
        param0->unk_67C.unk_04_val3.unk_0F = 3;
        param0->unk_67C.unk_04_val3.unk_10 = 1;

        return param1;
    }

    {
        BGL *v2;

        v2 = BattleSystem_BGL(param0->unk_00);
        sub_02019EE0(v2, 5, (0x6000 / 0x20 - 1));
        sub_0201C3C0(v2, 5);
    }

    ov16_0226B314(param0, param1);
    ov16_0226B2BC(ov16_0226B780, param0);

    param0->unk_67C.unk_04_val4.unk_1C = param1;

    return param1;
}

static int ov16_0226A634(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    switch (param1) {
    case 0xffffffff:
    default:
        return param1;
    case 1:
        break;
    }

    ov16_0226B318(param0, param2);
    ov16_0226B2BC(ov16_0226B390, param0);

    param0->unk_67C.unk_04_val3.unk_00 = Unk_ov16_022701F4;
    param0->unk_67C.unk_04_val3.unk_04 = &Unk_ov16_022701D0[0];
    param0->unk_67C.unk_04_val3.unk_0C = 6;
    param0->unk_67C.unk_04_val3.unk_08 = param1;
    param0->unk_67C.unk_04_val3.unk_0D = 0;
    param0->unk_67C.unk_04_val3.unk_0F = 3;
    param0->unk_67C.unk_04_val3.unk_10 = 0;

    return param1;
}

static void ov16_0226A698(UnkStruct_ov16_02268A14 *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    int v2, v3, v4;
    PaletteData *v5;

    v0 = ov16_0223E010(param0->unk_00);
    v1 = ov16_0223E018(param0->unk_00);
    v5 = BattleSystem_PaletteSys(param0->unk_00);

    sub_0200CD7C(v5, 3, v0, v1, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 20022);
    sub_0200CE0C(v0, v1, 19, PokeIcon32KCellsFileIndex(), 0, 20021);
    sub_0200CE3C(v0, v1, 19, PokeIcon32KAnimationFileIndex(), 0, 20021);
}

static void ov16_0226A718(UnkStruct_ov16_02268A14 *param0)
{
    SpriteGfxHandler *v0;

    v0 = ov16_0223E018(param0->unk_00);

    SpriteGfxHandler_UnloadCharObjById(v0, 20036);
    SpriteGfxHandler_UnloadCharObjById(v0, 20037);
    SpriteGfxHandler_UnloadCharObjById(v0, 20038);
    SpriteGfxHandler_UnloadCellObjById(v0, 20021);
    SpriteGfxHandler_UnloadAnimObjById(v0, 20021);
    SpriteGfxHandler_UnloadPlttObjById(v0, 20022);
}

static void ov16_0226A768(UnkStruct_ov16_02268A14 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_60C[v0] != NULL) {
            sub_0200D0F4(param0->unk_60C[v0]);
            param0->unk_60C[v0] = NULL;
        }

        if (param0->unk_61C[v0] != NULL) {
            SysTask_Done(param0->unk_61C[v0]);
            param0->unk_61C[v0] = NULL;
        }
    }
}

static CellActorData *ov16_0226A7A4(UnkStruct_ov16_02268A14 *param0, Pokemon *param1, int param2, int param3, int param4, int param5)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    u32 v2;
    SpriteTemplate v3;
    CellActorData *v4;
    int v5;

    if (param2 >= 2) {
        v5 = param2 - 2;
    } else {
        v5 = param2;
    }

    GF_ASSERT(param0->unk_60C[v5] == NULL);
    GF_ASSERT(param0->unk_61C[v5] == NULL);

    switch (param2) {
    case 0:
    case 2:
    case 4:
        v2 = 20036;
        break;
    case 3:
        v2 = 20037;
        break;
    case 5:
        v2 = 20038;
        break;
    default:
        GF_ASSERT(0);
        return NULL;
    }

    v0 = ov16_0223E010(param0->unk_00);
    v1 = ov16_0223E018(param0->unk_00);

    sub_0200CBDC(v0, v1, 19, Pokemon_IconSpriteIndex(param1), 0, NNS_G2D_VRAM_TYPE_2DSUB, v2);

    v3 = Unk_ov16_022704B0;
    v3.resources[0] = v2;
    v3.x = Unk_ov16_02270304[v5][0];
    v3.y = Unk_ov16_02270304[v5][1];
    v4 = SpriteActor_LoadResources(v0, v1, &v3);

    sub_0200D500(v4, v3.x, v3.y, ((192 + 80) << FX32_SHIFT));
    CellActor_SetExplicitPaletteOffsetAutoAdjust(v4->unk_00, Pokemon_IconPaletteIndex(param1));

    {
        int v6 = 0;

        if ((param3 == 0) || (param5 == 2)) {
            v6 = 0;
        } else if (param5 == 3) {
            v6 = 5;
        } else {
            switch (HealthBar_Color(param3, param4, (8 * 6))) {
            case 4:
                v6 = 1;
                break;
            case 3:
                v6 = 2;
                break;
            case 2:
                v6 = 3;
                break;
            case 1:
                v6 = 4;
                break;
            }

            sub_0200D364(v4, v6);
        }
    }

    sub_0200D330(v4);

    param0->unk_60C[v5] = v4;
    param0->unk_61C[v5] = SysTask_Start(ov16_0226A928, v4, 1300);

    return v4;
}

static void ov16_0226A928(SysTask *param0, void *param1)
{
    CellActorData *v0 = param1;
    sub_0200D330(v0);
}

static int ov16_0226A934(u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
    default:
        v0 = 0;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 2;
        break;
    }

    return v0;
}

static void ov16_0226A95C(const Strbuf *param0, int param1, int *param2, int *param3)
{
    int v0, v1;

    v0 = Font_CalcStrbufWidth(param1, param0, 0);
    v1 = v0 / 8;

    if (FX_ModS32(v0, 8) != 0) {
        v1++;
    }

    *param2 = v0;
    *param3 = v1;
}

static void ov16_0226A98C(UnkStruct_ov16_02268A14 *param0, UnkStruct_ov16_0226A98C *param1, const Strbuf *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov16_0226AEA0 *param10)
{
    UnkStruct_020127E8 v0;
    Window v1;
    SpriteManagerAllocation v2;
    int v3;
    FontOAM *v4;
    BGL *v5;
    SpriteGfxHandler *v6;
    int v7, v8;

    GF_ASSERT(param1->unk_00 == NULL);

    v6 = ov16_0223E018(param0->unk_00);
    v5 = BattleSystem_BGL(param0->unk_00);

    if (param10 == NULL) {
        ov16_0226A95C(param2, param3, &v7, &v8);
    } else {
        v7 = param10->unk_12;
        v8 = param10->unk_10;
    }

    if (param10 == NULL) {
        Window_Init(&v1);
        BGL_AddFramelessWindow(v5, &v1, v8, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param3, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
    } else {
        v1 = param10->unk_00;
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DSUB, 5);
    sub_0201ED94(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 += (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT) - 8;

    v0.unk_00 = param0->unk_4C8;
    v0.unk_04 = &v1;
    v0.unk_08 = sub_0200D9B0(v6);
    v0.unk_0C = sub_0200D04C(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.unk_04;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 100;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.unk_2C = 5;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    sub_020128C4(v4, param7, param8);

    if (param10 == NULL) {
        BGL_DeleteWindow(&v1);
    }

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov16_0226AAC0(UnkStruct_ov16_02268A14 *param0)
{
    int v0;

    for (v0 = 0; v0 < 13; v0++) {
        if (param0->unk_4CC[v0].unk_00 != NULL) {
            sub_02012870(param0->unk_4CC[v0].unk_00);
            sub_0201EE28(&param0->unk_4CC[v0].unk_04);
            param0->unk_4CC[v0].unk_00 = NULL;
        }
    }
}

static void ov16_0226AAF8(UnkStruct_ov16_02268A14 *param0)
{
    u8 v0[4], v1[4];
    int v2, v3;
    u16 *v4, *v5;
    BGL *v6;

    v6 = BattleSystem_BGL(param0->unk_00);
    v4 = sub_02019FE4(v6, 5);

    ov16_0226B20C(param0, v0, 0);

    if (v0[0] == 1) {
        ov16_0226B264(param0, 1, v1, 0);

        if (v1[3 - 1] == 1) {
            for (v3 = 12; v3 <= 16; v3++) {
                v5 = &v4[v3 * 32];

                for (v2 = 0xf; v2 <= 0x10; v2++) {
                    v5[v2] = 0x2a4;
                }
            }
        }

        if (v1[4 - 1] == 1) {
            for (v3 = 10; v3 <= 10; v3++) {
                v5 = &v4[v3 * 32];

                for (v2 = 2; v2 <= 12; v2++) {
                    v5[v2] = 0x2a4;
                }
            }
        }
    }

    if (v0[1] == 1) {
        ov16_0226B264(param0, 2, v1, 0);

        if (v1[3 - 1] == 1) {
            for (v3 = 10; v3 <= 10; v3++) {
                v5 = &v4[v3 * 32];

                for (v2 = 0x13; v2 <= 0x1d; v2++) {
                    v5[v2] = 0x2a4;
                }
            }
        }

        if (v1[4 - 1] == 1) {
            for (v3 = 3; v3 <= 7; v3++) {
                v5 = &v4[v3 * 32];

                for (v2 = 0xf; v2 <= 0x10; v2++) {
                    v5[v2] = 0x2a4;
                }
            }
        }
    }
}

static UnkStruct_ov16_0226ABD4 *ov16_0226ABD4(UnkStruct_ov16_02268A14 *param0, int param1)
{
    if (param1 >= 2) {
        param1 -= 2;
    }

    return &param0->unk_68[param1];
}

static void ov16_0226ABE8(UnkStruct_ov16_02268A14 *param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 4; v1++) {
        for (v0 = 0; v0 < 4; v0++) {
            Heap_FreeToHeap(param0->unk_68[v1].unk_18[v0]);

            if (param0->unk_68[v1].unk_28[v0].unk_00.unk_0C != NULL) {
                BGL_DeleteWindow(&param0->unk_68[v1].unk_28[v0].unk_00);
            }

            if (param0->unk_68[v1].unk_78[v0].unk_00.unk_0C != NULL) {
                BGL_DeleteWindow(&param0->unk_68[v1].unk_78[v0].unk_00);
            }

            if (param0->unk_68[v1].unk_C8[v0].unk_00.unk_0C != NULL) {
                BGL_DeleteWindow(&param0->unk_68[v1].unk_C8[v0].unk_00);
            }
        }
    }
}

void ov16_0226AC98(UnkStruct_ov16_02268A14 *param0, int param1, const UnkStruct_ov16_0226AC98 *param2)
{
    UnkStruct_ov16_0226ABD4 *v0;
    void *v1;
    NNSG2dCharacterData *v2;
    int v3, v4, v5;
    Strbuf *v6;
    Strbuf *v7;
    Strbuf *v8;
    Strbuf *v9;
    StringTemplate *v10;
    TextColor v11;
    MessageLoader *v12;

    v12 = BattleSystem_MessageLoader(param0->unk_00);
    v0 = ov16_0226ABD4(param0, param1);
    v3 = sub_0208C098(6);
    v9 = MessageLoader_GetNewStrbuf(v12, 938);
    v10 = BattleSystem_StringTemplate(param0->unk_00);
    v7 = Strbuf_Init(((2 + 2 + 1 + 2) * 2 + 2), 5);
    v8 = MessageLoader_GetNewStrbuf(v12, 937);

    for (v4 = 0; v4 < 4; v4++) {
        if ((param2->unk_00[v4] != v0->unk_00.unk_00[v4]) && (param2->unk_00[v4] != 0)) {
            v5 = MoveTable_LoadParam(param2->unk_00[v4], MOVEATTRIBUTE_TYPE);
            v1 = sub_02006F50(sub_0207C944(), sub_0207C908(v5), 1, &v2, 5);
            MI_CpuCopy32(v2->pRawData, v0->unk_18[v4], v3);
            Heap_FreeToHeap(v1);
        }

        if ((v0->unk_28[v4].unk_00.unk_0C == NULL) || ((param2->unk_00[v4] != v0->unk_00.unk_00[v4]) && (param2->unk_00[v4] != 0))) {
            v6 = MessageUtil_MoveName(param2->unk_00[v4], 5);
            ov16_0226AEA0(param0, v6, FONT_SUBSCREEN, &v0->unk_28[v4], TEXT_COLOR(7, 8, 9));
            Strbuf_Free(v6);
        }

        if ((v0->unk_78[v4].unk_00.unk_0C == NULL) || (v0->unk_C8[v4].unk_00.unk_0C == NULL) || (param2->unk_00[v4] != 0) || (param2->unk_00[v4] != v0->unk_00.unk_00[v4]) || (param2->unk_08[v4] != v0->unk_00.unk_08[v4]) || (param2->unk_10[v4] != v0->unk_00.unk_10[v4])) {
            StringTemplate_SetNumber(v10, 0, param2->unk_08[v4], 2, 1, 0);
            StringTemplate_SetNumber(v10, 1, param2->unk_10[v4], 2, 1, 0);
            StringTemplate_Format(v10, v7, v8);

            v11 = ov16_0226B924(param2->unk_08[v4], param2->unk_10[v4]);

            if ((v0->unk_78[v4].unk_00.unk_0C == NULL) || (param2->unk_00[v4] != v0->unk_00.unk_00[v4]) || (param2->unk_08[v4] != v0->unk_00.unk_08[v4])) {
                ov16_0226AEA0(param0, v7, FONT_SYSTEM, &v0->unk_78[v4], v11);
            }

            if ((v0->unk_C8[v4].unk_00.unk_0C == NULL) || (param2->unk_00[v4] != v0->unk_00.unk_00[v4]) || (param2->unk_08[v4] != v0->unk_00.unk_08[v4])) {
                ov16_0226AEA0(param0, v9, FONT_SYSTEM, &v0->unk_C8[v4], v11);
            }
        }
    }

    Strbuf_Free(v9);
    Strbuf_Free(v8);
    Strbuf_Free(v7);

    v0->unk_00 = *param2;
}

static void ov16_0226AEA0(UnkStruct_ov16_02268A14 *param0, const Strbuf *param1, enum Font param2, UnkStruct_ov16_0226AEA0 *param3, TextColor param4)
{
    int v0, v1;

    ov16_0226A95C(param1, param2, &v0, &v1);

    param3->unk_12 = v0;
    param3->unk_10 = v1;

    if (param3->unk_00.unk_0C != NULL) {
        BGL_DeleteWindow(&param3->unk_00);
    }

    Window_Init(&param3->unk_00);
    BGL_AddFramelessWindow(BattleSystem_BGL(param0->unk_00), &param3->unk_00, v1, 16 / 8, 0, 0);
    Text_AddPrinterWithParamsColorAndSpacing(&param3->unk_00, param2, param1, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
}

static void ov16_0226AF0C(UnkStruct_ov16_02268A14 *param0)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;
    SpriteTemplate v3;
    UnkStruct_ov16_02260C00 *v4;
    int v5;
    int v6;
    UnkStruct_ov16_0226ABD4 *v7;

    v4 = &param0->unk_1A.val2;
    v1 = ov16_0223E010(param0->unk_00);
    v2 = ov16_0223E018(param0->unk_00);
    v7 = ov16_0226ABD4(param0, param0->unk_66A);
    v3 = Unk_ov16_0227047C;

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->unk_5EC[v0] == NULL);

        if (v4->unk_00[v0] != 0) {
            v5 = MoveTable_LoadParam(v4->unk_00[v0], MOVEATTRIBUTE_TYPE);
            v3.resources[0] = 20025 + v0;
            v3.x = Unk_ov16_022702B4[v0][0];
            v3.y = Unk_ov16_022702B4[v0][1];

            param0->unk_5EC[v0] = sub_0207CA58(v1, v2, v5, &v3);

            sub_0200D500(param0->unk_5EC[v0], v3.x, v3.y, ((192 + 80) << FX32_SHIFT));

            {
                void *v8;
                NNSG2dImageProxy *v9;

                v8 = G2S_GetOBJCharPtr();
                v9 = SpriteActor_ImageProxy(param0->unk_5EC[v0]->unk_00);

                MI_CpuCopy16(v7->unk_18[v0], (void *)((u32)v8 + v9->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DSUB]), sub_0208C098(6));
            }
        }
    }
}

static void ov16_0226AFF4(UnkStruct_ov16_02268A14 *param0)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;

    v1 = ov16_0223E010(param0->unk_00);
    v2 = ov16_0223E018(param0->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_5EC[v0] != NULL) {
            sub_0207CA88(param0->unk_5EC[v0]);
            param0->unk_5EC[v0] = NULL;
        }
    }
}

static void ov16_0226B028(UnkStruct_ov16_02268A14 *param0)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;

    v1 = ov16_0223E010(param0->unk_00);
    v2 = ov16_0223E018(param0->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_5FC[v0] != NULL) {
            sub_0207CB00(param0->unk_5FC[v0]);
            sub_0207CAF8(v2, 20029 + v0);
            param0->unk_5FC[v0] = NULL;
        }
    }
}

static void ov16_0226B06C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    ov11_0221F81C(BattleSystem_PaletteSys(param0->unk_00), param1, 5, 1, 8 + param2);
}

static void ov16_0226B088(UnkStruct_ov16_02268A14 *param0, int param1)
{
    PaletteData *v0;
    int v1;

    v0 = BattleSystem_PaletteSys(param0->unk_00);

    for (v1 = param1; v1 < 4; v1++) {
        ov16_0226B31C(param0, &Unk_ov16_0227022C[v1], &Unk_ov16_02270274[v1], 3, 0);
        sub_02002FBC(v0, &param0->unk_58[0xe * 16], 1, (8 + v1) * 16, 0x20);
    }
}

static void ov16_0226B0DC(UnkStruct_ov16_02268A14 *param0, int param1)
{
    PaletteData *v0;
    int v1;
    const u8 v2[] = { 6, 0xc, 0xd, 5 };
    BGL *v3;

    v3 = BattleSystem_BGL(param0->unk_00);
    v0 = BattleSystem_PaletteSys(param0->unk_00);

    ov16_0226B31C(param0, &Unk_ov16_022701FC[param1], &Unk_ov16_022702C4[param1], 4, 0);

    sub_02002FBC(v0, &param0->unk_58[0xe * 16], 1, v2[param1] * 16, 0x20);
    sub_0201C3C0(v3, 4);
    sub_02019CB8(v3, 5, (0x6000 / 0x20 - 1), Unk_ov16_022702C4[param1].unk_02, Unk_ov16_022702C4[param1].unk_00, Unk_ov16_022702C4[param1].unk_03 - Unk_ov16_022702C4[param1].unk_02 + 1, Unk_ov16_022702C4[param1].unk_01 - Unk_ov16_022702C4[param1].unk_00 + 1, 17);
    sub_0201C3C0(v3, 5);
}

static void ov16_0226B198(void)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (4 + i != 6) {
            sub_02019120(4 + i, 0);
        } else {
            sub_02019120(4 + i, 1);
        }
    }
}

static void ov16_0226B1C4(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    if (param1 == 1) {
        ov16_0226B1E8(param0);
    }

    if (param2 == 1) {
        SysTask_ExecuteAfterVBlank(ov16_0226BCBC, param0, 10);
    }
}

static void ov16_0226B1E8(UnkStruct_ov16_02268A14 *param0)
{
    ov16_0226AFF4(param0);
    ov16_0226B028(param0);
    ov16_0226AAC0(param0);
    ov16_0226A718(param0);
    ov16_0226A768(param0);
}

static void ov16_0226B20C(UnkStruct_ov16_02268A14 *param0, u8 *param1, int param2)
{
    UnkStruct_ov16_02260F14 *v0;
    int v1;
    u8 v2[6];
    int v3;

    v0 = &param0->unk_1A.val3;
    ov16_0223F858(param0->unk_00, v2);

    for (v1 = 0; v1 < 4; v1++) {
        v3 = v2[2 + v1];

        if ((param2 == 1) && (v0->unk_00[v3].unk_01_2 == 0)) {
            param1[v1] = 0;
        } else {
            param1[v1] = Unk_ov16_022705B0[param0->unk_66C][v1];
        }
    }
}

static void ov16_0226B264(UnkStruct_ov16_02268A14 *param0, int param1, u8 *param2, int param3)
{
    UnkStruct_ov16_02260F14 *v0;
    int v1;

    v0 = &param0->unk_1A.val3;

    switch (param0->unk_66C) {
    case 0:
    case 8:
    case 9:
    case 10:
    case 11:
        for (v1 = 0; v1 < 4; v1++) {
            if (v1 == param1 - 1) {
                param2[v1] = 1;
            } else {
                param2[v1] = 0;
            }
        }
        break;
    default:
        ov16_0226B20C(param0, param2, param3);
        break;
    }
}

static void ov16_0226B2BC(SysTaskFunc param0, UnkStruct_ov16_02268A14 *param1)
{
    GF_ASSERT(param1->unk_0C == NULL);

    MI_CpuClear8(&param1->unk_67C, sizeof(UnkStruct_ov16_02268A14_sub3));
    param1->unk_0C = SysTask_Start(param0, param1, 1300);
}

static void ov16_0226B2F0(UnkStruct_ov16_02268A14 *param0)
{
    if (param0->unk_0C != NULL) {
        SysTask_Done(param0->unk_0C);
        param0->unk_0C = NULL;
        MI_CpuClear8(&param0->unk_67C, sizeof(UnkStruct_ov16_02268A14_sub3));
    }
}

static void inline_ov16_0226B314(SysTaskFunc param0, UnkStruct_ov16_02268A14 *param1)
{
    GF_ASSERT(param1->unk_10 == NULL);

    MI_CpuClear8(&param1->unk_6A0, sizeof(UnkStruct_ov16_02268A14_sub4));
    param1->unk_10 = SysTask_Start(param0, param1, 1320);
}

static void inline_ov16_0226B318_1_sub(UnkStruct_ov16_02268A14 *param0)
{
    if (param0->unk_10 != NULL) {
        SysTask_Done(param0->unk_10);
        param0->unk_10 = NULL;
        MI_CpuClear8(&param0->unk_6A0, sizeof(UnkStruct_ov16_02268A14_sub4));
    }
}

static void ov16_0226B314(UnkStruct_ov16_02268A14 *param0, int param1)
{
    return;

    inline_ov16_0226B314(inline_ov16_0226B314_1, param0);
    param0->unk_6A0.unk_00 = param1;
}

static void ov16_0226B318(UnkStruct_ov16_02268A14 *param0, int param1)
{
    return;

    if (param1 == 0xff) {
        return;
    }

    inline_ov16_0226B314(inline_ov16_0226B318_1, param0);
    param0->unk_6A0.unk_09 = param1;
}

static void inline_ov16_0226B318_1(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    UnkStruct_ov16_02268A14_sub4 *v1;
    BGL *v2;
    PaletteData *v3;
    int v4, v5;

    v1 = &v0->unk_6A0;
    v3 = BattleSystem_PaletteSys(v0->unk_00);
    v5 = 0;

    switch (v1->unk_08) {
    case 0:
        v1->unk_04 = (10 << 8);
        v1->unk_06 = -((10 << 8) / 2);
        v1->unk_04 -= v1->unk_06;
        v1->unk_08++;
    case 1:
        v1->unk_04 += v1->unk_06;

        if ((v1->unk_06 >= 0) && (v1->unk_04 >= (16 << 8))) {
            v1->unk_04 = 16 << 8;
            v5 = 1;
        } else if ((v1->unk_06 < 0) && (v1->unk_04 <= 0)) {
            v1->unk_04 = 0;
            v5 = 1;
        }

        sub_020039B0(v3, 1, v1->unk_09 * 16, 16, (v1->unk_04 >> 8) / 2, 0x7fff);
        sub_020039B0(v3, 1, v1->unk_09 * 16 + 1, 1, v1->unk_04 >> 8, 0x7b1a);
        sub_020039B0(v3, 1, v1->unk_09 * 16 + 0xa, 1, v1->unk_04 >> 8, 0x4634);

        if (v5 == 1) {
            inline_ov16_0226B318_1_sub(v0);
            return;
        }

        break;
    }
}

static void inline_ov16_0226B314_1(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    UnkStruct_ov16_02268A14_sub4 *v1;
    BGL *v2;
    PaletteData *v3;
    int v4, v5;
    u8 v6[4];

    v1 = &v0->unk_6A0;
    v3 = BattleSystem_PaletteSys(v0->unk_00);
    v5 = 0;

    switch (v1->unk_08) {
    case 0:
        v1->unk_04 = (10 << 8);
        v1->unk_06 = -((10 << 8) / 2);
        v1->unk_04 -= v1->unk_06;
        v1->unk_08++;
    case 1:
        v1->unk_04 += v1->unk_06;

        if ((v1->unk_06 >= 0) && (v1->unk_04 >= (16 << 8))) {
            v1->unk_04 = 16 << 8;
            v5 = 1;
        } else if ((v1->unk_06 < 0) && (v1->unk_04 <= 0)) {
            v1->unk_04 = 0;
            v5 = 1;
        }

        ov16_0226B264(v0, v1->unk_00, v6, 1);

        for (v4 = 0; v4 < 4; v4++) {
            if (v6[v4] == 1) {
                sub_020039B0(v3, 1, Unk_ov16_02270A0C[v4] * 16, 16, (v1->unk_04 >> 8) / 2, 0x7fff);
                sub_020039B0(v3, 1, Unk_ov16_02270A0C[v4] * 16 + 1, 1, v1->unk_04 >> 8, 0x7b1a);
                sub_020039B0(v3, 1, Unk_ov16_02270A0C[v4] * 16 + 0xa, 1, v1->unk_04 >> 8, 0x4634);
            }
        }

        if (v5 == 1) {
            inline_ov16_0226B318_1_sub(v0);
            return;
        }
        break;
    }
}

static void ov16_0226B31C(UnkStruct_ov16_02268A14 *param0, const s16 *param1, const UnkStruct_ov16_022702F4 *param2, int param3, int param4)
{
    int v0, v1;
    BGL *v2;
    u16 *v3, *v4;
    u16 *v5, *v6;
    int v7;

    v2 = BattleSystem_BGL(param0->unk_00);
    v3 = sub_02019FE4(v2, 4);
    v5 = param0->unk_3C[param3];
    v7 = param1[param4];

    for (v1 = param2->unk_00; v1 <= param2->unk_01; v1++) {
        v4 = &v3[v1 * 32];
        v6 = &v5[v1 * 32];

        for (v0 = param2->unk_02; v0 <= param2->unk_03; v0++) {
            v4[v0] = v6[v0] + v7;
        }
    }

    sub_0201C3C0(v2, 4);
}

static void ov16_0226B390(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    BGL *v1;
    int v2, v3;

    v1 = BattleSystem_BGL(v0->unk_00);

    switch (v0->unk_67C.unk_00) {
    case 0:
        ov16_0226B31C(v0, v0->unk_67C.unk_04_val3.unk_00, v0->unk_67C.unk_04_val3.unk_04, v0->unk_67C.unk_04_val3.unk_0C, 2);
        sub_020129A4(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, v2, v3 + -2);

        if ((v0->unk_67C.unk_04_val3.unk_0E != 0xff) && (v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E] != NULL)) {
            sub_0200D5DC(v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E], 0, -2);
        }

        v0->unk_67C.unk_00++;
        break;
    case 1:
        v0->unk_67C.unk_02++;

        if (v0->unk_67C.unk_02 <= 0) {
            break;
        }

        v0->unk_67C.unk_02 = 0;
        v0->unk_67C.unk_00++;
    case 2:
        ov16_0226B31C(v0, v0->unk_67C.unk_04_val3.unk_00, v0->unk_67C.unk_04_val3.unk_04, v0->unk_67C.unk_04_val3.unk_0C, 1);
        sub_020129A4(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, v2, v3 + 1);

        if ((v0->unk_67C.unk_04_val3.unk_0E != 0xff) && (v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E] != NULL)) {
            sub_0200D5DC(v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E], 0, 1);
        }

        v0->unk_67C.unk_00++;
        break;
    default:
        v0->unk_67C.unk_02++;

        if (v0->unk_67C.unk_02 > 0) {
            ov16_0226B1C4(v0, v0->unk_67C.unk_04_val3.unk_10, 0);
            ov16_0226B2F0(v0);
            return;
        }
        break;
    }
}

static void ov16_0226B4E0(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    BGL *v1;
    int v2, v3;
    int v4, v5, v6;
    int v7, v8, v9;
    UnkStruct_ov16_02260C00 *v10;

    v1 = BattleSystem_BGL(v0->unk_00);
    v10 = &v0->unk_1A.val2;

    switch (v0->unk_67C.unk_04_val3.unk_08) {
    case 1:
        v4 = 0;
        v5 = 9;
        v6 = 5;
        v7 = 0;
        v8 = 0;
        v9 = v10->unk_00[0];
        break;
    case 2:
        v4 = 1;
        v5 = 10;
        v6 = 6;
        v7 = 1;
        v8 = 1;
        v9 = v10->unk_00[1];
        break;
    case 3:
        v4 = 2;
        v5 = 11;
        v6 = 7;
        v7 = 2;
        v8 = 2;
        v9 = v10->unk_00[2];
        break;
    case 4:
        v4 = 3;
        v5 = 12;
        v6 = 8;
        v7 = 3;
        v8 = 3;
        v9 = v10->unk_00[3];
        break;
    case 0xff:
    default:
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        break;
    }

    switch (v0->unk_67C.unk_00) {
    case 0:
        ov16_0226B31C(v0, v0->unk_67C.unk_04_val3.unk_00, v0->unk_67C.unk_04_val3.unk_04, v0->unk_67C.unk_04_val3.unk_0C, 2);

        if (v0->unk_67C.unk_04_val3.unk_08 != 0xff) {
            sub_020129A4(v0->unk_4CC[v4].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[v4].unk_00, v2, v3 + -2);
            sub_020129A4(v0->unk_4CC[v5].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[v5].unk_00, v2, v3 + -2);
            sub_020129A4(v0->unk_4CC[v6].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[v6].unk_00, v2, v3 + -2);

            if (v9 != 0) {
                sub_0200D5AC(v0->unk_5EC[v7]->unk_00, 0, -2);

                if (v0->unk_5FC[v7] != NULL) {
                    sub_0200D5AC(v0->unk_5FC[v7]->unk_00, 0, -2);
                }
            }
        } else {
            sub_020129A4(v0->unk_4CC[4].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[4].unk_00, v2, v3 + -2);
        }

        v0->unk_67C.unk_00++;
        break;
    case 1:
        v0->unk_67C.unk_02++;

        if (v0->unk_67C.unk_02 <= 0) {
            break;
        }

        v0->unk_67C.unk_02 = 0;
        v0->unk_67C.unk_00++;
    case 2:
        ov16_0226B31C(v0, v0->unk_67C.unk_04_val3.unk_00, v0->unk_67C.unk_04_val3.unk_04, v0->unk_67C.unk_04_val3.unk_0C, 1);

        if (v0->unk_67C.unk_04_val3.unk_08 != 0xff) {
            sub_020129A4(v0->unk_4CC[v4].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[v4].unk_00, v2, v3 + 1);
            sub_020129A4(v0->unk_4CC[v5].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[v5].unk_00, v2, v3 + 1);
            sub_020129A4(v0->unk_4CC[v6].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[v6].unk_00, v2, v3 + 1);

            if (v9 != 0) {
                sub_0200D5AC(v0->unk_5EC[v7]->unk_00, 0, 1);

                if (v0->unk_5FC[v7] != NULL) {
                    sub_0200D5AC(v0->unk_5FC[v7]->unk_00, 0, 1);
                }
            }
        } else {
            sub_020129A4(v0->unk_4CC[4].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_4CC[4].unk_00, v2, v3 + 1);
        }

        v0->unk_67C.unk_00++;
        break;
    default:
        v0->unk_67C.unk_02++;

        if (v0->unk_67C.unk_02 > 0) {
            ov16_0226B1C4(v0, 1, 1);
            ov16_0226B2F0(v0);
            return;
        }
        break;
    }
}

static void ov16_0226B780(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    BGL *v1;
    int v2, v3;
    u8 v4[4];
    int v5;

    v1 = BattleSystem_BGL(v0->unk_00);

    switch (v0->unk_67C.unk_00) {
    case 0:
        ov16_0226B264(v0, v0->unk_67C.unk_04_val4.unk_1C, v4, 1);

        for (v5 = 0; v5 < 4; v5++) {
            if (v4[v5] == 1) {
                ov16_0226B31C(v0, Unk_ov16_022703D4[v5], &Unk_ov16_0227033C[v5], 4, 2);

                if (v0->unk_4CC[0 + v5].unk_00 != NULL) {
                    sub_020129A4(v0->unk_4CC[0 + v5].unk_00, &v2, &v3);
                    sub_020128C4(v0->unk_4CC[0 + v5].unk_00, v2, v3 + -2);
                }

                if (v0->unk_60C[v5] != NULL) {
                    sub_0200D5DC(v0->unk_60C[v5], 0, -2);
                }
            }
        }

        v0->unk_67C.unk_00++;
        break;
    case 1:
        v0->unk_67C.unk_02++;

        if (v0->unk_67C.unk_02 <= 0) {
            break;
        }

        v0->unk_67C.unk_02 = 0;
        v0->unk_67C.unk_00++;
    case 2:
        ov16_0226B264(v0, v0->unk_67C.unk_04_val4.unk_1C, v4, 1);

        for (v5 = 0; v5 < 4; v5++) {
            if (v4[v5] == 1) {
                ov16_0226B31C(v0, Unk_ov16_022703D4[v5], &Unk_ov16_0227033C[v5], 4, 1);

                if (v0->unk_4CC[0 + v5].unk_00 != NULL) {
                    sub_020129A4(v0->unk_4CC[0 + v5].unk_00, &v2, &v3);
                    sub_020128C4(v0->unk_4CC[0 + v5].unk_00, v2, v3 + 1);
                }

                if (v0->unk_60C[v5] != NULL) {
                    sub_0200D5DC(v0->unk_60C[v5], 0, 1);
                }
            }
        }

        v0->unk_67C.unk_00++;
        break;
    case 3:
        v0->unk_67C.unk_02++;

        if (v0->unk_67C.unk_02 > 0) {
            v0->unk_67C.unk_02 = 0;
            v0->unk_67C.unk_00++;
        }
        break;
    default:
        ov16_0226B1C4(v0, 1, 1);
        ov16_0226B2F0(v0);
        return;
    }
}

static TextColor ov16_0226B924(int param0, int param1)
{
    if (param0 == 0) {
        return TEXT_COLOR(7, 8, 0);
    }

    if (param1 == param0) {
        return TEXT_COLOR(1, 2, 0);
    }

    if (param1 <= 2) {
        if (param0 == 1) {
            return TEXT_COLOR(5, 6, 0);
        }
    } else if (param1 <= 7) {
        switch (param0) {
        case 1:
            return TEXT_COLOR(5, 6, 0);
        case 2:
            return TEXT_COLOR(3, 4, 0);
        }
    } else {
        if (param0 <= param1 / 4) {
            return TEXT_COLOR(5, 6, 0);
        }

        if (param0 <= param1 / 2) {
            return TEXT_COLOR(3, 4, 0);
        }
    }

    return TEXT_COLOR(1, 2, 0);
}

static void ov16_0226B988(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0226B988 *v0 = param1;
    BGL *v1;

    v1 = BattleSystem_BGL(v0->unk_00->unk_00);

    switch (v0->unk_13) {
    case 0:
        v0->unk_08 += ((255 * 100) / 4);
        v0->unk_0A -= ((40 * 100) / 4);
        v0->unk_0C = ((255 * 100) - v0->unk_08) / 100;
        v0->unk_0E = -v0->unk_0A / 100;

        if ((v0->unk_08 >= 0) || (v0->unk_0A <= 0)) {
            v0->unk_08 = 0;
            v0->unk_0A = (18 * 8);
            v0->unk_0C = 0 / 100;
            v0->unk_0E = 0 / 100;
            v0->unk_13++;
        }
        break;
    case 1:
        v0->unk_00->unk_66E = 0;
        SysTask_Done(v0->unk_04);
        DisableHBlank();
        GXS_SetVisibleWnd(GX_WNDMASK_NONE);
        ov16_0226BCCC(v0->unk_00, 1);
        v0->unk_13++;
        break;
    default:
        if (ov16_0226BCD0(v0->unk_00) == 0) {
            break;
        }

        sub_02019184(v1, 4, 0, 0);
        sub_02019184(v1, 4, 3, 0);
        sub_02019184(v1, 5, 0, 0);
        sub_02019184(v1, 5, 3, 0);
        BattleSystem_SetCommandSelectionFlags(v0->unk_00->unk_00, 1);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);

        return;
    }
}

static void ov16_0226BA88(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0226B988 *v0 = param1;
    BGL *v1;
    s32 v2, v3, v4;

    v1 = BattleSystem_BGL(v0->unk_00->unk_00);

    if (v0->unk_12 == 4) {
        v4 = 255 - v0->unk_0C;

        if (v4 > 0) {
            v4 = 0;
        }

        sub_02019184(v1, 4, 0, v4);
        sub_02019184(v1, 5, 0, 255 - v0->unk_0C);
        v2 = -v0->unk_08 / 100;
    } else {
        v4 = v0->unk_0C;

        if (v4 < 0) {
            v4 = 0;
        }

        sub_02019184(v1, 4, 0, v4);
        sub_02019184(v1, 5, 0, v0->unk_0C);

        v2 = 255 + v0->unk_08 / 100;
    }

    sub_02019184(v1, 4, 3, 0);
    sub_02019184(v1, 5, 3, 0);

    v3 = (18 * 8) + (v0->unk_0A) / 100;

    if (v2 < 0) {
        v2 = 0;
    } else if (v2 > 255) {
        v2 = 255;
    }

    if (v3 > 192) {
        v3 = 192;
    } else if (v3 < 0) {
        v3 = 0;
    }

    if (v0->unk_12 == 4) {
        G2S_SetWnd0Position(0, 0, v2, (18 * 8));
    } else {
        if (v2 == 0) {
            v2 = 1;
        }

        G2S_SetWnd0Position(v2, 0, 0, (18 * 8));
    }

    G2S_SetWnd1Position(0, (18 * 8), 255, v3);
    v0->unk_10 = v0->unk_0E;
}

static void ov16_0226BB94(void *param0)
{
    UnkStruct_ov16_0226B988 *v0 = param0;
    s32 v1, v2;

    v1 = GX_GetVCount();

    if (v1 == (18 * 8)) {
        BGL *v3 = BattleSystem_BGL(v0->unk_00->unk_00);

        sub_02019184(v3, 4, 0, 0);
        sub_02019184(v3, 4, 3, v0->unk_10);
        sub_02019184(v3, 5, 0, 0);
        sub_02019184(v3, 5, 3, v0->unk_10);
    } else if (v1 > 192) {
        BGL *v4 = BattleSystem_BGL(v0->unk_00->unk_00);

        if (v0->unk_12 == 4) {
            v2 = 255 - v0->unk_0C;

            if (v2 > 0) {
                v2 = 0;
            }

            sub_02019184(v4, 4, 0, 255 - v0->unk_0C);
            sub_02019184(v4, 5, 0, 255 - v0->unk_0C);
        } else {
            v2 = v0->unk_0C;

            if (v2 < 0) {
                v2 = 0;
            }

            sub_02019184(v4, 4, 0, v0->unk_0C);
            sub_02019184(v4, 5, 0, v0->unk_0C);
        }

        sub_02019184(v4, 4, 3, 0);
        sub_02019184(v4, 5, 3, 0);
    }
}

static void ov16_0226BC50(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    const UnkStruct_ov16_02270670 *v1;
    int v2;

    v1 = &Unk_ov16_02270670[v0->unk_66B];

    for (v2 = 0; v2 < 4; v2++) {
        if (v1->unk_04_val2[v2] == 0xffff) {
            sub_02019120(4 + v2, 0);
        } else {
            sub_02019120(4 + v2, 1);
        }
    }

    for (v2 = 0; v2 < 4; v2++) {
        BGL_SetPriority(4 + v2, v1->unk_0C_val2[v2]);
    }

    SysTask_Done(param0);
}

static void ov16_0226BCBC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;

    ov16_0226B198();
    SysTask_Done(param0);
}

void ov16_0226BCCC(UnkStruct_ov16_02268A14 *param0, int param1)
{
    return;
}

BOOL ov16_0226BCD0(UnkStruct_ov16_02268A14 *param0)
{
    if (param0->unk_664 == NULL) {
        return 1;
    }

    return 0;
}

static void ov16_0226BCE4(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    int v1;
    u16 v2;
    PaletteData *v3;
    s16 v4;

    v3 = BattleSystem_PaletteSys(v0->unk_00);

    if (sub_0200384C(v3) != 0) {
        return;
    }

    {
        sub_020039B0(v3, 1, 16 * 0 + 1, 1, v0->unk_676 >> 8, 0x7e37);

        if (v0->unk_674 == 0) {
            v0->unk_676 += 0x200;
        } else {
            v0->unk_676 -= 0x200;
        }

        if (v0->unk_676 >= (16 + 1) << 8) {
            v0->unk_676 = (16 - 1) << 8;
            v0->unk_674 = 1;
        } else if (v0->unk_676 <= 0) {
            v0->unk_676 = 1 << 8;
            v0->unk_674 = 0;
        }
    }
}

static void ov16_0226BD74(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    PaletteData *v1;
    u16 *v2;
    int v3;
    int v4, v5;

    v4 = RenderControlFlags_GetSpeedUpBattle();
    v5 = RenderControlFlags_GetWaitBattle();

    RenderControlFlags_ZeroSpeedUpBattle();
    RenderControlFlags_ZeroWaitBattle();

    v1 = BattleSystem_PaletteSys(v0->unk_00);

    if (sub_0200384C(v1) != 0) {
        return;
    }

    v2 = sub_0200316C(v1, 1);
    v3 = (16 - 8) * 2;

    if (gCoreSys.touchHeld && ((v4 == 1) || (v5 == 1))) {
        if (memcmp(&v2[8], &v0->unk_5C[8], v3) == 0) {
            if (BattleSystem_BattleType(v0->unk_00) & 0x80) {
                MI_CpuCopy16(&v0->unk_60[0], &v2[0], 0x20);
                MI_CpuCopy16(&v0->unk_60[16], &v2[7 * 16], 0x20);
            } else {
                MI_CpuCopy16(&v0->unk_60[8], &v2[8], v3);
            }
        }
    } else {
        if (memcmp(&v2[8], &v0->unk_60[8], v3) == 0) {
            if (BattleSystem_BattleType(v0->unk_00) & 0x80) {
                MI_CpuCopy16(&v0->unk_5C[0], &v2[0], 0x20);
                MI_CpuCopy16(&v0->unk_5C[16], &v2[7 * 16], 0x20);
            } else {
                MI_CpuCopy16(&v0->unk_5C[8], &v2[8], v3);
            }
        }
    }
}

static int ov16_0226BE48(UnkStruct_ov16_02268A14 *param0)
{
    UnkStruct_ov16_0226CB10 *v0;
    const UnkStruct_ov16_02270670 *v1;

    v0 = &param0->unk_6BC;
    v1 = &Unk_ov16_02270670[param0->unk_66B];

    if (v1->unk_20 == NULL) {
        return 0xffffffff;
    }

    if (v0->unk_00 == 0) {
        if ((param0->unk_6C0 == 1) || (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y | PAD_KEY_RIGHT | PAD_KEY_LEFT | PAD_KEY_UP | PAD_KEY_DOWN))) {
            if (param0->unk_6C0 == 0) {
                Sound_PlayEffect(1500);
            }

            v0->unk_00 = 1;
            param0->unk_6C0 = 0;
            v1->unk_20(param0, 1);
        }

        return 0xffffffff;
    }

    return v1->unk_20(param0, 0);
}

static int ov16_0226BEC0(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226CB10 *v0;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4, v5;
    UnkStruct_ov16_0226C378 *v6;

    v0 = &param0->unk_6BC;
    v2 = &Unk_ov16_02270670[param0->unk_66B];
    v5 = BattleSystem_BattlerOfType(param0->unk_00, param0->unk_66A);
    v6 = ov16_02263B0C(BattleSystem_BattlerData(param0->unk_00, v5));

    if (param1 == 1) {
        v0->unk_02 = v6->unk_00;
        v0->unk_01 = v6->unk_01;
        v4 = Unk_ov16_022701EC[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        return 0xffffffff;
    }

    switch (param0->unk_66B) {
    case 6:
    case 5:
        v1 = ov16_0226CB10(v0, 1, 1, Unk_ov16_022701EC[0]);
        break;
    default:
        v4 = Unk_ov16_022701EC[v0->unk_01][v0->unk_02];

        if ((v4 == 3) && (gCoreSys.pressedKeys & PAD_KEY_UP)) {
            (void)0;
        } else {
            v1 = ov16_0226CB10(v0, 3, 2, Unk_ov16_022701EC[0]);

            if ((v1 == 0) && (v4 == 0)) {
                if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
                    v0->unk_02 = 0;
                    v0->unk_01 = 1;
                    Sound_PlayEffect(1500);
                    v1 = PAD_KEY_LEFT;
                } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
                    v0->unk_02 = 2;
                    v0->unk_01 = 1;
                    Sound_PlayEffect(1500);
                    v1 = PAD_KEY_RIGHT;
                }
            }
        }
        break;
    }

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v4 = Unk_ov16_022701EC[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        break;
    case PAD_BUTTON_A:
        return Unk_ov16_022701EC[v0->unk_01][v0->unk_02];
    case PAD_BUTTON_B:
        if (param0->unk_66F == 1) {
            for (v3 = 0; v3 < v2->unk_14[v3].rect.top != 0xff; v3++) {
                if (4 == v2->unk_18[v3]) {
                    return v3;
                }
            }
        }
        break;
    }

    return 0xffffffff;
}

static void ov16_0226C0A0(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226C378 *v0;
    int v1, v2, v3;

    v1 = BattleSystem_BattlerOfType(param0->unk_00, param0->unk_66A);

    if ((param1 != 3) || (param0->unk_6C1 == 0)) {
        v0 = ov16_02263B0C(BattleSystem_BattlerData(param0->unk_00, v1));

        for (v3 = 0; v3 < 2; v3++) {
            for (v2 = 0; v2 < 3; v2++) {
                if (param1 == Unk_ov16_022701EC[v3][v2]) {
                    v0->unk_00 = v2;
                    v0->unk_01 = v3;

                    return;
                }
            }
        }
    }
}

static int ov16_0226C100(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226CB10 *v0;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;

    v0 = &param0->unk_6BC;
    v2 = &Unk_ov16_02270670[param0->unk_66B];

    if (param1 == 1) {
        v0->unk_02 = 0;
        v0->unk_01 = 0;
        v4 = Unk_ov16_022701CC[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        return 0xffffffff;
    }

    v1 = ov16_0226CB10(v0, 1, 2, Unk_ov16_022701CC[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v4 = Unk_ov16_022701CC[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        break;
    case PAD_BUTTON_A:
        return Unk_ov16_022701CC[v0->unk_01][v0->unk_02];
    case PAD_BUTTON_B:
        break;
    }

    return 0xffffffff;
}

static int ov16_0226C1F8(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226CB10 *v0;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;
    u8 v5[3][2];
    UnkStruct_ov16_02260C00 *v6;
    UnkStruct_ov16_0226C378 *v7;

    v7 = ov16_02263B0C(BattleSystem_BattlerData(param0->unk_00, BattleSystem_BattlerOfType(param0->unk_00, param0->unk_66A)));
    v0 = &param0->unk_6BC;
    v2 = &Unk_ov16_02270670[param0->unk_66B];
    v6 = &param0->unk_1A.val2;

    if (param1 == 1) {
        v0->unk_02 = v7->unk_02;
        v0->unk_01 = v7->unk_03;
        v3 = Unk_ov16_022701E4[v0->unk_01][v0->unk_02];

        if ((v3 != 0) && (v6->unk_00[v3 - 1] == 0)) {
            v7->unk_02 = 0;
            v7->unk_03 = 0;
            v0->unk_02 = 0;
            v0->unk_01 = 0;
            v3 = Unk_ov16_022701E4[v0->unk_01][v0->unk_02];
        }

        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        return 0xffffffff;
    }

    MI_CpuCopy8(Unk_ov16_022701E4, v5, 3 * 2);
    v1 = ov16_0226CB10(v0, 2, 3, v5[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v3 = Unk_ov16_022701E4[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        break;
    case PAD_BUTTON_A:
        return Unk_ov16_022701E4[v0->unk_01][v0->unk_02];
    case PAD_BUTTON_B:
        for (v4 = 0; v4 < v2->unk_14[v4].rect.top != 0xff; v4++) {
            if (0xff == v2->unk_18[v4]) {
                return v4;
            }
        }

        break;
    }

    return 0xffffffff;
}

static void ov16_0226C378(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226C378 *v0;
    int v1, v2, v3;

    if (param1 == 0) {
        return;
    }

    v1 = BattleSystem_BattlerOfType(param0->unk_00, param0->unk_66A);
    v0 = ov16_02263B0C(BattleSystem_BattlerData(param0->unk_00, v1));

    for (v3 = 0; v3 < 3; v3++) {
        for (v2 = 0; v2 < 2; v2++) {
            if (param1 == Unk_ov16_022701E4[v3][v2]) {
                v0->unk_02 = v2;
                v0->unk_03 = v3;
                return;
            }
        }
    }
}

static int ov16_0226C3C8(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226CB10 *v0;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;
    int v5 = 0;
    u8 v6[4], v7[4];
    u8 v8[3][2];
    int v9, v10, v11, v12;
    int v13, v14, v15, v16, v17, v18;
    int v19, v20, v21, v22;
    int v23, v24, v25, v26;
    int v27, v28;
    int v29;
    UnkStruct_ov16_0226C378 *v30;

    v30 = ov16_02263B0C(BattleSystem_BattlerData(param0->unk_00, BattleSystem_BattlerOfType(param0->unk_00, param0->unk_66A)));
    v0 = &param0->unk_6BC;
    v2 = &Unk_ov16_02270670[param0->unk_66B];

    MI_CpuCopy8(Unk_ov16_022701DC, v8, 3 * 2);

    ov16_0226B20C(param0, v6, 1);
    ov16_0226B20C(param0, v7, 0);

    for (v9 = 0; v9 < 2; v9++) {
        for (v10 = 0; v10 < 2; v10++) {
            if (v7[v8[v9][v10]] == 0) {
                v8[v9][v10] = 0xff;
            }
        }
    }

    switch (param0->unk_66C) {
    default:
    case 0:
    case 4:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
        v11 = 2;
        v12 = 3;
        break;
    case 1:
    case 2:
    case 3:
    case 5:
    case 7:
        v5 = 1;
        v11 = 1;
        v12 = 2;

        if ((v7[5 - 2] == 1) && (v7[3 - 2] == 1)) {
            v21 = v2->unk_14[3].rect.left + 8;
            v22 = v2->unk_14[1].rect.right - 8;
            v19 = v2->unk_14[3].rect.top + 8;
            v20 = v2->unk_14[3].rect.bottom - 8;
        } else if ((v7[5 - 2] == 1) && (v7[3 - 2] == 0)) {
            v21 = v2->unk_14[3].rect.left + 8;
            v22 = v2->unk_14[3].rect.right - 8;
            v19 = v2->unk_14[3].rect.top + 8;
            v20 = v2->unk_14[3].rect.bottom - 8;
        } else if ((v7[5 - 2] == 0) && (v7[3 - 2] == 1)) {
            v21 = v2->unk_14[1].rect.left + 8;
            v22 = v2->unk_14[1].rect.right - 8;
            v19 = v2->unk_14[1].rect.top + 8;
            v20 = v2->unk_14[1].rect.bottom - 8;
        } else {
            v21 = -1;
            v22 = -1;
            v19 = -1;
            v20 = -1;
        }

        if ((v7[2 - 2] == 1) && (v7[4 - 2] == 1)) {
            v25 = v2->unk_14[0].rect.left + 8;
            v26 = v2->unk_14[2].rect.right - 8;
            v23 = v2->unk_14[0].rect.top + 8;
            v24 = v2->unk_14[0].rect.bottom - 8;
        } else if ((v7[2 - 2] == 1) && (v7[4 - 2] == 0)) {
            v25 = v2->unk_14[0].rect.left + 8;
            v26 = v2->unk_14[0].rect.right - 8;
            v23 = v2->unk_14[0].rect.top + 8;
            v24 = v2->unk_14[0].rect.bottom - 8;
        } else if ((v7[2 - 2] == 0) && (v7[4 - 2] == 1)) {
            v25 = v2->unk_14[2].rect.left + 8;
            v26 = v2->unk_14[2].rect.right - 8;
            v23 = v2->unk_14[2].rect.top + 8;
            v24 = v2->unk_14[2].rect.bottom - 8;
        } else {
            v25 = -1;
            v26 = -1;
            v23 = -1;
            v24 = -1;
        }

        v17 = -1;
        v18 = -1;
        v27 = -1;
        v28 = -1;

        if (v21 == v25) {
            v13 = v21;
        } else if ((v21 != -1) && (v25 == -1)) {
            v13 = v21;
        } else if ((v21 == -1) && (v25 != -1)) {
            v13 = v25;
        } else {
            v13 = v21;
            v17 = v25;
            v29 = 2;
        }

        if (v22 == v26) {
            v14 = v22;
        } else if ((v22 != -1) && (v26 == -1)) {
            v14 = v22;
        } else if ((v22 == -1) && (v26 != -1)) {
            v14 = v26;
        } else {
            v14 = v22;
            v17 = v26;
            v29 = 3;
        }

        if ((v19 != -1) && (v23 == -1)) {
            v15 = v19;
        } else if ((v19 == -1) && (v23 != -1)) {
            v15 = v23;
        } else {
            v15 = v19;
            v18 = v20;
        }

        if ((v20 != -1) && (v24 == -1)) {
            v16 = v20;
        } else if ((v20 == -1) && (v24 != -1)) {
            v16 = v24;
        } else {
            v16 = v24;
            v18 = v24;

            if (v29 == 2) {
                v28 = v20;
            } else {
                v27 = v20;
            }
        }

        break;
    }

    if (param1 == 1) {
        if (v5 == 0) {
            if (v30->unk_06 == param0->unk_66C) {
                v0->unk_02 = v30->unk_04;
                v0->unk_01 = v30->unk_05;
            } else if (v6[5 - 2] == 1) {
                v0->unk_02 = 0;
                v0->unk_01 = 0;
            } else if (v6[3 - 2] == 1) {
                v0->unk_02 = 1;
                v0->unk_01 = 0;
            } else if (v6[2 - 2] == 1) {
                v0->unk_02 = 0;
                v0->unk_01 = 1;
            } else {
                v0->unk_02 = 1;
                v0->unk_01 = 1;
            }

            v4 = Unk_ov16_022701DC[v0->unk_01][v0->unk_02];
            ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        } else {
            v0->unk_02 = 0;
            v0->unk_01 = 0;

            if (((v28 == -1) && (v27 == -1)) || (v17 == -1)) {
                ov16_0226DD9C(param0->unk_6B8, v13, v14, v15, v16, ((192 + 80) << FX32_SHIFT));
            } else if ((v28 != -1) && (v27 == -1)) {
                ov16_0226DCCC(param0->unk_6B8, v13, v15, v14, v15, v13, v28, v14, v16, ((192 + 80) << FX32_SHIFT));
            } else {
                ov16_0226DCCC(param0->unk_6B8, v13, v15, v14, v15, v13, v16, v14, v27, ((192 + 80) << FX32_SHIFT));
            }

            if (v17 != -1) {
                ov16_0226DDC0(param0->unk_6B8, v17, v18, v29, ((192 + 80) << FX32_SHIFT));
            }
        }

        return 0xffffffff;
    }

    if (v5 == 0) {
        v1 = ov16_0226CB10(v0, v11, v12, v8[0]);
    } else {
        v1 = ov16_0226CB10(v0, v11, v12, NULL);
    }

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        if (v5 == 0) {
            v4 = Unk_ov16_022701DC[v0->unk_01][v0->unk_02];
            ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        } else {
            if (v0->unk_01 == 0) {
                if (((v27 == -1) && (v28 == -1)) || (v17 == -1)) {
                    ov16_0226DD9C(param0->unk_6B8, v13, v14, v15, v16, ((192 + 80) << FX32_SHIFT));
                } else if ((v28 != -1) && (v27 == -1)) {
                    ov16_0226DCCC(param0->unk_6B8, v13, v15, v14, v15, v13, v28, v14, v16, ((192 + 80) << FX32_SHIFT));
                } else {
                    ov16_0226DCCC(param0->unk_6B8, v13, v15, v14, v15, v13, v16, v14, v27, ((192 + 80) << FX32_SHIFT));
                }

                if (v17 != -1) {
                    ov16_0226DDC0(param0->unk_6B8, v17, v18, v29, ((192 + 80) << FX32_SHIFT));
                } else {
                    ov16_0226DE04(param0->unk_6B8);
                }
            } else {
                ov16_0226DD9C(param0->unk_6B8, v2->unk_14[4].rect.left + 8, v2->unk_14[4].rect.right - 8, v2->unk_14[4].rect.top + 8, v2->unk_14[4].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
                ov16_0226DE04(param0->unk_6B8);
            }
        }
        break;
    case PAD_BUTTON_A:
        if (v5 == 1) {
            if (v0->unk_01 > 0) {
                return 4;
            } else {
                for (v3 = 0; v3 < 4; v3++) {
                    if (v6[v3] == 1) {
                        return 0 + v3;
                    }
                }
            }
        } else {
            v4 = Unk_ov16_022701DC[v0->unk_01][v0->unk_02];

            if ((v4 == 4) || (v6[v4 - 0] == 1)) {
                return v4;
            }
        }
        break;
    case PAD_BUTTON_B:
        return 4;
    }

    return 0xffffffff;
}

static void ov16_0226C9B8(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226C378 *v0;
    int v1, v2, v3;

    if (param1 == 4) {
        return;
    }

    v1 = BattleSystem_BattlerOfType(param0->unk_00, param0->unk_66A);
    v0 = ov16_02263B0C(BattleSystem_BattlerData(param0->unk_00, v1));

    v0->unk_06 = param0->unk_66C;

    for (v3 = 0; v3 < 3; v3++) {
        for (v2 = 0; v2 < 2; v2++) {
            if (param1 == Unk_ov16_022701DC[v3][v2]) {
                v0->unk_04 = v2;
                v0->unk_05 = v3;

                return;
            }
        }
    }
}

static int ov16_0226CA14(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226CB10 *v0;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;

    v0 = &param0->unk_6BC;
    v2 = &Unk_ov16_02270670[param0->unk_66B];

    if (param1 == 1) {
        v3 = Unk_ov16_022701C8[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        return 0xffffffff;
    }

    v1 = ov16_0226CB10(v0, 1, 2, Unk_ov16_022701C8[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v3 = Unk_ov16_022701C8[v0->unk_01][v0->unk_02];
        ov16_0226DD9C(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        break;
    case PAD_BUTTON_A:
        v3 = Unk_ov16_022701C8[v0->unk_01][v0->unk_02];
        return v3;
    case PAD_BUTTON_B:
        return 1;
    }

    return 0xffffffff;
}

static u32 ov16_0226CB10(UnkStruct_ov16_0226CB10 *param0, int param1, int param2, const u8 *param3)
{
    int v0, v1;
    u32 v2;

    if (param0->unk_02 >= param1) {
        param0->unk_02 = param1 - 1;
    }

    if (param0->unk_01 >= param2) {
        param0->unk_01 = param2 - 1;
    }

    v1 = param0->unk_02;
    v0 = param0->unk_01;

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        param0->unk_01--;

        if (param0->unk_01 < 0) {
            param0->unk_01 = 0;
        }

        if (param3 != NULL) {
            while (param3[param1 * param0->unk_01 + param0->unk_02] == 0xff) {
                param0->unk_01--;

                if (param0->unk_01 < 0) {
                    param0->unk_01 = v0;
                    break;
                }
            }
        }

        v2 = PAD_KEY_UP;
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        param0->unk_01++;

        if (param0->unk_01 >= param2) {
            param0->unk_01 = param2 - 1;
        }

        if (param3 != NULL) {
            while (param3[param1 * param0->unk_01 + param0->unk_02] == 0xff) {
                param0->unk_01++;

                if (param0->unk_01 >= param2) {
                    param0->unk_01 = v0;
                    break;
                }
            }
        }

        v2 = PAD_KEY_DOWN;
    } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        param0->unk_02--;

        if (param0->unk_02 < 0) {
            param0->unk_02 = 0;
        }

        if (param3 != NULL) {
            while (param3[param1 * param0->unk_01 + param0->unk_02] == 0xff) {
                param0->unk_02--;

                if (param0->unk_02 < 0) {
                    param0->unk_02 = v1;
                    break;
                }
            }
        }

        v2 = PAD_KEY_LEFT;
    } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        param0->unk_02++;

        if (param0->unk_02 >= param1) {
            param0->unk_02 = param1 - 1;
        }

        if (param3 != NULL) {
            while (param3[param1 * param0->unk_01 + param0->unk_02] == 0xff) {
                param0->unk_02++;

                if (param0->unk_02 >= param1) {
                    param0->unk_02 = v1;
                    break;
                }
            }
        }

        v2 = PAD_KEY_RIGHT;
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        v2 = PAD_BUTTON_A;
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        v2 = PAD_BUTTON_B;
    } else {
        return 0;
    }

    if (param3 != NULL) {
        int v3, v4;

        v3 = param3[param1 * v0 + v1];
        v4 = param3[param1 * param0->unk_01 + param0->unk_02];

        if (v3 == v4) {
            param0->unk_02 = v1;
            param0->unk_01 = v0;
        }
    }

    if ((param0->unk_02 != v1) || (param0->unk_01 != v0)) {
        Sound_PlayEffect(1500);
    } else {
        if (v2 & PAD_KEY) {
            return 0;
        }
    }

    return v2;
}

int ov16_0226CD08(UnkStruct_ov16_02268A14 *param0)
{
    return param0->unk_6C0;
}

void ov16_0226CD10(UnkStruct_ov16_02268A14 *param0, int param1)
{
    param0->unk_6C0 = param1;
}

static int (*const Unk_ov16_0227020C[])(UnkStruct_ov16_02268A14 *) = {
    ov16_0226CD84,
    ov16_0226CDDC
};

static int ov16_0226CD18(UnkStruct_ov16_02268A14 *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    PaletteData *v2;
    int v3;

    v0 = ov16_0223E010(param0->unk_00);
    v1 = ov16_0223E018(param0->unk_00);
    v2 = BattleSystem_PaletteSys(param0->unk_00);
    v3 = 0xffffffff;

    if (ov16_0223F228(param0->unk_00) == 0) {
        GF_ASSERT(param0->unk_6C4.unk_04 < NELEMS(Unk_ov16_0227020C));
        v3 = Unk_ov16_0227020C[param0->unk_6C4.unk_04](param0);
    } else {
        v3 = ov16_0226CE34(param0);
    }

    if (v3 != 0xffffffff) {
        param0->unk_6C4.unk_05 = 0;
        param0->unk_6C4.unk_06 = 0;
        param0->unk_6C4.unk_04++;
    }

    return v3;
}

static int ov16_0226CD84(UnkStruct_ov16_02268A14 *param0)
{
    switch (param0->unk_6C4.unk_05) {
    case 0:
        ov16_0226DF80(param0->unk_6C4.unk_00, 128, 84 - 24, ((192 + 80) << FX32_SHIFT));
        ov16_0226DFD0(param0->unk_6C4.unk_00, 60);
        param0->unk_6C4.unk_05++;
        break;
    default:
        if (ov16_0226DFD4(param0->unk_6C4.unk_00) == 1) {
            param0->unk_6C4.unk_05++;
            return 0;
        }

        break;
    }

    return 0xffffffff;
}

static int ov16_0226CDDC(UnkStruct_ov16_02268A14 *param0)
{
    switch (param0->unk_6C4.unk_05) {
    case 0:
        ov16_0226DF80(param0->unk_6C4.unk_00, 64, 46 - 24, ((192 + 80) << FX32_SHIFT));
        ov16_0226DFD0(param0->unk_6C4.unk_00, 60);
        param0->unk_6C4.unk_05++;
        break;
    default:
        if (ov16_0226DFD4(param0->unk_6C4.unk_00) == 1) {
            param0->unk_6C4.unk_05++;
            return 1;
        }
        break;
    }

    return 0xffffffff;
}

static int ov16_0226CE34(UnkStruct_ov16_02268A14 *param0)
{
    switch (param0->unk_6C4.unk_05) {
    case 0:
        param0->unk_6C4.unk_06++;

        if (param0->unk_6C4.unk_06 > 60) {
            param0->unk_6C4.unk_06 = 0;
            param0->unk_6C4.unk_05++;
        }
        break;
    case 1:
        ov16_0226DF80(param0->unk_6C4.unk_00, 40, 170 - 24, ((192 + 80) << FX32_SHIFT));
        ov16_0226DFD0(param0->unk_6C4.unk_00, 60);
        param0->unk_6C4.unk_05++;
        break;
    default:
        if (ov16_0226DFD4(param0->unk_6C4.unk_00) == 1) {
            param0->unk_6C4.unk_05++;
            return 1;
        }
        break;
    }

    return 0xffffffff;
}

void ov16_0226CEB0(UnkStruct_ov16_02268A14 *param0, int param1)
{
    BGL *v0 = BattleSystem_BGL(param0->unk_00);
    PaletteData *v1 = BattleSystem_PaletteSys(param0->unk_00);

    GF_ASSERT(param0->unk_66B == 18);

    sub_0200DAA4(v0, 5, 0x20, 1, 0, 5);
    sub_02003070(v1, 1, 1 * 16, 0x20);

    {
        int v2 = 0x20, v3 = 1;
        int v4, v5, v6, v7;

        v4 = 1;
        v5 = 6;
        v6 = 30;
        v7 = 6;

        sub_02019CB8(v0, 5, v2, v4, v5, 1, 1, v3);
        sub_02019CB8(v0, 5, v2 + 1, v4 + 1, v5, v6 - 2, 1, v3);
        sub_02019CB8(v0, 5, v2 + 2, v4 + v6 - 1, v5, 1, 1, v3);
        sub_02019CB8(v0, 5, v2 + 3, v4, v5 + 1, 1, v7 - 2, v3);
        sub_02019CB8(v0, 5, v2 + 5, v4 + v6 - 1, v5 + 1, 1, v7 - 2, v3);
        sub_02019CB8(v0, 5, v2 + 6, v4, v5 + v7 - 1, 1, 1, v3);
        sub_02019CB8(v0, 5, v2 + 7, v4 + 1, v5 + v7 - 1, v6 - 2, 1, v3);
        sub_02019CB8(v0, 5, v2 + 8, v4 + v6 - 1, v5 + v7 - 1, 1, 1, v3);
        sub_02019CB8(v0, 5, v2 + 4, v4 + 1, v5 + 1, v6 - 2, v7 - 2, v3);
        sub_0201C3C0(v0, 5);
    }

    {
        Strbuf *v8;
        MessageLoader *v9 = BattleSystem_MessageLoader(param0->unk_00);
        int v10;
        const u16 v11[][2] = {
            { 1261, 1262 },
            { 1263, 1264 },
            { 1265, 1266 },
        };

        for (v10 = 0; v10 < 2; v10++) {
            if (param0->unk_4CC[1 + v10].unk_00 != NULL) {
                GF_ASSERT(0);
                return;
            }

            v8 = MessageLoader_GetNewStrbuf(v9, v11[param1][v10]);

            ov16_0226A98C(param0, &param0->unk_4CC[1 + v10], v8, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 4, 20023, 1 * 8 + 8, 6 * 8 + 16 + 16 * v10, 0, NULL);
            Strbuf_Free(v8);
        }
    }
}

u8 ov16_0226D088(UnkStruct_ov16_02268A14 *param0)
{
    return param0->unk_6C1;
}

#include "battle/battle_cursor.h"

#include <nitro.h>
#include <string.h>

#include "constants/moves.h"
#include "generated/moves.h"
#include "generated/pokemon_types.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02012B20_decl.h"
#include "struct_defs/struct_020127E8.h"

#include "battle/battle_display.h"
#include "battle/battle_system.h"
#include "battle/move_display_info.h"
#include "battle/ov16_0226DB7C.h"
#include "battle/ov16_0226DE44.h"
#include "battle/struct_ov16_02260C00.h"
#include "battle/struct_ov16_02260F14.h"
#include "battle/struct_ov16_022623F0.h"
#include "battle/struct_ov16_02269668.h"
#include "battle/struct_ov16_0226C378.h"
#include "battle/struct_ov16_0226DC24_decl.h"
#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay011/move_palettes.h"

#include "assert.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "message.h"
#include "message_util.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "type_icon.h"
#include "unk_02012744.h"
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
    CharTransferAllocation unk_04;
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
    u8 isActive;
    s8 y;
    s8 x;
    u8 unk_03;
} MenuCursor;

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
    MoveDisplayInfo unk_00;
    u16 *moveIcons[4];
    UnkStruct_ov16_0226AEA0 unk_28[4];
    UnkStruct_ov16_0226AEA0 unk_78[4];
    UnkStruct_ov16_0226AEA0 unk_C8[4];
} UnkStruct_ov16_0226ABD4;

typedef struct UnkStruct_ov16_02268A14_t {
    BattleSystem *battleSys;
    u8 *unk_04;
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
    ManagedSprite *unk_5BC[6];
    ManagedSprite *unk_5D4[6];
    ManagedSprite *moveSelectSprites[4];
    ManagedSprite *unk_5FC[4];
    ManagedSprite *unk_60C[4];
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
    MenuCursor cursor;
    u8 unk_6C0;
    u8 unk_6C1;
    struct {
        UnkStruct_ov16_0226DEEC *unk_00;
        u8 unk_04;
        u8 unk_05;
        u8 unk_06;
    } unk_6C4;
} UnkStruct_ov16_02268A14_t;

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
static void DrawMoveTypeIcons(UnkStruct_ov16_02268A14 *param0);
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
static void LoadMoveSelectPlttSlot(UnkStruct_ov16_02268A14 *param0, enum PokemonType moveType, int moveSlot);
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
static void ov16_0226A98C(UnkStruct_ov16_02268A14 *param0, UnkStruct_ov16_0226A98C *param1, const String *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov16_0226AEA0 *param10);
static void ov16_0226AAC0(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A698(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A718(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A768(UnkStruct_ov16_02268A14 *param0);
static ManagedSprite *ov16_0226A7A4(UnkStruct_ov16_02268A14 *param0, Pokemon *param1, int param2, int param3, int param4, int param5);
static void ov16_0226A928(SysTask *param0, void *param1);
static void ov16_0226B988(SysTask *param0, void *param1);
static void ov16_0226BA88(SysTask *param0, void *param1);
static void ov16_0226BB94(void *param0);
static TextColor ov16_0226B924(int param0, int param1);
void ov16_0226BCCC(UnkStruct_ov16_02268A14 *param0, int param1);
BOOL ov16_0226BCD0(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226BCE4(SysTask *param0, void *param1);
static void ov16_02268FCC(SysTask *param0, void *param1);
static int BattleSystem_MenuKeys(UnkStruct_ov16_02268A14 *param0);
static int BattleSystem_Cursor_Menu(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden);
static int BattleSystem_Cursor_Moves(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden);
static int BattleSystem_Cursor_Battler(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden);
static int BattleSystem_Cursor_YesNo(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden);
static u32 BattleSystem_MoveCursor(MenuCursor *cursor, int width, int height, const u8 *layout);
static void ov16_0226C0A0(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226C378(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226C9B8(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226B31C(UnkStruct_ov16_02268A14 *param0, const s16 *param1, const UnkStruct_ov16_022702F4 *param2, int param3, int param4);
static UnkStruct_ov16_0226ABD4 *ov16_0226ABD4(UnkStruct_ov16_02268A14 *param0, int param1);
static void ov16_0226ABE8(UnkStruct_ov16_02268A14 *param0);
static void ov16_0226A95C(const String *param0, int param1, int *param2, int *param3);
static void ov16_0226AEA0(UnkStruct_ov16_02268A14 *param0, const String *param1, enum Font param2, UnkStruct_ov16_0226AEA0 *param3, TextColor param4);
static void ov16_0226AAF8(UnkStruct_ov16_02268A14 *param0);
static int BattleSystem_Cursor_PalPark(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden);
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

static const BgTemplate Unk_ov16_02270540[] = {
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    }
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

__attribute__((aligned(4))) static const u8 sBattleMenuButtonLayout[2][3] = {
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

__attribute__((aligned(4))) static const u8 palParkMenuButtonLayout[2][1] = {
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

__attribute__((aligned(4))) static const u8 sMoveMenuButtonLayout[3][2] = {
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

__attribute__((aligned(4))) static const u8 sYesNoMenuButtonLayout[2][1] = {
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

__attribute__((aligned(4))) static const u8 sSelectTargetMenuButtonLayout[3][2] = {
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
    // Menu structures
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_Menu,
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
        BattleSystem_Cursor_PalPark,
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
        BattleSystem_Cursor_PalPark,
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
        BattleSystem_Cursor_Moves,
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
        BattleSystem_Cursor_Battler,
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
        BattleSystem_Cursor_YesNo,
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
        BattleSystem_Cursor_YesNo,
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
        BattleSystem_Cursor_YesNo,
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
        BattleSystem_Cursor_YesNo,
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
        BattleSystem_Cursor_YesNo,
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
    UnkStruct_ov16_02268A14 *v0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_02268A14));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_02268A14));
    v0->unk_66B = -1;

    return v0;
}

void ov16_02268744(BgConfig *param0)
{
    int i;

    for (i = 0; i < NELEMS(Unk_ov16_02270540); i++) {
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0 + i, &Unk_ov16_02270540[i], 0);
        Bg_FillTilemap(param0, 4 + i, 0x6000 / 0x20 - 1);
        Bg_SetOffset(param0, BG_LAYER_SUB_0 + i, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_0 + i, 3, 0);
    }
}

void ov16_022687A0(BgConfig *param0)
{
    int i;

    for (i = 0; i < NELEMS(Unk_ov16_02270540); i++) {
        Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 0);
        Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0 + i);
    }
}

void *ov16_022687C8(NARC *param0, NARC *param1, BattleSystem *battleSys, int param3, u8 *param4)
{
    UnkStruct_ov16_02268A14 *v0;
    PaletteData *v1;
    int v2;

    v0 = ov16_0226871C();
    v0->battleSys = battleSys;
    v0->unk_66D = param3;
    v0->unk_04 = param4;

    if (v0->unk_04 != NULL) {
        v0->unk_6C0 = *param4;
    } else {
        (void)0;
    }

    v1 = BattleSystem_GetPaletteData(battleSys);
    v2 = BattleSystem_GetBackground(battleSys);

    if (v2 >= NELEMS(Unk_ov16_022704E4)) {
        v2 = 0;
        GF_ASSERT(0);
    }

    v0->unk_4C8 = sub_02012744(13, HEAP_ID_BATTLE);
    v0->unk_678 = SysTask_Start(ov16_0226BCE4, v0, 1310);

    {
        NNSG2dScreenData *v3;
        void *v4;
        int i;
        int v6;

        for (i = 0; i < 7; i++) {
            v0->unk_3C[i] = Heap_Alloc(HEAP_ID_BATTLE, 0x800);

            if ((BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) && (Unk_ov16_02270264[i] == 49)) {
                v6 = 170;
            } else {
                v6 = Unk_ov16_02270264[i];
            }

            v4 = Graphics_GetScrnData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, v6, 1, &v3, 5);

            MI_CpuCopy32(v3->rawData, v0->unk_3C[i], 0x800);
            Heap_Free(v4);
        }
    }

    {
        u16 *v7;
        int v8;

        v8 = (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) ? 340 : 242;
        v0->unk_58 = Heap_Alloc(HEAP_ID_BATTLE, 0x200);

        PaletteData_LoadBufferFromFileStart(v1, 7, v8, 5, 1, 0, 0);

        if (Unk_ov16_022704E4[v2].unk_00 != 0xffff) {
            PaletteData_LoadBufferFromFileStart(v1, 7, Unk_ov16_022704E4[v2].unk_00, 5, 1, 0x20, 0);
        }

        v7 = PaletteData_GetUnfadedBuffer(v1, 1);
        MI_CpuCopy16(v7, v0->unk_58, 0x200);
    }

    {
        int i;

        for (i = 0; i < 4; i++) {
            MI_CpuFill8(&v0->unk_68[i].unk_00, 0xff, sizeof(MoveDisplayInfo));
        }
    }

    {
        int i, j;

        for (i = 0; i < 4; i++) {
            for (j = 0; j < 4; j++) {
                v0->unk_68[i].moveIcons[j] = Heap_Alloc(HEAP_ID_BATTLE, sub_0208C098(6));
            }
        }
    }

    {
        NNSG2dPaletteData *v13;
        void *v14;
        int v15;

        v0->unk_5C = Heap_Alloc(HEAP_ID_BATTLE, 0x40);
        v0->unk_60 = Heap_Alloc(HEAP_ID_BATTLE, 0x40);

        MI_CpuCopy16(v0->unk_58, v0->unk_5C, 0x20);
        MI_CpuCopy16(&v0->unk_58[7 * 16], &v0->unk_5C[16 * 1], 0x20);

        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
            v15 = 341;
        } else if (Unk_ov16_022704E4[v2].unk_02 != 0xffff) {
            v15 = Unk_ov16_022704E4[v2].unk_02;
        } else {
            v15 = 267;
        }

        v14 = Graphics_GetPlttData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, v15, &v13, HEAP_ID_BATTLE);

        if (BattleSystem_GetBattleType(battleSys) & BATTLE_TYPE_FRONTIER) {
            MI_CpuCopy16(v13->pRawData, v0->unk_60, 0x40);
        } else {
            MI_CpuCopy16(v13->pRawData, v0->unk_60, 0x20);
        }

        Heap_Free(v14);
        RenderControlFlags_ZeroSpeedUpBattle();
        RenderControlFlags_ZeroWaitBattle();

        v0->unk_64 = SysTask_Start(ov16_0226BD74, v0, 55000);
    }

    return v0;
}

void ov16_02268A14(UnkStruct_ov16_02268A14 *param0)
{
    int i;

    if (param0->unk_04 != NULL) {
        *param0->unk_04 = param0->unk_6C0;
    }

    ov16_0226B1E8(param0);
    ov16_02268F00(param0);
    ov16_02268B8C(param0);

    sub_020127BC(param0->unk_4C8);
    SysTask_Done(param0->unk_678);

    for (i = 0; i < 7; i++) {
        Heap_Free(param0->unk_3C[i]);
    }

    Heap_Free(param0->unk_58);
    ov16_0226ABE8(param0);
    Heap_Free(param0->unk_5C);
    Heap_Free(param0->unk_60);
    SysTask_Done(param0->unk_64);
    Heap_Free(param0);
}

void ov16_02268A88(UnkStruct_ov16_02268A14 *param0)
{
    BgConfig *v0;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    PaletteData *v3;
    int i;

    spriteSys = BattleSystem_GetSpriteSystem(param0->battleSys);
    spriteMan = BattleSystem_GetSpriteManager(param0->battleSys);
    v0 = BattleSystem_GetBgConfig(param0->battleSys);
    v3 = BattleSystem_GetPaletteData(param0->battleSys);

    {
        int v5;

        if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_FRONTIER) {
            v5 = 169;
        } else {
            v5 = 28;
        }

        Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, v5, v0, 4, 0, 0x6000, 1, HEAP_ID_BATTLE);
    }

    TypeIcon_LoadAnim(spriteSys, spriteMan, 20017, 20017);
    TypeIcon_LoadPltt(BattleSystem_GetPaletteData(param0->battleSys), PLTTBUF_SUB_OBJ, spriteSys, spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, 20020);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        TypeIcon_LoadChar(spriteSys, spriteMan, NNS_G2D_VRAM_TYPE_2DSUB, TYPE_NORMAL, 20025 + i);
    }

    if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        ov16_0226DE44(spriteSys, spriteMan, 5, v3, 20412, 20036, 20406, 20395);
        param0->unk_6C4.unk_00 = ov16_0226DEEC(spriteSys, spriteMan, HEAP_ID_BATTLE, 20412, 20036, 20406, 20395, 10, 0);
    }
}

void ov16_02268B8C(UnkStruct_ov16_02268A14 *param0)
{
    int i;
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->battleSys);
    SpriteManager *v2 = BattleSystem_GetSpriteManager(param0->battleSys);

    for (i = 0; i < 4; i++) {
        TypeIcon_UnloadChar(v2, 20025 + i);
    }

    TypeIcon_UnloadPlttSrc(v2, 20020);
    TypeIcon_UnloadAnim(v2, 20017, 20017);

    if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        ov16_0226DF68(param0->unk_6C4.unk_00);
        ov16_0226DEC4(v2, 20412, 20036, 20406, 20395);
    }
}

void ov16_02268C04(NARC *param0, NARC *param1, UnkStruct_ov16_02268A14 *param2, int param3, int param4, void *param5)
{
    const UnkStruct_ov16_02270670 *v0, *v1;
    int i;
    BgConfig *v3;
    SpriteSystem *v4;
    SpriteManager *v5;

    if (param5 != NULL) {
        MI_CpuCopy8(param5, &param2->unk_1A, sizeof(UnkStruct_ov16_02268A14_sub2));
    }

    param2->unk_66E = 0;

    v3 = BattleSystem_GetBgConfig(param2->battleSys);
    v4 = BattleSystem_GetSpriteSystem(param2->battleSys);
    v5 = BattleSystem_GetSpriteManager(param2->battleSys);

    if (param2->unk_66B == -1) {
        param4 = 1;
        v1 = NULL;
    } else {
        v1 = &Unk_ov16_02270670[param2->unk_66B];
    }

    v0 = &Unk_ov16_02270670[param3];

    if (0) {
        int v6;

        if (BattleSystem_GetBattleType(param2->battleSys) & BATTLE_TYPE_FRONTIER) {
            v6 = 169;
        } else {
            v6 = v0->unk_00;
        }

        Graphics_LoadTilesToBgLayerFromOpenNARC(param0, v6, v3, 4, 0, 0x6000 - (32 * 12 * 0x20), 1, HEAP_ID_BATTLE);

        if (param2->unk_66D == 0) {
            Graphics_LoadTilesToBgLayerFromOpenNARC(param0, 37, v3, 4, (0x6000 - (32 * 12 * 0x20)) / 0x20, 32 * 12 * 0x20, 1, HEAP_ID_BATTLE);
        } else {
            Graphics_LoadTilesToBgLayerFromOpenNARC(param0, 38, v3, 4, (0x6000 - (32 * 12 * 0x20)) / 0x20, 32 * 12 * 0x20, 1, HEAP_ID_BATTLE);
        }
    }

    if (1) {
        PaletteData_LoadBuffer(BattleSystem_GetPaletteData(param2->battleSys), param2->unk_58, 1, 0, 0x200);
    }

    for (i = 0; i < 4; i++) {
        if ((v0->unk_04_val2[i] != 0xffff) && ((param4 == 1) || (v0->unk_04_val2[i] != v1->unk_04_val2[i]))) {
            Bg_LoadTilemapBuffer(v3, 4 + i, param2->unk_3C[v0->unk_04_val2[i]], 0x800);
            Bg_ScheduleTilemapTransfer(v3, 4 + i);
        }
    }

    SpriteSystem_LoadPaletteBufferFromOpenNarc(BattleSystem_GetPaletteData(param2->battleSys), 3, v4, v5, param1, 72, 0, 7, NNS_G2D_VRAM_TYPE_2DSUB, 20023);
    param2->unk_66B = param3;

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_BGALL, 8, 12);
    ov16_0226B1E8(param2);

    if (v0->unk_28 != NULL) {
        v0->unk_28(param2, param3, param4);
    }

    SysTask_ExecuteAfterVBlank(ov16_0226BC50, param2, 10);
}

void ov16_02268D40(NARC *param0, UnkStruct_ov16_02268A14 *param1)
{
    int i;
    SpriteSystem *v1;
    SpriteManager *v2;

    GF_ASSERT(param1->unk_5BC[0] == NULL && param1->unk_5D4[0] == NULL);

    v1 = BattleSystem_GetSpriteSystem(param1->battleSys);
    v2 = BattleSystem_GetSpriteManager(param1->battleSys);

    SpriteSystem_LoadCharResObjFromOpenNarc(v1, v2, param0, 208, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 20023);
    SpriteSystem_LoadCellResObjFromOpenNarc(v1, v2, param0, 207, TRUE, 20015);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v1, v2, param0, 209, TRUE, 20015);

    SpriteSystem_LoadCharResObjFromOpenNarc(v1, v2, param0, 205, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 20024);
    SpriteSystem_LoadCellResObjFromOpenNarc(v1, v2, param0, 204, TRUE, 20016);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v1, v2, param0, 206, TRUE, 20016);

    for (i = 0; i < 6; i++) {
        param1->unk_5BC[i] = SpriteSystem_NewSprite(v1, v2, &Unk_ov16_02270414);
        Sprite_SetPositionXYWithSubscreenOffset(param1->unk_5BC[i]->sprite, 12 + 19 * i, 13, (192 + 80) << FX32_SHIFT);
        ManagedSprite_SetAffineOverwriteMode(param1->unk_5BC[i], AFFINE_OVERWRITE_MODE_NORMAL);

        param1->unk_5D4[i] = SpriteSystem_NewSprite(v1, v2, &Unk_ov16_02270448);
        Sprite_SetPositionXYWithSubscreenOffset(param1->unk_5D4[i]->sprite, 246 + -12 * i, 9, (192 + 80) << FX32_SHIFT);
    }

    ov16_02269218(param1);

    GF_ASSERT(param1->unk_08 == NULL);
    param1->unk_08 = SysTask_Start(ov16_02268FCC, param1, 1300);

    {
        PaletteData *v3;

        v3 = BattleSystem_GetPaletteData(param1->battleSys);
        ov16_0226DB7C(v1, v2, v3, 5, 20411, 20035, 20405, 20394);
        param1->unk_6B8 = ov16_0226DC24(v1, v2, HEAP_ID_BATTLE, 20411, 20035, 20405, 20394, 5, 0);
    }
}

static void ov16_02268F00(UnkStruct_ov16_02268A14 *param0)
{
    int i;
    SpriteSystem *v1;
    SpriteManager *v2;

    GF_ASSERT(param0->unk_5BC[0] != NULL && param0->unk_5D4[0] != NULL);

    v1 = BattleSystem_GetSpriteSystem(param0->battleSys);
    v2 = BattleSystem_GetSpriteManager(param0->battleSys);

    SpriteManager_UnloadCharObjById(v2, 20023);
    SpriteManager_UnloadCellObjById(v2, 20015);
    SpriteManager_UnloadAnimObjById(v2, 20015);
    SpriteManager_UnloadCharObjById(v2, 20024);
    SpriteManager_UnloadCellObjById(v2, 20016);
    SpriteManager_UnloadAnimObjById(v2, 20016);
    SpriteManager_UnloadPlttObjById(v2, 20023);

    for (i = 0; i < 6; i++) {
        Sprite_DeleteAndFreeResources(param0->unk_5BC[i]);
        param0->unk_5BC[i] = NULL;

        Sprite_DeleteAndFreeResources(param0->unk_5D4[i]);
        param0->unk_5D4[i] = NULL;
    }

    SysTask_Done(param0->unk_08);
    param0->unk_08 = NULL;

    ov16_0226DBFC(v2, 20411, 20035, 20405, 20394);
    ov16_0226DCA8(param0->unk_6B8);
}

static void ov16_02268FCC(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    int i;
    UnkStruct_ov16_02268FCC *v2;

    for (i = 0; i < 6; i++) {
        v2 = &v0->unk_62C[i];

        switch (v2->unk_03) {
        case 0:
        default:
            if (Sprite_GetDrawFlag2(v0->unk_5BC[i]->sprite) == 0) {
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
            ManagedSprite_OffsetAffineZRotation(v0->unk_5BC[i], 0x800);
            v2->unk_00 += 0x180;

            ManagedSprite_SetPositionXYWithSubscreenOffset(v0->unk_5BC[i], 12 + 19 * i + v2->unk_00 / 0x100, 13, (192 + 80) << FX32_SHIFT);
            v2->unk_06++;

            if (v2->unk_06 >= v2->unk_07) {
                v2->unk_06 = 0;

                if (v2->unk_03 == 2) {
                    v2->unk_03++;
                } else {
                    ManagedSprite_SetAffineZRotation(v0->unk_5BC[i], 0);
                    ManagedSprite_SetPositionXYWithSubscreenOffset(v0->unk_5BC[i], 12 + 19 * i, 13, (192 + 80) << FX32_SHIFT);

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
            ManagedSprite_OffsetAffineZRotation(v0->unk_5BC[i], -0x800);
            v2->unk_00 -= 0x180;

            ManagedSprite_SetPositionXYWithSubscreenOffset(v0->unk_5BC[i], 12 + 19 * i + v2->unk_00 / 0x100, 13, (192 + 80) << FX32_SHIFT);
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
    int i;

    for (i = 0; i < 6; i++) {
        param0->unk_62C[i].unk_02 = param1[i];
    }
}

void ov16_02269168(UnkStruct_ov16_02268A14 *param0, u8 param1[], u8 param2[])
{
    int i, v1;

    for (i = 0; i < 6; i++) {
        v1 = ov16_0226A934(param1[i]);

        Sprite_SetAnim(param0->unk_5BC[i]->sprite, v1);
        Sprite_TickFrame(param0->unk_5BC[i]->sprite);

        v1 = ov16_0226A934(param2[i]);

        Sprite_SetAnim(param0->unk_5D4[i]->sprite, v1);
        Sprite_TickFrame(param0->unk_5D4[i]->sprite);
    }
}

void ov16_022691BC(UnkStruct_ov16_02268A14 *param0)
{
    int i;

    GF_ASSERT(param0->unk_5BC[0] != NULL && param0->unk_5D4[0] != NULL);

    for (i = 0; i < 6; i++) {
        Sprite_SetDrawFlag2(param0->unk_5BC[i]->sprite, 1);
    }

    if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_TRAINER) {
        for (i = 0; i < 6; i++) {
            Sprite_SetDrawFlag2(param0->unk_5D4[i]->sprite, 1);
        }
    }
}

void ov16_02269218(UnkStruct_ov16_02268A14 *param0)
{
    int i;

    GF_ASSERT(param0->unk_5BC[0] != NULL && param0->unk_5D4[0] != NULL);

    for (i = 0; i < 6; i++) {
        Sprite_SetDrawFlag2(param0->unk_5BC[i]->sprite, 0);
        Sprite_SetDrawFlag2(param0->unk_5D4[i]->sprite, 0);
    }
}

int BattleSystem_MenuInput(UnkStruct_ov16_02268A14 *param0)
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

    if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        v1 = ov16_0226CD18(param0);
    } else {
        v1 = TouchScreen_CheckRectanglePressed(v4->unk_14);

        if (v1 == TOUCHSCREEN_INPUT_NONE) { // Nothing was selected with touch
            v1 = BattleSystem_MenuKeys(param0);
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

            MI_CpuClear8(&param0->cursor, sizeof(MenuCursor));
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
    BgConfig *v2 = BattleSystem_GetBgConfig(v0->battleSys);
    v0->unk_6AC += v0->unk_6B0;

    if (((v0->unk_6B0 <= 0) && (v0->unk_6AC <= v0->unk_6B4)) || ((v0->unk_6B0 > 0) && (v0->unk_6AC >= v0->unk_6B4))) {
        v0->unk_6AC = v0->unk_6B4;
        v1 = 1;
    }

    Bg_SetOffset(v2, BG_LAYER_SUB_2, 0, v0->unk_6AC / 0x100);
    ov16_0226940C(v0);

    if (v1 == 1) {
        Bg_FillTilemap(v2, 7, 0x6000 / 0x20 - 1);
        Bg_ToggleLayer(BG_LAYER_SUB_3, 0);
        Bg_SetPriority(BG_LAYER_SUB_3, 0);
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
    G2S_SetWnd0Position(0, 0, 255, 18 * 8);
    G2S_SetWnd1Position(0, 18 * 8, 255, 192);
    GXS_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);

    v1 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0226B988));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov16_0226B988));

    v1->unk_00 = param0;
    v1->unk_12 = param1;
    v1->unk_08 = -(255 * 100);
    v1->unk_0A = (40 * 100);
    v1->unk_0C = ((255 * 100) - v1->unk_08) / 100;
    v1->unk_0E = ((40 * 100) - v1->unk_0A) / 100;

    Sound_PlayEffect(SEQ_SE_DP_SLIDEIN);
    SysTask_Start(ov16_0226B988, v1, 1210);

    v0 = SetHBlankCallback(ov16_0226BB94, v1);
    GF_ASSERT(v0 == 1);

    v1->unk_04 = SysTask_ExecuteOnVBlank(ov16_0226BA88, v1, 10);
}

static void ov16_02269654(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0 = param0->unk_1A.val1.unk_00;

    ov16_02269668(param0, param1, param2);
    ov16_02269550(param0, v0);
}

static void ov16_02269668(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    String *v0, *v1, *v2, *v3;
    MessageLoader *v4;
    int v5;
    UnkStruct_ov16_02269668 *v6 = &param0->unk_1A.val1;
    v5 = v6->unk_00;

    param0->unk_6C1 = v6->unk_08;

    v4 = BattleSystem_GetMessageLoader(param0->battleSys);

    param0->unk_66A = v5;

    if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_SAFARI) {
        v0 = MessageLoader_GetNewString(v4, 931);
        v1 = MessageLoader_GetNewString(v4, 932);
        v2 = MessageLoader_GetNewString(v4, 933);
    } else if (BattleSystem_GetBattleType(param0->battleSys) & BATTLE_TYPE_PAL_PARK) {
        v0 = MessageLoader_GetNewString(v4, 1223);
        v1 = MessageLoader_GetNewString(v4, 932);
        v2 = MessageLoader_GetNewString(v4, 933);
    } else {
        v0 = MessageLoader_GetNewString(v4, 924);
        v1 = MessageLoader_GetNewString(v4, 925);
        v2 = MessageLoader_GetNewString(v4, 926);
    }

    if (param0->unk_6C1 == 1) {
        v3 = MessageLoader_GetNewString(v4, 928);
        param0->unk_66F = 1;
    } else {
        v3 = MessageLoader_GetNewString(v4, 927);
        param0->unk_66F = 0;
    }

    ov16_0226A98C(param0, &param0->unk_4CC[0], v0, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 84, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v1, FONT_SUBSCREEN, TEXT_COLOR(4, 5, 6), 2, 20023, 40, 170, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[2], v2, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 2, 20023, 216, 170, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[3], v3, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 178, 1, NULL);

    String_Free(v0);
    String_Free(v1);
    String_Free(v2);
    String_Free(v3);

    if ((BattleSystem_GetBattleType(param0->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) == 0) {
        Pokemon *v7;
        ManagedSprite *v8;
        int v9, v10;

        v7 = BattleSystem_GetPartyPokemon(param0->battleSys, v6->unk_01, v6->unk_02);
        ov16_0226A698(param0);
        v8 = ov16_0226A7A4(param0, v7, v5, v6->unk_04, v6->unk_06, v6->unk_03);

        FontOAM_GetXY(param0->unk_4CC[0].unk_00, &v9, &v10);

        if (v5 == 4) {
            v9 += param0->unk_4CC[0].unk_10 + 32 / 2;
        } else {
            v9 -= 32 / 2;
        }

        ManagedSprite_SetPositionXYWithSubscreenOffset(v8, v9, v10 - (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT), (192 + 80) << FX32_SHIFT);
    }
}

static void ov16_022698A8(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0 = param0->unk_1A.val1.unk_00;

    ov16_022698BC(param0, param1, param2);
    ov16_02269550(param0, v0);
}

static void ov16_022698BC(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0 = param0->unk_1A.val1.unk_00;

    ov16_02269668(param0, param1, param2);

    {
        BgConfig *v1;

        v1 = BattleSystem_GetBgConfig(param0->battleSys);

        Bg_FillTilemapRect(v1, 4, 0x6000 / 0x20 - 1, 0, 0x10, 32, 8, 17);
        Bg_ScheduleTilemapTransfer(v1, 5);
    }

    sub_020129D0(param0->unk_4CC[1].unk_00, 0);
    sub_020129D0(param0->unk_4CC[2].unk_00, 0);
    sub_020129D0(param0->unk_4CC[3].unk_00, 0);
}

static void ov16_02269924(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0 = param0->unk_1A.val1.unk_00;

    ov16_02269938(param0, param1, param2);
    ov16_02269550(param0, v0);
}

static void ov16_02269938(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    int v0 = param0->unk_1A.val1.unk_00;

    ov16_02269668(param0, param1, param2);

    {
        BgConfig *v1;

        v1 = BattleSystem_GetBgConfig(param0->battleSys);

        Bg_FillTilemapRect(v1, 4, 0x6000 / 0x20 - 1, 0, 0x10, 10, 8, 17);
        Bg_FillTilemapRect(v1, 4, 0x6000 / 0x20 - 1, 0x16, 0x10, 10, 8, 17);
        Bg_ScheduleTilemapTransfer(v1, 5);
    }

    sub_020129D0(param0->unk_4CC[1].unk_00, 0);
    sub_020129D0(param0->unk_4CC[2].unk_00, 0);
}

static void ov16_022699AC(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    UnkStruct_ov16_02260C00 *v0;
    int i;
    MessageLoader *messageLoader;
    UnkStruct_ov16_0226ABD4 *v3;
    TextColor textColor;

    v0 = &param0->unk_1A.val2;
    GF_ASSERT(v0 != NULL);

    param0->unk_66A = v0->unk_10;

    messageLoader = BattleSystem_GetMessageLoader(param0->battleSys);
    v3 = ov16_0226ABD4(param0, v0->unk_10);

    DrawMoveTypeIcons(param0);

    {
        ov16_0226A98C(param0, &param0->unk_4CC[0], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 64, 46, 1, &v3->unk_28[0]);
        ov16_0226A98C(param0, &param0->unk_4CC[1], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 192, 46, 1, &v3->unk_28[1]);
        ov16_0226A98C(param0, &param0->unk_4CC[2], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 64, 110, 1, &v3->unk_28[2]);
        ov16_0226A98C(param0, &param0->unk_4CC[3], NULL, FONT_SUBSCREEN, TEXT_COLOR(7, 8, 9), 3, 20023, 192, 110, 1, &v3->unk_28[3]);
    }

    {
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            textColor = ov16_0226B924(v0->unk_08[i], v0->unk_0C[i]);
            ov16_0226A98C(param0, &param0->unk_4CC[9 + i], NULL, FONT_SYSTEM, textColor, 4, 20023, Unk_ov16_022702D4[i][0], Unk_ov16_022702D4[i][1], 0, &v3->unk_78[i]);
            ov16_0226A98C(param0, &param0->unk_4CC[5 + i], NULL, FONT_SYSTEM, textColor, 4, 20023, Unk_ov16_02270284[i][0], Unk_ov16_02270284[i][1], 0, &v3->unk_C8[i]);
        }
    }

    {
        String *v5;

        v5 = MessageLoader_GetNewString(messageLoader, 929);
        ov16_0226A98C(param0, &param0->unk_4CC[4], v5, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 178, 1, NULL);
        String_Free(v5);
    }

    {
        int moveType;

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (v0->moveIDs[i] != 0) {
                moveType = MoveTable_LoadParam(v0->moveIDs[i], MOVEATTRIBUTE_TYPE);
                LoadMoveSelectPlttSlot(param0, moveType, i);
            } else {
                ov16_0226B088(param0, i);
                break;
            }
        }
    }

    {
        BgConfig *v7;

        v7 = BattleSystem_GetBgConfig(param0->battleSys);

        if (v0->moveIDs[0] == 0) {
            sub_020129D0(param0->unk_4CC[0].unk_00, 0);
            sub_020129D0(param0->unk_4CC[5].unk_00, 0);
            sub_020129D0(param0->unk_4CC[9].unk_00, 0);
        }

        if (v0->moveIDs[1] == 0) {
            sub_020129D0(param0->unk_4CC[1].unk_00, 0);
            sub_020129D0(param0->unk_4CC[6].unk_00, 0);
            sub_020129D0(param0->unk_4CC[10].unk_00, 0);
        }

        if (v0->moveIDs[2] == 0) {
            sub_020129D0(param0->unk_4CC[2].unk_00, 0);
            sub_020129D0(param0->unk_4CC[7].unk_00, 0);
            sub_020129D0(param0->unk_4CC[11].unk_00, 0);
        }

        if (v0->moveIDs[3] == 0) {
            sub_020129D0(param0->unk_4CC[3].unk_00, 0);
            sub_020129D0(param0->unk_4CC[8].unk_00, 0);
            sub_020129D0(param0->unk_4CC[12].unk_00, 0);
        }
    }
}

static void ov16_02269C7C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    String *v1, *v2;

    v0 = BattleSystem_GetMessageLoader(param0->battleSys);
    v1 = MessageLoader_GetNewString(v0, 940);
    v2 = MessageLoader_GetNewString(v0, 941);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v2, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(v1);
    String_Free(v2);
}

static void ov16_02269D14(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    String *v1, *v2;

    v0 = BattleSystem_GetMessageLoader(param0->battleSys);
    v1 = MessageLoader_GetNewString(v0, 1181);
    v2 = MessageLoader_GetNewString(v0, 1182);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v2, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(v1);
    String_Free(v2);
}

static void ov16_02269DB0(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    String *v1, *v2, *v3, *v4;
    StringTemplate *v5;
    UnkStruct_ov16_022623F0 *v6 = &param0->unk_1A.val4;
    v0 = BattleSystem_GetMessageLoader(param0->battleSys);
    v5 = BattleSystem_GetStringTemplate(param0->battleSys);
    v1 = MessageLoader_GetNewString(v0, 1186);
    v2 = MessageLoader_GetNewString(v0, 1187);
    v3 = String_Init(100, HEAP_ID_BATTLE);
    v4 = String_Init(100, HEAP_ID_BATTLE);

    StringTemplate_SetMoveName(v5, 0, v6->unk_00);
    StringTemplate_Format(v5, v3, v1);
    StringTemplate_Format(v5, v4, v2);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v4, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(v1);
    String_Free(v2);
    String_Free(v3);
    String_Free(v4);
}

static void ov16_02269E94(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    String *v1;

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_BGALL, 31, 0);

    v0 = BattleSystem_GetMessageLoader(param0->battleSys);
    v1 = MessageLoader_GetNewString(v0, 1260);

    {
        BgConfig *v2;
        NNSG2dScreenData *v3;
        void *v4;

        v4 = Graphics_GetScrnData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 46, 1, &v3, 5);
        MI_CpuCopy32(v3->rawData, param0->unk_3C[6], 0x800);
        Heap_Free(v4);

        v2 = BattleSystem_GetBgConfig(param0->battleSys);
        Bg_LoadTilemapBuffer(v2, 4, param0->unk_3C[6], 0x800);
        Bg_ScheduleTilemapTransfer(v2, 4);
    }

    {
        BgConfig *v5 = BattleSystem_GetBgConfig(param0->battleSys);

        MI_CpuClear32(param0->unk_3C[4], 0x800);
        Bg_LoadTilemapBuffer(v5, 5, param0->unk_3C[4], 0x800);
        Bg_ScheduleTilemapTransfer(v5, 5);
    }

    ov16_0226A98C(param0, &param0->unk_4CC[0], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 178, 1, NULL);
    String_Free(v1);
}

static void ov16_02269F68(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    String *v1, *v2, *v3, *v4;
    StringTemplate *v5;
    UnkStruct_ov16_022623F0 *v6 = &param0->unk_1A.val4;
    v0 = BattleSystem_GetMessageLoader(param0->battleSys);
    v5 = BattleSystem_GetStringTemplate(param0->battleSys);
    v1 = MessageLoader_GetNewString(v0, 1217);
    v2 = MessageLoader_GetNewString(v0, 1218);
    v3 = String_Init(100, HEAP_ID_BATTLE);
    v4 = String_Init(100, HEAP_ID_BATTLE);

    StringTemplate_SetMoveName(v5, 0, v6->unk_00);
    StringTemplate_Format(v5, v3, v1);
    StringTemplate_Format(v5, v4, v2);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v4, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(v1);
    String_Free(v2);
    String_Free(v3);
    String_Free(v4);
}

static void ov16_0226A04C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    MessageLoader *v0;
    String *v1, *v2, *v3, *v4;
    StringTemplate *v5;
    UnkStruct_ov16_022623F0 *v6 = &param0->unk_1A.val4;
    v0 = BattleSystem_GetMessageLoader(param0->battleSys);
    v5 = BattleSystem_GetStringTemplate(param0->battleSys);
    v1 = MessageLoader_GetNewString(v0, 1215);
    v2 = MessageLoader_GetNewString(v0, 1216);
    v3 = String_Init(100, HEAP_ID_BATTLE);
    v4 = String_Init(100, HEAP_ID_BATTLE);

    StringTemplate_SetMoveName(v5, 0, v6->unk_00);
    StringTemplate_Format(v5, v3, v1);
    StringTemplate_Format(v5, v4, v2);

    ov16_0226A98C(param0, &param0->unk_4CC[0], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 2, 20023, 128, 68, 1, NULL);
    ov16_0226A98C(param0, &param0->unk_4CC[1], v4, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, 128, 140, 1, NULL);

    String_Free(v1);
    String_Free(v2);
    String_Free(v3);
    String_Free(v4);
}

static void ov16_0226A12C(UnkStruct_ov16_02268A14 *param0, int param1, int param2)
{
    UnkStruct_ov16_02260F14 *v0;
    int i;
    MessageLoader *v2;
    u8 v3[4];
    String *v4, *v5;
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

    v2 = BattleSystem_GetMessageLoader(param0->battleSys);
    v8 = BattleSystem_GetStringTemplate(param0->battleSys);

    ov16_0226B20C(param0, v3, 0);
    ov16_0226A698(param0);
    ov16_0226AAF8(param0);
    ov16_0223F87C(param0->battleSys, v10);
    ov16_0223F858(param0->battleSys, v11);

    v4 = String_Init(12 + 2 + (5 * 2), HEAP_ID_BATTLE);

    for (i = 0; i < 4; i++) {
        v12 = v11[2 + i];

        if ((v0->unk_00[v12].unk_01_2 == 1) && (v3[i] == 1)) {
            if (v0->unk_00[v12].gender == 0) {
                v5 = MessageLoader_GetNewString(v2, 962);
            } else if (v0->unk_00[v12].gender == 1) {
                v5 = MessageLoader_GetNewString(v2, 963);
            } else {
                v5 = MessageLoader_GetNewString(v2, 964);
            }

            v6 = BattleSystem_GetPartyPokemon(param0->battleSys, v12, v0->unk_00[v12].partySlot);
            v7 = Pokemon_GetBoxPokemon(v6);

            StringTemplate_SetNickname(v8, 0, v7);
            StringTemplate_Format(v8, v4, v5);

            if (i & 1) {
                v9 = TEXT_COLOR(1, 2, 3);
            } else {
                v9 = TEXT_COLOR(4, 5, 6);
            }

            ov16_0226A98C(param0, &param0->unk_4CC[0 + i], v4, FONT_SUBSCREEN, v9, 6, 20023, Unk_ov16_02270328[i][0], Unk_ov16_02270328[i][1], 1, NULL);
            String_Free(v5);

            {
                switch (i) {
                case 1:
                    ov16_0226A7A4(param0, v6, 3, v0->unk_00[v12].curHP, v0->unk_00[v12].maxHP, v0->unk_00[v12].unk_02);
                    break;
                case 3:
                    ov16_0226A7A4(param0, v6, 5, v0->unk_00[v12].curHP, v0->unk_00[v12].maxHP, v0->unk_00[v12].unk_02);
                    break;
                }
            }
        } else {
            if (v3[i] == 0) {
                ov16_0226B0DC(param0, i);
            }
        }
    }

    String_Free(v4);

    {
        String *v13;

        v13 = MessageLoader_GetNewString(v2, 930);
        ov16_0226A98C(param0, &param0->unk_4CC[4], v13, FONT_SUBSCREEN, TEXT_COLOR(10, 11, 12), 2, 20023, Unk_ov16_02270328[4][0], Unk_ov16_02270328[4][1], 1, NULL);
        String_Free(v13);
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
        if (v0->moveIDs[param1 - 1] == 0) {
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
        BgConfig *v2;

        v2 = BattleSystem_GetBgConfig(param0->battleSys);
        Bg_FillTilemap(v2, 5, 0x6000 / 0x20 - 1);
        Bg_ScheduleTilemapTransfer(v2, 5);
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
    SpriteSystem *v0;
    SpriteManager *v1;
    int v2, v3, v4;
    PaletteData *v5;

    v0 = BattleSystem_GetSpriteSystem(param0->battleSys);
    v1 = BattleSystem_GetSpriteManager(param0->battleSys);
    v5 = BattleSystem_GetPaletteData(param0->battleSys);

    SpriteSystem_LoadPaletteBuffer(v5, 3, v0, v1, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 20022);
    SpriteSystem_LoadCellResObj(v0, v1, 19, PokeIcon32KCellsFileIndex(), 0, 20021);
    SpriteSystem_LoadAnimResObj(v0, v1, 19, PokeIcon32KAnimationFileIndex(), 0, 20021);
}

static void ov16_0226A718(UnkStruct_ov16_02268A14 *param0)
{
    SpriteManager *v0 = BattleSystem_GetSpriteManager(param0->battleSys);

    SpriteManager_UnloadCharObjById(v0, 20036);
    SpriteManager_UnloadCharObjById(v0, 20037);
    SpriteManager_UnloadCharObjById(v0, 20038);
    SpriteManager_UnloadCellObjById(v0, 20021);
    SpriteManager_UnloadAnimObjById(v0, 20021);
    SpriteManager_UnloadPlttObjById(v0, 20022);
}

static void ov16_0226A768(UnkStruct_ov16_02268A14 *param0)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (param0->unk_60C[i] != NULL) {
            Sprite_DeleteAndFreeResources(param0->unk_60C[i]);
            param0->unk_60C[i] = NULL;
        }

        if (param0->unk_61C[i] != NULL) {
            SysTask_Done(param0->unk_61C[i]);
            param0->unk_61C[i] = NULL;
        }
    }
}

static ManagedSprite *ov16_0226A7A4(UnkStruct_ov16_02268A14 *param0, Pokemon *param1, int param2, int param3, int param4, int param5)
{
    SpriteSystem *v0;
    SpriteManager *v1;
    u32 v2;
    SpriteTemplate v3;
    ManagedSprite *v4;
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

    v0 = BattleSystem_GetSpriteSystem(param0->battleSys);
    v1 = BattleSystem_GetSpriteManager(param0->battleSys);

    SpriteSystem_LoadCharResObj(v0, v1, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(param1), 0, NNS_G2D_VRAM_TYPE_2DSUB, v2);

    v3 = Unk_ov16_022704B0;
    v3.resources[0] = v2;
    v3.x = Unk_ov16_02270304[v5][0];
    v3.y = Unk_ov16_02270304[v5][1];
    v4 = SpriteSystem_NewSprite(v0, v1, &v3);

    ManagedSprite_SetPositionXYWithSubscreenOffset(v4, v3.x, v3.y, (192 + 80) << FX32_SHIFT);
    Sprite_SetExplicitPaletteOffsetAutoAdjust(v4->sprite, Pokemon_IconPaletteIndex(param1));

    {
        int v6 = 0;

        if ((param3 == 0) || (param5 == 2)) {
            v6 = 0;
        } else if (param5 == 3) {
            v6 = 5;
        } else {
            switch (HealthBar_Color(param3, param4, 8 * 6)) {
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

            ManagedSprite_SetAnim(v4, v6);
        }
    }

    ManagedSprite_TickFrame(v4);

    param0->unk_60C[v5] = v4;
    param0->unk_61C[v5] = SysTask_Start(ov16_0226A928, v4, 1300);

    return v4;
}

static void ov16_0226A928(SysTask *param0, void *param1)
{
    ManagedSprite *v0 = param1;
    ManagedSprite_TickFrame(v0);
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

static void ov16_0226A95C(const String *param0, int param1, int *param2, int *param3)
{
    int v0 = Font_CalcStringWidth(param1, param0, 0);
    int v1 = v0 / 8;

    if (FX_ModS32(v0, 8) != 0) {
        v1++;
    }

    *param2 = v0;
    *param3 = v1;
}

static void ov16_0226A98C(UnkStruct_ov16_02268A14 *param0, UnkStruct_ov16_0226A98C *param1, const String *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov16_0226AEA0 *param10)
{
    UnkStruct_020127E8 v0;
    Window v1;
    CharTransferAllocation v2;
    int v3;
    FontOAM *v4;
    BgConfig *v5;
    SpriteManager *v6;
    int v7, v8;

    GF_ASSERT(param1->unk_00 == NULL);

    v6 = BattleSystem_GetSpriteManager(param0->battleSys);
    v5 = BattleSystem_GetBgConfig(param0->battleSys);

    if (param10 == NULL) {
        ov16_0226A95C(param2, param3, &v7, &v8);
    } else {
        v7 = param10->unk_12;
        v8 = param10->unk_10;
    }

    if (param10 == NULL) {
        Window_Init(&v1);
        Window_AddToTopLeftCorner(v5, &v1, v8, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param3, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
    } else {
        v1 = param10->unk_00;
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_BATTLE);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 += (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT) - 8;

    v0.unk_00 = param0->unk_4C8;
    v0.unk_04 = &v1;
    v0.unk_08 = SpriteManager_GetSpriteList(v6);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.offset;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 100;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = HEAP_ID_BATTLE;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    FontOAM_SetXY(v4, param7, param8);

    if (param10 == NULL) {
        Window_Remove(&v1);
    }

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov16_0226AAC0(UnkStruct_ov16_02268A14 *param0)
{
    int i;

    for (i = 0; i < 13; i++) {
        if (param0->unk_4CC[i].unk_00 != NULL) {
            sub_02012870(param0->unk_4CC[i].unk_00);
            CharTransfer_ClearRange(&param0->unk_4CC[i].unk_04);
            param0->unk_4CC[i].unk_00 = NULL;
        }
    }
}

static void ov16_0226AAF8(UnkStruct_ov16_02268A14 *param0)
{
    u8 v0[4], v1[4];
    int j, i;
    u16 *v4, *v5;
    BgConfig *v6 = BattleSystem_GetBgConfig(param0->battleSys);
    v4 = Bg_GetTilemapBuffer(v6, 5);

    ov16_0226B20C(param0, v0, 0);

    if (v0[0] == 1) {
        ov16_0226B264(param0, 1, v1, 0);

        if (v1[3 - 1] == 1) {
            for (i = 12; i <= 16; i++) {
                v5 = &v4[i * 32];

                for (j = 0xf; j <= 0x10; j++) {
                    v5[j] = 0x2a4;
                }
            }
        }

        if (v1[4 - 1] == 1) {
            for (i = 10; i <= 10; i++) {
                v5 = &v4[i * 32];

                for (j = 2; j <= 12; j++) {
                    v5[j] = 0x2a4;
                }
            }
        }
    }

    if (v0[1] == 1) {
        ov16_0226B264(param0, 2, v1, 0);

        if (v1[3 - 1] == 1) {
            for (i = 10; i <= 10; i++) {
                v5 = &v4[i * 32];

                for (j = 0x13; j <= 0x1d; j++) {
                    v5[j] = 0x2a4;
                }
            }
        }

        if (v1[4 - 1] == 1) {
            for (i = 3; i <= 7; i++) {
                v5 = &v4[i * 32];

                for (j = 0xf; j <= 0x10; j++) {
                    v5[j] = 0x2a4;
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
    int j, i;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            Heap_Free(param0->unk_68[i].moveIcons[j]);

            if (param0->unk_68[i].unk_28[j].unk_00.pixels != NULL) {
                Window_Remove(&param0->unk_68[i].unk_28[j].unk_00);
            }

            if (param0->unk_68[i].unk_78[j].unk_00.pixels != NULL) {
                Window_Remove(&param0->unk_68[i].unk_78[j].unk_00);
            }

            if (param0->unk_68[i].unk_C8[j].unk_00.pixels != NULL) {
                Window_Remove(&param0->unk_68[i].unk_C8[j].unk_00);
            }
        }
    }
}

void ov16_0226AC98(UnkStruct_ov16_02268A14 *param0, int param1, const MoveDisplayInfo *param2)
{
    UnkStruct_ov16_0226ABD4 *v0;
    void *v1;
    NNSG2dCharacterData *v2;
    int i, v3, v5;
    String *v6;
    String *v7;
    String *v8;
    String *v9;
    StringTemplate *v10;
    TextColor v11;
    MessageLoader *v12 = BattleSystem_GetMessageLoader(param0->battleSys);
    v0 = ov16_0226ABD4(param0, param1);
    v3 = sub_0208C098(6);
    v9 = MessageLoader_GetNewString(v12, 938);
    v10 = BattleSystem_GetStringTemplate(param0->battleSys);
    v7 = String_Init((2 + 2 + 1 + 2) * 2 + 2, HEAP_ID_BATTLE);
    v8 = MessageLoader_GetNewString(v12, 937);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if ((param2->move[i] != v0->unk_00.move[i]) && (param2->move[i] != 0)) {
            v5 = MoveTable_LoadParam(param2->move[i], MOVEATTRIBUTE_TYPE);
            v1 = Graphics_GetCharData(TypeIcon_GetNARC(), TypeIcon_GetChar(v5), 1, &v2, HEAP_ID_BATTLE);
            MI_CpuCopy32(v2->pRawData, v0->moveIcons[i], v3);
            Heap_Free(v1);
        }

        if ((v0->unk_28[i].unk_00.pixels == NULL) || ((param2->move[i] != v0->unk_00.move[i]) && (param2->move[i] != 0))) {
            v6 = MessageUtil_MoveName(param2->move[i], HEAP_ID_BATTLE);
            ov16_0226AEA0(param0, v6, FONT_SUBSCREEN, &v0->unk_28[i], TEXT_COLOR(7, 8, 9));
            String_Free(v6);
        }

        if ((v0->unk_78[i].unk_00.pixels == NULL) || (v0->unk_C8[i].unk_00.pixels == NULL) || (param2->move[i] != 0) || (param2->move[i] != v0->unk_00.move[i]) || (param2->curPP[i] != v0->unk_00.curPP[i]) || (param2->maxPP[i] != v0->unk_00.maxPP[i])) {
            StringTemplate_SetNumber(v10, 0, param2->curPP[i], 2, 1, 0);
            StringTemplate_SetNumber(v10, 1, param2->maxPP[i], 2, 1, 0);
            StringTemplate_Format(v10, v7, v8);

            v11 = ov16_0226B924(param2->curPP[i], param2->maxPP[i]);

            if ((v0->unk_78[i].unk_00.pixels == NULL) || (param2->move[i] != v0->unk_00.move[i]) || (param2->curPP[i] != v0->unk_00.curPP[i])) {
                ov16_0226AEA0(param0, v7, FONT_SYSTEM, &v0->unk_78[i], v11);
            }

            if ((v0->unk_C8[i].unk_00.pixels == NULL) || (param2->move[i] != v0->unk_00.move[i]) || (param2->curPP[i] != v0->unk_00.curPP[i])) {
                ov16_0226AEA0(param0, v9, FONT_SYSTEM, &v0->unk_C8[i], v11);
            }
        }
    }

    String_Free(v9);
    String_Free(v8);
    String_Free(v7);

    v0->unk_00 = *param2;
}

static void ov16_0226AEA0(UnkStruct_ov16_02268A14 *param0, const String *param1, enum Font param2, UnkStruct_ov16_0226AEA0 *param3, TextColor param4)
{
    int v0, v1;

    ov16_0226A95C(param1, param2, &v0, &v1);

    param3->unk_12 = v0;
    param3->unk_10 = v1;

    if (param3->unk_00.pixels != NULL) {
        Window_Remove(&param3->unk_00);
    }

    Window_Init(&param3->unk_00);
    Window_AddToTopLeftCorner(BattleSystem_GetBgConfig(param0->battleSys), &param3->unk_00, v1, 16 / 8, 0, 0);
    Text_AddPrinterWithParamsColorAndSpacing(&param3->unk_00, param2, param1, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
}

static void DrawMoveTypeIcons(UnkStruct_ov16_02268A14 *param0)
{
    int i;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    SpriteTemplate spriteTemplate;
    UnkStruct_ov16_02260C00 *v4;
    int moveType;
    int v6;
    UnkStruct_ov16_0226ABD4 *v7;

    v4 = &param0->unk_1A.val2;
    spriteSys = BattleSystem_GetSpriteSystem(param0->battleSys);
    spriteMan = BattleSystem_GetSpriteManager(param0->battleSys);
    v7 = ov16_0226ABD4(param0, param0->unk_66A);
    spriteTemplate = Unk_ov16_0227047C;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        GF_ASSERT(param0->moveSelectSprites[i] == NULL);

        if (v4->moveIDs[i] != 0) {
            moveType = MoveTable_LoadParam(v4->moveIDs[i], MOVEATTRIBUTE_TYPE);
            spriteTemplate.resources[0] = 20025 + i;
            spriteTemplate.x = Unk_ov16_022702B4[i][0];
            spriteTemplate.y = Unk_ov16_022702B4[i][1];

            param0->moveSelectSprites[i] = TypeIcon_NewTypeIconSprite(spriteSys, spriteMan, moveType, &spriteTemplate);

            ManagedSprite_SetPositionXYWithSubscreenOffset(param0->moveSelectSprites[i], spriteTemplate.x, spriteTemplate.y, (192 + 80) << FX32_SHIFT);

            {
                void *v8;
                NNSG2dImageProxy *v9;

                v8 = G2S_GetOBJCharPtr();
                v9 = Sprite_GetImageProxy(param0->moveSelectSprites[i]->sprite);

                MI_CpuCopy16(v7->moveIcons[i], (void *)((u32)v8 + v9->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DSUB]), sub_0208C098(6));
            }
        }
    }
}

static void ov16_0226AFF4(UnkStruct_ov16_02268A14 *param0)
{
    int i;
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->battleSys);
    SpriteManager *v2 = BattleSystem_GetSpriteManager(param0->battleSys);

    for (i = 0; i < 4; i++) {
        if (param0->moveSelectSprites[i] != NULL) {
            TypeIcon_DeleteSprite(param0->moveSelectSprites[i]);
            param0->moveSelectSprites[i] = NULL;
        }
    }
}

static void ov16_0226B028(UnkStruct_ov16_02268A14 *param0)
{
    int i;
    SpriteSystem *v1 = BattleSystem_GetSpriteSystem(param0->battleSys);
    SpriteManager *v2 = BattleSystem_GetSpriteManager(param0->battleSys);

    for (i = 0; i < 4; i++) {
        if (param0->unk_5FC[i] != NULL) {
            CategoryIcon_DeleteSprite(param0->unk_5FC[i]);
            CategoryIcon_UnloadChar(v2, 20029 + i);
            param0->unk_5FC[i] = NULL;
        }
    }
}

static void LoadMoveSelectPlttSlot(UnkStruct_ov16_02268A14 *param0, enum PokemonType moveType, int moveSlot)
{
    LoadMoveSelectPltt(BattleSystem_GetPaletteData(param0->battleSys), moveType, 5, PLTTBUF_SUB_BG, PLTT_8 + moveSlot);
}

static void ov16_0226B088(UnkStruct_ov16_02268A14 *param0, int param1)
{
    PaletteData *paletteSys;
    int i;

    paletteSys = BattleSystem_GetPaletteData(param0->battleSys);

    for (i = param1; i < 4; i++) {
        ov16_0226B31C(param0, &Unk_ov16_0227022C[i], &Unk_ov16_02270274[i], 3, 0);
        PaletteData_LoadBuffer(paletteSys, &param0->unk_58[0xe * 16], 1, (8 + i) * 16, 0x20);
    }
}

static void ov16_0226B0DC(UnkStruct_ov16_02268A14 *param0, int param1)
{
    PaletteData *v0;
    int v1;
    const u8 v2[] = { 6, 0xc, 0xd, 5 };
    BgConfig *v3 = BattleSystem_GetBgConfig(param0->battleSys);
    v0 = BattleSystem_GetPaletteData(param0->battleSys);

    ov16_0226B31C(param0, &Unk_ov16_022701FC[param1], &Unk_ov16_022702C4[param1], 4, 0);

    PaletteData_LoadBuffer(v0, &param0->unk_58[0xe * 16], 1, v2[param1] * 16, 0x20);
    Bg_ScheduleTilemapTransfer(v3, 4);
    Bg_FillTilemapRect(v3, 5, 0x6000 / 0x20 - 1, Unk_ov16_022702C4[param1].unk_02, Unk_ov16_022702C4[param1].unk_00, Unk_ov16_022702C4[param1].unk_03 - Unk_ov16_022702C4[param1].unk_02 + 1, Unk_ov16_022702C4[param1].unk_01 - Unk_ov16_022702C4[param1].unk_00 + 1, 17);
    Bg_ScheduleTilemapTransfer(v3, 5);
}

static void ov16_0226B198(void)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (4 + i != 6) {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 0);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 1);
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
    int i;
    u8 v2[6];
    int v3;

    v0 = &param0->unk_1A.val3;
    ov16_0223F858(param0->battleSys, v2);

    for (i = 0; i < 4; i++) {
        v3 = v2[2 + i];

        if ((param2 == 1) && (v0->unk_00[v3].unk_01_2 == 0)) {
            param1[i] = 0;
        } else {
            param1[i] = Unk_ov16_022705B0[param0->unk_66C][i];
        }
    }
}

static void ov16_0226B264(UnkStruct_ov16_02268A14 *param0, int param1, u8 *param2, int param3)
{
    UnkStruct_ov16_02260F14 *v0;
    int i;

    v0 = &param0->unk_1A.val3;

    switch (param0->unk_66C) {
    case 0:
    case 8:
    case 9:
    case 10:
    case 11:
        for (i = 0; i < 4; i++) {
            if (i == param1 - 1) {
                param2[i] = 1;
            } else {
                param2[i] = 0;
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
    BgConfig *v2;
    PaletteData *v3;
    int v4, v5;

    v1 = &v0->unk_6A0;
    v3 = BattleSystem_GetPaletteData(v0->battleSys);
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

        PaletteData_Blend(v3, 1, v1->unk_09 * 16, 16, (v1->unk_04 >> 8) / 2, 0x7fff);
        PaletteData_Blend(v3, 1, v1->unk_09 * 16 + 1, 1, v1->unk_04 >> 8, 0x7b1a);
        PaletteData_Blend(v3, 1, v1->unk_09 * 16 + 0xa, 1, v1->unk_04 >> 8, 0x4634);

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
    BgConfig *v2;
    PaletteData *v3;
    int i, v5;
    u8 v6[4];

    v1 = &v0->unk_6A0;
    v3 = BattleSystem_GetPaletteData(v0->battleSys);
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

        for (i = 0; i < 4; i++) {
            if (v6[i] == 1) {
                PaletteData_Blend(v3, 1, Unk_ov16_02270A0C[i] * 16, 16, (v1->unk_04 >> 8) / 2, 0x7fff);
                PaletteData_Blend(v3, 1, Unk_ov16_02270A0C[i] * 16 + 1, 1, v1->unk_04 >> 8, 0x7b1a);
                PaletteData_Blend(v3, 1, Unk_ov16_02270A0C[i] * 16 + 0xa, 1, v1->unk_04 >> 8, 0x4634);
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
    int j, i;
    BgConfig *v2;
    u16 *v3, *v4;
    u16 *v5, *v6;
    int v7;

    v2 = BattleSystem_GetBgConfig(param0->battleSys);
    v3 = Bg_GetTilemapBuffer(v2, 4);
    v5 = param0->unk_3C[param3];
    v7 = param1[param4];

    for (i = param2->unk_00; i <= param2->unk_01; i++) {
        v4 = &v3[i * 32];
        v6 = &v5[i * 32];

        for (j = param2->unk_02; j <= param2->unk_03; j++) {
            v4[j] = v6[j] + v7;
        }
    }

    Bg_ScheduleTilemapTransfer(v2, 4);
}

static void ov16_0226B390(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    BgConfig *v1;
    int v2, v3;

    v1 = BattleSystem_GetBgConfig(v0->battleSys);

    switch (v0->unk_67C.unk_00) {
    case 0:
        ov16_0226B31C(v0, v0->unk_67C.unk_04_val3.unk_00, v0->unk_67C.unk_04_val3.unk_04, v0->unk_67C.unk_04_val3.unk_0C, 2);
        FontOAM_GetXY(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, &v2, &v3);
        FontOAM_SetXY(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, v2, v3 + -2);

        if ((v0->unk_67C.unk_04_val3.unk_0E != 0xff) && (v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E] != NULL)) {
            ManagedSprite_OffsetPositionXY(v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E], 0, -2);
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
        FontOAM_GetXY(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, &v2, &v3);
        FontOAM_SetXY(v0->unk_4CC[v0->unk_67C.unk_04_val3.unk_0D].unk_00, v2, v3 + 1);

        if ((v0->unk_67C.unk_04_val3.unk_0E != 0xff) && (v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E] != NULL)) {
            ManagedSprite_OffsetPositionXY(v0->unk_60C[v0->unk_67C.unk_04_val3.unk_0E], 0, 1);
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
    BgConfig *v1;
    int v2, v3;
    int v4, v5, v6;
    int v7, v8, v9;
    UnkStruct_ov16_02260C00 *v10;

    v1 = BattleSystem_GetBgConfig(v0->battleSys);
    v10 = &v0->unk_1A.val2;

    switch (v0->unk_67C.unk_04_val3.unk_08) {
    case 1:
        v4 = 0;
        v5 = 9;
        v6 = 5;
        v7 = 0;
        v8 = 0;
        v9 = v10->moveIDs[0];
        break;
    case 2:
        v4 = 1;
        v5 = 10;
        v6 = 6;
        v7 = 1;
        v8 = 1;
        v9 = v10->moveIDs[1];
        break;
    case 3:
        v4 = 2;
        v5 = 11;
        v6 = 7;
        v7 = 2;
        v8 = 2;
        v9 = v10->moveIDs[2];
        break;
    case 4:
        v4 = 3;
        v5 = 12;
        v6 = 8;
        v7 = 3;
        v8 = 3;
        v9 = v10->moveIDs[3];
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
            FontOAM_GetXY(v0->unk_4CC[v4].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[v4].unk_00, v2, v3 + -2);
            FontOAM_GetXY(v0->unk_4CC[v5].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[v5].unk_00, v2, v3 + -2);
            FontOAM_GetXY(v0->unk_4CC[v6].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[v6].unk_00, v2, v3 + -2);

            if (v9 != 0) {
                Sprite_OffsetPositionXY(v0->moveSelectSprites[v7]->sprite, 0, -2);

                if (v0->unk_5FC[v7] != NULL) {
                    Sprite_OffsetPositionXY(v0->unk_5FC[v7]->sprite, 0, -2);
                }
            }
        } else {
            FontOAM_GetXY(v0->unk_4CC[4].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[4].unk_00, v2, v3 + -2);
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
            FontOAM_GetXY(v0->unk_4CC[v4].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[v4].unk_00, v2, v3 + 1);
            FontOAM_GetXY(v0->unk_4CC[v5].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[v5].unk_00, v2, v3 + 1);
            FontOAM_GetXY(v0->unk_4CC[v6].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[v6].unk_00, v2, v3 + 1);

            if (v9 != 0) {
                Sprite_OffsetPositionXY(v0->moveSelectSprites[v7]->sprite, 0, 1);

                if (v0->unk_5FC[v7] != NULL) {
                    Sprite_OffsetPositionXY(v0->unk_5FC[v7]->sprite, 0, 1);
                }
            }
        } else {
            FontOAM_GetXY(v0->unk_4CC[4].unk_00, &v2, &v3);
            FontOAM_SetXY(v0->unk_4CC[4].unk_00, v2, v3 + 1);
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
    BgConfig *v1;
    int i, v2, v3;
    u8 v4[4];

    v1 = BattleSystem_GetBgConfig(v0->battleSys);

    switch (v0->unk_67C.unk_00) {
    case 0:
        ov16_0226B264(v0, v0->unk_67C.unk_04_val4.unk_1C, v4, 1);

        for (i = 0; i < 4; i++) {
            if (v4[i] == 1) {
                ov16_0226B31C(v0, Unk_ov16_022703D4[i], &Unk_ov16_0227033C[i], 4, 2);

                if (v0->unk_4CC[0 + i].unk_00 != NULL) {
                    FontOAM_GetXY(v0->unk_4CC[0 + i].unk_00, &v2, &v3);
                    FontOAM_SetXY(v0->unk_4CC[0 + i].unk_00, v2, v3 + -2);
                }

                if (v0->unk_60C[i] != NULL) {
                    ManagedSprite_OffsetPositionXY(v0->unk_60C[i], 0, -2);
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

        for (i = 0; i < 4; i++) {
            if (v4[i] == 1) {
                ov16_0226B31C(v0, Unk_ov16_022703D4[i], &Unk_ov16_0227033C[i], 4, 1);

                if (v0->unk_4CC[0 + i].unk_00 != NULL) {
                    FontOAM_GetXY(v0->unk_4CC[0 + i].unk_00, &v2, &v3);
                    FontOAM_SetXY(v0->unk_4CC[0 + i].unk_00, v2, v3 + 1);
                }

                if (v0->unk_60C[i] != NULL) {
                    ManagedSprite_OffsetPositionXY(v0->unk_60C[i], 0, 1);
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
    BgConfig *v1 = BattleSystem_GetBgConfig(v0->unk_00->battleSys);

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

        Bg_SetOffset(v1, BG_LAYER_SUB_0, 0, 0);
        Bg_SetOffset(v1, BG_LAYER_SUB_0, 3, 0);
        Bg_SetOffset(v1, BG_LAYER_SUB_1, 0, 0);
        Bg_SetOffset(v1, BG_LAYER_SUB_1, 3, 0);
        BattleSystem_SetCommandSelectionFlags(v0->unk_00->battleSys, 1);
        Heap_Free(param1);
        SysTask_Done(param0);

        return;
    }
}

static void ov16_0226BA88(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0226B988 *v0 = param1;
    BgConfig *v1;
    s32 v2, v3, v4;

    v1 = BattleSystem_GetBgConfig(v0->unk_00->battleSys);

    if (v0->unk_12 == 4) {
        v4 = 255 - v0->unk_0C;

        if (v4 > 0) {
            v4 = 0;
        }

        Bg_SetOffset(v1, BG_LAYER_SUB_0, 0, v4);
        Bg_SetOffset(v1, BG_LAYER_SUB_1, 0, 255 - v0->unk_0C);
        v2 = -v0->unk_08 / 100;
    } else {
        v4 = v0->unk_0C;

        if (v4 < 0) {
            v4 = 0;
        }

        Bg_SetOffset(v1, BG_LAYER_SUB_0, 0, v4);
        Bg_SetOffset(v1, BG_LAYER_SUB_1, 0, v0->unk_0C);

        v2 = 255 + v0->unk_08 / 100;
    }

    Bg_SetOffset(v1, BG_LAYER_SUB_0, 3, 0);
    Bg_SetOffset(v1, BG_LAYER_SUB_1, 3, 0);

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
        G2S_SetWnd0Position(0, 0, v2, 18 * 8);
    } else {
        if (v2 == 0) {
            v2 = 1;
        }

        G2S_SetWnd0Position(v2, 0, 0, 18 * 8);
    }

    G2S_SetWnd1Position(0, 18 * 8, 255, v3);
    v0->unk_10 = v0->unk_0E;
}

static void ov16_0226BB94(void *param0)
{
    UnkStruct_ov16_0226B988 *v0 = param0;
    s32 v1, v2;

    v1 = GX_GetVCount();

    if (v1 == (18 * 8)) {
        BgConfig *v3 = BattleSystem_GetBgConfig(v0->unk_00->battleSys);

        Bg_SetOffset(v3, BG_LAYER_SUB_0, 0, 0);
        Bg_SetOffset(v3, BG_LAYER_SUB_0, 3, v0->unk_10);
        Bg_SetOffset(v3, BG_LAYER_SUB_1, 0, 0);
        Bg_SetOffset(v3, BG_LAYER_SUB_1, 3, v0->unk_10);
    } else if (v1 > 192) {
        BgConfig *v4 = BattleSystem_GetBgConfig(v0->unk_00->battleSys);

        if (v0->unk_12 == 4) {
            v2 = 255 - v0->unk_0C;

            if (v2 > 0) {
                v2 = 0;
            }

            Bg_SetOffset(v4, BG_LAYER_SUB_0, 0, 255 - v0->unk_0C);
            Bg_SetOffset(v4, BG_LAYER_SUB_1, 0, 255 - v0->unk_0C);
        } else {
            v2 = v0->unk_0C;

            if (v2 < 0) {
                v2 = 0;
            }

            Bg_SetOffset(v4, BG_LAYER_SUB_0, 0, v0->unk_0C);
            Bg_SetOffset(v4, BG_LAYER_SUB_1, 0, v0->unk_0C);
        }

        Bg_SetOffset(v4, BG_LAYER_SUB_0, 3, 0);
        Bg_SetOffset(v4, BG_LAYER_SUB_1, 3, 0);
    }
}

static void ov16_0226BC50(SysTask *param0, void *param1)
{
    UnkStruct_ov16_02268A14 *v0 = param1;
    const UnkStruct_ov16_02270670 *v1;
    int i;

    v1 = &Unk_ov16_02270670[v0->unk_66B];

    for (i = 0; i < 4; i++) {
        if (v1->unk_04_val2[i] == 0xffff) {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 0);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + i, 1);
        }
    }

    for (i = 0; i < 4; i++) {
        Bg_SetPriority(BG_LAYER_SUB_0 + i, v1->unk_0C_val2[i]);
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

    v3 = BattleSystem_GetPaletteData(v0->battleSys);

    if (PaletteData_GetSelectedBuffersMask(v3) != 0) {
        return;
    }

    {
        PaletteData_Blend(v3, 1, 16 * 0 + 1, 1, v0->unk_676 >> 8, 0x7e37);

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
    int v4 = RenderControlFlags_GetSpeedUpBattle();
    int v5 = RenderControlFlags_GetWaitBattle();

    RenderControlFlags_ZeroSpeedUpBattle();
    RenderControlFlags_ZeroWaitBattle();

    v1 = BattleSystem_GetPaletteData(v0->battleSys);

    if (PaletteData_GetSelectedBuffersMask(v1) != 0) {
        return;
    }

    v2 = PaletteData_GetFadedBuffer(v1, 1);
    v3 = (16 - 8) * 2;

    if (gSystem.touchHeld && ((v4 == 1) || (v5 == 1))) {
        if (memcmp(&v2[8], &v0->unk_5C[8], v3) == 0) {
            if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_FRONTIER) {
                MI_CpuCopy16(&v0->unk_60[0], &v2[0], 0x20);
                MI_CpuCopy16(&v0->unk_60[16], &v2[7 * 16], 0x20);
            } else {
                MI_CpuCopy16(&v0->unk_60[8], &v2[8], v3);
            }
        }
    } else {
        if (memcmp(&v2[8], &v0->unk_60[8], v3) == 0) {
            if (BattleSystem_GetBattleType(v0->battleSys) & BATTLE_TYPE_FRONTIER) {
                MI_CpuCopy16(&v0->unk_5C[0], &v2[0], 0x20);
                MI_CpuCopy16(&v0->unk_5C[16], &v2[7 * 16], 0x20);
            } else {
                MI_CpuCopy16(&v0->unk_5C[8], &v2[8], v3);
            }
        }
    }
}

static int BattleSystem_MenuKeys(UnkStruct_ov16_02268A14 *param0)
{
    MenuCursor *cursor;
    const UnkStruct_ov16_02270670 *v1;

    cursor = &param0->cursor;
    v1 = &Unk_ov16_02270670[param0->unk_66B];

    if (v1->unk_20 == NULL) {
        return 0xffffffff;
    }

    if (!cursor->isActive) { // Check if the cursor is inactive
        if ((param0->unk_6C0 == 1) || (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y | PAD_KEY_RIGHT | PAD_KEY_LEFT | PAD_KEY_UP | PAD_KEY_DOWN))) {
            if (param0->unk_6C0 == 0) { // If a key was pressed, play sfx
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }

            cursor->isActive = TRUE; // Activate the cursor
            param0->unk_6C0 = 0; // Unpress the key
            v1->unk_20(param0, 1);
        }

        return 0xffffffff;
    }

    return v1->unk_20(param0, 0);
}

static int BattleSystem_Cursor_Menu(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden)
{
    // Returns the ID of the menu button pressed, or -1 if nothing was pressed
    MenuCursor *cursor;
    u32 button;
    const UnkStruct_ov16_02270670 *v2;
    int i, buttonId, v5;
    UnkStruct_ov16_0226C378 *v6;

    cursor = &param0->cursor;
    v2 = &Unk_ov16_02270670[param0->unk_66B];
    v5 = BattleSystem_GetBattlerOfType(param0->battleSys, param0->unk_66A);
    v6 = ov16_02263B0C(BattleSystem_GetBattlerData(param0->battleSys, v5));

    if (cursorHidden == TRUE) {
        cursor->x = v6->unk_00;
        cursor->y = v6->unk_01;
        buttonId = sBattleMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[buttonId].rect.left + 8, v2->unk_14[buttonId].rect.right - 8, v2->unk_14[buttonId].rect.top + 8, v2->unk_14[buttonId].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    switch (param0->unk_66B) {
    case 6:
    case 5: // fight menus where bag, run and pokemon aren't available
        button = BattleSystem_MoveCursor(cursor, 1, 1, sBattleMenuButtonLayout[0]);
        break;
    default: // normal fight menu, with bag, run and pokemon
        buttonId = sBattleMenuButtonLayout[cursor->y][cursor->x];

        if ((buttonId == 3) && (gSystem.pressedKeys & PAD_KEY_UP)) {
            (void)0; // Do nothing if run is selected and up is pressed
        } else {
            button = BattleSystem_MoveCursor(cursor, 3, 2, sBattleMenuButtonLayout[0]); // temporarily set button to the id of the new button

            if ((button == 0) && (buttonId == 0)) { // if fight is selected, and is still selected
                if (gSystem.pressedKeys & PAD_KEY_LEFT) { // Move to bag on the bottom row
                    cursor->x = 0;
                    cursor->y = 1;
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    button = PAD_KEY_LEFT;
                } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) { // Move to pokemon on the bottom row
                    cursor->x = 2;
                    cursor->y = 1;
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    button = PAD_KEY_RIGHT;
                }
            }
        }
        break;
    }

    switch (button) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        buttonId = sBattleMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[buttonId].rect.left + 8, v2->unk_14[buttonId].rect.right - 8, v2->unk_14[buttonId].rect.top + 8, v2->unk_14[buttonId].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        return sBattleMenuButtonLayout[cursor->y][cursor->x];
    case PAD_BUTTON_B:
        if (param0->unk_66F == 1) {
            for (i = 0; i < v2->unk_14[i].rect.top != 0xff; i++) {
                if (4 == v2->unk_18[i]) {
                    return i;
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
    int v1, j, i;

    v1 = BattleSystem_GetBattlerOfType(param0->battleSys, param0->unk_66A);

    if ((param1 != 3) || (param0->unk_6C1 == 0)) {
        v0 = ov16_02263B0C(BattleSystem_GetBattlerData(param0->battleSys, v1));

        for (i = 0; i < 2; i++) {
            for (j = 0; j < 3; j++) {
                if (param1 == sBattleMenuButtonLayout[i][j]) {
                    v0->unk_00 = j;
                    v0->unk_01 = i;

                    return;
                }
            }
        }
    }
}

static int BattleSystem_Cursor_PalPark(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden)
{
    MenuCursor *cursor;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;

    cursor = &param0->cursor;
    v2 = &Unk_ov16_02270670[param0->unk_66B];

    if (cursorHidden == TRUE) {
        cursor->x = 0;
        cursor->y = 0;
        v4 = palParkMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    v1 = BattleSystem_MoveCursor(cursor, 1, 2, palParkMenuButtonLayout[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v4 = palParkMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        return palParkMenuButtonLayout[cursor->y][cursor->x];
    case PAD_BUTTON_B:
        break;
    }

    return 0xffffffff;
}

static int BattleSystem_Cursor_Moves(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden)
{
    MenuCursor *cursor;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, i;
    u8 v5[3][2];
    UnkStruct_ov16_02260C00 *v6;
    UnkStruct_ov16_0226C378 *v7 = ov16_02263B0C(BattleSystem_GetBattlerData(param0->battleSys, BattleSystem_GetBattlerOfType(param0->battleSys, param0->unk_66A)));
    cursor = &param0->cursor;
    v2 = &Unk_ov16_02270670[param0->unk_66B];
    v6 = &param0->unk_1A.val2;

    if (cursorHidden == TRUE) {
        cursor->x = v7->unk_02;
        cursor->y = v7->unk_03;
        v3 = sMoveMenuButtonLayout[cursor->y][cursor->x];

        if ((v3 != 0) && (v6->moveIDs[v3 - 1] == 0)) {
            v7->unk_02 = 0;
            v7->unk_03 = 0;
            cursor->x = 0;
            cursor->y = 0;
            v3 = sMoveMenuButtonLayout[cursor->y][cursor->x];
        }

        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    MI_CpuCopy8(sMoveMenuButtonLayout, v5, 3 * 2);
    v1 = BattleSystem_MoveCursor(cursor, 2, 3, v5[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v3 = sMoveMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        return sMoveMenuButtonLayout[cursor->y][cursor->x];
    case PAD_BUTTON_B:
        for (i = 0; i < v2->unk_14[i].rect.top != 0xff; i++) {
            if (0xff == v2->unk_18[i]) {
                return i;
            }
        }

        break;
    }

    return 0xffffffff;
}

static void ov16_0226C378(UnkStruct_ov16_02268A14 *param0, int param1)
{
    UnkStruct_ov16_0226C378 *v0;
    int v1, j, i;

    if (param1 == 0) {
        return;
    }

    v1 = BattleSystem_GetBattlerOfType(param0->battleSys, param0->unk_66A);
    v0 = ov16_02263B0C(BattleSystem_GetBattlerData(param0->battleSys, v1));

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 2; j++) {
            if (param1 == sMoveMenuButtonLayout[i][j]) {
                v0->unk_02 = j;
                v0->unk_03 = i;
                return;
            }
        }
    }
}

static int BattleSystem_Cursor_Battler(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden)
{
    MenuCursor *cursor;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;
    int v5 = 0;
    u8 v6[4], v7[4];
    u8 v8[3][2];
    int i, j, v11, v12;
    int v13, v14, v15, v16, v17, v18;
    int v19, v20, v21, v22;
    int v23, v24, v25, v26;
    int v27, v28;
    int v29;
    UnkStruct_ov16_0226C378 *v30 = ov16_02263B0C(BattleSystem_GetBattlerData(param0->battleSys, BattleSystem_GetBattlerOfType(param0->battleSys, param0->unk_66A)));
    cursor = &param0->cursor;
    v2 = &Unk_ov16_02270670[param0->unk_66B];

    MI_CpuCopy8(sSelectTargetMenuButtonLayout, v8, 3 * 2);

    ov16_0226B20C(param0, v6, 1);
    ov16_0226B20C(param0, v7, 0);

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            if (v7[v8[i][j]] == 0) {
                v8[i][j] = 0xff;
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

    if (cursorHidden == TRUE) {
        if (v5 == 0) {
            if (v30->unk_06 == param0->unk_66C) {
                cursor->x = v30->unk_04;
                cursor->y = v30->unk_05;
            } else if (v6[5 - 2] == 1) {
                cursor->x = 0;
                cursor->y = 0;
            } else if (v6[3 - 2] == 1) {
                cursor->x = 1;
                cursor->y = 0;
            } else if (v6[2 - 2] == 1) {
                cursor->x = 0;
                cursor->y = 1;
            } else {
                cursor->x = 1;
                cursor->y = 1;
            }

            v4 = sSelectTargetMenuButtonLayout[cursor->y][cursor->x];
            BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        } else {
            cursor->x = 0;
            cursor->y = 0;

            if (((v28 == -1) && (v27 == -1)) || (v17 == -1)) {
                BattleSystem_DrawCursor(param0->unk_6B8, v13, v14, v15, v16, (192 + 80) << FX32_SHIFT);
            } else if ((v28 != -1) && (v27 == -1)) {
                BattleSystem_DrawCursorSprites(param0->unk_6B8, v13, v15, v14, v15, v13, v28, v14, v16, (192 + 80) << FX32_SHIFT);
            } else {
                BattleSystem_DrawCursorSprites(param0->unk_6B8, v13, v15, v14, v15, v13, v16, v14, v27, (192 + 80) << FX32_SHIFT);
            }

            if (v17 != -1) {
                ov16_0226DDC0(param0->unk_6B8, v17, v18, v29, (192 + 80) << FX32_SHIFT);
            }
        }

        return 0xffffffff;
    }

    if (v5 == 0) {
        v1 = BattleSystem_MoveCursor(cursor, v11, v12, v8[0]);
    } else {
        v1 = BattleSystem_MoveCursor(cursor, v11, v12, NULL);
    }

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        if (v5 == 0) {
            v4 = sSelectTargetMenuButtonLayout[cursor->y][cursor->x];
            BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v4].rect.left + 8, v2->unk_14[v4].rect.right - 8, v2->unk_14[v4].rect.top + 8, v2->unk_14[v4].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        } else {
            if (cursor->y == 0) {
                if (((v27 == -1) && (v28 == -1)) || (v17 == -1)) {
                    BattleSystem_DrawCursor(param0->unk_6B8, v13, v14, v15, v16, (192 + 80) << FX32_SHIFT);
                } else if ((v28 != -1) && (v27 == -1)) {
                    BattleSystem_DrawCursorSprites(param0->unk_6B8, v13, v15, v14, v15, v13, v28, v14, v16, (192 + 80) << FX32_SHIFT);
                } else {
                    BattleSystem_DrawCursorSprites(param0->unk_6B8, v13, v15, v14, v15, v13, v16, v14, v27, (192 + 80) << FX32_SHIFT);
                }

                if (v17 != -1) {
                    ov16_0226DDC0(param0->unk_6B8, v17, v18, v29, (192 + 80) << FX32_SHIFT);
                } else {
                    ov16_0226DE04(param0->unk_6B8);
                }
            } else {
                BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[4].rect.left + 8, v2->unk_14[4].rect.right - 8, v2->unk_14[4].rect.top + 8, v2->unk_14[4].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
                ov16_0226DE04(param0->unk_6B8);
            }
        }
        break;
    case PAD_BUTTON_A:
        if (v5 == 1) {
            if (cursor->y > 0) {
                return 4;
            } else {
                for (v3 = 0; v3 < 4; v3++) {
                    if (v6[v3] == 1) {
                        return 0 + v3;
                    }
                }
            }
        } else {
            v4 = sSelectTargetMenuButtonLayout[cursor->y][cursor->x];

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
    int v1, j, i;

    if (param1 == 4) {
        return;
    }

    v1 = BattleSystem_GetBattlerOfType(param0->battleSys, param0->unk_66A);
    v0 = ov16_02263B0C(BattleSystem_GetBattlerData(param0->battleSys, v1));

    v0->unk_06 = param0->unk_66C;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 2; j++) {
            if (param1 == sSelectTargetMenuButtonLayout[i][j]) {
                v0->unk_04 = j;
                v0->unk_05 = i;

                return;
            }
        }
    }
}

static int BattleSystem_Cursor_YesNo(UnkStruct_ov16_02268A14 *param0, BOOL cursorHidden)
{
    MenuCursor *cursor;
    u32 v1;
    const UnkStruct_ov16_02270670 *v2;
    int v3, v4;

    cursor = &param0->cursor;
    v2 = &Unk_ov16_02270670[param0->unk_66B];

    if (cursorHidden == TRUE) {
        v3 = sYesNoMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        return 0xffffffff;
    }

    v1 = BattleSystem_MoveCursor(cursor, 1, 2, sYesNoMenuButtonLayout[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v3 = sYesNoMenuButtonLayout[cursor->y][cursor->x];
        BattleSystem_DrawCursor(param0->unk_6B8, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, (192 + 80) << FX32_SHIFT);
        break;
    case PAD_BUTTON_A:
        v3 = sYesNoMenuButtonLayout[cursor->y][cursor->x];
        return v3;
    case PAD_BUTTON_B:
        return 1;
    }

    return 0xffffffff;
}

static u32 BattleSystem_MoveCursor(MenuCursor *cursor, int width, int height, const u8 *layout)
{
    int v0, v1;
    u32 v2;

    if (cursor->x >= width) {
        cursor->x = width - 1;
    }

    if (cursor->y >= height) {
        cursor->y = height - 1;
    }

    v1 = cursor->x;
    v0 = cursor->y;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        cursor->y--;

        if (cursor->y < 0) {
            cursor->y = 0;
        }

        if (layout != NULL) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->y--;

                if (cursor->y < 0) {
                    cursor->y = v0;
                    break;
                }
            }
        }

        v2 = PAD_KEY_UP;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        cursor->y++;

        if (cursor->y >= height) {
            cursor->y = height - 1;
        }

        if (layout != NULL) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->y++;

                if (cursor->y >= height) {
                    cursor->y = v0;
                    break;
                }
            }
        }

        v2 = PAD_KEY_DOWN;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        cursor->x--;

        if (cursor->x < 0) {
            cursor->x = 0;
        }

        if (layout != NULL) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->x--;

                if (cursor->x < 0) {
                    cursor->x = v1;
                    break;
                }
            }
        }

        v2 = PAD_KEY_LEFT;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        cursor->x++;

        if (cursor->x >= width) {
            cursor->x = width - 1;
        }

        if (layout != NULL) {
            while (layout[width * cursor->y + cursor->x] == 0xff) {
                cursor->x++;

                if (cursor->x >= width) {
                    cursor->x = v1;
                    break;
                }
            }
        }

        v2 = PAD_KEY_RIGHT;
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        v2 = PAD_BUTTON_A;
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        v2 = PAD_BUTTON_B;
    } else {
        return 0;
    }

    if (layout != NULL) {
        int v3, v4;

        v3 = layout[width * v0 + v1];
        v4 = layout[width * cursor->y + cursor->x];

        if (v3 == v4) {
            cursor->x = v1;
            cursor->y = v0;
        }
    }

    if ((cursor->x != v1) || (cursor->y != v0)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
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
    SpriteSystem *v0;
    SpriteManager *v1;
    PaletteData *v2;
    int v3;

    v0 = BattleSystem_GetSpriteSystem(param0->battleSys);
    v1 = BattleSystem_GetSpriteManager(param0->battleSys);
    v2 = BattleSystem_GetPaletteData(param0->battleSys);
    v3 = 0xffffffff;

    if (BattleSystem_GetCatchingTutorialLowHP(param0->battleSys) == 0) {
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
        ov16_0226DF80(param0->unk_6C4.unk_00, 128, 84 - 24, (192 + 80) << FX32_SHIFT);
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
        ov16_0226DF80(param0->unk_6C4.unk_00, 64, 46 - 24, (192 + 80) << FX32_SHIFT);
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
        ov16_0226DF80(param0->unk_6C4.unk_00, 40, 170 - 24, (192 + 80) << FX32_SHIFT);
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
    BgConfig *v0 = BattleSystem_GetBgConfig(param0->battleSys);
    PaletteData *v1 = BattleSystem_GetPaletteData(param0->battleSys);

    GF_ASSERT(param0->unk_66B == 18);

    LoadStandardWindowGraphics(v0, BG_LAYER_SUB_1, 0x20, 1, 0, HEAP_ID_BATTLE);
    PaletteData_LoadBufferFromHardware(v1, 1, 1 * 16, 0x20);

    {
        int v2 = 0x20, v3 = 1;
        int v4, v5, v6, v7;

        v4 = 1;
        v5 = 6;
        v6 = 30;
        v7 = 6;

        Bg_FillTilemapRect(v0, 5, v2, v4, v5, 1, 1, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 1, v4 + 1, v5, v6 - 2, 1, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 2, v4 + v6 - 1, v5, 1, 1, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 3, v4, v5 + 1, 1, v7 - 2, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 5, v4 + v6 - 1, v5 + 1, 1, v7 - 2, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 6, v4, v5 + v7 - 1, 1, 1, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 7, v4 + 1, v5 + v7 - 1, v6 - 2, 1, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 8, v4 + v6 - 1, v5 + v7 - 1, 1, 1, v3);
        Bg_FillTilemapRect(v0, 5, v2 + 4, v4 + 1, v5 + 1, v6 - 2, v7 - 2, v3);
        Bg_ScheduleTilemapTransfer(v0, 5);
    }

    {
        String *v8;
        MessageLoader *v9 = BattleSystem_GetMessageLoader(param0->battleSys);
        int i;
        const u16 v11[][2] = {
            { 1261, 1262 },
            { 1263, 1264 },
            { 1265, 1266 },
        };

        for (i = 0; i < 2; i++) {
            if (param0->unk_4CC[1 + i].unk_00 != NULL) {
                GF_ASSERT(0);
                return;
            }

            v8 = MessageLoader_GetNewString(v9, v11[param1][i]);

            ov16_0226A98C(param0, &param0->unk_4CC[1 + i], v8, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 4, 20023, 1 * 8 + 8, 6 * 8 + 16 + 16 * i, 0, NULL);
            String_Free(v8);
        }
    }
}

u8 ov16_0226D088(UnkStruct_ov16_02268A14 *param0)
{
    return param0->unk_6C1;
}

#include "overlay017/ov17_0223F7E4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095C48.h"

#include "overlay017/ov17_0223F118.h"
#include "overlay017/ov17_02241270.h"
#include "overlay017/ov17_022413D8.h"
#include "overlay017/ov17_0224F080.h"
#include "overlay017/ov17_02252AB0.h"
#include "overlay017/struct_ov17_0223F88C.h"
#include "overlay017/struct_ov17_022472F8.h"
#include "overlay017/struct_ov17_02252B48_decl.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "assert.h"
#include "core_sys.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "move_table.h"
#include "narc.h"
#include "pokemon.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201E86C.h"
#include "unk_02094EDC.h"

typedef struct {
    s8 unk_00;
    s8 unk_01;
    s8 unk_02;
    s8 unk_03;
} UnkStruct_ov17_02240E68;

typedef struct {
    u8 unk_00;
    s8 unk_01;
    s8 unk_02;
    u8 unk_03;
} UnkStruct_ov17_02241004;

typedef struct {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} UnkStruct_ov17_02253388;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    union {
        struct {
            CellActorData *unk_00[3];
            const s16 *unk_0C;
            const UnkStruct_ov17_02253388 *unk_10;
            int unk_14;
            u8 unk_18;
            u8 unk_19;
        } unk_04_val1;
    };
} UnkStruct_ov17_0223F7E4_sub2;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    u8 unk_08;
    u8 unk_09;
} UnkStruct_ov17_02240950;

typedef struct {
    const UnkStruct_ov17_02253388 *unk_00;
    u8 unk_04;
    s8 unk_05;
} UnkStruct_ov17_0223F7E4_sub1;

typedef struct {
    FontOAM *unk_00;
    SpriteManagerAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov17_02240138;

typedef struct {
    Window unk_00;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov17_02240BF4;

typedef struct {
    UnkStruct_ov17_02240BF4 unk_00[4];
    UnkStruct_ov17_02240BF4 unk_50[4];
    UnkStruct_ov17_02240BF4 unk_A0[4];
    UnkStruct_ov17_02240BF4 unk_F0[3];
    u8 unk_12C[4];
    u8 unk_130[4];
} UnkStruct_ov17_0223FF38;

typedef struct UnkStruct_ov17_0223F7E4_t {
    UnkStruct_02095C48 *unk_00;
    UnkStruct_ov17_0223F88C *unk_04;
    UnkStruct_ov17_022472F8 *unk_08;
    void *unk_0C;
    SysTask *unk_10;
    SysTask *unk_14;
    UnkStruct_ov17_0223F7E4_sub1 unk_18;
    u16 *unk_20[5];
    u16 *unk_34[2];
    UnkStruct_02012744 *unk_3C;
    UnkStruct_ov17_02240138 unk_40[12];
    CellActorData *unk_118[4];
    CellActorData *unk_128;
    CellActorData *unk_12C[4][6];
    UnkStruct_ov17_0223FF38 unk_18C;
    void *unk_2C0;
    NNSG2dCharacterData *unk_2C4;
    s8 unk_2C8;
    u8 unk_2C9;
    UnkStruct_ov17_0223F7E4_sub2 unk_2CC;
    UnkStruct_ov17_02240950 unk_2EC;
    UnkStruct_ov17_02240E68 unk_2F6;
    UnkStruct_ov17_02252B48 *unk_2FC;
    UnkStruct_ov17_02241004 unk_300;
    u8 unk_304;
} UnkStruct_ov17_0223F7E4;

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
    int (*unk_20)(UnkStruct_ov17_0223F7E4 *param0, int param1);
    void (*unk_24)(UnkStruct_ov17_0223F7E4 *param0, int param1);
    void (*unk_28)(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
    int (*unk_2C)(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
} UnkStruct_ov17_02253558;

static void *ov17_0223F7E4(void);
static void ov17_0223FBD4(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
static void ov17_0223FCAC(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
static void ov17_0223FF38(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
static int ov17_0223FFF4(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
static int ov17_02240094(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
static void ov17_0224028C(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_022402A8(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_022404B0(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_022402E8(UnkStruct_ov17_0223F7E4 *param0, u16 param1[]);
static void ov17_02240388(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_02240424(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2);
static void ov17_022404A8(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_022404CC(SysTaskFunc param0, UnkStruct_ov17_0223F7E4 *param1);
static void ov17_022404FC(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_0224051C(SysTask *param0, void *param1);
static void ov17_02240658(SysTask *param0, void *param1);
static void ov17_022411E4(SysTask *param0, void *param1);
static void ov17_02241220(SysTask *param0, void *param1);
static void ov17_02240138(UnkStruct_ov17_0223F7E4 *param0, UnkStruct_ov17_02240138 *param1, const Strbuf *param2, int param3, u32 param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov17_02240BF4 *param10);
static void ov17_02240260(UnkStruct_ov17_0223F7E4 *param0);
void ov17_0223F80C(BGL *param0);
void ov17_0223F864(BGL *param0);
void *ov17_0223F88C(UnkStruct_02095C48 *param0, UnkStruct_ov17_0223F88C *param1, UnkStruct_ov17_022472F8 *param2);
void ov17_0223F960(UnkStruct_ov17_0223F7E4 *param0);
void ov17_0223F9C4(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2, void *param3);
int ov17_0223FAF8(UnkStruct_ov17_0223F7E4 *param0);
BOOL ov17_0223FBC0(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_022409F4(UnkStruct_ov17_0223F7E4 *param0);
static void ov17_02240BF4(UnkStruct_ov17_0223F7E4 *param0, const Strbuf *param1, int param2, UnkStruct_ov17_02240BF4 *param3, u32 param4);
static void ov17_02240C60(const Strbuf *param0, int param1, int *param2, int *param3);
static void ov17_02240950(SysTask *param0, void *param1);
static void ov17_02240930(UnkStruct_ov17_0223F7E4 *param0, int param1);
static int ov17_02240C90(UnkStruct_ov17_0223F7E4 *param0);
static int ov17_02240D04(UnkStruct_ov17_0223F7E4 *param0, int param1);
static void ov17_02240E68(UnkStruct_ov17_0223F7E4 *param0, int param1);
static int ov17_02240EA4(UnkStruct_ov17_0223F7E4 *param0, int param1);
static void ov17_02240FC4(UnkStruct_ov17_0223F7E4 *param0, int param1);
static u32 ov17_02241004(UnkStruct_ov17_02241004 *param0, int param1, int param2, const u8 *param3);

__attribute__((aligned(4))) static const u16 Unk_ov17_02253250[] = {
    0x8,
    0x7,
    0x6,
    0xA,
    0x1D
};

__attribute__((aligned(4))) static const u16 Unk_ov17_02253238[] = {
    0x1F,
    0x28
};

__attribute__((aligned(4))) static const u16 Unk_ov17_02253278[][2] = {
    { 0x13, 0x20 },
    { 0x93, 0x20 },
    { 0x13, 0x80 },
    { 0x93, 0x80 }
};

__attribute__((aligned(4))) static const u16 Unk_ov17_02253314[][2][2] = {
    {
        { 0x13, 0x40 },
        { 0x13, 0x50 },
    },
    {
        { 0x93, 0x40 },
        { 0x93, 0x50 },
    },
    {
        { 0x13, 0xA0 },
        { 0x13, 0xB0 },
    },
    {
        { 0x93, 0xA0 },
        { 0x93, 0xB0 },
    },
};

__attribute__((aligned(4))) static const u16 Unk_ov17_0225325C[][2] = {
    { 0x28, 0x48 },
    { 0x80, 0x48 },
    { 0xD8, 0x48 }
};

__attribute__((aligned(4))) static const int Unk_ov17_02253334[][2] = {
    { 0x3F, 0x34 },
    { 0xBF, 0x34 },
    { 0x3F, 0x94 },
    { 0xBF, 0x94 }
};

__attribute__((aligned(4))) const u16 Unk_ov17_022534B8[] = {
    0x75CD,
    0x7fff,
    0x67ff,
    0x4bff,
    0x2fff,
    0x13ff,
    0x039f,
    0x33E,
    0x154D,
    0x4fff,
    0x2108,
    0x7C2B,
    0x318C,
    0x4631,
    0x5AD6,
    0x0,
    0x75CD,
    0x7fff,
    0x7f9f,
    0x7f3f,
    0x7adf,
    0x729f,
    0x6a5f,
    0x659f,
    0x1CED,
    0x7f5f,
    0x2108,
    0x7C2B,
    0x318C,
    0x4631,
    0x5AD6,
    0x0,
    0x75CD,
    0x7fff,
    0x63fc,
    0x37f7,
    0x2f73,
    0x2730,
    0x1f0c,
    0x16C8,
    0x1146,
    0x5bf8,
    0x2108,
    0x7C2B,
    0x318C,
    0x4631,
    0x5AD6,
    0x0,
    0x75CD,
    0x7fff,
    0x4f1f,
    0x4adf,
    0x467f,
    0x3e1f,
    0x39bf,
    0x00bf,
    0x1CED,
    0x5b5f,
    0x2108,
    0x7C2B,
    0x318C,
    0x4631,
    0x5AD6,
    0x0,
    0x75CD,
    0x7fff,
    0x7ff9,
    0x7f93,
    0x7f0e,
    0x7faa,
    0x7768,
    0x7EC5,
    0x2904,
    0x7fb7,
    0x2108,
    0x7C2B,
    0x318C,
    0x4631,
    0x5AD6,
    0x0
};

static const UnkStruct_ov97_0222DB78 Unk_ov17_02253448[] = {
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x6000, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x6800, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x7000, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x7800, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x0, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov17_022532D0[] = {
    { 0x8, 0x60, 0x8, 0x78 },
    { 0x8, 0x60, 0x88, 0xF8 },
    { 0x68, 0xC0, 0x8, 0x78 },
    { 0x68, 0xC0, 0x88, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov17_02253288[NELEMS(Unk_ov17_022532D0) - 1] = {
    0x0,
    0x1,
    0x2,
    0x3
};

__attribute__((aligned(4))) static const u8 Unk_ov17_02253230[NELEMS(Unk_ov17_022532D0) - 1] = {
    0x4,
    0x5,
    0x6,
    0x7
};

__attribute__((aligned(4))) static const u8 Unk_ov17_0225323C[2][2] = {
    { 0x0, 0x1 },
    { 0x2, 0x3 }
};

static const TouchScreenRect Unk_ov17_022532A8[] = {
    { 0x8, 0x80, 0x0, 0x50 },
    { 0x8, 0x80, 0x58, 0xA8 },
    { 0x8, 0x80, 0xB0, 0xFF },
    { 0x88, 0xC0, 0x0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov17_02253268[NELEMS(Unk_ov17_022532A8) - 1] = {
    0x0,
    0x1,
    0x2,
    0x3
};

__attribute__((aligned(4))) static const u8 Unk_ov17_02253234[NELEMS(Unk_ov17_022532A8) - 1] = {
    0x0,
    0x1,
    0x2,
    0x3
};

__attribute__((aligned(4))) static const u8 Unk_ov17_02253240[2][3] = {
    { 0x0, 0x1, 0x2 },
    { 0x3, 0x3, 0x3 }
};

static const UnkStruct_ov17_02253558 Unk_ov17_02253558[] = {
    {
        0x9,
        0x0,
        { 0x1, 0xFFFF, 0x0, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        ov17_0223FBD4,
        NULL,
    },
    {
        0xB,
        0x1,
        { 0xFFFF, 0xFFFF, 0x4, 0xFFFF },
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
        0xB,
        0x1,
        { 0x2, 0xFFFF, 0x4, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov17_022532D0,
        Unk_ov17_02253288,
        Unk_ov17_02253230,
        ov17_02240D04,
        ov17_02240E68,
        ov17_0223FCAC,
        ov17_0223FFF4,
    },
    {
        0xB,
        0x1,
        { 0x3, 0xFFFF, 0x4, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov17_022532A8,
        Unk_ov17_02253268,
        Unk_ov17_02253234,
        ov17_02240EA4,
        ov17_02240FC4,
        ov17_0223FF38,
        ov17_02240094,
    },
};

static const SpriteTemplate Unk_ov17_02253354 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80F6, 0x80EF, 0x80F4, 0x80F4, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

__attribute__((aligned(4))) static const u16 Unk_ov17_02253298[][2] = {
    { 0x27, 0x30 },
    { 0xA7, 0x30 },
    { 0x27, 0x90 },
    { 0xA7, 0x90 }
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022532E4[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 }
};

__attribute__((aligned(4))) static const UnkStruct_ov17_02253388 Unk_ov17_02253388[] = {
    { 0x0, 0xB, 0x1, 0xE },
    { 0x0, 0xB, 0x11, 0x1E },
    { 0xC, 0x17, 0x1, 0xE },
    { 0xC, 0x17, 0x11, 0x1E }
};

__attribute__((aligned(4))) static const s16 Unk_ov17_02253248[] = {
    0x214,
    0x211,
    0x20E,
    0x20B
};

__attribute__((aligned(4))) static const UnkStruct_ov17_02253388 Unk_ov17_02253408[] = {
    { 0x1, 0xB, 0x1, 0xE },
    { 0x1, 0xB, 0x11, 0x1E },
    { 0xD, 0x17, 0x1, 0xE },
    { 0xD, 0x17, 0x11, 0x1E }
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022532FC[][3] = {
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 },
    { 0x0, 0xC0, 0x180 }
};

__attribute__((aligned(4))) static const UnkStruct_ov17_02253388 Unk_ov17_022533C8[] = {
    { 0x0, 0xF, 0x0, 0x9 },
    { 0x0, 0xF, 0xB, 0x14 },
    { 0x0, 0xF, 0x16, 0x1F },
    { 0x10, 0x17, 0x0, 0x1F }
};

static void *ov17_0223F7E4(void)
{
    UnkStruct_ov17_0223F7E4 *v0;

    v0 = Heap_AllocFromHeap(21, sizeof(UnkStruct_ov17_0223F7E4));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0223F7E4));
    v0->unk_2C8 = -1;

    return v0;
}

void ov17_0223F80C(BGL *param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov17_02253448); v0++) {
        sub_020183C4(param0, 4 + v0, &Unk_ov17_02253448[v0], 0);
        sub_02019EE0(param0, 4 + v0, 0);
        sub_02019184(param0, 4 + v0, 0, 0);
        sub_02019184(param0, 4 + v0, 3, 0);
    }
}

void ov17_0223F864(BGL *param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov17_02253448); v0++) {
        sub_02019120(4 + v0, 0);
        sub_02019044(param0, 4 + v0);
    }
}

void *ov17_0223F88C(UnkStruct_02095C48 *param0, UnkStruct_ov17_0223F88C *param1, UnkStruct_ov17_022472F8 *param2)
{
    UnkStruct_ov17_0223F7E4 *v0;
    NARC *v1;

    v0 = ov17_0223F7E4();

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_3C = sub_02012744(12, 21);

    v1 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 21);

    {
        NNSG2dScreenData *v2;
        void *v3;
        int v4;

        for (v4 = 0; v4 < 5; v4++) {
            v0->unk_20[v4] = Heap_AllocFromHeap(21, 0x800);
            v3 = sub_020071D0(v1, Unk_ov17_02253250[v4], 1, &v2, 21);
            MI_CpuCopy32(v2->rawData, v0->unk_20[v4], 0x800);
            Heap_FreeToHeap(v3);
        }
    }

    {
        u16 *v5;
        PaletteData *v6;
        int v7;

        v6 = v0->unk_04->unk_50;

        for (v7 = 0; v7 < 2; v7++) {
            v0->unk_34[v7] = Heap_AllocFromHeap(21, 0x200);
            PaletteSys_LoadPalette(v6, 45, Unk_ov17_02253238[v7], 21, 1, 0, 0);
            v5 = sub_02003164(v6, 1);
            MI_CpuCopy16(v5, v0->unk_34[v7], 0x200);
        }
    }

    NARC_dtor(v1);

    return v0;
}

void ov17_0223F960(UnkStruct_ov17_0223F7E4 *param0)
{
    int v0;

    ov17_022404B0(param0);
    sub_020127BC(param0->unk_3C);
    ov17_02252B20(param0->unk_04->unk_1C, 33021, 33009, 33016, 33016);
    ov17_02252BCC(param0->unk_2FC);

    for (v0 = 0; v0 < 5; v0++) {
        Heap_FreeToHeap(param0->unk_20[v0]);
    }

    for (v0 = 0; v0 < 2; v0++) {
        Heap_FreeToHeap(param0->unk_34[v0]);
    }

    ov17_022409F4(param0);
    Heap_FreeToHeap(param0);
}

void ov17_0223F9C4(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2, void *param3)
{
    const UnkStruct_ov17_02253558 *v0, *v1;
    int v2;
    BGL *v3;
    SpriteRenderer *v4;
    SpriteGfxHandler *v5;

    param0->unk_0C = param3;

    v3 = param0->unk_04->unk_24;
    v4 = param0->unk_04->unk_18;
    v5 = param0->unk_04->unk_1C;

    if (param0->unk_2C8 == -1) {
        param2 = 1;
        v1 = NULL;
    } else {
        v1 = &Unk_ov17_02253558[param0->unk_2C8];
    }

    v0 = &Unk_ov17_02253558[param1];

    {
        for (v2 = 0; v2 < 4; v2++) {
            BGL_SetPriority(4 + v2, v0->unk_0C_val2[v2]);
        }
    }

    if (1) {
        sub_02002FBC(param0->unk_04->unk_50, param0->unk_34[v0->unk_02], 1, 0, 0x200);
    }

    for (v2 = 0; v2 < 4; v2++) {
        if ((v0->unk_04_val2[v2] != 0xffff) && ((param2 == 1) || (v0->unk_04_val2[v2] != v1->unk_04_val2[v2]))) {
            sub_02019574(v3, 4 + v2, param0->unk_20[v0->unk_04_val2[v2]], 0x800);
            sub_0201C3C0(v3, 4 + v2);
        }
    }

    param0->unk_2C8 = param1;

    ov17_022404B0(param0);

    if (v0->unk_28 != NULL) {
        v0->unk_28(param0, param1, param2);
    }

    if ((v0->unk_00 != 0xffff) && ((param2 == 1) || (v0->unk_00 != v1->unk_00))) {
        param0->unk_2C0 = sub_02006F50(45, v0->unk_00, 1, &param0->unk_2C4, 21);
        SysTask_ExecuteAfterVBlank(ov17_022411E4, param0, 10);
    }

    SysTask_ExecuteAfterVBlank(ov17_02241220, param0, 10);
}

int ov17_0223FAF8(UnkStruct_ov17_0223F7E4 *param0)
{
    int v0, v1, v2, v3;
    const UnkStruct_ov17_02253558 *v4;
    int v5 = 0;

    GF_ASSERT(param0->unk_2C8 != -1);

    v4 = &Unk_ov17_02253558[param0->unk_2C8];

    if (v4->unk_14 == NULL) {
        return 0xffffffff;
    }

    GF_ASSERT(v4->unk_18 != NULL);

    v1 = sub_02022664(v4->unk_14);

    if (v1 == 0xffffffff) {
        v1 = ov17_02240C90(param0);
        v5++;
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

            MI_CpuClear8(&param0->unk_300, sizeof(UnkStruct_ov17_02241004));
            ov17_02252C9C(param0->unk_2FC);

            if (v5 > 0) {
                param0->unk_304 = 1;
            } else {
                param0->unk_304 = 0;
            }
        }
    }

    return v0;
}

BOOL ov17_0223FBC0(UnkStruct_ov17_0223F7E4 *param0)
{
    if ((param0->unk_10 == NULL) && (param0->unk_14 == NULL)) {
        return 1;
    }

    return 0;
}

static void ov17_0223FBD4(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2)
{
    Strbuf *v0, *v1;
    u32 v2, v3;

    v2 = sub_02095848(param0->unk_04->unk_00->unk_110, param0->unk_04->unk_00->unk_111, param0->unk_00->unk_155);
    v3 = sub_020958C4(param0->unk_04->unk_00->unk_10F, param0->unk_04->unk_00->unk_111);
    v0 = MessageLoader_GetNewStrbuf(param0->unk_04->unk_38, v2);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_04->unk_38, v3);

    ov17_02240138(param0, &param0->unk_40[0], v0, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 33008, 128, (8 * 0x10 - 1), 1, NULL);
    ov17_02240138(param0, &param0->unk_40[1], v1, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 33008, 128, (8 * 0x14 - 1), 1, NULL);

    Strbuf_Free(v0);
    Strbuf_Free(v1);
    sub_02002FEC(param0->unk_04->unk_50, 45, 38, 21, 1, 0x20, 2 * 16, 16 * param0->unk_04->unk_00->unk_10F);
}

static void ov17_0223FCAC(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2)
{
    u16 v0[4], v1[4];
    int v2;
    Strbuf *v3;
    Strbuf *v4, *v5;
    u32 v6, v7;
    UnkStruct_ov17_0223FF38 *v8;

    v8 = &param0->unk_18C;
    param0->unk_2C9 = 0xff;

    for (v2 = 0; v2 < 4; v2++) {
        v0[v2] = Pokemon_GetValue(param0->unk_04->unk_00->unk_00[param0->unk_04->unk_00->unk_113], MON_DATA_MOVE1 + v2, NULL);

        if (v0[v2] != 0) {
            v1[v2] = v8->unk_12C[v2];
        } else {
            v1[v2] = 0;
        }

        ov17_02240138(param0, &param0->unk_40[0 + v2], NULL, FONT_SUBSCREEN, TEXT_COLOR(1, 7, 8), 0, 33008, Unk_ov17_02253278[v2][0], Unk_ov17_02253278[v2][1], 0, &v8->unk_00[v2]);
        ov17_02240138(param0, &param0->unk_40[4 + v2], NULL, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 33008, Unk_ov17_02253314[v2][0][0], Unk_ov17_02253314[v2][0][1], 0, &v8->unk_50[v2]);
        ov17_02240138(param0, &param0->unk_40[8 + v2], NULL, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 33008, Unk_ov17_02253314[v2][1][0], Unk_ov17_02253314[v2][1][1], 0, &v8->unk_A0[v2]);

        if (v0[v2] == 0) {
            sub_020129D0(param0->unk_40[0 + v2].unk_00, 0);
            sub_020129D0(param0->unk_40[4 + v2].unk_00, 0);
            sub_020129D0(param0->unk_40[8 + v2].unk_00, 0);
        }
    }

    {
        for (v2 = 0; v2 < 4; v2++) {
            if (v0[v2] != 0) {
                int v9;

                v9 = v8->unk_130[v2];
                ov17_02240424(param0, v9, v2);
            } else {
                ov17_02240424(param0, -1, v2);
            }
        }
    }

    for (v2 = 0; v2 < 4; v2++) {
        if ((v0[v2] != 0) && (ov17_02243A98(param0->unk_08, param0->unk_04->unk_00->unk_113, v0[v2]) == 0)) {
            sub_02002FBC(param0->unk_04->unk_50, &param0->unk_34[1][0x8 * 16], 1, (4 + v2) * 16, 0x20);

            GF_ASSERT(param0->unk_2C9 == 0xff);
            param0->unk_2C9 = v2;
        }
    }

    ov17_022402E8(param0, v0);

    {
        int v10;
        int v11, v12;

        for (v2 = 0; v2 < 4; v2++) {
            if (v0[v2] == 0) {
                continue;
            }

            v10 = sub_02095734(v1[v2]);
            v11 = MATH_IAbs(v10) / 10;

            GF_ASSERT(v11 <= 6);

            for (v12 = 0; v12 < v11; v12++) {
                GF_ASSERT(param0->unk_12C[v2][v12] == NULL);
                param0->unk_12C[v2][v12] = ov17_0224136C(param0->unk_04->unk_18, param0->unk_04->unk_1C, Unk_ov17_02253334[v2][0] + 8 * v12, Unk_ov17_02253334[v2][1], v10);
            }
        }
    }
}

static void ov17_0223FF38(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2)
{
    int v0;
    BGL *v1;
    Strbuf *v2;
    UnkStruct_ov17_0223FF38 *v3;

    v3 = &param0->unk_18C;
    v1 = param0->unk_04->unk_24;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        ov17_02240138(param0, &param0->unk_40[0 + v0], NULL, FONT_SUBSCREEN, TEXT_COLOR(1, 9, 0xa), 0, 33008, Unk_ov17_0225325C[v0][0], Unk_ov17_0225325C[v0][1], 1, &v3->unk_F0[v0]);
    }

    v2 = MessageLoader_GetNewStrbuf(param0->unk_04->unk_38, 53);

    ov17_02240138(param0, &param0->unk_40[0 + v0], v2, FONT_SUBSCREEN, TEXT_COLOR(1, 9, 0xa), 0, 33008, 128, (0x14 * 8 + 4), 1, NULL);
    Strbuf_Free(v2);

    param0->unk_128 = ov17_022412C0(param0->unk_04->unk_18, param0->unk_04->unk_1C, param0->unk_04->unk_00->unk_10E);
}

static int ov17_0223FFF4(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2)
{
    u32 v0;
    int v1;
    const s16 *v2;
    const UnkStruct_ov17_02253388 *v3;

    v0 = param1;

    switch (param1) {
    case 0xffffffff:
    default:
        return 0xffffffff;
    case 0:
    case 1:
    case 2:
    case 3:
        v1 = Pokemon_GetValue(param0->unk_04->unk_00->unk_00[param0->unk_04->unk_00->unk_113], MON_DATA_MOVE1 + param1, NULL);

        if ((v1 == 0) || (param0->unk_2C9 == (param1 - 0))) {
            return 0xffffffff;
        }

        v2 = Unk_ov17_022532E4[v0];
        v3 = &Unk_ov17_02253388[v0];
        break;
    }

    ov17_02240930(param0, param2);
    ov17_022404CC(ov17_02240658, param0);

    param0->unk_2CC.unk_04_val1.unk_0C = v2;
    param0->unk_2CC.unk_04_val1.unk_10 = v3;
    param0->unk_2CC.unk_04_val1.unk_18 = 2;
    param0->unk_2CC.unk_04_val1.unk_14 = param1;

    return param1;
}

static int ov17_02240094(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2)
{
    int v0;
    int v1;

    switch (param1) {
    case 0xffffffff:
    default:
        return param1;
    case 0:
        v0 = 0;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 2;
        break;
    case 3:
        v0 = 3;
        break;
    }

    v1 = (param1 == param0->unk_04->unk_00->unk_10E) ? 1 : 0;

    ov17_02240930(param0, param2);
    ov17_022404CC(ov17_0224051C, param0);

    param0->unk_2CC.unk_04_val1.unk_0C = Unk_ov17_022532FC[param1];
    param0->unk_2CC.unk_04_val1.unk_10 = &Unk_ov17_022533C8[param1];
    param0->unk_2CC.unk_04_val1.unk_18 = 3;
    param0->unk_2CC.unk_04_val1.unk_14 = param1;
    param0->unk_2CC.unk_04_val1.unk_19 = v0;

    if (v1 == 1) {
        param0->unk_2CC.unk_04_val1.unk_00[0] = param0->unk_128;
    }

    return param1;
}

static void ov17_02240138(UnkStruct_ov17_0223F7E4 *param0, UnkStruct_ov17_02240138 *param1, const Strbuf *param2, int param3, u32 param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov17_02240BF4 *param10)
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

    v5 = param0->unk_04->unk_24;
    v6 = param0->unk_04->unk_1C;

    if (param10 == NULL) {
        ov17_02240C60(param2, param3, &v7, &v8);
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

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DSUB, 21);
    sub_0201ED94(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 += (((192 + 80) << FX32_SHIFT) >> FX32_SHIFT) - 8;

    v0.unk_00 = param0->unk_3C;
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
    v0.unk_2C = 21;

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

static void ov17_02240260(UnkStruct_ov17_0223F7E4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_40[v0].unk_00 != NULL) {
            sub_02012870(param0->unk_40[v0].unk_00);
            sub_0201EE28(&param0->unk_40[v0].unk_04);
            param0->unk_40[v0].unk_00 = NULL;
        }
    }
}

static void ov17_0224028C(UnkStruct_ov17_0223F7E4 *param0)
{
    if (param0->unk_128 != NULL) {
        ov17_02241314(param0->unk_128);
        param0->unk_128 = NULL;
    }
}

static void ov17_022402A8(UnkStruct_ov17_0223F7E4 *param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 4; v1++) {
        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_12C[v1][v0] != NULL) {
                ov17_022413AC(param0->unk_12C[v1][v0]);
                param0->unk_12C[v1][v0] = NULL;
            }
        }
    }
}

static void ov17_022402E8(UnkStruct_ov17_0223F7E4 *param0, u16 param1[])
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;
    SpriteTemplate v3;
    int v4;

    v1 = param0->unk_04->unk_18;
    v2 = param0->unk_04->unk_1C;
    v3 = Unk_ov17_02253354;

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->unk_118[v0] == NULL);

        if (param1[v0] != 0) {
            v4 = param0->unk_18C.unk_130[v0];

            v3.resources[0] = 33014 + v0;
            v3.x = Unk_ov17_02253298[v0][0];
            v3.y = Unk_ov17_02253298[v0][1];

            param0->unk_118[v0] = ov17_0224F154(v1, v2, v4, &v3);
            sub_0200D500(param0->unk_118[v0], v3.x, v3.y, ((192 + 80) << FX32_SHIFT));
        }
    }
}

static void ov17_02240388(UnkStruct_ov17_0223F7E4 *param0)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;

    v1 = param0->unk_04->unk_18;
    v2 = param0->unk_04->unk_1C;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_118[v0] != NULL) {
            ov17_0224F184(param0->unk_118[v0]);
            param0->unk_118[v0] = NULL;
        }
    }
}

static void ov17_022403B0(UnkStruct_ov17_0223F7E4 *param0, const s16 *param1, const UnkStruct_ov17_02253388 *param2, int param3, int param4)
{
    int v0, v1;
    BGL *v2;
    u16 *v3, *v4;
    u16 *v5, *v6;
    int v7;

    v2 = param0->unk_04->unk_24;
    v3 = sub_02019FE4(v2, 4);
    v5 = param0->unk_20[param3];
    v7 = param1[param4];

    for (v1 = param2->unk_00; v1 <= param2->unk_04; v1++) {
        v4 = &v3[v1 * 32];
        v6 = &v5[v1 * 32];

        for (v0 = param2->unk_08; v0 <= param2->unk_0C; v0++) {
            v4[v0] = v6[v0] + v7;
        }
    }

    sub_0201C3C0(v2, 4);
}

static void ov17_02240424(UnkStruct_ov17_0223F7E4 *param0, int param1, int param2)
{
    const u16 *const v0[] = {
        &Unk_ov17_022534B8[16 * 3],
        &Unk_ov17_022534B8[16 * 4],
        &Unk_ov17_022534B8[16 * 1],
        &Unk_ov17_022534B8[16 * 2],
        &Unk_ov17_022534B8[16 * 0],
    };

    if (param1 != -1) {
        sub_02002FBC(param0->unk_04->unk_50, v0[param1], 1, (4 + param2) * 16, 0x20);
    } else {
        ov17_022403B0(param0, &Unk_ov17_02253248[param2], &Unk_ov17_02253408[param2], 2, 0);
        sub_02002FBC(param0->unk_04->unk_50, &param0->unk_34[1][0x8 * 16], 1, (4 + param2) * 16, 0x20);
    }
}

static void ov17_022404A8(UnkStruct_ov17_0223F7E4 *param0)
{
    ov17_022404B0(param0);
}

static void ov17_022404B0(UnkStruct_ov17_0223F7E4 *param0)
{
    ov17_0224028C(param0);
    ov17_022402A8(param0);
    ov17_02240388(param0);
    ov17_02240260(param0);
}

static void ov17_022404CC(SysTaskFunc param0, UnkStruct_ov17_0223F7E4 *param1)
{
    GF_ASSERT(param1->unk_10 == NULL);

    MI_CpuClear8(&param1->unk_2CC, sizeof(UnkStruct_ov17_0223F7E4_sub2));
    param1->unk_10 = SysTask_Start(param0, param1, 1300);
}

static void ov17_022404FC(UnkStruct_ov17_0223F7E4 *param0)
{
    if (param0->unk_10 != NULL) {
        SysTask_Done(param0->unk_10);
        param0->unk_10 = NULL;
        MI_CpuClear8(&param0->unk_2CC, sizeof(UnkStruct_ov17_0223F7E4_sub2));
    }
}

static void ov17_0224051C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F7E4 *v0 = param1;
    BGL *v1;
    int v2, v3;
    int v4;

    v1 = v0->unk_04->unk_24;

    switch (v0->unk_2CC.unk_00) {
    case 0:
        ov17_022403B0(v0, v0->unk_2CC.unk_04_val1.unk_0C, v0->unk_2CC.unk_04_val1.unk_10, v0->unk_2CC.unk_04_val1.unk_18, 2);
        sub_020129A4(v0->unk_40[v0->unk_2CC.unk_04_val1.unk_19].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_40[v0->unk_2CC.unk_04_val1.unk_19].unk_00, v2, v3 + -2);

        for (v4 = 0; v4 < 3; v4++) {
            if (v0->unk_2CC.unk_04_val1.unk_00[v4] != NULL) {
                sub_0200D5AC(v0->unk_2CC.unk_04_val1.unk_00[v4]->unk_00, 0, -2);
            }
        }

        v0->unk_2CC.unk_00++;
        break;
    case 1:
        v0->unk_2CC.unk_02++;

        if (v0->unk_2CC.unk_02 <= 0) {
            break;
        }

        v0->unk_2CC.unk_02 = 0;
        v0->unk_2CC.unk_00++;

    case 2:
        ov17_022403B0(v0, v0->unk_2CC.unk_04_val1.unk_0C, v0->unk_2CC.unk_04_val1.unk_10, v0->unk_2CC.unk_04_val1.unk_18, 1);
        sub_020129A4(v0->unk_40[v0->unk_2CC.unk_04_val1.unk_19].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_40[v0->unk_2CC.unk_04_val1.unk_19].unk_00, v2, v3 + 1);

        for (v4 = 0; v4 < 3; v4++) {
            if (v0->unk_2CC.unk_04_val1.unk_00[v4] != NULL) {
                sub_0200D5AC(v0->unk_2CC.unk_04_val1.unk_00[v4]->unk_00, 0, 1);
            }
        }

        v0->unk_2CC.unk_00++;
        break;
    default:
        v0->unk_2CC.unk_02++;

        if (v0->unk_2CC.unk_02 > 0) {
            ov17_022404A8(v0);
            ov17_022404FC(v0);
            return;
        }
        break;
    }
}

static void ov17_02240658(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F7E4 *v0 = param1;
    BGL *v1;
    int v2, v3;
    int v4, v5, v6;
    int v7, v8;
    u16 v9[4];
    int v10, v11;

    v1 = v0->unk_04->unk_24;

    for (v10 = 0; v10 < 4; v10++) {
        v9[v10] = Pokemon_GetValue(v0->unk_04->unk_00->unk_00[v0->unk_04->unk_00->unk_113], MON_DATA_MOVE1 + v10, NULL);
    }

    switch (v0->unk_2CC.unk_04_val1.unk_14) {
    case 0:
        v4 = 0;
        v5 = 4;
        v6 = 8;
        v7 = 0;
        v8 = v9[0];
        v11 = 0;
        break;
    case 1:
        v4 = 1;
        v5 = 5;
        v6 = 9;
        v7 = 1;
        v8 = v9[1];
        v11 = 1;
        break;
    case 2:
        v4 = 2;
        v5 = 6;
        v6 = 10;
        v7 = 2;
        v8 = v9[2];
        v11 = 2;
        break;
    case 3:
        v4 = 3;
        v5 = 7;
        v6 = 11;
        v7 = 3;
        v8 = v9[3];
        v11 = 3;
        break;
    default:
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        break;
    }

    switch (v0->unk_2CC.unk_00) {
    case 0:
        ov17_022403B0(v0, v0->unk_2CC.unk_04_val1.unk_0C, v0->unk_2CC.unk_04_val1.unk_10, v0->unk_2CC.unk_04_val1.unk_18, 2);

        if (1) {
            sub_020129A4(v0->unk_40[v4].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_40[v4].unk_00, v2, v3 + -2);
            sub_020129A4(v0->unk_40[v5].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_40[v5].unk_00, v2, v3 + -2);
            sub_020129A4(v0->unk_40[v6].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_40[v6].unk_00, v2, v3 + -2);

            if (v8 != 0) {
                sub_0200D5AC(v0->unk_118[v7]->unk_00, 0, -2);

                for (v10 = 0; v10 < 6; v10++) {
                    if (v0->unk_12C[v11][v10] != NULL) {
                        sub_0200D5AC(v0->unk_12C[v11][v10]->unk_00, 0, -2);
                    }
                }
            }
        } else {
            (void)0;
        }

        v0->unk_2CC.unk_00++;
        break;
    case 1:
        v0->unk_2CC.unk_02++;

        if (v0->unk_2CC.unk_02 <= 0) {
            break;
        }

        v0->unk_2CC.unk_02 = 0;
        v0->unk_2CC.unk_00++;
    case 2:
        ov17_022403B0(v0, v0->unk_2CC.unk_04_val1.unk_0C, v0->unk_2CC.unk_04_val1.unk_10, v0->unk_2CC.unk_04_val1.unk_18, 1);

        if (1) {
            sub_020129A4(v0->unk_40[v4].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_40[v4].unk_00, v2, v3 + 1);
            sub_020129A4(v0->unk_40[v5].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_40[v5].unk_00, v2, v3 + 1);
            sub_020129A4(v0->unk_40[v6].unk_00, &v2, &v3);
            sub_020128C4(v0->unk_40[v6].unk_00, v2, v3 + 1);

            if (v8 != 0) {
                sub_0200D5AC(v0->unk_118[v7]->unk_00, 0, 1);

                for (v10 = 0; v10 < 6; v10++) {
                    if (v0->unk_12C[v11][v10] != NULL) {
                        sub_0200D5AC(v0->unk_12C[v11][v10]->unk_00, 0, 1);
                    }
                }
            }
        } else {
            (void)0;
        }

        v0->unk_2CC.unk_00++;
        break;
    default:
        v0->unk_2CC.unk_02++;

        if (v0->unk_2CC.unk_02 > 0) {
            ov17_022404A8(v0);
            ov17_022404FC(v0);
            return;
        }
        break;
    }
}

static void ov17_022408E0(SysTaskFunc param0, UnkStruct_ov17_0223F7E4 *param1)
{
    GF_ASSERT(param1->unk_14 == NULL);

    MI_CpuClear8(&param1->unk_2EC, sizeof(UnkStruct_ov17_02240950));
    param1->unk_14 = SysTask_Start(param0, param1, 1320);
}

static void ov17_02240910(UnkStruct_ov17_0223F7E4 *param0)
{
    if (param0->unk_14 != NULL) {
        SysTask_Done(param0->unk_14);
        param0->unk_14 = NULL;
        MI_CpuClear8(&param0->unk_2EC, sizeof(UnkStruct_ov17_02240950));
    }
}

static void ov17_02240930(UnkStruct_ov17_0223F7E4 *param0, int param1)
{
    if (param1 == 0xff) {
        return;
    }

    ov17_022408E0(ov17_02240950, param0);
    param0->unk_2EC.unk_09 = param1;
}

static void ov17_02240950(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F7E4 *v0 = param1;
    UnkStruct_ov17_02240950 *v1;
    PaletteData *v2;
    int v3, v4;

    v1 = &v0->unk_2EC;
    v2 = v0->unk_04->unk_50;
    v4 = 0;

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
            v4 = 1;
        } else if ((v1->unk_06 < 0) && (v1->unk_04 <= 0)) {
            v1->unk_04 = 0;
            v4 = 1;
        }

        sub_020039B0(v2, 1, v1->unk_09 * 16, 16, v1->unk_04 >> 8, 0x7fff);

        if (v4 == 1) {
            ov17_02240910(v0);
            return;
        }
        break;
    }
}

static void ov17_022409F4(UnkStruct_ov17_0223F7E4 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_18C.unk_00[v0].unk_00.unk_0C != NULL) {
            BGL_DeleteWindow(&param0->unk_18C.unk_00[v0].unk_00);
        }

        if (param0->unk_18C.unk_50[v0].unk_00.unk_0C != NULL) {
            BGL_DeleteWindow(&param0->unk_18C.unk_50[v0].unk_00);
        }

        if (param0->unk_18C.unk_A0[v0].unk_00.unk_0C != NULL) {
            BGL_DeleteWindow(&param0->unk_18C.unk_A0[v0].unk_00);
        }
    }

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param0->unk_18C.unk_F0[v0].unk_00.unk_0C != NULL) {
            BGL_DeleteWindow(&param0->unk_18C.unk_F0[v0].unk_00);
        }
    }
}

void ov17_02240A80(UnkStruct_ov17_0223F7E4 *param0, u16 param1[])
{
    UnkStruct_ov17_0223FF38 *v0;
    int v1;
    Strbuf *v2;
    Strbuf *v3, *v4, *v5;
    u32 v6, v7;

    v0 = &param0->unk_18C;

    for (v1 = 0; v1 < 4; v1++) {
        if (param1[v1] != 0) {
            v0->unk_12C[v1] = MoveTable_LoadParam(param1[v1], MOVEATTRIBUTE_CONTEST_EFFECT);
            v0->unk_130[v1] = MoveTable_LoadParam(param1[v1], MOVEATTRIBUTE_CONTEST_TYPE);
        } else {
            v0->unk_12C[v1] = 0;
            v0->unk_130[v1] = 0;
        }

        v2 = MessageUtil_MoveName(param1[v1], 21);

        ov17_02240BF4(param0, v2, FONT_SUBSCREEN, &v0->unk_00[v1], TEXT_COLOR(1, 7, 8));
        Strbuf_Free(v2);
        sub_02095750(v0->unk_12C[v1], &v6, &v7);

        v3 = MessageLoader_GetNewStrbuf(param0->unk_04->unk_40, v6);
        v4 = MessageLoader_GetNewStrbuf(param0->unk_04->unk_40, v7);

        ov17_02240BF4(param0, v3, FONT_SYSTEM, &v0->unk_50[v1], TEXT_COLOR(1, 2, 0));
        ov17_02240BF4(param0, v4, FONT_SYSTEM, &v0->unk_A0[v1], TEXT_COLOR(1, 2, 0));

        Strbuf_Free(v3);
        Strbuf_Free(v4);
    }

    for (v1 = 0; v1 < (1 + 2); v1++) {
        v5 = ov17_0223F310(param0->unk_04->unk_00->unk_C0[v1].unk_00, 21);
        ov17_02240BF4(param0, v5, FONT_SUBSCREEN, &v0->unk_F0[v1], TEXT_COLOR(1, 9, 0xa));
        Strbuf_Free(v5);
    }

    {
        ov17_02252AB0(param0->unk_04->unk_18, param0->unk_04->unk_1C, param0->unk_04->unk_50, 33021, 33009, 33016, 33016);
        param0->unk_2FC = ov17_02252B48(param0->unk_04->unk_18, param0->unk_04->unk_1C, 21, 33021, 33009, 33016, 33016, 5, 0);
    }
}

static void ov17_02240BF4(UnkStruct_ov17_0223F7E4 *param0, const Strbuf *param1, int param2, UnkStruct_ov17_02240BF4 *param3, u32 param4)
{
    int v0, v1;

    ov17_02240C60(param1, param2, &v0, &v1);

    param3->unk_12 = v0;
    param3->unk_10 = v1;

    if (param3->unk_00.unk_0C != NULL) {
        BGL_DeleteWindow(&param3->unk_00);
    }

    Window_Init(&param3->unk_00);
    BGL_AddFramelessWindow(param0->unk_04->unk_24, &param3->unk_00, v1, 16 / 8, 0, 0);
    Text_AddPrinterWithParamsColorAndSpacing(&param3->unk_00, param2, param1, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
}

static void ov17_02240C60(const Strbuf *param0, int param1, int *param2, int *param3)
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

static int ov17_02240C90(UnkStruct_ov17_0223F7E4 *param0)
{
    UnkStruct_ov17_02241004 *v0;
    const UnkStruct_ov17_02253558 *v1;

    v0 = &param0->unk_300;
    v1 = &Unk_ov17_02253558[param0->unk_2C8];

    if (v1->unk_20 == NULL) {
        return 0xffffffff;
    }

    if (v0->unk_00 == 0) {
        if ((param0->unk_304 == 1) || (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_BUTTON_X | PAD_BUTTON_Y | PAD_KEY_RIGHT | PAD_KEY_LEFT | PAD_KEY_UP | PAD_KEY_DOWN))) {
            if (param0->unk_304 == 0) {
                Sound_PlayEffect(1500);
            }

            v0->unk_00 = 1;
            param0->unk_304 = 0;
            v1->unk_20(param0, 1);
        }

        return 0xffffffff;
    }

    return v1->unk_20(param0, 0);
}

static int ov17_02240D04(UnkStruct_ov17_0223F7E4 *param0, int param1)
{
    UnkStruct_ov17_02241004 *v0;
    u32 v1;
    const UnkStruct_ov17_02253558 *v2;
    int v3, v4;
    u8 v5[2][2];
    UnkStruct_ov17_02240E68 *v6;
    u16 v7[4];

    v6 = &param0->unk_2F6;
    v0 = &param0->unk_300;
    v2 = &Unk_ov17_02253558[param0->unk_2C8];

    for (v4 = 0; v4 < 4; v4++) {
        v7[v4] = Pokemon_GetValue(param0->unk_04->unk_00->unk_00[param0->unk_04->unk_00->unk_113], MON_DATA_MOVE1 + v4, NULL);
    }

    if (param1 == 1) {
        v0->unk_02 = v6->unk_00;
        v0->unk_01 = v6->unk_01;
        v3 = Unk_ov17_0225323C[v0->unk_01][v0->unk_02];

        if (v7[v3 - 0] == 0) {
            v6->unk_00 = 0;
            v6->unk_01 = 0;
            v0->unk_02 = 0;
            v0->unk_01 = 0;
            v3 = Unk_ov17_0225323C[v0->unk_01][v0->unk_02];
        }

        ov17_02252C78(param0->unk_2FC, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        return 0xffffffff;
    }

    MI_CpuCopy8(Unk_ov17_0225323C, v5, 2 * 2);

    v1 = ov17_02241004(v0, 2, 2, v5[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v3 = Unk_ov17_0225323C[v0->unk_01][v0->unk_02];
        ov17_02252C78(param0->unk_2FC, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        break;
    case PAD_BUTTON_A:
        return Unk_ov17_0225323C[v0->unk_01][v0->unk_02];
    case PAD_BUTTON_B:
        break;
    }

    return 0xffffffff;
}

static void ov17_02240E68(UnkStruct_ov17_0223F7E4 *param0, int param1)
{
    UnkStruct_ov17_02240E68 *v0;
    int v1, v2;

    v0 = &param0->unk_2F6;

    for (v2 = 0; v2 < 2; v2++) {
        for (v1 = 0; v1 < 2; v1++) {
            if (param1 == Unk_ov17_0225323C[v2][v1]) {
                v0->unk_00 = v1;
                v0->unk_01 = v2;
                return;
            }
        }
    }
}

static int ov17_02240EA4(UnkStruct_ov17_0223F7E4 *param0, int param1)
{
    UnkStruct_ov17_02241004 *v0;
    u32 v1;
    const UnkStruct_ov17_02253558 *v2;
    int v3, v4;
    u8 v5[2][3];
    UnkStruct_ov17_02240E68 *v6;

    v6 = &param0->unk_2F6;
    v0 = &param0->unk_300;
    v2 = &Unk_ov17_02253558[param0->unk_2C8];

    if (param1 == 1) {
        v0->unk_02 = v6->unk_02;
        v0->unk_01 = v6->unk_03;
        v3 = Unk_ov17_02253240[v0->unk_01][v0->unk_02];
        ov17_02252C78(param0->unk_2FC, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        return 0xffffffff;
    }

    MI_CpuCopy8(Unk_ov17_02253240, v5, 2 * 3);
    v1 = ov17_02241004(v0, 3, 2, v5[0]);

    switch (v1) {
    case PAD_KEY_UP:
    case PAD_KEY_DOWN:
    case PAD_KEY_LEFT:
    case PAD_KEY_RIGHT:
        v3 = Unk_ov17_02253240[v0->unk_01][v0->unk_02];
        ov17_02252C78(param0->unk_2FC, v2->unk_14[v3].rect.left + 8, v2->unk_14[v3].rect.right - 8, v2->unk_14[v3].rect.top + 8, v2->unk_14[v3].rect.bottom - 8, ((192 + 80) << FX32_SHIFT));
        break;
    case PAD_BUTTON_A:
        return Unk_ov17_02253240[v0->unk_01][v0->unk_02];
    case PAD_BUTTON_B:
        return 3;
    }

    return 0xffffffff;
}

static void ov17_02240FC4(UnkStruct_ov17_0223F7E4 *param0, int param1)
{
    UnkStruct_ov17_02240E68 *v0;
    int v1, v2, v3;

    if (param1 == 3) {
        return;
    }

    v0 = &param0->unk_2F6;

    for (v3 = 0; v3 < 2; v3++) {
        for (v2 = 0; v2 < 3; v2++) {
            if (param1 == Unk_ov17_02253240[v3][v2]) {
                v0->unk_02 = v2;
                v0->unk_03 = v3;
                return;
            }
        }
    }
}

static u32 ov17_02241004(UnkStruct_ov17_02241004 *param0, int param1, int param2, const u8 *param3)
{
    int v0, v1;
    u32 v2;

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

static void ov17_022411E4(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F7E4 *v0 = param1;

    sub_0201958C(v0->unk_04->unk_24, 4, v0->unk_2C4->pRawData, 0x6000, 0);
    Heap_FreeToHeap(v0->unk_2C0);

    v0->unk_2C0 = NULL;

    SysTask_Done(param0);
}

static void ov17_02241220(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F7E4 *v0 = param1;
    const UnkStruct_ov17_02253558 *v1;
    int v2;

    v1 = &Unk_ov17_02253558[v0->unk_2C8];

    for (v2 = 0; v2 < 4; v2++) {
        if (v1->unk_04_val2[v2] == 0xffff) {
            sub_02019120(4 + v2, 0);
        } else {
            sub_02019120(4 + v2, 1);
        }
    }

    SysTask_Done(param0);
}

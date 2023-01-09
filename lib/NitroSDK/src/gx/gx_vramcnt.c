#include <nitro/gx/gx_vramcnt.h>
#include <nitro/hw/ARM9/ioreg_G3X.h>
#include <nitro/hw/ARM9/ioreg_GX.h>
#include <nitro/hw/ARM9/ioreg_GXS.h>

#include "include/gxstate.h"

typedef enum {
    GX_VRAMCNT_A_DISABLE = 0,
    GX_VRAMCNT_A_LCDC_0x06800000 =
        (0 << REG_GX_VRAMCNT_A_MST_SHIFT) | (0 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_A_MST_SHIFT) | (0 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_BG_0x06020000 =
        (1 << REG_GX_VRAMCNT_A_MST_SHIFT) | (1 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_BG_0x06040000 =
        (1 << REG_GX_VRAMCNT_A_MST_SHIFT) | (2 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_BG_0x06060000 =
        (1 << REG_GX_VRAMCNT_A_MST_SHIFT) | (3 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_OBJ_0x06400000 =
        (2 << REG_GX_VRAMCNT_A_MST_SHIFT) | (0 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_OBJ_0x06420000 =
        (2 << REG_GX_VRAMCNT_A_MST_SHIFT) | (1 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_TEX_0 =
        (3 << REG_GX_VRAMCNT_A_MST_SHIFT) | (0 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_TEX_1 =
        (3 << REG_GX_VRAMCNT_A_MST_SHIFT) | (1 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_TEX_2 =
        (3 << REG_GX_VRAMCNT_A_MST_SHIFT) | (2 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT),
    GX_VRAMCNT_A_TEX_3 =
        (3 << REG_GX_VRAMCNT_A_MST_SHIFT) | (3 << REG_GX_VRAMCNT_A_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_A_E_SHIFT)
} GX_VRAMCNT_A;

typedef enum {
    GX_VRAMCNT_B_DISABLE = 0,
    GX_VRAMCNT_B_LCDC_0x06820000 =
        (0 << REG_GX_VRAMCNT_B_MST_SHIFT) | (0 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_B_MST_SHIFT) | (0 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_BG_0x06020000 =
        (1 << REG_GX_VRAMCNT_B_MST_SHIFT) | (1 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_BG_0x06040000 =
        (1 << REG_GX_VRAMCNT_B_MST_SHIFT) | (2 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_BG_0x06060000 =
        (1 << REG_GX_VRAMCNT_B_MST_SHIFT) | (3 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_OBJ_0x06400000 =
        (2 << REG_GX_VRAMCNT_B_MST_SHIFT) | (0 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_OBJ_0x06420000 =
        (2 << REG_GX_VRAMCNT_B_MST_SHIFT) | (1 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_TEX_0 =
        (3 << REG_GX_VRAMCNT_B_MST_SHIFT) | (0 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_TEX_1 =
        (3 << REG_GX_VRAMCNT_B_MST_SHIFT) | (1 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_TEX_2 =
        (3 << REG_GX_VRAMCNT_B_MST_SHIFT) | (2 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT),
    GX_VRAMCNT_B_TEX_3 =
        (3 << REG_GX_VRAMCNT_B_MST_SHIFT) | (3 << REG_GX_VRAMCNT_B_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_B_E_SHIFT)
} GX_VRAMCNT_B;

typedef enum {
    GX_VRAMCNT_C_DISABLE = 0,
    GX_VRAMCNT_C_LCDC_0x06840000 =
        (0 << REG_GX_VRAMCNT_C_MST_SHIFT) | (0 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_C_MST_SHIFT) | (0 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_BG_0x06020000 =
        (1 << REG_GX_VRAMCNT_C_MST_SHIFT) | (1 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_BG_0x06040000 =
        (1 << REG_GX_VRAMCNT_C_MST_SHIFT) | (2 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_BG_0x06060000 =
        (1 << REG_GX_VRAMCNT_C_MST_SHIFT) | (3 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_ARM7_0x06000000 =
        (2 << REG_GX_VRAMCNT_C_MST_SHIFT) | (0 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_ARM7_0x06020000 =
        (2 << REG_GX_VRAMCNT_C_MST_SHIFT) | (1 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_TEX_0 =
        (3 << REG_GX_VRAMCNT_C_MST_SHIFT) | (0 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_TEX_1 =
        (3 << REG_GX_VRAMCNT_C_MST_SHIFT) | (1 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_TEX_2 =
        (3 << REG_GX_VRAMCNT_C_MST_SHIFT) | (2 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_TEX_3 =
        (3 << REG_GX_VRAMCNT_C_MST_SHIFT) | (3 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_C_E_SHIFT),
    GX_VRAMCNT_C_SUBBG_0x06200000 =
        (4 << REG_GX_VRAMCNT_C_MST_SHIFT) | (1 << REG_GX_VRAMCNT_C_E_SHIFT)
} GX_VRAMCNT_C;

typedef enum {
    GX_VRAMCNT_D_DISABLE = 0,
    GX_VRAMCNT_D_LCDC_0x06860000 =
        (0 << REG_GX_VRAMCNT_D_MST_SHIFT) | (0 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_D_MST_SHIFT) | (0 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_BG_0x06020000 =
        (1 << REG_GX_VRAMCNT_D_MST_SHIFT) | (1 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_BG_0x06040000 =
        (1 << REG_GX_VRAMCNT_D_MST_SHIFT) | (2 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_BG_0x06060000 =
        (1 << REG_GX_VRAMCNT_D_MST_SHIFT) | (3 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_ARM7_0x06000000 =
        (2 << REG_GX_VRAMCNT_D_MST_SHIFT) | (0 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_ARM7_0x06020000 =
        (2 << REG_GX_VRAMCNT_D_MST_SHIFT) | (1 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_TEX_0 =
        (3 << REG_GX_VRAMCNT_D_MST_SHIFT) | (0 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_TEX_1 =
        (3 << REG_GX_VRAMCNT_D_MST_SHIFT) | (1 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_TEX_2 =
        (3 << REG_GX_VRAMCNT_D_MST_SHIFT) | (2 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_TEX_3 =
        (3 << REG_GX_VRAMCNT_D_MST_SHIFT) | (3 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_D_E_SHIFT),
    GX_VRAMCNT_D_SUBOBJ_0x06600000 =
        (4 << REG_GX_VRAMCNT_D_MST_SHIFT) | (1 << REG_GX_VRAMCNT_D_E_SHIFT)
} GX_VRAMCNT_D;

typedef enum {
    GX_VRAMCNT_E_DISABLE = 0,
    GX_VRAMCNT_E_LCDC_0x06880000 =
        (0 << REG_GX_VRAMCNT_E_MST_SHIFT) | (1 << REG_GX_VRAMCNT_E_E_SHIFT),
    GX_VRAMCNT_E_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_E_MST_SHIFT) | (1 << REG_GX_VRAMCNT_E_E_SHIFT),
    GX_VRAMCNT_E_OBJ_0x06400000 =
        (2 << REG_GX_VRAMCNT_E_MST_SHIFT) | (1 << REG_GX_VRAMCNT_E_E_SHIFT),
    GX_VRAMCNT_E_TEXPLTT_0123 = (3 << REG_GX_VRAMCNT_E_MST_SHIFT) | (1 << REG_GX_VRAMCNT_E_E_SHIFT),
    GX_VRAMCNT_E_BGEXTPLTT_0123 =
        (4 << REG_GX_VRAMCNT_E_MST_SHIFT) | (1 << REG_GX_VRAMCNT_E_E_SHIFT)
} GX_VRAMCNT_E;

typedef enum {
    GX_VRAMCNT_F_DISABLE = 0,
    GX_VRAMCNT_F_LCDC_0x06890000 =
        (0 << REG_GX_VRAMCNT_F_MST_SHIFT) | (0 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_F_MST_SHIFT) | (0 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_BG_0x06004000 =
        (1 << REG_GX_VRAMCNT_F_MST_SHIFT) | (1 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_BG_0x06010000 =
        (1 << REG_GX_VRAMCNT_F_MST_SHIFT) | (2 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_BG_0x06014000 =
        (1 << REG_GX_VRAMCNT_F_MST_SHIFT) | (3 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_OBJ_0x06400000 =
        (2 << REG_GX_VRAMCNT_F_MST_SHIFT) | (0 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_OBJ_0x06404000 =
        (2 << REG_GX_VRAMCNT_F_MST_SHIFT) | (1 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_OBJ_0x06410000 =
        (2 << REG_GX_VRAMCNT_F_MST_SHIFT) | (2 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_OBJ_0x06414000 =
        (2 << REG_GX_VRAMCNT_F_MST_SHIFT) | (3 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_TEXPLTT_0 =
        (3 << REG_GX_VRAMCNT_F_MST_SHIFT) | (0 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_TEXPLTT_1 =
        (3 << REG_GX_VRAMCNT_F_MST_SHIFT) | (1 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_TEXPLTT_4 =
        (3 << REG_GX_VRAMCNT_F_MST_SHIFT) | (2 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_TEXPLTT_5 =
        (3 << REG_GX_VRAMCNT_F_MST_SHIFT) | (3 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_BGEXTPLTT_01 =
        (4 << REG_GX_VRAMCNT_F_MST_SHIFT) | (0 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_BGEXTPLTT_23 =
        (4 << REG_GX_VRAMCNT_F_MST_SHIFT) | (1 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT),
    GX_VRAMCNT_F_OBJEXTPLTT =
        (5 << REG_GX_VRAMCNT_F_MST_SHIFT) | (0 << REG_GX_VRAMCNT_F_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_F_E_SHIFT)
} GX_VRAMCNT_F;

typedef enum {
    GX_VRAMCNT_G_DISABLE = 0,
    GX_VRAMCNT_G_LCDC_0x06894000 =
        (0 << REG_GX_VRAMCNT_G_MST_SHIFT) | (0 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_BG_0x06000000 =
        (1 << REG_GX_VRAMCNT_G_MST_SHIFT) | (0 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_BG_0x06004000 =
        (1 << REG_GX_VRAMCNT_G_MST_SHIFT) | (1 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_BG_0x06010000 =
        (1 << REG_GX_VRAMCNT_G_MST_SHIFT) | (2 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_BG_0x06014000 =
        (1 << REG_GX_VRAMCNT_G_MST_SHIFT) | (3 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_OBJ_0x06400000 =
        (2 << REG_GX_VRAMCNT_G_MST_SHIFT) | (0 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_OBJ_0x06404000 =
        (2 << REG_GX_VRAMCNT_G_MST_SHIFT) | (1 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_OBJ_0x06410000 =
        (2 << REG_GX_VRAMCNT_G_MST_SHIFT) | (2 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_OBJ_0x06414000 =
        (2 << REG_GX_VRAMCNT_G_MST_SHIFT) | (3 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_TEXPLTT_0 =
        (3 << REG_GX_VRAMCNT_G_MST_SHIFT) | (0 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_TEXPLTT_1 =
        (3 << REG_GX_VRAMCNT_G_MST_SHIFT) | (1 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_TEXPLTT_4 =
        (3 << REG_GX_VRAMCNT_G_MST_SHIFT) | (2 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_TEXPLTT_5 =
        (3 << REG_GX_VRAMCNT_G_MST_SHIFT) | (3 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_BGEXTPLTT_01 =
        (4 << REG_GX_VRAMCNT_G_MST_SHIFT) | (0 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_BGEXTPLTT_23 =
        (4 << REG_GX_VRAMCNT_G_MST_SHIFT) | (1 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT),
    GX_VRAMCNT_G_OBJEXTPLTT =
        (5 << REG_GX_VRAMCNT_G_MST_SHIFT) | (0 << REG_GX_VRAMCNT_G_OFS_SHIFT) | (1 <<
                                                                                 REG_GX_VRAMCNT_G_E_SHIFT)
} GX_VRAMCNT_G;

typedef enum {
    GX_VRAMCNT_H_DISABLE = 0,
    GX_VRAMCNT_H_LCDC_0x06898000 =
        (0 << REG_GX_VRAMCNT_H_MST_SHIFT) | (1 << REG_GX_VRAMCNT_H_E_SHIFT),
    GX_VRAMCNT_H_SUBBG_0x06200000 =
        (1 << REG_GX_VRAMCNT_H_MST_SHIFT) | (1 << REG_GX_VRAMCNT_H_E_SHIFT),
    GX_VRAMCNT_H_SUBBGEXTPLTT_0123 =
        (2 << REG_GX_VRAMCNT_H_MST_SHIFT) | (1 << REG_GX_VRAMCNT_H_E_SHIFT)
} GX_VRAMCNT_H;

typedef enum {
    GX_VRAMCNT_I_DISABLE = 0,
    GX_VRAMCNT_I_LCDC_0x068A0000 =
        (0 << REG_GX_VRAMCNT_I_MST_SHIFT) | (1 << REG_GX_VRAMCNT_I_E_SHIFT),
    GX_VRAMCNT_I_SUBBG_0x06208000 =
        (1 << REG_GX_VRAMCNT_I_MST_SHIFT) | (1 << REG_GX_VRAMCNT_I_E_SHIFT),
    GX_VRAMCNT_I_SUBOBJ_0x06600000 =
        (2 << REG_GX_VRAMCNT_I_MST_SHIFT) | (1 << REG_GX_VRAMCNT_I_E_SHIFT),
    GX_VRAMCNT_I_SUBOBJEXTPLTT = (3 << REG_GX_VRAMCNT_I_MST_SHIFT) | (1 << REG_GX_VRAMCNT_I_E_SHIFT)
} GX_VRAMCNT_I;

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/code32.h>
#endif

static void GX_VRAMCNT_SetLCDC_ (int lcdc) {
    if (lcdc & GX_VRAM_LCDC_A) {
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_LCDC_0x06800000;
    }
    if (lcdc & GX_VRAM_LCDC_B) {
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_LCDC_0x06820000;
    }
    if (lcdc & GX_VRAM_LCDC_C) {
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_LCDC_0x06840000;
    }
    if (lcdc & GX_VRAM_LCDC_D) {
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_LCDC_0x06860000;
    }
    if (lcdc & GX_VRAM_LCDC_E) {
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_LCDC_0x06880000;
    }
    if (lcdc & GX_VRAM_LCDC_F) {
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_LCDC_0x06890000;
    }
    if (lcdc & GX_VRAM_LCDC_G) {
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_LCDC_0x06894000;
    }
    if (lcdc & GX_VRAM_LCDC_H) {
        reg_GX_VRAMCNT_H = (u8)GX_VRAMCNT_H_LCDC_0x06898000;
    }
    if (lcdc & GX_VRAM_LCDC_I) {
        reg_GX_VRAMCNT_I = (u8)GX_VRAMCNT_I_LCDC_0x068A0000;
    }
}

static inline void GX_VRAMCNT_SetBG_ (GXVRamBG bg) {
    switch (bg) {
    case GX_VRAM_BG_128_D:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06000000;
        break;

    case GX_VRAM_BG_256_CD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06020000;

    case GX_VRAM_BG_128_C:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06000000;
        break;

    case GX_VRAM_BG_384_BCD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06040000;

    case GX_VRAM_BG_256_BC:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06020000;

    case GX_VRAM_BG_128_B:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06000000;
        break;

    case GX_VRAM_BG_512_ABCD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06060000;

    case GX_VRAM_BG_384_ABC:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06040000;

    case GX_VRAM_BG_256_AB:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06020000;

    case GX_VRAM_BG_128_A:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06000000;

    case GX_VRAM_BG_NONE:
        break;

    case GX_VRAM_BG_384_ABD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06000000;
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06020000;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06040000;
        break;

    case GX_VRAM_BG_384_ACD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06040000;

    case GX_VRAM_BG_256_AC:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06000000;
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06020000;
        break;

    case GX_VRAM_BG_256_AD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06000000;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06020000;
        break;

    case GX_VRAM_BG_256_BD:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06000000;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06020000;
        break;

    case GX_VRAM_BG_96_EFG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06014000;

    case GX_VRAM_BG_80_EF:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_BG_0x06010000;

    case GX_VRAM_BG_64_E:
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_BG_0x06000000;
        break;

    case GX_VRAM_BG_80_EG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06010000;
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_BG_0x06000000;
        break;

    case GX_VRAM_BG_32_FG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06004000;

    case GX_VRAM_BG_16_F:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_BG_0x06000000;
        break;

    case GX_VRAM_BG_16_G:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06000000;
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamBG, 0x%x specified.", bg);
        break;
    }
}

static inline void GX_VRAMCNT_SetBGEx1_ (GXVRamBG bg) {
    switch (bg) {
    case GX_VRAM_BG_96_EFG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06014000;

    case GX_VRAM_BG_80_EF:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_BG_0x06010000;

    case GX_VRAM_BG_64_E:
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_BG_0x06000000;
        break;

    case GX_VRAM_BG_80_EG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06010000;
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_BG_0x06000000;
        break;

    case GX_VRAM_BG_32_FG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06004000;

    case GX_VRAM_BG_16_F:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_BG_0x06000000;
        break;

    case GX_VRAM_BG_16_G:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BG_0x06000000;
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamBG, 0x%x specified.", bg);
        break;
    }
}

static inline void GX_VRAMCNT_SetBGEx2_ (GXVRamBG bg) {
    switch (bg) {
    case GX_VRAM_BG_128_D:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06020000;
        break;

    case GX_VRAM_BG_256_CD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06040000;

    case GX_VRAM_BG_128_C:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06020000;
        break;

    case GX_VRAM_BG_384_BCD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06060000;

    case GX_VRAM_BG_256_BC:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06040000;

    case GX_VRAM_BG_128_B:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06020000;
        break;

    case GX_VRAM_BG_384_ABC:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06060000;

    case GX_VRAM_BG_256_AB:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06040000;

    case GX_VRAM_BG_128_A:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06020000;

    case GX_VRAM_BG_NONE:
        break;

    case GX_VRAM_BG_384_ABD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06020000;
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06040000;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06060000;
        break;

    case GX_VRAM_BG_384_ACD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06060000;

    case GX_VRAM_BG_256_AC:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06020000;
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_BG_0x06040000;
        break;

    case GX_VRAM_BG_256_AD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_BG_0x06020000;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06040000;
        break;

    case GX_VRAM_BG_256_BD:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_BG_0x06020000;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_BG_0x06040000;
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamBG, 0x%x specified.", bg);
        break;
    }
}

static inline void GX_VRAMCNT_SetOBJ_ (GXVRamOBJ obj) {
    switch (obj) {
    case GX_VRAM_OBJ_256_AB:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_OBJ_0x06420000;

    case GX_VRAM_OBJ_128_A:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_OBJ_0x06400000;

    case GX_VRAM_OBJ_NONE:
        break;

    case GX_VRAM_OBJ_128_B:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_OBJ_0x06400000;
        break;

    case GX_VRAM_OBJ_96_EFG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_OBJ_0x06414000;

    case GX_VRAM_OBJ_80_EF:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_OBJ_0x06410000;

    case GX_VRAM_OBJ_64_E:
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_OBJ_0x06400000;
        break;

    case GX_VRAM_OBJ_80_EG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_OBJ_0x06410000;
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_OBJ_0x06400000;
        break;

    case GX_VRAM_OBJ_32_FG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_OBJ_0x06404000;

    case GX_VRAM_OBJ_16_F:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_OBJ_0x06400000;
        break;

    case GX_VRAM_OBJ_16_G:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_OBJ_0x06400000;
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamOBJ, 0x%x specified.", obj);
        break;
    }
}

static inline void GX_VRAMCNT_SetARM7_ (GXVRamARM7 arm7) {
    switch (arm7) {
    case GX_VRAM_ARM7_256_CD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_ARM7_0x06020000;
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_ARM7_0x06000000;
        break;
    case GX_VRAM_ARM7_128_C:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_ARM7_0x06000000;
        break;
    case GX_VRAM_ARM7_128_D:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_ARM7_0x06000000;

    case GX_VRAM_ARM7_NONE:
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamARM7, 0x%x specified.", arm7);
        break;
    }
}

static inline void texOn_ () {
    reg_G3X_DISP3DCNT = (u16)((reg_G3X_DISP3DCNT &
                               ~(REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK)) |
                              REG_G3X_DISP3DCNT_TME_MASK);
}

static inline void texOff_ () {
    reg_G3X_DISP3DCNT &= (u16) ~(REG_G3X_DISP3DCNT_TME_MASK |
                                 REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK);
}

static inline void GX_VRAMCNT_SetTEX_ (GXVRamTex tex) {
    if (tex == GX_VRAM_TEX_NONE) {
        texOff_();
        return;
    }
    texOn_();

    switch (tex) {
    case GX_VRAM_TEX_01_AC:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_0;
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_1;
        break;

    case GX_VRAM_TEX_01_AD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_0;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_1;
        break;

    case GX_VRAM_TEX_01_BD:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_TEX_0;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_1;
        break;

    case GX_VRAM_TEX_012_ABD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_0;
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_TEX_1;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_2;
        break;

    case GX_VRAM_TEX_012_ACD:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_0;
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_1;
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_2;
        break;

    case GX_VRAM_TEX_0_D:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_0;
        break;

    case GX_VRAM_TEX_01_CD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_1;

    case GX_VRAM_TEX_0_C:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_0;
        break;

    case GX_VRAM_TEX_012_BCD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_2;

    case GX_VRAM_TEX_01_BC:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_1;

    case GX_VRAM_TEX_0_B:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_TEX_0;
        break;

    case GX_VRAM_TEX_0123_ABCD:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_3;

    case GX_VRAM_TEX_012_ABC:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_2;

    case GX_VRAM_TEX_01_AB:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_TEX_1;

    case GX_VRAM_TEX_0_A:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_0;
        break;
    default:
        SDK_INTERNAL_ERROR("unknown GXVRamTex, 0x%x specified.", tex);
        break;
    }
}

static inline void clearImageOn_ () {
    reg_G3X_DISP3DCNT |= REG_G3X_DISP3DCNT_PRI_MASK;
}

static inline void clearImageOff_ () {
    reg_G3X_DISP3DCNT &= ~REG_G3X_DISP3DCNT_PRI_MASK;
}

static inline void GX_VRAMCNT_SetCLRIMG_ (GXVRamClearImage clrImg) {
    switch (clrImg) {
    case GX_VRAM_CLEARIMAGE_256_AB:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_2;

    case GX_VRAM_CLEARDEPTH_128_B:
        reg_GX_VRAMCNT_B = (u8)GX_VRAMCNT_B_TEX_3;
        clearImageOn_();
        break;

    case GX_VRAM_CLEARIMAGE_256_CD:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_2;

    case GX_VRAM_CLEARDEPTH_128_D:
        reg_GX_VRAMCNT_D = (u8)GX_VRAMCNT_D_TEX_3;
        clearImageOn_();
        break;

    case GX_VRAM_CLEARIMAGE_NONE:
        clearImageOff_();
        break;

    case GX_VRAM_CLEARDEPTH_128_A:
        reg_GX_VRAMCNT_A = (u8)GX_VRAMCNT_A_TEX_3;
        clearImageOn_();
        break;

    case GX_VRAM_CLEARDEPTH_128_C:
        reg_GX_VRAMCNT_C = (u8)GX_VRAMCNT_C_TEX_3;
        clearImageOn_();
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamClearImage, 0x%x specified.", clrImg);
        break;
    }
}

static inline void GX_VRAMCNT_SetTEXPLTT_ (GXVRamTexPltt texPltt) {
    switch (texPltt) {
    case GX_VRAM_TEXPLTT_01_FG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_TEXPLTT_1;

    case GX_VRAM_TEXPLTT_0_F:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_TEXPLTT_0;
        break;

    case GX_VRAM_TEXPLTT_0_G:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_TEXPLTT_0;
        break;

    case GX_VRAM_TEXPLTT_012345_EFG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_TEXPLTT_5;

    case GX_VRAM_TEXPLTT_01234_EF:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_TEXPLTT_4;

    case GX_VRAM_TEXPLTT_0123_E:
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_TEXPLTT_0123;
        break;

    case GX_VRAM_TEXPLTT_NONE:
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamTexPltt, 0x%x specified.", texPltt);
        break;
    }
}

static inline void bgExtPlttOn_ () {
    reg_GX_DISPCNT |= REG_GX_DISPCNT_BG_MASK;
}

static inline void bgExtPlttOff_ () {
    reg_GX_DISPCNT &= ~REG_GX_DISPCNT_BG_MASK;
}

static inline void GX_VRAMCNT_SetBGEXTPLTT_ (GXVRamBGExtPltt bgExtPltt) {
    switch (bgExtPltt) {
    case GX_VRAM_BGEXTPLTT_0123_E:
        bgExtPlttOn_();
        reg_GX_VRAMCNT_E = (u8)GX_VRAMCNT_E_BGEXTPLTT_0123;
        break;

    case GX_VRAM_BGEXTPLTT_23_G:
        bgExtPlttOn_();
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BGEXTPLTT_23;
        break;

    case GX_VRAM_BGEXTPLTT_0123_FG:
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_BGEXTPLTT_23;

    case GX_VRAM_BGEXTPLTT_01_F:
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_BGEXTPLTT_01;
        bgExtPlttOn_();
        break;

    case GX_VRAM_BGEXTPLTT_NONE:
        bgExtPlttOff_();
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamBGExtPltt, 0x%x specified.", bgExtPltt);
        break;
    }
}

static inline void objExtPlttOn_ () {
    reg_GX_DISPCNT |= REG_GX_DISPCNT_O_MASK;
}

static inline void objExtPlttOff_ () {
    reg_GX_DISPCNT &= ~REG_GX_DISPCNT_O_MASK;
}

static inline void GX_VRAMCNT_SetOBJEXTPLTT_ (GXVRamOBJExtPltt objExtPltt) {
    switch (objExtPltt) {
    case GX_VRAM_OBJEXTPLTT_0_F:
        objExtPlttOn_();
        reg_GX_VRAMCNT_F = (u8)GX_VRAMCNT_F_OBJEXTPLTT;
        break;

    case GX_VRAM_OBJEXTPLTT_0_G:
        objExtPlttOn_();
        reg_GX_VRAMCNT_G = (u8)GX_VRAMCNT_G_OBJEXTPLTT;
        break;

    case GX_VRAM_OBJEXTPLTT_NONE:
        objExtPlttOff_();
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamOBJExtPltt, 0x%x specified.", objExtPltt);
        break;
    }
}

static inline void GX_VRAMCNT_SetSubBG_ (GXVRamSubBG bg) {
    switch (bg) {
    case GX_VRAM_SUB_BG_128_C:
        reg_GX_VRAMCNT_C = GX_VRAMCNT_C_SUBBG_0x06200000;
        break;

    case GX_VRAM_SUB_BG_48_HI:
        reg_GX_VRAMCNT_I = GX_VRAMCNT_I_SUBBG_0x06208000;

    case GX_VRAM_SUB_BG_32_H:
        reg_GX_VRAMCNT_H = GX_VRAMCNT_H_SUBBG_0x06200000;
        break;

    case GX_VRAM_SUB_BG_NONE:
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamSubBG, 0x%x specified.", bg);
        break;
    }
}

static inline void GX_VRAMCNT_SetSubOBJ_ (GXVRamSubOBJ obj) {
    switch (obj) {
    case GX_VRAM_SUB_OBJ_128_D:
        reg_GX_VRAMCNT_D = GX_VRAMCNT_D_SUBOBJ_0x06600000;
        break;

    case GX_VRAM_SUB_OBJ_16_I:
        reg_GX_VRAMCNT_I = GX_VRAMCNT_I_SUBOBJ_0x06600000;
        break;

    case GX_VRAM_SUB_OBJ_NONE:
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamSubOBJ, 0x%x specified.", obj);
        break;
    }
}

static inline void subBGExtPlttOn_ () {
    reg_GXS_DB_DISPCNT |= REG_GXS_DB_DISPCNT_BG_MASK;
}

static inline void subBGExtPlttOff_ () {
    reg_GXS_DB_DISPCNT &= ~REG_GXS_DB_DISPCNT_BG_MASK;
}

static inline void GX_VRAMCNT_SetSubBGExtPltt_ (GXVRamSubBGExtPltt bgExtPltt) {
    switch (bgExtPltt) {
    case GX_VRAM_SUB_BGEXTPLTT_0123_H:
        subBGExtPlttOn_();
        reg_GX_VRAMCNT_H = GX_VRAMCNT_H_SUBBGEXTPLTT_0123;
        break;

    case GX_VRAM_SUB_BGEXTPLTT_NONE:
        subBGExtPlttOff_();
        break;

    default:
        SDK_INTERNAL_ERROR("unknown GXVRamSubBGExtPltt, 0x%x specified.", bgExtPltt);
        break;
    }
}

static inline void subOBJExtPlttOn_ () {
    reg_GXS_DB_DISPCNT |= REG_GXS_DB_DISPCNT_O_MASK;
}

static inline void subOBJExtPlttOff_ () {
    reg_GXS_DB_DISPCNT &= ~REG_GXS_DB_DISPCNT_O_MASK;
}

static inline void GX_VRAMCNT_SetSubOBJExtPltt_ (GXVRamSubOBJExtPltt objExtPltt) {
    switch (objExtPltt) {
    case GX_VRAM_SUB_OBJEXTPLTT_0_I:
        subOBJExtPlttOn_();
        reg_GX_VRAMCNT_I = GX_VRAMCNT_I_SUBOBJEXTPLTT;
        break;

    case GX_VRAM_SUB_OBJEXTPLTT_NONE:
        subOBJExtPlttOff_();
        break;
    }
}

extern vu16 GXi_VRamLockId;

static void GxCheckExclusive (u16 vramMap) {
    if (!OSi_TryLockVram(vramMap, GXi_VRamLockId)) {
        OS_Panic("VRAM bank is locked by another library.\n");
    }
}

static inline void GxSetBankForBG (GXVRamBG bg) {
    GX_VRAM_BG_ASSERT(bg);

    gGXState.vramCnt.lcdc = (u16)(~bg & (gGXState.vramCnt.lcdc | gGXState.vramCnt.bg));
    gGXState.vramCnt.bg = bg;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetBG_(bg);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForBG (GXVRamBG bg) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)bg);
#endif
    GxSetBankForBG(bg);
}

BOOL GX_TrySetBankForBG (GXVRamBG bg) {
    if (!OSi_TryLockVram((u16)bg, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForBG(bg);
    return TRUE;
}

static void GxSetBankForBGEx (GXVRamBG bg1, GXVRamBG bg2) {
    GX_VRAM_BG_ASSERT_EX_1(bg1);
    GX_VRAM_BG_ASSERT_EX_2(bg2);

    gGXState.vramCnt.lcdc = (u16)(~(bg1 | bg2) & (gGXState.vramCnt.lcdc | gGXState.vramCnt.bg));
    gGXState.vramCnt.bg = (u16)(bg1 | bg2);

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetBGEx1_(bg1);
    GX_VRAMCNT_SetBGEx2_(bg2);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForBGEx (GXVRamBG bg1, GXVRamBG bg2) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)(bg1 | bg2));
#endif
    GxSetBankForBGEx(bg1, bg2);
}

BOOL GX_TrySetBankForBGEx (GXVRamBG bg1, GXVRamBG bg2) {
    if (!OSi_TryLockVram((u16)(bg1 | bg2), GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForBGEx(bg1, bg2);
    return TRUE;
}

static inline void GxSetBankForOBJ (GXVRamOBJ obj) {
    GX_VRAM_OBJ_ASSERT(obj);

    gGXState.vramCnt.lcdc = (u16)(~obj & (gGXState.vramCnt.lcdc | gGXState.vramCnt.obj));
    gGXState.vramCnt.obj = obj;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetOBJ_(obj);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForOBJ (GXVRamOBJ obj) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)obj);
#endif
    GxSetBankForOBJ(obj);
}

BOOL GX_TrySetBankForOBJ (GXVRamOBJ obj) {
    if (!OSi_TryLockVram((u16)obj, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForOBJ(obj);
    return TRUE;
}

static inline void GxSetBankForBGExtPltt (GXVRamBGExtPltt bgExtPltt) {
    GX_VRAM_BGEXTPLTT_ASSERT(bgExtPltt);

    gGXState.vramCnt.lcdc =
        (u16)(~bgExtPltt & (gGXState.vramCnt.lcdc | gGXState.vramCnt.bgExtPltt));
    gGXState.vramCnt.bgExtPltt = bgExtPltt;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetBGEXTPLTT_(bgExtPltt);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForBGExtPltt (GXVRamBGExtPltt bgExtPltt) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)bgExtPltt);
#endif
    GxSetBankForBGExtPltt(bgExtPltt);
}

BOOL GX_TrySetBankForBGExtPltt (GXVRamBGExtPltt bgExtPltt) {
    if (!OSi_TryLockVram((u16)bgExtPltt, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForBGExtPltt(bgExtPltt);
    return TRUE;
}

static inline void GxSetBankForOBJExtPltt (GXVRamOBJExtPltt objExtPltt) {
    GX_VRAM_OBJEXTPLTT_ASSERT(objExtPltt);

    gGXState.vramCnt.lcdc =
        (u16)(~objExtPltt & (gGXState.vramCnt.lcdc | gGXState.vramCnt.objExtPltt));
    gGXState.vramCnt.objExtPltt = objExtPltt;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetOBJEXTPLTT_(objExtPltt);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForOBJExtPltt (GXVRamOBJExtPltt objExtPltt) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)objExtPltt);
#endif
    GxSetBankForOBJExtPltt(objExtPltt);
}

BOOL GX_TrySetBankForOBJExtPltt (GXVRamOBJExtPltt objExtPltt) {
    if (!OSi_TryLockVram((u16)objExtPltt, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForOBJExtPltt(objExtPltt);
    return TRUE;
}

static inline void GxSetBankForTex (GXVRamTex tex) {
    GX_VRAM_TEX_ASSERT(tex);

    gGXState.vramCnt.lcdc = (u16)(~tex & (gGXState.vramCnt.lcdc | gGXState.vramCnt.tex));
    gGXState.vramCnt.tex = tex;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetTEX_(tex);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForTex (GXVRamTex tex) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)tex);
#endif
    GxSetBankForTex(tex);
}

BOOL GX_TrySetBankForTex (GXVRamTex tex) {
    if (!OSi_TryLockVram((u16)tex, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForTex(tex);
    return TRUE;
}

static inline void GxSetBankForTexPltt (GXVRamTexPltt texPltt) {
    GX_VRAM_TEXPLTT_ASSERT(texPltt);

    gGXState.vramCnt.lcdc = (u16)(~texPltt & (gGXState.vramCnt.lcdc | gGXState.vramCnt.texPltt));
    gGXState.vramCnt.texPltt = texPltt;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetTEXPLTT_(texPltt);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForTexPltt (GXVRamTexPltt texPltt) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)texPltt);
#endif
    GxSetBankForTexPltt(texPltt);
}

BOOL GX_TrySetBankForTexPltt (GXVRamTexPltt texPltt) {
    if (!OSi_TryLockVram((u16)texPltt, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForTexPltt(texPltt);
    return TRUE;
}

static inline void GxSetBankForClearImage (GXVRamClearImage clrImg) {
    GX_VRAM_CLRIMG_ASSERT(clrImg);

    gGXState.vramCnt.lcdc = (u16)(~clrImg & (gGXState.vramCnt.lcdc | gGXState.vramCnt.clrImg));
    gGXState.vramCnt.clrImg = clrImg;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetCLRIMG_(clrImg);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForClearImage (GXVRamClearImage clrImg) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)clrImg);
#endif
    GxSetBankForClearImage(clrImg);
}

BOOL GX_TrySetBankForClearImage (GXVRamClearImage clrImg) {
    if (!OSi_TryLockVram((u16)clrImg, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForClearImage(clrImg);
    return TRUE;
}

static inline void GxSetBankForARM7 (GXVRamARM7 arm7) {
    GX_VRAM_ARM7_ASSERT(arm7);

    gGXState.vramCnt.lcdc = (u16)(~arm7 & (gGXState.vramCnt.lcdc | gGXState.vramCnt.arm7));
    gGXState.vramCnt.arm7 = arm7;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetARM7_(arm7);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForARM7 (GXVRamARM7 arm7) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)arm7);
#endif
    GxSetBankForARM7(arm7);
}

BOOL GX_TrySetBankForARM7 (GXVRamARM7 arm7) {
    if (!OSi_TryLockVram((u16)arm7, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForARM7(arm7);
    return TRUE;
}

static inline void GxSetBankForLCDC (int lcdc) {
    GX_VRAM_LCDC_ASSERT(lcdc);

    gGXState.vramCnt.lcdc |= lcdc;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetLCDC_(lcdc);
}

void GX_SetBankForLCDC (int lcdc) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)lcdc);
#endif
    GxSetBankForLCDC(lcdc);
}

BOOL GX_TrySetBankForLCDC (int lcdc) {
    if (!OSi_TryLockVram((u16)lcdc, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForLCDC(lcdc);
    return TRUE;
}

static inline void GxSetBankForSubBG (GXVRamSubBG sub_bg) {
    GX_VRAM_SUB_BG_ASSERT(sub_bg);

    gGXState.vramCnt.lcdc = (u16)(~sub_bg & (gGXState.vramCnt.lcdc | gGXState.vramCnt.sub_bg));
    gGXState.vramCnt.sub_bg = sub_bg;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetSubBG_(sub_bg);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForSubBG (GXVRamSubBG sub_bg) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)sub_bg);
#endif
    GxSetBankForSubBG(sub_bg);
}

BOOL GX_TrySetBankForSubBG (GXVRamSubBG sub_bg) {
    if (!OSi_TryLockVram((u16)sub_bg, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForSubBG(sub_bg);
    return TRUE;
}

static inline void GxSetBankForSubOBJ (GXVRamSubOBJ sub_obj) {
    GX_VRAM_SUB_OBJ_ASSERT(sub_obj);

    gGXState.vramCnt.lcdc = (u16)(~sub_obj & (gGXState.vramCnt.lcdc | gGXState.vramCnt.sub_obj));
    gGXState.vramCnt.sub_obj = sub_obj;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetSubOBJ_(sub_obj);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForSubOBJ (GXVRamSubOBJ sub_obj) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)sub_obj);
#endif
    GxSetBankForSubOBJ(sub_obj);
}

BOOL GX_TrySetBankForSubOBJ (GXVRamSubOBJ sub_obj) {
    if (!OSi_TryLockVram((u16)sub_obj, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForSubOBJ(sub_obj);
    return TRUE;
}

static inline void GxSetBankForSubBGExtPltt (GXVRamSubBGExtPltt sub_bgExtPltt) {
    GX_VRAM_SUB_BGEXTPLTT_ASSERT(sub_bgExtPltt);

    gGXState.vramCnt.lcdc =
        (u16)(~sub_bgExtPltt & (gGXState.vramCnt.lcdc | gGXState.vramCnt.sub_bgExtPltt));
    gGXState.vramCnt.sub_bgExtPltt = sub_bgExtPltt;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetSubBGExtPltt_(sub_bgExtPltt);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForSubBGExtPltt (GXVRamSubBGExtPltt sub_bgExtPltt) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)sub_bgExtPltt);
#endif
    GxSetBankForSubBGExtPltt(sub_bgExtPltt);
}

BOOL GX_TrySetBankForSubBGExtPltt (GXVRamSubBGExtPltt sub_bgExtPltt) {
    if (!OSi_TryLockVram((u16)sub_bgExtPltt, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForSubBGExtPltt(sub_bgExtPltt);
    return TRUE;
}

static inline void GxSetBankForSubOBJExtPltt (GXVRamSubOBJExtPltt sub_objExtPltt) {
    GX_VRAM_SUB_OBJEXTPLTT_ASSERT(sub_objExtPltt);

    gGXState.vramCnt.lcdc =
        (u16)(~sub_objExtPltt & (gGXState.vramCnt.lcdc | gGXState.vramCnt.sub_objExtPltt));
    gGXState.vramCnt.sub_objExtPltt = sub_objExtPltt;

    GX_StateCheck_VRAMCnt();

    GX_VRAMCNT_SetSubOBJExtPltt_(sub_objExtPltt);
    GX_VRAMCNT_SetLCDC_(gGXState.vramCnt.lcdc);
}

void GX_SetBankForSubOBJExtPltt (GXVRamSubOBJExtPltt sub_objExtPltt) {
#ifndef SDK_FINALROM
    GxCheckExclusive((u16)sub_objExtPltt);
#endif
    GxSetBankForSubOBJExtPltt(sub_objExtPltt);
}

BOOL GX_TrySetBankForSubOBJExtPltt (GXVRamSubOBJExtPltt sub_objExtPltt) {
    if (!OSi_TryLockVram((u16)sub_objExtPltt, GXi_VRamLockId)) {
        return FALSE;
    }
    GxSetBankForSubOBJExtPltt(sub_objExtPltt);
    return TRUE;
}

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/codereset.h>
#endif

static int resetBankForX_ (u16 * g3bit) {
    int rval = *g3bit;
    *g3bit = 0;

    gGXState.vramCnt.lcdc |= rval;
    GX_VRAMCNT_SetLCDC_(rval);

    return rval;
}

GXVRamBG GX_ResetBankForBG () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.bg, GXi_VRamLockId)) {
        return GX_VRAM_BG_NONE;
    }
#endif
    return (GXVRamBG)resetBankForX_(&gGXState.vramCnt.bg);
}

GXVRamOBJ GX_ResetBankForOBJ () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.obj, GXi_VRamLockId)) {
        return GX_VRAM_OBJ_NONE;
    }
#endif
    return (GXVRamOBJ)resetBankForX_(&gGXState.vramCnt.obj);
}

GXVRamBGExtPltt GX_ResetBankForBGExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.bgExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_BGEXTPLTT_NONE;
    }
#endif
    bgExtPlttOff_();
    return (GXVRamBGExtPltt)resetBankForX_(&gGXState.vramCnt.bgExtPltt);
}

GXVRamOBJExtPltt GX_ResetBankForOBJExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.objExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_OBJEXTPLTT_NONE;
    }
#endif
    objExtPlttOff_();
    return (GXVRamOBJExtPltt)resetBankForX_(&gGXState.vramCnt.objExtPltt);
}

GXVRamTex GX_ResetBankForTex () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.tex, GXi_VRamLockId)) {
        return GX_VRAM_TEX_NONE;
    }
#endif
    return (GXVRamTex)resetBankForX_(&gGXState.vramCnt.tex);
}

GXVRamTexPltt GX_ResetBankForTexPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.texPltt, GXi_VRamLockId)) {
        return GX_VRAM_TEXPLTT_NONE;
    }
#endif
    return (GXVRamTexPltt)resetBankForX_(&gGXState.vramCnt.texPltt);
}

GXVRamClearImage GX_ResetBankForClearImage () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.clrImg, GXi_VRamLockId)) {
        return GX_VRAM_CLEARIMAGE_NONE;
    }
#endif
    return (GXVRamClearImage)resetBankForX_(&gGXState.vramCnt.clrImg);
}

GXVRamARM7 GX_ResetBankForARM7 () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.arm7, GXi_VRamLockId)) {
        return GX_VRAM_ARM7_NONE;
    }
#endif
    return (GXVRamARM7)resetBankForX_(&gGXState.vramCnt.arm7);
}

GXVRamSubBG GX_ResetBankForSubBG () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_bg, GXi_VRamLockId)) {
        return GX_VRAM_SUB_BG_NONE;
    }
#endif
    return (GXVRamSubBG)resetBankForX_(&gGXState.vramCnt.sub_bg);
}

GXVRamSubOBJ GX_ResetBankForSubOBJ () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_obj, GXi_VRamLockId)) {
        return GX_VRAM_SUB_OBJ_NONE;
    }
#endif
    return (GXVRamSubOBJ)resetBankForX_(&gGXState.vramCnt.sub_obj);
}

GXVRamSubBGExtPltt GX_ResetBankForSubBGExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_bgExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_SUB_BGEXTPLTT_NONE;
    }
#endif
    subBGExtPlttOff_();
    return (GXVRamSubBGExtPltt)resetBankForX_(&gGXState.vramCnt.sub_bgExtPltt);
}

GXVRamSubOBJExtPltt GX_ResetBankForSubOBJExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_objExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_SUB_OBJEXTPLTT_NONE;
    }
#endif
    subOBJExtPlttOff_();
    return (GXVRamSubOBJExtPltt)resetBankForX_(&gGXState.vramCnt.sub_objExtPltt);
}

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/code32.h>
#endif
static int disableBankForX_ (u16 * g3bit) {
    int rval = *g3bit;
    *g3bit = 0;

    if (rval & GX_VRAM_LCDC_A) {
        reg_GX_VRAMCNT_A = 0;
    }
    if (rval & GX_VRAM_LCDC_B) {
        reg_GX_VRAMCNT_B = 0;
    }
    if (rval & GX_VRAM_LCDC_C) {
        reg_GX_VRAMCNT_C = 0;
    }
    if (rval & GX_VRAM_LCDC_D) {
        reg_GX_VRAMCNT_D = 0;
    }
    if (rval & GX_VRAM_LCDC_E) {
        reg_GX_VRAMCNT_E = 0;
    }
    if (rval & GX_VRAM_LCDC_F) {
        reg_GX_VRAMCNT_F = 0;
    }
    if (rval & GX_VRAM_LCDC_G) {
        reg_GX_VRAMCNT_G = 0;
    }
    if (rval & GX_VRAM_LCDC_H) {
        reg_GX_VRAMCNT_H = 0;
    }
    if (rval & GX_VRAM_LCDC_I) {
        reg_GX_VRAMCNT_I = 0;
    }

    OSi_UnlockVram((u16)rval, GXi_VRamLockId);

    return rval;
}

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/codereset.h>
#endif

GXVRamBG GX_DisableBankForBG () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.bg, GXi_VRamLockId)) {
        return GX_VRAM_BG_NONE;
    }
#endif
    return (GXVRamBG)disableBankForX_(&gGXState.vramCnt.bg);
}

GXVRamOBJ GX_DisableBankForOBJ () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.obj, GXi_VRamLockId)) {
        return GX_VRAM_OBJ_NONE;
    }
#endif
    return (GXVRamOBJ)disableBankForX_(&gGXState.vramCnt.obj);
}

GXVRamBGExtPltt GX_DisableBankForBGExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.bgExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_BGEXTPLTT_NONE;
    }
#endif
    bgExtPlttOff_();
    return (GXVRamBGExtPltt)disableBankForX_(&gGXState.vramCnt.bgExtPltt);
}

GXVRamOBJExtPltt GX_DisableBankForOBJExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.objExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_OBJEXTPLTT_NONE;
    }
#endif
    objExtPlttOff_();
    return (GXVRamOBJExtPltt)disableBankForX_(&gGXState.vramCnt.objExtPltt);
}

GXVRamTex GX_DisableBankForTex () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.tex, GXi_VRamLockId)) {
        return GX_VRAM_TEX_NONE;
    }
#endif
    return (GXVRamTex)disableBankForX_(&gGXState.vramCnt.tex);
}

GXVRamTexPltt GX_DisableBankForTexPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.texPltt, GXi_VRamLockId)) {
        return GX_VRAM_TEXPLTT_NONE;
    }
#endif
    return (GXVRamTexPltt)disableBankForX_(&gGXState.vramCnt.texPltt);
}

GXVRamClearImage GX_DisableBankForClearImage () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.clrImg, GXi_VRamLockId)) {
        return GX_VRAM_CLEARIMAGE_NONE;
    }
#endif
    return (GXVRamClearImage)disableBankForX_(&gGXState.vramCnt.clrImg);
}

GXVRamARM7 GX_DisableBankForARM7 () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.arm7, GXi_VRamLockId)) {
        return GX_VRAM_ARM7_NONE;
    }
#endif
    return (GXVRamARM7)disableBankForX_(&gGXState.vramCnt.arm7);
}

GXVRamLCDC GX_DisableBankForLCDC () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.lcdc, GXi_VRamLockId)) {
        return GX_VRAM_LCDC_NONE;
    }
#endif
    return (GXVRamLCDC)disableBankForX_(&gGXState.vramCnt.lcdc);
}

GXVRamSubBG GX_DisableBankForSubBG () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_bg, GXi_VRamLockId)) {
        return GX_VRAM_SUB_BG_NONE;
    }
#endif
    return (GXVRamSubBG)disableBankForX_(&gGXState.vramCnt.sub_bg);
}

GXVRamSubOBJ GX_DisableBankForSubOBJ () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_obj, GXi_VRamLockId)) {
        return GX_VRAM_SUB_OBJ_NONE;
    }
#endif
    return (GXVRamSubOBJ)disableBankForX_(&gGXState.vramCnt.sub_obj);
}

GXVRamSubBGExtPltt GX_DisableBankForSubBGExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_bgExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_SUB_BGEXTPLTT_NONE;
    }
#endif
    subBGExtPlttOff_();
    return (GXVRamSubBGExtPltt)disableBankForX_(&gGXState.vramCnt.sub_bgExtPltt);
}

GXVRamSubOBJExtPltt GX_DisableBankForSubOBJExtPltt () {
#ifndef SDK_FINALROM
    if (!OSi_TryLockVram((u16)gGXState.vramCnt.sub_objExtPltt, GXi_VRamLockId)) {
        return GX_VRAM_SUB_OBJEXTPLTT_NONE;
    }
#endif
    subOBJExtPlttOff_();
    return (GXVRamSubOBJExtPltt)disableBankForX_(&gGXState.vramCnt.sub_objExtPltt);
}

GXVRamBG GX_GetBankForBG () {
    return (GXVRamBG)gGXState.vramCnt.bg;
}

GXVRamOBJ GX_GetBankForOBJ () {
    return (GXVRamOBJ)gGXState.vramCnt.obj;
}

GXVRamBGExtPltt GX_GetBankForBGExtPltt () {
    return (GXVRamBGExtPltt)gGXState.vramCnt.bgExtPltt;
}

GXVRamOBJExtPltt GX_GetBankForOBJExtPltt () {
    return (GXVRamOBJExtPltt)gGXState.vramCnt.objExtPltt;
}

GXVRamTex GX_GetBankForTex () {
    return (GXVRamTex)gGXState.vramCnt.tex;
}

GXVRamTexPltt GX_GetBankForTexPltt () {
    return (GXVRamTexPltt)gGXState.vramCnt.texPltt;
}

GXVRamClearImage GX_GetBankForClearImage () {
    return (GXVRamClearImage)gGXState.vramCnt.clrImg;
}

GXVRamARM7 GX_GetBankForARM7 () {
    return (GXVRamARM7)gGXState.vramCnt.arm7;
}

GXVRamLCDC GX_GetBankForLCDC () {
    return (GXVRamLCDC)gGXState.vramCnt.lcdc;
}

GXVRamSubBG GX_GetBankForSubBG () {
    return (GXVRamSubBG)gGXState.vramCnt.sub_bg;
}

GXVRamSubOBJ GX_GetBankForSubOBJ () {
    return (GXVRamSubOBJ)gGXState.vramCnt.sub_obj;
}

GXVRamSubBGExtPltt GX_GetBankForSubBGExtPltt () {
    return (GXVRamSubBGExtPltt)gGXState.vramCnt.sub_bgExtPltt;
}

GXVRamSubOBJExtPltt GX_GetBankForSubOBJExtPltt () {
    return (GXVRamSubOBJExtPltt)gGXState.vramCnt.sub_objExtPltt;
}

static u32 GX_GetSizeOfX_ (u32 bit) {
    u32 size = 0;
    if (bit & GX_VRAM_LCDC_A) {
        size += HW_VRAM_A_SIZE;
    }
    if (bit & GX_VRAM_LCDC_B) {
        size += HW_VRAM_B_SIZE;
    }
    if (bit & GX_VRAM_LCDC_C) {
        size += HW_VRAM_C_SIZE;
    }
    if (bit & GX_VRAM_LCDC_D) {
        size += HW_VRAM_D_SIZE;
    }
    if (bit & GX_VRAM_LCDC_E) {
        size += HW_VRAM_E_SIZE;
    }
    if (bit & GX_VRAM_LCDC_F) {
        size += HW_VRAM_F_SIZE;
    }
    if (bit & GX_VRAM_LCDC_G) {
        size += HW_VRAM_G_SIZE;
    }
    if (bit & GX_VRAM_LCDC_H) {
        size += HW_VRAM_H_SIZE;
    }
    if (bit & GX_VRAM_LCDC_I) {
        size += HW_VRAM_I_SIZE;
    }
    return size;
}

u32 GX_GetSizeOfBG (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.bg);
}

u32 GX_GetSizeOfOBJ (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.obj);
}

u32 GX_GetSizeOfBGExtPltt (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.bgExtPltt);
}

u32 GX_GetSizeOfOBJExtPltt (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.objExtPltt);
}

u32 GX_GetSizeOfTex (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.tex);
}

u32 GX_GetSizeOfTexPltt (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.texPltt);
}

u32 GX_GetSizeOfClearImage (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.clrImg);
}

u32 GX_GetSizeOfSubBG (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.sub_bg);
}

u32 GX_GetSizeOfSubOBJ (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.sub_obj);
}

u32 GX_GetSizeOfSubBGExtPltt (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.sub_bgExtPltt);
}

u32 GX_GetSizeOfSubOBJExtPltt (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.sub_objExtPltt);
}

u32 GX_GetSizeOfARM7 (void) {
    return GX_GetSizeOfX_(gGXState.vramCnt.arm7);
}

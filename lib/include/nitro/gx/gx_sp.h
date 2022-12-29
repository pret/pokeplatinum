#ifndef NITRO_GX_SP_H_
#define NITRO_GX_SP_H_

#include <nitro/hw/ARM7/ioreg.h>

#ifdef __cplusplus
extern "C" {
#endif

#define GX_LCD_SIZE_X HW_LCD_WIDTH
#define GX_LCD_SIZE_Y HW_LCD_HEIGHT

static s32 GX_IsHBlank(void);
static s32 GX_HBlankIntr(BOOL enable);
static s32 GX_IsVBlank(void);
static s32 GX_VBlankIntr(BOOL enable);
static s32 GX_IsVCountEq(void);
static void GX_VCountEqIntr(BOOL enable);
static void GX_SetVCountEqVal(s32 val);
static s32 GX_GetVCountEqVal(void);

#define GX_IsVCounterEq GX_IsVCountEq
#define GX_VCounterEqIntr GX_VCountEqIntr
#define GX_SetVCounterEqVal GX_SetVCountEqVal
#define GX_GetVCounterEqVal GX_GetVCountEqVal

static s32 GX_GetVCount(void);
static void GX_SetVCount(s32 count);

static inline s32 GX_IsHBlank (void)
{
    return (reg_GX_DISPSTAT & REG_GX_DISPSTAT_HBLK_MASK);
}

static inline s32 GX_IsVBlank (void)
{
    return (reg_GX_DISPSTAT & REG_GX_DISPSTAT_VBLK_MASK);
}

static inline s32 GX_IsVCountEq (void)
{
    return (reg_GX_DISPSTAT & REG_GX_DISPSTAT_LYC_MASK);
}

static inline void GX_VCountEqIntr (BOOL enable)
{
    if (enable) {
        reg_GX_DISPSTAT |= REG_GX_DISPSTAT_VQI_MASK;
    } else {
        reg_GX_DISPSTAT &= ~REG_GX_DISPSTAT_VQI_MASK;
    }
}

static inline s32 GX_GetVCount ()
{
    return reg_GX_VCOUNT;
}

static inline void GX_SetVCount (s32 count)
{
    SDK_WARNING(reg_GX_VCOUNT >= 202 && reg_GX_VCOUNT <= 212,
                "V Counter out of range(%d). it must be 202 to 212.", reg_GX_VCOUNT);
    SDK_ASSERT(count >= 202 && count <= 212);

    reg_GX_VCOUNT = (u16)count;
}

static inline void GX_SetVCountEqVal (s32 val)
{
    SDK_MINMAX_ASSERT(val, 0, HW_LCD_LINES - 1);
    reg_GX_DISPSTAT = (u16)((reg_GX_DISPSTAT & (REG_GX_DISPSTAT_VBLK_MASK |
                                                REG_GX_DISPSTAT_HBLK_MASK |
                                                REG_GX_DISPSTAT_LYC_MASK |
                                                REG_GX_DISPSTAT_VBI_MASK |
                                                REG_GX_DISPSTAT_HBI_MASK |
                                                REG_GX_DISPSTAT_VQI_MASK)) |
                            ((val & 0xff) << 8) | ((val & 0x100) >> 1));
}

static inline s32 GX_GetVCountEqVal (void)
{
    u16 val = reg_GX_DISPSTAT;
    return ((val >> 8) & 0x00ff) | ((val << 1) & 0x0100);
}

static inline s32 GX_HBlankIntr (BOOL enable)
{
    s32 rval = (reg_GX_DISPSTAT & REG_GX_DISPSTAT_HBI_MASK);
    if (enable) {
        reg_GX_DISPSTAT |= REG_GX_DISPSTAT_HBI_MASK;
    } else {
        reg_GX_DISPSTAT &= ~REG_GX_DISPSTAT_HBI_MASK;
    }
    return rval;
}

static inline s32 GX_VBlankIntr (BOOL enable)
{
    s32 rval = (reg_GX_DISPSTAT & REG_GX_DISPSTAT_VBI_MASK);
    if (enable) {
        reg_GX_DISPSTAT |= REG_GX_DISPSTAT_VBI_MASK;
    } else {
        reg_GX_DISPSTAT &= ~REG_GX_DISPSTAT_VBI_MASK;
    }
    return rval;
}

#ifdef __cplusplus
}
#endif

#endif

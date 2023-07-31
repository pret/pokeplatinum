#ifndef NITRO_HW_ARM7_IOREG_GX_H_
#define NITRO_HW_ARM7_IOREG_GX_H_

#ifndef SDK_ASM
#include <nitro/types.h>
#include <nitro/hw/ARM7/mmap_global.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define REG_DISPSTAT_OFFSET 0x004
#define REG_DISPSTAT_ADDR (HW_REG_BASE + REG_DISPSTAT_OFFSET)
#define reg_GX_DISPSTAT (*( REGType16v *)REG_DISPSTAT_ADDR)

#define REG_VCOUNT_OFFSET 0x006
#define REG_VCOUNT_ADDR (HW_REG_BASE + REG_VCOUNT_OFFSET)
#define reg_GX_VCOUNT (*( REGType16v *)REG_VCOUNT_ADDR)

#define REG_GX_DISPSTAT_VCOUNTER_SHIFT 7
#define REG_GX_DISPSTAT_VCOUNTER_SIZE 9
#define REG_GX_DISPSTAT_VCOUNTER_MASK 0xff80

#define REG_GX_DISPSTAT_VQI_SHIFT 5
#define REG_GX_DISPSTAT_VQI_SIZE 1
#define REG_GX_DISPSTAT_VQI_MASK 0x0020

#define REG_GX_DISPSTAT_HBI_SHIFT 4
#define REG_GX_DISPSTAT_HBI_SIZE 1
#define REG_GX_DISPSTAT_HBI_MASK 0x0010

#define REG_GX_DISPSTAT_VBI_SHIFT 3
#define REG_GX_DISPSTAT_VBI_SIZE 1
#define REG_GX_DISPSTAT_VBI_MASK 0x0008

#define REG_GX_DISPSTAT_LYC_SHIFT 2
#define REG_GX_DISPSTAT_LYC_SIZE 1
#define REG_GX_DISPSTAT_LYC_MASK 0x0004

#define REG_GX_DISPSTAT_HBLK_SHIFT 1
#define REG_GX_DISPSTAT_HBLK_SIZE 1
#define REG_GX_DISPSTAT_HBLK_MASK 0x0002

#define REG_GX_DISPSTAT_VBLK_SHIFT 0
#define REG_GX_DISPSTAT_VBLK_SIZE 1
#define REG_GX_DISPSTAT_VBLK_MASK 0x0001

#ifndef SDK_ASM
#define REG_GX_DISPSTAT_FIELD(vcounter, vqi, hbi, vbi, lyc, hblk, vblk) \
    (u16)( \
        ((u32)(vcounter) << REG_GX_DISPSTAT_VCOUNTER_SHIFT) | \
        ((u32)(vqi) << REG_GX_DISPSTAT_VQI_SHIFT) | \
        ((u32)(hbi) << REG_GX_DISPSTAT_HBI_SHIFT) | \
        ((u32)(vbi) << REG_GX_DISPSTAT_VBI_SHIFT) | \
        ((u32)(lyc) << REG_GX_DISPSTAT_LYC_SHIFT) | \
        ((u32)(hblk) << REG_GX_DISPSTAT_HBLK_SHIFT) | \
        ((u32)(vblk) << REG_GX_DISPSTAT_VBLK_SHIFT))
#endif

#define REG_GX_VCOUNT_VCOUNTER_SHIFT 0
#define REG_GX_VCOUNT_VCOUNTER_SIZE 10
#define REG_GX_VCOUNT_VCOUNTER_MASK 0x03ff

#ifndef SDK_ASM
#define REG_GX_VCOUNT_FIELD(vcounter) \
    (u16)( \
        ((u32)(vcounter) << REG_GX_VCOUNT_VCOUNTER_SHIFT))
#endif

#ifdef __cplusplus
}
#endif

#endif

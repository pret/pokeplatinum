#ifndef NITRO_HW_ARM9_IOREG_EXI_H_
#define NITRO_HW_ARM9_IOREG_EXI_H_

#ifndef SDK_ASM
#include <nitro/types.h>
#include <nitro/hw/ARM9/mmap_global.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define REG_SIODATA32_OFFSET 0x120
#define REG_SIODATA32_ADDR (HW_REG_BASE + REG_SIODATA32_OFFSET)
#define reg_EXI_SIODATA32 (*( REGType32v *)REG_SIODATA32_ADDR)

#define REG_SIOCNT_OFFSET 0x128
#define REG_SIOCNT_ADDR (HW_REG_BASE + REG_SIOCNT_OFFSET)
#define reg_EXI_SIOCNT (*( REGType16v *)REG_SIOCNT_ADDR)

#define REG_SIOSEL_OFFSET 0x12c
#define REG_SIOSEL_ADDR (HW_REG_BASE + REG_SIOSEL_OFFSET)
#define reg_EXI_SIOSEL (*( REGType16v *)REG_SIOSEL_ADDR)

#define REG_EXI_SIODATA32_H_SHIFT 16
#define REG_EXI_SIODATA32_H_SIZE 16
#define REG_EXI_SIODATA32_H_MASK 0xffff0000

#define REG_EXI_SIODATA32_L_SHIFT 0
#define REG_EXI_SIODATA32_L_SIZE 16
#define REG_EXI_SIODATA32_L_MASK 0x0000ffff

#ifndef SDK_ASM
#define REG_EXI_SIODATA32_FIELD(h, l) \
    (u32)( \
        ((u32)(h) << REG_EXI_SIODATA32_H_SHIFT) | \
        ((u32)(l) << REG_EXI_SIODATA32_L_SHIFT))
#endif

#define REG_EXI_SIOCNT_TSEND_SHIFT 3
#define REG_EXI_SIOCNT_TSEND_SIZE 1
#define REG_EXI_SIOCNT_TSEND_MASK 0x0008

#define REG_EXI_SIOCNT_TRECV_SHIFT 2
#define REG_EXI_SIOCNT_TRECV_SIZE 1
#define REG_EXI_SIOCNT_TRECV_MASK 0x0004

#ifndef SDK_ASM
#define REG_EXI_SIOCNT_FIELD(tsend, trecv) \
    (u16)( \
        ((u32)(tsend) << REG_EXI_SIOCNT_TSEND_SHIFT) | \
        ((u32)(trecv) << REG_EXI_SIOCNT_TRECV_SHIFT))
#endif

#define REG_EXI_SIOSEL_SEL_SHIFT 0
#define REG_EXI_SIOSEL_SEL_SIZE 1
#define REG_EXI_SIOSEL_SEL_MASK 0x0001

#ifndef SDK_ASM
#define REG_EXI_SIOSEL_FIELD(sel) \
    (u16)( \
        ((u32)(sel) << REG_EXI_SIOSEL_SEL_SHIFT))
#endif

#ifdef __cplusplus
}
#endif

#endif

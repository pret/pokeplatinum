#ifndef NITRO_HW_ARM7_IOREG_OS_H_
#define NITRO_HW_ARM7_IOREG_OS_H_

#ifndef SDK_ASM
#include <nitro/types.h>
#include <nitro/hw/ARM7/mmap_global.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define REG_TM0CNT_L_OFFSET 0x100
#define REG_TM0CNT_L_ADDR (HW_REG_BASE + REG_TM0CNT_L_OFFSET)
#define reg_OS_TM0CNT_L (*( REGType16v *)REG_TM0CNT_L_ADDR)

#define REG_TM0CNT_H_OFFSET 0x102
#define REG_TM0CNT_H_ADDR (HW_REG_BASE + REG_TM0CNT_H_OFFSET)
#define reg_OS_TM0CNT_H (*( REGType16v *)REG_TM0CNT_H_ADDR)

#define REG_TM1CNT_L_OFFSET 0x104
#define REG_TM1CNT_L_ADDR (HW_REG_BASE + REG_TM1CNT_L_OFFSET)
#define reg_OS_TM1CNT_L (*( REGType16v *)REG_TM1CNT_L_ADDR)

#define REG_TM1CNT_H_OFFSET 0x106
#define REG_TM1CNT_H_ADDR (HW_REG_BASE + REG_TM1CNT_H_OFFSET)
#define reg_OS_TM1CNT_H (*( REGType16v *)REG_TM1CNT_H_ADDR)

#define REG_TM2CNT_L_OFFSET 0x108
#define REG_TM2CNT_L_ADDR (HW_REG_BASE + REG_TM2CNT_L_OFFSET)
#define reg_OS_TM2CNT_L (*( REGType16v *)REG_TM2CNT_L_ADDR)

#define REG_TM2CNT_H_OFFSET 0x10a
#define REG_TM2CNT_H_ADDR (HW_REG_BASE + REG_TM2CNT_H_OFFSET)
#define reg_OS_TM2CNT_H (*( REGType16v *)REG_TM2CNT_H_ADDR)

#define REG_TM3CNT_L_OFFSET 0x10c
#define REG_TM3CNT_L_ADDR (HW_REG_BASE + REG_TM3CNT_L_OFFSET)
#define reg_OS_TM3CNT_L (*( REGType16v *)REG_TM3CNT_L_ADDR)

#define REG_TM3CNT_H_OFFSET 0x10e
#define REG_TM3CNT_H_ADDR (HW_REG_BASE + REG_TM3CNT_H_OFFSET)
#define reg_OS_TM3CNT_H (*( REGType16v *)REG_TM3CNT_H_ADDR)

#define REG_IME_OFFSET 0x208
#define REG_IME_ADDR (HW_REG_BASE + REG_IME_OFFSET)
#define reg_OS_IME (*( REGType16v *)REG_IME_ADDR)

#define REG_IE_OFFSET 0x210
#define REG_IE_ADDR (HW_REG_BASE + REG_IE_OFFSET)
#define reg_OS_IE (*( REGType32v *)REG_IE_ADDR)

#define REG_IF_OFFSET 0x214
#define REG_IF_ADDR (HW_REG_BASE + REG_IF_OFFSET)
#define reg_OS_IF (*( REGType32v *)REG_IF_ADDR)

#define REG_PAUSE_OFFSET 0x300
#define REG_PAUSE_ADDR (HW_REG_BASE + REG_PAUSE_OFFSET)
#define reg_OS_PAUSE (*( REGType16v *)REG_PAUSE_ADDR)

#define REG_OS_TM0CNT_L_TIMER0CNT_SHIFT 0
#define REG_OS_TM0CNT_L_TIMER0CNT_SIZE 16
#define REG_OS_TM0CNT_L_TIMER0CNT_MASK 0xffff

#ifndef SDK_ASM
#define REG_OS_TM0CNT_L_FIELD(timer0cnt) \
    (u16)( \
        ((u32)(timer0cnt) << REG_OS_TM0CNT_L_TIMER0CNT_SHIFT))
#endif

#define REG_OS_TM0CNT_H_E_SHIFT 7
#define REG_OS_TM0CNT_H_E_SIZE 1
#define REG_OS_TM0CNT_H_E_MASK 0x0080

#define REG_OS_TM0CNT_H_I_SHIFT 6
#define REG_OS_TM0CNT_H_I_SIZE 1
#define REG_OS_TM0CNT_H_I_MASK 0x0040

#define REG_OS_TM0CNT_H_PS_SHIFT 0
#define REG_OS_TM0CNT_H_PS_SIZE 2
#define REG_OS_TM0CNT_H_PS_MASK 0x0003

#ifndef SDK_ASM
#define REG_OS_TM0CNT_H_FIELD(e, i, ps) \
    (u16)( \
        ((u32)(e) << REG_OS_TM0CNT_H_E_SHIFT) | \
        ((u32)(i) << REG_OS_TM0CNT_H_I_SHIFT) | \
        ((u32)(ps) << REG_OS_TM0CNT_H_PS_SHIFT))
#endif

#define REG_OS_TM1CNT_L_TIMER1CNT_SHIFT 0
#define REG_OS_TM1CNT_L_TIMER1CNT_SIZE 16
#define REG_OS_TM1CNT_L_TIMER1CNT_MASK 0xffff

#ifndef SDK_ASM
#define REG_OS_TM1CNT_L_FIELD(timer1cnt) \
    (u16)( \
        ((u32)(timer1cnt) << REG_OS_TM1CNT_L_TIMER1CNT_SHIFT))
#endif

#define REG_OS_TM1CNT_H_E_SHIFT 7
#define REG_OS_TM1CNT_H_E_SIZE 1
#define REG_OS_TM1CNT_H_E_MASK 0x0080

#define REG_OS_TM1CNT_H_I_SHIFT 6
#define REG_OS_TM1CNT_H_I_SIZE 1
#define REG_OS_TM1CNT_H_I_MASK 0x0040

#define REG_OS_TM1CNT_H_CH_SHIFT 2
#define REG_OS_TM1CNT_H_CH_SIZE 1
#define REG_OS_TM1CNT_H_CH_MASK 0x0004

#define REG_OS_TM1CNT_H_PS_SHIFT 0
#define REG_OS_TM1CNT_H_PS_SIZE 2
#define REG_OS_TM1CNT_H_PS_MASK 0x0003

#ifndef SDK_ASM
#define REG_OS_TM1CNT_H_FIELD(e, i, ch, ps) \
    (u16)( \
        ((u32)(e) << REG_OS_TM1CNT_H_E_SHIFT) | \
        ((u32)(i) << REG_OS_TM1CNT_H_I_SHIFT) | \
        ((u32)(ch) << REG_OS_TM1CNT_H_CH_SHIFT) | \
        ((u32)(ps) << REG_OS_TM1CNT_H_PS_SHIFT))
#endif

#define REG_OS_TM2CNT_L_TIMER2CNT_SHIFT 0
#define REG_OS_TM2CNT_L_TIMER2CNT_SIZE 16
#define REG_OS_TM2CNT_L_TIMER2CNT_MASK 0xffff

#ifndef SDK_ASM
#define REG_OS_TM2CNT_L_FIELD(timer2cnt) \
    (u16)( \
        ((u32)(timer2cnt) << REG_OS_TM2CNT_L_TIMER2CNT_SHIFT))
#endif

#define REG_OS_TM2CNT_H_E_SHIFT 7
#define REG_OS_TM2CNT_H_E_SIZE 1
#define REG_OS_TM2CNT_H_E_MASK 0x0080

#define REG_OS_TM2CNT_H_I_SHIFT 6
#define REG_OS_TM2CNT_H_I_SIZE 1
#define REG_OS_TM2CNT_H_I_MASK 0x0040

#define REG_OS_TM2CNT_H_CH_SHIFT 2
#define REG_OS_TM2CNT_H_CH_SIZE 1
#define REG_OS_TM2CNT_H_CH_MASK 0x0004

#define REG_OS_TM2CNT_H_PS_SHIFT 0
#define REG_OS_TM2CNT_H_PS_SIZE 2
#define REG_OS_TM2CNT_H_PS_MASK 0x0003

#ifndef SDK_ASM
#define REG_OS_TM2CNT_H_FIELD(e, i, ch, ps) \
    (u16)( \
        ((u32)(e) << REG_OS_TM2CNT_H_E_SHIFT) | \
        ((u32)(i) << REG_OS_TM2CNT_H_I_SHIFT) | \
        ((u32)(ch) << REG_OS_TM2CNT_H_CH_SHIFT) | \
        ((u32)(ps) << REG_OS_TM2CNT_H_PS_SHIFT))
#endif

#define REG_OS_TM3CNT_L_TIMER2CNT_SHIFT 0
#define REG_OS_TM3CNT_L_TIMER2CNT_SIZE 16
#define REG_OS_TM3CNT_L_TIMER2CNT_MASK 0xffff

#ifndef SDK_ASM
#define REG_OS_TM3CNT_L_FIELD(timer2cnt) \
    (u16)( \
        ((u32)(timer2cnt) << REG_OS_TM3CNT_L_TIMER2CNT_SHIFT))
#endif

#define REG_OS_TM3CNT_H_E_SHIFT 7
#define REG_OS_TM3CNT_H_E_SIZE 1
#define REG_OS_TM3CNT_H_E_MASK 0x0080

#define REG_OS_TM3CNT_H_I_SHIFT 6
#define REG_OS_TM3CNT_H_I_SIZE 1
#define REG_OS_TM3CNT_H_I_MASK 0x0040

#define REG_OS_TM3CNT_H_CH_SHIFT 2
#define REG_OS_TM3CNT_H_CH_SIZE 1
#define REG_OS_TM3CNT_H_CH_MASK 0x0004

#define REG_OS_TM3CNT_H_PS_SHIFT 0
#define REG_OS_TM3CNT_H_PS_SIZE 2
#define REG_OS_TM3CNT_H_PS_MASK 0x0003

#ifndef SDK_ASM
#define REG_OS_TM3CNT_H_FIELD(e, i, ch, ps) \
    (u16)( \
        ((u32)(e) << REG_OS_TM3CNT_H_E_SHIFT) | \
        ((u32)(i) << REG_OS_TM3CNT_H_I_SHIFT) | \
        ((u32)(ch) << REG_OS_TM3CNT_H_CH_SHIFT) | \
        ((u32)(ps) << REG_OS_TM3CNT_H_PS_SHIFT))
#endif

#define REG_OS_IME_IME_SHIFT 0
#define REG_OS_IME_IME_SIZE 1
#define REG_OS_IME_IME_MASK 0x0001

#ifndef SDK_ASM
#define REG_OS_IME_FIELD(ime) \
    (u16)( \
        ((u32)(ime) << REG_OS_IME_IME_SHIFT))
#endif

#define REG_OS_IE_WL_SHIFT 24
#define REG_OS_IE_WL_SIZE 1
#define REG_OS_IE_WL_MASK 0x01000000

#define REG_OS_IE_SPI_SHIFT 23
#define REG_OS_IE_SPI_SIZE 1
#define REG_OS_IE_SPI_MASK 0x00800000

#define REG_OS_IE_PM_SHIFT 22
#define REG_OS_IE_PM_SIZE 1
#define REG_OS_IE_PM_MASK 0x00400000

#define REG_OS_IE_MI_SHIFT 20
#define REG_OS_IE_MI_SIZE 1
#define REG_OS_IE_MI_MASK 0x00100000

#define REG_OS_IE_MC_SHIFT 19
#define REG_OS_IE_MC_SIZE 1
#define REG_OS_IE_MC_MASK 0x00080000

#define REG_OS_IE_IFN_SHIFT 18
#define REG_OS_IE_IFN_SIZE 1
#define REG_OS_IE_IFN_MASK 0x00040000

#define REG_OS_IE_IFE_SHIFT 17
#define REG_OS_IE_IFE_SIZE 1
#define REG_OS_IE_IFE_MASK 0x00020000

#define REG_OS_IE_A7_SHIFT 16
#define REG_OS_IE_A7_SIZE 1
#define REG_OS_IE_A7_MASK 0x00010000

#define REG_OS_IE_I_D_SHIFT 13
#define REG_OS_IE_I_D_SIZE 1
#define REG_OS_IE_I_D_MASK 0x00002000

#define REG_OS_IE_K_SHIFT 12
#define REG_OS_IE_K_SIZE 1
#define REG_OS_IE_K_MASK 0x00001000

#define REG_OS_IE_D3_SHIFT 11
#define REG_OS_IE_D3_SIZE 1
#define REG_OS_IE_D3_MASK 0x00000800

#define REG_OS_IE_D2_SHIFT 10
#define REG_OS_IE_D2_SIZE 1
#define REG_OS_IE_D2_MASK 0x00000400

#define REG_OS_IE_D1_SHIFT 9
#define REG_OS_IE_D1_SIZE 1
#define REG_OS_IE_D1_MASK 0x00000200

#define REG_OS_IE_D0_SHIFT 8
#define REG_OS_IE_D0_SIZE 1
#define REG_OS_IE_D0_MASK 0x00000100

#define REG_OS_IE_T3_SHIFT 6
#define REG_OS_IE_T3_SIZE 1
#define REG_OS_IE_T3_MASK 0x00000040

#define REG_OS_IE_T2_SHIFT 5
#define REG_OS_IE_T2_SIZE 1
#define REG_OS_IE_T2_MASK 0x00000020

#define REG_OS_IE_T1_SHIFT 4
#define REG_OS_IE_T1_SIZE 1
#define REG_OS_IE_T1_MASK 0x00000010

#define REG_OS_IE_T0_SHIFT 3
#define REG_OS_IE_T0_SIZE 1
#define REG_OS_IE_T0_MASK 0x00000008

#define REG_OS_IE_VE_SHIFT 2
#define REG_OS_IE_VE_SIZE 1
#define REG_OS_IE_VE_MASK 0x00000004

#define REG_OS_IE_HB_SHIFT 1
#define REG_OS_IE_HB_SIZE 1
#define REG_OS_IE_HB_MASK 0x00000002

#define REG_OS_IE_VB_SHIFT 0
#define REG_OS_IE_VB_SIZE 1
#define REG_OS_IE_VB_MASK 0x00000001

#ifndef SDK_ASM
#define REG_OS_IE_FIELD(wl, spi, pm, mi, mc, ifn, ife, a7, i_d, k, d3, d2, d1, d0, t3, t2, t1, t0, ve, hb, vb) \
    (u32)( \
        ((u32)(wl) << REG_OS_IE_WL_SHIFT) | \
        ((u32)(spi) << REG_OS_IE_SPI_SHIFT) | \
        ((u32)(pm) << REG_OS_IE_PM_SHIFT) | \
        ((u32)(mi) << REG_OS_IE_MI_SHIFT) | \
        ((u32)(mc) << REG_OS_IE_MC_SHIFT) | \
        ((u32)(ifn) << REG_OS_IE_IFN_SHIFT) | \
        ((u32)(ife) << REG_OS_IE_IFE_SHIFT) | \
        ((u32)(a7) << REG_OS_IE_A7_SHIFT) | \
        ((u32)(i_d) << REG_OS_IE_I_D_SHIFT) | \
        ((u32)(k) << REG_OS_IE_K_SHIFT) | \
        ((u32)(d3) << REG_OS_IE_D3_SHIFT) | \
        ((u32)(d2) << REG_OS_IE_D2_SHIFT) | \
        ((u32)(d1) << REG_OS_IE_D1_SHIFT) | \
        ((u32)(d0) << REG_OS_IE_D0_SHIFT) | \
        ((u32)(t3) << REG_OS_IE_T3_SHIFT) | \
        ((u32)(t2) << REG_OS_IE_T2_SHIFT) | \
        ((u32)(t1) << REG_OS_IE_T1_SHIFT) | \
        ((u32)(t0) << REG_OS_IE_T0_SHIFT) | \
        ((u32)(ve) << REG_OS_IE_VE_SHIFT) | \
        ((u32)(hb) << REG_OS_IE_HB_SHIFT) | \
        ((u32)(vb) << REG_OS_IE_VB_SHIFT))
#endif

#define REG_OS_IF_WL_SHIFT 24
#define REG_OS_IF_WL_SIZE 1
#define REG_OS_IF_WL_MASK 0x01000000

#define REG_OS_IF_SPI_SHIFT 23
#define REG_OS_IF_SPI_SIZE 1
#define REG_OS_IF_SPI_MASK 0x00800000

#define REG_OS_IF_PM_SHIFT 22
#define REG_OS_IF_PM_SIZE 1
#define REG_OS_IF_PM_MASK 0x00400000

#define REG_OS_IF_MI_SHIFT 20
#define REG_OS_IF_MI_SIZE 1
#define REG_OS_IF_MI_MASK 0x00100000

#define REG_OS_IF_MC_SHIFT 19
#define REG_OS_IF_MC_SIZE 1
#define REG_OS_IF_MC_MASK 0x00080000

#define REG_OS_IF_IFN_SHIFT 18
#define REG_OS_IF_IFN_SIZE 1
#define REG_OS_IF_IFN_MASK 0x00040000

#define REG_OS_IF_IFE_SHIFT 17
#define REG_OS_IF_IFE_SIZE 1
#define REG_OS_IF_IFE_MASK 0x00020000

#define REG_OS_IF_A7_SHIFT 16
#define REG_OS_IF_A7_SIZE 1
#define REG_OS_IF_A7_MASK 0x00010000

#define REG_OS_IF_I_D_SHIFT 13
#define REG_OS_IF_I_D_SIZE 1
#define REG_OS_IF_I_D_MASK 0x00002000

#define REG_OS_IF_K_SHIFT 12
#define REG_OS_IF_K_SIZE 1
#define REG_OS_IF_K_MASK 0x00001000

#define REG_OS_IF_D3_SHIFT 11
#define REG_OS_IF_D3_SIZE 1
#define REG_OS_IF_D3_MASK 0x00000800

#define REG_OS_IF_D2_SHIFT 10
#define REG_OS_IF_D2_SIZE 1
#define REG_OS_IF_D2_MASK 0x00000400

#define REG_OS_IF_D1_SHIFT 9
#define REG_OS_IF_D1_SIZE 1
#define REG_OS_IF_D1_MASK 0x00000200

#define REG_OS_IF_D0_SHIFT 8
#define REG_OS_IF_D0_SIZE 1
#define REG_OS_IF_D0_MASK 0x00000100

#define REG_OS_IF_T3_SHIFT 6
#define REG_OS_IF_T3_SIZE 1
#define REG_OS_IF_T3_MASK 0x00000040

#define REG_OS_IF_T2_SHIFT 5
#define REG_OS_IF_T2_SIZE 1
#define REG_OS_IF_T2_MASK 0x00000020

#define REG_OS_IF_T1_SHIFT 4
#define REG_OS_IF_T1_SIZE 1
#define REG_OS_IF_T1_MASK 0x00000010

#define REG_OS_IF_T0_SHIFT 3
#define REG_OS_IF_T0_SIZE 1
#define REG_OS_IF_T0_MASK 0x00000008

#define REG_OS_IF_VE_SHIFT 2
#define REG_OS_IF_VE_SIZE 1
#define REG_OS_IF_VE_MASK 0x00000004

#define REG_OS_IF_HB_SHIFT 1
#define REG_OS_IF_HB_SIZE 1
#define REG_OS_IF_HB_MASK 0x00000002

#define REG_OS_IF_VB_SHIFT 0
#define REG_OS_IF_VB_SIZE 1
#define REG_OS_IF_VB_MASK 0x00000001

#ifndef SDK_ASM
#define REG_OS_IF_FIELD(wl, spi, pm, mi, mc, ifn, ife, a7, i_d, k, d3, d2, d1, d0, t3, t2, t1, t0, ve, hb, vb) \
    (u32)( \
        ((u32)(wl) << REG_OS_IF_WL_SHIFT) | \
        ((u32)(spi) << REG_OS_IF_SPI_SHIFT) | \
        ((u32)(pm) << REG_OS_IF_PM_SHIFT) | \
        ((u32)(mi) << REG_OS_IF_MI_SHIFT) | \
        ((u32)(mc) << REG_OS_IF_MC_SHIFT) | \
        ((u32)(ifn) << REG_OS_IF_IFN_SHIFT) | \
        ((u32)(ife) << REG_OS_IF_IFE_SHIFT) | \
        ((u32)(a7) << REG_OS_IF_A7_SHIFT) | \
        ((u32)(i_d) << REG_OS_IF_I_D_SHIFT) | \
        ((u32)(k) << REG_OS_IF_K_SHIFT) | \
        ((u32)(d3) << REG_OS_IF_D3_SHIFT) | \
        ((u32)(d2) << REG_OS_IF_D2_SHIFT) | \
        ((u32)(d1) << REG_OS_IF_D1_SHIFT) | \
        ((u32)(d0) << REG_OS_IF_D0_SHIFT) | \
        ((u32)(t3) << REG_OS_IF_T3_SHIFT) | \
        ((u32)(t2) << REG_OS_IF_T2_SHIFT) | \
        ((u32)(t1) << REG_OS_IF_T1_SHIFT) | \
        ((u32)(t0) << REG_OS_IF_T0_SHIFT) | \
        ((u32)(ve) << REG_OS_IF_VE_SHIFT) | \
        ((u32)(hb) << REG_OS_IF_HB_SHIFT) | \
        ((u32)(vb) << REG_OS_IF_VB_SHIFT))
#endif

#define REG_OS_PAUSE_MOD_SHIFT 14
#define REG_OS_PAUSE_MOD_SIZE 2
#define REG_OS_PAUSE_MOD_MASK 0xc000

#define REG_OS_PAUSE_CHK_SHIFT 0
#define REG_OS_PAUSE_CHK_SIZE 1
#define REG_OS_PAUSE_CHK_MASK 0x0001

#ifndef SDK_ASM
#define REG_OS_PAUSE_FIELD(mod, chk) \
    (u16)( \
        ((u32)(mod) << REG_OS_PAUSE_MOD_SHIFT) | \
        ((u32)(chk) << REG_OS_PAUSE_CHK_SHIFT))
#endif

#ifdef __cplusplus
}
#endif

#endif

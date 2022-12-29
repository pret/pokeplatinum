#ifndef NITRO_MI_EXMEMORY_H_
#define NITRO_MI_EXMEMORY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/ioreg.h>

#ifdef SDK_ARM7
#define reg_MI_EXMEMCNT reg_MI_EXMEMCNT_L

#define REG_MI_EXMEMCNT_EP_SHIFT REG_MI_EXMEMCNT_L_EP_SHIFT
#define REG_MI_EXMEMCNT_EP_SIZE REG_MI_EXMEMCNT_L_EP_SIZE
#define REG_MI_EXMEMCNT_EP_MASK REG_MI_EXMEMCNT_L_EP_MASK

#define REG_MI_EXMEMCNT_MP_SHIFT REG_MI_EXMEMCNT_L_MP_SHIFT
#define REG_MI_EXMEMCNT_MP_SIZE REG_MI_EXMEMCNT_L_MP_SIZE
#define REG_MI_EXMEMCNT_MP_MASK REG_MI_EXMEMCNT_L_MP_MASK

#define REG_MI_EXMEMCNT_CP_SHIFT REG_MI_EXMEMCNT_L_CP_SHIFT
#define REG_MI_EXMEMCNT_CP_SIZE REG_MI_EXMEMCNT_L_CP_SIZE
#define REG_MI_EXMEMCNT_CP_MASK REG_MI_EXMEMCNT_L_CP_MASK

#define REG_MI_EXMEMCNT_PHI_SHIFT REG_MI_EXMEMCNT_L_PHI_SHIFT
#define REG_MI_EXMEMCNT_PHI_SIZE REG_MI_EXMEMCNT_L_PHI_SIZE
#define REG_MI_EXMEMCNT_PHI_MASK REG_MI_EXMEMCNT_L_PHI_MASK

#define REG_MI_EXMEMCNT_ROM2nd_SHIFT REG_MI_EXMEMCNT_L_ROM2nd_SHIFT
#define REG_MI_EXMEMCNT_ROM2nd_SIZE REG_MI_EXMEMCNT_L_ROM2nd_SIZE
#define REG_MI_EXMEMCNT_ROM2nd_MASK REG_MI_EXMEMCNT_L_ROM2nd_MASK

#define REG_MI_EXMEMCNT_ROM1st_SHIFT REG_MI_EXMEMCNT_L_ROM1st_SHIFT
#define REG_MI_EXMEMCNT_ROM1st_SIZE REG_MI_EXMEMCNT_L_ROM1st_SIZE
#define REG_MI_EXMEMCNT_ROM1st_MASK REG_MI_EXMEMCNT_L_ROM1st_MASK

#define REG_MI_EXMEMCNT_RAM_SHIFT REG_MI_EXMEMCNT_L_RAM_SHIFT
#define REG_MI_EXMEMCNT_RAM_SIZE REG_MI_EXMEMCNT_L_RAM_SIZE
#define REG_MI_EXMEMCNT_RAM_MASK REG_MI_EXMEMCNT_L_RAM_MASK
#endif

typedef enum {
    MI_PROCESSOR_ARM9 = 0,
    MI_PROCESSOR_ARM7 = 1
} MIProcessor;

typedef enum {
    MIi_PHI_CLOCK_LOW = 0,
    MIi_PHI_CLOCK_4MHZ = 1,
    MIi_PHI_CLOCK_8MHZ = 2,
    MIi_PHI_CLOCK_16MHZ = 3
} MIiPhiClock;

typedef enum {
    MI_CTRDG_ROMCYCLE1_10 = 0,
    MI_CTRDG_ROMCYCLE1_8 = 1,
    MI_CTRDG_ROMCYCLE1_6 = 2,
    MI_CTRDG_ROMCYCLE1_18 = 3
} MICartridgeRomCycle1st;

typedef enum {
    MI_CTRDG_ROMCYCLE2_6 = 0,
    MI_CTRDG_ROMCYCLE2_4 = 1
} MICartridgeRomCycle2nd;

typedef enum {
    MI_CTRDG_RAMCYCLE_10 = 0,
    MI_CTRDG_RAMCYCLE_8 = 1,
    MI_CTRDG_RAMCYCLE_6 = 2,
    MI_CTRDG_RAMCYCLE_18 = 3
} MICartridgeRamCycle;

typedef enum {
    MI_WMWAIT0_1_9 = 0,
    MI_WMWAIT0_1_7 = 1,
    MI_WMWAIT0_1_5 = 2,
    MI_WMWAIT0_1_17 = 3
} MIWMWait0_1;

typedef enum {
    MI_WMWAIT0_2_5 = 0,
    MI_WMWAIT0_2_3 = 1
} MIWMWait0_2;

typedef enum {
    MI_WMWAIT1_1_9 = 0,
    MI_WMWAIT1_1_7 = 1,
    MI_WMWAIT1_1_5 = 2,
    MI_WMWAIT1_1_17 = 3
} MIWMWait1_1;

typedef enum {
    MI_WMWAIT1_2_9 = 0,
    MI_WMWAIT1_2_3 = 1
} MIWMWait1_2;

typedef enum {
    MI_PHI_CLOCK_CARTRIDGE = 0,
    MI_PHI_CLOCK_33MHZ = 1
} MIPhiControl;

#define MI_PROCESSOR_ASSERT(x) SDK_ASSERT((u32)x <= MI_PROCESSOR_ARM7)
#define MI_PHICLOCK_ASSERT(x) SDK_ASSERT((u32)x <= MIi_PHI_CLOCK_16MHZ)

#define MI_ROMCYCLE1_ASSERT(x) SDK_ASSERT((u32)x <= MI_CTRDG_ROMCYCLE1_18)
#define MI_ROMCYCLE2_ASSERT(x) SDK_ASSERT((u32)x <= MI_CTRDG_ROMCYCLE2_4)
#define MI_RAMCYCLE_ASSERT(x) SDK_ASSERT((u32)x <= MI_CTRDG_RAMCYCLE_18)

#define MI_WMWAIT0_1_ASSERT(x) SDK_ASSERT((u32)x <= MI_WMWAIT0_1_17)
#define MI_WMWAIT0_2_ASSERT(x) SDK_ASSERT((u32)x <= MI_WMWAIT0_2_3)
#define MI_WMWAIT1_1_ASSERT(x) SDK_ASSERT((u32)x <= MI_WMWAIT1_1_17)
#define MI_WMWAIT1_2_ASSERT(x) SDK_ASSERT((u32)x <= MI_WMWAIT1_2_3)

#define MI_PHICONTROL_ASSERT(x) SDK_ASSERT((u32)x <= MI_PHI_CLOCK_33MHZ)

#ifdef SDK_ARM9
static inline void MI_SetMainMemoryPriority (MIProcessor proc)
{
    MI_PROCESSOR_ASSERT(proc);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_EP_MASK) | (proc << REG_MI_EXMEMCNT_EP_SHIFT));
}
#endif

static inline MIProcessor MI_GetMainMemoryPriority (void)
{
    return (MIProcessor)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_EP_MASK) >> REG_MI_EXMEMCNT_EP_SHIFT);
}

#ifdef SDK_ARM9
static inline void MIi_SetCardProcessor (MIProcessor proc)
{
    MI_PROCESSOR_ASSERT(proc);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_MP_MASK) | (proc << REG_MI_EXMEMCNT_MP_SHIFT));
}
#endif

static inline MIProcessor MI_GetCardProcessor (void)
{
    return (MIProcessor)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_MP_MASK) >> REG_MI_EXMEMCNT_MP_SHIFT);
}

#ifdef SDK_ARM9
static inline void MIi_SetCartridgeProcessor (MIProcessor proc)
{
    MI_PROCESSOR_ASSERT(proc);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_CP_MASK) | (proc << REG_MI_EXMEMCNT_CP_SHIFT));
}
#endif

static inline MIProcessor MI_GetCartridgeProcessor (void)
{
    return (MIProcessor)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_CP_MASK) >> REG_MI_EXMEMCNT_CP_SHIFT);
}

static inline void MIi_SetPhiClock (MIiPhiClock clock)
{
    MI_PHICLOCK_ASSERT(clock);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_PHI_MASK) | (clock << REG_MI_EXMEMCNT_PHI_SHIFT));
}

static inline MIiPhiClock MIi_GetPhiClock (void)
{
    return (MIiPhiClock)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_PHI_MASK) >>
                         REG_MI_EXMEMCNT_PHI_SHIFT);
}

static inline void MI_SetCartridgeRomCycle1st (MICartridgeRomCycle1st c1)
{
    MI_ROMCYCLE1_ASSERT(c1);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_ROM1st_MASK) |
              (c1 << REG_MI_EXMEMCNT_ROM1st_SHIFT));
}

static inline MICartridgeRomCycle1st MI_GetCartridgeRomCycle1st (void)
{
    return (MICartridgeRomCycle1st)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_ROM1st_MASK) >>
                                    REG_MI_EXMEMCNT_ROM1st_SHIFT);
}

static inline void MI_SetCartridgeRomCycle2nd (MICartridgeRomCycle2nd c2)
{
    MI_ROMCYCLE2_ASSERT(c2);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_ROM2nd_MASK) |
              (c2 << REG_MI_EXMEMCNT_ROM2nd_SHIFT));
}

static inline MICartridgeRomCycle2nd MI_GetCartridgeRomCycle2nd (void)
{
    return (MICartridgeRomCycle2nd)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_ROM2nd_MASK) >>
                                    REG_MI_EXMEMCNT_ROM2nd_SHIFT);
}

void MI_SetAgbCartridgeFastestRomCycle(MICartridgeRomCycle1st * prev1st,
                                       MICartridgeRomCycle2nd * prev2nd);

static inline void MI_SetCartridgeRamCycle (MICartridgeRamCycle c)
{
    MI_RAMCYCLE_ASSERT(c);
    reg_MI_EXMEMCNT =
        (u16)((reg_MI_EXMEMCNT & ~REG_MI_EXMEMCNT_RAM_MASK) | (c << REG_MI_EXMEMCNT_RAM_SHIFT));
}

static inline MICartridgeRamCycle MI_GetCartridgeRamCycle (void)
{
    return (MICartridgeRamCycle)((reg_MI_EXMEMCNT & REG_MI_EXMEMCNT_RAM_MASK) >>
                                 REG_MI_EXMEMCNT_RAM_SHIFT);
}

#ifdef SDK_ARM7

static inline void MI_SetWM0Wait1st (MIWMWait0_1 wait)
{
    MI_WMWAIT0_1_ASSERT(wait);
    reg_MI_EXMEMCNT_H =
        (u16)((reg_MI_EXMEMCNT_H & ~REG_MI_EXMEMCNT_H_WW0_1st_MASK) |
              (wait << REG_MI_EXMEMCNT_H_WW0_1st_SHIFT));
}

static inline MIWMWait0_1 MI_GetWM0Wait1st (void)
{
    return (MIWMWait0_1)((reg_MI_EXMEMCNT_H & REG_MI_EXMEMCNT_H_WW0_1st_MASK) >>
                         REG_MI_EXMEMCNT_H_WW0_1st_SHIFT);
}

static inline void MI_SetWM0Wait2nd (MIWMWait0_2 wait)
{
    MI_WMWAIT0_2_ASSERT(wait);
    reg_MI_EXMEMCNT_H =
        (u16)((reg_MI_EXMEMCNT_H & ~REG_MI_EXMEMCNT_H_WW0_2nd_MASK) |
              (wait << REG_MI_EXMEMCNT_H_WW0_2nd_SHIFT));
}

static inline MIWMWait0_2 MI_GetWM0Wait2nd (void)
{
    return (MIWMWait0_2)((reg_MI_EXMEMCNT_H & REG_MI_EXMEMCNT_H_WW0_2nd_MASK) >>
                         REG_MI_EXMEMCNT_H_WW0_2nd_SHIFT);
}

static inline void MI_SetWM1Wait1st (MIWMWait1_1 wait)
{
    MI_WMWAIT1_1_ASSERT(wait);
    reg_MI_EXMEMCNT_H =
        (u16)((reg_MI_EXMEMCNT_H & ~REG_MI_EXMEMCNT_H_WW1_1st_MASK) |
              (wait << REG_MI_EXMEMCNT_H_WW1_1st_SHIFT));
}

static inline MIWMWait1_1 MI_GetWM1Wait1st (void)
{
    return (MIWMWait1_1)((reg_MI_EXMEMCNT_H & REG_MI_EXMEMCNT_H_WW1_1st_MASK) >>
                         REG_MI_EXMEMCNT_H_WW1_1st_SHIFT);
}

static inline void MI_SetWM1Wait2nd (MIWMWait1_2 wait)
{
    MI_WMWAIT1_2_ASSERT(wait);
    reg_MI_EXMEMCNT_H =
        (u16)((reg_MI_EXMEMCNT_H & ~REG_MI_EXMEMCNT_H_WW1_2nd_MASK) |
              (wait << REG_MI_EXMEMCNT_H_WW0_2nd_SHIFT));
}

static inline MIWMWait1_2 MI_GetWM1Wait2nd (void)
{
    return (MIWMWait1_2)((reg_MI_EXMEMCNT_H & REG_MI_EXMEMCNT_H_WW1_2nd_MASK) >>
                         REG_MI_EXMEMCNT_H_WW1_2nd_SHIFT);
}

static inline void MI_SetPhiControl (MIPhiControl control)
{
    MI_PHICONTROL_ASSERT(control);
    reg_MI_EXMEMCNT_H =
        (u16)((reg_MI_EXMEMCNT_H & ~REG_MI_EXMEMCNT_H_PHI33M_MASK) |
              (control << REG_MI_EXMEMCNT_H_PHI33M_SHIFT));
}

static inline MIPhiControl MI_GetPhiControl (void)
{
    return (MIPhiControl)((reg_MI_EXMEMCNT_H & REG_MI_EXMEMCNT_H_PHI33M_MASK) >>
                          REG_MI_EXMEMCNT_H_PHI33M_SHIFT);
}

#endif

#ifdef __cplusplus
}
#endif

#endif

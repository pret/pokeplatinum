#ifndef NITRO_PAD_PAD_H_
#define NITRO_PAD_PAD_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/hw/common/mmap_shared.h>
#ifdef SDK_ARM9
#include <nitro/hw/ARM9/ioreg_PAD.h>
#else
#include <nitro/hw/ARM7/ioreg_PAD.h>
#endif

#define PAD_PLUS_KEY_MASK 0x00f0
#define PAD_BUTTON_MASK 0x2f0f
#define PAD_DEBUG_BUTTON_MASK 0x2000
#define PAD_ALL_MASK 0x2fff
#define PAD_RCNTPORT_MASK 0x2c00
#define PAD_KEYPORT_MASK 0x03ff

#define PAD_DETECT_FOLD_MASK 0x8000

#define PAD_BUTTON_A 0x0001
#define PAD_BUTTON_B 0x0002
#define PAD_BUTTON_SELECT 0x0004
#define PAD_BUTTON_START 0x0008
#define PAD_KEY_RIGHT 0x0010
#define PAD_KEY_LEFT 0x0020
#define PAD_KEY_UP 0x0040
#define PAD_KEY_DOWN 0x0080
#define PAD_BUTTON_R 0x0100
#define PAD_BUTTON_L 0x0200
#define PAD_BUTTON_X 0x0400
#define PAD_BUTTON_Y 0x0800
#define PAD_BUTTON_DEBUG 0x2000

static inline u16 PAD_Read (void)
{
    return (u16)(((reg_PAD_KEYINPUT | *(vu16 *)HW_BUTTON_XY_BUF) ^
                  (PAD_PLUS_KEY_MASK | PAD_BUTTON_MASK)) & (PAD_PLUS_KEY_MASK | PAD_BUTTON_MASK));
}

static inline BOOL PAD_DetectFold (void)
{
    return (BOOL)((*(vu16 *)HW_BUTTON_XY_BUF & PAD_DETECT_FOLD_MASK) >> 15);
}

typedef enum {
    PAD_LOGIC_OR = (0 << REG_PAD_KEYCNT_LOGIC_SHIFT),
    PAD_LOGIC_AND = (1 << REG_PAD_KEYCNT_LOGIC_SHIFT),

    PAD_OR_INTR = PAD_LOGIC_OR,
    PAD_AND_INTR = PAD_LOGIC_AND
} PADLogic;

static inline void PADi_SetIrq (PADLogic logic, BOOL enable, u16 padMask)
{
    SDK_ASSERT(!(padMask & (~PAD_KEYPORT_MASK)));
    reg_PAD_KEYCNT = (u16)(((u16)logic
                            | (enable ? REG_PAD_KEYCNT_INTR_MASK : 0)
                            | (PAD_KEYPORT_MASK & padMask)));
}

static inline void PADi_ClearIrq (void)
{
    reg_PAD_KEYCNT = 0;
}

#ifdef __cplusplus
}
#endif

#endif

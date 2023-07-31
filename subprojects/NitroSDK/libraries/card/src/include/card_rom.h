#if !defined(NITRO_LIBRARIES_CARD_ROM_H__)
#define NITRO_LIBRARIES_CARD_ROM_H__

#include <nitro.h>

#include "card_common.h"

#if defined(SDK_TEG)
#define SDK_ARM7_READROM_SUPPORT
#endif

#define REG_CARD_MASTER_CNT (HW_REG_BASE + 0x1A1)
#define REG_CARDCNT (HW_REG_BASE + 0x1A4)
#define REG_CARD_CMD (HW_REG_BASE + 0x1A8)
#define REG_CARD_DATA (HW_REG_BASE + 0x100010)

#define CARDMST_SEL_ROM 0x00
#define CARDMST_IF_ENABLE 0x40
#define CARDMST_ENABLE 0x80

#define CARD_DATA_READY 0x00800000
#define CARD_COMMAND_PAGE 0x01000000
#define CARD_COMMAND_ID 0x07000000
#define CARD_COMMAND_MASK 0x07000000
#define CARD_RESET_HI 0x20000000
#define CARD_RESET_LO 0x00000000
#define CARD_ACCESS_MODE 0x40000000
#define CARD_READ_MODE 0x00000000
#define CARD_WRITE_MODE 0x40000000
#define CARD_START 0x80000000
#define CARD_LATENCY1_MASK 0x00001FFF

#define MROMOP_G_READ_ID 0xB8000000
#define MROMOP_G_READ_PAGE 0xB7000000

typedef struct CARDRomStat {
    void (* read_func) (struct CARDRomStat *);
    u32 ctrl;
    u8 * cache_page;
    u32 dummy[5];
    u8 cache_buf[CARD_ROM_PAGE_SIZE];
} CARDRomStat;

SDK_COMPILER_ASSERT(sizeof(CARDRomStat) % 32 == 0);

extern CARDRomStat rom_stat;
extern u32 cardi_rom_header_addr;

static inline BOOL CARDi_IsInTcm (u32 buf, u32 len) {
#if defined(SDK_ARM9)
    const u32 i = OS_GetITCMAddress();
    const u32 d = OS_GetDTCMAddress();
    return
        ((i < buf + len) && (i + HW_ITCM_SIZE > buf)) ||
        ((d < buf + len) && (d + HW_DTCM_SIZE > buf));
#else
#pragma unused(buf)
#pragma unused(len)
    return FALSE;
#endif
}

static inline u32 CARDi_GetRomFlag (u32 flag) {
    const u32 rom_ctrl = *(vu32 *)(cardi_rom_header_addr + 0x60);
    return (u32)((rom_ctrl & ~CARD_COMMAND_MASK) | flag |
                 CARD_READ_MODE | CARD_START | CARD_RESET_HI);
}

void CARDi_CheckPulledOutCore(u32 id);

#if defined(SDK_TS) || defined(SDK_ARM7)

u32 CARDi_ReadRomIDCore(void);

#endif

static inline void CARDi_ReadEnd (void) {
    CARDiCommon * const p = &cardi_common;
#ifdef SDK_ARM9

    CARDi_CheckPulledOutCore(CARDi_ReadRomIDCore());
#endif
    p->cmd->result = CARD_RESULT_SUCCESS;
    CARDi_EndTask(p, TRUE);
}

#if defined(SDK_ARM7)

void CARDi_ReadRomCore(const void * src, void * dst, u32 len);

#endif

void(*CARDi_GetRomAccessor(void)) (CARDRomStat *);

void CARDi_ReadCard(CARDRomStat * p);

BOOL CARDi_TryReadCardDma(CARDRomStat * p);

#if defined(SDK_TEG)

void CARDi_ReadCartridge(CARDRomStat * p);

void CARDi_ReadPxi(CARDRomStat * p);

#endif

#endif

#ifndef NITRO_CTRDG_COMMON_H_
#define NITRO_CTRDG_COMMON_H_

#include <nitro/types.h>
#include <nitro/memorymap.h>
#include <nitro/mi.h>
#include <nitro/os.h>
#include <nitro/pxi.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CTRDG_PXI_COMMAND_MASK 0x0000003f
#define CTRDG_PXI_COMMAND_SHIFT 0
#define CTRDG_PXI_COMMAND_PARAM_MASK 0x01ffffc0
#define CTRDG_PXI_COMMAND_PARAM_SHIFT 6
#define CTRDG_PXI_FIXLEN_DATA_MASK 0x03ffffff
#define CTRDG_PXI_FIXLEN_DATA_SHIFT 0
#define CTRDG_PXI_FLEXLEN_DATA_MASK 0x01ffffff
#define CTRDG_PXI_FLEXLEN_DATA_SHIFT 0
#define CTRDG_PXI_FLEXLEN_CONTINUOUS_BIT 0x02000000
#define CTRDG_PXI_PACKET_MAX 4

#define CTRDG_PXI_COMMAND_INIT_MODULE_INFO 0x0001
#define CTRDG_PXI_COMMAND_TERMINATE 0x0002
#define CTRDG_PXI_COMMAND_SET_PHI 0x0003

#define CTRDG_PXI_COMMAND_IMI_PACKET_SIZE 2

#define CTRDG_PXI_COMMAND_PULLED_OUT 0x0011
#define CTRDG_PXI_COMMAND_SET_PHI_RESULT 0x0012

#ifdef SDK_ARM9
#define CTRDG_LOCKED_BY_MYPROC_FLAG OS_MAINP_LOCKED_FLAG
#else
#define CTRDG_LOCKED_BY_MYPROC_FLAG OS_SUBP_LOCKED_FLAG
#endif

#define CTRDG_SYSROM9_NINLOGO_ADR 0xffff0020

#define CTRDG_AGB_ROMHEADER_SIZE 0xc0
#define CTRDG_AGB_NINLOGO_SIZE 0x9c

#define CTRDG_IS_ROM_CODE 0x96

typedef enum {
    CTRDG_PHI_CLOCK_LOW = MIi_PHI_CLOCK_LOW,
    CTRDG_PHI_CLOCK_4MHZ = MIi_PHI_CLOCK_4MHZ,
    CTRDG_PHI_CLOCK_8MHZ = MIi_PHI_CLOCK_8MHZ,
    CTRDG_PHI_CLOCK_16MHZ = MIi_PHI_CLOCK_16MHZ
} CTRDGPhiClock;

typedef struct {
    u32 startAddress;
    u8 nintendoLogo[0x9c];

    char titleName[12];
    u32 gameCode;
    u16 makerCode;

    u8 isRomCode;

    u8 machineCode;
    u8 deviceType;

    u8 exLsiID[3];

    u8 reserved_A[4];
    u8 softVersion;
    u8 complement;

    u16 moduleID;
} CTRDGHeader;

typedef struct {
    union {
        struct {
            u8 bitID;
            u8 numberID : 5;
            u8 :     2;
            u8 disableExLsiID : 1;
        };
        u16 raw;
    };
} CTRDGModuleID;

typedef struct {
    CTRDGModuleID moduleID;
    u8 exLsiID[3];
    u8 isAgbCartridge : 1;
    u8 detectPullOut : 1;
    u8 :     0;
    u16 makerCode;
    u32 gameCode;
} CTRDGModuleInfo;

#ifdef SDK_ARM9
typedef BOOL (* CTRDGPulledOutCallback) (void);
#endif

void CTRDG_Init(void);

BOOL CTRDG_IsPulledOut(void);

BOOL CTRDG_IsExisting(void);

BOOL CTRDG_IsBitID(u8 bitID);

BOOL CTRDG_IsNumberID(u8 numberID);

BOOL CTRDG_IsAgbCartridge(void);

BOOL CTRDG_IsOptionCartridge(void);

u32 CTRDG_GetAgbGameCode(void);

u16 CTRDG_GetAgbMakerCode(void);

BOOL CTRDG_IsAgbCartridgePulledOut(void);

BOOL CTRDG_IsOptionCartridgePulledOut(void);

#ifdef SDK_ARM9
void CTRDG_SetPulledOutCallback(CTRDGPulledOutCallback callback);
#endif

#ifdef SDK_ARM9
void CTRDG_TerminateForPulledOut(void);
#endif

void CTRDG_SendToARM7(void * arg);

BOOL CTRDG_DmaCopy16(u32 dmaNo, const void * src, void * dest, u32 size);
BOOL CTRDG_DmaCopy32(u32 dmaNo, const void * src, void * dest, u32 size);

BOOL CTRDG_CpuCopy8(const void * src, void * dest, u32 size);
BOOL CTRDG_CpuCopy16(const void * src, void * dest, u32 size);
BOOL CTRDG_CpuCopy32(const void * src, void * dest, u32 size);

BOOL CTRDG_Read8(const u8 * address, u8 * rdata);
BOOL CTRDG_Read16(const u16 * address, u16 * rdata);
BOOL CTRDG_Read32(const u32 * address, u32 * rdata);

BOOL CTRDG_Write8(u8 * address, u8 data);
BOOL CTRDG_Write16(u16 * address, u16 data);
BOOL CTRDG_Write32(u32 * address, u32 data);

BOOL CTRDG_IsEnabled(void);

void CTRDG_Enable(BOOL enable);

void CTRDG_CheckEnabled(void);

void CTRDG_CheckPulledOut(void);

#ifdef SDK_ARM9
void CTRDG_SetPhiClock(CTRDGPhiClock clock);
#endif

#ifdef SDK_ARM9
static inline CTRDGPhiClock CTRDG_GetPhiClock (void)
{
    return (CTRDGPhiClock)MIi_GetPhiClock();
}
#endif

typedef struct CTRDGRomCycle {
    MICartridgeRomCycle1st c1;
    MICartridgeRomCycle2nd c2;
} CTRDGRomCycle;

typedef struct CTRDGLockByProc {
    BOOL locked;
    OSIntrMode irq;
} CTRDGLockByProc;

void CTRDGi_InitCommon(void);
void CTRDGi_InitModuleInfo(void);
void CTRDGi_SendtoPxi(u32 data);
#if defined(SDK_ARM7)
BOOL CTRDGi_LockByProcessor(u16 lockID, CTRDGLockByProc * info);
#else
void CTRDGi_LockByProcessor(u16 lockID, CTRDGLockByProc * info);
#endif
void CTRDGi_UnlockByProcessor(u16 lockID, CTRDGLockByProc * info);
void CTRDGi_ChangeLatestAccessCycle(CTRDGRomCycle * r);
void CTRDGi_RestoreAccessCycle(CTRDGRomCycle * r);

BOOL CTRDGi_IsBitIDAtInit(u8 bitID);
BOOL CTRDGi_IsNumberIDAtInit(u8 numberID);
BOOL CTRDGi_IsAgbCartridgeAtInit(void);
u32 CTRDGi_GetAgbGameCodeAtInit(void);
u16 CTRDGi_GetAgbMakerCodeAtInit(void);

#define CTRDGi_GetHeaderAddr() ((CTRDGHeader *)HW_CTRDG_ROM)

#define CTRDGi_GetModuleIDImageAddr() ((u16 *)(HW_CTRDG_ROM + 0x0001fffe))

#define CTRDGi_GetModuleInfoAddr() ((CTRDGModuleInfo *)HW_CTRDG_MODULE_INFO_BUF)

#define CTRDGi_FORWARD_TYPE_DMA 0x00000000
#define CTRDGi_FORWARD_TYPE_CPU 0x00000001
#define CTRDGi_FORWARD_TYPE_MASK 0x00000001

#define CTRDGi_FORWARD_WIDTH_8 0x00000000
#define CTRDGi_FORWARD_WIDTH_16 0x00000010
#define CTRDGi_FORWARD_WIDTH_32 0x00000020
#define CTRDGi_FORWARD_WIDTH_MASK 0x00000030

#define CTRDGi_FORWARD_DMA16 (CTRDGi_FORWARD_TYPE_DMA | CTRDGi_FORWARD_WIDTH_16)
#define CTRDGi_FORWARD_DMA32 (CTRDGi_FORWARD_TYPE_DMA | CTRDGi_FORWARD_WIDTH_32)
#define CTRDGi_FORWARD_CPU8 (CTRDGi_FORWARD_TYPE_CPU | CTRDGi_FORWARD_WIDTH_8)
#define CTRDGi_FORWARD_CPU16 (CTRDGi_FORWARD_TYPE_CPU | CTRDGi_FORWARD_WIDTH_16)
#define CTRDGi_FORWARD_CPU32 (CTRDGi_FORWARD_TYPE_CPU | CTRDGi_FORWARD_WIDTH_32)

#define CTRDGi_ACCESS_DIR_WRITE 0x00000000
#define CTRDGi_ACCESS_DIR_READ 0x00000001
#define CTRDGi_ACCESS_DIR_MASK 0x00000001

#define CTRDGi_ACCESS_WIDTH_8 0x00000010
#define CTRDGi_ACCESS_WIDTH_16 0x00000020
#define CTRDGi_ACCESS_WIDTH_32 0x00000040
#define CTRDGi_ACCESS_WIDTH_MASK 0x000000f0

#define CTRDGi_ACCESS_WRITE8 (CTRDGi_ACCESS_DIR_WRITE | CTRDGi_ACCESS_WIDTH_8)
#define CTRDGi_ACCESS_WRITE16 (CTRDGi_ACCESS_DIR_WRITE | CTRDGi_ACCESS_WIDTH_16)
#define CTRDGi_ACCESS_WRITE32 (CTRDGi_ACCESS_DIR_WRITE | CTRDGi_ACCESS_WIDTH_32)
#define CTRDGi_ACCESS_READ8 (CTRDGi_ACCESS_DIR_READ | CTRDGi_ACCESS_WIDTH_8)
#define CTRDGi_ACCESS_READ16 (CTRDGi_ACCESS_DIR_READ | CTRDGi_ACCESS_WIDTH_16)
#define CTRDGi_ACCESS_READ32 (CTRDGi_ACCESS_DIR_READ | CTRDGi_ACCESS_WIDTH_32)

BOOL CTRDGi_CopyCommon(u32 dmaNo, const void * src, void * dest, u32 size, u32 forwardType);

BOOL CTRDGi_AccessCommon(void * address, u32 data, void * rdata, u32 accessType);

#ifdef __cplusplus
}
#endif

#endif

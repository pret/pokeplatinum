#ifndef NITRO_OS_PROTECTIONREGION_H_
#define NITRO_OS_PROTECTIONREGION_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

#define OS_PR0_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR0_SFT)
#define OS_PR0_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR0_SFT)
#define OS_PR0_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR0_SFT)
#define OS_PR0_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR0_SFT)

#define OS_PR1_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR1_SFT)
#define OS_PR1_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR1_SFT)
#define OS_PR1_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR1_SFT)
#define OS_PR1_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR1_SFT)

#define OS_PR2_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR2_SFT)
#define OS_PR2_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR2_SFT)
#define OS_PR2_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR2_SFT)
#define OS_PR2_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR2_SFT)

#define OS_PR3_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR3_SFT)
#define OS_PR3_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR3_SFT)
#define OS_PR3_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR3_SFT)
#define OS_PR3_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR3_SFT)

#define OS_PR4_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR4_SFT)
#define OS_PR4_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR4_SFT)
#define OS_PR4_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR4_SFT)
#define OS_PR4_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR4_SFT)

#define OS_PR5_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR5_SFT)
#define OS_PR5_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR5_SFT)
#define OS_PR5_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR5_SFT)
#define OS_PR5_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR5_SFT)

#define OS_PR6_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR6_SFT)
#define OS_PR6_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR6_SFT)
#define OS_PR6_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR6_SFT)
#define OS_PR6_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR6_SFT)

#define OS_PR7_ACCESS_MASK (HW_C5_PERMIT_MASK << HW_C5_PR7_SFT)
#define OS_PR7_ACCESS_NA (HW_C5_PERMIT_NA << HW_C5_PR7_SFT)
#define OS_PR7_ACCESS_RW (HW_C5_PERMIT_RW << HW_C5_PR7_SFT)
#define OS_PR7_ACCESS_RO (HW_C5_PERMIT_RO << HW_C5_PR7_SFT)

void OS_EnableICacheForProtectionRegion(register u32 flags);
void OS_DisableICacheForProtectionRegion(register u32 flags);

u32 OS_GetICacheEnableFlagsForProtectionRegion(void);

void OS_SetIPermissionsForProtectionRegion(u32 setMask, u32 flags);

u32 OS_GetIPermissionsForProtectionRegion(void);

void OS_EnableDCacheForProtectionRegion(u32 flags);
void OS_DisableDCacheForProtectionRegion(u32 flags);

u32 OS_GetDCacheEnableFlagsForProtectionRegion(u32 flags);

void OS_SetDPermissionsForProtectionRegion(u32 setMask, u32 flags);

u32 OS_GetDPermissionsForProtectionRegion(void);

void OS_EnableWriteBufferForProtectionRegion(u32 flags);
void OS_DisableWriteBufferForProtectionRegion(u32 flags);

u32 OS_GetWriteBufferEnableFlagsForProtectionRegion(u32 flags);

typedef enum {
    OSi_PR_BASE_MASK_4KB = 0xfffff000,
    OSi_PR_BASE_MASK_8KB = 0xffffe000,
    OSi_PR_BASE_MASK_16KB = 0xffffc000,
    OSi_PR_BASE_MASK_32KB = 0xffff8000,
    OSi_PR_BASE_MASK_64KB = 0xffff0000,
    OSi_PR_BASE_MASK_128KB = 0xfffe0000,
    OSi_PR_BASE_MASK_256KB = 0xfffc0000,
    OSi_PR_BASE_MASK_512KB = 0xfff80000,
    OSi_PR_BASE_MASK_1MB = 0xfff00000,
    OSi_PR_BASE_MASK_2MB = 0xffe00000,
    OSi_PR_BASE_MASK_4MB = 0xffc00000,
    OSi_PR_BASE_MASK_8MB = 0xff800000,
    OSi_PR_BASE_MASK_16MB = 0xff000000,
    OSi_PR_BASE_MASK_32MB = 0xfe000000,
    OSi_PR_BASE_MASK_64MB = 0xfc000000,
    OSi_PR_BASE_MASK_128MB = 0xf8000000,
    OSi_PR_BASE_MASK_256MB = 0xf0000000,
    OSi_PR_BASE_MASK_512MB = 0xe0000000,
    OSi_PR_BASE_MASK_1GB = 0xc0000000,
    OSi_PR_BASE_MASK_2GB = 0x80000000,
    OSi_PR_BASE_MASK_4GB = 0x00000000
} OSiProtectionRegionBaseMask;

static inline u32 OSi_CalcPRParam (u32 address, u32 size, OSiProtectionRegionBaseMask mask)
{
#ifdef SDK_DEBUG
    SDK_ASSERT((address & mask) == address);
#endif
    return ((address & mask) | size);
}

#define OS_SetProtectionRegion(regionNo, address, sizeStr)  \
    OSi_SetPR ## regionNo ## _param(OSi_CalcPRParam(address, HW_C6_PR_ ## sizeStr, OSi_PR_BASE_MASK_ ## sizeStr) \
                                    | HW_C6_PR_ENABLE)

#define OS_SetProtectionRegionParam(regionNo, param) OSi_SetPR ## regionNo ## _param(param)

#define OSi_SetPR0_param(param) OS_SetProtectionRegion0(param)
#define OSi_SetPR1_param(param) OS_SetProtectionRegion1(param)
#define OSi_SetPR2_param(param) OS_SetProtectionRegion2(param)
#define OSi_SetPR3_param(param) OS_SetProtectionRegion3(param)
#define OSi_SetPR4_param(param) OS_SetProtectionRegion4(param)
#define OSi_SetPR5_param(param) OS_SetProtectionRegion5(param)
#define OSi_SetPR6_param(param) OS_SetProtectionRegion6(param)
#define OSi_SetPR7_param(param) OS_SetProtectionRegion7(param)

void OS_SetProtectionRegion0(u32 param);
void OS_SetProtectionRegion1(u32 param);
void OS_SetProtectionRegion2(u32 param);
void OS_SetProtectionRegion3(u32 param);
void OS_SetProtectionRegion4(u32 param);
void OS_SetProtectionRegion5(u32 param);
void OS_SetProtectionRegion6(u32 param);
void OS_SetProtectionRegion7(u32 param);

#define OS_GetProtectionRegionParam(regionNo) OSi_GetPR ## regionNo ## _param()

#define OSi_GetPR0_param() OS_GetProtectionRegion0()
#define OSi_GetPR1_param() OS_GetProtectionRegion1()
#define OSi_GetPR2_param() OS_GetProtectionRegion2()
#define OSi_GetPR3_param() OS_GetProtectionRegion3()
#define OSi_GetPR4_param() OS_GetProtectionRegion4()
#define OSi_GetPR5_param() OS_GetProtectionRegion5()
#define OSi_GetPR6_param() OS_GetProtectionRegion6()
#define OSi_GetPR7_param() OS_GetProtectionRegion7()

u32 OS_GetProtectionRegion0(void);
u32 OS_GetProtectionRegion1(void);
u32 OS_GetProtectionRegion2(void);
u32 OS_GetProtectionRegion3(void);
u32 OS_GetProtectionRegion4(void);
u32 OS_GetProtectionRegion5(void);
u32 OS_GetProtectionRegion6(void);
u32 OS_GetProtectionRegion7(void);

#define OS_GetProtectionRegionAddress(regionNo) (OS_GetProtectionRegion(regionNo) & HW_C6_PR_BASE_MASK)

#define OS_GetProtectionRegionSize(regionNo) (OS_GetProtectionRegion(regionNo) & HW_C6_PR_SIZE_MASK)

#ifdef __cplusplus
}
#endif

#endif

#ifndef LIBRARIES_SPI_H_
#define LIBRARIES_SPI_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef  SDK_ARM9

static inline BOOL SPI_TpSamplingNow (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_TP_SAMPLING << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_TpAutoSamplingOn (u16 vCount, u8 frequency) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_TP_AUTO_ON << 8) | (u32)frequency, 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_END_BIT | (1 << SPI_PXI_INDEX_SHIFT) | (u32)vCount, 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_TpAutoSamplingOff (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_TP_AUTO_OFF << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_TpSetupStability (u16 range) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_TOUCHPANEL,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_TP_SETUP_STABILITY << 8) | (u32)range, 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramWriteEnable (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_NVRAM_WREN << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramWriteDisable (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_NVRAM_WRDI << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramReadStatusRegister (u8 * pData) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_RDSR << 8) | ((u32)pData >> 24), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (1 << SPI_PXI_INDEX_SHIFT) | (((u32)pData >> 8) & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (2 << SPI_PXI_INDEX_SHIFT) | (((u32)pData << 8) & 0x0000ff00), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramReadDataBytes (u32 address, u32 size, u8 * pData) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_READ << 8) |
            ((address >> 16) & 0x000000ff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (1 << SPI_PXI_INDEX_SHIFT) | (address & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_NVRAM, (2 << SPI_PXI_INDEX_SHIFT) | (size >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (3 << SPI_PXI_INDEX_SHIFT) | (size & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (4 << SPI_PXI_INDEX_SHIFT) | ((u32)pData >> 16), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (5 << SPI_PXI_INDEX_SHIFT) | ((u32)pData & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramReadHigherSpeed (u32 address, u32 size, u8 * pData) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_FAST_READ << 8) |
            ((address >> 16) & 0x000000ff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (1 << SPI_PXI_INDEX_SHIFT) | (address & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_NVRAM, (2 << SPI_PXI_INDEX_SHIFT) | (size >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (3 << SPI_PXI_INDEX_SHIFT) | (size & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (4 << SPI_PXI_INDEX_SHIFT) | ((u32)pData >> 16), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (5 << SPI_PXI_INDEX_SHIFT) | ((u32)pData & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramPageWrite (u32 address, u16 size, const u8 * pData) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_PW << 8) | ((address >> 16) & 0x000000ff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (1 << SPI_PXI_INDEX_SHIFT) | (address & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_NVRAM, (2 << SPI_PXI_INDEX_SHIFT) | (u32)size, 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (3 << SPI_PXI_INDEX_SHIFT) | ((u32)pData >> 16), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (4 << SPI_PXI_INDEX_SHIFT) | ((u32)pData & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramPageProgram (u32 address, u16 size, const u8 * pData) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_PP << 8) | ((address >> 16) & 0x000000ff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (1 << SPI_PXI_INDEX_SHIFT) | (address & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_NVRAM, (2 << SPI_PXI_INDEX_SHIFT) | (u32)size, 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (3 << SPI_PXI_INDEX_SHIFT) | ((u32)pData >> 16), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (4 << SPI_PXI_INDEX_SHIFT) | ((u32)pData & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramPageErase (u32 address) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_PE << 8) | ((address >> 16) & 0x000000ff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (1 << SPI_PXI_INDEX_SHIFT) | (address & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramSectorErase (u32 address) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_SE << 8) | ((address >> 16) & 0x000000ff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (1 << SPI_PXI_INDEX_SHIFT) | (address & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

#if 0

static inline BOOL SPI_NvramPowerDown (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_NVRAM_DP << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramReleasePowerDown (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_NVRAM_RDP << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}
#endif

static inline BOOL SPI_NvramChipErase (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_NVRAM_CE << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramReadSiliconId (u8 * pData) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_NVRAM_RSI << 8) | ((u32)pData >> 24), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            (1 << SPI_PXI_INDEX_SHIFT) | (((u32)pData >> 8) & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_END_BIT |
            (2 << SPI_PXI_INDEX_SHIFT) | (((u32)pData << 8) & 0x0000ff00), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_NvramSoftwareReset (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_NVRAM,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_NVRAM_SR << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_MicSamplingNow (u8 type) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_MIC_SAMPLING << 8) | (u32)type, 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_MicAutoSamplingOn (void * pData, u32 size, u32 span, u8 adMode, BOOL loopMode, BOOL correct) {
    u8 temp;

    switch (adMode) {
    case SPI_MIC_SAMPLING_TYPE_8BIT:
    case SPI_MIC_SAMPLING_TYPE_12BIT:
        temp = adMode;
        break;
    default:
        return FALSE;
    }
    if (loopMode) {
        temp |= (u8)SPI_MIC_SAMPLING_TYPE_LOOP_ON;
    }
    if (correct) {
        temp |= (u8)SPI_MIC_SAMPLING_TYPE_CORRECT_ON;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_MIC_AUTO_ON << 8) | (u32)temp, 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            (1 << SPI_PXI_INDEX_SHIFT) | ((u32)pData >> 16), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            (2 << SPI_PXI_INDEX_SHIFT) | ((u32)pData & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_MIC, (3 << SPI_PXI_INDEX_SHIFT) | (size >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            (4 << SPI_PXI_INDEX_SHIFT) | (size & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_MIC, (5 << SPI_PXI_INDEX_SHIFT) | (span >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_END_BIT |
            (6 << SPI_PXI_INDEX_SHIFT) | (span & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static inline BOOL SPI_MicAutoSamplingOff (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_MIC_AUTO_OFF << 8), 0
        )) {
        return FALSE;
    }

    return TRUE;
}

#endif

#ifdef __cplusplus
}
#endif

#endif

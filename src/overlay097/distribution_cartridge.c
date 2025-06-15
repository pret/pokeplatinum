#include "overlay097/distribution_cartridge.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "crypto.h"
#include "heap.h"

#define DIST_CTRDG_SIGNATURE_PTR     (void *)0x8020000
#define DIST_CTRDG_DATA_PTR          (void *)0x8100000
#define DIST_CTRDG_LENGTH_PTR        DIST_CTRDG_DATA_PTR
#define DIST_CTRDG_EVENT_DATA_OFFSET 0x100
#define DIST_CTRDG_EVENT_DATA_PTR    DIST_CTRDG_DATA_PTR + DIST_CTRDG_EVENT_DATA_OFFSET

#define DIST_CTRDG_DATA_LENGTH      1192
#define DIST_CTRDG_SIGNATURE_LENGTH 128

static u32 sDistributionCartridgeGameCodes[] = {
    'B5BE',
    'B5CE',
    'B5DE',
    'B5EE',
    'B5FE',
    'B5GE',
    'B5HE',
    'B5IE',
    'B5JE',
    'B5KE',
    'B5LE',
    'B5ME',
    'B5PE',
    'B5QE',
    'B5RE',
    'B5SE',
    'B5TE',
    'B5UE',
    'B5VE',
    'B5WE',
    0x0
};

// clang-format off
static const u8 sSignaturePubKey[] = {
    0xC8, 0x7E, 0x66, 0x71, 0x46, 0x0B, 0xE6, 0x6F,
    0x17, 0x8A, 0x5C, 0x7D, 0xEA, 0xE1, 0x93, 0xFD,
    0xEE, 0xFA, 0x99, 0x84, 0xFE, 0x35, 0x02, 0xB9,
    0x7F, 0x4F, 0xF1, 0x19, 0x74, 0xA2, 0x0F, 0x65,
    0x8A, 0x9C, 0x44, 0x81, 0x0C, 0x1F, 0x94, 0xE4,
    0xC0, 0xB6, 0xD7, 0x20, 0xEE, 0x11, 0x9A, 0x8D,
    0x27, 0x33, 0x9B, 0x7B, 0x02, 0xE9, 0x33, 0x11,
    0xDC, 0xCF, 0x72, 0xD9, 0xA8, 0x78, 0x12, 0x8C,
    0x3B, 0x60, 0xD5, 0x24, 0xB8, 0xD9, 0xFC, 0x8D,
    0x15, 0xBA, 0x0B, 0x90, 0xA3, 0xBD, 0x3A, 0xE4,
    0x01, 0x18, 0xBA, 0xF9, 0x65, 0xA5, 0x15, 0x37,
    0xDC, 0x7A, 0x48, 0x5C, 0x3A, 0x55, 0x35, 0x43,
    0xE2, 0xC6, 0x66, 0xBA, 0x21, 0xEA, 0x67, 0x2E,
    0xA8, 0x29, 0x03, 0xD7, 0x1F, 0x0F, 0xC6, 0xDE,
    0x1B, 0xE2, 0xA1, 0xCA, 0x21, 0x51, 0xFE, 0xB9,
    0x68, 0x17, 0x3C, 0xEB, 0x04, 0x54, 0xE0, 0xBD
};
// clang-format on

static u32 sHeapID;

void DistributionCartridge_UseHeap(enum HeapId heapID)
{
    sHeapID = heapID;
}

static void *DistributionCartridge_Alloc(u32 size)
{
    return Heap_AllocFromHeap(sHeapID, size);
}

inline u32 FlipEndianness(u32 val)
{
    return ((val >> 0) & 255) << 24 | ((val >> 8) & 255) << 16 | ((val >> 16) & 255) << 8 | ((val >> 24) & 255) << 0;
}

static BOOL CheckDistCartridgeGameCodeAndSignature(void)
{
    u32 gameCode = CTRDG_GetAgbGameCode();

    gameCode = FlipEndianness(gameCode);

    for (int i = 0; i < sDistributionCartridgeGameCodes[i]; i++) {
        if (sDistributionCartridgeGameCodes[i] == gameCode) {
            u8 cartridgeData[DIST_CTRDG_DATA_LENGTH];
            u8 signature[DIST_CTRDG_SIGNATURE_LENGTH];

            CTRDG_Enable(TRUE);
            CTRDG_CpuCopy8(DIST_CTRDG_DATA_PTR, cartridgeData, DIST_CTRDG_DATA_LENGTH);
            CTRDG_CpuCopy8(DIST_CTRDG_SIGNATURE_PTR, signature, DIST_CTRDG_SIGNATURE_LENGTH);
            CTRDG_Enable(FALSE);

            CRYPTO_SetAllocator(DistributionCartridge_Alloc, Heap_FreeToHeap);

            if (CRYPTO_VerifySignature(cartridgeData, DIST_CTRDG_DATA_LENGTH, signature, sSignaturePubKey)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL CheckGBASlotHasDistributionCartridge(void)
{
    CTRDG_Init();

    if (CTRDG_IsAgbCartridge() == FALSE) {
        return FALSE;
    }

    if (CTRDG_GetAgbMakerCode() != 0x3130) {
        return FALSE;
    }

    if (CheckDistCartridgeGameCodeAndSignature() == FALSE) {
        return FALSE;
    }

    return TRUE;
}

int DistributionCartridge_ReadLength(void)
{
    u32 length;

    if (CheckGBASlotHasDistributionCartridge() == FALSE) {
        return 0;
    }

    CTRDG_Enable(TRUE);
    CTRDG_Read32(DIST_CTRDG_LENGTH_PTR, &length);
    CTRDG_Enable(FALSE);

    return length;
}

BOOL DistributionCartridge_ReadData(void *dest, int size)
{
    BOOL success;

    if (CheckGBASlotHasDistributionCartridge() == FALSE) {
        return FALSE;
    }

    if (size == 0) {
        size = DistributionCartridge_ReadLength();
    }

    CTRDG_Enable(TRUE);
    success = CTRDG_CpuCopy16(DIST_CTRDG_EVENT_DATA_PTR, dest, size);
    CTRDG_Enable(FALSE);

    if (CTRDG_IsExisting() == FALSE) {
        return FALSE;
    }

    return success;
}

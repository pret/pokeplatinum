#include "poketch_memory.h"

#include <nitro.h>
#include <string.h>

#include "generated/poketch_apps.h"

#define BUFFER_SIZE 12288

static int activeAppID = POKETCH_APPID_NONE;
static u8 poketchMemoryBuffer[BUFFER_SIZE];

void PoketchMemory_ResetActiveAppID(void) {
    activeAppID = POKETCH_APPID_NONE;
}

void PoketchMemory_Write32(u32 appID, const void *src, u32 size) {
    if (size < BUFFER_SIZE) {
        MI_CpuCopy32(src, poketchMemoryBuffer, size);
        activeAppID = appID;
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL PoketchMemory_Read32(u32 appID, void *dst, u32 size) {
    if (size < BUFFER_SIZE) {
        if (appID == activeAppID) {
            MI_CpuCopy32(poketchMemoryBuffer, dst, size);
            return TRUE;
        }
    } else {
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

void PoketchMemory_WriteFast(u32 appID, const void *src, u32 size) {
    if (size < BUFFER_SIZE) {
        MI_CpuCopyFast(src, poketchMemoryBuffer, size);
        activeAppID = appID;
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL PoketchMemory_ReadFast(u32 appID, void *dst, u32 size) {
    if (size < BUFFER_SIZE) {
        if (appID == activeAppID) {
            MI_CpuCopyFast(poketchMemoryBuffer, dst, size);
            return TRUE;
        }
    } else {
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

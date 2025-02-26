#include "app_storage_buffer.h"

#include <nitro.h>
#include <string.h>

#include "generated/poketch_apps.h"

#define APP_STORAGE_BUFFER_SIZE 12288

static int activeAppID = POKETCH_APPID_NONE;
static u8 appStorageBuffer[APP_STORAGE_BUFFER_SIZE];

void AppStorageBuffer_ResetActiveAppID(void)
{
    activeAppID = POKETCH_APPID_NONE;
}

void AppStorageBuffer_Write32(u32 appID, const void *src, u32 size)
{
    if (size < APP_STORAGE_BUFFER_SIZE) {
        MI_CpuCopy32(src, appStorageBuffer, size);
        activeAppID = appID;
    } else {
        GF_ASSERT(0);
    }
}

BOOL AppStorageBuffer_Read32(u32 appID, void *dst, u32 size)
{
    if (size < APP_STORAGE_BUFFER_SIZE) {
        if (appID == activeAppID) {
            MI_CpuCopy32(appStorageBuffer, dst, size);
            return TRUE;
        }
    } else {
        GF_ASSERT(0);
    }

    return FALSE;
}

void AppStorageBuffer_WriteFast(u32 appID, const void *src, u32 size)
{
    if (size < APP_STORAGE_BUFFER_SIZE) {
        MI_CpuCopyFast(src, appStorageBuffer, size);
        activeAppID = appID;
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL AppStorageBuffer_ReadFast(u32 appID, void *dst, u32 size)
{
    if (size < APP_STORAGE_BUFFER_SIZE) {
        if (appID == activeAppID) {
            MI_CpuCopyFast(appStorageBuffer, dst, size);
            return TRUE;
        }
    } else {
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

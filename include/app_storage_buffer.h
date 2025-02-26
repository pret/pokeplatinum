#ifndef POKEPLATINUM_APP_STORAGE_BUFFER_H
#define POKEPLATINUM_APP_STORAGE_BUFFER_H

void AppStorageBuffer_ResetActiveAppID(void);
void AppStorageBuffer_Write32(u32 appID, const void *src, u32 size);
BOOL AppStorageBuffer_Read32(u32 appID, void *dst, u32 size);
void AppStorageBuffer_WriteFast(u32 appID, const void *src, u32 size);
BOOL AppStorageBuffer_ReadFast(u32 appID, void *dst, u32 size);

#endif // POKEPLATINUM_APP_STORAGE_BUFFER_H

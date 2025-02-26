#ifndef POKEPLATINUM_POKETCH_MEMORY_H
#define POKEPLATINUM_POKETCH_MEMORY_H

void PoketchMemory_ResetActiveAppID(void);
void PoketchMemory_Write32(u32 appID, const void *src, u32 size);
BOOL PoketchMemory_Read32(u32 appID, void *dst, u32 size);
void PoketchMemory_WriteFast(u32 appID, const void *src, u32 size);
BOOL PoketchMemory_ReadFast(u32 appID, void *dst, u32 size);

#endif // POKEPLATINUM_POKETCH_MEMORY_H

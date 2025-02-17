#ifndef POKEPLATINUM_BOOT_H
#define POKEPLATINUM_BOOT_H

void CheckForMemoryTampering(void);
void RebootAndLoadROM(const char *filesystemPath);

#endif // POKEPLATINUM_BOOT_H

#ifndef POKEPLATINUM_WALLPAPER_PASSWORDS_H
#define POKEPLATINUM_WALLPAPER_PASSWORDS_H

#include "trainer_info.h"

#define MAX_UNLOCKABLE_WALLPAPERS 8

int WallpaperPasswords_CheckPassword(const TrainerInfo *trainerInfo, u16 word1, u16 word2, u16 word3, u16 word4, enum HeapID heapID);

#endif // POKEPLATINUM_WALLPAPER_PASSWORDS_H

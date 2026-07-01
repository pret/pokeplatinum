#ifndef POKEPLATINUM_APPLICATIONS_BAG_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BAG_MAIN_H

#include "applications/bag/defs.h"

u16 BagInterface_GetItemSlotParam(BagController *controller, u16 slotIndex, u16 itemParam);
#ifdef SDK_BUILD_ARM
const u32 BagApplication_GetItemActionFunc(enum ItemAction action);
#else
const u64 BagApplication_GetItemActionFunc(enum ItemAction action);
#endif

#endif // POKEPLATINUM_APPLICATIONS_BAG_MAIN_H

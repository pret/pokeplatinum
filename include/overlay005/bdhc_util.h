#ifndef POKEPLATINUM_BDHC_UTIL_H
#define POKEPLATINUM_BDHC_UTIL_H

#include <nitro/fx/fx.h>
#include <nitro/types.h>

#include "overlay005/bdhc.h"

BOOL BDHCUtil_CalculateObjectHeight(const fx32 objectY, const fx32 objectX, const fx32 objectZ, const BDHC *bdhc, fx32 *newObjectY);

#endif // POKEPLATINUM_BDHC_UTIL_H

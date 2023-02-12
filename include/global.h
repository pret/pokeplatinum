#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include <nitro.h>
#pragma thumb on
#include <nnsys.h>

#include <string.h>
#include <stddef.h>

#include "global/config.h" // MUST COME BEFORE ANY OTHER GAMEFREAK HEADERS
#include "constants/global.h"
#include "constants/pokemon.h"
#include "global/assert.h"
#include "global/game_version.h"

#define NELEMS(a) (sizeof(a) / sizeof(*(a)))

#endif //GUARD_GLOBAL_H
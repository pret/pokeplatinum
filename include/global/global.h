#ifndef POKEPLATINUM_GLOBAL_H
#define POKEPLATINUM_GLOBAL_H

#include <nitro.h>
#include <nitro/code16.h>
#include <nnsys.h>

#include <string.h>
#include <stddef.h>

#include "global/config.h" // MUST COME BEFORE ANY OTHER GAMEFREAK HEADERS
//#include "constants/global.h"
#include "global/pm_version.h"
#include "global/assert.h"

#define NELEMS(a) (sizeof(a) / sizeof(*(a)))

typedef struct {
    int x;
    int y;
    int z;
} Vec32;

#endif // POKEPLATINUM_GLOBAL_H

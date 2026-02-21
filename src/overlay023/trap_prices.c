#include "overlay023/trap_prices.h"

#include <nitro.h>
#include <string.h>

#include "generated/sphere_types.h"
#include "generated/traps.h"

#include "overlay023/underground_defs.h"

// TODO: make this error if it doesn't contain an entry for every trap
static const SpherePrice sTrapPrices[] = {
    [TRAP_NONE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_MOVE_UP] = { .sphereType = SPHERE_BLUE, .minSize = 3, .maxSize = 6 },
    [TRAP_MOVE_RIGHT] = { .sphereType = SPHERE_RED, .minSize = 3, .maxSize = 6 },
    [TRAP_MOVE_DOWN] = { .sphereType = SPHERE_BLUE, .minSize = 3, .maxSize = 6 },
    [TRAP_MOVE_LEFT] = { .sphereType = SPHERE_RED, .minSize = 3, .maxSize = 6 },
    [TRAP_HURL_UP] = { .sphereType = SPHERE_BLUE, .minSize = 12, .maxSize = 15 },
    [TRAP_HURL_RIGHT] = { .sphereType = SPHERE_RED, .minSize = 12, .maxSize = 15 },
    [TRAP_HURL_DOWN] = { .sphereType = SPHERE_BLUE, .minSize = 12, .maxSize = 15 },
    [TRAP_HURL_LEFT] = { .sphereType = SPHERE_RED, .minSize = 12, .maxSize = 15 },
    [TRAP_WARP_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_HI_WARP_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_HOLE] = { .sphereType = SPHERE_PRISM, .minSize = 3, .maxSize = 6 },
    [TRAP_PIT] = { .sphereType = SPHERE_PRISM, .minSize = 12, .maxSize = 15 },
    [TRAP_REVERSE] = { .sphereType = SPHERE_PALE, .minSize = 10, .maxSize = 12 },
    [TRAP_CONFUSE] = { .sphereType = SPHERE_PALE, .minSize = 10, .maxSize = 12 },
    [TRAP_RUN_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_FADE_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_SLOW_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_SMOKE] = { .sphereType = SPHERE_RED, .minSize = 5, .maxSize = 7 },
    [TRAP_BIG_SMOKE] = { .sphereType = SPHERE_RED, .minSize = 12, .maxSize = 16 },
    [TRAP_ROCK] = { .sphereType = SPHERE_BLUE, .minSize = 3, .maxSize = 6 },
    [TRAP_ROCKFALL] = { .sphereType = SPHERE_BLUE, .minSize = 8, .maxSize = 15 },
    [TRAP_FOAM] = { .sphereType = SPHERE_BLUE, .minSize = 5, .maxSize = 7 },
    [TRAP_BUBBLE] = { .sphereType = SPHERE_BLUE, .minSize = 12, .maxSize = 16 },
    [TRAP_ALERT_1] = { .sphereType = SPHERE_PALE, .minSize = 5, .maxSize = 9 },
    [TRAP_ALERT_2] = { .sphereType = SPHERE_PALE, .minSize = 5, .maxSize = 9 },
    [TRAP_ALERT_3] = { .sphereType = SPHERE_PALE, .minSize = 5, .maxSize = 9 },
    [TRAP_ALERT_4] = { .sphereType = SPHERE_PALE, .minSize = 5, .maxSize = 9 },
    [TRAP_LEAF] = { .sphereType = SPHERE_GREEN, .minSize = 15, .maxSize = 19 },
    [TRAP_FLOWER] = { .sphereType = SPHERE_GREEN, .minSize = 30, .maxSize = 40 },
    [TRAP_EMBER] = { .sphereType = SPHERE_RED, .minSize = 5, .maxSize = 9 },
    [TRAP_FIRE] = { .sphereType = SPHERE_RED, .minSize = 20, .maxSize = 30 },
    [TRAP_RADAR_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_DIGGER_DRILL] = { .sphereType = RANDOM_SPHERE_TYPE, .minSize = 15, .maxSize = 20 }
};

// params need to be const to match
const u8 Trap_GetSpherePriceType(const enum Trap trapID)
{
    return sTrapPrices[trapID].sphereType;
}

const u8 Trap_GetSpherePriceMinSize(const enum Trap trapID)
{
    return sTrapPrices[trapID].minSize;
}

const u8 Trap_GetSpherePriceMaxSize(const enum Trap trapID)
{
    return sTrapPrices[trapID].maxSize;
}

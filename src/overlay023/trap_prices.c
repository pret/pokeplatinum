#include "overlay023/trap_prices.h"

#include <nitro.h>
#include <string.h>

#include "generated/traps.h"

#include "overlay023/underground_defs.h"

// TODO: make this error if it doesn't contain an entry for every trap
static const SpherePrice sTrapPrices[] = {
    [TRAP_NONE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_MOVE_UP] = { .sphereType = BLUE_SPHERE, .minSize = 3, .maxSize = 6 },
    [TRAP_MOVE_RIGHT] = { .sphereType = RED_SPHERE, .minSize = 3, .maxSize = 6 },
    [TRAP_MOVE_DOWN] = { .sphereType = BLUE_SPHERE, .minSize = 3, .maxSize = 6 },
    [TRAP_MOVE_LEFT] = { .sphereType = RED_SPHERE, .minSize = 3, .maxSize = 6 },
    [TRAP_HURL_UP] = { .sphereType = BLUE_SPHERE, .minSize = 12, .maxSize = 15 },
    [TRAP_HURL_RIGHT] = { .sphereType = RED_SPHERE, .minSize = 12, .maxSize = 15 },
    [TRAP_HURL_DOWN] = { .sphereType = BLUE_SPHERE, .minSize = 12, .maxSize = 15 },
    [TRAP_HURL_LEFT] = { .sphereType = RED_SPHERE, .minSize = 12, .maxSize = 15 },
    [TRAP_WARP_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_HI_WARP_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_HOLE] = { .sphereType = PRISM_SPHERE, .minSize = 3, .maxSize = 6 },
    [TRAP_PIT] = { .sphereType = PRISM_SPHERE, .minSize = 12, .maxSize = 15 },
    [TRAP_REVERSE] = { .sphereType = PALE_SPHERE, .minSize = 10, .maxSize = 12 },
    [TRAP_CONFUSE] = { .sphereType = PALE_SPHERE, .minSize = 10, .maxSize = 12 },
    [TRAP_RUN_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_FADE_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_SLOW_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_SMOKE] = { .sphereType = RED_SPHERE, .minSize = 5, .maxSize = 7 },
    [TRAP_BIG_SMOKE] = { .sphereType = RED_SPHERE, .minSize = 12, .maxSize = 16 },
    [TRAP_ROCK] = { .sphereType = BLUE_SPHERE, .minSize = 3, .maxSize = 6 },
    [TRAP_ROCKFALL] = { .sphereType = BLUE_SPHERE, .minSize = 8, .maxSize = 15 },
    [TRAP_FOAM] = { .sphereType = BLUE_SPHERE, .minSize = 5, .maxSize = 7 },
    [TRAP_BUBBLE] = { .sphereType = BLUE_SPHERE, .minSize = 12, .maxSize = 16 },
    [TRAP_ALERT_1] = { .sphereType = PALE_SPHERE, .minSize = 5, .maxSize = 9 },
    [TRAP_ALERT_2] = { .sphereType = PALE_SPHERE, .minSize = 5, .maxSize = 9 },
    [TRAP_ALERT_3] = { .sphereType = PALE_SPHERE, .minSize = 5, .maxSize = 9 },
    [TRAP_ALERT_4] = { .sphereType = PALE_SPHERE, .minSize = 5, .maxSize = 9 },
    [TRAP_LEAF] = { .sphereType = GREEN_SPHERE, .minSize = 15, .maxSize = 19 },
    [TRAP_FLOWER] = { .sphereType = GREEN_SPHERE, .minSize = 30, .maxSize = 40 },
    [TRAP_EMBER] = { .sphereType = RED_SPHERE, .minSize = 5, .maxSize = 9 },
    [TRAP_FIRE] = { .sphereType = RED_SPHERE, .minSize = 20, .maxSize = 30 },
    [TRAP_RADAR_DUMMY] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [TRAP_DIGGER_DRILL] = { .sphereType = RANDOM_SPHERE_TYPE, .minSize = 15, .maxSize = 20 }
};

// params need to be const to match
const u8 TrapGetSpherePriceType(const int trapID)
{
    return sTrapPrices[trapID].sphereType;
}

const u8 TrapGetSpherePriceMinSize(const int trapID)
{
    return sTrapPrices[trapID].minSize;
}

const u8 TrapGetSpherePriceMaxSize(const int trapID)
{
    return sTrapPrices[trapID].maxSize;
}

#include "overlay023/treasure_prices.h"

#include <nitro.h>
#include <string.h>

#include "overlay023/ov23_0223E140.h"
#include "overlay023/underground_defs.h"

// TODO: make this error if it doesn't contain an entry for every treasure
static const SpherePrice sTreasurePrices[] = {
    [MINING_TREASURE_NONE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_SMALL_PRISM_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_SMALL_PALE_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_SMALL_RED_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_SMALL_BLUE_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_SMALL_GREEN_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_LARGE_PRISM_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_LARGE_PALE_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_LARGE_RED_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_LARGE_BLUE_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_LARGE_GREEN_SPHERE] = { .sphereType = SPHERE_NONE, .minSize = 0, .maxSize = 0 },
    [MINING_TREASURE_OVAL_STONE] = { .sphereType = PALE_SPHERE, .minSize = 15, .maxSize = 20 },
    [MINING_TREASURE_ODD_KEYSTONE] = { .sphereType = PRISM_SPHERE, .minSize = 50, .maxSize = 60 },
    [MINING_TREASURE_SUN_STONE] = { .sphereType = RED_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_STAR_PIECE] = { .sphereType = PALE_SPHERE, .minSize = 35, .maxSize = 45 },
    [MINING_TREASURE_MOON_STONE] = { .sphereType = PALE_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_HARD_STONE] = { .sphereType = RED_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_THUNDERSTONE] = { .sphereType = PRISM_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_EVERSTONE] = { .sphereType = PALE_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_FIRE_STONE] = { .sphereType = RED_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_WATER_STONE] = { .sphereType = BLUE_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_LEAF_STONE] = { .sphereType = GREEN_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_NUGGET_UNUSED] = { .sphereType = BLUE_SPHERE, .minSize = 0, .maxSize = 0 },
    [MINING_TREASURE_HELIX_FOSSIL] = { .sphereType = BLUE_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_DOME_FOSSIL] = { .sphereType = GREEN_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_CLAW_FOSSIL] = { .sphereType = BLUE_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_ROOT_FOSSIL] = { .sphereType = GREEN_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_OLD_AMBER] = { .sphereType = PRISM_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_RARE_BONE] = { .sphereType = PALE_SPHERE, .minSize = 25, .maxSize = 35 },
    [MINING_TREASURE_REVIVE] = { .sphereType = PALE_SPHERE, .minSize = 5, .maxSize = 10 },
    [MINING_TREASURE_MAX_REVIVE] = { .sphereType = PALE_SPHERE, .minSize = 40, .maxSize = 50 },
    [MINING_TREASURE_RED_SHARD] = { .sphereType = RED_SPHERE, .minSize = 20, .maxSize = 25 },
    [MINING_TREASURE_BLUE_SHARD] = { .sphereType = BLUE_SPHERE, .minSize = 20, .maxSize = 25 },
    [MINING_TREASURE_YELLOW_SHARD] = { .sphereType = PRISM_SPHERE, .minSize = 20, .maxSize = 25 },
    [MINING_TREASURE_GREEN_SHARD] = { .sphereType = GREEN_SPHERE, .minSize = 20, .maxSize = 25 },
    [MINING_TREASURE_HEART_SCALE] = { .sphereType = RED_SPHERE, .minSize = 5, .maxSize = 10 },
    [MINING_TREASURE_ARMOR_FOSSIL] = { .sphereType = BLUE_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_SKULL_FOSSIL] = { .sphereType = GREEN_SPHERE, .minSize = 30, .maxSize = 50 },
    [MINING_TREASURE_LIGHT_CLAY] = { .sphereType = PALE_SPHERE, .minSize = 40, .maxSize = 50 },
    [MINING_TREASURE_IRON_BALL] = { .sphereType = PRISM_SPHERE, .minSize = 40, .maxSize = 50 },
    [MINING_TREASURE_ICY_ROCK] = { .sphereType = PALE_SPHERE, .minSize = 35, .maxSize = 40 },
    [MINING_TREASURE_SMOOTH_ROCK] = { .sphereType = PRISM_SPHERE, .minSize = 35, .maxSize = 40 },
    [MINING_TREASURE_HEAT_ROCK] = { .sphereType = RED_SPHERE, .minSize = 40, .maxSize = 50 },
    [MINING_TREASURE_DAMP_ROCK] = { .sphereType = BLUE_SPHERE, .minSize = 40, .maxSize = 50 },
    [MINING_TREASURE_FLAME_PLATE] = { .sphereType = RED_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_SPLASH_PLATE] = { .sphereType = BLUE_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_ZAP_PLATE] = { .sphereType = PRISM_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_MEADOW_PLATE] = { .sphereType = GREEN_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_ICICLE_PLATE] = { .sphereType = BLUE_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_FIST_PLATE] = { .sphereType = PRISM_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_TOXIC_PLATE] = { .sphereType = PALE_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_EARTH_PLATE] = { .sphereType = GREEN_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_SKY_PLATE] = { .sphereType = BLUE_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_MIND_PLATE] = { .sphereType = PALE_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_INSECT_PLATE] = { .sphereType = GREEN_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_STONE_PLATE] = { .sphereType = PRISM_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_SPOOKY_PLATE] = { .sphereType = PALE_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_DRACO_PLATE] = { .sphereType = RED_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_DREAD_PLATE] = { .sphereType = RED_SPHERE, .minSize = 70, .maxSize = 80 },
    [MINING_TREASURE_IRON_PLATE] = { .sphereType = PRISM_SPHERE, .minSize = 70, .maxSize = 80 }
};

u8 Treasure_GetSpherePriceType(int treasureID)
{
    return sTreasurePrices[treasureID].sphereType;
}

u8 Treasure_GetSpherePriceMinSize(int treasureID)
{
    return sTreasurePrices[treasureID].minSize;
}

u8 Treasure_GetSpherePriceMaxSize(int treasureID)
{
    return sTreasurePrices[treasureID].maxSize;
}

#include "map_tile_behavior.h"

#define TILE_BEHAVIOR_FLAG_NONE      0
#define TILE_BEHAVIOR_FLAG_SURFABLE  (1 << 0)
#define TILE_BEHAVIOR_FLAG_ENCOUNTER (1 << 1)

#define TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER (TILE_BEHAVIOR_FLAG_ENCOUNTER | TILE_BEHAVIOR_FLAG_SURFABLE)

static const u8 sTileBehaviorFlags[] = {
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_SURFABLE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_ENCOUNTER,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE,
    TILE_BEHAVIOR_FLAG_NONE
};

BOOL TileBehavior_IsTallGrass(u8 behavior)
{
    return behavior == 0x02;
}

BOOL TileBehavior_IsVeryTallGrass(u8 behavior)
{
    return behavior == 0x03;
}

BOOL TileBehavior_IsTable(u8 behavior)
{
    return behavior == 0x80;
}

BOOL TileBehavior_IsDoor(u8 behavior)
{
    return behavior == 0x69;
}

BOOL TileBehavior_IsEastWarpEntrance(u8 behavior)
{
    return behavior == 0x62;
}

BOOL TileBehavior_IsWestWarpEntrance(u8 behavior)
{
    return behavior == 0x63;
}

BOOL TileBehavior_IsNorthWarpEntrance(u8 behavior)
{
    return behavior == 0x64;
}

BOOL TileBehavior_IsSouthWarpEntrance(u8 behavior)
{
    return behavior == 0x65;
}

BOOL TileBehavior_IsEastWarp(u8 behavior)
{
    return behavior == 0x6c;
}

BOOL TileBehavior_IsWestWarp(u8 behavior)
{
    return behavior == 0x6d;
}

BOOL TileBehavior_IsNorthWarp(u8 behavior)
{
    return behavior == 0x6e;
}

BOOL TileBehavior_IsSouthWarp(u8 behavior)
{
    return behavior == 0x6f;
}

BOOL TileBehavior_IsSurfable(u8 behavior)
{
    return (sTileBehaviorFlags[behavior] & 0x1) != 0;
}

BOOL TileBehavior_IsSand(u8 behavior)
{
    return behavior == 0x21;
}

BOOL TileBehavior_IsShallowWater(u8 behavior)
{
    return behavior == 0x17;
}

BOOL TileBehavior_IsJumpNorth(u8 behavior)
{
    return behavior == 0x3a;
}

BOOL TileBehavior_IsJumpSouth(u8 behavior)
{
    return behavior == 0x3b;
}

BOOL TileBehavior_IsJumpWest(u8 behavior)
{
    return behavior == 0x39;
}

BOOL TileBehavior_IsJumpEast(u8 behavior)
{
    return behavior == 0x38;
}

BOOL TileBehavior_IsJumpNorthTwice(u8 behavior)
{
    return behavior == 0x5a;
}

BOOL TileBehavior_IsJumpSouthTwice(u8 behavior)
{
    return behavior == 0x5b;
}

BOOL TileBehavior_IsJumpWestTwice(u8 behavior)
{
    return behavior == 0x5c;
}

BOOL TileBehavior_IsJumpEastTwice(u8 behavior)
{
    return behavior == 0x5d;
}

BOOL TileBehavior_IsPC(u8 behavior)
{
    return behavior == 0x83;
}

BOOL TileBehavior_IsTownMap(u8 behavior)
{
    return behavior == 0x85;
}

BOOL TileBehavior_IsPastoriaGymWaterLevel1(u8 behavior)
{
    return behavior == 0x56;
}

BOOL TileBehavior_IsPastoriaGymWaterLevel2(u8 behavior)
{
    return behavior == 0x57;
}

BOOL TileBehavior_IsPastoriaGymWaterLevel3(u8 behavior)
{
    return behavior == 0x58;
}

BOOL TileBehavior_IsPastoriaGymWaterEmpty(u8 behavior)
{
    return behavior == 0x59;
}

BOOL TileBehavior_IsEscalatorInvertPlayerFace(u8 behavior)
{
    return behavior == 0x6a;
}

BOOL TileBehavior_IsEscalator(u8 behavior)
{
    return behavior == 0x6b;
}

BOOL TileBehavior_IsEastStairsWarp(u8 behavior)
{
    return behavior == 0x5e;
}

BOOL TileBehavior_IsWestStairsWarp(u8 behavior)
{
    return behavior == 0x5f;
}

BOOL TileBehavior_IsIce(u8 behavior)
{
    return behavior == 0x20;
}

BOOL TileBehavior_IsRockClimbNorthSouth(u8 behavior)
{
    return behavior == 0x4b;
}

BOOL TileBehavior_IsRockClimbEastWest(u8 behavior)
{
    return behavior == 0x4c;
}

BOOL TileBehavior_IsSmallBookshelf1(u8 behavior)
{
    return behavior == 0xe0;
}

BOOL TileBehavior_IsSmallBookshelf2(u8 behavior)
{
    return behavior == 0xea;
}

BOOL TileBehavior_IsBookshelf1(u8 behavior)
{
    return behavior == 0xe1;
}

BOOL TileBehavior_IsBookshelf2(u8 behavior)
{
    return behavior == 0xe2;
}

BOOL TileBehavior_IsTrashCan(u8 behavior)
{
    return behavior == 0xe4;
}

BOOL TileBehavior_IsStoreShelf1(u8 behavior)
{
    return behavior == 0xe5;
}

BOOL TileBehavior_IsStoreShelf2(u8 behavior)
{
    return behavior == 0xeb;
}

BOOL TileBehavior_IsStoreShelf3(u8 behavior)
{
    return behavior == 0xec;
}

BOOL TileBehavior_IsMud(u8 behavior)
{
    return (behavior == 0xa4) || (behavior == 0xa5);
}

BOOL TileBehavior_IsDeepMud(u8 behavior)
{
    return behavior == 0xa5;
}

BOOL TileBehavior_IsMudWithGrass(u8 behavior)
{
    return (behavior == 0xa6) || (behavior == 0xa7);
}

BOOL TileBehavior_IsDeepMudWithGrass(u8 behavior)
{
    return behavior == 0xa7;
}

BOOL TileBehavior_IsSnow(u8 behavior)
{
    return behavior == 0xa1
        || behavior == 0xa2
        || behavior == 0xa3
        || behavior == 0xa8;
}

BOOL TileBehavior_IsShallowSnow(u8 behavior)
{
    return behavior == 0xa8;
}

BOOL TileBehavior_IsDeepSnow(u8 behavior)
{
    return behavior == 0xa1;
}

BOOL TileBehavior_IsDeeperSnow(u8 behavior)
{
    return behavior == 0xa2;
}

BOOL TileBehavior_IsDeepestSnow(u8 behavior)
{
    return behavior == 0xa3;
}

BOOL TileBehavior_IsBikeSlope(u8 behavior)
{
    return (behavior == 0xd9) || (behavior == 0xda);
}

BOOL TileBehavior_IsBikeSlopeTop(u8 behavior)
{
    return behavior == 0xd9;
}

BOOL TileBehavior_IsBikeSlopeBottom(u8 behavior)
{
    return behavior == 0xda;
}

BOOL TileBehavior_IsBikeRampWestToEast(u8 behavior)
{
    return behavior == 0xd7;
}

BOOL TileBehavior_IsBikeRampEastToWest(u8 behavior)
{
    return behavior == 0xd8;
}

BOOL TileBehavior_IsCaveFloor(u8 behavior)
{
    return behavior == 0x8;
}

BOOL TileBehavior_IsWaterfall(u8 behavior)
{
    return behavior == 0x13;
}

BOOL TileBehavior_IsBikeParking(u8 behavior)
{
    return behavior == 0xdb;
}

BOOL TileBehavior_BlocksMovementNorth(u8 behavior)
{
    return behavior == 0x32
        || behavior == 0x34
        || behavior == 0x35
        || behavior == 0x49;
}

BOOL TileBehavior_BlocksMovementSouth(u8 behavior)
{
    return behavior == 0x33
        || behavior == 0x36
        || behavior == 0x37
        || behavior == 0x49;
}

BOOL TileBehavior_BlocksMovementWest(u8 behavior)
{
    return behavior == 0x31
        || behavior == 0x35
        || behavior == 0x37
        || behavior == 0x4a;
}

BOOL TileBehavior_BlocksMovementEast(u8 behavior)
{
    return behavior == 0x30
        || behavior == 0x34
        || behavior == 0x36
        || behavior == 0x4a;
}

BOOL TileBehavior_IsPuddle(u8 behavior)
{
    return behavior == 0x16 || behavior == 0x1d;
}

BOOL TileBehavior_HasEncounters(u8 behavior)
{
    return (sTileBehaviorFlags[behavior] & TILE_BEHAVIOR_FLAG_ENCOUNTER) != 0;
}

BOOL TileBehavior_IsTV(u8 behavior)
{
    return behavior == 0x86;
}

BOOL TileBehavior_HasReflectiveSurface(u8 behavior)
{
    return behavior == 0x16
        || behavior == 0x10
        || behavior == 0x1d
        || behavior == 0x2c;
}

BOOL TileBehavior_IsEastSlide(u8 behavior)
{
    return behavior == 0x40;
}

BOOL TileBehavior_IsWestSlide(u8 behavior)
{
    return behavior == 0x41;
}

BOOL TileBehavior_IsNorthSlide(u8 behavior)
{
    return behavior == 0x42;
}

BOOL TileBehavior_IsSouthSlide(u8 behavior)
{
    return behavior == 0x43;
}

BOOL TileBehavior_IsWarpPanel(u8 behavior)
{
    return behavior == 0x67;
}

BOOL TileBehavior_IsBridgeStart(u8 behavior)
{
    return behavior == 0x70;
}

BOOL TileBehavior_IsBridge(u8 behavior)
{
    return behavior == 0x71
        || behavior == 0x72
        || behavior == 0x73
        || behavior == 0x74
        || behavior == 0x75
        || behavior == 0x76
        || behavior == 0x77
        || behavior == 0x78
        || behavior == 0x79
        || behavior == 0x7a
        || behavior == 0x7b
        || behavior == 0x7c
        || behavior == 0x7d;
}

BOOL TileBehavior_IsBridgeOverWater(u8 behavior)
{
    return behavior == 0x73
        || behavior == 0x78
        || behavior == 0x7c;
}

BOOL TileBehavior_IsBridgeOverSand(u8 behavior)
{
    return behavior == 0x74
        || behavior == 0x79
        || behavior == 0x7d;
}

BOOL TileBehavior_IsBridgeOverSnow(u8 behavior)
{
    return behavior == 0x75;
}

BOOL TileBehavior_IsBikeBridgeNorthSouth(u8 behavior)
{
    return behavior == 0x76
        || behavior == 0x77
        || behavior == 0x78
        || behavior == 0x79;
}

BOOL TileBehavior_IsBikeBridgeEastWest(u8 behavior)
{
    return behavior == 0x7a
        || behavior == 0x7b
        || behavior == 0x7c
        || behavior == 0x7d;
}

BOOL TileBehavior_HasNoAttributes(u8 behavior)
{
    return behavior == 0xff;
}

u8 GetNoTileAttributesID(void)
{
    return 0xff;
}

BOOL TileBehavior_IsReflective(u8 behavior)
{
    return behavior == 0x2c || behavior == 0x1d;
}

BOOL TileBehavior_IsSnowWithShadows(u8 behavior)
{
    return behavior == 0xa9;
}

BOOL TileBehavior_ForbidsExplorationKit(u8 behavior)
{
    return behavior == 0x2d;
}

#include <nitro.h>
#include <string.h>

#include "generated/movement_actions.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020EDF0C.h"

#include "map_object.h"
#include "unk_0206450C.h"
#include "unk_020655F4.h"
#include "unk_020677F4.h"
#include "unk_02069BE0.h"

static const UnkStruct_020EDF0C Unk_020EDF0C = {
    0x0,
    sub_020633E0,
    sub_020633E4,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE58 = {
    0x1,
    sub_020633E0,
    sub_020633E4,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE308 = {
    0x2,
    sub_0206453C,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2F4 = {
    0x3,
    sub_02064628,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2E0 = {
    0x3,
    sub_02064638,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDEE4 = {
    0x3,
    sub_02064648,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2B8 = {
    0x3,
    sub_02064658,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE94 = {
    0x3,
    sub_02064548,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDEBC = {
    0x3,
    sub_02064554,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDED0 = {
    0x3,
    sub_02064560,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE268 = {
    0x3,
    sub_0206456C,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE254 = {
    0x3,
    sub_02064578,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE240 = {
    0x3,
    sub_02064584,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF70 = {
    0x3,
    sub_02064590,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE218 = {
    0x3,
    sub_0206459C,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE204 = {
    0x3,
    sub_020645A8,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFC0 = {
    0x3,
    sub_020645B4,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFD4 = {
    0x3,
    sub_0206493C,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1C8 = {
    0x3,
    sub_02064948,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1B4 = {
    0x3,
    sub_02064954,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1A0 = {
    0x3,
    sub_02064960,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE024 = {
    0x3,
    sub_02064990,
    sub_020649A8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE178 = {
    0x3,
    sub_0206499C,
    sub_020649A8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE164 = {
    0x3,
    sub_02064AF0,
    sub_02064AFC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE060 = {
    0x3,
    sub_02064C28,
    sub_02064C48,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE074 = {
    0x3,
    sub_02064DC8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE128 = {
    0x3,
    sub_02064DD8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE114 = {
    0x3,
    sub_02064DE8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0B0 = {
    0x3,
    sub_02064DF8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0C4 = {
    0x3,
    sub_02064E08,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0EC = {
    0x3,
    sub_02064E18,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE100 = {
    0x3,
    sub_02064E28,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE13C = {
    0x3,
    sub_02064E38,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE150 = {
    0x3,
    sub_02064E48,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE18C = {
    0x3,
    sub_02064E58,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1DC = {
    0x3,
    sub_02064E68,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1F0 = {
    0x3,
    sub_02064E78,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE22C = {
    0x3,
    sub_02064E88,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE27C = {
    0x3,
    sub_02064E98,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE290 = {
    0x3,
    sub_02064EA8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2A4 = {
    0x3,
    sub_02064EB8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2CC = {
    0x3,
    sub_0206505C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFE8 = {
    0x3,
    sub_0206506C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDDCC = {
    0x3,
    sub_0206507C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDDE0 = {
    0x3,
    sub_0206508C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDDF4 = {
    0x3,
    sub_0206509C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF98 = {
    0x3,
    sub_020650AC,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE08 = {
    0x3,
    sub_020650BC,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE1C = {
    0x3,
    sub_020650CC,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE30 = {
    0x2f,
    sub_02067840,
    sub_02067850,
    sub_0206786C,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF48 = {
    0x3,
    sub_02069BE0,
    sub_02069C0C,
    sub_02069C44,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE44 = {
    0x3,
    sub_02069DF4,
    sub_02069E1C,
    sub_02069E4C,
    sub_02069E50
};

static const UnkStruct_020EDF0C Unk_020EDF20 = {
    0x33,
    sub_0206A104,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDE6C = {
    0x34,
    sub_0206A110,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDEF8 = {
    0x35,
    sub_0206A11C,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDE80 = {
    0x36,
    sub_0206A128,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDEA8 = {
    0x37,
    sub_0206A25C,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF34 = {
    0x38,
    sub_0206A268,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF5C = {
    0x39,
    sub_0206A274,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF84 = {
    0x3A,
    sub_0206A280,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFAC = {
    0x3B,
    sub_0206A28C,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFFC = {
    0x3C,
    sub_0206A298,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE010 = {
    0x3D,
    sub_0206A2A4,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE038 = {
    0x3E,
    sub_0206A2B0,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE04C = {
    0x3f,
    sub_0206A490,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE088 = {
    0x40,
    sub_0206A49C,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE09C = {
    0x41,
    sub_0206A4A8,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0D8 = {
    0x42,
    sub_0206A4B4,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

const UnkStruct_020EDF0C *const Unk_020EE3A8[] = {
    &Unk_020EDF0C,
    &Unk_020EDE58,
    &Unk_020EE308,
    &Unk_020EE2F4,
    &Unk_020EE2E0,
    &Unk_020EDEE4,
    &Unk_020EDE94,
    &Unk_020EDEBC,
    &Unk_020EDED0,
    &Unk_020EE268,
    &Unk_020EE254,
    &Unk_020EE240,
    &Unk_020EDF70,
    &Unk_020EE218,
    &Unk_020EDFD4,
    &Unk_020EE1C8,
    &Unk_020EE1B4,
    &Unk_020EE1A0,
    &Unk_020EE024,
    &Unk_020EE178,
    &Unk_020EE060,
    &Unk_020EE074,
    &Unk_020EE128,
    &Unk_020EE114,
    &Unk_020EE0B0,
    &Unk_020EE0C4,
    &Unk_020EE0EC,
    &Unk_020EE100,
    &Unk_020EE13C,
    &Unk_020EE150,
    &Unk_020EE18C,
    &Unk_020EE1DC,
    &Unk_020EE1F0,
    &Unk_020EE22C,
    &Unk_020EE27C,
    &Unk_020EE290,
    &Unk_020EE2A4,
    &Unk_020EE2CC,
    &Unk_020EDFE8,
    &Unk_020EDDCC,
    &Unk_020EDDE0,
    &Unk_020EDDF4,
    &Unk_020EDF98,
    &Unk_020EDE08,
    &Unk_020EDE1C,
    &Unk_020EE204,
    &Unk_020EDFC0,
    &Unk_020EDE30,
    &Unk_020EDF48,
    &Unk_020EE164,
    &Unk_020EDE44,
    &Unk_020EDF20,
    &Unk_020EDE6C,
    &Unk_020EDEF8,
    &Unk_020EDE80,
    &Unk_020EDEA8,
    &Unk_020EDF34,
    &Unk_020EDF5C,
    &Unk_020EDF84,
    &Unk_020EDFAC,
    &Unk_020EDFFC,
    &Unk_020EE010,
    &Unk_020EE038,
    &Unk_020EE04C,
    &Unk_020EE088,
    &Unk_020EE09C,
    &Unk_020EE0D8,
    &Unk_020EE2B8
};

BOOL (*const *const gMovementActionFuncs[MAX_MOVEMENT_ACTION])(MapObject *) = {
    [MOVEMENT_ACTION_FACE_NORTH] = gMovementActionFuncs_FaceNorth,
    [MOVEMENT_ACTION_FACE_SOUTH] = gMovementActionFuncs_FaceSouth,
    [MOVEMENT_ACTION_FACE_WEST] = gMovementActionFuncs_FaceWest,
    [MOVEMENT_ACTION_FACE_EAST] = gMovementActionFuncs_FaceEast,
    [MOVEMENT_ACTION_WALK_SLOWER_NORTH] = gMovementActionFuncs_WalkSlowerNorth,
    [MOVEMENT_ACTION_WALK_SLOWER_SOUTH] = gMovementActionFuncs_WalkSlowerSouth,
    [MOVEMENT_ACTION_WALK_SLOWER_WEST] = gMovementActionFuncs_WalkSlowerWest,
    [MOVEMENT_ACTION_WALK_SLOWER_EAST] = gMovementActionFuncs_WalkSlowerEast,
    [MOVEMENT_ACTION_WALK_SLOW_NORTH] = gMovementActionFuncs_WalkSlowNorth,
    [MOVEMENT_ACTION_WALK_SLOW_SOUTH] = gMovementActionFuncs_WalkSlowSouth,
    [MOVEMENT_ACTION_WALK_SLOW_WEST] = gMovementActionFuncs_WalkSlowWest,
    [MOVEMENT_ACTION_WALK_SLOW_EAST] = gMovementActionFuncs_WalkSlowEast,
    [MOVEMENT_ACTION_WALK_NORMAL_NORTH] = gMovementActionFuncs_WalkNormalNorth,
    [MOVEMENT_ACTION_WALK_NORMAL_SOUTH] = gMovementActionFuncs_WalkNormalSouth,
    [MOVEMENT_ACTION_WALK_NORMAL_WEST] = gMovementActionFuncs_WalkNormalWest,
    [MOVEMENT_ACTION_WALK_NORMAL_EAST] = gMovementActionFuncs_WalkNormalEast,
    [MOVEMENT_ACTION_WALK_FAST_NORTH] = gMovementActionFuncs_WalkFastNorth,
    [MOVEMENT_ACTION_WALK_FAST_SOUTH] = gMovementActionFuncs_WalkFastSouth,
    [MOVEMENT_ACTION_WALK_FAST_WEST] = gMovementActionFuncs_WalkFastWest,
    [MOVEMENT_ACTION_WALK_FAST_EAST] = gMovementActionFuncs_WalkFastEast,
    [MOVEMENT_ACTION_WALK_FASTER_NORTH] = gMovementActionFuncs_WalkFasterNorth,
    [MOVEMENT_ACTION_WALK_FASTER_SOUTH] = gMovementActionFuncs_WalkFasterSouth,
    [MOVEMENT_ACTION_WALK_FASTER_WEST] = gMovementActionFuncs_WalkFasterWest,
    [MOVEMENT_ACTION_WALK_FASTER_EAST] = gMovementActionFuncs_WalkFasterEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_NORTH] = gMovementActionFuncs_WalkOnSpotSlowerNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_SOUTH] = gMovementActionFuncs_WalkOnSpotSlowerSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_WEST] = gMovementActionFuncs_WalkOnSpotSlowerWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_EAST] = gMovementActionFuncs_WalkOnSpotSlowerEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH] = gMovementActionFuncs_WalkOnSpotSlowNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH] = gMovementActionFuncs_WalkOnSpotSlowSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST] = gMovementActionFuncs_WalkOnSpotSlowWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST] = gMovementActionFuncs_WalkOnSpotSlowEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_NORTH] = gMovementActionFuncs_WalkOnSpotNormalNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_SOUTH] = gMovementActionFuncs_WalkOnSpotNormalSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_WEST] = gMovementActionFuncs_WalkOnSpotNormalWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_EAST] = gMovementActionFuncs_WalkOnSpotNormalEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_NORTH] = gMovementActionFuncs_WalkOnSpotFastNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_SOUTH] = gMovementActionFuncs_WalkOnSpotFastSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_WEST] = gMovementActionFuncs_WalkOnSpotFastWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_EAST] = gMovementActionFuncs_WalkOnSpotFastEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH] = gMovementActionFuncs_WalkOnSpotFasterNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_SOUTH] = gMovementActionFuncs_WalkOnSpotFasterSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_WEST] = gMovementActionFuncs_WalkOnSpotFasterWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_EAST] = gMovementActionFuncs_WalkOnSpotFasterEast,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_NORTH] = gMovementActionFuncs_JumpOnSpotSlowNorth,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_SOUTH] = gMovementActionFuncs_JumpOnSpotSlowSouth,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_WEST] = gMovementActionFuncs_JumpOnSpotSlowWest,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_EAST] = gMovementActionFuncs_JumpOnSpotSlowEast,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_NORTH] = gMovementActionFuncs_JumpOnSpotFastNorth,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_SOUTH] = gMovementActionFuncs_JumpOnSpotFastSouth,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_WEST] = gMovementActionFuncs_JumpOnSpotFastWest,
    [MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_EAST] = gMovementActionFuncs_JumpOnSpotFastEast,
    [MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH] = gMovementActionFuncs_JumpNearFastNorth,
    [MOVEMENT_ACTION_JUMP_NEAR_FAST_SOUTH] = gMovementActionFuncs_JumpNearFastSouth,
    [MOVEMENT_ACTION_JUMP_NEAR_FAST_WEST] = gMovementActionFuncs_JumpNearFastWest,
    [MOVEMENT_ACTION_JUMP_NEAR_FAST_EAST] = gMovementActionFuncs_JumpNearFastEast,
    [MOVEMENT_ACTION_JUMP_FAR_NORTH] = gMovementActionFuncs_JumpFarNorth,
    [MOVEMENT_ACTION_JUMP_FAR_SOUTH] = gMovementActionFuncs_JumpFarSouth,
    [MOVEMENT_ACTION_JUMP_FAR_WEST] = gMovementActionFuncs_JumpFarWest,
    [MOVEMENT_ACTION_JUMP_FAR_EAST] = gMovementActionFuncs_JumpFarEast,
    [MOVEMENT_ACTION_DELAY_1] = gMovementActionFuncs_Delay1,
    [MOVEMENT_ACTION_DELAY_2] = gMovementActionFuncs_Delay2,
    [MOVEMENT_ACTION_DELAY_4] = gMovementActionFuncs_Delay4,
    [MOVEMENT_ACTION_DELAY_8] = gMovementActionFuncs_Delay8,
    [MOVEMENT_ACTION_DELAY_15] = gMovementActionFuncs_Delay15,
    [MOVEMENT_ACTION_DELAY_16] = gMovementActionFuncs_Delay16,
    [MOVEMENT_ACTION_DELAY_32] = gMovementActionFuncs_Delay32,
    [MOVEMENT_ACTION_WARP_OUT] = gMovementActionFuncs_WarpOut,
    [MOVEMENT_ACTION_WARP_IN] = gMovementActionFuncs_WarpIn,
    [MOVEMENT_ACTION_SET_INVISIBLE] = gMovementActionFuncs_SetInvisible,
    [MOVEMENT_ACTION_SET_VISIBLE] = gMovementActionFuncs_SetVisible,
    [MOVEMENT_ACTION_LOCK_DIR] = gMovementActionFuncs_LockDir,
    [MOVEMENT_ACTION_UNLOCK_DIR] = gMovementActionFuncs_UnlockDir,
    [MOVEMENT_ACTION_PAUSE_ANIMATION] = gMovementActionFuncs_PauseAnimation,
    [MOVEMENT_ACTION_RESUME_ANIMATION] = gMovementActionFuncs_ResumeAnimation,
    [MOVEMENT_ACTION_EMOTE_EXCLAMATION_MARK] = gMovementActionFuncs_EmoteExclamationMark,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH] = gMovementActionFuncs_WalkSlightlyFastNorth,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_SOUTH] = gMovementActionFuncs_WalkSlightlyFastSouth,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_WEST] = gMovementActionFuncs_WalkSlightlyFastWest,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_EAST] = gMovementActionFuncs_WalkSlightlyFastEast,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH] = gMovementActionFuncs_WalkSlightlyFasterNorth,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_SOUTH] = gMovementActionFuncs_WalkSlightlyFasterSouth,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_WEST] = gMovementActionFuncs_WalkSlightlyFasterWest,
    [MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_EAST] = gMovementActionFuncs_WalkSlightlyFasterEast,
    [MOVEMENT_ACTION_WALK_FASTEST_NORTH] = gMovementActionFuncs_WalkFastestNorth,
    [MOVEMENT_ACTION_WALK_FASTEST_SOUTH] = gMovementActionFuncs_WalkFastestSouth,
    [MOVEMENT_ACTION_WALK_FASTEST_WEST] = gMovementActionFuncs_WalkFastestWest,
    [MOVEMENT_ACTION_WALK_FASTEST_EAST] = gMovementActionFuncs_WalkFastestEast,
    [MOVEMENT_ACTION_RUN_NORTH] = gMovementActionFuncs_RunNorth,
    [MOVEMENT_ACTION_RUN_SOUTH] = gMovementActionFuncs_RunSouth,
    [MOVEMENT_ACTION_RUN_WEST] = gMovementActionFuncs_RunWest,
    [MOVEMENT_ACTION_RUN_EAST] = gMovementActionFuncs_RunEast,
    [MOVEMENT_ACTION_JUMP_NEAR_SLOW_WEST] = gMovementActionFuncs_JumpNearSlowWest,
    [MOVEMENT_ACTION_JUMP_NEAR_SLOW_EAST] = gMovementActionFuncs_JumpNearSlowEast,
    [MOVEMENT_ACTION_JUMP_FARTHER_WEST] = gMovementActionFuncs_JumpFartherWest,
    [MOVEMENT_ACTION_JUMP_FARTHER_EAST] = gMovementActionFuncs_JumpFartherEast,
    [MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_NORTH] = gMovementActionFuncs_WalkEverSoSlightlyFastNorth,
    [MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_SOUTH] = gMovementActionFuncs_WalkEverSoSlightlyFastSouth,
    [MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_WEST] = gMovementActionFuncs_WalkEverSoSlightlyFastWest,
    [MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_EAST] = gMovementActionFuncs_WalkEverSoSlightlyFastEast,
    [MOVEMENT_ACTION_NURSE_JOY_BOW] = gMovementActionFuncs_NurseJoyBow,
    [MOVEMENT_ACTION_REVEAL_TRAINER] = gMovementActionFuncs_RevealTrainer,
    [MOVEMENT_ACTION_PLAYER_GIVE] = gMovementActionFuncs_PlayerGive,
    [MOVEMENT_ACTION_EMOTE_QUESTION_MARK] = gMovementActionFuncs_EmoteQuestionMark,
    [MOVEMENT_ACTION_PLAYER_RECEIVE] = gMovementActionFuncs_PlayerReceive,
    [MOVEMENT_ACTION_105] = gMovementActionFuncs_105,
    [MOVEMENT_ACTION_106] = gMovementActionFuncs_106,
    [MOVEMENT_ACTION_107] = gMovementActionFuncs_107,
    [MOVEMENT_ACTION_108] = gMovementActionFuncs_108,
    [MOVEMENT_ACTION_109] = gMovementActionFuncs_109,
    [MOVEMENT_ACTION_110] = gMovementActionFuncs_110,
    [MOVEMENT_ACTION_111] = gMovementActionFuncs_111,
    [MOVEMENT_ACTION_112] = gMovementActionFuncs_112,
    [MOVEMENT_ACTION_113] = gMovementActionFuncs_113,
    [MOVEMENT_ACTION_114] = gMovementActionFuncs_114,
    [MOVEMENT_ACTION_115] = gMovementActionFuncs_115,
    [MOVEMENT_ACTION_116] = gMovementActionFuncs_116,
    [MOVEMENT_ACTION_117] = gMovementActionFuncs_117,
    [MOVEMENT_ACTION_118] = gMovementActionFuncs_118,
    [MOVEMENT_ACTION_119] = gMovementActionFuncs_119,
    [MOVEMENT_ACTION_120] = gMovementActionFuncs_120,
    [MOVEMENT_ACTION_121] = gMovementActionFuncs_121,
    [MOVEMENT_ACTION_122] = gMovementActionFuncs_122,
    [MOVEMENT_ACTION_123] = gMovementActionFuncs_123,
    [MOVEMENT_ACTION_124] = gMovementActionFuncs_124,
    [MOVEMENT_ACTION_125] = gMovementActionFuncs_125,
    [MOVEMENT_ACTION_126] = gMovementActionFuncs_126,
    [MOVEMENT_ACTION_127] = gMovementActionFuncs_127,
    [MOVEMENT_ACTION_128] = gMovementActionFuncs_128,
    [MOVEMENT_ACTION_129] = gMovementActionFuncs_129,
    [MOVEMENT_ACTION_130] = gMovementActionFuncs_130,
    [MOVEMENT_ACTION_131] = gMovementActionFuncs_131,
    [MOVEMENT_ACTION_132] = gMovementActionFuncs_132,
    [MOVEMENT_ACTION_133] = gMovementActionFuncs_133,
    [MOVEMENT_ACTION_134] = gMovementActionFuncs_134,
    [MOVEMENT_ACTION_135] = gMovementActionFuncs_135,
    [MOVEMENT_ACTION_136] = gMovementActionFuncs_136,
    [MOVEMENT_ACTION_137] = gMovementActionFuncs_137,
    [MOVEMENT_ACTION_138] = gMovementActionFuncs_138,
    [MOVEMENT_ACTION_139] = gMovementActionFuncs_139,
    [MOVEMENT_ACTION_140] = gMovementActionFuncs_140,
    [MOVEMENT_ACTION_141] = gMovementActionFuncs_141,
    [MOVEMENT_ACTION_142] = gMovementActionFuncs_142,
    [MOVEMENT_ACTION_143] = gMovementActionFuncs_143,
    [MOVEMENT_ACTION_144] = gMovementActionFuncs_144,
    [MOVEMENT_ACTION_145] = gMovementActionFuncs_145,
    [MOVEMENT_ACTION_146] = gMovementActionFuncs_146,
    [MOVEMENT_ACTION_147] = gMovementActionFuncs_147,
    [MOVEMENT_ACTION_148] = gMovementActionFuncs_148,
    [MOVEMENT_ACTION_149] = gMovementActionFuncs_149,
    [MOVEMENT_ACTION_150] = gMovementActionFuncs_150,
    [MOVEMENT_ACTION_151] = gMovementActionFuncs_151,
    [MOVEMENT_ACTION_152] = gMovementActionFuncs_152,
    [MOVEMENT_ACTION_153] = gMovementActionFuncs_153,
};

static const int sMovementActionCodes_Face[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_FACE_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_FACE_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_FACE_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_FACE_EAST,
};

static const int sMovementActionCodes_WalkSlower[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_SLOWER_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_SLOWER_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_SLOWER_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_SLOWER_EAST,
};

static const int sMovementActionCodes_WalkSlow[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_SLOW_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_SLOW_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_SLOW_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_SLOW_EAST,
};

static const int sMovementActionCodes_WalkNormal[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_NORMAL_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_NORMAL_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_NORMAL_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_NORMAL_EAST,
};

static const int sMovementActionCodes_WalkFast[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_FAST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_FAST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_FAST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_FAST_EAST,
};

static const int sMovementActionCodes_WalkFaster[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_FASTER_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_FASTER_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_FASTER_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_FASTER_EAST,
};

static const int sMovementActionCodes_WalkOnSpotSlower[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_EAST,
};

static const int sMovementActionCodes_WalkOnSpotSlow[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST,
};

static const int sMovementActionCodes_WalkOnSpotNormal[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_EAST,
};

static const int sMovementActionCodes_WalkOnSpotFast[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_ON_SPOT_FAST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_ON_SPOT_FAST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_ON_SPOT_FAST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_ON_SPOT_FAST_EAST,
};

static const int sMovementActionCodes_WalkOnSpotFaster[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_EAST,
};

static const int sMovementActionCodes_JumpOnSpotSlow[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_EAST,
};

static const int sMovementActionCodes_JumpOnSpotFast[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_EAST,
};

static const int sMovementActionCodes_JumpNearFast[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_JUMP_NEAR_FAST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_JUMP_NEAR_FAST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_JUMP_NEAR_FAST_EAST,
};

static const int sMovementActionCodes_JumpFar[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_JUMP_FAR_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_JUMP_FAR_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_JUMP_FAR_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_JUMP_FAR_EAST,
};

static const int sMovementActionCodes_WalkSlightlyFast[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_EAST,
};

static const int sMovementActionCodes_WalkSlightlyFaster[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_EAST,
};

static const int sMovementActionCodes_WalkFastest[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_FASTEST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_FASTEST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_FASTEST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_FASTEST_EAST,
};

static const int sMovementActionCodes_Run[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_RUN_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_RUN_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_RUN_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_RUN_EAST,
};

static const int sMovementActionCodes_JumpNearSlow[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_JUMP_NEAR_SLOW_WEST,
    [DIR_SOUTH] = MOVEMENT_ACTION_JUMP_NEAR_SLOW_EAST,
    [DIR_WEST] = MOVEMENT_ACTION_JUMP_NEAR_SLOW_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_JUMP_NEAR_SLOW_EAST,
};

static const int sMovementActionCodes_JumpFarther[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_JUMP_FARTHER_WEST,
    [DIR_SOUTH] = MOVEMENT_ACTION_JUMP_FARTHER_EAST,
    [DIR_WEST] = MOVEMENT_ACTION_JUMP_FARTHER_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_JUMP_FARTHER_EAST,
};

static const int sMovementActionCodes_WalkEverSoSlightlyFast[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_NORTH,
    [DIR_SOUTH] = MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_SOUTH,
    [DIR_WEST] = MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_WEST,
    [DIR_EAST] = MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_EAST,
};

static const int Unk_020EDC2C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_117,
    [DIR_SOUTH] = MOVEMENT_ACTION_118,
    [DIR_WEST] = MOVEMENT_ACTION_119,
    [DIR_EAST] = MOVEMENT_ACTION_120,
};

static const int Unk_020EDCCC[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_105,
    [DIR_SOUTH] = MOVEMENT_ACTION_106,
    [DIR_WEST] = MOVEMENT_ACTION_107,
    [DIR_EAST] = MOVEMENT_ACTION_108,
};

static const int Unk_020EDC0C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_109,
    [DIR_SOUTH] = MOVEMENT_ACTION_110,
    [DIR_WEST] = MOVEMENT_ACTION_111,
    [DIR_EAST] = MOVEMENT_ACTION_112,
};

static const int Unk_020EDCAC[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_113,
    [DIR_SOUTH] = MOVEMENT_ACTION_114,
    [DIR_WEST] = MOVEMENT_ACTION_115,
    [DIR_EAST] = MOVEMENT_ACTION_116,
};

static const int Unk_020EDC1C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_145,
    [DIR_SOUTH] = MOVEMENT_ACTION_146,
    [DIR_WEST] = MOVEMENT_ACTION_147,
    [DIR_EAST] = MOVEMENT_ACTION_148,
};

static const int Unk_020EDD8C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_149,
    [DIR_SOUTH] = MOVEMENT_ACTION_150,
    [DIR_WEST] = MOVEMENT_ACTION_151,
    [DIR_EAST] = MOVEMENT_ACTION_152,
};

static const int Unk_020EDD4C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_121,
    [DIR_SOUTH] = MOVEMENT_ACTION_122,
    [DIR_WEST] = MOVEMENT_ACTION_123,
    [DIR_EAST] = MOVEMENT_ACTION_124,
};

static const int Unk_020EDD1C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_125,
    [DIR_SOUTH] = MOVEMENT_ACTION_126,
    [DIR_WEST] = MOVEMENT_ACTION_127,
    [DIR_EAST] = MOVEMENT_ACTION_128,
};

static const int Unk_020EDD6C[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_129,
    [DIR_SOUTH] = MOVEMENT_ACTION_130,
    [DIR_WEST] = MOVEMENT_ACTION_131,
    [DIR_EAST] = MOVEMENT_ACTION_132,
};

static const int Unk_020EDBCC[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_133,
    [DIR_SOUTH] = MOVEMENT_ACTION_134,
    [DIR_WEST] = MOVEMENT_ACTION_135,
    [DIR_EAST] = MOVEMENT_ACTION_136,
};

static const int Unk_020EDDAC[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_137,
    [DIR_SOUTH] = MOVEMENT_ACTION_138,
    [DIR_WEST] = MOVEMENT_ACTION_139,
    [DIR_EAST] = MOVEMENT_ACTION_140,
};

static const int Unk_020EDBBC[] = {
    [DIR_NORTH] = MOVEMENT_ACTION_141,
    [DIR_SOUTH] = MOVEMENT_ACTION_142,
    [DIR_WEST] = MOVEMENT_ACTION_143,
    [DIR_EAST] = MOVEMENT_ACTION_144,
};

const int *const gMovementActionCodes[] = {
    sMovementActionCodes_Face,
    sMovementActionCodes_WalkSlower,
    sMovementActionCodes_WalkSlow,
    sMovementActionCodes_WalkNormal,
    sMovementActionCodes_WalkFast,
    sMovementActionCodes_WalkFaster,
    sMovementActionCodes_WalkOnSpotSlower,
    sMovementActionCodes_WalkOnSpotSlow,
    sMovementActionCodes_WalkOnSpotNormal,
    sMovementActionCodes_WalkOnSpotFast,
    sMovementActionCodes_WalkOnSpotFaster,
    sMovementActionCodes_JumpOnSpotSlow,
    sMovementActionCodes_JumpOnSpotFast,
    sMovementActionCodes_JumpNearFast,
    sMovementActionCodes_JumpFar,
    sMovementActionCodes_WalkSlightlyFast,
    sMovementActionCodes_WalkSlightlyFaster,
    sMovementActionCodes_WalkFastest,
    sMovementActionCodes_Run,
    sMovementActionCodes_JumpNearSlow,
    sMovementActionCodes_JumpFarther,
    sMovementActionCodes_WalkEverSoSlightlyFast,
    Unk_020EDCCC,
    Unk_020EDC0C,
    Unk_020EDC2C,
    Unk_020EDCAC,
    Unk_020EDD4C,
    Unk_020EDD1C,
    Unk_020EDD6C,
    Unk_020EDBCC,
    Unk_020EDDAC,
    Unk_020EDBBC,
    Unk_020EDC1C,
    Unk_020EDD8C,
    NULL
};

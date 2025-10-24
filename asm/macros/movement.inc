#include "generated/movement_actions.h"

    .macro FaceNorth length=1
    .short MOVEMENT_ACTION_FACE_NORTH
    .short \length
    .endm

    .macro FaceSouth length=1
    .short MOVEMENT_ACTION_FACE_SOUTH
    .short \length
    .endm

    .macro FaceWest length=1
    .short MOVEMENT_ACTION_FACE_WEST
    .short \length
    .endm

    .macro FaceEast length=1
    .short MOVEMENT_ACTION_FACE_EAST
    .short \length
    .endm

    .macro WalkSlowerNorth length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_NORTH
    .short \length
    .endm

    .macro WalkSlowerSouth length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_SOUTH
    .short \length
    .endm

    .macro WalkSlowerWest length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_WEST
    .short \length
    .endm

    .macro WalkSlowerEast length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_EAST
    .short \length
    .endm

    .macro WalkSlowNorth length=1
    .short MOVEMENT_ACTION_WALK_SLOW_NORTH
    .short \length
    .endm

    .macro WalkSlowSouth length=1
    .short MOVEMENT_ACTION_WALK_SLOW_SOUTH
    .short \length
    .endm

    .macro WalkSlowWest length=1
    .short MOVEMENT_ACTION_WALK_SLOW_WEST
    .short \length
    .endm

    .macro WalkSlowEast length=1
    .short MOVEMENT_ACTION_WALK_SLOW_EAST
    .short \length
    .endm

    .macro WalkNormalNorth length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_NORTH
    .short \length
    .endm

    .macro WalkNormalSouth length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_SOUTH
    .short \length
    .endm

    .macro WalkNormalWest length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_WEST
    .short \length
    .endm

    .macro WalkNormalEast length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_EAST
    .short \length
    .endm

    .macro WalkFastNorth length=1
    .short MOVEMENT_ACTION_WALK_FAST_NORTH
    .short \length
    .endm

    .macro WalkFastSouth length=1
    .short MOVEMENT_ACTION_WALK_FAST_SOUTH
    .short \length
    .endm

    .macro WalkFastWest length=1
    .short MOVEMENT_ACTION_WALK_FAST_WEST
    .short \length
    .endm

    .macro WalkFastEast length=1
    .short MOVEMENT_ACTION_WALK_FAST_EAST
    .short \length
    .endm

    .macro WalkFasterNorth length=1
    .short MOVEMENT_ACTION_WALK_FASTER_NORTH
    .short \length
    .endm

    .macro WalkFasterSouth length=1
    .short MOVEMENT_ACTION_WALK_FASTER_SOUTH
    .short \length
    .endm

    .macro WalkFasterWest length=1
    .short MOVEMENT_ACTION_WALK_FASTER_WEST
    .short \length
    .endm

    .macro WalkFasterEast length=1
    .short MOVEMENT_ACTION_WALK_FASTER_EAST
    .short \length
    .endm

    .macro WalkOnSpotSlowerNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_NORTH
    .short \length
    .endm

    .macro WalkOnSpotSlowerSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_SOUTH
    .short \length
    .endm

    .macro WalkOnSpotSlowerWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_WEST
    .short \length
    .endm

    .macro WalkOnSpotSlowerEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_EAST
    .short \length
    .endm

    .macro WalkOnSpotSlowNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH
    .short \length
    .endm

    .macro WalkOnSpotSlowSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH
    .short \length
    .endm

    .macro WalkOnSpotSlowWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST
    .short \length
    .endm

    .macro WalkOnSpotSlowEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST
    .short \length
    .endm

    .macro WalkOnSpotNormalNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_NORTH
    .short \length
    .endm

    .macro WalkOnSpotNormalSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_SOUTH
    .short \length
    .endm

    .macro WalkOnSpotNormalWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_WEST
    .short \length
    .endm

    .macro WalkOnSpotNormalEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_EAST
    .short \length
    .endm

    .macro WalkOnSpotFastNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_NORTH
    .short \length
    .endm

    .macro WalkOnSpotFastSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_SOUTH
    .short \length
    .endm

    .macro WalkOnSpotFastWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_WEST
    .short \length
    .endm

    .macro WalkOnSpotFastEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_EAST
    .short \length
    .endm

    .macro WalkOnSpotFasterNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH
    .short \length
    .endm

    .macro WalkOnSpotFasterSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_SOUTH
    .short \length
    .endm

    .macro WalkOnSpotFasterWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_WEST
    .short \length
    .endm

    .macro WalkOnSpotFasterEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_EAST
    .short \length
    .endm

    .macro JumpOnSpotSlowNorth length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_NORTH
    .short \length
    .endm

    .macro JumpOnSpotSlowSouth length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_SOUTH
    .short \length
    .endm

    .macro JumpOnSpotSlowWest length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_WEST
    .short \length
    .endm

    .macro JumpOnSpotSlowEast length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_SLOW_EAST
    .short \length
    .endm

    .macro JumpOnSpotFastNorth length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_NORTH
    .short \length
    .endm

    .macro JumpOnSpotFastSouth length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_SOUTH
    .short \length
    .endm

    .macro JumpOnSpotFastWest length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_WEST
    .short \length
    .endm

    .macro JumpOnSpotFastEast length=1
    .short MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_EAST
    .short \length
    .endm

    .macro JumpNearFastNorth length=1
    .short MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH
    .short \length
    .endm

    .macro JumpNearFastSouth length=1
    .short MOVEMENT_ACTION_JUMP_NEAR_FAST_SOUTH
    .short \length
    .endm

    .macro JumpNearFastWest length=1
    .short MOVEMENT_ACTION_JUMP_NEAR_FAST_WEST
    .short \length
    .endm

    .macro JumpNearFastEast length=1
    .short MOVEMENT_ACTION_JUMP_NEAR_FAST_EAST
    .short \length
    .endm

    .macro JumpFarNorth length=1
    .short MOVEMENT_ACTION_JUMP_FAR_NORTH
    .short \length
    .endm

    .macro JumpFarSouth length=1
    .short MOVEMENT_ACTION_JUMP_FAR_SOUTH
    .short \length
    .endm

    .macro JumpFarWest length=1
    .short MOVEMENT_ACTION_JUMP_FAR_WEST
    .short \length
    .endm

    .macro JumpFarEast length=1
    .short MOVEMENT_ACTION_JUMP_FAR_EAST
    .short \length
    .endm

    .macro Delay1 length=1
    .short MOVEMENT_ACTION_DELAY_1
    .short \length
    .endm

    .macro Delay2 length=1
    .short MOVEMENT_ACTION_DELAY_2
    .short \length
    .endm

    .macro Delay4 length=1
    .short MOVEMENT_ACTION_DELAY_4
    .short \length
    .endm

    .macro Delay8 length=1
    .short MOVEMENT_ACTION_DELAY_8
    .short \length
    .endm

    .macro Delay15 length=1
    .short MOVEMENT_ACTION_DELAY_15
    .short \length
    .endm

    .macro Delay16 length=1
    .short MOVEMENT_ACTION_DELAY_16
    .short \length
    .endm

    .macro Delay32 length=1
    .short MOVEMENT_ACTION_DELAY_32
    .short \length
    .endm

    .macro WarpOut length=1
    .short MOVEMENT_ACTION_WARP_OUT
    .short \length
    .endm

    .macro WarpIn length=1
    .short MOVEMENT_ACTION_WARP_IN
    .short \length
    .endm

    .macro SetInvisible length=1
    .short MOVEMENT_ACTION_SET_INVISIBLE
    .short \length
    .endm

    .macro SetVisible length=1
    .short MOVEMENT_ACTION_SET_VISIBLE
    .short \length
    .endm

    .macro LockDir length=1
    .short MOVEMENT_ACTION_LOCK_DIR
    .short \length
    .endm

    .macro UnlockDir length=1
    .short MOVEMENT_ACTION_UNLOCK_DIR
    .short \length
    .endm

    .macro PauseAnimation length=1
    .short MOVEMENT_ACTION_PAUSE_ANIMATION
    .short \length
    .endm

    .macro ResumeAnimation length=1
    .short MOVEMENT_ACTION_RESUME_ANIMATION
    .short \length
    .endm

    .macro EmoteExclamationMark length=1
    .short MOVEMENT_ACTION_EMOTE_EXCLAMATION_MARK
    .short \length
    .endm

    .macro WalkSlightlyFastNorth length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH
    .short \length
    .endm

    .macro WalkSlightlyFastSouth length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_SOUTH
    .short \length
    .endm

    .macro WalkSlightlyFastWest length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_WEST
    .short \length
    .endm

    .macro WalkSlightlyFastEast length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_EAST
    .short \length
    .endm

    .macro WalkSlightlyFasterNorth length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH
    .short \length
    .endm

    .macro WalkSlightlyFasterSouth length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_SOUTH
    .short \length
    .endm

    .macro WalkSlightlyFasterWest length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_WEST
    .short \length
    .endm

    .macro WalkSlightlyFasterEast length=1
    .short MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_EAST
    .short \length
    .endm

    .macro WalkFastestNorth length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_NORTH
    .short \length
    .endm

    .macro WalkFastestSouth length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_SOUTH
    .short \length
    .endm

    .macro WalkFastestWest length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_WEST
    .short \length
    .endm

    .macro WalkFastestEast length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_EAST
    .short \length
    .endm

    .macro RunNorth length=1
    .short MOVEMENT_ACTION_RUN_NORTH
    .short \length
    .endm

    .macro RunSouth length=1
    .short MOVEMENT_ACTION_RUN_SOUTH
    .short \length
    .endm

    .macro RunWest length=1
    .short MOVEMENT_ACTION_RUN_WEST
    .short \length
    .endm

    .macro RunEast length=1
    .short MOVEMENT_ACTION_RUN_EAST
    .short \length
    .endm

    .macro JumpNearSlowWest length=1
    .short MOVEMENT_ACTION_JUMP_NEAR_SLOW_WEST
    .short \length
    .endm

    .macro JumpNearSlowEast length=1
    .short MOVEMENT_ACTION_JUMP_NEAR_SLOW_EAST
    .short \length
    .endm

    .macro JumpFartherWest length=1
    .short MOVEMENT_ACTION_JUMP_FARTHER_WEST
    .short \length
    .endm

    .macro JumpFartherEast length=1
    .short MOVEMENT_ACTION_JUMP_FARTHER_EAST
    .short \length
    .endm

    .macro WalkEverSoSlightlyFastNorth length=1
    .short MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_NORTH
    .short \length
    .endm

    .macro WalkEverSoSlightlyFastSouth length=1
    .short MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_SOUTH
    .short \length
    .endm

    .macro WalkEverSoSlightlyFastWest length=1
    .short MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_WEST
    .short \length
    .endm

    .macro WalkEverSoSlightlyFastEast length=1
    .short MOVEMENT_ACTION_WALK_EVER_SO_SLIGHTLY_FAST_EAST
    .short \length
    .endm

    .macro PokecenterNurseBow length=1
    .short MOVEMENT_ACTION_POKECENTER_NURSE_BOW
    .short \length
    .endm

    .macro RevealTrainer length=1
    .short MOVEMENT_ACTION_REVEAL_TRAINER
    .short \length
    .endm

    .macro PlayerGive length=1
    .short MOVEMENT_ACTION_PLAYER_GIVE
    .short \length
    .endm

    .macro EmoteDoubleExclamationMark length=1
    .short MOVEMENT_ACTION_EMOTE_DOUBLE_EXCLAMATION_MARK
    .short \length
    .endm

    .macro PlayerReceive length=1
    .short MOVEMENT_ACTION_PLAYER_RECEIVE
    .short \length
    .endm

    .macro DistortionWestWallWalkNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_WALK_NORTH
    .short \length
    .endm

    .macro DistortionWestWallWalkSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_WALK_SOUTH
    .short \length
    .endm

    .macro DistortionWestWallWalkWest length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_WALK_WEST
    .short \length
    .endm

    .macro DistortionWestWallWalkEast length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_WALK_EAST
    .short \length
    .endm

    .macro DistortionEastWallWalkNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_WALK_NORTH
    .short \length
    .endm

    .macro DistortionEastWallWalkSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_WALK_SOUTH
    .short \length
    .endm

    .macro DistortionEastWallWalkWest length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_WALK_WEST
    .short \length
    .endm

    .macro DistortionEastWallWalkEast length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_WALK_EAST
    .short \length
    .endm

    .macro DistortionCeilingWalkNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_WALK_NORTH
    .short \length
    .endm

    .macro DistortionCeilingWalkSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_WALK_SOUTH
    .short \length
    .endm

    .macro DistortionCeilingWalkWest length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_WALK_WEST
    .short \length
    .endm

    .macro DistortionCeilingWalkEast length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_WALK_EAST
    .short \length
    .endm

    .macro JumpDoubleNorth length=1
    .short MOVEMENT_ACTION_JUMP_DOUBLE_NORTH
    .short \length
    .endm

    .macro JumpDoubleSouth length=1
    .short MOVEMENT_ACTION_JUMP_DOUBLE_SOUTH
    .short \length
    .endm

    .macro JumpDoubleWest length=1
    .short MOVEMENT_ACTION_JUMP_DOUBLE_WEST
    .short \length
    .endm

    .macro JumpDoubleEast length=1
    .short MOVEMENT_ACTION_JUMP_DOUBLE_EAST
    .short \length
    .endm

    .macro DistortionWestWallRunNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_RUN_NORTH
    .short \length
    .endm

    .macro DistortionWestWallRunSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_RUN_SOUTH
    .short \length
    .endm

    .macro DistortionWestWallRunWest length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_RUN_WEST
    .short \length
    .endm

    .macro DistortionWestWallRunEast length=1
    .short MOVEMENT_ACTION_DISTORTION_WEST_WALL_RUN_EAST
    .short \length
    .endm

    .macro DistortionEastWallRunNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_RUN_NORTH
    .short \length
    .endm

    .macro DistortionEastWallRunSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_RUN_SOUTH
    .short \length
    .endm

    .macro DistortionEastWallRunWest length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_RUN_WEST
    .short \length
    .endm

    .macro DistortionEastWallRunEast length=1
    .short MOVEMENT_ACTION_DISTORTION_EAST_WALL_RUN_EAST
    .short \length
    .endm

    .macro DistortionCeilingRunNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_RUN_NORTH
    .short \length
    .endm

    .macro DistortionCeilingRunSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_RUN_SOUTH
    .short \length
    .endm

    .macro DistortionCeilingRunWest length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_RUN_WEST
    .short \length
    .endm

    .macro DistortionCeilingRunEast length=1
    .short MOVEMENT_ACTION_DISTORTION_CEILING_RUN_EAST
    .short \length
    .endm

    .macro DistortionSurfingSlowNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_SLOW_NORTH
    .short \length
    .endm

    .macro DistortionSurfingSlowSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_SLOW_SOUTH
    .short \length
    .endm

    .macro DistortionSurfingSlowWest length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_SLOW_WEST
    .short \length
    .endm

    .macro DistortionSurfingSlowEast length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_SLOW_EAST
    .short \length
    .endm

    .macro DistortionSurfingMediumNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_MEDIUM_NORTH
    .short \length
    .endm

    .macro DistortionSurfingMediumSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_MEDIUM_SOUTH
    .short \length
    .endm

    .macro DistortionSurfingMediumWest length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_MEDIUM_WEST
    .short \length
    .endm

    .macro DistortionSurfingMediumEast length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_MEDIUM_EAST
    .short \length
    .endm

    .macro DistortionSurfingFastNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_FAST_NORTH
    .short \length
    .endm

    .macro DistortionSurfingFastSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_FAST_SOUTH
    .short \length
    .endm

    .macro DistortionSurfingFastWest length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_FAST_WEST
    .short \length
    .endm

    .macro DistortionSurfingFastEast length=1
    .short MOVEMENT_ACTION_DISTORTION_SURFING_FAST_EAST
    .short \length
    .endm

    .macro DistortionTurnSlowNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_SLOW_NORTH
    .short \length
    .endm

    .macro DistortionTurnSlowSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_SLOW_SOUTH
    .short \length
    .endm

    .macro DistortionTurnSlowWest length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_SLOW_WEST
    .short \length
    .endm

    .macro DistortionTurnSlowEast length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_SLOW_EAST
    .short \length
    .endm

    .macro DistortionTurnFastNorth length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_FAST_NORTH
    .short \length
    .endm

    .macro DistortionTurnFastSouth length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_FAST_SOUTH
    .short \length
    .endm

    .macro DistortionTurnFastWest length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_FAST_WEST
    .short \length
    .endm

    .macro DistortionTurnFastEast length=1
    .short MOVEMENT_ACTION_DISTORTION_TURN_FAST_EAST
    .short \length
    .endm

    .macro EmoteQuestionMark length=1
    .short MOVEMENT_ACTION_EMOTE_QUESTION_MARK
    .short \length
    .endm

    .macro EndMovement
    .short MOVEMENT_ACTION_END
    .short 0
    .endm

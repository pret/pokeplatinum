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

    .macro NurseJoyBow length=1
    .short MOVEMENT_ACTION_NURSE_JOY_BOW
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

    .macro EmoteQuestionMark length=1
    .short MOVEMENT_ACTION_EMOTE_QUESTION_MARK
    .short \length
    .endm

    .macro PlayerReceive length=1
    .short MOVEMENT_ACTION_PLAYER_RECEIVE
    .short \length
    .endm

    .macro MoveAction_105 length=1
    .short MOVEMENT_ACTION_105
    .short \length
    .endm

    .macro MoveAction_106 length=1
    .short MOVEMENT_ACTION_106
    .short \length
    .endm

    .macro MoveAction_107 length=1
    .short MOVEMENT_ACTION_107
    .short \length
    .endm

    .macro MoveAction_108 length=1
    .short MOVEMENT_ACTION_108
    .short \length
    .endm

    .macro MoveAction_109 length=1
    .short MOVEMENT_ACTION_109
    .short \length
    .endm

    .macro MoveAction_110 length=1
    .short MOVEMENT_ACTION_110
    .short \length
    .endm

    .macro MoveAction_111 length=1
    .short MOVEMENT_ACTION_111
    .short \length
    .endm

    .macro MoveAction_112 length=1
    .short MOVEMENT_ACTION_112
    .short \length
    .endm

    .macro MoveAction_113 length=1
    .short MOVEMENT_ACTION_113
    .short \length
    .endm

    .macro MoveAction_114 length=1
    .short MOVEMENT_ACTION_114
    .short \length
    .endm

    .macro MoveAction_115 length=1
    .short MOVEMENT_ACTION_115
    .short \length
    .endm

    .macro MoveAction_116 length=1
    .short MOVEMENT_ACTION_116
    .short \length
    .endm

    .macro MoveAction_117 length=1
    .short MOVEMENT_ACTION_117
    .short \length
    .endm

    .macro MoveAction_118 length=1
    .short MOVEMENT_ACTION_118
    .short \length
    .endm

    .macro MoveAction_119 length=1
    .short MOVEMENT_ACTION_119
    .short \length
    .endm

    .macro MoveAction_120 length=1
    .short MOVEMENT_ACTION_120
    .short \length
    .endm

    .macro MoveAction_121 length=1
    .short MOVEMENT_ACTION_121
    .short \length
    .endm

    .macro MoveAction_122 length=1
    .short MOVEMENT_ACTION_122
    .short \length
    .endm

    .macro MoveAction_123 length=1
    .short MOVEMENT_ACTION_123
    .short \length
    .endm

    .macro MoveAction_124 length=1
    .short MOVEMENT_ACTION_124
    .short \length
    .endm

    .macro MoveAction_125 length=1
    .short MOVEMENT_ACTION_125
    .short \length
    .endm

    .macro MoveAction_126 length=1
    .short MOVEMENT_ACTION_126
    .short \length
    .endm

    .macro MoveAction_127 length=1
    .short MOVEMENT_ACTION_127
    .short \length
    .endm

    .macro MoveAction_128 length=1
    .short MOVEMENT_ACTION_128
    .short \length
    .endm

    .macro MoveAction_129 length=1
    .short MOVEMENT_ACTION_129
    .short \length
    .endm

    .macro MoveAction_130 length=1
    .short MOVEMENT_ACTION_130
    .short \length
    .endm

    .macro MoveAction_131 length=1
    .short MOVEMENT_ACTION_131
    .short \length
    .endm

    .macro MoveAction_132 length=1
    .short MOVEMENT_ACTION_132
    .short \length
    .endm

    .macro MoveAction_133 length=1
    .short MOVEMENT_ACTION_133
    .short \length
    .endm

    .macro MoveAction_134 length=1
    .short MOVEMENT_ACTION_134
    .short \length
    .endm

    .macro MoveAction_135 length=1
    .short MOVEMENT_ACTION_135
    .short \length
    .endm

    .macro MoveAction_136 length=1
    .short MOVEMENT_ACTION_136
    .short \length
    .endm

    .macro MoveAction_137 length=1
    .short MOVEMENT_ACTION_137
    .short \length
    .endm

    .macro MoveAction_138 length=1
    .short MOVEMENT_ACTION_138
    .short \length
    .endm

    .macro MoveAction_139 length=1
    .short MOVEMENT_ACTION_139
    .short \length
    .endm

    .macro MoveAction_140 length=1
    .short MOVEMENT_ACTION_140
    .short \length
    .endm

    .macro MoveAction_141 length=1
    .short MOVEMENT_ACTION_141
    .short \length
    .endm

    .macro MoveAction_142 length=1
    .short MOVEMENT_ACTION_142
    .short \length
    .endm

    .macro MoveAction_143 length=1
    .short MOVEMENT_ACTION_143
    .short \length
    .endm

    .macro MoveAction_144 length=1
    .short MOVEMENT_ACTION_144
    .short \length
    .endm

    .macro MoveAction_145 length=1
    .short MOVEMENT_ACTION_145
    .short \length
    .endm

    .macro MoveAction_146 length=1
    .short MOVEMENT_ACTION_146
    .short \length
    .endm

    .macro MoveAction_147 length=1
    .short MOVEMENT_ACTION_147
    .short \length
    .endm

    .macro MoveAction_148 length=1
    .short MOVEMENT_ACTION_148
    .short \length
    .endm

    .macro MoveAction_149 length=1
    .short MOVEMENT_ACTION_149
    .short \length
    .endm

    .macro MoveAction_150 length=1
    .short MOVEMENT_ACTION_150
    .short \length
    .endm

    .macro MoveAction_151 length=1
    .short MOVEMENT_ACTION_151
    .short \length
    .endm

    .macro MoveAction_152 length=1
    .short MOVEMENT_ACTION_152
    .short \length
    .endm

    .macro MoveAction_153 length=1
    .short MOVEMENT_ACTION_153
    .short \length
    .endm

    .macro EndMovement
    .short MOVEMENT_ACTION_END
    .short 0
    .endm

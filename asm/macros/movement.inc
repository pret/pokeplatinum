#include "generated/movement_actions.h"

    .macro MoveAction_FaceNorth length=1
    .short MOVEMENT_ACTION_FACE_NORTH
    .short \length
    .endm

    .macro MoveAction_FaceSouth length=1
    .short MOVEMENT_ACTION_FACE_SOUTH
    .short \length
    .endm

    .macro MoveAction_FaceWest length=1
    .short MOVEMENT_ACTION_FACE_WEST
    .short \length
    .endm

    .macro MoveAction_FaceEast length=1
    .short MOVEMENT_ACTION_FACE_EAST
    .short \length
    .endm

    .macro MoveAction_WalkSlowerNorth length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkSlowerSouth length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkSlowerWest length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_WEST
    .short \length
    .endm

    .macro MoveAction_WalkSlowerEast length=1
    .short MOVEMENT_ACTION_WALK_SLOWER_EAST
    .short \length
    .endm

    .macro MoveAction_WalkSlowNorth length=1
    .short MOVEMENT_ACTION_WALK_SLOW_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkSlowSouth length=1
    .short MOVEMENT_ACTION_WALK_SLOW_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkSlowWest length=1
    .short MOVEMENT_ACTION_WALK_SLOW_WEST
    .short \length
    .endm

    .macro MoveAction_WalkSlowEast length=1
    .short MOVEMENT_ACTION_WALK_SLOW_EAST
    .short \length
    .endm

    .macro MoveAction_WalkNormalNorth length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkNormalSouth length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkNormalWest length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_WEST
    .short \length
    .endm

    .macro MoveAction_WalkNormalEast length=1
    .short MOVEMENT_ACTION_WALK_NORMAL_EAST
    .short \length
    .endm

    .macro MoveAction_WalkFastNorth length=1
    .short MOVEMENT_ACTION_WALK_FAST_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkFastSouth length=1
    .short MOVEMENT_ACTION_WALK_FAST_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkFastWest length=1
    .short MOVEMENT_ACTION_WALK_FAST_WEST
    .short \length
    .endm

    .macro MoveAction_WalkFastEast length=1
    .short MOVEMENT_ACTION_WALK_FAST_EAST
    .short \length
    .endm

    .macro MoveAction_WalkFasterNorth length=1
    .short MOVEMENT_ACTION_WALK_FASTER_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkFasterSouth length=1
    .short MOVEMENT_ACTION_WALK_FASTER_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkFasterWest length=1
    .short MOVEMENT_ACTION_WALK_FASTER_WEST
    .short \length
    .endm

    .macro MoveAction_WalkFasterEast length=1
    .short MOVEMENT_ACTION_WALK_FASTER_EAST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowerNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowerSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowerWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_WEST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowerEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_EAST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotSlowEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotNormalNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotNormalSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotNormalWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_WEST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotNormalEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_EAST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFastNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFastSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFastWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_WEST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFastEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FAST_EAST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFasterNorth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFasterSouth length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFasterWest length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_WEST
    .short \length
    .endm

    .macro MoveAction_WalkOnSpotFasterEast length=1
    .short MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_EAST
    .short \length
    .endm

    .macro MoveAction_044 length=1
    .short MOVEMENT_ACTION_044
    .short \length
    .endm

    .macro MoveAction_045 length=1
    .short MOVEMENT_ACTION_045
    .short \length
    .endm

    .macro MoveAction_046 length=1
    .short MOVEMENT_ACTION_046
    .short \length
    .endm

    .macro MoveAction_047 length=1
    .short MOVEMENT_ACTION_047
    .short \length
    .endm

    .macro MoveAction_048 length=1
    .short MOVEMENT_ACTION_048
    .short \length
    .endm

    .macro MoveAction_049 length=1
    .short MOVEMENT_ACTION_049
    .short \length
    .endm

    .macro MoveAction_050 length=1
    .short MOVEMENT_ACTION_050
    .short \length
    .endm

    .macro MoveAction_051 length=1
    .short MOVEMENT_ACTION_051
    .short \length
    .endm

    .macro MoveAction_052 length=1
    .short MOVEMENT_ACTION_052
    .short \length
    .endm

    .macro MoveAction_053 length=1
    .short MOVEMENT_ACTION_053
    .short \length
    .endm

    .macro MoveAction_054 length=1
    .short MOVEMENT_ACTION_054
    .short \length
    .endm

    .macro MoveAction_055 length=1
    .short MOVEMENT_ACTION_055
    .short \length
    .endm

    .macro MoveAction_056 length=1
    .short MOVEMENT_ACTION_056
    .short \length
    .endm

    .macro MoveAction_057 length=1
    .short MOVEMENT_ACTION_057
    .short \length
    .endm

    .macro MoveAction_058 length=1
    .short MOVEMENT_ACTION_058
    .short \length
    .endm

    .macro MoveAction_059 length=1
    .short MOVEMENT_ACTION_059
    .short \length
    .endm

    .macro MoveAction_Delay1 length=1
    .short MOVEMENT_ACTION_DELAY_1
    .short \length
    .endm

    .macro MoveAction_Delay2 length=1
    .short MOVEMENT_ACTION_DELAY_2
    .short \length
    .endm

    .macro MoveAction_Delay4 length=1
    .short MOVEMENT_ACTION_DELAY_4
    .short \length
    .endm

    .macro MoveAction_Delay8 length=1
    .short MOVEMENT_ACTION_DELAY_8
    .short \length
    .endm

    .macro MoveAction_Delay15 length=1
    .short MOVEMENT_ACTION_DELAY_15
    .short \length
    .endm

    .macro MoveAction_Delay16 length=1
    .short MOVEMENT_ACTION_DELAY_16
    .short \length
    .endm

    .macro MoveAction_Delay32 length=1
    .short MOVEMENT_ACTION_DELAY_32
    .short \length
    .endm

    .macro MoveAction_067 length=1
    .short MOVEMENT_ACTION_067
    .short \length
    .endm

    .macro MoveAction_068 length=1
    .short MOVEMENT_ACTION_068
    .short \length
    .endm

    .macro MoveAction_SetInvisible length=1
    .short MOVEMENT_ACTION_SET_INVISIBLE
    .short \length
    .endm

    .macro MoveAction_SetVisible length=1
    .short MOVEMENT_ACTION_SET_VISIBLE
    .short \length
    .endm

    .macro MoveAction_LockDir length=1
    .short MOVEMENT_ACTION_LOCK_DIR
    .short \length
    .endm

    .macro MoveAction_UnlockDir length=1
    .short MOVEMENT_ACTION_UNLOCK_DIR
    .short \length
    .endm

    .macro MoveAction_073 length=1
    .short MOVEMENT_ACTION_073
    .short \length
    .endm

    .macro MoveAction_074 length=1
    .short MOVEMENT_ACTION_074
    .short \length
    .endm

    .macro MoveAction_ExclamationPoint length=1
    .short MOVEMENT_ACTION_EXCLAMATION_POINT
    .short \length
    .endm

    .macro MoveAction_076 length=1
    .short MOVEMENT_ACTION_076
    .short \length
    .endm

    .macro MoveAction_077 length=1
    .short MOVEMENT_ACTION_077
    .short \length
    .endm

    .macro MoveAction_078 length=1
    .short MOVEMENT_ACTION_078
    .short \length
    .endm

    .macro MoveAction_079 length=1
    .short MOVEMENT_ACTION_079
    .short \length
    .endm

    .macro MoveAction_080 length=1
    .short MOVEMENT_ACTION_080
    .short \length
    .endm

    .macro MoveAction_081 length=1
    .short MOVEMENT_ACTION_081
    .short \length
    .endm

    .macro MoveAction_082 length=1
    .short MOVEMENT_ACTION_082
    .short \length
    .endm

    .macro MoveAction_083 length=1
    .short MOVEMENT_ACTION_083
    .short \length
    .endm

    .macro MoveAction_WalkFastestNorth length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_NORTH
    .short \length
    .endm

    .macro MoveAction_WalkFastestSouth length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_SOUTH
    .short \length
    .endm

    .macro MoveAction_WalkFastestWest length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_WEST
    .short \length
    .endm

    .macro MoveAction_WalkFastestEast length=1
    .short MOVEMENT_ACTION_WALK_FASTEST_EAST
    .short \length
    .endm

    .macro MoveAction_RunNorth length=1
    .short MOVEMENT_ACTION_RUN_NORTH
    .short \length
    .endm

    .macro MoveAction_RunSouth length=1
    .short MOVEMENT_ACTION_RUN_SOUTH
    .short \length
    .endm

    .macro MoveAction_RunWest length=1
    .short MOVEMENT_ACTION_RUN_WEST
    .short \length
    .endm

    .macro MoveAction_RunEast length=1
    .short MOVEMENT_ACTION_RUN_EAST
    .short \length
    .endm

    .macro MoveAction_092 length=1
    .short MOVEMENT_ACTION_092
    .short \length
    .endm

    .macro MoveAction_093 length=1
    .short MOVEMENT_ACTION_093
    .short \length
    .endm

    .macro MoveAction_094 length=1
    .short MOVEMENT_ACTION_094
    .short \length
    .endm

    .macro MoveAction_095 length=1
    .short MOVEMENT_ACTION_095
    .short \length
    .endm

    .macro MoveAction_096 length=1
    .short MOVEMENT_ACTION_096
    .short \length
    .endm

    .macro MoveAction_097 length=1
    .short MOVEMENT_ACTION_097
    .short \length
    .endm

    .macro MoveAction_098 length=1
    .short MOVEMENT_ACTION_098
    .short \length
    .endm

    .macro MoveAction_099 length=1
    .short MOVEMENT_ACTION_099
    .short \length
    .endm

    .macro MoveAction_100 length=1
    .short MOVEMENT_ACTION_100
    .short \length
    .endm

    .macro MoveAction_101 length=1
    .short MOVEMENT_ACTION_101
    .short \length
    .endm

    .macro MoveAction_102 length=1
    .short MOVEMENT_ACTION_102
    .short \length
    .endm

    .macro MoveAction_103 length=1
    .short MOVEMENT_ACTION_103
    .short \length
    .endm

    .macro MoveAction_104 length=1
    .short MOVEMENT_ACTION_104
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

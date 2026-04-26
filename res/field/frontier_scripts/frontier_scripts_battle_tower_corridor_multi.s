# include "macros/frscrcmd.inc"

    .data

    .long _0142 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0x800B
    .byte 0x01
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0018:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0024:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0088
    .short 0x0058
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0003
    .short 0x800B
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0004
    .short 0x800C
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0060:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0088
    .short 0x0058
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x01
    .short 0x0005
    .short 0xEEEF
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x00
    .byte 0x00
    .byte 0x00
    .short 0x0006
    .short 0xEEEF
    .byte 0x01
    .short 0x00E8
    .short 0x0020
    .byte 0x00
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_009C:
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0001
    .short 0x0048
    .short 0x0030
    .short 0x0001
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x00D8
    .short 0x0030
    .short 0x0001
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00B8:
    WarpIn
    WalkSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
_00C8:
    WarpIn
    WalkSouth 2
    EndMovement

    .balign 4, 0
_00D4:
    WalkSouth
    WalkEast 5
    EndMovement

    .balign 4, 0
_00E0:
    WalkSouth
    WalkWest 5
    EndMovement

    .balign 4, 0
_00EC:
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_00F8:
    WalkEast 5
    WalkNorth
    Delay8
    FaceEast
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
_0118:
    WalkWest 5
    WalkNorth
    Delay8
    FaceWest
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
_0138:
    WalkNorth
    WarpOut
    EndMovement

_0142:
    FrontierScrCmd_3E VAR_UNK_0x40DD, VAR_0x8001
    Call _0278
    Call _0344
    SetVar FR_VAR_0x800F, 232
    PlaySoundEffect SEQ_SE_DP_DOOR10
    FrontierScrCmd_2A _009C
    FrontierScrCmd_2C _00A0
    FrontierScrCmd_2F 1
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_LINK_MULTI, _01B0
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_6, _01B0
    SetVar VAR_0x8002, 3
    SetVar VAR_0x8003, 4
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0024
    GoTo _01D0
    End

_01B0:
    SetVar VAR_0x8002, 5
    SetVar VAR_0x8003, 6
    FrontierScrCmd_22 _0018
    FrontierScrCmd_24 _0060
    GoTo _01D0
    End

_01D0:
    FadeScreenIn
    Call _02BE
    Call _02FC
    Call _0320
    FadeScreenOut
    FrontierScrCmd_2D 0
    FrontierScrCmd_2D 1
    FrontierScrCmd_2B 1
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_LINK_MULTI, _0250
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_6, _0250
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 FR_VAR_0x800F
    FrontierScrCmd_23 VAR_0x800B
    FrontierScrCmd_23 VAR_0x800C
    GoTo _0270
    End

_0250:
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 5
    FrontierScrCmd_25 6
    FrontierScrCmd_23 FR_VAR_0x800F
    GoTo _0270
    End

_0270:
    FrontierScrCmd_04 8, 0
    End

_0278:
    GoToIfEq VAR_0x8001, 0, _02AA
    GoToIfEq VAR_0x8000, 1, _02AC
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_0x800B
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_0x800C
    GoTo _02AA
    End

_02AA:
    Return

_02AC:
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_0x800B
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_0x800C
    Return

_02BE:
    FrontierScrCmd_31 0, 0
    FrontierScrCmd_31 1, 0
    FrontierScrCmd_33 0
    FrontierScrCmd_32 0
    FrontierScrCmd_32 1
    ApplyMovement 1, _00B8
    ApplyMovement 2, _00B8
    WaitMovement
    ApplyMovement VAR_0x8002, _00C8
    ApplyMovement VAR_0x8003, _00C8
    WaitMovement
    Return

_02FC:
    ApplyMovement 1, _00F8
    ApplyMovement VAR_0x8002, _00D4
    ApplyMovement 2, _0118
    ApplyMovement VAR_0x8003, _00E0
    WaitMovement
    Return

_0320:
    ApplyMovement 1, _0138
    ApplyMovement 2, _0138
    ApplyMovement VAR_0x8002, _00EC
    ApplyMovement VAR_0x8003, _00EC
    WaitMovement
    Return

_0344:
    CallIfNe VAR_0x8001, 0, _0353
    Return

_0353:
    Return

    .balign 4, 0

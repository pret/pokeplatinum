# include "macros/frscrcmd.inc"

    .data

    .long _00E2 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x01
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x01
    .short 0x0038
    .short 0x0020
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0028:
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_002C:
    .short 0x0001
    .short 0x0048
    .short 0x0030
    .short 0x0001
    .byte 0x00
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_0038:
    WarpIn
    WalkSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
_0048:
    WarpIn
    WalkSouth 2
    EndMovement

    .balign 4, 0
_0054:
    WalkEast 4
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_0064:
    WalkSouth
    WalkEast 4
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_0078:
    WalkEast 8
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_0088:
    WalkSouth
    WalkEast 8
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_009C:
    WalkEast 12
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_00AC:
    WalkSouth
    WalkEast 12
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_00C0:
    WalkEast 16
    WalkNorth 2
    WarpOut
    EndMovement

    .balign 4, 0
_00D0:
    WalkSouth
    WalkEast 16
    WalkNorth 2
    WarpOut
    EndMovement

_00E2:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, _0145
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, _0145
    GoTo _0153
    End

_010C:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0010
    FrontierScrCmd_2A _0028
    FrontierScrCmd_2C _002C
    FadeScreenIn
    FrontierScrCmd_3E VAR_BATTLE_TOWER_CORRIDOR_LOAD_ACTION, VAR_0x8001
    GoToIfEq VAR_0x8001, 1, _0161
    End

_0145:
    SetVar FR_VAR_0x800F, 235
    GoTo _010C
    End

_0153:
    SetVar FR_VAR_0x800F, 231
    GoTo _010C
    End

_0161:
    Call _01A2
    GetRandom VAR_0x8008, 4
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, 1, _01E4
    GoToIfEq FR_VAR_0x8010, 2, _01FE
    GoToIfEq FR_VAR_0x8010, 3, _0218
    GoTo _01CA
    End

_01A2:
    PlaySoundEffect SEQ_SE_DP_DOOR10
    FrontierScrCmd_31 0, 0
    FrontierScrCmd_33 0
    FrontierScrCmd_32 0
    ApplyMovement 1, _0038
    WaitMovement
    ApplyMovement 0, _0048
    WaitMovement
    Return

_01CA:
    ApplyMovement 1, _0054
    ApplyMovement 0, _0064
    WaitMovement
    GoTo _0232
    End

_01E4:
    ApplyMovement 1, _0078
    ApplyMovement 0, _0088
    WaitMovement
    GoTo _0232
    End

_01FE:
    ApplyMovement 1, _009C
    ApplyMovement 0, _00AC
    WaitMovement
    GoTo _0232
    End

_0218:
    ApplyMovement 1, _00C0
    ApplyMovement 0, _00D0
    WaitMovement
    GoTo _0232
    End

_0232:
    FadeScreenOut
    FrontierScrCmd_2D 0
    FrontierScrCmd_2B 1
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_23 FR_VAR_0x800F
    FrontierScrCmd_04 7, 0
    End

    .balign 4, 0

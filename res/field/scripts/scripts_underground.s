#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _00BE
    ScriptEntry _00E7
    ScriptEntry _018F
    ScriptEntry _0225
    ScriptEntry _0289
    ScriptEntryEnd

_001A:
    ScrCmd_14F
    SetObjectEventPos 1, 72, 104
    SetObjectEventPos 2, 0x1A8, 87
    SetObjectEventPos 3, 200, 185
    SetObjectEventPos 4, 0x14F, 0x108
    SetObjectEventPos 8, 175, 0x117
    SetObjectEventPos 9, 0x1A8, 0x1B7
    SetObjectEventPos 10, 87, 0x1C8
    SetObjectEventPos 11, 0x137, 0x166
    SetObjectEventPos 0, 232, 87
    SetObjectEventPos 5, 0x148, 151
    SetObjectEventPos 6, 232, 215
    SetObjectEventPos 7, 232, 0x12A
    SetObjectEventPos 12, 0x117, 0x148
    SetObjectEventPos 13, 0x117, 0x1C8
    SetObjectEventPos 14, 183, 0x188
    SetObjectEventPos 15, 0x117, 245
    SetObjectEventPos 17, 40, 0x1D7
    SetObjectEventPos 18, 0x1D7, 72
    SetObjectEventPos 19, 0x1D7, 0x1D7
    SetObjectEventPos 20, 40, 72
    End

_00BE:
    GoToIfEq 0x40D0, 0, _00CD
    End

_00CD:
    GetPlayerMapPos VAR_0x4000, VAR_0x4001
    AddVar VAR_0x4000, 1
    ScrCmd_187 16, VAR_0x4000, 1, VAR_0x4001, 1
    End

_00E7:
    ScrCmd_19F 0
    GoTo _00F3
    End

_00F3:
    ScrCmd_19E 1, 0x800C
    SetVar 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, -5, _0141
    GoToIfEq 0x8008, -4, _014D
    GoToIfEq 0x8008, -3, _0159
    GoToIfEq 0x8008, -1, _0165
    GoTo _017F
    End

_0141:
    ScrCmd_19F 5
    GoTo _0171
    End

_014D:
    ScrCmd_19F 3
    GoTo _0171
    End

_0159:
    ScrCmd_19F 4
    GoTo _0171
    End

_0165:
    ScrCmd_19F 9
    GoTo _0189
    End

_0171:
    WaitABPress
    ScrCmd_19F 8
    GoTo _00F3
    End

_017F:
    WaitABPress
    GoTo _0171
    End

_0189:
    WaitABPress
    ScrCmd_1A0
    End

_018F:
    ScrCmd_19F 0
    GoTo _019B
    End

_019B:
    ScrCmd_19E 0, 0x800C
    SetVar 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, -5, _0201
    GoToIfEq 0x8008, -4, _01E9
    GoToIfEq 0x8008, -3, _01F5
    GoToIfEq 0x8008, -1, _0165
    GoTo _020D
    End

_01E9:
    ScrCmd_19F 3
    GoTo _0217
    End

_01F5:
    ScrCmd_19F 4
    GoTo _0217
    End

_0201:
    ScrCmd_19F 5
    GoTo _0217
    End

_020D:
    WaitABPress
    GoTo _0217
    End

_0217:
    WaitABPress
    ScrCmd_19F 8
    GoTo _019B
    End

_0225:
    ScrCmd_19F 27
    GoTo _0231
    End

_0231:
    ScrCmd_19E 2, 0x800C
    SetVar 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, -4, _0265
    GoToIfEq 0x8008, -1, _0165
    GoTo _0271
    End

_0265:
    ScrCmd_19F 3
    GoTo _027B
    End

_0271:
    WaitABPress
    GoTo _027B
    End

_027B:
    WaitABPress
    ScrCmd_19F 8
    GoTo _0231
    End

_0289:
    ApplyMovement 16, _02D4
    WaitMovement
    ScrCmd_152 3
    ScrCmd_19F 91
    WaitABPress
    ScrCmd_1A0
    ApplyMovement 16, _02E4
    WaitMovement
    PlayFanfare SEQ_SE_DP_PYUU2
    ApplyMovement 16, _02F0
    WaitMovement
    RemoveObject 16
    SetVar 0x40D0, 1
    SetFlag FLAG_UNDERGROUND_FIRST_ENTERED
    End

    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02D4:
    MoveAction_034
    MoveAction_075
    MoveAction_063
    EndMovement

    .balign 4, 0
_02E4:
    MoveAction_033
    MoveAction_063 2
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_003
    MoveAction_061
    MoveAction_000
    MoveAction_061
    MoveAction_002
    MoveAction_061
    MoveAction_001
    MoveAction_061
    MoveAction_003
    MoveAction_060
    MoveAction_000
    MoveAction_060
    MoveAction_002
    MoveAction_060
    MoveAction_001
    MoveAction_067
    MoveAction_063 2
    EndMovement

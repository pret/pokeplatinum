    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0082
    ScriptEntry _0084
    ScriptEntry _0097
    ScriptEntry _00AA
    ScriptEntry _00BD
    ScriptEntry _00D0
    ScriptEntry _00E3
    ScriptEntry _00F6
    ScriptEntry _0109
    ScriptEntry _011C
    ScriptEntry _013B
    ScriptEntry _02E4
    ScriptEntry _02F7
    ScriptEntry _030A
    ScriptEntry _031B
    ScriptEntry _0984
    ScriptEntry _0709
    ScriptEntry _071C
    ScriptEntry _072D
    ScriptEntry _0740
    ScriptEntry _0753
    ScriptEntry _08A4
    ScriptEntry _08BB
    ScriptEntry _08D0
    ScriptEntry _08E7
    ScriptEntry _08FE
    ScriptEntry _0915
    ScriptEntry _092C
    ScriptEntry _0943
    ScriptEntry _095A
    ScriptEntry _0971
    ScriptEntry _0997
    .short 0xFD13

_0082:
    End

_0084:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0097:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0109:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1A1, 0
    ScrCmd_02C 22
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 1, _01A7
    ScrCmd_02C 14
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01B2
    ScrCmd_02C 15
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 0, _01BD
    GoToIfEq 0x8004, 1, _01D7
    GoToIfEq 0x8004, 2, _01F1
    GoToIfEq 0x8004, 3, _020B
    End

_01A7:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01B2:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01BD:
    ApplyMovement 0, _0240
    ApplyMovement 0xFF, _027C
    WaitMovement
    GoTo _0225
    End

_01D7:
    ApplyMovement 0, _0240
    ApplyMovement 0xFF, _0294
    WaitMovement
    GoTo _0225
    End

_01F1:
    ApplyMovement 0, _0240
    ApplyMovement 0xFF, _02AC
    WaitMovement
    GoTo _0225
    End

_020B:
    ApplyMovement 0, _0258
    ApplyMovement 0xFF, _02C4
    WaitMovement
    GoTo _0225
    End

_0225:
    SetFlag 1
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 65
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0240:
    MoveAction_00E 20
    MoveAction_00C 13
    MoveAction_00F 12
    MoveAction_00C 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_00C
    MoveAction_00E 2
    MoveAction_00D
    MoveAction_00E 18
    MoveAction_00C 13
    MoveAction_00F 12
    MoveAction_00C 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_027C:
    MoveAction_00C
    MoveAction_00E 20
    MoveAction_00C 13
    MoveAction_00F 12
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_0294:
    MoveAction_00D
    MoveAction_00E 20
    MoveAction_00C 13
    MoveAction_00F 12
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_00E
    MoveAction_00E 20
    MoveAction_00C 13
    MoveAction_00F 12
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_02C4:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_022
    MoveAction_00E 19
    MoveAction_00C 13
    MoveAction_00F 12
    MoveAction_00C 3
    EndMovement

_02E4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02F7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_030A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_031B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 24
    ScrCmd_02C 25
    GoToIfUnset 0x14A, _03AC
    GoToIfUnset 0x14B, _03AC
    GoToIfUnset 0x14C, _03AC
    GoToIfUnset 0x14D, _03AC
    GoToIfUnset 0x14E, _03AC
    GoToIfUnset 0x14F, _03AC
    GoToIfUnset 0x150, _03AC
    GoToIfUnset 0x151, _03AC
    GoToIfUnset 0x152, _03AC
    GoToIfUnset 0x153, _03AC
    GoToIfUnset 0x154, _03AC
    SetFlag 0x15B
    GoTo _06E8

_03AC:
    GoToIfSet 0x14A, _03F4
    GoToIfUnset 0x98C, _03F4
    ScrCmd_02C 33
    SetVar 0x8004, 46
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x14A
    ScrCmd_034
    ScrCmd_061
    End

_03F4:
    GoToIfSet 0x14B, _0442
    ScrCmd_15D 0x800C
    GoToIfLt 0x800C, 8, _0442
    ScrCmd_02C 34
    SetVar 0x8004, 47
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x14B
    ScrCmd_034
    ScrCmd_061
    End

_0442:
    GoToIfSet 0x14C, _048A
    GoToIfUnset 0x96A, _048A
    ScrCmd_02C 35
    SetVar 0x8004, 72
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x14C
    ScrCmd_034
    ScrCmd_061
    End

_048A:
    GoToIfSet 0x14D, _04D2
    GoToIfUnset 0x968, _04D2
    ScrCmd_02C 36
    SetVar 0x8004, 73
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x14D
    ScrCmd_034
    ScrCmd_061
    End

_04D2:
    GoToIfSet 0x14E, _051A
    GoToIfUnset 0x969, _051A
    ScrCmd_02C 37
    SetVar 0x8004, 74
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x14E
    ScrCmd_034
    ScrCmd_061
    End

_051A:
    GoToIfSet 0x14F, _0562
    GoToIfUnset 0x96C, _0562
    ScrCmd_02C 38
    SetVar 0x8004, 75
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x14F
    ScrCmd_034
    ScrCmd_061
    End

_0562:
    GoToIfSet 0x150, _05AA
    GoToIfUnset 0x96B, _05AA
    ScrCmd_02C 39
    SetVar 0x8004, 76
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x150
    ScrCmd_034
    ScrCmd_061
    End

_05AA:
    GoToIfSet 0x151, _05F8
    ScrCmd_293 0x800C
    GoToIfLt 0x800C, 100, _05F8
    ScrCmd_02C 40
    SetVar 0x8004, 77
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x151
    ScrCmd_034
    ScrCmd_061
    End

_05F8:
    GoToIfSet 0x152, _0646
    ScrCmd_286 0x800C
    GoToIfLt 0x800C, 100, _0646
    ScrCmd_02C 41
    SetVar 0x8004, 78
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x152
    ScrCmd_034
    ScrCmd_061
    End

_0646:
    GoToIfSet 0x153, _0694
    ScrCmd_287 0x800C
    GoToIfLt 0x800C, 100, _0694
    ScrCmd_02C 42
    SetVar 0x8004, 79
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x153
    ScrCmd_034
    ScrCmd_061
    End

_0694:
    GoToIfSet 0x154, _06E2
    ScrCmd_288 0x800C
    GoToIfLt 0x800C, 100, _06E2
    ScrCmd_02C 43
    SetVar 0x8004, 80
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _06F3
    ScrCmd_014 0x7DC
    SetFlag 0x154
    ScrCmd_034
    ScrCmd_061
    End

_06E2:
    GoTo _06FE

_06E8:
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06F3:
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_06FE:
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0709:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_071C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_072D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0740:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0753:
    ScrCmd_060
    ApplyMovement 0xFF, _087C
    WaitMovement
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2D5, _07A8
    GoToIfEq 0x8005, 0x2D6, _07C0
    GoToIfEq 0x8005, 0x2D7, _07D8
    GoToIfEq 0x8005, 0x2D8, _07F0
    GoToIfEq 0x8005, 0x2D9, _0808
    End

_07A8:
    ScrCmd_186 32, 0x1D7, 0x2D5
    ScrCmd_186 31, 0x1D7, 0x2D5
    GoTo _0820
    End

_07C0:
    ScrCmd_186 32, 0x1D7, 0x2D6
    ScrCmd_186 31, 0x1D7, 0x2D6
    GoTo _0820
    End

_07D8:
    ScrCmd_186 32, 0x1D7, 0x2D7
    ScrCmd_186 31, 0x1D7, 0x2D7
    GoTo _0820
    End

_07F0:
    ScrCmd_186 32, 0x1D7, 0x2D8
    ScrCmd_186 31, 0x1D7, 0x2D8
    GoTo _0820
    End

_0808:
    ScrCmd_186 32, 0x1D7, 0x2D9
    ScrCmd_186 31, 0x1D7, 0x2D9
    GoTo _0820
    End

_0820:
    ClearFlag 0x23C
    ClearFlag 0x23D
    ScrCmd_064 32
    ScrCmd_064 31
    ApplyMovement 31, _0884
    WaitMovement
    ScrCmd_04C 0x1AB, 0
    ScrCmd_04D
    ApplyMovement 32, _0894
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_02C 1
    ScrCmd_04C 0x1AB, 0
    ScrCmd_04D
    ScrCmd_065 31
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 32, _089C
    WaitMovement
    ScrCmd_065 32
    SetVar 0x40F6, 1
    ScrCmd_061
    End

    .balign 4, 0
_087C:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_012 9
    EndMovement

    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0894:
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_089C:
    MoveAction_00F 8
    EndMovement

_08A4:
    ScrCmd_036 52, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08BB:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 53, 0x800C
    ScrCmd_014 0x7D0
    End

_08D0:
    ScrCmd_036 54, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08E7:
    ScrCmd_036 55, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_08FE:
    ScrCmd_036 56, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0915:
    ScrCmd_036 57, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_092C:
    ScrCmd_036 58, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0943:
    ScrCmd_036 59, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_095A:
    ScrCmd_036 60, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0971:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0984:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0997:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0

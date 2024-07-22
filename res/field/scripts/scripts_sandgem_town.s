#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _0085
    ScriptEntry _057C
    ScriptEntry _0840
    ScriptEntry _0853
    ScriptEntry _0866
    ScriptEntry _0879
    ScriptEntry _088C
    ScriptEntry _08A3
    ScriptEntry _08BA
    ScriptEntry _08D4
    ScriptEntry _08EB
    .short 0xFD13

_0032:
    CallIfEq 0x4071, 1, _005F
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _0075
    GoToIfEq 0x4000, 1, _007D
    End

_005F:
    ScrCmd_186 4, 168, 0x34D
    ScrCmd_189 4, 0
    ScrCmd_188 4, 14
    Return

_0075:
    SetVar 0x4020, 97
    End

_007D:
    SetVar 0x4020, 0
    End

_0085:
    LockAll
    ApplyMovement 4, _03AC
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x34B, _00E7
    GoToIfEq 0x8005, 0x34C, _00FF
    GoToIfEq 0x8005, 0x34D, _010F
    GoToIfEq 0x8005, 0x34E, _011F
    GoToIfEq 0x8005, 0x34F, _0137
    GoToIfEq 0x8005, 0x350, _014F
    End

_00E7:
    ApplyMovement 4, _03B8
    ApplyMovement 0xFF, _047C
    WaitMovement
    GoTo _0169

_00FF:
    ApplyMovement 4, _03C4
    WaitMovement
    GoTo _0169

_010F:
    ApplyMovement 4, _03D4
    WaitMovement
    GoTo _0169

_011F:
    ApplyMovement 4, _03DC
    ApplyMovement 0xFF, _04A0
    WaitMovement
    GoTo _0169

_0137:
    ApplyMovement 4, _03E8
    ApplyMovement 0xFF, _04AC
    WaitMovement
    GoTo _0169

_014F:
    ApplyMovement 4, _03F4
    ApplyMovement 0xFF, _04B8
    WaitMovement
    GoTo _0169
    End

_0169:
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0189
    GoToIfEq 0x800C, 1, _0195
    End

_0189:
    BufferCounterpartName 0
    Message 0
    GoTo _01A1

_0195:
    BufferCounterpartName 0
    Message 2
    GoTo _01A1

_01A1:
    CloseMessage
    GoToIfEq 0x8005, 0x34B, _01F3
    GoToIfEq 0x8005, 0x34C, _020B
    GoToIfEq 0x8005, 0x34D, _0223
    GoToIfEq 0x8005, 0x34E, _023B
    GoToIfEq 0x8005, 0x34F, _0253
    GoToIfEq 0x8005, 0x350, _026B
    End

_01F3:
    ApplyMovement 4, _0400
    ApplyMovement 0xFF, _04C4
    WaitMovement
    GoTo _0283

_020B:
    ApplyMovement 4, _040C
    ApplyMovement 0xFF, _04D4
    WaitMovement
    GoTo _0283

_0223:
    ApplyMovement 4, _0418
    ApplyMovement 0xFF, _04E4
    WaitMovement
    GoTo _0283

_023B:
    ApplyMovement 4, _0428
    ApplyMovement 0xFF, _04F8
    WaitMovement
    GoTo _0283

_0253:
    ApplyMovement 4, _043C
    ApplyMovement 0xFF, _0510
    WaitMovement
    GoTo _0283

_026B:
    ApplyMovement 4, _044C
    ApplyMovement 0xFF, _0520
    WaitMovement
    GoTo _0283

_0283:
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _02A3
    GoToIfEq 0x800C, 1, _02AC
    End

_02A3:
    Message 1
    GoTo _02B5

_02AC:
    Message 3
    GoTo _02B5

_02B5:
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag 0x197
    ScrCmd_064 3
    ApplyMovement 3, _0554
    WaitMovement
    ApplyMovement 3, _055C
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message 4
    ApplyMovement 3, _0564
    WaitMovement
    CallCommonScript 0x7FA
    BufferRivalName 0
    BufferPlayerName 1
    Message 5
    CloseMessage
    ApplyMovement 0xFF, _0548
    ApplyMovement 4, _0470
    ApplyMovement 3, _056C
    WaitMovement
    ScrCmd_065 3
    CallCommonScript 0x7FB
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0344
    GoToIfEq 0x800C, 1, _0352
    End

_0344:
    BufferCounterpartName 0
    Message 6
    GoTo _035E
    End

_0352:
    BufferCounterpartName 0
    Message 7
    GoTo _035E

_035E:
    CloseMessage
    ApplyMovement 4, _045C
    ApplyMovement 0xFF, _0530
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 4
    SetVar 0x4071, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_SANDGEM_TOWN_POKEMON_RESEARCH_LAB, 0, 7, 15, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_03AC:
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03B8:
    MoveAction_00E 4
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_00E
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_00E 3
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_00E 4
    MoveAction_001
    EndMovement

    .balign 4, 0
_03E8:
    MoveAction_00E 4
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_00E 4
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_00F 2
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_00C 2
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_00C 2
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_045C:
    MoveAction_00C
    MoveAction_00E
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_03F 3
    MoveAction_001
    EndMovement

    .byte 63
    .byte 0
    .byte 3
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 4
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04A0:
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00D
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_00F 2
    MoveAction_00F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_04F8:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0510:
    MoveAction_00C 3
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_00C 4
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_03F
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0548:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0554:
    MoveAction_011
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_025 2
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_056C:
    MoveAction_013 2
    MoveAction_011
    MoveAction_013 7
    EndMovement

_057C:
    LockAll
    ScrCmd_168 5, 26, 8, 10, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ClearFlag 0x2C4
    ScrCmd_064 14
    ApplyMovement 14, _0798
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    ApplyMovement 0xFF, _07AC
    ApplyMovement 4, _07F8
    WaitMovement
    Message 9
    SetVar 0x8004, 0x162
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Message 10
    CloseMessage
    ApplyMovement 14, _07A0
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 14
    WaitTime 30, 0x800C
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0610
    GoToIfEq 0x800C, 1, _061D
    End

_0610:
    Message 11
    CloseMessage
    GoTo _062A
    End

_061D:
    Message 12
    CloseMessage
    GoTo _062A
    End

_062A:
    ApplyMovement 0xFF, _07B8
    ApplyMovement 4, _0800
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _065C
    GoToIfEq 0x800C, 1, _066B
    End

_065C:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 13
    GoTo _067A

_066B:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 17
    GoTo _067A

_067A:
    CloseMessage
    CallCommonScript 0x800
    ApplyMovement 4, _0808
    ApplyMovement 0xFF, _07C0
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _06B2
    GoToIfEq 0x800C, 1, _06C1
    End

_06B2:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 14
    GoTo _06D0

_06C1:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message 18
    GoTo _06D0

_06D0:
    CloseMessage
    ApplyMovement 4, _0814
    ApplyMovement 0xFF, _07D0
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0704
    GoToIfEq 0x800C, 1, _0710
    End

_0704:
    BufferPlayerName 0
    Message 15
    GoTo _071C

_0710:
    BufferPlayerName 0
    Message 19
    GoTo _071C

_071C:
    CloseMessage
    ApplyMovement 4, _0820
    ApplyMovement 0xFF, _07DC
    WaitMovement
    ApplyMovement 4, _0828
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _075A
    GoToIfEq 0x800C, 1, _0766
    End

_075A:
    BufferPlayerName 1
    Message 16
    GoTo _0772

_0766:
    BufferPlayerName 1
    Message 20
    GoTo _0772

_0772:
    CloseMessage
    ApplyMovement 4, _0830
    ApplyMovement 0xFF, _07E4
    WaitMovement
    CallCommonScript 0x801
    ScrCmd_065 4
    SetVar 0x4071, 2
    ReleaseAll
    End

    .balign 4, 0
_0798:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07A0:
    MoveAction_020
    MoveAction_045
    EndMovement

    .balign 4, 0
_07AC:
    MoveAction_04B
    MoveAction_020
    EndMovement

    .balign 4, 0
_07B8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_00D
    MoveAction_00F 9
    MoveAction_020
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_00F 10
    MoveAction_020
    EndMovement

    .balign 4, 0
_07DC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_07E4:
    MoveAction_03F
    MoveAction_021
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0808:
    MoveAction_00F 10
    MoveAction_020
    EndMovement

    .balign 4, 0
_0814:
    MoveAction_00F 10
    MoveAction_020
    EndMovement

    .balign 4, 0
_0820:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0828:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00C 10
    EndMovement

_0840:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0853:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0866:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0879:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_088C:
    ScrCmd_036 25, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_08A3:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_08BA:
    BufferCounterpartName 0
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_08D4:
    ScrCmd_036 28, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_08EB:
    ScrCmd_036 29, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0

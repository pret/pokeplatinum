#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _01D8
    ScriptEntry _0390
    ScriptEntry _0511
    .short 0xFD13

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
_0062:
    Message 4
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    GoToIfEq 0x800C, 0, _00A2
    Call _00FE
    Call _0122
    Call _0146
    Call _016A
    Call _018E
    Call _01B2
_00A2:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    GoToIfEq 0x8004, 1, _0119
    GoToIfEq 0x8004, 2, _013D
    GoToIfEq 0x8004, 3, _0161
    GoToIfEq 0x8004, 4, _0185
    GoToIfEq 0x8004, 5, _01A9
    GoToIfEq 0x8004, 6, _01CD
    CloseMessage
    ReleaseAll
    End

_00FE:
    ScrCmd_134 0, 0x800C
    GoToIfEq 0x800C, 0, _01D6
    ScrCmd_29D 233, 1
    Return

_0119:
    Message 11
    GoTo _0062

_0122:
    ScrCmd_134 11, 0x800C
    GoToIfEq 0x800C, 0, _01D6
    ScrCmd_29D 237, 2
    Return

_013D:
    Message 12
    GoTo _0062

_0146:
    ScrCmd_134 23, 0x800C
    GoToIfEq 0x800C, 0, _01D6
    ScrCmd_29D 234, 3
    Return

_0161:
    Message 14
    GoTo _0062

_016A:
    ScrCmd_134 20, 0x800C
    GoToIfEq 0x800C, 0, _01D6
    ScrCmd_29D 250, 4
    Return

_0185:
    Message 15
    GoTo _0062

_018E:
    ScrCmd_134 24, 0x800C
    GoToIfEq 0x800C, 0, _01D6
    ScrCmd_29D 249, 5
    Return

_01A9:
    Message 13
    GoTo _0062

_01B2:
    ScrCmd_134 16, 0x800C
    GoToIfEq 0x800C, 0, _01D6
    ScrCmd_29D 254, 6
    Return

_01CD:
    Message 16
    GoTo _0062

_01D6:
    Return

_01D8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
_01E3:
    Message 6
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    GoToIfEq 0x800C, 0, _0229
    Call _0292
    Call _02B6
    Call _02DA
    Call _02FE
    Call _0322
    Call _0346
    Call _036A
_0229:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    GoToIfEq 0x8004, 1, _02AD
    GoToIfEq 0x8004, 2, _02D1
    GoToIfEq 0x8004, 3, _02F5
    GoToIfEq 0x8004, 4, _0319
    GoToIfEq 0x8004, 5, _033D
    GoToIfEq 0x8004, 6, _0361
    GoToIfEq 0x8004, 7, _0385
    CloseMessage
    ReleaseAll
    End

_0292:
    ScrCmd_134 1, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 235, 1
    Return

_02AD:
    Message 17
    GoTo _01E3

_02B6:
    ScrCmd_134 2, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 236, 2
    Return

_02D1:
    Message 24
    GoTo _01E3

_02DA:
    ScrCmd_134 5, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 240, 3
    Return

_02F5:
    Message 19
    GoTo _01E3

_02FE:
    ScrCmd_134 8, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 244, 4
    Return

_0319:
    Message 20
    GoTo _01E3

_0322:
    ScrCmd_134 22, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 248, 5
    Return

_033D:
    Message 21
    GoTo _01E3

_0346:
    ScrCmd_134 9, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 0x101, 6
    Return

_0361:
    Message 22
    GoTo _01E3

_036A:
    ScrCmd_134 7, 0x800C
    GoToIfEq 0x800C, 0, _038E
    ScrCmd_29D 252, 7
    Return

_0385:
    Message 23
    GoTo _01E3

_038E:
    Return

_0390:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
_039B:
    Message 8
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    GoToIfEq 0x800C, 0, _03DB
    Call _0437
    Call _045B
    Call _047F
    Call _04A3
    Call _04C7
    Call _04EB
_03DB:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    GoToIfEq 0x8004, 1, _0452
    GoToIfEq 0x8004, 2, _0476
    GoToIfEq 0x8004, 3, _049A
    GoToIfEq 0x8004, 4, _04BE
    GoToIfEq 0x8004, 5, _04E2
    GoToIfEq 0x8004, 6, _0506
    CloseMessage
    ReleaseAll
    End

_0437:
    ScrCmd_134 4, 0x800C
    GoToIfEq 0x800C, 0, _050F
    ScrCmd_29D 239, 1
    Return

_0452:
    Message 18
    GoTo _039B

_045B:
    ScrCmd_134 17, 0x800C
    GoToIfEq 0x800C, 0, _050F
    ScrCmd_29D 238, 2
    Return

_0476:
    Message 25
    GoTo _039B

_047F:
    ScrCmd_134 14, 0x800C
    GoToIfEq 0x800C, 0, _050F
    ScrCmd_29D 246, 3
    Return

_049A:
    Message 29
    GoTo _039B

_04A3:
    ScrCmd_134 18, 0x800C
    GoToIfEq 0x800C, 0, _050F
    ScrCmd_29D 245, 4
    Return

_04BE:
    Message 28
    GoTo _039B

_04C7:
    ScrCmd_134 21, 0x800C
    GoToIfEq 0x800C, 0, _050F
    ScrCmd_29D 253, 5
    Return

_04E2:
    Message 26
    GoTo _039B

_04EB:
    ScrCmd_134 12, 0x800C
    GoToIfEq 0x800C, 0, _050F
    ScrCmd_29D 251, 6
    Return

_0506:
    Message 27
    GoTo _039B

_050F:
    Return

_0511:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
_051C:
    Message 10
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    GoToIfEq 0x800C, 0, _055C
    Call _05B8
    Call _05DC
    Call _0600
    Call _0624
    Call _0648
    Call _066C
_055C:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    GoToIfEq 0x8004, 1, _05D3
    GoToIfEq 0x8004, 2, _05F7
    GoToIfEq 0x8004, 3, _061B
    GoToIfEq 0x8004, 4, _063F
    GoToIfEq 0x8004, 5, _0663
    GoToIfEq 0x8004, 6, _0687
    CloseMessage
    ReleaseAll
    End

_05B8:
    ScrCmd_134 3, 0x800C
    GoToIfEq 0x800C, 0, _0690
    ScrCmd_29D 243, 1
    Return

_05D3:
    Message 30
    GoTo _051C

_05DC:
    ScrCmd_134 10, 0x800C
    GoToIfEq 0x800C, 0, _0690
    ScrCmd_29D 242, 2
    Return

_05F7:
    Message 32
    GoTo _051C

_0600:
    ScrCmd_134 19, 0x800C
    GoToIfEq 0x800C, 0, _0690
    ScrCmd_29D 0x100, 3
    Return

_061B:
    Message 33
    GoTo _051C

_0624:
    ScrCmd_134 13, 0x800C
    GoToIfEq 0x800C, 0, _0690
    ScrCmd_29D 0xFF, 4
    Return

_063F:
    Message 34
    GoTo _051C

_0648:
    ScrCmd_134 15, 0x800C
    GoToIfEq 0x800C, 0, _0690
    ScrCmd_29D 247, 5
    Return

_0663:
    Message 35
    GoTo _051C

_066C:
    ScrCmd_134 6, 0x800C
    GoToIfEq 0x800C, 0, _0690
    ScrCmd_29D 241, 6
    Return

_0687:
    Message 31
    GoTo _051C

_0690:
    Return

    .byte 0
    .byte 0

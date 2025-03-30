#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0552.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender 0x8004
    GoToIfEq 0x40A6, 3, _0027
    GoTo _006C
    End

_0027:
    GoToIfUnset FLAG_UNK_0x09BE, _003A
    GoTo _006C
    End

_003A:
    CallIfEq 0x8004, GENDER_MALE, _005C
    CallIfEq 0x8004, GENDER_FEMALE, _0064
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    BufferPlayerName 0
    Message 28
    Return

_0064:
    BufferPlayerName 0
    Message 29
    Return

_006C:
    ScrCmd_282 0x800C
    GoToIfEq 0x800C, 1, _0133
    ScrCmd_1E8 0x800C
    GoToIfEq 0x800C, 1, _00B2
    GoToIfUnset FLAG_UNK_0x0145, _0332
    Call _04A4
    GoToIfEq 0x800C, 0, _037C
    GoTo _0357

_00B2:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 0, _030D
    GoToIfUnset FLAG_UNK_0x00F0, _02E8
    GoToIfUnset FLAG_UNK_0x0131, _02C3
    ScrCmd_1E9 0x800C
    GoToIfEq 0x800C, 1, _0158
    GoTo _00F3
    End

_00F3:
    GoToIfUnset FLAG_UNK_0x0146, _01F4
    GetRandom 0x800C, 3
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01CB
    GoToIfEq 0x8008, 1, _01A2
    GoToIfEq 0x8008, 2, _017D
    End

_0133:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _03A9
    CallIfEq 0x8004, 1, _03D6
    GoTo _03A1
    End

_0158:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0467
    CallIfEq 0x8004, 1, _046C
    GoTo _03A1
    End

_017D:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _045D
    CallIfEq 0x8004, 1, _0462
    GoTo _03A1
    End

_01A2:
    SetFlag FLAG_UNK_0x0148
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0453
    CallIfEq 0x8004, 1, _0458
    GoTo _03A1
    End

_01CB:
    SetFlag FLAG_UNK_0x0147
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0449
    CallIfEq 0x8004, 1, _044E
    GoTo _03A1
    End

_01F4:
    SetFlag FLAG_UNK_0x0146
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _043F
    CallIfEq 0x8004, 1, _0444
    CloseMessage
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 0, _0251
    GoToIfEq 0x800C, 1, _026B
    GoToIfEq 0x800C, 2, _0285
    GoToIfEq 0x800C, 3, _029F
    End

_0251:
    ApplyMovement 4, _0474
    ApplyMovement LOCALID_PLAYER, _0488
    WaitMovement
    GoTo _02B1
    End

_026B:
    ApplyMovement 4, _0474
    ApplyMovement LOCALID_PLAYER, _0488
    WaitMovement
    GoTo _02B1
    End

_0285:
    ApplyMovement 4, _047C
    ApplyMovement LOCALID_PLAYER, _0494
    WaitMovement
    GoTo _02B1
    End

_029F:
    ApplyMovement 4, _0474
    WaitMovement
    GoTo _02B1
    End

_02B1:
    RemoveObject 4
    ClearFlag FLAG_UNK_0x0188
    SetVar 0x4087, 2
    ReleaseAll
    End

_02C3:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0435
    CallIfEq 0x8004, 1, _043A
    GoTo _03A1
    End

_02E8:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _042B
    CallIfEq 0x8004, 1, _0430
    GoTo _03A1
    End

_030D:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0421
    CallIfEq 0x8004, 1, _0426
    GoTo _03A1
    End

_0332:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0417
    CallIfEq 0x8004, 1, _041C
    GoTo _03A1
    End

_0357:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _040D
    CallIfEq 0x8004, 1, _0412
    GoTo _03A1
    End

_037C:
    BufferPlayerName 0
    CallIfEq 0x8004, 0, _0403
    CallIfEq 0x8004, 1, _0408
    GoTo _03A1
    End

_03A1:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03A9:
    Message 10
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _03CC
    GoToIfEq 0x800C, MENU_NO, _03D1
    End

_03CC:
    Message 11
    Return

_03D1:
    Message 12
    Return

_03D6:
    Message 24
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _03F9
    GoToIfEq 0x800C, MENU_NO, _03FE
    End

_03F9:
    Message 25
    Return

_03FE:
    Message 26
    Return

_0403:
    Message 13
    Return

_0408:
    Message 27
    Return

_040D:
    Message 0
    Return

_0412:
    Message 14
    Return

_0417:
    Message 1
    Return

_041C:
    Message 15
    Return

_0421:
    Message 2
    Return

_0426:
    Message 16
    Return

_042B:
    Message 3
    Return

_0430:
    Message 17
    Return

_0435:
    Message 4
    Return

_043A:
    Message 18
    Return

_043F:
    Message 5
    Return

_0444:
    Message 19
    Return

_0449:
    Message 6
    Return

_044E:
    Message 20
    Return

_0453:
    Message 7
    Return

_0458:
    Message 21
    Return

_045D:
    Message 8
    Return

_0462:
    Message 22
    Return

_0467:
    Message 9
    Return

_046C:
    Message 23
    Return

    .balign 4, 0
_0474:
    MoveAction_015 10
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_012
    MoveAction_015 10
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_0494:
    MoveAction_063
    MoveAction_032
    MoveAction_035
    EndMovement

_04A4:
    GoToIfEq 0x40C4, 1, _04C6
    GoToIfEq 0x40C5, 1, _04C6
    SetVar 0x800C, 1
    Return

_04C6:
    SetVar 0x800C, 0
    Return

    .byte 0
    .byte 0

#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0221.h"

    .data

    ScriptEntry _0046
    ScriptEntry _0108
    ScriptEntry _051E
    ScriptEntry _0544
    ScriptEntry _0694
    ScriptEntry _0696
    ScriptEntry _0698
    ScriptEntry _069A
    ScriptEntry _069C
    ScriptEntry _069E
    ScriptEntry _06A0
    ScriptEntry _06B4
    ScriptEntry _005B
    ScriptEntry _0075
    ScriptEntry _005B
    ScriptEntry _005B
    ScriptEntry _0763
    ScriptEntryEnd

_0046:
    CallIfNe 0x40D5, 0, _0055
    End

_0055:
    ScrCmd_1B2 0xFF
    Return

_005B:
    SetVar 0x4000, 13
    SetVar 0x4001, 5
    SetVar 0x4002, 2
    GoTo _008F
    End

_0075:
    SetVar 0x4000, 8
    SetVar 0x4001, 5
    SetVar 0x4002, 2
    GoTo _008F
    End

_008F:
    LockAll
    ScrCmd_168 0, 0, 0x4000, 0x4002, 77
    Call _050B
    ScrCmd_1B1 0xFF
    ApplyMovement LOCALID_PLAYER, _00F0
    WaitMovement
    Call _0513
    ApplyMovement LOCALID_PLAYER, _00F8
    WaitMovement
    ScrCmd_168 0, 0, 0x4000, 0x4001, 77
    Call _050B
    ApplyMovement LOCALID_PLAYER, _0100
    WaitMovement
    Call _0513
    ClearFlag 0x966
    SetVar 0x40D5, 0
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    MoveAction_013
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_013 2
    EndMovement

_0108:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0755
    Message 0
    GoTo _012C
    End

_012C:
    Message 1
    InitCommonStrings2ListMenuBuilder 1, 1, 1, TRUE, 0x800C
    AddListMenuEntry 163, LIST_MENU_ENTRY_NO_ALT_TEXT, LIST_MENU_BUILDER_HEADER
    AddListMenuEntry 6, LIST_MENU_ENTRY_NO_ALT_TEXT, 0
    AddListMenuEntry 7, LIST_MENU_ENTRY_NO_ALT_TEXT, 1
    AddListMenuEntry 8, LIST_MENU_ENTRY_NO_ALT_TEXT, 2
    AddListMenuEntry 164, LIST_MENU_ENTRY_NO_ALT_TEXT, LIST_MENU_BUILDER_HEADER
    AddListMenuEntry 9, LIST_MENU_ENTRY_NO_ALT_TEXT, 3
    AddListMenuEntry 10, LIST_MENU_ENTRY_NO_ALT_TEXT, 4
    AddListMenuEntry 11, LIST_MENU_ENTRY_NO_ALT_TEXT, 5
    FinishAndShowListMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01DE
    GoToIfEq 0x8008, 1, _01F2
    GoToIfEq 0x8008, 2, _021A
    GoToIfEq 0x8008, 3, _0242
    GoToIfEq 0x8008, 4, _01C8
    GoTo _01D3
    End

_01C8:
    Message 2
    GoTo _012C
    End

_01D3:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01DE:
    SetVar 0x8004, 1
    GoTo _026A

    .byte 22
    .byte 0
    .byte 160
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_01F2:
    SetVar 0x8004, 2
    GetPartyCountHatched 0x800C
    GoToIfLt 0x800C, 2, _020F
    GoTo _026A

_020F:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021A:
    SetVar 0x8004, 3
    GetPartyCountHatched 0x800C
    GoToIfLt 0x800C, 3, _0237
    GoTo _0290

_0237:
    Message 126
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0242:
    SetVar 0x8004, 4
    GetPartyCountHatched 0x800C
    GoToIfLt 0x800C, 3, _025F
    GoTo _0290

_025F:
    Message 125
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026A:
    ScrCmd_239 0x800C
    GoToIfEq 0x800C, 1, _0290
    GoToIfEq 0x800C, 3, _0290
    GoTo _01D3
    End

_0290:
    SetVar 0x8005, 0
    GoTo _02E4

    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 0
    .byte 0
    .byte 22
    .byte 0
    .byte 58
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 1
    .byte 0
    .byte 22
    .byte 0
    .byte 44
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 30
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 3
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 4
    .byte 0
    .byte 22
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_02E4:
    HealParty
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _0305
    GoTo _01D3
    End

_0305:
    CallIfEq 0x8004, 1, _037A
    CallIfEq 0x8004, 2, _037A
    CallIfEq 0x8004, 3, _037A
    CallIfEq 0x8004, 4, _037F
    InitCommonStrings2MenuBuilder 30, 1, 0, TRUE, 0x800C
    SetMenuHorizontalAnchor FIELD_MENU_ANCHOR_RIGHT
    AddMenuEntrySmallStringID 13, 0
    AddMenuEntrySmallStringID 14, 1
    AddMenuEntrySmallStringID 5, 2
    FinishAndShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0384
    GoToIfEq 0x8008, 1, _03F7
    GoTo _01D3
    End

_037A:
    Message 22
    Return

_037F:
    Message 43
    Return

_0384:
    Message 124
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0305
    CloseMessage
    ScrCmd_0F2 0x8004, 0x8005, 0, 0x800C
    GoToIfEq 0x800C, 1, _03D3
    GoToIfEq 0x800C, 3, _03DD
    GoToIfEq 0x800C, 4, _03EA
    GoTo _046A
    End

_03D3:
    ScrCmd_150
    GoTo _0305
    End

_03DD:
    ScrCmd_150
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03EA:
    ScrCmd_150
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03F7:
    Message 124
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0305
    CloseMessage
    ScrCmd_0F3 0x8004, 0x8005, 0, 0x800C
    GoToIfEq 0x800C, 1, _0446
    GoToIfEq 0x800C, 3, _0450
    GoToIfEq 0x800C, 4, _045D
    GoTo _046A
    End

_0446:
    ScrCmd_150
    GoTo _0305
    End

_0450:
    ScrCmd_150
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_045D:
    ScrCmd_150
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_046A:
    SetVar 0x40D5, 1
    SetFlag 0x966
    ScrCmd_02E 52
    WaitABPressTime 45
    ScrCmd_135 96
    CloseMessage
    ScrCmd_168 0, 0, 13, 5, 77
    Call _050B
    ApplyMovement LOCALID_PLAYER, _0524
    WaitMovement
    Call _0513
    ApplyMovement LOCALID_PLAYER, _0530
    WaitMovement
    ScrCmd_168 0, 0, 13, 2, 77
    Call _050B
    ApplyMovement LOCALID_PLAYER, _0538
    WaitMovement
    Call _0513
    GoToIfEq 0x8004, 4, _04F3
    ScrCmd_207 0x800C
    AddVar 0x800C, 7
    ScrCmd_203 0x14C, 0, 0x800C, 11, 0
    End

_04F3:
    ScrCmd_207 0x800C
    AddVar 0x800C, 6
    ScrCmd_203 0x14D, 0, 0x800C, 11, 0
    End

_050B:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_0513:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_051E:
    StartLinkBattle
    ScrCmd_151
    End

    .balign 4, 0
_0524:
    MoveAction_015
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0538:
    MoveAction_012
    MoveAction_069
    EndMovement

_0544:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0755
    GoTo _0565
    End

_0565:
    Message 57
    InitCommonStrings2MenuBuilder 1, 1, 0, TRUE, 0x800C
    AddMenuEntrySmallStringID 41, 0
    AddMenuEntrySmallStringID 42, 1
    AddMenuEntrySmallStringID 10, 2
    FinishAndShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _05CF
    GoToIfEq 0x8008, 1, _01D3
    GoToIfEq 0x8008, 2, _05B3
    GoTo _01D3
    End

_05B3:
    Message 58
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _05CF
    GoTo _01D3
    End

_05CF:
    SetVar 0x8004, 9
    HealParty
    Message 124
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _01D3
    ScrCmd_31D 0x800C
    GoToIfEq 0x800C, 0xFF, _068E
    SetVar 0x40D5, 2
    SetFlag 0x966
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _062D
    SetVar 0x40D5, 0
    ClearFlag 0x966
    GoTo _01D3

_062D:
    SetVar 0x40D5, 2
    SetFlag 0x966
    Message 63
    CloseMessage
    ScrCmd_168 0, 0, 8, 5, 77
    Call _050B
    ApplyMovement LOCALID_PLAYER, _0524
    WaitMovement
    Call _0513
    ApplyMovement LOCALID_PLAYER, _0530
    WaitMovement
    ScrCmd_168 0, 0, 8, 2, 77
    Call _050B
    ApplyMovement LOCALID_PLAYER, _0538
    WaitMovement
    Call _0513
    ReleaseAll
    ScrCmd_153
    End

_068E:
    CallCommonScript 0x809
    End

_0694:
    End

_0696:
    End

_0698:
    End

_069A:
    End

_069C:
    End

_069E:
    End

_06A0:
    ScrCmd_1F8
    ScrCmd_0A3
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_06B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetFlag 170
    Message 102
    GoTo _06CB
    End

_06CB:
    Message 103
    InitCommonStrings2MenuBuilder 1, 1, 0, TRUE, 0x800C
    AddMenuEntrySmallStringID 41, 0
    AddMenuEntrySmallStringID 42, 1
    AddMenuEntrySmallStringID 10, 2
    FinishAndShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0724
    GoToIfEq 0x8008, 1, _074A
    GoToIfEq 0x8008, 2, _0719
    GoTo _074A
    End

_0719:
    Message 105
    GoTo _06CB
    End

_0724:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_12B
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoTo _074A
    End

_074A:
    Message 104
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0755:
    Call _076D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0763:
    Call _076D
    ReturnCommonScript
    End

_076D:
    Message 127
    Return

    .byte 0
    .byte 0

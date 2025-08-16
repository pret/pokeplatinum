#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0221.h"


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
    CallIfNe VAR_UNK_0x40D5, 0, _0055
    End

_0055:
    ScrCmd_1B2 0xFF
    Return

_005B:
    SetVar VAR_MAP_LOCAL_0, 13
    SetVar VAR_MAP_LOCAL_1, 5
    SetVar VAR_MAP_LOCAL_2, 2
    GoTo _008F
    End

_0075:
    SetVar VAR_MAP_LOCAL_0, 8
    SetVar VAR_MAP_LOCAL_1, 5
    SetVar VAR_MAP_LOCAL_2, 2
    GoTo _008F
    End

_008F:
    LockAll
    ScrCmd_168 0, 0, VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_2, 77
    Call _050B
    ScrCmd_1B1 0xFF
    ApplyMovement LOCALID_PLAYER, _00F0
    WaitMovement
    Call _0513
    ApplyMovement LOCALID_PLAYER, _00F8
    WaitMovement
    ScrCmd_168 0, 0, VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, 77
    Call _050B
    ApplyMovement LOCALID_PLAYER, _0100
    WaitMovement
    Call _0513
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 0
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_00F8:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0100:
    WalkNormalSouth 2
    EndMovement

_0108:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0755
    Message 0
    GoTo _012C
    End

_012C:
    Message 1
    InitGlobalTextListMenu 1, 1, 1, VAR_RESULT
    AddListMenuEntry 163, LIST_MENU_BUILDER_HEADER
    AddListMenuEntry 6, 0
    AddListMenuEntry 7, 1
    AddListMenuEntry 8, 2
    AddListMenuEntry 164, LIST_MENU_BUILDER_HEADER
    AddListMenuEntry 9, 3
    AddListMenuEntry 10, 4
    AddListMenuEntry 11, 5
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01DE
    GoToIfEq VAR_0x8008, 1, _01F2
    GoToIfEq VAR_0x8008, 2, _021A
    GoToIfEq VAR_0x8008, 3, _0242
    GoToIfEq VAR_0x8008, 4, _01C8
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
    SetVar VAR_0x8004, 1
    GoTo _026A

Unk213_Unused:
    GoTo _0290
    End

_01F2:
    SetVar VAR_0x8004, 2
    GetPartyCountHatched VAR_RESULT
    GoToIfLt VAR_RESULT, 2, _020F
    GoTo _026A

_020F:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021A:
    SetVar VAR_0x8004, 3
    GetPartyCountHatched VAR_RESULT
    GoToIfLt VAR_RESULT, 3, _0237
    GoTo _0290

_0237:
    Message 126
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0242:
    SetVar VAR_0x8004, 4
    GetPartyCountHatched VAR_RESULT
    GoToIfLt VAR_RESULT, 3, _025F
    GoTo _0290

_025F:
    Message 125
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026A:
    ScrCmd_239 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0290
    GoToIfEq VAR_RESULT, 3, _0290
    GoTo _01D3
    End

_0290:
    SetVar VAR_0x8005, 0
    GoTo _02E4
    End

Unk213_Unused2:
    SetVar VAR_0x8005, 0
    GoTo _02E4
    End

Unk213_Unused3:
    SetVar VAR_0x8005, 1
    GoTo _02E4
    End

Unk213_Unused4:
    SetVar VAR_0x8005, 2
    GoTo _02E4
    End

Unk213_Unused5:
    SetVar VAR_0x8005, 3
    GoTo _02E4
    End

Unk213_Unused6:
    SetVar VAR_0x8005, 4
    GoTo _02E4
    End

_02E4:
    HealParty
    CallCommonScript CommonScript_Unk06
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, _0305
    GoTo _01D3
    End

_0305:
    CallIfEq VAR_0x8004, 1, _037A
    CallIfEq VAR_0x8004, 2, _037A
    CallIfEq VAR_0x8004, 3, _037A
    CallIfEq VAR_0x8004, 4, _037F
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0384
    GoToIfEq VAR_0x8008, 1, _03F7
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0305
    CloseMessage
    ScrCmd_0F2 VAR_0x8004, VAR_0x8005, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _03D3
    GoToIfEq VAR_RESULT, 3, _03DD
    GoToIfEq VAR_RESULT, 4, _03EA
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0305
    CloseMessage
    ScrCmd_0F3 VAR_0x8004, VAR_0x8005, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0446
    GoToIfEq VAR_RESULT, 3, _0450
    GoToIfEq VAR_RESULT, 4, _045D
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
    SetVar VAR_UNK_0x40D5, 1
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
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
    GoToIfEq VAR_0x8004, 4, _04F3
    ScrCmd_207 VAR_RESULT
    AddVar VAR_RESULT, 7
    ScrCmd_203 0x14C, 0, VAR_RESULT, 11, 0
    End

_04F3:
    ScrCmd_207 VAR_RESULT
    AddVar VAR_RESULT, 6
    ScrCmd_203 0x14D, 0, VAR_RESULT, 11, 0
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
    WalkNormalEast
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0530:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0538:
    WalkNormalNorth
    SetInvisible
    EndMovement

_0544:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0755
    GoTo _0565
    End

_0565:
    Message 57
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 41, 0
    AddMenuEntryImm 42, 1
    AddMenuEntryImm 10, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _05CF
    GoToIfEq VAR_0x8008, 1, _01D3
    GoToIfEq VAR_0x8008, 2, _05B3
    GoTo _01D3
    End

_05B3:
    Message 58
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _05CF
    GoTo _01D3
    End

_05CF:
    SetVar VAR_0x8004, 9
    HealParty
    Message 124
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _01D3
    ScrCmd_31D VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _068E
    SetVar VAR_UNK_0x40D5, 2
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    CallCommonScript CommonScript_Unk06
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, _062D
    SetVar VAR_UNK_0x40D5, 0
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    GoTo _01D3

_062D:
    SetVar VAR_UNK_0x40D5, 2
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
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
    CallCommonScript CommonScript_Unk39
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
    SetFlag FLAG_UNK_0x00AA
    Message 102
    GoTo _06CB
    End

_06CB:
    Message 103
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 41, 0
    AddMenuEntryImm 42, 1
    AddMenuEntryImm 10, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0724
    GoToIfEq VAR_0x8008, 1, _074A
    GoToIfEq VAR_0x8008, 2, _0719
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

    .balign 4, 0

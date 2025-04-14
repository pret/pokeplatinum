#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0547.h"
#include "constants/daycare.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0124
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_16D
    GetDaycareState VAR_0x800C
    GoToIfEq VAR_0x800C, DAYCARE_EGG_WAITING, _004A
    GoToIfEq VAR_0x800C, DAYCARE_ONE_MON, _00BE
    GoToIfEq VAR_0x800C, DAYCARE_TWO_MONS, _00CB
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_004A:
    Message 1
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0083
    Message 10
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0083
    Message 3
    WaitABXPadPress
    CloseMessage
    ClearFlag FLAG_UNK_0x0073
    ResetDaycarePersonalityAndStepCounter
    ReleaseAll
    End

_0083:
    GetPartyCount VAR_0x800C
    GoToIfNe VAR_0x800C, 6, _009F
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009F:
    BufferPlayerName 0
    Message 5
    PlaySound SEQ_FANFA4
    WaitSound
    WaitABPress
    Message 6
    WaitABXPadPress
    CloseMessage
    GiveEggFromDaycare
    ClearFlag FLAG_UNK_0x0073
    ReleaseAll
    End

_00BE:
    ScrCmd_16D
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CB:
    ScrCmd_16D
    Message 9
    GetDaycareCompatibilityLevel VAR_0x800C
    CallIfEq VAR_0x800C, 0, _0110
    CallIfEq VAR_0x800C, 1, _0115
    CallIfEq VAR_0x800C, 2, _011A
    CallIfEq VAR_0x800C, 3, _011F
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0110:
    Message 11
    Return

_0115:
    Message 12
    Return

_011A:
    Message 13
    Return

_011F:
    Message 14
    Return

_0124:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    GetDaycareState VAR_0x800C
    GoToIfEq VAR_0x800C, DAYCARE_EGG_WAITING, _02E2
    GoToIfEq VAR_0x800C, DAYCARE_ONE_MON, _0309
    GoToIfEq VAR_0x800C, DAYCARE_TWO_MONS, _04A0
    Message 15
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _017E
    Message 20
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_017E:
    GetPartyCountHatched VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _02BB
    ScrCmd_19C VAR_0x800C
    GoToIfEq VAR_0x800C, 2, _02D5
    Message 16
    CloseMessage
    HideMoney
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetVar VAR_0x800C, 0
_01B9:
    ScrCmd_290 VAR_0x800C
    ScrCmd_291 VAR_0x8000, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _01DE
    ScrCmd_196 VAR_0x8000
    ScrCmd_197 VAR_0x800C
    GoTo _01B9

_01DE:
    ReturnToField
    ShowMoney 20, 2
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8000, 0xFF, _0292
    ScrCmd_31E VAR_0x8000, VAR_0x800C
    GoToIfEq VAR_0x800C, 0xFF, _04EF
    GetPartyMonSpecies VAR_0x8000, VAR_0x800C
    GoToIfEq VAR_0x800C, SPECIES_NONE, _0285
    CountAliveMonsExcept VAR_0x800C, VAR_0x8000
    GoToIfEq VAR_0x800C, 0, _02C8
    ScrCmd_1AF 0, VAR_0x8000, VAR_0x8001
    StorePartyMonIntoDaycare VAR_0x8000
    SetFlag FLAG_UNK_0x00FE
    GetDaycareState VAR_0x800C
    GoToIfEq VAR_0x800C, DAYCARE_ONE_MON, _025F
    GoTo _0270

_025F:
    PlayCry VAR_0x8001
    Message 17
    WaitCry
    GoTo _029F

_0270:
    PlayCry VAR_0x8001
    Message 36
    WaitABXPadPress
    CloseMessage
    WaitCry
    HideMoney
    ReleaseAll
    End

_0285:
    Message 35
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0292:
    Message 23
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_029F:
    Message 18
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _017E
    GoTo _0292
    End

_02BB:
    Message 31
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_02C8:
    Message 33
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_02D5:
    Message 34
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_02E2:
    Message 19
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_02EF:
    Message 25
    Return

_02F4:
    BufferDaycareGainedLevelsBySlot VAR_0x800C, VAR_0x8000
    CallIfNe VAR_0x800C, 0, _02EF
    Return

_0309:
    Message 24
    SetVar VAR_0x8000, 0
    Call _02F4
    Message 18
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _017E
    Message 32
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0346
    GoTo _0292

_0346:
    GetPartyCount VAR_0x800C
    GoToIfEq VAR_0x800C, 6, _045E
    GetDaycareState VAR_0x800C
    SetVar VAR_0x8001, 0
    GoToIfEq VAR_0x800C, DAYCARE_ONE_MON, _03BE
    InitGlobalTextMenu 1, 1, 0, VAR_0x8001
    ScrCmd_1BC 0, 1, 2, 0
    AddMenuEntryImm 134, 0
    ScrCmd_1BC 0, 1, 2, 1
    AddMenuEntryImm 135, 1
    AddMenuEntryImm 136, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 0, _03BE
    GoToIfEq VAR_0x8008, 1, _03BE
    GoTo _0292

_03BE:
    BufferDaycarePriceBySlot VAR_0x8004, VAR_0x8001
    Message 28
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _03DE
    GoTo _0292

_03DE:
    CheckMoney2 VAR_0x800C, VAR_0x8004
    GoToIfEq VAR_0x800C, 1, _03FE
    Message 21
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_03FE:
    ApplyMovement 0, _046C
    WaitMovement
    MoveMonToPartyFromDaycareSlot VAR_0x8002, VAR_0x8001
    RemoveMoney2 VAR_0x8004
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    Message 29
    PlayCry VAR_0x8002
    BufferPlayerName 1
    Message 30
    WaitCry
    GetDaycareState VAR_0x800C
    GoToIfEq VAR_0x800C, DAYCARE_ONE_MON, _0444
    GoTo _0292

_0444:
    Message 22
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0346
    GoTo _0292

_045E:
    Message 26
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

    .balign 4, 0
_046C:
    MoveAction_062 3
    MoveAction_002
    MoveAction_062 3
    MoveAction_003
    MoveAction_062 3
    MoveAction_000
    MoveAction_012 2
    MoveAction_069
    MoveAction_063 3
    MoveAction_001
    MoveAction_070
    MoveAction_013 2
    EndMovement

_04A0:
    Message 24
    SetVar VAR_0x8000, 0
    Call _02F4
    SetVar VAR_0x8000, 1
    Call _02F4
    Message 32
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0346
    Message 23
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 44
    .byte 0
    .byte 37
    .byte 172
    .byte 1
    .byte 52
    .byte 0
    .byte 115
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_04EF:
    HideMoney
    CallCommonScript 0x809
    End

    .byte 0

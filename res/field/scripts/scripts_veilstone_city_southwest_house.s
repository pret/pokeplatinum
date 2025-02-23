#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_southwest_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0101
    ScriptEntry _0114
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0xAAC, _00D5
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _00EB
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x4000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x4000, 0xFF, _00EB
    ScrCmd_198 0x4000, 0x800C
    GoToIfEq 0x800C, 0, _00E0
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlayFanfare SEQ_SE_DP_FW367
    WaitFanfare SEQ_SE_DP_FW367
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPartyMonNickname 0, 0x4000
    Message 4
    SetFlag 0xAAC
    ScrCmd_1BA 3, 0x4000
    ScrCmd_26C 0x8004
    GoToIfEq 0x8004, -1, _00F6
    Message 7
    SetVar 0x8005, 1
    CallCommonScript 0x7FF
    GoTo _00F6

_00D5:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E0:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EB:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F6:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0101:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message 10
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0

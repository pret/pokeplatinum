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
    GoToIfSet FLAG_UNK_0x0AAC, _00D5
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _00EB
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x4000
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x4000, 0xFF, _00EB
    GetPartyMonSpecies VAR_0x4000, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, _00E0
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlayFanfare SEQ_SE_DP_FW367
    WaitFanfare SEQ_SE_DP_FW367
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPartyMonNickname 0, VAR_0x4000
    Message 4
    SetFlag FLAG_UNK_0x0AAC
    ScrCmd_1BA 3, VAR_0x4000
    TryGetRandomMassageGirlAccessory VAR_0x8004
    GoToIfEq VAR_0x8004, -1, _00F6
    Message 7
    SetVar VAR_0x8005, 1
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
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0

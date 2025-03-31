#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_pokemon_fan_club.h"

    .data

    ScriptEntry _0039
    ScriptEntry _0098
    ScriptEntry _0155
    ScriptEntry _0174
    ScriptEntry _0193
    ScriptEntry _001A
    ScriptEntryEnd

_001A:
    ScrCmd_238 4, 0x4000
    GoToIfEq 0x4000, 0, _0033
    ClearFlag FLAG_UNK_0x0210
    End

_0033:
    SetFlag FLAG_UNK_0x0210
    End

_0039:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x008D, _0083
    Message 0
    SetVar 0x8004, ITEM_POFFIN_CASE
    SetVar 0x8005, 1
    CanFitItem 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _008E
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x008D
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0083:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008E:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0098:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty 0x8000
    BufferPartyMonNickname 0, 0x8000
    Message 3
    GetPartyMonFriendship 0x800C, 0x8000
    GoToIfGe 0x800C, 0xFF, _0108
    GoToIfGe 0x800C, 200, _0113
    GoToIfGe 0x800C, 150, _011E
    GoToIfGe 0x800C, 100, _0129
    GoToIfGe 0x800C, 50, _0134
    GoToIfGe 0x800C, 1, _013F
    GoTo _014A
    End

_0108:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0113:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0129:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0134:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013F:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014A:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0155:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PSYDUCK
    Message 11
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0174:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_BUNEARY
    Message 12
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0193:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 13
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0

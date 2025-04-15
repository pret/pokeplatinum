#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0381.h"

    .data

    ScriptEntry _0042
    ScriptEntry _0223
    ScriptEntry _0314
    ScriptEntry _040E
    ScriptEntry _04DD
    ScriptEntry _057D
    ScriptEntry _0679
    ScriptEntry _0730
    ScriptEntry _0103
    ScriptEntry _02CD
    ScriptEntry _03CC
    ScriptEntry _04B9
    ScriptEntry _0551
    ScriptEntry _0704
    ScriptEntry _060C
    ScriptEntry _064C
    ScriptEntryEnd

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_09A VAR_0x800C, 15
    GoToIfEq VAR_0x800C, 6, _008E
    CheckBadgeAcquired BADGE_ID_FOREST, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _008E
    Message 0
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _00AE
    CloseMessage
    GoTo _066D
    End

_008E:
    Message 2
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, 203, _014A
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_00AE:
    ScrCmd_09A VAR_0x800C, 15
    SetVar VAR_0x8004, VAR_0x800C
    BufferPartyMonNickname 0, VAR_0x800C
    Message 1
    CloseMessage
    ScrCmd_0C5 VAR_0x8004
    ScrCmd_29E 0, VAR_0x8005
    WaitTime 7, VAR_0x800C
    RemoveObject VAR_0x800D
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_CUT, VAR_0x8004, 0, 0, 0
_00E8:
    WaitTime 1, VAR_0x800C
    GoToIfEq VAR_0x8005, 0, _00E8
    GoTo _066D
    End

_0103:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 1
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    ScrCmd_29E 0, VAR_0x8005
    WaitTime 7, VAR_0x800C
    RemoveObject VAR_0x800D
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_CUT, VAR_0x8004, 0, 0, 0
_0133:
    WaitTime 1, VAR_0x800C
    GoToIfEq VAR_0x8005, 0, _0133
    ReleaseAll
    End

_014A:
    GoToIfNe VAR_UNK_0x40CD, 0, _0221
    GoToIfNe VAR_UNK_0x40B1, 1, _0221
    Call _017F
    GoToIfEq VAR_0x800C, 0, _0221
    SetVar VAR_UNK_0x40CD, 1
    Return

_017F:
    SetVar VAR_0x800C, 0
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 73, _01CE
    GoToIfEq VAR_0x8004, 74, _01DD
    GoToIfEq VAR_0x8004, 75, _01EC
    GoToIfEq VAR_0x8004, 76, _01FB
    GoToIfEq VAR_0x8004, 77, _020A
    Return

_01CE:
    GoToIfEq VAR_0x8005, 33, _0219
    Return

_01DD:
    GoToIfEq VAR_0x8005, 34, _0219
    Return

_01EC:
    GoToIfEq VAR_0x8005, 34, _0219
    Return

_01FB:
    GoToIfEq VAR_0x8005, 33, _0219
    Return

_020A:
    GoToIfEq VAR_0x8005, 34, _0219
    Return

_0219:
    SetVar VAR_0x800C, 1
    Return

_0221:
    Return

_0223:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_09A VAR_0x800C, 249
    SetVar VAR_0x8004, VAR_0x800C
    GoToIfEq VAR_0x800C, 6, _0275
    CheckBadgeAcquired BADGE_ID_COAL, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0275
    Message 3
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0284
    CloseMessage
    GoTo _066D
    End

_0275:
    Message 4
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_0284:
    BufferPartyMonNickname 0, VAR_0x8004
    Message 5
    CloseMessage
    ScrCmd_0C5 VAR_0x8004
    ScrCmd_29E 1, VAR_0x8005
    WaitTime 10, VAR_0x800C
    RemoveObject VAR_0x800D
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_SMASH, VAR_0x8004, 0, 0, 0
_02B2:
    WaitTime 1, VAR_0x800C
    GoToIfEq VAR_0x8005, 0, _02B2
    GoTo _066D
    End

_02CD:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 5
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    ScrCmd_29E 1, VAR_0x8005
    WaitTime 10, VAR_0x800C
    RemoveObject VAR_0x800D
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_SMASH, VAR_0x8004, 0, 0, 0
_02FD:
    WaitTime 1, VAR_0x800C
    GoToIfEq VAR_0x8005, 0, _02FD
    ReleaseAll
    End

_0314:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Strength 2, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _03BD
    ScrCmd_09A VAR_0x800C, 70
    GoToIfEq VAR_0x800C, 6, _0372
    CheckBadgeAcquired BADGE_ID_MINE, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0372
    Message 6
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0381
    CloseMessage
    GoTo _066D
    End

_0372:
    Message 8
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_0381:
    Strength 1
    ScrCmd_09A VAR_0x800C, 70
    SetVar VAR_0x8004, VAR_0x800C
    BufferPartyMonNickname 0, VAR_0x800C
    Message 10
    ScrCmd_0C5 VAR_0x8004
    CloseMessage
    Message 11
    WaitABXPadPress
    CloseMessage
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_STRENGTH, VAR_0x8004, 0, 0, 0
    GoTo _066D
    End

_03BD:
    Message 9
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_03CC:
    LockAll
    Strength 2, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _03BD
    Strength 1
    BufferPartyMonNickname 0, VAR_0x8000
    Message 10
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    Message 11
    WaitABXPadPress
    CloseMessage
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_STRENGTH, VAR_0x8004, 0, 0, 0
    GoTo _0675

_040E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_09A VAR_0x800C, 0x1AF
    GoToIfEq VAR_0x800C, 6, _0469
    CheckBadgeAcquired BADGE_ID_ICICLE, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0469
    CheckHasPartner VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0478
    Message 18
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0487
    CloseMessage
    GoTo _0671
    End

_0469:
    Message 20
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_0478:
    Message 21
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_0487:
    ScrCmd_09A VAR_0x800C, 0x1AF
    SetVar VAR_0x8004, VAR_0x800C
    BufferPartyMonNickname 0, VAR_0x800C
    Message 19
    CloseMessage
    ScrCmd_0BF VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_CLIMB, VAR_0x8004, 0, 0, 0
    GoTo _0671
    End

_04B9:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 19
    CloseMessage
    ScrCmd_0BF VAR_0x8000
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_CLIMB, VAR_0x8004, 0, 0, 0
    ReleaseAll
    End

_04DD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckHasPartner VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0512
    Message 12
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _051F
    CloseMessage
    GoTo _0671
    End

_0512:
    Message 14
    WaitABXPadPress
    CloseMessage
    GoTo _0671

_051F:
    ScrCmd_09A VAR_0x800C, 57
    SetVar VAR_0x8004, VAR_0x800C
    BufferPartyMonNickname 0, VAR_0x800C
    Message 13
    CloseMessage
    ScrCmd_0C0 VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_SURF, VAR_0x8004, 0, 0, 0
    GoTo _0671
    End

_0551:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 13
    CloseMessage
    ScrCmd_063 0xFF
    ScrCmd_0C0 VAR_0x8000
    ScrCmd_062 0xFF
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_SURF, VAR_0x8004, 0, 0, 0
    ReleaseAll
    End

_057D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_09A VAR_0x800C, 0x1B0
    GoToIfEq VAR_0x800C, 6, _05B4
    Message 15
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _05C3
    CloseMessage
    GoTo _0671
    End

_05B4:
    Message 17
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_05C3:
    ScrCmd_09A VAR_0x800C, 0x1B0
    SetVar VAR_0x8004, VAR_0x800C
    BufferPartyMonNickname 0, VAR_0x800C
    Message 16
    CloseMessage
    ScrCmd_0C5 VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_DEFOG, VAR_0x8004, 0, 0, 0
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, 0x169, _0606
    GoTo _0671
    End

_0606:
    SetFlag FLAG_UNK_0x007B
    Return

_060C:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 16
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    Defog 1
    PlayFanfare SEQ_SE_DP_FBRADE
    ScrCmd_0C4
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_DEFOG, VAR_0x8004, 0, 0, 0
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, 0x169, _0606
    GoTo _0675

_064C:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 26
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    Flash 1
    ScrCmd_0C3
    WaitTime 42, VAR_0x800C
    GoTo _0675

_066D:
    ReleaseAll
    End

_0671:
    ReleaseAll
    End

_0675:
    ReleaseAll
    End

_0679:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_09A VAR_0x800C, 127
    GoToIfEq VAR_0x800C, 6, _06C3
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _06C3
    Message 22
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _06D2
    CloseMessage
    GoTo _0671
    End

_06C3:
    Message 24
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_06D2:
    ScrCmd_09A VAR_0x800C, 127
    SetVar VAR_0x8004, VAR_0x800C
    BufferPartyMonNickname 0, VAR_0x800C
    Message 23
    CloseMessage
    ScrCmd_0C1 VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_WATERFALL, VAR_0x8004, 0, 0, 0
    GoTo _0671
    End

_0704:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message 23
    CloseMessage
    ScrCmd_063 0xFF
    ScrCmd_0C1 VAR_0x8000
    ScrCmd_062 0xFF
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_WATERFALL, VAR_0x8004, 0, 0, 0
    ReleaseAll
    End

_0730:
    End

    .byte 0
    .byte 0

#include "macros/scrcmd.inc"
#include "res/text/bank/poketch_co_3f.h"


    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _01D8
    ScriptEntry _0390
    ScriptEntry _0511
    ScriptEntryEnd

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
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    ScrCmd_132 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00A2
    Call _00FE
    Call _0122
    Call _0146
    Call _016A
    Call _018E
    Call _01B2
_00A2:
    AddMenuEntry 0x102, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, _0119
    GoToIfEq VAR_0x8004, 2, _013D
    GoToIfEq VAR_0x8004, 3, _0161
    GoToIfEq VAR_0x8004, 4, _0185
    GoToIfEq VAR_0x8004, 5, _01A9
    GoToIfEq VAR_0x8004, 6, _01CD
    CloseMessage
    ReleaseAll
    End

_00FE:
    CheckPoketchAppRegistered POKETCH_APPID_DIGITALWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01D6
    AddMenuEntry 233, 1
    Return

_0119:
    Message 11
    GoTo _0062

_0122:
    CheckPoketchAppRegistered POKETCH_APPID_ANALOGWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01D6
    AddMenuEntry 237, 2
    Return

_013D:
    Message 12
    GoTo _0062

_0146:
    CheckPoketchAppRegistered POKETCH_APPID_UNUSED_STOPWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01D6
    AddMenuEntry 234, 3
    Return

_0161:
    Message 14
    GoTo _0062

_016A:
    CheckPoketchAppRegistered POKETCH_APPID_KITCHENTIMER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01D6
    AddMenuEntry 250, 4
    Return

_0185:
    Message 15
    GoTo _0062

_018E:
    CheckPoketchAppRegistered POKETCH_APPID_UNUSED_ALARMCLOCK, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01D6
    AddMenuEntry 249, 5
    Return

_01A9:
    Message 13
    GoTo _0062

_01B2:
    CheckPoketchAppRegistered POKETCH_APPID_CALENDAR, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _01D6
    AddMenuEntry 254, 6
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
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    ScrCmd_132 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0229
    Call _0292
    Call _02B6
    Call _02DA
    Call _02FE
    Call _0322
    Call _0346
    Call _036A
_0229:
    AddMenuEntry 0x102, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, _02AD
    GoToIfEq VAR_0x8004, 2, _02D1
    GoToIfEq VAR_0x8004, 3, _02F5
    GoToIfEq VAR_0x8004, 4, _0319
    GoToIfEq VAR_0x8004, 5, _033D
    GoToIfEq VAR_0x8004, 6, _0361
    GoToIfEq VAR_0x8004, 7, _0385
    CloseMessage
    ReleaseAll
    End

_0292:
    CheckPoketchAppRegistered POKETCH_APPID_CALCULATOR, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 235, 1
    Return

_02AD:
    Message 17
    GoTo _01E3

_02B6:
    CheckPoketchAppRegistered POKETCH_APPID_MEMOPAD, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 236, 2
    Return

_02D1:
    Message 24
    GoTo _01E3

_02DA:
    CheckPoketchAppRegistered POKETCH_APPID_FRIENDSHIPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 240, 3
    Return

_02F5:
    Message 19
    GoTo _01E3

_02FE:
    CheckPoketchAppRegistered POKETCH_APPID_DAYCARECHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 244, 4
    Return

_0319:
    Message 20
    GoTo _01E3

_0322:
    CheckPoketchAppRegistered POKETCH_APPID_MATCHUPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 248, 5
    Return

_033D:
    Message 21
    GoTo _01E3

_0346:
    CheckPoketchAppRegistered POKETCH_APPID_POKEMONHISTORY, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 0x101, 6
    Return

_0361:
    Message 22
    GoTo _01E3

_036A:
    CheckPoketchAppRegistered POKETCH_APPID_BERRYSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _038E
    AddMenuEntry 252, 7
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
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    ScrCmd_132 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _03DB
    Call _0437
    Call _045B
    Call _047F
    Call _04A3
    Call _04C7
    Call _04EB
_03DB:
    AddMenuEntry 0x102, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, _0452
    GoToIfEq VAR_0x8004, 2, _0476
    GoToIfEq VAR_0x8004, 3, _049A
    GoToIfEq VAR_0x8004, 4, _04BE
    GoToIfEq VAR_0x8004, 5, _04E2
    GoToIfEq VAR_0x8004, 6, _0506
    CloseMessage
    ReleaseAll
    End

_0437:
    CheckPoketchAppRegistered POKETCH_APPID_PARTYSTATUS, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _050F
    AddMenuEntry 239, 1
    Return

_0452:
    Message 18
    GoTo _039B

_045B:
    CheckPoketchAppRegistered POKETCH_APPID_DOTART, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _050F
    AddMenuEntry 238, 2
    Return

_0476:
    Message 25
    GoTo _039B

_047F:
    CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _050F
    AddMenuEntry 246, 3
    Return

_049A:
    Message 29
    GoTo _039B

_04A3:
    CheckPoketchAppRegistered POKETCH_APPID_ROULETTE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _050F
    AddMenuEntry 245, 4
    Return

_04BE:
    Message 28
    GoTo _039B

_04C7:
    CheckPoketchAppRegistered POKETCH_APPID_COLORCHANGER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _050F
    AddMenuEntry 253, 5
    Return

_04E2:
    Message 26
    GoTo _039B

_04EB:
    CheckPoketchAppRegistered POKETCH_APPID_MARKINGMAP, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _050F
    AddMenuEntry 251, 6
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
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    ScrCmd_132 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _055C
    Call _05B8
    Call _05DC
    Call _0600
    Call _0624
    Call _0648
    Call _066C
_055C:
    AddMenuEntry 0x102, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, _05D3
    GoToIfEq VAR_0x8004, 2, _05F7
    GoToIfEq VAR_0x8004, 3, _061B
    GoToIfEq VAR_0x8004, 4, _063F
    GoToIfEq VAR_0x8004, 5, _0663
    GoToIfEq VAR_0x8004, 6, _0687
    CloseMessage
    ReleaseAll
    End

_05B8:
    CheckPoketchAppRegistered POKETCH_APPID_PEDOMETER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0690
    AddMenuEntry 243, 1
    Return

_05D3:
    Message 30
    GoTo _051C

_05DC:
    CheckPoketchAppRegistered POKETCH_APPID_COUNTER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0690
    AddMenuEntry 242, 2
    Return

_05F7:
    Message 32
    GoTo _051C

_0600:
    CheckPoketchAppRegistered POKETCH_APPID_RADARCHAINCOUNTER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0690
    AddMenuEntry 0x100, 3
    Return

_061B:
    Message 33
    GoTo _051C

_0624:
    CheckPoketchAppRegistered POKETCH_APPID_LINKSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0690
    AddMenuEntry 0xFF, 4
    Return

_063F:
    Message 34
    GoTo _051C

_0648:
    CheckPoketchAppRegistered POKETCH_APPID_MOVETESTER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0690
    AddMenuEntry 247, 5
    Return

_0663:
    Message 35
    GoTo _051C

_066C:
    CheckPoketchAppRegistered POKETCH_APPID_DOWSINGMACHINE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0690
    AddMenuEntry 241, 6
    Return

_0687:
    Message 31
    GoTo _051C

_0690:
    Return

    .byte 0
    .byte 0

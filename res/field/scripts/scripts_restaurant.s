#include "macros/scrcmd.inc"
#include "res/text/bank/restaurant.h"

    .data

    ScriptEntry _031E
    ScriptEntry _0058
    ScriptEntry _02DF
    ScriptEntry _0331
    ScriptEntry _04DB
    ScriptEntry _0685
    ScriptEntry _082F
    ScriptEntry _09D9
    ScriptEntry _0B83
    ScriptEntry _0D2D
    ScriptEntry _0ED7
    ScriptEntry _1081
    ScriptEntry _122B
    ScriptEntry _13D5
    ScriptEntry _157F
    ScriptEntry _1729
    ScriptEntry _18D3
    ScriptEntry _1A7D
    ScriptEntry _1C27
    ScriptEntry _1DD1
    ScriptEntry _1F7B
    ScriptEntryEnd
    End

_0058:
    SetFlag FLAG_UNK_0x09EE
    GetHour 0x4000
    GoToIfLt 0x4000, 9, _0087
    GoToIfGe 0x4000, 23, _0087
    GoToIfUnset FLAG_UNK_0x0AAB, _00B3
    End

_0087:
    SetFlag FLAG_UNK_0x0244
    SetFlag FLAG_UNK_0x0245
    SetFlag FLAG_UNK_0x0246
    SetFlag FLAG_UNK_0x0247
    SetFlag FLAG_UNK_0x0248
    SetFlag FLAG_UNK_0x0249
    SetFlag FLAG_UNK_0x024A
    SetFlag FLAG_UNK_0x024B
    SetFlag FLAG_UNK_0x024C
    SetVar 0x4104, 1
    End

_00B3:
    SetFlag FLAG_UNK_0x0244
    SetFlag FLAG_UNK_0x0245
    SetFlag FLAG_UNK_0x0246
    SetFlag FLAG_UNK_0x0247
    SetFlag FLAG_UNK_0x0248
    SetFlag FLAG_UNK_0x0249
    SetFlag FLAG_UNK_0x024A
    SetFlag FLAG_UNK_0x024B
    SetFlag FLAG_UNK_0x024C
    ClearTrainerFlag TRAINER_ARTIST_ISMAEL
    ClearTrainerFlag TRAINER_BEAUTY_HARLEY
    ClearTrainerFlag TRAINER_RICH_BOY_ROMAN
    ClearTrainerFlag TRAINER_LADY_KYLIE
    ClearTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    ClearTrainerFlag TRAINER_SOCIALITE_REBECCA
    ClearTrainerFlag TRAINER_COLLECTOR_EUGENE
    ClearTrainerFlag TRAINER_AROMA_LADY_ALISON
    ClearTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    ClearTrainerFlag TRAINER_POKEFAN_MEREDITH
    ClearTrainerFlag TRAINER_VETERAN_EMANUEL
    ClearTrainerFlag TRAINER_LASS_BLYTHE
    ClearTrainerFlag TRAINER_CAMERAMAN_DARRYL
    ClearTrainerFlag TRAINER_REPORTER_VALERIE
    ClearTrainerFlag TRAINER_PI_KENDRICK
    ClearTrainerFlag TRAINER_BEAUTY_GABRIELLA
    ClearTrainerFlag TRAINER_SCIENTIST_EMILIO
    ClearTrainerFlag TRAINER_BREEDER_KAYLEE
    SetVar 0x4104, 0
    GetRandom 0x4001, 1
    SetVar 0x4000, 5
    SetVar 0x400A, 0x2710
_0137:
    GetRandom2 0x4001, 9
    CallIfEq 0x4001, 0, _01D8
    CallIfEq 0x4001, 1, _01F5
    CallIfEq 0x4001, 2, _0212
    CallIfEq 0x4001, 3, _022F
    CallIfEq 0x4001, 4, _024C
    CallIfEq 0x4001, 5, _0269
    CallIfEq 0x4001, 6, _0286
    CallIfEq 0x4001, 7, _02A3
    CallIfEq 0x4001, 8, _02C0
    SubVar 0x400A, 1
    GoToIfEq 0x400A, 0, _01D2
    GoToIfNe 0x4000, 0, _0137
_01D2:
    SetFlag FLAG_UNK_0x0AAB
    End

_01D8:
    GoToIfUnset FLAG_UNK_0x0244, _02DD
    ClearFlag FLAG_UNK_0x0244
    GetRandom2 0x40FB, 3
    SubVar 0x4000, 1
    Return

_01F5:
    GoToIfUnset FLAG_UNK_0x0245, _02DD
    ClearFlag FLAG_UNK_0x0245
    GetRandom2 0x40FC, 3
    SubVar 0x4000, 1
    Return

_0212:
    GoToIfUnset FLAG_UNK_0x0246, _02DD
    ClearFlag FLAG_UNK_0x0246
    GetRandom2 0x40FD, 3
    SubVar 0x4000, 1
    Return

_022F:
    GoToIfUnset FLAG_UNK_0x0247, _02DD
    ClearFlag FLAG_UNK_0x0247
    GetRandom2 0x40FE, 3
    SubVar 0x4000, 1
    Return

_024C:
    GoToIfUnset FLAG_UNK_0x0248, _02DD
    ClearFlag FLAG_UNK_0x0248
    GetRandom2 0x40FF, 3
    SubVar 0x4000, 1
    Return

_0269:
    GoToIfUnset FLAG_UNK_0x0249, _02DD
    ClearFlag FLAG_UNK_0x0249
    GetRandom2 0x4100, 3
    SubVar 0x4000, 1
    Return

_0286:
    GoToIfUnset FLAG_UNK_0x024A, _02DD
    ClearFlag FLAG_UNK_0x024A
    GetRandom2 0x4101, 3
    SubVar 0x4000, 1
    Return

_02A3:
    GoToIfUnset FLAG_UNK_0x024B, _02DD
    ClearFlag FLAG_UNK_0x024B
    GetRandom2 0x4102, 3
    SubVar 0x4000, 1
    Return

_02C0:
    GoToIfUnset FLAG_UNK_0x024C, _02DD
    ClearFlag FLAG_UNK_0x024C
    GetRandom2 0x4103, 3
    SubVar 0x4000, 1
    Return

_02DD:
    Return

_02DF:
    LockAll
    ApplyMovement LOCALID_PLAYER, _212C
    WaitMovement
    WaitTime 20, 0x800C
    Message 1
    CloseMessage
    ReleaseAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VALOR_LAKEFRONT, 0, 0x2C2, 0x317, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_031E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0331:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_ARTIST_ISMAEL
    GoToIfDefeated TRAINER_ARTIST_ISMAEL, _046C
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _04BC
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _038A
    GoToIfEq 0x8008, 1, _03A9
    GoToIfEq 0x8008, 2, _03C8
    ReleaseAll
    End

_038A:
    Message 4
    FacePlayer
    Message 5
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _03E7
    GoTo _0460

_03A9:
    Message 12
    FacePlayer
    Message 13
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _03E7
    GoTo _0460

_03C8:
    Message 20
    FacePlayer
    Message 21
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _03E7
    GoTo _0460

_03E7:
    CloseMessage
    StartTrainerBattle TRAINER_ARTIST_ISMAEL, TRAINER_BEAUTY_HARLEY
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_ARTIST_ISMAEL
    SetTrainerFlag TRAINER_BEAUTY_HARLEY
    Call _04CF
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _043F
    GoToIfEq 0x8008, 1, _044A
    GoToIfEq 0x8008, 2, _0455
    ReleaseAll
    End

_043F:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_044A:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0455:
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0460:
    CloseMessage
    Call _04CF
    ReleaseAll
    End

_046C:
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _049B
    GoToIfEq 0x8008, 1, _04A6
    GoToIfEq 0x8008, 2, _04B1
    End

_049B:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04A6:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04B1:
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04BC:
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    Call _04CF
    ReleaseAll
    End

_04CF:
    ApplyMovement 6, _212C
    WaitMovement
    Return

_04DB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_BEAUTY_HARLEY
    GoToIfDefeated TRAINER_BEAUTY_HARLEY, _0616
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _0666
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _0534
    GoToIfEq 0x8008, 1, _0553
    GoToIfEq 0x8008, 2, _0572
    ReleaseAll
    End

_0534:
    Message 8
    FacePlayer
    Message 9
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0591
    GoTo _060A

_0553:
    Message 16
    FacePlayer
    Message 17
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0591
    GoTo _060A

_0572:
    Message 24
    FacePlayer
    Message 25
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0591
    GoTo _060A

_0591:
    CloseMessage
    StartTrainerBattle TRAINER_ARTIST_ISMAEL, TRAINER_BEAUTY_HARLEY
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_ARTIST_ISMAEL
    SetTrainerFlag TRAINER_BEAUTY_HARLEY
    Call _0679
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _05E9
    GoToIfEq 0x8008, 1, _05F4
    GoToIfEq 0x8008, 2, _05FF
    ReleaseAll
    End

_05E9:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05F4:
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05FF:
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_060A:
    CloseMessage
    Call _0679
    ReleaseAll
    End

_0616:
    SetVar 0x8008, 0x40FB
    GoToIfEq 0x8008, 0, _0645
    GoToIfEq 0x8008, 1, _0650
    GoToIfEq 0x8008, 2, _065B
    End

_0645:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0650:
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_065B:
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0666:
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    Call _0679
    ReleaseAll
    End

_0679:
    ApplyMovement 9, _2134
    WaitMovement
    Return

_0685:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_RICH_BOY_ROMAN
    GoToIfDefeated TRAINER_RICH_BOY_ROMAN, _07C0
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _0810
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _06DE
    GoToIfEq 0x8008, 1, _06FD
    GoToIfEq 0x8008, 2, _071C
    ReleaseAll
    End

_06DE:
    Message 30
    FacePlayer
    Message 31
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _073B
    GoTo _07B4

_06FD:
    Message 38
    FacePlayer
    Message 39
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _073B
    GoTo _07B4

_071C:
    Message 46
    FacePlayer
    Message 47
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _073B
    GoTo _07B4

_073B:
    CloseMessage
    StartTrainerBattle TRAINER_RICH_BOY_ROMAN, TRAINER_LADY_KYLIE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_RICH_BOY_ROMAN
    SetTrainerFlag TRAINER_LADY_KYLIE
    Call _0823
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _0793
    GoToIfEq 0x8008, 1, _079E
    GoToIfEq 0x8008, 2, _07A9
    ReleaseAll
    End

_0793:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_079E:
    Message 41
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07A9:
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07B4:
    CloseMessage
    Call _0823
    ReleaseAll
    End

_07C0:
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _07EF
    GoToIfEq 0x8008, 1, _07FA
    GoToIfEq 0x8008, 2, _0805
    End

_07EF:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07FA:
    Message 41
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0805:
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0810:
    FacePlayer
    Message 28
    WaitABXPadPress
    CloseMessage
    Call _0823
    ReleaseAll
    End

_0823:
    ApplyMovement 2, _212C
    WaitMovement
    Return

_082F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_LADY_KYLIE
    GoToIfDefeated TRAINER_LADY_KYLIE, _096A
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _09BA
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _0888
    GoToIfEq 0x8008, 1, _08A7
    GoToIfEq 0x8008, 2, _08C6
    ReleaseAll
    End

_0888:
    Message 34
    FacePlayer
    Message 35
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _08E5
    GoTo _095E

_08A7:
    Message 42
    FacePlayer
    Message 43
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _08E5
    GoTo _095E

_08C6:
    Message 50
    FacePlayer
    Message 51
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _08E5
    GoTo _095E

_08E5:
    CloseMessage
    StartTrainerBattle TRAINER_RICH_BOY_ROMAN, TRAINER_LADY_KYLIE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_RICH_BOY_ROMAN
    SetTrainerFlag TRAINER_LADY_KYLIE
    Call _09CD
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _093D
    GoToIfEq 0x8008, 1, _0948
    GoToIfEq 0x8008, 2, _0953
    ReleaseAll
    End

_093D:
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0948:
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0953:
    Message 53
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_095E:
    CloseMessage
    Call _09CD
    ReleaseAll
    End

_096A:
    SetVar 0x8008, 0x40FC
    GoToIfEq 0x8008, 0, _0999
    GoToIfEq 0x8008, 1, _09A4
    GoToIfEq 0x8008, 2, _09AF
    End

_0999:
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09A4:
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09AF:
    Message 53
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_09BA:
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    Call _09CD
    ReleaseAll
    End

_09CD:
    ApplyMovement 3, _2134
    WaitMovement
    Return

_09D9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    GoToIfDefeated TRAINER_GENTLEMAN_LEONARDO, _0B14
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _0B64
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0A32
    GoToIfEq 0x8008, 1, _0A51
    GoToIfEq 0x8008, 2, _0A70
    ReleaseAll
    End

_0A32:
    Message 56
    FacePlayer
    Message 57
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0A8F
    GoTo _0B08

_0A51:
    Message 64
    FacePlayer
    Message 65
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0A8F
    GoTo _0B08

_0A70:
    Message 72
    FacePlayer
    Message 73
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0A8F
    GoTo _0B08

_0A8F:
    CloseMessage
    StartTrainerBattle TRAINER_GENTLEMAN_LEONARDO, TRAINER_SOCIALITE_REBECCA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    SetTrainerFlag TRAINER_SOCIALITE_REBECCA
    Call _0B77
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0AE7
    GoToIfEq 0x8008, 1, _0AF2
    GoToIfEq 0x8008, 2, _0AFD
    ReleaseAll
    End

_0AE7:
    Message 59
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0AF2:
    Message 67
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0AFD:
    Message 75
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0B08:
    CloseMessage
    Call _0B77
    ReleaseAll
    End

_0B14:
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0B43
    GoToIfEq 0x8008, 1, _0B4E
    GoToIfEq 0x8008, 2, _0B59
    End

_0B43:
    Message 59
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0B4E:
    Message 67
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0B59:
    Message 75
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0B64:
    FacePlayer
    Message 54
    WaitABXPadPress
    CloseMessage
    Call _0B77
    ReleaseAll
    End

_0B77:
    ApplyMovement 0, _212C
    WaitMovement
    Return

_0B83:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_SOCIALITE_REBECCA
    GoToIfDefeated TRAINER_SOCIALITE_REBECCA, _0CBE
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _0D0E
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0BDC
    GoToIfEq 0x8008, 1, _0BFB
    GoToIfEq 0x8008, 2, _0C1A
    ReleaseAll
    End

_0BDC:
    Message 60
    FacePlayer
    Message 61
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0C39
    GoTo _0CB2

_0BFB:
    Message 68
    FacePlayer
    Message 69
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0C39
    GoTo _0CB2

_0C1A:
    Message 76
    FacePlayer
    Message 77
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0C39
    GoTo _0CB2

_0C39:
    CloseMessage
    StartTrainerBattle TRAINER_GENTLEMAN_LEONARDO, TRAINER_SOCIALITE_REBECCA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    SetTrainerFlag TRAINER_SOCIALITE_REBECCA
    Call _0D21
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0C91
    GoToIfEq 0x8008, 1, _0C9C
    GoToIfEq 0x8008, 2, _0CA7
    ReleaseAll
    End

_0C91:
    Message 63
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0C9C:
    Message 71
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CA7:
    Message 79
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CB2:
    CloseMessage
    Call _0D21
    ReleaseAll
    End

_0CBE:
    SetVar 0x8008, 0x40FD
    GoToIfEq 0x8008, 0, _0CED
    GoToIfEq 0x8008, 1, _0CF8
    GoToIfEq 0x8008, 2, _0D03
    End

_0CED:
    Message 63
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0CF8:
    Message 71
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0D03:
    Message 79
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0D0E:
    FacePlayer
    Message 55
    WaitABXPadPress
    CloseMessage
    Call _0D21
    ReleaseAll
    End

_0D21:
    ApplyMovement 1, _2134
    WaitMovement
    Return

_0D2D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_COLLECTOR_EUGENE
    GoToIfDefeated TRAINER_COLLECTOR_EUGENE, _0E68
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _0EB8
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0D86
    GoToIfEq 0x8008, 1, _0DA5
    GoToIfEq 0x8008, 2, _0DC4
    ReleaseAll
    End

_0D86:
    Message 82
    FacePlayer
    Message 83
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0DE3
    GoTo _0E5C

_0DA5:
    Message 90
    FacePlayer
    Message 91
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0DE3
    GoTo _0E5C

_0DC4:
    Message 98
    FacePlayer
    Message 99
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0DE3
    GoTo _0E5C

_0DE3:
    CloseMessage
    StartTrainerBattle TRAINER_COLLECTOR_EUGENE, TRAINER_AROMA_LADY_ALISON
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_COLLECTOR_EUGENE
    SetTrainerFlag TRAINER_AROMA_LADY_ALISON
    Call _0ECB
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0E3B
    GoToIfEq 0x8008, 1, _0E46
    GoToIfEq 0x8008, 2, _0E51
    ReleaseAll
    End

_0E3B:
    Message 85
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E46:
    Message 93
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E51:
    Message 101
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0E5C:
    CloseMessage
    Call _0ECB
    ReleaseAll
    End

_0E68:
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0E97
    GoToIfEq 0x8008, 1, _0EA2
    GoToIfEq 0x8008, 2, _0EAD
    End

_0E97:
    Message 85
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0EA2:
    Message 93
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0EAD:
    Message 101
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0EB8:
    FacePlayer
    Message 80
    WaitABXPadPress
    CloseMessage
    Call _0ECB
    ReleaseAll
    End

_0ECB:
    ApplyMovement 17, _212C
    WaitMovement
    Return

_0ED7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_AROMA_LADY_ALISON
    GoToIfDefeated TRAINER_AROMA_LADY_ALISON, _1012
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _1062
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0F30
    GoToIfEq 0x8008, 1, _0F4F
    GoToIfEq 0x8008, 2, _0F6E
    ReleaseAll
    End

_0F30:
    Message 86
    FacePlayer
    Message 87
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0F8D
    GoTo _1006

_0F4F:
    Message 94
    FacePlayer
    Message 95
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0F8D
    GoTo _1006

_0F6E:
    Message 102
    FacePlayer
    Message 103
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0F8D
    GoTo _1006

_0F8D:
    CloseMessage
    StartTrainerBattle TRAINER_COLLECTOR_EUGENE, TRAINER_AROMA_LADY_ALISON
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_COLLECTOR_EUGENE
    SetTrainerFlag TRAINER_AROMA_LADY_ALISON
    Call _1075
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _0FE5
    GoToIfEq 0x8008, 1, _0FF0
    GoToIfEq 0x8008, 2, _0FFB
    ReleaseAll
    End

_0FE5:
    Message 89
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FF0:
    Message 97
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0FFB:
    Message 105
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1006:
    CloseMessage
    Call _1075
    ReleaseAll
    End

_1012:
    SetVar 0x8008, 0x40FE
    GoToIfEq 0x8008, 0, _1041
    GoToIfEq 0x8008, 1, _104C
    GoToIfEq 0x8008, 2, _1057
    End

_1041:
    Message 89
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_104C:
    Message 97
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1057:
    Message 105
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1062:
    FacePlayer
    Message 81
    WaitABXPadPress
    CloseMessage
    Call _1075
    ReleaseAll
    End

_1075:
    ApplyMovement 10, _2134
    WaitMovement
    Return

_1081:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    GoToIfDefeated TRAINER_SCHOOL_KID_ESTEBAN, _11BC
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _120C
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _10DA
    GoToIfEq 0x8008, 1, _10F9
    GoToIfEq 0x8008, 2, _1118
    ReleaseAll
    End

_10DA:
    Message 108
    FacePlayer
    Message 109
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1137
    GoTo _11B0

_10F9:
    Message 116
    FacePlayer
    Message 117
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1137
    GoTo _11B0

_1118:
    Message 124
    FacePlayer
    Message 125
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1137
    GoTo _11B0

_1137:
    CloseMessage
    StartTrainerBattle TRAINER_SCHOOL_KID_ESTEBAN, TRAINER_POKEFAN_MEREDITH
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    SetTrainerFlag TRAINER_POKEFAN_MEREDITH
    Call _121F
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _118F
    GoToIfEq 0x8008, 1, _119A
    GoToIfEq 0x8008, 2, _11A5
    ReleaseAll
    End

_118F:
    Message 111
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_119A:
    Message 119
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_11A5:
    Message 127
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_11B0:
    CloseMessage
    Call _121F
    ReleaseAll
    End

_11BC:
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _11EB
    GoToIfEq 0x8008, 1, _11F6
    GoToIfEq 0x8008, 2, _1201
    End

_11EB:
    Message 111
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_11F6:
    Message 119
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1201:
    Message 127
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_120C:
    FacePlayer
    Message 106
    WaitABXPadPress
    CloseMessage
    Call _121F
    ReleaseAll
    End

_121F:
    ApplyMovement 15, _212C
    WaitMovement
    Return

_122B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_POKEFAN_MEREDITH
    GoToIfDefeated TRAINER_POKEFAN_MEREDITH, _1366
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _13B6
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _1284
    GoToIfEq 0x8008, 1, _12A3
    GoToIfEq 0x8008, 2, _12C2
    ReleaseAll
    End

_1284:
    Message 112
    FacePlayer
    Message 113
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _12E1
    GoTo _135A

_12A3:
    Message 120
    FacePlayer
    Message 121
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _12E1
    GoTo _135A

_12C2:
    Message 128
    FacePlayer
    Message 129
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _12E1
    GoTo _135A

_12E1:
    CloseMessage
    StartTrainerBattle TRAINER_SCHOOL_KID_ESTEBAN, TRAINER_POKEFAN_MEREDITH
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    SetTrainerFlag TRAINER_POKEFAN_MEREDITH
    Call _13C9
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _1339
    GoToIfEq 0x8008, 1, _1344
    GoToIfEq 0x8008, 2, _134F
    ReleaseAll
    End

_1339:
    Message 115
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1344:
    Message 123
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_134F:
    Message 131
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_135A:
    CloseMessage
    Call _13C9
    ReleaseAll
    End

_1366:
    SetVar 0x8008, 0x40FF
    GoToIfEq 0x8008, 0, _1395
    GoToIfEq 0x8008, 1, _13A0
    GoToIfEq 0x8008, 2, _13AB
    End

_1395:
    Message 115
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13A0:
    Message 123
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13AB:
    Message 131
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13B6:
    FacePlayer
    Message 107
    WaitABXPadPress
    CloseMessage
    Call _13C9
    ReleaseAll
    End

_13C9:
    ApplyMovement 13, _2134
    WaitMovement
    Return

_13D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_VETERAN_EMANUEL
    GoToIfDefeated TRAINER_VETERAN_EMANUEL, _1510
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _1560
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _142E
    GoToIfEq 0x8008, 1, _144D
    GoToIfEq 0x8008, 2, _146C
    ReleaseAll
    End

_142E:
    Message 134
    FacePlayer
    Message 135
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _148B
    GoTo _1504

_144D:
    Message 142
    FacePlayer
    Message 143
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _148B
    GoTo _1504

_146C:
    Message 150
    FacePlayer
    Message 151
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _148B
    GoTo _1504

_148B:
    CloseMessage
    StartTrainerBattle TRAINER_VETERAN_EMANUEL, TRAINER_LASS_BLYTHE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_VETERAN_EMANUEL
    SetTrainerFlag TRAINER_LASS_BLYTHE
    Call _1573
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _14E3
    GoToIfEq 0x8008, 1, _14EE
    GoToIfEq 0x8008, 2, _14F9
    ReleaseAll
    End

_14E3:
    Message 137
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_14EE:
    Message 145
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_14F9:
    Message 153
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1504:
    CloseMessage
    Call _1573
    ReleaseAll
    End

_1510:
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _153F
    GoToIfEq 0x8008, 1, _154A
    GoToIfEq 0x8008, 2, _1555
    End

_153F:
    Message 137
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_154A:
    Message 145
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1555:
    Message 153
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1560:
    FacePlayer
    Message 132
    WaitABXPadPress
    CloseMessage
    Call _1573
    ReleaseAll
    End

_1573:
    ApplyMovement 11, _212C
    WaitMovement
    Return

_157F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_LASS_BLYTHE
    GoToIfDefeated TRAINER_LASS_BLYTHE, _16BA
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _170A
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _15D8
    GoToIfEq 0x8008, 1, _15F7
    GoToIfEq 0x8008, 2, _1616
    ReleaseAll
    End

_15D8:
    Message 138
    FacePlayer
    Message 139
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1635
    GoTo _16AE

_15F7:
    Message 146
    FacePlayer
    Message 147
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1635
    GoTo _16AE

_1616:
    Message 154
    FacePlayer
    Message 155
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1635
    GoTo _16AE

_1635:
    CloseMessage
    StartTrainerBattle TRAINER_VETERAN_EMANUEL, TRAINER_LASS_BLYTHE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_VETERAN_EMANUEL
    SetTrainerFlag TRAINER_LASS_BLYTHE
    Call _171D
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _168D
    GoToIfEq 0x8008, 1, _1698
    GoToIfEq 0x8008, 2, _16A3
    ReleaseAll
    End

_168D:
    Message 141
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1698:
    Message 149
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_16A3:
    Message 157
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_16AE:
    CloseMessage
    Call _171D
    ReleaseAll
    End

_16BA:
    SetVar 0x8008, 0x4100
    GoToIfEq 0x8008, 0, _16E9
    GoToIfEq 0x8008, 1, _16F4
    GoToIfEq 0x8008, 2, _16FF
    End

_16E9:
    Message 141
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_16F4:
    Message 149
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_16FF:
    Message 157
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_170A:
    FacePlayer
    Message 133
    WaitABXPadPress
    CloseMessage
    Call _171D
    ReleaseAll
    End

_171D:
    ApplyMovement 12, _2134
    WaitMovement
    Return

_1729:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_CAMERAMAN_DARRYL
    GoToIfDefeated TRAINER_CAMERAMAN_DARRYL, _1864
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _18B4
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1782
    GoToIfEq 0x8008, 1, _17A1
    GoToIfEq 0x8008, 2, _17C0
    ReleaseAll
    End

_1782:
    Message 160
    FacePlayer
    Message 161
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _17DF
    GoTo _1858

_17A1:
    Message 168
    FacePlayer
    Message 169
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _17DF
    GoTo _1858

_17C0:
    Message 176
    FacePlayer
    Message 177
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _17DF
    GoTo _1858

_17DF:
    CloseMessage
    StartTrainerBattle TRAINER_CAMERAMAN_DARRYL, TRAINER_REPORTER_VALERIE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_CAMERAMAN_DARRYL
    SetTrainerFlag TRAINER_REPORTER_VALERIE
    Call _18C7
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1837
    GoToIfEq 0x8008, 1, _1842
    GoToIfEq 0x8008, 2, _184D
    ReleaseAll
    End

_1837:
    Message 163
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1842:
    Message 171
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_184D:
    Message 179
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1858:
    CloseMessage
    Call _18C7
    ReleaseAll
    End

_1864:
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1893
    GoToIfEq 0x8008, 1, _189E
    GoToIfEq 0x8008, 2, _18A9
    End

_1893:
    Message 163
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_189E:
    Message 171
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_18A9:
    Message 179
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_18B4:
    FacePlayer
    Message 158
    WaitABXPadPress
    CloseMessage
    Call _18C7
    ReleaseAll
    End

_18C7:
    ApplyMovement 5, _212C
    WaitMovement
    Return

_18D3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_REPORTER_VALERIE
    GoToIfDefeated TRAINER_REPORTER_VALERIE, _1A0E
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _1A5E
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _192C
    GoToIfEq 0x8008, 1, _194B
    GoToIfEq 0x8008, 2, _196A
    ReleaseAll
    End

_192C:
    Message 164
    FacePlayer
    Message 165
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1989
    GoTo _1A02

_194B:
    Message 172
    FacePlayer
    Message 173
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1989
    GoTo _1A02

_196A:
    Message 180
    FacePlayer
    Message 181
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1989
    GoTo _1A02

_1989:
    CloseMessage
    StartTrainerBattle TRAINER_CAMERAMAN_DARRYL, TRAINER_REPORTER_VALERIE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_CAMERAMAN_DARRYL
    SetTrainerFlag TRAINER_REPORTER_VALERIE
    Call _1A71
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _19E1
    GoToIfEq 0x8008, 1, _19EC
    GoToIfEq 0x8008, 2, _19F7
    ReleaseAll
    End

_19E1:
    Message 167
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_19EC:
    Message 175
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_19F7:
    Message 183
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1A02:
    CloseMessage
    Call _1A71
    ReleaseAll
    End

_1A0E:
    SetVar 0x8008, 0x4101
    GoToIfEq 0x8008, 0, _1A3D
    GoToIfEq 0x8008, 1, _1A48
    GoToIfEq 0x8008, 2, _1A53
    End

_1A3D:
    Message 167
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1A48:
    Message 175
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1A53:
    Message 183
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1A5E:
    FacePlayer
    Message 159
    WaitABXPadPress
    CloseMessage
    Call _1A71
    ReleaseAll
    End

_1A71:
    ApplyMovement 4, _2134
    WaitMovement
    Return

_1A7D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_PI_KENDRICK
    GoToIfDefeated TRAINER_PI_KENDRICK, _1BB8
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _1C08
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1AD6
    GoToIfEq 0x8008, 1, _1AF5
    GoToIfEq 0x8008, 2, _1B14
    ReleaseAll
    End

_1AD6:
    Message 186
    FacePlayer
    Message 187
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1B33
    GoTo _1BAC

_1AF5:
    Message 194
    FacePlayer
    Message 195
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1B33
    GoTo _1BAC

_1B14:
    Message 202
    FacePlayer
    Message 203
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1B33
    GoTo _1BAC

_1B33:
    CloseMessage
    StartTrainerBattle TRAINER_PI_KENDRICK, TRAINER_BEAUTY_GABRIELLA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_PI_KENDRICK
    SetTrainerFlag TRAINER_BEAUTY_GABRIELLA
    Call _1C1B
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1B8B
    GoToIfEq 0x8008, 1, _1B96
    GoToIfEq 0x8008, 2, _1BA1
    ReleaseAll
    End

_1B8B:
    Message 189
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1B96:
    Message 197
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1BA1:
    Message 205
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1BAC:
    CloseMessage
    Call _1C1B
    ReleaseAll
    End

_1BB8:
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1BE7
    GoToIfEq 0x8008, 1, _1BF2
    GoToIfEq 0x8008, 2, _1BFD
    End

_1BE7:
    Message 189
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1BF2:
    Message 197
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1BFD:
    Message 205
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1C08:
    FacePlayer
    Message 184
    WaitABXPadPress
    CloseMessage
    Call _1C1B
    ReleaseAll
    End

_1C1B:
    ApplyMovement 7, _212C
    WaitMovement
    Return

_1C27:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_BEAUTY_GABRIELLA
    GoToIfDefeated TRAINER_BEAUTY_GABRIELLA, _1D62
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _1DB2
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1C80
    GoToIfEq 0x8008, 1, _1C9F
    GoToIfEq 0x8008, 2, _1CBE
    ReleaseAll
    End

_1C80:
    Message 190
    FacePlayer
    Message 191
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1CDD
    GoTo _1D56

_1C9F:
    Message 198
    FacePlayer
    Message 199
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1CDD
    GoTo _1D56

_1CBE:
    Message 206
    FacePlayer
    Message 207
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1CDD
    GoTo _1D56

_1CDD:
    CloseMessage
    StartTrainerBattle TRAINER_PI_KENDRICK, TRAINER_BEAUTY_GABRIELLA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_PI_KENDRICK
    SetTrainerFlag TRAINER_BEAUTY_GABRIELLA
    Call _1DC5
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1D35
    GoToIfEq 0x8008, 1, _1D40
    GoToIfEq 0x8008, 2, _1D4B
    ReleaseAll
    End

_1D35:
    Message 193
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1D40:
    Message 201
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1D4B:
    Message 209
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1D56:
    CloseMessage
    Call _1DC5
    ReleaseAll
    End

_1D62:
    SetVar 0x8008, 0x4102
    GoToIfEq 0x8008, 0, _1D91
    GoToIfEq 0x8008, 1, _1D9C
    GoToIfEq 0x8008, 2, _1DA7
    End

_1D91:
    Message 193
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1D9C:
    Message 201
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1DA7:
    Message 209
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1DB2:
    FacePlayer
    Message 185
    WaitABXPadPress
    CloseMessage
    Call _1DC5
    ReleaseAll
    End

_1DC5:
    ApplyMovement 8, _2134
    WaitMovement
    Return

_1DD1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_SCIENTIST_EMILIO
    GoToIfDefeated TRAINER_SCIENTIST_EMILIO, _1F0C
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _1F5C
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1E2A
    GoToIfEq 0x8008, 1, _1E49
    GoToIfEq 0x8008, 2, _1E68
    ReleaseAll
    End

_1E2A:
    Message 212
    FacePlayer
    Message 213
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1E87
    GoTo _1F00

_1E49:
    Message 220
    FacePlayer
    Message 221
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1E87
    GoTo _1F00

_1E68:
    Message 228
    FacePlayer
    Message 229
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _1E87
    GoTo _1F00

_1E87:
    CloseMessage
    StartTrainerBattle TRAINER_SCIENTIST_EMILIO, TRAINER_BREEDER_KAYLEE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_SCIENTIST_EMILIO
    SetTrainerFlag TRAINER_BREEDER_KAYLEE
    Call _1F6F
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1EDF
    GoToIfEq 0x8008, 1, _1EEA
    GoToIfEq 0x8008, 2, _1EF5
    ReleaseAll
    End

_1EDF:
    Message 215
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1EEA:
    Message 223
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1EF5:
    Message 231
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1F00:
    CloseMessage
    Call _1F6F
    ReleaseAll
    End

_1F0C:
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1F3B
    GoToIfEq 0x8008, 1, _1F46
    GoToIfEq 0x8008, 2, _1F51
    End

_1F3B:
    Message 215
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1F46:
    Message 223
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1F51:
    Message 231
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1F5C:
    FacePlayer
    Message 210
    WaitABXPadPress
    CloseMessage
    Call _1F6F
    ReleaseAll
    End

_1F6F:
    ApplyMovement 14, _212C
    WaitMovement
    Return

_1F7B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_BREEDER_KAYLEE
    GoToIfDefeated TRAINER_BREEDER_KAYLEE, _20B6
    CountAliveMonsExcept 0x800C, 6
    GoToIfEq 0x800C, 1, _2106
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _1FD4
    GoToIfEq 0x8008, 1, _1FF3
    GoToIfEq 0x8008, 2, _2012
    ReleaseAll
    End

_1FD4:
    Message 216
    FacePlayer
    Message 217
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _2031
    GoTo _20AA

_1FF3:
    Message 224
    FacePlayer
    Message 225
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _2031
    GoTo _20AA

_2012:
    Message 232
    FacePlayer
    Message 233
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _2031
    GoTo _20AA

_2031:
    CloseMessage
    StartTrainerBattle TRAINER_SCIENTIST_EMILIO, TRAINER_BREEDER_KAYLEE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _2125
    SetTrainerFlag TRAINER_SCIENTIST_EMILIO
    SetTrainerFlag TRAINER_BREEDER_KAYLEE
    Call _2119
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _2089
    GoToIfEq 0x8008, 1, _2094
    GoToIfEq 0x8008, 2, _209F
    ReleaseAll
    End

_2089:
    Message 219
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_2094:
    Message 227
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_209F:
    Message 235
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_20AA:
    CloseMessage
    Call _2119
    ReleaseAll
    End

_20B6:
    SetVar 0x8008, 0x4103
    GoToIfEq 0x8008, 0, _20E5
    GoToIfEq 0x8008, 1, _20F0
    GoToIfEq 0x8008, 2, _20FB
    End

_20E5:
    Message 219
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_20F0:
    Message 227
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_20FB:
    Message 235
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_2106:
    FacePlayer
    Message 211
    WaitABXPadPress
    CloseMessage
    Call _2119
    ReleaseAll
    End

_2119:
    ApplyMovement 16, _2134
    WaitMovement
    Return

_2125:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_212C:
    MoveAction_003
    EndMovement

    .balign 4, 0
_2134:
    MoveAction_002
    EndMovement

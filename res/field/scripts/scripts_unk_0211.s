#include "macros/scrcmd.inc"

    .data

    ScriptEntry _02FC
    ScriptEntry _034C
    ScriptEntry _00EE
    ScriptEntry _03E8
    ScriptEntry _043B
    ScriptEntry _0479
    ScriptEntry _0494
    ScriptEntry _00EC
    ScriptEntry _05EA
    ScriptEntry _0719
    ScriptEntry _00EA
    ScriptEntry _08FF
    ScriptEntry _0901
    ScriptEntry _093A
    ScriptEntry _095C
    ScriptEntry _0983
    ScriptEntry _09F5
    ScriptEntry _0BDD
    ScriptEntry _0BEE
    ScriptEntry _0FC3
    ScriptEntry _0FCA
    ScriptEntry _103A
    ScriptEntry _0FA5
    ScriptEntry _0FA7
    ScriptEntry _1280
    ScriptEntry _1282
    ScriptEntry _12A8
    ScriptEntry _12BA
    ScriptEntry _12CD
    ScriptEntry _12E0
    ScriptEntry _12F3
    ScriptEntry _1361
    ScriptEntry _138C
    ScriptEntry _139D
    ScriptEntry _048B
    ScriptEntry _13AB
    ScriptEntry _09BD
    ScriptEntry _1475
    ScriptEntry _13BE
    ScriptEntry _1477
    ScriptEntry _1581
    ScriptEntry _15D7
    ScriptEntry _15B3
    ScriptEntry _15D7
    ScriptEntry _0A34
    ScriptEntry _09CC
    ScriptEntry _0910
    ScriptEntry _0992
    ScriptEntry _15BF
    ScriptEntry _15D7
    ScriptEntry _15E7
    ScriptEntry _1636
    ScriptEntry _164A
    ScriptEntry _165E
    ScriptEntry _16AA
    ScriptEntry _15CB
    ScriptEntry _15D7
    ScriptEntry _170A
    .short 0xFD13

_00EA:
    End

_00EC:
    End

_00EE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2BE 0x800C
    GoToIfGe 0x800C, 4, _027A
    SetVar 0x8004, 0
    GetTimeOfDay 0x800C
    Dummy1 0x800C
    SetVar 0x8004, 120
    GoToIfEq 0x800C, 0, _0141
    SetVar 0x8004, 121
    GoToIfEq 0x800C, 1, _0141
    SetVar 0x8004, 0
_0141:
    MessageVar 0x8004
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0172
    GoToIfEq 0x800C, 1, _0165
    End

_0165:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_0172:
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement 0xFF, _02EC
    WaitMovement
    ScrCmd_2BE 0x800C
    CallIfGe 0x800C, 4, _01BC
    CallIfLt 0x800C, 4, _01B7
    Call _01C1
    GoToIfUnset 106, _0242
    GoTo _01E1

_01B7:
    Message 1
    Return

_01BC:
    Message 7
    Return

_01C1:
    ApplyMovement 0x8007, _1260
    WaitMovement
    ScrCmd_19A 0x8006
    ScrCmd_23B 0x8006
    ApplyMovement 0x8007, _1278
    WaitMovement
    ScrCmd_14E
    Return

_01E1:
    GoToIfEq 0x8004, 1, _0218
    Message 2
    ApplyMovement 0xFF, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement 0x8007, _02E0
    WaitMovement
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_0218:
    Message 8
    ApplyMovement 0xFF, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement 0x8007, _02E0
    WaitMovement
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_0242:
    ScrCmd_119 0x8006
    GoToIfEq 0x8006, 1, _0259
    GoTo _01E1

_0259:
    SetFlag 106
    ApplyMovement 0xFF, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_027A:
    GoToIfSet 105, _02B0
    SetFlag 105
    Message 4
    BufferPlayerName 0
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _02D4
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_02B0:
    BufferPlayerName 0
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _02D4
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_02D4:
    SetVar 0x8004, 1
    GoTo _0172

    .balign 4, 0
_02E0:
    MoveAction_064
    MoveAction_03E
    EndMovement

    .balign 4, 0
_02EC:
    MoveAction_066
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_068
    EndMovement

_02FC:
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _033A
    GoToIfEq 0x8008, 1, _0341
    ScrCmd_03B 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 1, _0341
    ScrCmd_038 2
    ReturnCommonScript
    End

_033A:
    ScrCmd_038 2
    ReturnCommonScript
    End

_0341:
    ScrCmd_038 4
    ScrCmd_039
    ScrCmd_03C
    ReturnCommonScript
    End

_034C:
    Call _0356
    ReturnCommonScript
    End

_0356:
    GetItemPocket 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 7, _03D8
    GoToIfEq 0x8008, 0, _03CC
    GoToIfEq 0x8008, 4, _03CC
    GoToIfEq 0x8008, 1, _03CC
    GoToIfEq 0x8008, 2, _03CC
    GoToIfEq 0x8008, 6, _03CC
    GoToIfEq 0x8008, 5, _03DE
    GoToIfEq 0x8008, 3, _03D2
    End

_03CC:
    PlaySound SEQ_FANFA4
    Return

_03D2:
    PlaySound SEQ_WAZA
    Return

_03D8:
    PlaySound SEQ_FANFA3
    Return

_03DE:
    PlaySound SEQ_FANFA2
    Return

    .byte 21
    .byte 0
    .byte 2
    .byte 0

_03E8:
    LockAll
    ScrCmd_177 0x8004
    SetVar 0x8005, 0
_03F4:
    ScrCmd_1F7 0x800C, 0x8005
    GoToIfEq 0x800C, 0, _040F
    BufferPartyMonNickname 0, 0x8005
    Message 66
_040F:
    AddVar 0x8005, 1
    GoToIfNe 0x8004, 0x8005, _03F4
    ScrCmd_19B 0x800C, 6
    GoToIfEq 0x800C, 0, _0457
    CloseMessage
    ReleaseAll
    End

_043B:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitABPress
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    End

_0457:
    BufferPlayerName 0
    Message 11
    WaitABPress
    CloseMessage
    FadeOutMusic 0, 10
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_14B
    End

_0479:
    ClearFlag 31
    Call _04A8
    ScrCmd_18F 0x800C
    CloseMessage
    End

_048B:
    Message 20
    WaitABPress
    CloseMessage
    End

_0494:
    SetFlag 31
    Call _04A8
    SetVar 0x4000, 0x800C
    ReturnCommonScript
    End

_04A8:
    CheckSaveType 0x800C
    GoToIfEq 0x800C, SAVE_TYPE_OVERWRITE, _04FC
    ScrCmd_2C1
    Message 13
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, SAVE_TYPE_NO_DATA_EXISTS, _05A0
    CheckSaveType 0x800C
    GoToIfEq 0x800C, SAVE_TYPE_NO_DATA_EXISTS, _051D
    GoToIfEq 0x800C, SAVE_TYPE_FULL_SAVE, _0509
    GoToIfEq 0x800C, SAVE_TYPE_QUICK_SAVE, _0526
    End

_04FC:
    Message 20
    WaitABPress
    SetVar 0x800C, 0
    Return

_0509:
    Message 14
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _05A0
_051D:
    Message 21
    GoTo _0552

_0526:
    Message 14
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _05A0
    GoToIfUnset 31, _05C6
    GoToIfSet 31, _05D1
    End

_0552:
    ScrCmd_258
    WaitTime 2, 0x800C
    Call _0568
    ScrCmd_259
    GoTo _057D

_0568:
    ScrCmd_18D
    CallIfSet 31, _05BE
    ScrCmd_12D 0x800C
    ScrCmd_18E
    Return

_057D:
    GoToIfEq 0x800C, 0, _05AA
    BufferPlayerName 0
    Message 16
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    WaitABPressTime 30
    ScrCmd_2C2
    Return

_05A0:
    ScrCmd_2C2
    SetVar 0x800C, 0
    Return

_05AA:
    Message 18
    WaitABPress
    ScrCmd_2C2
    Return

_05B3:
    Message 21
    GoTo _0552
    End

_05BE:
    ScrCmd_2D6
    ClearFlag 31
    Return

_05C6:
    Message 15
    GoTo _0552
    End

_05D1:
    ScrCmd_2D7 0x800C
    GoToIfEq 0x800C, 0, _05B3
    GoTo _05C6
    End

_05EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_HONEY, 1, 0x800C
    GoToIfNe 0x800C, 0, _0632
    ScrCmd_128 0x800C
    GoToIfEq 0x800C, 1, _065F
    GoToIfEq 0x800C, 2, _066A
    GoToIfEq 0x800C, 3, _06F4
    End

_0632:
    ScrCmd_128 0x800C
    GoToIfEq 0x800C, 1, _0675
    GoToIfEq 0x800C, 2, _067E
    GoToIfEq 0x800C, 3, _06F4
    End

_065F:
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_066A:
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0675:
    Message 47
    GoTo _06BB

_067E:
    Message 49
    GoTo _06BB

    .byte 126
    .byte 0
    .byte 94
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 5
    .byte 31
    .byte 0
    .byte 0
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_06A2:
    CheckItem ITEM_HONEY, 1, 0x800C
    GoToIfNe 0x800C, 0, _06BB
    ReleaseAll
    End

_06BB:
    Message 50
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _06D5
    ReleaseAll
    End

_06D5:
    RemoveItem ITEM_HONEY, 1, 0x800C
    ScrCmd_260 1
    ScrCmd_127
    WaitTime 10, 0x800C
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F4:
    ScrCmd_1E5 117
    ScrCmd_129
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0713
    ScrCmd_12A
    GoTo _06A2

_0713:
    ScrCmd_0EB
    ReleaseAll
    End

_0719:
    Call _0723
    ReturnCommonScript
    End

_0723:
    BufferPlayerName 0
    BufferPoketchAppName 1, 0x8004
    PlaySound SEQ_POCKETCH
    Message 24
    WaitSound
    Message 26
    ScrCmd_133 0x8004
    CallIfEq 0x8004, 0, _0882
    CallIfEq 0x8004, 1, _0887
    CallIfEq 0x8004, 2, _088C
    CallIfEq 0x8004, 3, _0891
    CallIfEq 0x8004, 4, _0896
    CallIfEq 0x8004, 5, _089B
    CallIfEq 0x8004, 6, _08A0
    CallIfEq 0x8004, 7, _08A5
    CallIfEq 0x8004, 8, _08AA
    CallIfEq 0x8004, 9, _08AF
    CallIfEq 0x8004, 10, _08B4
    CallIfEq 0x8004, 11, _08B9
    CallIfEq 0x8004, 12, _08BE
    CallIfEq 0x8004, 13, _08C3
    CallIfEq 0x8004, 14, _08C8
    CallIfEq 0x8004, 15, _08CD
    CallIfEq 0x8004, 16, _08D2
    CallIfEq 0x8004, 17, _08D7
    CallIfEq 0x8004, 18, _08DC
    CallIfEq 0x8004, 19, _08E1
    CallIfEq 0x8004, 20, _08E6
    CallIfEq 0x8004, 21, _08EB
    CallIfEq 0x8004, 22, _08F0
    CallIfEq 0x8004, 23, _08F5
    CallIfEq 0x8004, 24, _08FA
    Return

_0882:
    Message 83
    Return

_0887:
    Message 84
    Return

_088C:
    Message 85
    Return

_0891:
    Message 86
    Return

_0896:
    Message 87
    Return

_089B:
    Message 88
    Return

_08A0:
    Message 89
    Return

_08A5:
    Message 90
    Return

_08AA:
    Message 91
    Return

_08AF:
    Message 92
    Return

_08B4:
    Message 93
    Return

_08B9:
    Message 94
    Return

_08BE:
    Message 95
    Return

_08C3:
    Message 96
    Return

_08C8:
    Message 97
    Return

_08CD:
    Message 98
    Return

_08D2:
    Message 99
    Return

_08D7:
    Message 100
    Return

_08DC:
    Message 101
    Return

_08E1:
    Message 102
    Return

_08E6:
    Message 103
    Return

_08EB:
    Message 104
    Return

_08F0:
    Message 105
    Return

_08F5:
    Message 106
    Return

_08FA:
    Message 107
    Return

_08FF:
    End

_0901:
    Call _091D
    Message 109
    WaitABXPadPress
    ReturnCommonScript
    End

_0910:
    Call _091D
    Message 128
    ReturnCommonScript
    End

_091D:
    PlaySound SEQ_FANFA4
    ScrCmd_083 0x8004, 0x8005, 0x800C
    ScrCmd_33E 0, 0x8004
    Message 108
    ScrCmd_0DF 0, 0x8004
    WaitSound
    Return

_093A:
    Call _0944
    ReturnCommonScript
    End

_0944:
    PlaySound SEQ_FANFA4
    ScrCmd_087 0x8004, 0x8005, 0x800C
    ScrCmd_0E0 0, 0x8004
    Message 80
    WaitSound
    Return

_095C:
    Call _0966
    ReturnCommonScript
    End

_0966:
    PlaySound SEQ_FANFA4
    ScrCmd_08F 0x8004, 0x8005, 0x800C
    ScrCmd_0E1 0, 0x8004
    BufferNumber 1, 0x8005
    Message 81
    WaitSound
    Return

_0983:
    Call _099F
    Message 31
    WaitABXPadPress
    ReturnCommonScript
    End

_0992:
    Call _099F
    Message 127
    ReturnCommonScript
    End

_099F:
    PlaySound SEQ_ACCE
    ScrCmd_1D2 0x8004, 0x8005
    ScrCmd_261 0, 0x8004
    Message 25
    WaitSound
    BufferPlayerName 0
    ScrCmd_261 1, 0x8004
    Return

_09BD:
    Call _09D9
    Message 31
    WaitABXPadPress
    ReturnCommonScript
    End

_09CC:
    Call _09D9
    Message 127
    ReturnCommonScript
    End

_09D9:
    PlaySound SEQ_FANFA4
    ScrCmd_1D5 0x8004
    ScrCmd_273 0, 0x8004
    Message 25
    WaitSound
    BufferPlayerName 0
    ScrCmd_273 1, 0x8004
    Return

_09F5:
    Call _09FF
    ReturnCommonScript
    End

_09FF:
    Call _0356
    AddItem 0x8004, 0x8005, 0x800C
    GetItemPocket 0x8004, 0x800C
    CallIfEq 0x800C, 7, _0A71
    CallIfNe 0x800C, 7, _0A82
    Message 30
    WaitABXPadPress
    Return

_0A34:
    Call _0A3E
    ReturnCommonScript
    End

_0A3E:
    Call _0356
    AddItem 0x8004, 0x8005, 0x800C
    GetItemPocket 0x8004, 0x800C
    CallIfEq 0x800C, 7, _0A71
    CallIfNe 0x800C, 7, _0A82
    Message 126
    Return

_0A71:
    BufferPlayerName 0
    BufferItemName 1, 0x8004
    Message 28
    GoTo _0AA8

_0A82:
    GoToIfGt 0x8005, 1, _0A9A
    BufferItemName 0, 0x8004
    GoTo _0A9F

_0A9A:
    ScrCmd_33D 0, 0x8004
_0A9F:
    Message 25
    GoTo _0AA8

_0AA8:
    WaitSound
    ScrCmd_2A7 0x8004, 0x800C
    CallIfEq 0x800C, 1, _13C8
    BufferPlayerName 0
    GoToIfGt 0x8005, 1, _0AD8
    BufferItemName 1, 0x8004
    GoTo _0ADD

_0AD8:
    ScrCmd_33D 1, 0x8004
_0ADD:
    GetItemPocket 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 7, _0B64
    GoToIfEq 0x8008, 0, _0B53
    GoToIfEq 0x8008, 4, _0BA8
    GoToIfEq 0x8008, 1, _0B97
    GoToIfEq 0x8008, 2, _0BB9
    GoToIfEq 0x8008, 6, _0B75
    GoToIfEq 0x8008, 5, _0B86
    GoToIfEq 0x8008, 3, _0BCA
    End

_0B53:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0B64:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0B75:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0B86:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0B97:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0BA8:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0BB9:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0BCA:
    GetItemPocket 0x8004, 0x800C
    BufferPocketName 2, 0x800C
    GoTo _0BDB

_0BDB:
    Return

_0BDD:
    Call _0BE7
    ReturnCommonScript
    End

_0BE7:
    Message 27
    WaitABXPadPress
    Return

_0BEE:
    LockAll
    PlayFanfare SEQ_SE_DP_PC_ON
    Call _0C06
    BufferPlayerName 0
    Message 32
    GoTo _0C1C

_0C06:
    ScrCmd_24B 90
    ScrCmd_24C 90
    ScrCmd_169 90
    Return

_0C11:
    ScrCmd_24D 90
    ScrCmd_169 90
    ScrCmd_16A 90
    Return

_0C1C:
    BufferPlayerName 0
    Message 33
    ScrCmd_040 1, 1, 0, 1, 0x8006
    CallIfUnset 0x97E, _0C7B
    CallIfSet 0x97E, _0C81
    ScrCmd_042 60, 1
    ScrCmd_22D 2, 0x800C
    CallIfEq 0x800C, 0, _0C87
    CallIfEq 0x800C, 1, _0C8D
    GoToIfSet 0x964, _0C93
    GoToIfUnset 0x964, _0CDD
    End

_0C7B:
    ScrCmd_042 58, 0
    Return

_0C81:
    ScrCmd_042 59, 0
    Return

_0C87:
    ScrCmd_042 63, 2
    Return

_0C8D:
    ScrCmd_042 62, 2
    Return

_0C93:
    ScrCmd_042 61, 3
    ScrCmd_042 64, 4
    ScrCmd_043
    SetVar 0x8008, 0x8006
    GoToIfEq 0x8008, 0, _0D16
    GoToIfEq 0x8008, 1, _0E45
    GoToIfEq 0x8008, 2, _0F62
    GoToIfEq 0x8008, 3, _0F2C
    GoTo _0F70

_0CDD:
    ScrCmd_042 64, 3
    ScrCmd_043
    SetVar 0x8008, 0x8006
    GoToIfEq 0x8008, 0, _0D16
    GoToIfEq 0x8008, 1, _0E45
    GoToIfEq 0x8008, 2, _0F62
    GoTo _0F70

_0D16:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message 34
    Call _0D2C
    GoTo _0D73

_0D2C:
    ScrCmd_044 1, 1, 0, 1, 0x800C
    ScrCmd_046 65, 74, 0
    ScrCmd_046 66, 75, 1
    ScrCmd_046 67, 76, 2
    ScrCmd_046 68, 77, 3
    CallIfSet 0x978, _0D69
    ScrCmd_046 70, 79, 5
    Return

_0D69:
    ScrCmd_046 69, 78, 4
    Return

_0D73:
    ScrCmd_047
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0DC2
    GoToIfEq 0x8008, 1, _0DD5
    GoToIfEq 0x8008, 2, _0DE8
    GoToIfEq 0x8008, 3, _0DFB
    GoToIfEq 0x8008, 4, _0E0E
    GoTo _0C1C

_0DC2:
    CloseMessage
    Call _0F94
    ScrCmd_0AB 0
    ScrCmd_0A1
    GoTo _0E21

_0DD5:
    CloseMessage
    Call _0F94
    ScrCmd_0AB 1
    ScrCmd_0A1
    GoTo _0E21

_0DE8:
    CloseMessage
    Call _0F94
    ScrCmd_0AB 2
    ScrCmd_0A1
    GoTo _0E21

_0DFB:
    CloseMessage
    Call _0F94
    ScrCmd_0AB 3
    ScrCmd_0A1
    GoTo _0E21

_0E0E:
    CloseMessage
    Call _0F94
    ScrCmd_0AB 4
    ScrCmd_0A1
    GoTo _0E21

_0E21:
    ScrCmd_30B
    BufferPlayerName 0
    MessageInstant 33
    Call _0D2C
    Call _0C06
    FadeScreen 6, 1, 1, 0
    GoTo _0D73

_0E45:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message 35
    GoTo _0E55

_0E55:
    Call _0E61
    GoTo _0E83

_0E61:
    ScrCmd_044 1, 1, 0, 1, 0x800C
    ScrCmd_046 71, 80, 0
    ScrCmd_046 72, 81, 1
    ScrCmd_046 73, 82, 3
    Return

_0E83:
    ScrCmd_047
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0EAB
    GoToIfEq 0x8008, 1, _0EE0
    GoTo _0C1C

_0EAB:
    CloseMessage
    ScrCmd_1B4 0x800C
    GoToIfEq 0x800C, 0, _0EC6
    ScrCmd_1B3
    GoTo _0ECF

_0EC6:
    Message 52
    GoTo _0E55

_0ECF:
    BufferPlayerName 0
    OpenMessage
    Call _0E61
    GoTo _0E83

_0EE0:
    ScrCmd_2AB 0x800C
    GoToIfEq 0x800C, 0, _0F01
    CloseMessage
    Call _0F94
    OpenSealCapsuleEditor
    GoTo _0F0A

_0F01:
    Message 118
    GoTo _0E55

_0F0A:
    BufferPlayerName 0
    MessageInstant 33
    Call _0E61
    Call _0C06
    FadeScreen 6, 1, 1, 0
    GoTo _0E83

_0F2C:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    CloseMessage
    ScrCmd_336 0x800C
    GoToIfEq 0x800C, 1, _0F59
    Call _0F94
    ScrCmd_0B1
    ScrCmd_0A1
    Call _0F80
    GoTo _0C1C

_0F59:
    Message 131
    GoTo _0C1C

_0F62:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    CallCommonScript 0x26DF
    GoTo _0C1C

_0F70:
    CloseMessage
    PlayFanfare SEQ_SE_DP_PC_LOGOFF
    Call _0C11
    ReleaseAll
    End

_0F80:
    Call _0C06
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

_0F94:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_16A 90
    Return

_0FA5:
    End

_0FA7:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    OpenSealCapsuleEditor
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0FC3:
    Message 37
    ReturnCommonScript
    End

_0FCA:
    LockAll
    ApplyMovement 0xFF, _1250
    ApplyMovement 0, _1258
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPlayerName 0
    Message 40
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    CallIfSet 144, _1030
    CallIfUnset 144, _1035
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1030:
    Message 41
    Return

_1035:
    Message 42
    Return

_103A:
    LockAll
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement 0xFF, _02EC
    WaitMovement
    Message 43
    Call _10C7
    Call _01C1
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _10A2
    Message 44
    ApplyMovement 0xFF, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement 0x8007, _02E0
    WaitMovement
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_10A2:
    ApplyMovement 0xFF, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement 0x8007, _02E0
    WaitMovement
    Message 39
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_10C7:
    ScrCmd_201 0x8004
    GoToIfEq 0x8004, 6, _11BD
    GoToIfEq 0x8004, 36, _11C5
    GoToIfEq 0x8004, 48, _11CD
    GoToIfEq 0x8004, 69, _11D5
    GoToIfEq 0x8004, 101, _11DD
    GoToIfEq 0x8004, 123, _11E5
    GoToIfEq 0x8004, 134, _11ED
    GoToIfEq 0x8004, 151, _11F5
    GoToIfEq 0x8004, 168, _11FD
    GoToIfEq 0x8004, 173, _1205
    GoToIfEq 0x8004, 189, _120D
    GoToIfEq 0x8004, 0x1A4, _1215
    GoToIfEq 0x8004, 0x1AC, _121D
    GoToIfEq 0x8004, 0x1B3, _1225
    GoToIfEq 0x8004, 0x1BB, _122D
    GoToIfEq 0x8004, 0x1C4, _1235
    GoToIfEq 0x8004, 0x1CB, _123D
    GoToIfEq 0x8004, 175, _1245
    SetVar 0x8007, 0
    Return

_11BD:
    SetVar 0x8007, 3
    Return

_11C5:
    SetVar 0x8007, 1
    Return

_11CD:
    SetVar 0x8007, 3
    Return

_11D5:
    SetVar 0x8007, 3
    Return

_11DD:
    SetVar 0x8007, 0
    Return

_11E5:
    SetVar 0x8007, 0
    Return

_11ED:
    SetVar 0x8007, 0
    Return

_11F5:
    SetVar 0x8007, 0
    Return

_11FD:
    SetVar 0x8007, 0
    Return

_1205:
    SetVar 0x8007, 0
    Return

_120D:
    SetVar 0x8007, 0
    Return

_1215:
    SetVar 0x8007, 3
    Return

_121D:
    SetVar 0x8007, 2
    Return

_1225:
    SetVar 0x8007, 0
    Return

_122D:
    SetVar 0x8007, 0
    Return

_1235:
    SetVar 0x8007, 0
    Return

_123D:
    SetVar 0x8007, 0
    Return

_1245:
    SetVar 0x8007, 3
    Return

    .balign 4, 0
_1250:
    MoveAction_002
    EndMovement

    .balign 4, 0
_1258:
    MoveAction_003
    EndMovement

    .balign 4, 0
_1260:
    MoveAction_002
    EndMovement

    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_1278:
    MoveAction_001
    EndMovement

_1280:
    End

_1282:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_205
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_12A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_20C
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12BA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 67
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12CD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 70
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 71
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12F3:
    CheckItem ITEM_BICYCLE, 1, 0x800C
    GoToIfEq 0x800C, 0, _135F
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    CheckPlayerOnBike 0x800C
    GoToIfEq 0x800C, 1, _133C
    Message 73
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _1359
    SetPlayerBike 1
    CloseMessage
    ReleaseAll
    End

_133C:
    Message 74
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _1359
    SetPlayerBike 0
    CloseMessage
    ReleaseAll
    End

_1359:
    CloseMessage
    ReleaseAll
    End

_135F:
    End

_1361:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 76
    WaitABPress
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1AC
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_138C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 79
    WaitABPress
    CloseMessage
    ReleaseAll
    End

_139D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_0A5
    ReleaseAll
    End

_13AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 82
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13BE:
    Call _13C8
    ReturnCommonScript
    End

_13C8:
    AddVar 0x4115, 1
    CallIfGe 0x4115, 9, _1445
    CallIfEq 0x4115, 1, _144D
    CallIfEq 0x4115, 2, _1452
    CallIfEq 0x4115, 3, _1457
    CallIfEq 0x4115, 4, _145C
    CallIfEq 0x4115, 5, _1461
    CallIfEq 0x4115, 6, _1466
    CallIfEq 0x4115, 7, _146B
    CallIfEq 0x4115, 8, _1470
    Return

_1445:
    SetVar 0x4115, 1
    Return

_144D:
    Message 110
    Return

_1452:
    Message 111
    Return

_1457:
    Message 112
    Return

_145C:
    Message 113
    Return

_1461:
    Message 114
    Return

_1466:
    Message 115
    Return

_146B:
    Message 116
    Return

_1470:
    Message 117
    Return

_1475:
    End

_1477:
    LockAll
    ScrCmd_201 0x8004
    GoToIfEq 0x8004, 220, _14AC
    GoToIfEq 0x8004, 0x248, _14AC
    GoToIfEq 0x8004, 0x249, _14AC
    GoTo _1570
    End

_14AC:
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfNe 0x8004, 31, _1570
    GoToIfNe 0x8005, 52, _1570
    ScrCmd_166 0x4000
    GoToIfEq 0x4000, 0, _1570
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _1570
    ScrCmd_28B 2, 0x4000
    GoToIfEq 0x4000, 0, _1570
    GoToIfSet 0x11E, _1570
    BufferPlayerName 0
    Message 122
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _157B
    BufferPlayerName 0
    Message 123
    CloseMessage
    WaitTime 30, 0x800C
    PlayMusic SEQ_FUE
    WaitTime 0x21C, 0x800C
    GetPlayerMapPos 0x8004, 0x8005
    FadeScreen 6, 6, 0, 0x7FFF
    WaitFadeScreen
    Warp MAP_HEADER_HALL_OF_ORIGIN, 0, 0x8004, 0x8005, 0
    FadeScreen 6, 6, 1, 0x7FFF
    WaitFadeScreen
    Message 124
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1570:
    Message 125
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_157B:
    CloseMessage
    ReleaseAll
    End

_1581:
    StopMusic 0
    ScrCmd_14D 0x800C
    CallIfEq 0x800C, 0, _15A7
    CallIfEq 0x800C, 1, _15AD
    ReturnCommonScript
    End

_15A7:
    ScrCmd_057 0x477
    Return

_15AD:
    ScrCmd_057 0x476
    Return

_15B3:
    StopMusic 0
    ScrCmd_057 0x473
    ReturnCommonScript
    End

_15BF:
    StopMusic 0
    ScrCmd_057 0x472
    ReturnCommonScript
    End

_15CB:
    StopMusic 0
    ScrCmd_057 0x4B0
    ReturnCommonScript
    End

_15D7:
    FadeOutMusic 0, 30
    StopMusic 0
    PlayDefaultMusic
    ReturnCommonScript
    End

_15E7:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0B3 0x800C
    SetVar 0x8004, 0x800C
    ScrCmd_2F6 0x8005, 0x8004, 0x800C
    GoToIfEq 0x800C, 0, _1624
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReturnCommonScript
    End

_1624:
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReturnCommonScript
    End

_1636:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 0
    GoTo _1672
    End

_164A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 1
    GoTo _1672
    End

_165E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8004, 2
    GoTo _1672
    End

_1672:
    Message 129
    ScrCmd_2E6 0xFF, 0x8004, 0x800C
    SetVar 0x8003, 0x800C
    GoToIfEq 0x8003, -2, _16A4
    ScrCmd_2EC 21, 1, 0x8003, 0x800C
    WaitABPress
    ScrCmd_2ED
    GoTo _16A4
    End

_16A4:
    CloseMessage
    ReleaseAll
    End

_16AA:
    GoToIfSet 137, _1706
    GoToIfNe 0x4050, 4, _1706
    GoToIfNe 0x4051, 4, _1706
    GoToIfNe 0x4052, 4, _1706
    GoToIfNe 0x4053, 4, _1706
    GoToIfNe 0x404F, 4, _1706
    SetFlag 137
    ScrCmd_30A 42
    GoTo _1706
    End

_1706:
    ReturnCommonScript
    End

_170A:
    Message 130
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

    .byte 0

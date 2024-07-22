#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0398
    ScriptEntry _040F
    .short 0xFD13

_000E:
    SetFlag 0x183
    SetFlag 0x184
    GoToIfUnset 0x97F, _0029
    Call _002B
    End

_0029:
    End

_002B:
    ScrCmd_234 0x4000
    CallIfEq 0x4000, 0, _008C
    CallIfEq 0x4000, 1, _00ED
    CallIfEq 0x4000, 2, _014E
    CallIfEq 0x4000, 3, _01AF
    CallIfEq 0x4000, 4, _0203
    CallIfEq 0x4000, 5, _0264
    CallIfEq 0x4000, 6, _02C5
    Return

_008C:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 168, _0326
    CallIfEq 0x4001, 189, _0332
    CallIfEq 0x4001, 189, _0348
    CallIfEq 0x4001, 101, _035E
    CallIfEq 0x4001, 69, _036A
    CallIfEq 0x4001, 0x1CB, _0380
    CallIfEq 0x4001, 123, _038C
    Return

_00ED:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 123, _0326
    CallIfEq 0x4001, 6, _0332
    CallIfEq 0x4001, 6, _0348
    CallIfEq 0x4001, 0x1BB, _035E
    CallIfEq 0x4001, 69, _036A
    CallIfEq 0x4001, 0x1AC, _0380
    CallIfEq 0x4001, 36, _038C
    Return

_014E:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 48, _0326
    CallIfEq 0x4001, 101, _0332
    CallIfEq 0x4001, 101, _0348
    CallIfEq 0x4001, 123, _035E
    CallIfEq 0x4001, 69, _036A
    CallIfEq 0x4001, 0x1B3, _0380
    CallIfEq 0x4001, 36, _038C
    Return

_01AF:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0332
    CallIfEq 0x4001, 6, _0348
    CallIfEq 0x4001, 0x1BB, _035E
    CallIfEq 0x4001, 134, _036A
    CallIfEq 0x4001, 0x1CB, _0380
    CallIfEq 0x4001, 123, _038C
    Return

_0203:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 48, _0326
    CallIfEq 0x4001, 6, _0332
    CallIfEq 0x4001, 6, _0348
    CallIfEq 0x4001, 123, _035E
    CallIfEq 0x4001, 134, _036A
    CallIfEq 0x4001, 0x1AC, _0380
    CallIfEq 0x4001, 151, _038C
    Return

_0264:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 123, _0326
    CallIfEq 0x4001, 101, _0332
    CallIfEq 0x4001, 101, _0348
    CallIfEq 0x4001, 0x1BB, _035E
    CallIfEq 0x4001, 134, _036A
    CallIfEq 0x4001, 0x1B3, _0380
    CallIfEq 0x4001, 151, _038C
    Return

_02C5:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 168, _0326
    CallIfEq 0x4001, 189, _0332
    CallIfEq 0x4001, 189, _0348
    CallIfEq 0x4001, 101, _035E
    CallIfEq 0x4001, 69, _036A
    CallIfEq 0x4001, 0x1CB, _0380
    CallIfEq 0x4001, 123, _038C
    Return

_0326:
    ClearFlag 0x183
    SetVar 0x402A, 35
    Return

_0332:
    ClearFlag 0x183
    ClearFlag 0x184
    SetVar 0x402A, 22
    SetVar 0x402B, 23
    Return

_0348:
    ClearFlag 0x183
    ClearFlag 0x184
    SetVar 0x402A, 22
    SetVar 0x402B, 23
    Return

_035E:
    ClearFlag 0x183
    SetVar 0x402A, 43
    Return

_036A:
    ClearFlag 0x183
    ClearFlag 0x184
    SetVar 0x402A, 22
    SetVar 0x402B, 23
    Return

_0380:
    ClearFlag 0x183
    SetVar 0x402A, 71
    Return

_038C:
    ClearFlag 0x183
    SetVar 0x402A, 10
    Return

_0398:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8004, 0
    SetVar 0x8006, 0
    CallIfEq 0x402A, 35, _1331
    CallIfEq 0x402A, 22, _133E
    CallIfEq 0x402A, 43, _13A3
    CallIfEq 0x402A, 22, _13B0
    CallIfEq 0x402A, 71, _13DD
    CallIfEq 0x402A, 10, _13EA
    GoToIfEq 0x8006, 1, _06A8
    GoTo _0486
    End

_040F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8004, 1
    SetVar 0x8006, 0
    CallIfEq 0x402B, 35, _1331
    CallIfEq 0x402B, 23, _1378
    CallIfEq 0x402B, 43, _13A3
    CallIfEq 0x402B, 22, _13B0
    CallIfEq 0x402B, 71, _13DD
    CallIfEq 0x402B, 10, _13EA
    GoToIfEq 0x8006, 1, _06A8
    GoTo _0486
    End

_0486:
    SetVar 0x8000, 1
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _05B9
    CallIfEq 0x4001, 134, _05B9
    GoToIfEq 0x8000, 0, _0590
    GoToIfEq 0x8004, 1, _051A
    CallIfEq 0x402A, 35, _0828
    CallIfEq 0x402A, 22, _0864
    CallIfEq 0x402A, 43, _08F6
    CallIfEq 0x402A, 22, _0932
    CallIfEq 0x402A, 71, _0986
    CallIfEq 0x402A, 10, _09C2
    GoTo _0570
    End

_051A:
    CallIfEq 0x402B, 35, _0828
    CallIfEq 0x402B, 23, _08A0
    CallIfEq 0x402B, 43, _08F6
    CallIfEq 0x402B, 22, _095C
    CallIfEq 0x402B, 71, _0986
    CallIfEq 0x402B, 10, _09C2
    GoTo _0570
    End

_0570:
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05CE
    GoToIfEq 0x800C, 1, _0761
    End

_0590:
    GoToIfEq 0x8004, 1, _05AB
    Call _100C
    GoTo _081A
    End

_05AB:
    Call _1036
    GoTo _081A
    End

_05B9:
    GoToIfEq 0x402A, 22, _05C8
    Return

_05C8:
    ScrCmd_0EE 0x8000
    Return

_05CE:
    GoToIfEq 0x8004, 1, _0631
    CallIfEq 0x402A, 35, _09FE
    CallIfEq 0x402A, 22, _0A40
    CallIfEq 0x402A, 43, _0AF6
    CallIfEq 0x402A, 22, _0B38
    CallIfEq 0x402A, 71, _0BA4
    CallIfEq 0x402A, 10, _0BE6
    GoTo _0687
    End

_0631:
    CallIfEq 0x402B, 35, _09FE
    CallIfEq 0x402B, 23, _0A8E
    CallIfEq 0x402B, 43, _0AF6
    CallIfEq 0x402B, 22, _0B6E
    CallIfEq 0x402B, 71, _0BA4
    CallIfEq 0x402B, 10, _0BE6
    GoTo _0687
    End

_0687:
    CloseMessage
    ScrCmd_0E5 0x8005, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0822
    GoTo _06A8
    End

_06A8:
    GoToIfEq 0x8004, 1, _070B
    CallIfEq 0x402A, 35, _0DFE
    CallIfEq 0x402A, 22, _0E3E
    CallIfEq 0x402A, 43, _0EE8
    CallIfEq 0x402A, 22, _0F28
    CallIfEq 0x402A, 71, _0F8C
    CallIfEq 0x402A, 10, _0FCC
    GoTo _081A
    End

_070B:
    CallIfEq 0x402B, 35, _0DFE
    CallIfEq 0x402B, 23, _0E86
    CallIfEq 0x402B, 43, _0EE8
    CallIfEq 0x402B, 22, _0F5A
    CallIfEq 0x402B, 71, _0F8C
    CallIfEq 0x402B, 10, _0FCC
    GoTo _081A
    End

_0761:
    GoToIfEq 0x8004, 1, _07C4
    CallIfEq 0x402A, 35, _0C28
    CallIfEq 0x402A, 22, _0C64
    CallIfEq 0x402A, 43, _0CF6
    CallIfEq 0x402A, 22, _0D32
    CallIfEq 0x402A, 71, _0D86
    CallIfEq 0x402A, 10, _0DC2
    GoTo _081A
    End

_07C4:
    CallIfEq 0x402B, 35, _0C28
    CallIfEq 0x402B, 23, _0CA0
    CallIfEq 0x402B, 43, _0CF6
    CallIfEq 0x402B, 22, _0D5C
    CallIfEq 0x402B, 71, _0D86
    CallIfEq 0x402B, 10, _0DC2
    GoTo _081A
    End

_081A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0822:
    ScrCmd_0EB
    ReleaseAll
    End

_0828:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 48, _0855
    CallIfEq 0x4001, 123, _085A
    CallIfEq 0x4001, 168, _085F
    Return

_0855:
    Message 16
    Return

_085A:
    Message 38
    Return

_085F:
    Message 64
    Return

_0864:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0891
    CallIfEq 0x4001, 101, _0896
    CallIfEq 0x4001, 189, _089B
    Return

_0891:
    Message 0
    Return

_0896:
    Message 30
    Return

_089B:
    Message 68
    Return

_08A0:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _08E7
    CallIfEq 0x4001, 101, _08EC
    CallIfEq 0x4001, 189, _08F1
    CallIfEq 0x4001, 69, _097C
    CallIfEq 0x4001, 134, _0981
    Return

_08E7:
    Message 4
    Return

_08EC:
    Message 34
    Return

_08F1:
    Message 72
    Return

_08F6:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 101, _0923
    CallIfEq 0x4001, 123, _0928
    CallIfEq 0x4001, 0x1BB, _092D
    Return

_0923:
    Message 8
    Return

_0928:
    Message 42
    Return

_092D:
    Message 84
    Return

_0932:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0952
    CallIfEq 0x4001, 134, _0957
    Return

_0952:
    Message 26
    Return

_0957:
    Message 56
    Return

_095C:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _097C
    CallIfEq 0x4001, 134, _0981
    Return

_097C:
    Message 21
    Return

_0981:
    Message 51
    Return

_0986:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 0x1AC, _09B3
    CallIfEq 0x4001, 0x1B3, _09B8
    CallIfEq 0x4001, 0x1CB, _09BD
    Return

_09B3:
    Message 76
    Return

_09B8:
    Message 80
    Return

_09BD:
    Message 88
    Return

_09C2:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 36, _09EF
    CallIfEq 0x4001, 123, _09F4
    CallIfEq 0x4001, 151, _09F9
    Return

_09EF:
    Message 12
    Return

_09F4:
    Message 46
    Return

_09F9:
    Message 60
    Return

_09FE:
    Call _1060
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 48, _0A31
    CallIfEq 0x4001, 123, _0A36
    CallIfEq 0x4001, 168, _0A3B
    Return

_0A31:
    Message 17
    Return

_0A36:
    Message 39
    Return

_0A3B:
    Message 65
    Return

_0A40:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0A6D
    CallIfEq 0x4001, 101, _0A78
    CallIfEq 0x4001, 189, _0A83
    Return

_0A6D:
    Call _10C7
    Message 1
    Return

_0A78:
    Call _10C7
    Message 31
    Return

_0A83:
    Call _10C7
    Message 69
    Return

_0A8E:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0AD5
    CallIfEq 0x4001, 101, _0AE0
    CallIfEq 0x4001, 189, _0AEB
    CallIfEq 0x4001, 69, _0B8E
    CallIfEq 0x4001, 134, _0B99
    Return

_0AD5:
    Call _112E
    Message 5
    Return

_0AE0:
    Call _112E
    Message 35
    Return

_0AEB:
    Call _112E
    Message 73
    Return

_0AF6:
    Call _1195
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 101, _0B29
    CallIfEq 0x4001, 123, _0B2E
    CallIfEq 0x4001, 0x1BB, _0B33
    Return

_0B29:
    Message 9
    Return

_0B2E:
    Message 43
    Return

_0B33:
    Message 85
    Return

_0B38:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0B58
    CallIfEq 0x4001, 134, _0B63
    Return

_0B58:
    Call _11FC
    Message 27
    Return

_0B63:
    Call _11FC
    Message 57
    Return

_0B6E:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0B8E
    CallIfEq 0x4001, 134, _0B99
    Return

_0B8E:
    Call _11FC
    Message 22
    Return

_0B99:
    Call _11FC
    Message 52
    Return

_0BA4:
    Call _1263
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 0x1AC, _0BD7
    CallIfEq 0x4001, 0x1B3, _0BDC
    CallIfEq 0x4001, 0x1CB, _0BE1
    Return

_0BD7:
    Message 77
    Return

_0BDC:
    Message 81
    Return

_0BE1:
    Message 89
    Return

_0BE6:
    Call _12CA
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 36, _0C19
    CallIfEq 0x4001, 123, _0C1E
    CallIfEq 0x4001, 151, _0C23
    Return

_0C19:
    Message 13
    Return

_0C1E:
    Message 47
    Return

_0C23:
    Message 61
    Return

_0C28:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 48, _0C55
    CallIfEq 0x4001, 123, _0C5A
    CallIfEq 0x4001, 168, _0C5F
    Return

_0C55:
    Message 18
    Return

_0C5A:
    Message 40
    Return

_0C5F:
    Message 66
    Return

_0C64:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0C91
    CallIfEq 0x4001, 101, _0C96
    CallIfEq 0x4001, 189, _0C9B
    Return

_0C91:
    Message 2
    Return

_0C96:
    Message 32
    Return

_0C9B:
    Message 70
    Return

_0CA0:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0CE7
    CallIfEq 0x4001, 101, _0CEC
    CallIfEq 0x4001, 189, _0CF1
    CallIfEq 0x4001, 69, _0D7C
    CallIfEq 0x4001, 134, _0D81
    Return

_0CE7:
    Message 6
    Return

_0CEC:
    Message 36
    Return

_0CF1:
    Message 74
    Return

_0CF6:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 101, _0D23
    CallIfEq 0x4001, 123, _0D28
    CallIfEq 0x4001, 0x1BB, _0D2D
    Return

_0D23:
    Message 10
    Return

_0D28:
    Message 44
    Return

_0D2D:
    Message 86
    Return

_0D32:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0D52
    CallIfEq 0x4001, 134, _0D57
    Return

_0D52:
    Message 28
    Return

_0D57:
    Message 58
    Return

_0D5C:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0D7C
    CallIfEq 0x4001, 134, _0D81
    Return

_0D7C:
    Message 23
    Return

_0D81:
    Message 53
    Return

_0D86:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 0x1AC, _0DB3
    CallIfEq 0x4001, 0x1B3, _0DB8
    CallIfEq 0x4001, 0x1CB, _0DBD
    Return

_0DB3:
    Message 78
    Return

_0DB8:
    Message 82
    Return

_0DBD:
    Message 90
    Return

_0DC2:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 36, _0DEF
    CallIfEq 0x4001, 123, _0DF4
    CallIfEq 0x4001, 151, _0DF9
    Return

_0DEF:
    Message 14
    Return

_0DF4:
    Message 48
    Return

_0DF9:
    Message 62
    Return

_0DFE:
    SetFlag 0xABC
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 48, _0E2F
    CallIfEq 0x4001, 123, _0E34
    CallIfEq 0x4001, 168, _0E39
    Return

_0E2F:
    Message 19
    Return

_0E34:
    Message 41
    Return

_0E39:
    Message 67
    Return

_0E3E:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0E6B
    CallIfEq 0x4001, 101, _0E74
    CallIfEq 0x4001, 189, _0E7D
    Return

_0E6B:
    SetFlag 0xABD
    Message 3
    Return

_0E74:
    SetFlag 0xABD
    Message 33
    Return

_0E7D:
    SetFlag 0xABD
    Message 71
    Return

_0E86:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 6, _0ECD
    CallIfEq 0x4001, 101, _0ED6
    CallIfEq 0x4001, 189, _0EDF
    CallIfEq 0x4001, 69, _0F7A
    CallIfEq 0x4001, 134, _0F83
    Return

_0ECD:
    SetFlag 0xABE
    Message 7
    Return

_0ED6:
    SetFlag 0xABE
    Message 37
    Return

_0EDF:
    SetFlag 0xABE
    Message 75
    Return

_0EE8:
    SetFlag 0xABF
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 101, _0F19
    CallIfEq 0x4001, 123, _0F1E
    CallIfEq 0x4001, 0x1BB, _0F23
    Return

_0F19:
    Message 11
    Return

_0F1E:
    Message 45
    Return

_0F23:
    Message 87
    Return

_0F28:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0F48
    CallIfEq 0x4001, 134, _0F51
    Return

_0F48:
    SetFlag 0xAC0
    Message 29
    Return

_0F51:
    SetFlag 0xAC0
    Message 59
    Return

_0F5A:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _0F7A
    CallIfEq 0x4001, 134, _0F83
    Return

_0F7A:
    SetFlag 0xAC0
    Message 24
    Return

_0F83:
    SetFlag 0xAC0
    Message 54
    Return

_0F8C:
    SetFlag 0xAC1
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 0x1AC, _0FBD
    CallIfEq 0x4001, 0x1B3, _0FC2
    CallIfEq 0x4001, 0x1CB, _0FC7
    Return

_0FBD:
    Message 79
    Return

_0FC2:
    Message 83
    Return

_0FC7:
    Message 91
    Return

_0FCC:
    SetFlag 0xAC2
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 36, _0FFD
    CallIfEq 0x4001, 123, _1002
    CallIfEq 0x4001, 151, _1007
    Return

_0FFD:
    Message 15
    Return

_1002:
    Message 49
    Return

_1007:
    Message 63
    Return

_100C:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _102C
    CallIfEq 0x4001, 134, _1031
    Return

_102C:
    Message 25
    Return

_1031:
    Message 55
    Return

_1036:
    ScrCmd_201 0x4001
    CallIfEq 0x4001, 69, _1056
    CallIfEq 0x4001, 134, _105B
    Return

_1056:
    Message 20
    Return

_105B:
    Message 50
    Return

_1060:
    SetVar 0x8005, 0x173
    CallIfSet 0x97F, _109F
    CallIfSet 0x980, _10A7
    CallIfSet 0x981, _10AF
    CallIfSet 0x982, _10B7
    CallIfSet 0x983, _10BF
    Return

_109F:
    SetVar 0x8005, 0x370
    Return

_10A7:
    SetVar 0x8005, 0x371
    Return

_10AF:
    SetVar 0x8005, 0x372
    Return

_10B7:
    SetVar 0x8005, 0x38C
    Return

_10BF:
    SetVar 0x8005, 0x394
    Return

_10C7:
    SetVar 0x8005, 0x172
    CallIfSet 0x97F, _1106
    CallIfSet 0x980, _110E
    CallIfSet 0x981, _1116
    CallIfSet 0x982, _111E
    CallIfSet 0x983, _1126
    Return

_1106:
    SetVar 0x8005, 0x37E
    Return

_110E:
    SetVar 0x8005, 0x37F
    Return

_1116:
    SetVar 0x8005, 0x380
    Return

_111E:
    SetVar 0x8005, 0x390
    Return

_1126:
    SetVar 0x8005, 0x398
    Return

_112E:
    SetVar 0x8005, 0x171
    CallIfSet 0x97F, _116D
    CallIfSet 0x980, _1175
    CallIfSet 0x981, _117D
    CallIfSet 0x982, _1185
    CallIfSet 0x983, _118D
    Return

_116D:
    SetVar 0x8005, 0x36A
    Return

_1175:
    SetVar 0x8005, 0x36B
    Return

_117D:
    SetVar 0x8005, 0x36C
    Return

_1185:
    SetVar 0x8005, 0x38A
    Return

_118D:
    SetVar 0x8005, 0x392
    Return

_1195:
    SetVar 0x8005, 0x1CC
    CallIfSet 0x97F, _11D4
    CallIfSet 0x980, _11DC
    CallIfSet 0x981, _11E4
    CallIfSet 0x982, _11EC
    CallIfSet 0x983, _11F4
    Return

_11D4:
    SetVar 0x8005, 0x376
    Return

_11DC:
    SetVar 0x8005, 0x377
    Return

_11E4:
    SetVar 0x8005, 0x378
    Return

_11EC:
    SetVar 0x8005, 0x38E
    Return

_11F4:
    SetVar 0x8005, 0x396
    Return

_11FC:
    SetVar 0x8005, 0x170
    CallIfSet 0x97F, _123B
    CallIfSet 0x980, _1243
    CallIfSet 0x981, _124B
    CallIfSet 0x982, _1253
    CallIfSet 0x983, _125B
    Return

_123B:
    SetVar 0x8005, 0x373
    Return

_1243:
    SetVar 0x8005, 0x374
    Return

_124B:
    SetVar 0x8005, 0x375
    Return

_1253:
    SetVar 0x8005, 0x38D
    Return

_125B:
    SetVar 0x8005, 0x395
    Return

_1263:
    SetVar 0x8005, 0x1D1
    CallIfSet 0x97F, _12A2
    CallIfSet 0x980, _12AA
    CallIfSet 0x981, _12B2
    CallIfSet 0x982, _12BA
    CallIfSet 0x983, _12C2
    Return

_12A2:
    SetVar 0x8005, 0x379
    Return

_12AA:
    SetVar 0x8005, 0x37A
    Return

_12B2:
    SetVar 0x8005, 0x37B
    Return

_12BA:
    SetVar 0x8005, 0x38F
    Return

_12C2:
    SetVar 0x8005, 0x397
    Return

_12CA:
    SetVar 0x8005, 0x1AF
    CallIfSet 0x97F, _1309
    CallIfSet 0x980, _1311
    CallIfSet 0x981, _1319
    CallIfSet 0x982, _1321
    CallIfSet 0x983, _1329
    Return

_1309:
    SetVar 0x8005, 0x36D
    Return

_1311:
    SetVar 0x8005, 0x36E
    Return

_1319:
    SetVar 0x8005, 0x36F
    Return

_1321:
    SetVar 0x8005, 0x38B
    Return

_1329:
    SetVar 0x8005, 0x393
    Return

_1331:
    GoToIfSet 0xABC, _13F7
    Return

_133E:
    ScrCmd_201 0x4001
    GoToIfEq 0x4001, 6, _136B
    GoToIfEq 0x4001, 101, _136B
    GoToIfEq 0x4001, 189, _136B
    Return

_136B:
    GoToIfSet 0xABD, _13F7
    Return

_1378:
    ScrCmd_201 0x4001
    GoToIfEq 0x4001, 69, _13B0
    GoToIfEq 0x4001, 134, _13B0
    GoToIfSet 0xABE, _13F7
    Return

_13A3:
    GoToIfSet 0xABF, _13F7
    Return

_13B0:
    ScrCmd_201 0x4001
    GoToIfEq 0x4001, 69, _13D0
    GoToIfEq 0x4001, 134, _13D0
    Return

_13D0:
    GoToIfSet 0xAC0, _13F7
    Return

_13DD:
    GoToIfSet 0xAC1, _13F7
    Return

_13EA:
    GoToIfSet 0xAC2, _13F7
    Return

_13F7:
    SetVar 0x8006, 1
    Return

    .byte 0

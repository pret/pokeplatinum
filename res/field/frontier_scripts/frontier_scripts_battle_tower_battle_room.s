# include "macros/frscrcmd.inc"

    .data

    .long _00E2 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0018:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0030
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0003
    .short 0x8009
    .byte 0x00
    .short 0x0080
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_003C:
    .short 0x0002
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_004C:
    .short 0x0022
    .short 0x0001
    .short 0x0004
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0003
    .short 0x0000
    .short 0x0001
    .short 0x0004
    .short 0x0003
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_006C:
    .short 0x0007
    .short 0x0003
    .short 0x0005
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_007C:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0084:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_008C:
    .short 0x0007
    .short 0x0001
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0006
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00AC:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00B4:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00BC:
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0001
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00CC:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00D4:
    .short 0x000B
    .short 0x0003
    .short 0x0009
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

_00E2:
    FrontierScrCmd_6C
    FrontierScrCmd_3E 0x40D9, 0x8001
    Call _0176
    Call _018F
    FrontierScrCmd_84 43, 0, 0x8008
    GoToIfEq 0x8008, 4, _015A
    GoToIfEq 0x8008, 5, _015A
    GoTo _0168
    End

_0120:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0018
    SetVar 0x8003, 0
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    GoToIfEq 0x8001, 1, _01A0
    GoToIfEq 0x8001, 2, _0394
    End

_015A:
    SetVar 0x800F, 235
    GoTo _0120
    End

_0168:
    SetVar 0x800F, 231
    GoTo _0120
    End

_0176:
    GoToIfEq 0x8001, 0, _018D
    FrontierScrCmd_84 55, 0, 0x8009
    Return

_018D:
    Return

_018F:
    GoToIfEq 0x8001, 3, _019E
    Return

_019E:
    Return

_01A0:
    FrontierScrCmd_3D 0x40D9, 3
    FrontierScrCmd_3E 0x40D9, 0x8001
    FrontierScrCmd_84 100, 0, 0x8008
    GoToIfEq 0x8008, 1, _03EF
    Call _03CF
    GoTo _01CF
    End

_01CF:
    Call _046D
    GoToIfEq 0x800C, 0, _020F
    Call _0382
    GoToIfEq 0x8008, 1, _0217
    Call _034C
    Call _0360
    Call _0374
    GoTo _0741
    End

_020F:
    GoTo _02DE
    End

_0217:
    GoTo _0273
    End

_021F:
    GoTo _0227
    End

_0227:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0328
    FrontierScrCmd_84 38, 0, 0x8008
    FrontierScrCmd_11 20
    Call _0330
    FrontierScrCmd_12
    GoTo _03EF
    End

_0273:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0328
    FrontierScrCmd_84 38, 0, 0x8008
    FrontierScrCmd_84 43, 0, 0x8008
    GoToIfEq 0x8008, 5, _02D4
    FrontierScrCmd_11 19
    Call _0330
    FrontierScrCmd_12
    GoTo _03EF
    End

_02D4:
    FrontierScrCmd_12
    GoTo _03EF
    End

_02DE:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0320
    FrontierScrCmd_12
    FrontierScrCmd_84 37, 0, 0x8008
    GoTo _03EF
    End

_0320:
    Call _0641
    Return

_0328:
    Call _0633
    Return

_0330:
    FrontierScrCmd_84 46, 0, 0x8008
    FrontierScrCmd_7A 1, 0x8008
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 21
    FrontierScrCmd_58 0x4C5
    FrontierScrCmd_59
    Return

_034C:
    FrontierScrCmd_28 2, _008C
    FrontierScrCmd_29
    FrontierScrCmd_25 2
    FrontierScrCmd_23 0x800B
    Return

_0360:
    FrontierScrCmd_28 3, _00A0
    FrontierScrCmd_28 1, _00AC
    FrontierScrCmd_29
    Return

_0374:
    FrontierScrCmd_11 0
    FrontierScrCmd_58 0x48E
    FrontierScrCmd_59
    FrontierScrCmd_39
    Return

_0382:
    FrontierScrCmd_84 34, 0, 0x8008
    FrontierScrCmd_84 35, 0, 0x8008
    Return

_0394:
    FrontierScrCmd_3D 0x40D9, 3
    FrontierScrCmd_3E 0x40D9, 0x8001
    SetVar 0x8003, 1
    FrontierScrCmd_84 100, 0, 0x8008
    GoToIfEq 0x8008, 1, _03EF
    Call _03CF
    Call _03DB
    GoTo _0741
    End

_03CF:
    FrontierScrCmd_28 3, _004C
    FrontierScrCmd_29
    Return

_03DB:
    FrontierScrCmd_28 1, _00AC
    FrontierScrCmd_28 3, _00CC
    FrontierScrCmd_29
    Return

_03EF:
    FrontierScrCmd_6F
    WaitTime 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    FrontierScrCmd_84 43, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 4, _043F
    GoToIfEq 0x8010, 5, _043F
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_02

_043F:
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_02

_0459:
    FrontierScrCmd_3D 0x40D9, 0
    FrontierScrCmd_3E 0x40D9, 0x8001
    Call _046D
    End

_046D:
    FrontierScrCmd_84 40, 0, 0x8008
    Call _04A8
    FrontierScrCmd_85 0
    FrontierScrCmd_3A
    FrontierScrCmd_12
    Call _04C8
    FrontierScrCmd_3F 0
    FrontierScrCmd_84 59, 0, 0x8008
    FrontierScrCmd_87
    FrontierScrCmd_88 0x800C
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    Return

_04A8:
    FrontierScrCmd_84 41, 0, 0x800B
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    FrontierScrCmd_28 2, _006C
    FrontierScrCmd_29
    Return

_04C8:
    FrontierScrCmd_28 3, _007C
    FrontierScrCmd_28 2, _0084
    FrontierScrCmd_29
    Return

_04DC:
    FrontierScrCmd_84 33, 0, 0x800C
    FrontierScrCmd_7A 0, 0x800C
    FrontierScrCmd_11 1
    FrontierScrCmd_84 43, 0, 0x8008
    GoToIfNe 0x8008, 0, _052C
    FrontierScrCmd_84 36, 0, 0x8008
    GoToIfEq 0x8008, 20, _078C
    GoToIfEq 0x8008, 48, _078C
    GoTo _052C
    End

_052C:
    GoToIfEq 0x8003, 0, _0554
    FrontierScrCmd_1A 31, 11, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    GoTo _0577
    End

_0554:
    FrontierScrCmd_1A 31, 9, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_1C 0x110, 255, 1
    GoTo _0577
    End

_0577:
    FrontierScrCmd_1C 147, 255, 2
    FrontierScrCmd_1C 148, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_12
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 0, _05CD
    GoToIfEq 0x8010, 1, _05F5
    GoToIfEq 0x8010, 2, _06B3
    GoToIfEq 0x8010, 3, _0711
    GoTo _05CD
    End

_05CD:
    Call _05E1
    SetVar 0x8003, 0
    GoTo _01CF
    End

_05E1:
    FrontierScrCmd_28 3, _00B4
    FrontierScrCmd_28 1, _00BC
    FrontierScrCmd_29
    Return

_05F5:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _04DC
    Call _0633
    GoTo _04DC
    End

_0633:
    Call _0655
    GoTo _065F
    End

_0641:
    Call _0655
    AddVar 0x8005, 1
    GoTo _065F
    End

_0655:
    FrontierScrCmd_84 36, 0, 0x8005
    Return

_065F:
    GoTo _0667
    End

_0667:
    SetVar 0x8003, 1
    FrontierScrCmd_0F 13
    FrontierScrCmd_84 43, 0, 0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 1, 0x8008, 0x8005, 0x8005
    HideSavingIcon
    GoToIfEq 0x8005, 1, _069A
    FrontierScrCmd_11 11
    Return

_069A:
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 10
    Return

_06A7:
    FrontierScrCmd_11 9
    Return

_06AD:
    FrontierScrCmd_11 12
    Return

_06B3:
    FrontierScrCmd_11 2
    ShowYesNoMenu 0x8008, MENU_YES
    FrontierScrCmd_12
    GoToIfEq 0x8008, 0, _06D3
    GoTo _04DC
    End

_06D3:
    FrontierScrCmd_3D 0x40D8, 2
    FrontierScrCmd_84 39, 0, 0x8008
    FrontierScrCmd_86
    FrontierScrCmd_11 4
    ShowSavingIcon
    FrontierScrCmd_72 0x8008
    HideSavingIcon
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_57 0x61B
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_6F
    FrontierScrCmd_84 2, 0, 0x8008
    End

_0711:
    FrontierScrCmd_11 3
    ShowYesNoMenu 0x8008, MENU_NO
    FrontierScrCmd_12
    GoToIfEq 0x8008, 0, _0731
    GoTo _04DC
    End

_0731:
    FrontierScrCmd_84 37, 0, 0x8008
    GoTo _03EF
    End

_0741:
    FrontierScrCmd_84 43, 0, 0x8008
    GoToIfNe 0x8008, 0, _04DC
    FrontierScrCmd_84 36, 0, 0x8008
    GoToIfEq 0x8008, 20, _0780
    GoToIfEq 0x8008, 48, _0780
    GoTo _04DC
    End

_0780:
    FrontierScrCmd_11 14
    GoTo _078C
    End

_078C:
    GoToIfEq 0x8003, 0, _07B4
    FrontierScrCmd_1A 31, 11, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    GoTo _07D7
    End

_07B4:
    FrontierScrCmd_1A 31, 9, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_1C 0x110, 255, 1
    GoTo _07D7
    End

_07D7:
    FrontierScrCmd_1C 147, 255, 2
    FrontierScrCmd_1C 148, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_12
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 0, _082D
    GoToIfEq 0x8010, 1, _05F5
    GoToIfEq 0x8010, 2, _06B3
    GoToIfEq 0x8010, 3, _0711
    GoTo _082D
    End

_082D:
    Call _05E1
    SetVar 0x8003, 0
    FrontierScrCmd_84 40, 0, 0x8008
    Call _092C
    FrontierScrCmd_84 36, 0, 0x8008
    GoToIfEq 0x8008, 48, _08F1
    FrontierScrCmd_7B 0
    FrontierScrCmd_80 1
    FrontierScrCmd_11 15
    GoTo _086E
    End

_086E:
    FrontierScrCmd_12
    Call _04C8
    FrontierScrCmd_48 59
    FrontierScrCmd_47 1
    FrontierScrCmd_87
    FrontierScrCmd_88 0x800C
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    GoToIfEq 0x800C, 0, _020F
    FrontierScrCmd_84 36, 0, 0x8008
    GoToIfEq 0x8008, 48, _08FD
    FrontierScrCmd_3E 0x404F, 0x8008
    CallIfEq 0x8008, 0, _08D9
    FrontierScrCmd_11 17
    FrontierScrCmd_84 44, 1, 0x8008
    GoTo _08E1
    End

_08D9:
    FrontierScrCmd_3D 0x404F, 1
    Return

_08E1:
    FrontierScrCmd_12
    Call _0382
    GoTo _021F
    End

_08F1:
    FrontierScrCmd_11 16
    GoTo _086E
    End

_08FD:
    FrontierScrCmd_3E 0x404F, 0x8008
    CallIfEq 0x8008, 2, _0924
    FrontierScrCmd_11 18
    FrontierScrCmd_84 44, 2, 0x8008
    GoTo _08E1
    End

_0924:
    FrontierScrCmd_3D 0x404F, 3
    Return

_092C:
    SetVar 0x800B, 169
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    FrontierScrCmd_28 2, _00D4
    FrontierScrCmd_29
    Return

    .balign 4, 0

#include "generated/sdat.h"
#include "constants/scrcmd.h"

    .set FALSE, 0
    .set TRUE, 1

    .macro Noop
    .short 0x000
    .endm

    .macro End
    .short 0x001
    .endm

    .macro FrontierScrCmd_02
    .short 0x002
    .endm

    .macro FrontierScrCmd_03 arg0
    .short 0x003
    .short \arg0
    .endm

    .macro FrontierScrCmd_04 arg0, arg1
    .short 0x004
    .short \arg0
    .short \arg1
    .endm

    .macro WaitTime frames, countdownVarID
    .short 0x005
    .short \frames
    .short \countdownVarID
    .endm

    .macro SetVar destVarID, valueOrVarID
    .if \valueOrVarID < 0x8000
        .short 0x006 /* SetVarFromValue */
    .else
        .short 0x007 /* SetVarFromVar */
    .endif
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro AddVar destVarID, valueOrVarID
    .short 0x008
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro SubVar destVarID, valueOrVarID
    .short 0x009
    .short \destVarID
    .short \valueOrVarID
    .endm

    .macro GoTo offset
    .short 0x00A
    .long \offset-.-4
    .endm

    .macro GoToIf condition, offset
    .short 0x00B
    .byte \condition
    .long \offset-.-4
    .endm

    .macro Call offset
    .short 0x00C
    .long \offset-.-4
    .endm

    .macro Return
    .short 0x00D
    .endm

    .macro CallIf condition, offset
    .short 0x00E
    .byte \condition
    .long \offset-.-4
    .endm

    .macro MessageInstant messageID
    .short 0x00F
    .short \messageID
    .endm

    .macro MessageNoSkip messageID
    .short 0x010
    .short \messageID
    .endm

    .macro Message messageID
    .short 0x011
    .short \messageID
    .endm

    .macro FrontierScrCmd_12
    .short 0x012
    .endm

    .macro FrontierScrCmd_13 arg0, arg1, arg2, arg3
    .short 0x013
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_14
    .short 0x014
    .endm

    .macro FrontierScrCmd_15 arg0, arg1, arg2, arg3, arg4
    .short 0x015
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro FrontierScrCmd_16 arg0, arg1, arg2, arg3, arg4
    .short 0x016
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro FrontierScrCmd_17 arg0, arg1
    .short 0x017
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_18 arg0, arg1, arg2
    .short 0x018
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_19
    .short 0x019
    .endm

    .macro FrontierScrCmd_1A arg0, arg1, arg2, arg3, arg4
    .short 0x01A
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro FrontierScrCmd_1B arg0, arg1, arg2, arg3, arg4
    .short 0x01B
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .byte \arg3
    .short \arg4
    .endm

    .macro FrontierScrCmd_1C arg0, arg1, arg2
    .short 0x01C
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_1D
    .short 0x01D
    .endm

    .macro FrontierScrCmd_1E
    .short 0x01E
    .endm

    .macro ShowYesNoMenu destVarID, cursorStart
    .short 0x01F
    .short \destVarID
    .byte \cursorStart
    .endm

    .macro CompareVar varID, valueOrVarID
    .if \valueOrVarID < 0x8000
        .short 0x020 /* CompareVarToValue */
    .else
        .short 0x021 /* CompareVarToVar */
    .endif
    .short \varID
    .short \valueOrVarID
    .endm

    .macro FrontierScrCmd_22 offset
    .short 0x022
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_23 arg0
    .short 0x023
    .short \arg0
    .endm

    .macro FrontierScrCmd_24 offset
    .short 0x024
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_25 arg0
    .short 0x025
    .short \arg0
    .endm

    .macro FrontierScrCmd_26 arg0, arg1
    .short 0x026
    .short \arg0
    .byte \arg1
    .endm

    .macro FrontierScrCmd_27
    .short 0x027
    .endm

    .macro FrontierScrCmd_28 arg0, offset
    .short 0x028
    .short \arg0
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_29
    .short 0x029
    .endm

    .macro FrontierScrCmd_2A offset
    .short 0x02A
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_2B arg0
    .short 0x02B
    .short \arg0
    .endm

    .macro FrontierScrCmd_2C offset
    .short 0x02C
    .long \offset-.-4
    .endm

    .macro FrontierScrCmd_2D arg0
    .short 0x02D
    .short \arg0
    .endm

    .macro FrontierScrCmd_2E arg0, arg1
    .short 0x02E
    .short \arg0
    .byte \arg1
    .endm

    .macro FrontierScrCmd_2F arg0
    .short 0x02F
    .short \arg0
    .endm

    .macro FrontierScrCmd_30 arg0, arg1
    .short 0x030
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_31 arg0, arg1
    .short 0x031
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_32 arg0
    .short 0x032
    .short \arg0
    .endm

    .macro FrontierScrCmd_33 arg0
    .short 0x033
    .short \arg0
    .endm

    .macro FrontierScrCmd_34
    .short 0x034
    .endm

    .macro FrontierScrCmd_35 arg0
    .short 0x035
    .short \arg0
    .endm

    .macro FrontierScrCmd_36
    .short 0x036
    .endm

    .macro FrontierScrCmd_37
    .short 0x037
    .endm

    .macro FrontierScrCmd_38 arg0, arg1
    .short 0x038
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_39
    .short 0x039
    .endm

    .macro FrontierScrCmd_3A
    .short 0x03A
    .endm

    .macro FrontierScrCmd_3B arg0
    .short 0x03B
    .short \arg0
    .endm

    .macro FrontierScrCmd_3C arg0
    .short 0x03C
    .short \arg0
    .endm

    .macro FrontierScrCmd_3D arg0, arg1
    .short 0x03D
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_3E arg0, arg1
    .short 0x03E
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_3F arg0
    .short 0x03F
    .short \arg0
    .endm

    .macro FrontierScrCmd_40 arg0
    .short 0x040
    .short \arg0
    .endm

    .macro FrontierScrCmd_41 arg0, arg1, arg2
    .short 0x041
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_42 arg0
    .short 0x042
    .short \arg0
    .endm

    .macro FrontierScrCmd_43 arg0, arg1
    .short 0x043
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_44
    .short 0x044
    .endm

    .macro FrontierScrCmd_45 arg0, arg1, arg2, arg3, arg4, arg5
    .short 0x045
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_46 arg0
    .short 0x046
    .short \arg0
    .endm

    .macro FrontierScrCmd_47 arg0
    .short 0x047
    .short \arg0
    .endm

    .macro FrontierScrCmd_48 arg0
    .short 0x048
    .short \arg0
    .endm

    .macro FrontierScrCmd_49 arg0, arg1
    .short 0x049
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_4A arg0
    .short 0x04A
    .short \arg0
    .endm

    .macro FrontierScrCmd_4B arg0
    .short 0x04B
    .short \arg0
    .endm

    .macro FrontierScrCmd_4C arg0, arg1, arg2, arg3
    .short 0x04C
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_4D
    .short 0x04D
    .endm

    .macro FrontierScrCmd_4E arg0, arg1, arg2, arg3, arg4, arg5
    .short 0x04E
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_4F
    .short 0x04F
    .endm

    .macro FrontierScrCmd_50
    .short 0x050
    .endm

    .macro FrontierScrCmd_51
    .short 0x051
    .endm

    .macro FrontierScrCmd_52
    .short 0x052
    .endm

    .macro FrontierScrCmd_53 arg0
    .short 0x053
    .short \arg0
    .endm

    .macro FrontierScrCmd_54
    .short 0x054
    .endm

    .macro PlaySoundEffect seqID
    .short 0x055
    .short \seqID
    .endm

    .macro StopSoundEffect seqID
    .short 0x056
    .short \seqID
    .endm

    .macro WaitSoundEffect seqID
    .short 0x057
    .short \seqID
    .endm

    .macro PlayFanfare seqID
    .short 0x058
    .short \seqID
    .endm

    .macro WaitFanfare
    .short 0x059
    .endm

    .macro PlayBGM seqID
    .short 0x05A
    .short \seqID
    .endm

    .macro StopBGM seqID
    .short 0x05B
    .short \seqID
    .endm

    .macro FrontierScrCmd_5C arg0, arg1, arg2
    .short 0x05C
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_5D arg0
    .short 0x05D
    .short \arg0
    .endm

    .macro FrontierScrCmd_5E
    .short 0x05E
    .endm

    .macro FrontierScrCmd_5F
    .short 0x05F
    .endm

    .macro FrontierScrCmd_60
    .short 0x060
    .endm

    .macro FrontierScrCmd_61
    .short 0x061
    .endm

    .macro FrontierScrCmd_62
    .short 0x062
    .endm

    .macro FrontierScrCmd_63
    .short 0x063
    .endm

    .macro FrontierScrCmd_64
    .short 0x064
    .endm

    .macro FrontierScrCmd_65
    .short 0x065
    .endm

    .macro FrontierScrCmd_66
    .short 0x066
    .endm

    .macro FrontierScrCmd_67 arg0, arg1, arg2, arg3
    .short 0x067
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_68 arg0
    .short 0x068
    .short \arg0
    .endm

    .macro FrontierScrCmd_69 arg0, arg1, arg2
    .short 0x069
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_6A arg0
    .short 0x06A
    .short \arg0
    .endm

    .macro FrontierScrCmd_6B arg0
    .short 0x06B
    .byte \arg0
    .endm

    .macro FrontierScrCmd_6C
    .short 0x06C
    .endm

    .macro FrontierScrCmd_6D arg0, arg1, arg2, arg3
    .short 0x06D
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_6E
    .short 0x06E
    .endm

    .macro FrontierScrCmd_6F
    .short 0x06F
    .endm

    .macro FrontierScrCmd_70 arg0
    .short 0x070
    .short \arg0
    .endm

    .macro FrontierScrCmd_71 arg0
    .short 0x071
    .short \arg0
    .endm

    .macro FrontierScrCmd_72 arg0
    .short 0x072
    .short \arg0
    .endm

    .macro FrontierScrCmd_73 arg0
    .short 0x073
    .short \arg0
    .endm

    .macro FrontierScrCmd_74
    .short 0x074
    .endm

    .macro FrontierScrCmd_75 arg0
    .short 0x075
    .short \arg0
    .endm

    .macro FrontierScrCmd_76 arg0
    .short 0x076
    .short \arg0
    .endm

    .macro ShowSavingIcon
    .short 0x077
    .endm

    .macro HideSavingIcon
    .short 0x078
    .endm

    .macro FrontierScrCmd_79 arg0, arg1
    .short 0x079
    .byte \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_7A arg0, arg1
    .short 0x07A
    .byte \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_7B arg0
    .short 0x07B
    .byte \arg0
    .endm

    .macro FrontierScrCmd_7C arg0
    .short 0x07C
    .byte \arg0
    .endm

    .macro FrontierScrCmd_7D arg0, arg1
    .short 0x07D
    .byte \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_7E arg0, arg1, arg2, arg3
    .short 0x07E
    .byte \arg0
    .short \arg1
    .short \arg2
    .byte \arg3
    .endm

    .macro FrontierScrCmd_7F arg0, arg1
    .short 0x07F
    .byte \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_80 arg0
    .short 0x080
    .byte \arg0
    .endm

    .macro FrontierScrCmd_81 arg0
    .short 0x081
    .short \arg0
    .endm

    .macro FrontierScrCmd_82 arg0
    .short 0x082
    .short \arg0
    .endm

    .macro FrontierScrCmd_83 arg0
    .short 0x083
    .short \arg0
    .endm

    .macro FrontierScrCmd_84 arg0, arg1, arg2
    .short 0x084
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_85 arg0
    .short 0x085
    .byte \arg0
    .endm

    .macro FrontierScrCmd_86
    .short 0x086
    .endm

    .macro FrontierScrCmd_87
    .short 0x087
    .endm

    .macro FrontierScrCmd_88 arg0
    .short 0x088
    .short \arg0
    .endm

    .macro FrontierScrCmd_89 arg0, arg1, arg2
    .short 0x089
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_8A arg0, arg1
    .short 0x08A
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_8B arg0, arg1, arg2, arg3
    .short 0x08B
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_8C arg0
    .short 0x08C
    .short \arg0
    .endm

    .macro FrontierScrCmd_8D
    .short 0x08D
    .endm

    .macro FrontierScrCmd_8E
    .short 0x08E
    .endm

    .macro FrontierScrCmd_8F
    .short 0x08F
    .endm

    .macro FrontierScrCmd_90
    .short 0x090
    .endm

    .macro FrontierScrCmd_91 arg0, arg1, arg2, arg3
    .short 0x091
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_92 arg0
    .short 0x092
    .short \arg0
    .endm

    .macro FrontierScrCmd_93 arg0, arg1, arg2
    .short 0x093
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_94 arg0
    .short 0x094
    .short \arg0
    .endm

    .macro FrontierScrCmd_95 arg0
    .short 0x095
    .byte \arg0
    .endm

    .macro FrontierScrCmd_96 arg0
    .short 0x096
    .short \arg0
    .endm

    .macro FrontierScrCmd_97 arg0, arg1, arg2, arg3, arg4, arg5
    .short 0x097
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_98 arg0
    .short 0x098
    .short \arg0
    .endm

    .macro FrontierScrCmd_99
    .short 0x099
    .endm

    .macro FrontierScrCmd_9A
    .short 0x09A
    .endm

    .macro FrontierScrCmd_9B
    .short 0x09B
    .endm

    .macro FrontierScrCmd_9C
    .short 0x09C
    .endm

    .macro FrontierScrCmd_9D
    .short 0x09D
    .endm

    .macro FrontierScrCmd_9E
    .short 0x09E
    .endm

    .macro FrontierScrCmd_9F
    .short 0x09F
    .endm

    .macro FrontierScrCmd_A0 arg0, arg1, arg2, arg3
    .short 0x0A0
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_A1 arg0
    .short 0x0A1
    .short \arg0
    .endm

    .macro FrontierScrCmd_A2 arg0, arg1, arg2
    .short 0x0A2
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_A3 arg0
    .short 0x0A3
    .short \arg0
    .endm

    .macro FrontierScrCmd_A4
    .short 0x0A4
    .endm

    .macro FrontierScrCmd_A5 arg0
    .short 0x0A5
    .short \arg0
    .endm

    .macro FrontierScrCmd_A6 arg0, arg1
    .short 0x0A6
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_A7 arg0, arg1
    .short 0x0A7
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_A8 arg0, arg1
    .short 0x0A8
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_A9 arg0
    .short 0x0A9
    .byte \arg0
    .endm

    .macro FrontierScrCmd_AA
    .short 0x0AA
    .endm

    .macro FrontierScrCmd_AB
    .short 0x0AB
    .endm

    .macro FrontierScrCmd_AC arg0, arg1, arg2, arg3
    .short 0x0AC
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_AD arg0
    .short 0x0AD
    .short \arg0
    .endm

    .macro FrontierScrCmd_AE arg0, arg1
    .short 0x0AE
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_AF arg0, arg1, arg2
    .short 0x0AF
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_B0 arg0, arg1
    .short 0x0B0
    .short \arg0
    .short \arg1
    .endm

    .macro FrontierScrCmd_B1 arg0
    .short 0x0B1
    .short \arg0
    .endm

    .macro FrontierScrCmd_B2 arg0, arg1, arg2, arg3
    .short 0x0B2
    .byte \arg0
    .byte \arg1
    .byte \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_B3
    .short 0x0B3
    .endm

    .macro FrontierScrCmd_B4 arg0
    .short 0x0B4
    .short \arg0
    .endm

    .macro FrontierScrCmd_B5
    .short 0x0B5
    .endm

    .macro FrontierScrCmd_B6
    .short 0x0B6
    .endm

    .macro FrontierScrCmd_B7
    .short 0x0B7
    .endm

    .macro FrontierScrCmd_B8 arg0, arg1, arg2, arg3, arg4, arg5
    .short 0x0B8
    .short \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .short \arg4
    .short \arg5
    .endm

    .macro FrontierScrCmd_B9 arg0
    .short 0x0B9
    .short \arg0
    .endm

    .macro FrontierScrCmd_BA
    .short 0x0BA
    .endm

    .macro FrontierScrCmd_BB
    .short 0x0BB
    .endm

    .macro FrontierScrCmd_BC
    .short 0x0BC
    .endm

    .macro FrontierScrCmd_BD
    .short 0x0BD
    .endm

    .macro FrontierScrCmd_BE
    .short 0x0BE
    .endm

    .macro FrontierScrCmd_BF arg0, arg1, arg2, arg3
    .short 0x0BF
    .byte \arg0
    .short \arg1
    .short \arg2
    .short \arg3
    .endm

    .macro FrontierScrCmd_C0 arg0
    .short 0x0C0
    .short \arg0
    .endm

    .macro FrontierScrCmd_C1 arg0, arg1, arg2
    .short 0x0C1
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_C2 arg0
    .short 0x0C2
    .short \arg0
    .endm

    .macro FrontierScrCmd_C3
    .short 0x0C3
    .endm

    .macro FrontierScrCmd_C4 arg0
    .short 0x0C4
    .byte \arg0
    .endm

    .macro FrontierScrCmd_C5
    .short 0x0C5
    .endm

    .macro FrontierScrCmd_C6 arg0, arg1, arg2
    .short 0x0C6
    .short \arg0
    .short \arg1
    .short \arg2
    .endm

    .macro FrontierScrCmd_C7
    .short 0x0C7
    .endm

    .macro FrontierScrCmd_C8 arg0
    .short 0x0C8
    .short \arg0
    .endm

    .macro FrontierScrCmd_C9 arg0
    .short 0x0C9
    .short \arg0
    .endm

    .macro FrontierScrCmd_CA arg0
    .short 0x0CA
    .byte \arg0
    .endm

    .macro FrontierScrCmd_CB arg0
    .short 0x0CB
    .byte \arg0
    .endm



    .macro GoToIfLt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 0, \offset
    .endm

	.macro GoToIfEq varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 1, \offset
    .endm

    .macro GoToIfGt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 2, \offset
    .endm

    .macro GoToIfLe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 3, \offset
    .endm

    .macro GoToIfGe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 4, \offset
    .endm

    .macro GoToIfNe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    GoToIf 5, \offset
    .endm

    .macro CallIfLt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 0, \offset
    .endm

    .macro CallIfEq varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 1, \offset
    .endm

    .macro CallIfGt varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 2, \offset
    .endm

    .macro CallIfLe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 3, \offset
    .endm

    .macro CallIfGe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 4, \offset
    .endm

    .macro CallIfNe varID, valueOrVarID, offset
    CompareVar \varID, \valueOrVarID
    CallIf 5, \offset
    .endm



    .text
    .globl _start
_start:

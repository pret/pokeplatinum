    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _0068-.-4
    .long _00B6-.-4
    .long _0104-.-4
    .long _01FD-.-4
    .long _024B-.-4
    .short 0xFD13

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8000, 1
    ScrCmd_016 _002E
    End

_002E:
    ScrCmd_01A _0299
    ScrCmd_01A _029E
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _031D
    ScrCmd_011 0x8008, 0xFFFE
    ScrCmd_01C 1, _031D
    ScrCmd_01A _032B
    ScrCmd_016 _002E
    End

_0068:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8000, 1
    ScrCmd_016 _007C
    End

_007C:
    ScrCmd_01A _0299
    ScrCmd_01A _029E
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _031D
    ScrCmd_011 0x8008, 0xFFFE
    ScrCmd_01C 1, _031D
    ScrCmd_01A _032B
    ScrCmd_016 _007C
    End

_00B6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8000, 2
    ScrCmd_016 _00CA
    End

_00CA:
    ScrCmd_01A _0299
    ScrCmd_01A _029E
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _031D
    ScrCmd_011 0x8008, 0xFFFE
    ScrCmd_01C 1, _031D
    ScrCmd_01A _032B
    ScrCmd_016 _00CA
    End

_0104:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8000, 5
    ScrCmd_016 _0118
    End

_0118:
    ScrCmd_01A _0299
    ScrCmd_01A _029E
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _031D
    ScrCmd_011 0x8008, 0xFFFE
    ScrCmd_01C 1, _031D
    ScrCmd_2CC 1, 0x8001, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0174
    ScrCmd_2CC 2, 0x8001, 0x800C
    ScrCmd_0DA 0, 0x800C, 0, 0
    ScrCmd_02C 7
    ScrCmd_016 _017F
    End

_0174:
    ScrCmd_02C 6
    ScrCmd_016 _017F
    End

_017F:
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8004, 0
    ScrCmd_028 0x8005, 0
    ScrCmd_016 _0199
    End

_0199:
    ScrCmd_01A _02BD
    ScrCmd_011 0x8002, 9
    ScrCmd_01C 1, _0118
    ScrCmd_011 0x8002, 0xFFFE
    ScrCmd_01C 1, _0118
    ScrCmd_028 0x8003, 0
    ScrCmd_028 0x8006, 0
    ScrCmd_028 0x8007, 0
    ScrCmd_016 _01D3
    End

_01D3:
    ScrCmd_2DE 0x8001, 0x8002, 0x8003, 0x8006, 0x8007
    ScrCmd_011 0x8003, 0xFFFE
    ScrCmd_01C 1, _0199
    ScrCmd_01A _032B
    ScrCmd_02C 6
    ScrCmd_016 _01D3
    End

_01FD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8000, 4
    ScrCmd_016 _0211
    End

_0211:
    ScrCmd_01A _0299
    ScrCmd_01A _029E
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _031D
    ScrCmd_011 0x8008, 0xFFFE
    ScrCmd_01C 1, _031D
    ScrCmd_01A _032B
    ScrCmd_016 _0211
    End

_024B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8000, 6
    ScrCmd_016 _025F
    End

_025F:
    ScrCmd_01A _0299
    ScrCmd_01A _029E
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _031D
    ScrCmd_011 0x8008, 0xFFFE
    ScrCmd_01C 1, _031D
    ScrCmd_01A _032B
    ScrCmd_016 _025F
    End

_0299:
    ScrCmd_02C 0
    ScrCmd_01B

_029E:
    ScrCmd_041 31, 9, 0, 1, 0x8001
    ScrCmd_33A 1
    ScrCmd_042 1, 0
    ScrCmd_042 2, 1
    ScrCmd_042 3, 2
    ScrCmd_042 4, 3
    ScrCmd_043
    ScrCmd_01B

_02BD:
    ScrCmd_045 25, 1, 0, 1, 0x8002
    ScrCmd_046 8, 0xFF, 0
    ScrCmd_046 9, 0xFF, 1
    ScrCmd_046 10, 0xFF, 2
    ScrCmd_046 11, 0xFF, 3
    ScrCmd_046 12, 0xFF, 4
    ScrCmd_046 13, 0xFF, 5
    ScrCmd_046 14, 0xFF, 6
    ScrCmd_046 15, 0xFF, 7
    ScrCmd_046 16, 0xFF, 8
    ScrCmd_046 5, 0xFF, 9
    ScrCmd_306 0x8004, 0x8005
    ScrCmd_01B

_031D:
    ScrCmd_034
    ScrCmd_016 _0327
    End

_0327:
    ScrCmd_061
    End

_032B:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_01A _0341
    ScrCmd_01B

_0341:
    ScrCmd_2C8 0x8001, 0x8000, 0x8003
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01B

    .byte 0
    .byte 0
    .byte 0

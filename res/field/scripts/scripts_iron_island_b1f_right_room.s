#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000E
    .short 0xFD13

_000A:
    ScrCmd_25B
    End

_000E:
    ScrCmd_25C
    End

    .byte 0
    .byte 0

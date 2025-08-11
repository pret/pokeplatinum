#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_pillar_room.h"


    ScriptEntry _000A
    ScriptEntry _0026
    ScriptEntryEnd

_000A:
    Call _0018
    ScrCmd_285 VAR_UNK_0x410B, VAR_UNK_0x410C
    End

_0018:
    AddVar VAR_UNK_0x410B, 1
    AddVar VAR_UNK_0x410C, 1
    Return

_0026:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, VAR_UNK_0x410B
    SetVar VAR_0x8005, VAR_UNK_0x410C
    BufferNumber 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0

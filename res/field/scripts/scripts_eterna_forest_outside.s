#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_forest_outside.h"


    ScriptEntry _0012
    ScriptEntry _0058
    ScriptEntry _006F
    ScriptEntry _0018
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09C4
    End

_0018:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x012A, _004D
    SetVar VAR_0x8004, ACCESSORY_BIG_TREE
    BufferAccessoryName 0, VAR_0x8004
    Message 0
    SetVar VAR_0x8005, 1
    CallCommonScript CommonScript_Unk0F
    SetFlag FLAG_UNK_0x012A
    CloseMessage
    ReleaseAll
    End

_004D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0058:
    ShowLandmarkSign 2
    End

_006F:
    ShowScrollingSign 3
    End

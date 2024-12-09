#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0027
    .short 0xFD13

_0012:
    SetVar 0x4000, 0
    ScrCmd_175 2
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_176 2
    End

_0027:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_BEACON, 0x800C
    GoToIfEq 0x800C, 1, _0104
    CreateJournalEvent 9, 156, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle trainer_leader_volkner
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _011A
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_BEACON
    ScrCmd_260 23
    SetTrainerFlag trainer_ace_trainer_zachery
    SetTrainerFlag trainer_ace_trainer_destiny
    SetTrainerFlag trainer_guitarist_jerry
    SetTrainerFlag trainer_guitarist_preston
    SetTrainerFlag trainer_guitarist_lonnie
    SetTrainerFlag trainer_poke_kid_meghan
    SetTrainerFlag trainer_school_kid_forrest
    SetTrainerFlag trainer_school_kid_tiera
    SetVar 0x407E, 2
    // BUG: trainer_leader_roark should be trainer_leader_volkner
    CreateJournalEvent 10, 156, trainer_leader_roark, 0, 0
    Message 3
    GoTo _00BC

_00BC:
    SetVar 0x8004, 0x180
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00FA
    CallCommonScript 0x7FC
    SetFlag 182
    BufferItemName 0, 0x8004
    BufferTMHMMoveName 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FA:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0104:
    GoToIfUnset 182, _00BC
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011A:
    ScrCmd_0EB
    ReleaseAll
    End

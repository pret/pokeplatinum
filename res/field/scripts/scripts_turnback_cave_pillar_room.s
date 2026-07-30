#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_pillar_room.h"


    ScriptEntry TurnbackCavePillarRoom_OnTransition
    ScriptEntry TurnbackCavePillarRoom_Pillar
    ScriptEntryEnd

TurnbackCavePillarRoom_OnTransition:
    Call TurnbackCavePillarRoom_IncrementVars
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCavePillarRoom_IncrementVars:
    AddVar VAR_TURNBACK_CAVE_PILLARS_SEEN, 1
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    Return

TurnbackCavePillarRoom_Pillar:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, VAR_TURNBACK_CAVE_PILLARS_SEEN
    SetVar VAR_0x8005, VAR_TURNBACK_CAVE_ROOMS_VISITED
    BufferNumber 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message TurnbackCavePillarRoom_Text_PillarsSeenRoomsVisited
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0

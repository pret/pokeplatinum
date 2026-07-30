#include "macros/scrcmd.inc"
#include "res/text/bank/team_galactic_eterna_building_3f.h"


    ScriptEntry TeamGalacticEternaBuilding3F_GruntM
    ScriptEntry TeamGalacticEternaBuilding3F_BgSign
    ScriptEntryEnd

TeamGalacticEternaBuilding3F_GruntM:
    NPCMessage TeamGalacticEternaBuilding3F_Text_OrdinaryPeopleCantUnderstand
    End

TeamGalacticEternaBuilding3F_BgSign:
    EventMessage TeamGalacticEternaBuilding3F_Text_FollowThisPath
    End

    .balign 4, 0

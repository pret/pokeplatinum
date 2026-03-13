#include "macros/scrcmd.inc"
#include "res/text/bank/team_galactic_eterna_building_2f.h"


    ScriptEntry TeamGalacticEternaBuilding2F_GruntM
    ScriptEntry TeamGalacticEternaBuilding2F_GruntF
    ScriptEntry TeamGalacticEternaBuilding2F_Sign
    ScriptEntryEnd

TeamGalacticEternaBuilding2F_GruntM:
    NPCMessage TeamGalacticEternaBuilding2F_Text_TeamGalacticIsWorkingHardToFindNewEnergySourcesForTheFuture
    End

TeamGalacticEternaBuilding2F_GruntF:
    NPCMessage TeamGalacticEternaBuilding2F_Text_WeAreConductingResearchOnNewFormsOfEnergy
    End

TeamGalacticEternaBuilding2F_Sign:
    EventMessage TeamGalacticEternaBuilding2F_Text_LetUsMakeProgressTogether
    End

    .balign 4, 0

#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_laboratory.h"


    ScriptEntry GalacticHQLaboratory_ScientistM
    ScriptEntry GalacticHQLaboratory_ScientistF
    ScriptEntry GalacticHQLaboratory_Machine
    ScriptEntryEnd

GalacticHQLaboratory_ScientistM:
    NPCMessage GalacticHQLaboratory_Text_ExperimentWentTooFar
    End

GalacticHQLaboratory_ScientistF:
    NPCMessage GalacticHQLaboratory_Text_IFeelTooSickened
    End

GalacticHQLaboratory_Machine:
    EventMessage GalacticHQLaboratory_Text_SomethingInGreenFluid
    End

    .balign 4, 0

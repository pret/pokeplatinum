#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "sim_gui_prj.h"

static ImVec2 s_btnSize = {50, 20};

static bool s_createMonOpen;

void SIM_GUI_Prj_main(bool * p_open) {
    igBegin("pokeplatinum", p_open, 0);
    if(igButton("Create Pokemon", s_btnSize)) {
        if(s_createMonOpen) {
            s_createMonOpen = false;
        } else {
            GUI_CreateMon_Init();
            s_createMonOpen = true;
        }
    }

    if(s_createMonOpen) {
        GUI_CreateMon_Main(&s_createMonOpen);
    }
    igEnd();
}

#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include <simulator/gui.h>
#include "sim_gui_prj.h"

static ImVec2 s_btnSize = {50, 20};

static bool s_createMonOpen;

void SIM_GUI_Prj_main(bool * p_open) {
    igBegin("pokeplatinum", p_open, 0);
    SIM_GUI_AppButton("Create Pokemon", &s_createMonOpen, GUI_CreateMon_Main);
    igEnd();
}

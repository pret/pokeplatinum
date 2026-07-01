#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include <simulator/gui.h>
#include "sim_gui_prj.h"

static ImVec2 s_btnSize = {50, 20};

static bool s_createMonOpen;
static bool s_configPrjOpen;
static bool s_cheatsOpen;

void SIM_GUI_Prj_main(bool * p_open) {
    igBegin("pokeplatinum", p_open, 0);
    SIM_GUI_AppButton("Cheats", &s_cheatsOpen, NULL, GUI_Cheats_Main);
    SIM_GUI_AppButton("Config", &s_configPrjOpen, NULL, GUI_ConfigPrj_Main);
    SIM_GUI_AppButton("Create Pokemon", &s_createMonOpen, GUI_CreateMon_Init, GUI_CreateMon_Main);
    igEnd();
}

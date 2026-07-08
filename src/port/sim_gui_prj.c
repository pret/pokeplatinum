#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include <simulator/gui.h>
#include "sim_gui_prj.h"

#include "port/debug_field.h"

static ImVec2 s_btnSize = {100, 20};

static bool s_createMonOpen;
static bool s_configPrjOpen;
static bool s_cheatsOpen;
static bool s_fieldInfoOpen;
static bool s_mapJumpOpen;

void SIM_GUI_Prj_main(bool * p_open) {
    igBegin("pokeplatinum", p_open, 0);
    SIM_GUI_AppButton("Cheats", &s_cheatsOpen, NULL, GUI_Cheats_Main);
    SIM_GUI_AppButton("Config", &s_configPrjOpen, NULL, GUI_ConfigPrj_Main);
    SIM_GUI_AppButton("Create Pokemon", &s_createMonOpen, GUI_CreateMon_Init, GUI_CreateMon_Main);
    if(DEBUG_GetFieldSystem()) {
        SIM_GUI_AppButton("Field Info", &s_fieldInfoOpen, GUI_FieldInfo_Init, GUI_FieldInfo_Main);
        SIM_GUI_AppButton("MapJump", &s_mapJumpOpen, GUI_MapJump_Init, GUI_MapJump_Main);
    }
    igEnd();
}

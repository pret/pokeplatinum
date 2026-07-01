#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "sim_gui_prj.h"

#include "port/sim_config_prj.h"

//TODO: make a common place for this
static void ConfigCheckBoxFunc(const char * label, bool * configVar, bool * configChanged) {
    if(igCheckbox(label, configVar)) {
        *configChanged = true;
    }
}

void GUI_Cheats_Main(bool * p_open) {
    igBegin("Cheats", p_open, 0);
    SIM_Config_prj_type * myConfig = SIM_Config_prj_GetConfig();
    bool configChanged = false;
    #define ConfigCheckBox(_label,_configVar) ConfigCheckBoxFunc(_label,(bool*)&myConfig->_configVar,&configChanged)

    ConfigCheckBox("Walk Through Walls", walkThroughWalls);

    if(configChanged) {
        SIM_Config_prj_SaveConfigFile(myConfig);
    }

    igEnd();
}

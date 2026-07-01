#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "sim_gui_prj.h"

#include "port/sim_config_prj.h"

static void ConfigCheckBoxFunc(const char * label, bool * configVar, bool * configChanged) {
    if(igCheckbox(label, configVar)) {
        *configChanged = true;
    }
}

void GUI_ConfigPrj_Main(bool * p_open) {
    igBegin("Config", p_open, 0);
    SIM_Config_prj_type * myConfig = SIM_Config_prj_GetConfig();
    bool configChanged = false;
    #define ConfigCheckBox(_label,_configVar) ConfigCheckBoxFunc(_label,(bool*)&myConfig->_configVar,&configChanged)

    ConfigCheckBox("60 FPS", enable60fps);
    ConfigCheckBox("60 FPS Speed Fix", enable60fpsSpeedFix);
    ConfigCheckBox("Enable GF Asserts", enableAsserts);
    ConfigCheckBox("Break debugger on GF_ASSERT fail", breakDebuggerOnGfAssert);

    if(configChanged) {
        SIM_Config_prj_SaveConfigFile(myConfig);
    }

    igEnd();
}

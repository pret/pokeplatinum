#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "species.h"
#include "message_util.h"

#include "charcode_convert.h"

#include "sim_gui_prj.h"

#include "port/debug_field.h"
#include "field_map_change.h"
#include "constants/map_object.h"

static ImVec2 s_btnSize = {100, 20};

static FieldSystem * s_fieldSys;


void GUI_FieldInfo_Init() {
    s_fieldSys = DEBUG_GetFieldSystem();
}

void GUI_FieldInfo_Main(bool * p_open) {
    igBegin("FieldInfo", p_open, 0);
    igColumns(2, "infoColumns", true);
    igText("Location");
    igText("Map: %d", s_fieldSys->location->mapHeaderID);
    igText("Coords: (%d, %d)", s_fieldSys->location->x, s_fieldSys->location->z);

    igEnd();
}

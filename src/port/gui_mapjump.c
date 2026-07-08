#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "sim_gui_prj.h"

#include "port/debug_field.h"
#include "field_map_change.h"
#include "constants/map_object.h"

static ImVec2 s_btnSize = {100, 20};

static int s_mapId = 0;

static void JumpToMap(int mapId, int x, int z) {
    s_mapId = mapId;
    FieldSystem * fsys = DEBUG_GetFieldSystem();
    FieldTask_StartMapChangeFly(fsys, s_mapId, -1, x, z, DIR_SOUTH);
}

static void WarpButton(const char * label, int mapId, int x, int z) {
    const ImVec2 WarpBtnSize = {150, 20};
    if(igButton(label, WarpBtnSize)) {
        JumpToMap(mapId, x, z);
    }
}

void GUI_MapJump_Init() {
}

void GUI_MapJump_Main(bool * p_open) {
    igBegin("Jump To Map", p_open, 0);
    WarpButton("Jubilife City", 3, 180, 777);
    WarpButton("Oreburgh City", 45, 303, 757);
    WarpButton("Eterna City", 65, 305, 531);
    WarpButton("Hearthome City", 86, 465, 698);
    WarpButton("Veilstone City", 132, 717, 612);
    WarpButton("Pastoria City", 120, 600, 816);
    WarpButton("Canalave City", 33, 58, 723);
    //WarpButton("Snowpoint City", ) // TODO: Fix Crash
    WarpButton("Sunnyshore City", 150, 860, 785);
    WarpButton("Pokemon League", 172, 847, 560);
    WarpButton("Fight Area", 188, 647, 430);
    WarpButton("Resort Area", 457, 802, 473);
    WarpButton("Survival Area", 450, 659, 339);
    WarpButton("Battle Frontier", 559, 49, 35);
    igSeparator();
    igInputInt("Map ID", &s_mapId, 1, 10, 0);

    if(igButton("Go", s_btnSize)) {
        JumpToMap(s_mapId, 0, 0);
    }
    igEnd();
}

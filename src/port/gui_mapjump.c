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

//static const char * s_speciesNames[SPECIES_BAD_EGG+1] = {0};
static int s_mapId = 0;

void GUI_MapJump_Init() {
    //s_speciesNames[0] = "None";
    //for(int i=1; i < SPECIES_BAD_EGG+1; i++) {
    //    String *string = MessageUtil_SpeciesName(i, HEAP_ID_SYSTEM);
    //    if(s_speciesNames[i] == NULL) {
    //        char * nameBuf = malloc(sizeof(char) * string->size + 1);
    //        CharCode_ToAsciiString(string->data, nameBuf, string->size);
    //        nameBuf[string->size] = 0;
    //        s_speciesNames[i] = nameBuf;
    //    }
//
    //    String_Free(string);
    //}
}

void GUI_MapJump_Main(bool * p_open) {
    igBegin("Jump To Map", p_open, 0);
    //igCombo_Str_arr("Species", &s_speciesNum, s_speciesNames, SPECIES_BAD_EGG+1, 10);
    igInputInt("Map ID", &s_mapId, 1, 10, 0);

    if(igButton("Go", s_btnSize)) {
        FieldSystem * fsys = DEBUG_GetFieldSystem();
        FieldTask_StartMapChangeFly(fsys, s_mapId, -1, 0, 0, DIR_NORTH);
    }
    igEnd();
}

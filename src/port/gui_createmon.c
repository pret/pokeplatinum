#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "species.h"
#include "message_util.h"

#include "charcode_convert.h"

#include "sim_gui_prj.h"

static ImVec2 s_btnSize = {100, 20};

static int s_speciesNum = 1;
static const char * s_speciesNames[SPECIES_BAD_EGG+1] = {0};

void GUI_CreateMon_Init() {
    s_speciesNames[0] = "None";
    for(int i=1; i < SPECIES_BAD_EGG+1; i++) {
        String *string = MessageUtil_SpeciesName(i, HEAP_ID_SYSTEM);
        if(s_speciesNames[i] == NULL) {
            char * nameBuf = malloc(sizeof(char) * string->size + 1);
            CharCode_ToAsciiString(string->data, nameBuf, string->size);
            nameBuf[string->size] = 0;
            s_speciesNames[i] = nameBuf;
        }

        String_Free(string);
    }
}

void GUI_CreateMon_Main(bool * p_open) {
    igBegin("Create Pokemon", p_open, 0);
    igCombo_Str_arr("Species", &s_speciesNum, s_speciesNames, SPECIES_BAD_EGG+1, 10);

    // TODO: Add level, EVs, IVs, etc

    if(igButton("Create Pokemon", s_btnSize)) {
        Pokemon * myPoke = malloc(sizeof(Pokemon));

        Pokemon_InitWith(myPoke, s_speciesNum, 50, INIT_IVS_RANDOM, FALSE, 0, OTID_NOT_SHINY, 0);

        SaveData * mySaveData = SaveData_Ptr();
        Party * myParty = SaveData_GetParty(mySaveData);
        Party_AddPokemon(myParty, myPoke);
        free(myPoke);
    }
    igEnd();
}

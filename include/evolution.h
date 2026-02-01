#ifndef POKEPLATINUM_EVOLUTION_H
#define POKEPLATINUM_EVOLUTION_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/struct_0207C8C4.h"

#include "applications/pokemon_summary_screen/main.h"

#include "bag.h"
#include "bg_window.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_records.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "poketch.h"
#include "string_template.h"
#include "unk_0201567C.h"

typedef struct EvolutionData {
    BgConfig *bgConfig;
    Window *window;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *string;
    PaletteData *paletteData;
    PokemonSpriteManager *monSpriteMan;
    PokemonSprite *monSprites[2];
    Party *party;
    Pokemon *mon;
    Options *options;
    UnkStruct_0207C8C4 *unk_30;
    G3DPipelineBuffers *pipelineBuffers;
    ApplicationManager *summaryScreenAppMan;
    PokemonSummary *monSummary;
    void *menu;
    PokemonAnimManager *monAnimMan;
    Pokedex *pokedex;
    Bag *bag;
    GameRecords *records;
    Poketch *poketch;
    UnkStruct_020157E4 *unk_58;
    enum HeapID heapID;
    u16 currentSpecies;
    u16 targetSpecies;
    u8 state;
    u8 printerID;
    u8 delay;
    u8 done;
    int levelUpMoveIndex;
    u16 moveID;
    u8 moveSlot;
    u8 unused;
    u8 shrinkAndGrowState;
    u8 attributeDelta;
    u8 windowLeft;
    u8 windowTop;
    u8 windowRight;
    u8 windowBottom;
    int method;
    int flags;
    NARC *narc;
    u8 currentSpeciesCryDelay;
    u8 targetSpeciesCryDelay;
    u8 form;
} EvolutionData;

EvolutionData *Evolution_Begin(Party *party, Pokemon *mon, int targetSpecies, Options *options, int showContest, Pokedex *pokedex, Bag *bag, GameRecords *records, Poketch *poketch, int method, int flags, enum HeapID heapID);
BOOL Evolution_IsDone(EvolutionData *evolutionData);
void Evolution_Free(EvolutionData *evolutionData);

#endif // POKEPLATINUM_EVOLUTION_H

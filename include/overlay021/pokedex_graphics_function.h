#ifndef POKEPLATINUM_POKEDEX_GRAPHICS_FUNCTION_H
#define POKEPLATINUM_POKEDEX_GRAPHICS_FUNCTION_H

#include "overlay021/pokedex_data_manager.h"
#include "overlay021/pokedex_graphics_manager.h"

typedef BOOL (*PokedexGraphicsFunction)(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);

#endif // POKEPLATINUM_POKEDEX_GRAPHICS_FUNCTION_H

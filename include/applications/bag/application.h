#ifndef POKEPLATINUM_APPLICATIONS_BAG_APPLICATION_H
#define POKEPLATINUM_APPLICATIONS_BAG_APPLICATION_H

#include "overlay_manager.h"

enum BagApplicationMode {
    BAG_MODE_NORMAL = 0,
    BAG_MODE_GIVE_TO_MON,
    BAG_MODE_SELL_ITEMS,
    BAG_MODE_GARDENING,
    BAG_MODE_POFFIN_SINGLEPLAYER,
    BAG_MODE_POFFIN_MULTIPLAYER,
};

enum BagApplicationExitCode {
    BAG_EXIT_CODE_USE_ITEM = 0,
    BAG_EXIT_CODE_SHOW_BERRY_DATA,
    BAG_EXIT_CODE_GIVE_ITEM,
    BAG_EXIT_CODE_POFFIN_BERRY_CHOSEN,
    BAG_EXIT_CODE_GIVE_FROM_MON_MENU,
    BAG_EXIT_CODE_DONE,
};

int BagApplication_Init(ApplicationManager *appMan, int *state);
int BagApplication_Main(ApplicationManager *appMan, int *state);
int BagApplication_Exit(ApplicationManager *appMan, int *state);

extern const ApplicationManagerTemplate gBagApplicationTemplate;

#endif // POKEPLATINUM_APPLICATIONS_BAG_APPLICATION_H

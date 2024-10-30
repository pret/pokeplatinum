#ifndef POKEPLATINUM_MAIN_H
#define POKEPLATINUM_MAIN_H

#include <nitro/fs.h>

#include "overlay_manager.h"
#include "savedata.h"

typedef struct ApplicationArgs {
    int unk_00;
    BOOL error;
    SaveData *saveData;
} ApplicationArgs;

void EnqueueApplication(FSOverlayID overlayID, const OverlayManagerTemplate *template);
void InitRNG(void);
void HandleConsoleFold(void);

#endif // POKEPLATINUM_MAIN_H

#ifndef POKEPLATINUM_END_CREDITS_STRINGS_H
#define POKEPLATINUM_END_CREDITS_STRINGS_H

#include "cutscenes/end_credits/defs.h"

#include "bg_window.h"
#include "message.h"

EndCreditsStringsManager *EndCreditsStrings_CreateManager(BgConfig *bgConfig, int startTopY, int bgLayer, int palette, MessageLoader *messageLoader);
void EndCreditsStrings_FreeManager(EndCreditsStringsManager *manager);
BOOL EndCreditsStrings_ScrollCredits(EndCreditsStringsManager *manager, int scrollSpeed);
int EndCreditsStrings_GetLastMessageID(void);

#endif // POKEPLATINUM_END_CREDITS_STRINGS_H

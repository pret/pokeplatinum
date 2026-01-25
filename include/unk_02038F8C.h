#ifndef POKEPLATINUM_UNK_02038F8C_H
#define POKEPLATINUM_UNK_02038F8C_H

#include "struct_defs/wi_fi_history.h"

void WiFiHistory_FlagGeonetLinkInfo(WiFiHistory *wiFiHistory);
void WiFiHistory_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, int country, int region, int language);

#endif // POKEPLATINUM_UNK_02038F8C_H

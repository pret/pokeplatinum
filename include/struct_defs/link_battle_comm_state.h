#ifndef POKEPLATINUM_STRUCT_LINK_BATTLE_COMM_STATE_H
#define POKEPLATINUM_STRUCT_LINK_BATTLE_COMM_STATE_H

#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "pal_pad.h"
#include "palette.h"

typedef struct LinkBattleCommState {
    FieldBattleDTO *dto;
    BgConfig *bgConfig;
    Window *window;
    PaletteData *paletteData;
    PalPad *palPad[4];
    u8 sendBuffer[0x1000];
    u8 recvCount;
    u8 handshakeStep;
    u16 syncTimer;
    void *waitDial;
} LinkBattleCommState;

#endif // POKEPLATINUM_STRUCT_LINK_BATTLE_COMM_STATE_H

#ifndef PPWLOBBY_OV66_02237170_H
#define PPWLOBBY_OV66_02237170_H

#include <lobby/dwci_lobby.h>

#include "ppwlobby/ppw_parser.h"

const DWCi_LobbyChannelMode Unk_ov66_02258C6C = { FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, PPW_LOBBY_MAX_PLAYER_NUM_MAIN };
const DWCi_LobbyChannelMode Unk_ov66_02258C8C = { FALSE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, PPW_LOBBY_MAX_PLAYER_NUM_MAIN };
const DWCi_LobbyChannelMode Unk_ov66_02258C4C = { FALSE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, PPW_LOBBY_MAX_PLAYER_NUM_FOOT };
const DWCi_LobbyChannelMode Unk_ov66_02258C0C = { FALSE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, PPW_LOBBY_MAX_PLAYER_NUM_CLOCK };
const DWCi_LobbyChannelMode Unk_ov66_02258C2C = { FALSE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, PPW_LOBBY_MAX_PLAYER_NUM_NEWS };

typedef struct UnkStruct_ov66_0223EE30 {
    u32 unk_00;
    UnkStruct_ov66_0223EE30()
        : unk_00(0)
    {
    }
} UnkStruct_ov66_0223EE30;

inline const DWCi_LobbyChannelMode *inline_ov66_02235BA0(PPW_LOBBY_CHANNEL_KIND param0)
{
    switch (param0) {
    case PPW_LOBBY_CHANNEL_KIND_FOOT1:
    case PPW_LOBBY_CHANNEL_KIND_FOOT2:
        return &Unk_ov66_02258C4C;
    case PPW_LOBBY_CHANNEL_KIND_CLOCK:
        return &Unk_ov66_02258C0C;
    case PPW_LOBBY_CHANNEL_KIND_NEWS:
        return &Unk_ov66_02258C2C;
    default:
        return NULL;
    }
}

PPW_LOBBY_RESULT ov66_02237170(s32 param0, PPW_LOBBY_CHANNEL_KIND param1, int param2, UnkClass_ov66_02241184::UnkEnum_ov66_02241184 param3, s32 param4, const u8 *param5, u32 param6);
PPW_LOBBY_RESULT ov66_02237348(s32 param0, PPW_LOBBY_CHANNEL_KIND param1, const char *param2, const u8 *param3, u32 param4);

#endif // PPWLOBBY_OV66_02237170_H

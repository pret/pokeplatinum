#ifndef POKEPLATINUM_WIFI_BATTLE_TOWER_APP_STATE_H
#define POKEPLATINUM_WIFI_BATTLE_TOWER_APP_STATE_H

#include <dwc.h>
#include <nnsys.h>

#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay096/struct_wifi_player_profile.h"
#include "overlay096/struct_world_exchange_trainer.h"
#include "overlay096/struct_world_exchange_trainer_error.h"

#include "bg_window.h"
#include "menu.h"
#include "message.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"

enum WifiBattleTowerState {
    BT_STATE_INITIAL_PROMPT = 0,
    BT_STATE_INITIAL_YES_NO_MENU,
    BT_STATE_INIT_INET,
    BT_STATE_WAIT_INET_CONNECT,
    BT_STATE_INIT_NAS_LOGIN,
    BT_STATE_WAIT_NAS_LOGIN,
    BT_STATE_INIT_HTTP,
    BT_STATE_REQUEST_INFO,
    BT_STATE_WAIT_INFO,
    BT_STATE_SET_PROFILE,
    BT_STATE_WAIT_SET_PROFILE,
    BT_STATE_REQUEST_ROOM_COUNT,
    BT_STATE_WAIT_ROOM_COUNT,
    BT_STATE_SELECT_OPPONENT_PROMPT,
    BT_STATE_DRAW_OPPONENT_SELECT,
    BT_STATE_SELECT_OPPONENT,
    BT_STATE_DOWNLOAD_PROMPT,
    BT_STATE_REQUEST_DOWNLOAD,
    BT_STATE_WAIT_DOWNLOAD,
    BT_STATE_DOWNLOAD_COMPLETE_PROMPT,
    BT_STATE_ALREADY_CHALLENGED_PROMPT,
    BT_STATE_EXIT_PROMPT,
    BT_STATE_EXIT_YES_NO,
    BT_STATE_EXIT_MATCH_LIST_PROMPT,
    BT_STATE_EXIT_MATCH_LIST_YES_NO,
    BT_STATE_UPLOAD_PROMPT,
    BT_STATE_REQUEST_UPLOAD,
    BT_STATE_WAIT_UPLOAD,
    BT_STATE_UPLOAD_COMPLETE_PROMPT,
    BT_STATE_SELECT_RANK_PROMPT,
    BT_STATE_DRAW_RANK_SELECT,
    BT_STATE_SELECT_RANK,
    BT_STATE_MATCH_LIST_SELECT_PROMPT,
    BT_STATE_DRAW_MATCH_LIST_SELECT,
    BT_STATE_SELECT_MATCH_LIST,
    BT_STATE_DOWNLOAD_MATCH_LIST_PROMPT,
    BT_STATE_REQUEST_MATCH_LIST,
    BT_STATE_WAIT_MATCH_LIST,
    BT_STATE_MATCH_LIST_COMPLETE_PROMPT,
    BT_STATE_INIT_SAVE,
    BT_STATE_WAIT_SAVE,
    BT_STATE_GOODBYE_PROMPT,
    BT_STATE_CLEANUP_INET,
    BT_STATE_DISCONNECTING_PROMPT,
    BT_STATE_IDLE,
    BT_STATE_DISCONNECT_ENTRY,
    BT_STATE_END_SESSION,
    BT_STATE_WAIT_TEXT,
    BT_STATE_WAIT_TEXT_YES_NO,
    BT_STATE_WAIT_TEXT_TIMED,
    BT_STATE_DISCONNECT_YES_NO,
    BT_STATE_CONNECTED_PROMPT,
    BT_STATE_CONNECTED_YES_NO_MENU,
    BT_STATE_SHOW_ERROR,
    BT_STATE_ERROR_CLEANUP,
    BT_STATE_SHOW_DWC_ERROR,
    BT_STATE_DWC_ERROR_ACK,
};

typedef struct WifiBattleTowerAppState {
    UnkStruct_0206BC70 *args;
    BgConfig *bgConfig;
    int unk_08;
    int unk_0C;
    int screenMode;
    int exitMode;
    int unused_18;
    enum WifiBattleTowerState state;
    enum WifiBattleTowerState nextState;
    void *dwcHeapBuffer;
    NNSFndHeapHandle dwcHeap;
    DWCInetControl inetControl;
    int playerRank;
    int selectedRank;
    int matchCount;
    int selectedOpponentIdx;
    WifiBattleTowerDownloadBuffer downloadBuffer;
    WifiPlayerProfile wifiPlayerProfile;
    u16 unk_BB8;
    u16 unk_BBA;
    u16 unk_BBC;
    u16 unk_BBE;
    BoxPokemon *unk_BC0;
    int unk_BC4;
    int unk_BC8;
    StringTemplate *stringTemplate;
    MessageLoader *msgLoader1;
    MessageLoader *msgLoader2;
    MessageLoader *msgLoader3;
    String *msgString;
    String *titleString;
    String *opponentIdxString;
    String *rankString;
    String *errorString;
    int textPrinterID;
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourceCollection *resourceCollection[4];
    SpriteResource *spriteResource[3][4];
    SpriteResourcesHeader arrowSpriteHeader;
    SpriteResourcesHeader unk_DE8;
    SpriteResourcesHeader unk_E0C;
    Sprite *selectionArrows[2];
    Window msgWindow;
    Window rankWindow;
    Window opponentWindow;
    Window titleWindow;
    Window popupWindow;
    Window unk_E88[3];
    Window unk_EB8[11];
    Menu *yesNoMenu;
    void *waitDial;
    int dwcError;
    int dwcErrorDetail;
    int dwcErrorType;
    int asyncResult;
    int waitTimer;
    WorldExchangeTrainer weTrainer;
    WorldExchangeTrainerError weTrainerErr;
    s16 subStep;
    s16 subTimer;
    int timeoutCounter;
    UnkStruct_ov61_0222C3B0 unk_FF8;
} WifiBattleTowerAppState;

#endif // POKEPLATINUM_WIFI_BATTLE_TOWER_APP_STATE_H

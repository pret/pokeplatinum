#ifndef POKEPLATINUM_STRUCT_GTS_APPLICATION_STATE_H
#define POKEPLATINUM_STRUCT_GTS_APPLICATION_STATE_H

#include <dwc.h>
#include <nnsys.h>

#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/gts_player_data.h"

#include "applications/pokemon_summary_screen/main.h"
#include "overlay006/struct_ov6_02246254.h"
#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_02242AAC.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include "bg_window.h"
#include "evolution.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "overlay_manager.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

enum GTSApplicationScreen {
    GTS_SCREEN_WFC_INIT = 0,
    GTS_SCREEN_MAIN_MENU,
    GTS_SCREEN_SUMMARY,
    GTS_SCREEN_LISTING_SUMMARY,
    GTS_SCREEN_SEARCH,
    GTS_SCREEN_SELECT_POKEMON,
    GTS_SCREEN_DEPOSIT,
    GTS_SCREEN_NETWORK_HANDLER,
    GTS_SCREEN_POKEMON_INFO,
    GTS_SCREEN_TRADE
};

enum GTSApplicationLoopState {
    GTS_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER = 0,
    GTS_LOOP_STATE_INIT,
    GTS_LOOP_STATE_WAIT_FADE,
    GTS_LOOP_STATE_MAIN,
    GTS_LOOP_STATE_FINISH,
    GTS_LOOP_STATE_EXIT
};

typedef struct GTSTradedPokemonLocation {
    int boxIndex;
    int index;
} GTSTradedPokemonLocation;

typedef struct GTSBoxPokemonCriteria {
    GTSPokemonCriteria criteria[MAX_MONS_PER_BOX];
} GTSBoxPokemonCriteria;

typedef struct {
    Strbuf **unk_00;
    u16 unk_04; // cursor
    u16 unk_06; // start pos
    u16 unk_08;
    u16 unk_0A;
    int unk_0C;
    int unk_10;
    u8 *unk_14; // seen
    u16 *unk_18; // species
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} GTSApplicationState_sub3;

typedef struct GTSApplicationState {
    GTSPlayerData *playerData;
    BgConfig *bgConfig;
    WiFiList *unk_08;
    int unk_0C;
    int unk_10;
    int screenId;
    int nextScreen;
    int returnAfterNetworkScreen;
    int previousScreen;
    int screenArgument;
    int depositReturnError;
    int currentScreenInstruction;
    int nextScreenInstruction;
    u16 hasPlayerDescended;
    u16 isPokemonListed;
    u16 unk_38;
    u16 networkTimer;
    int commsErrorMessage;
    int unk_40; // dwcError
    int unk_44; // dwcErrorCode
    int unk_48; // dwcErrorType
    void *dwcHeapPointer;
    NNSFndHeapHandle dwcHeapHandle;
    DWCInetControl dwcInetControlObject;
    ApplicationManager *appMan;
    PokemonSummary pokemonSummary;
    NpcTradeAnimationConfig tradeAnimationConfig;
    EvolutionData *evolutionData;
    BOOL hasTradedPokemon;
    u16 unk_108;
    u16 unk_10A;
    u16 mainMenuSelectedOption;
    u16 unk_10E;
    u16 selectedBoxId;
    u16 unk_112;
    BoxPokemon *unk_114;
    int unk_118;
    int selectedSearchResult;
    TrainerInfo *receivingPokemonTrainer;
    GTSTradedPokemonLocation tradedPokemonLocation;
    GTSPokemonListing receivedListing;
    GTSPokemonListing searchResults[7];
    GTSPokemonListing selectedListing;
    GTSPokemonCriteria unk_B70;
    GTSPokemonRequirements unk_B74;
    GTSPokemonRequirements unk_B7A;
    GTSPokemonRequirements unk_B80;
    int unk_B88;
    StringTemplate *stringTemplate;
    MessageLoader *gtsMessageLoader;
    MessageLoader *speciesMessageLoader;
    MessageLoader *unk0674MessageLoader;
    MessageLoader *unk0695MessageLoader;
    MessageLoader *countryMessageLoader;
    Strbuf *selectPokemonBoxName;
    Strbuf *unk_BA8;
    Strbuf *genericMessageBuffer;
    Strbuf *title;
    Strbuf *unk_BB4[10];
    Strbuf *shortErrorBuffer;
    int textPrinter;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[4];
    SpriteResource *spriteResource[3][4];
    SpriteResourcesHeader cursorSpriteResourceHeader;
    SpriteResourcesHeader avatarSpriteResourceHeader;
    SpriteResourcesHeader unused_DFC;
    Sprite *cursorSprite;
    Sprite *unk_E24;
    Sprite *unk_E28[30];
    Sprite *unk_EA0[30];
    Sprite *selectPokemonPartySprites[MAX_PARTY_SIZE];
    Sprite *unk_F30;
    Sprite *avatarSprites[8];
    Sprite *unk_F54[2];
    Window bottomInstructionWindow;
    Window unk_F6C;
    Window unk_F7C;
    Window unk_F8C;
    Window unk_F9C[3];
    Window unk_FCC[13];
    Window unk_109C;
    Window unk_10AC[2];
    StringList *unk_10CC;
    Menu *yesNoMenu;
    Menu *unk_10D4;
    ListMenu *unk_10D8;
    void *waitDial;
    int frameDelay;
    GTSApplicationState_sub3 *unk_10E4;
    u16 duringSaveInstruction;
    u16 successfulSaveInstruction;
    SysTask *playerAvatarAnimationTask;
    u16 hasAvatarFinishedMoving;
    u16 unk_10F2;
    void *unk_10F4;
    NNSG2dCharacterData *unk_10F8;
    void *unk_10FC;
    NNSG2dPaletteData *unk_1100;
    Pokemon *tradeTempPokemon;
    GTSBoxPokemonCriteria *boxCriteria;
    u16 deferredBoxPokemonCount;
    u16 deferredBoxId;
    BOOL fadeBothScreens;
    void *selectPokemonIconHeapPtr;
    void (*updateBoxPalettesFunc)(void *param0);
    UnkStruct_ov94_02242AAC unk_111C;
    WorldExchangeTrainer worldExchangeTrainer;
    WorldExchangeTrainerError worldExchangeTrainerError;
    int selectedCountryIndex;
    UnkStruct_ov61_0222C3B0 unk_11B4;

    // these are only used in GTSApplication_WFCInit_FatalErrorDisconnectMessage
    s16 wfcDisconnectMessageIndex;
    s16 wfcDisconnectMessageFrameDelay;

    s32 networkTimeoutCounter;
} GTSApplicationState;

#endif // POKEPLATINUM_STRUCT_GTS_APPLICATION_STATE_H

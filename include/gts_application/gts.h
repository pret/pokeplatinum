#ifndef POKEPLATINUM_STRUCT_GTS_H
#define POKEPLATINUM_STRUCT_GTS_H

#include <dwc.h>
#include <nnsys.h>

#include "struct_decls/wi_fi_list.h"
#include "struct_defs/gts_player_data.h"
#include "struct_defs/world_exchange.h"

#include "applications/pokemon_summary_screen/main.h"
#include "overlay006/struct_npc_trade_animation_template.h"
#include "overlay061/struct_ov61_0222C3B0.h"

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
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

enum GTSApplicationScreen {
    GTS_SCREEN_WFC_INIT = 0,
    GTS_SCREEN_MAIN_MENU,
    GTS_SCREEN_LISTING,
    GTS_SCREEN_SEARCH_LISTING,
    GTS_SCREEN_SEARCH,
    GTS_SCREEN_SELECT_POKEMON,
    GTS_SCREEN_DEPOSIT,
    GTS_SCREEN_NETWORK_HANDLER,
    GTS_SCREEN_POKEMON_SUMMARY,
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

typedef struct GTSCharpadScrollState {
    u16 unread_00;
    u16 unread_02;
    u16 cursorPos[9];
    u16 scrollPos[9];
} GTSCharpadScrollState;

typedef struct GTSPokemonListingMon {
    u8 bytes[236];
} GTSPokemonListingMon;

typedef struct GTSPokemonCriteria {
    s16 species;
    s8 gender;
    s8 level;
} GTSPokemonCriteria;

typedef struct GTSPokemonRequirements {
    s16 species;
    s8 gender;
    s8 level;
    s8 level2;
    s8 unset_05;
} GTSPokemonRequirements;

typedef struct GTSPokemonListing {
    GTSPokemonListingMon pokemon;
    GTSPokemonCriteria criteria;
    GTSPokemonRequirements requirements;
    u8 trainerGender;
    u8 unused[17];
    s32 listingId;
    u16 trainerNames[8];
    u16 trainerId;
    u8 trainerCountry;
    u8 trainerRegion;
    u8 trainerAppearance;
    s8 exchangedFromRemote; // whether or not the pokemon was exchanged in the remote server (ie: this is the listing that someone traded for your deposited pokemon)
    u8 gameVersion;
    u8 trainerLanguage;
} GTSPokemonListing;

typedef struct GTSTradedPokemonLocation {
    int boxIndex;
    int index;
} GTSTradedPokemonLocation;

typedef struct GTSBoxPokemonCriteria {
    GTSPokemonCriteria criteria[MAX_MONS_PER_BOX];
} GTSBoxPokemonCriteria;

typedef struct {
    String **unused_00;
    u16 charpadCursorPos;
    u16 charpadScrollPos;
    u16 speciesListCursorPos;
    u16 speciesListScrollPos;
    int unused_0C;
    int unused_10;
    u8 *dexSeenFlags;
    u16 *alphabeticalSpecies;
    int alphabeticalSpeciesCount;
    int selectedSpeciesGenderRatio;
    int requirementsActivePanel;
    int leftPanelCursorPos;
    int rightPanelCursorPos;
} GTSSpeciesMenuState;

typedef struct GTSApplicationState {
    GTSPlayerData *playerData;
    BgConfig *bgConfig;
    WiFiList *unused_08;
    int unused_0C;
    int unused_10;
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
    u16 unused_38;
    u16 networkTimer;
    int commsErrorMessage;
    int dwcErr;
    int dwcErrCode;
    int dwcErrType;
    void *dwcHeapPointer;
    NNSFndHeapHandle dwcHeapHandle;
    DWCInetControl dwcInetControlObject;
    ApplicationManager *appMan;
    PokemonSummary pokemonSummary;
    TradeAnimationTemplate tradeAnimationConfig;
    EvolutionData *evolutionData;
    BOOL appManActive;
    u16 listMenuCursorIndex;
    u16 unused_10A;
    u16 mainMenuSelectedOption;
    u16 selectedInfoTab;
    u16 selectedBoxId;
    u16 partySlotIndex;
    BoxPokemon *selectedBoxMon;
    int searchResultCount;
    int selectedSearchResult;
    TrainerInfo *receivingPokemonTrainer;
    GTSTradedPokemonLocation tradedPokemonLocation;
    GTSPokemonListing receivedListing;
    GTSPokemonListing searchResults[7];
    GTSPokemonListing selectedListing;
    GTSPokemonCriteria offeredPokemonCriteria;
    GTSPokemonRequirements depositRequirements;
    GTSPokemonRequirements searchRequirements;
    GTSPokemonRequirements submittedRequirements;
    int submittedCountryIndex;
    StringTemplate *stringTemplate;
    MessageLoader *gtsMessageLoader;
    MessageLoader *speciesMessageLoader;
    MessageLoader *connProgressMessageLoader;
    MessageLoader *disconnStatusMessageLoader;
    MessageLoader *countryMessageLoader;
    String *selectPokemonBoxName;
    String *cancelButtonLabel;
    String *genericMessageBuffer;
    String *title;
    String *trainerLocationStrings[10];
    String *shortErrorBuffer;
    int textPrinter;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[4];
    SpriteResource *spriteResource[3][4];
    SpriteResourcesHeader cursorSpriteResourceHeader;
    SpriteResourcesHeader avatarSpriteResourceHeader;
    SpriteResourcesHeader unused_DFC;
    Sprite *cursorSprite;
    Sprite *unused_E24;
    Sprite *boxSlotIconSprites[30];
    Sprite *boxSlotItemSprites[30];
    Sprite *selectPokemonPartySprites[MAX_PARTY_SIZE];
    Sprite *listingCursorSprite;
    Sprite *avatarSprites[8];
    Sprite *boxArrowSprites[2];
    Window bottomInstructionWindow;
    Window unused_F6C;
    Window titleWindow;
    Window networkErrWindow;
    Window menuButtonWindows[3];
    Window infoWindows[13];
    Window confirmationWindow;
    Window locationCriteriaWindows[2];
    StringList *menuStringList;
    Menu *yesNoMenu;
    Menu *popupMenu;
    ListMenu *activeListMenu;
    void *waitDial;
    int frameDelay;
    GTSSpeciesMenuState *speciesMenuState;
    u16 duringSaveInstruction;
    u16 successfulSaveInstruction;
    SysTask *playerAvatarAnimationTask;
    u16 hasAvatarFinishedMoving;
    u16 searchResultsVisible;
    void *avatarCharDataHeapPtr;
    NNSG2dCharacterData *avatarCharData;
    void *avatarPaletteHeapPtr;
    NNSG2dPaletteData *avatarPaletteData;
    Pokemon *tradeTempPokemon;
    GTSBoxPokemonCriteria *boxCriteria;
    u16 deferredBoxPokemonCount;
    u16 deferredBoxId;
    BOOL fadeBothScreens;
    void *selectPokemonIconHeapPtr;
    void (*updateBoxPalettesFunc)(void *param0);
    GTSCharpadScrollState charpadScrollState;
    WorldExchangeTrainer worldExchangeTrainer;
    WorldExchangeTrainerError worldExchangeTrainerError;
    int selectedCountryIndex;
    UnkStruct_ov61_0222C3B0 unk_11B4;

    // these are only used in GTSApplication_WFCInit_FatalErrorDisconnectMessage
    s16 wfcDisconnectMessageIndex;
    s16 wfcDisconnectMessageFrameDelay;

    s32 networkTimeoutCounter;
} GTSApplicationState;

#endif // POKEPLATINUM_STRUCT_GTS_H

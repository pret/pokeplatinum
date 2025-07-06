#ifndef POKEPLATINUM_STRUCT_GTS_APPLICATION_STATE_H
#define POKEPLATINUM_STRUCT_GTS_APPLICATION_STATE_H

#include <dwc.h>
#include <nnsys.h>

#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
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
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef struct {
    int boxIndex;
    int index;
} GTSTradedPokemonLocation;

typedef struct {
    GTSPokemonListing_sub2 unk_00[30];
} GTSApplicationState_sub2;

typedef struct {
    Strbuf **unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    int unk_0C;
    int unk_10;
    u8 *unk_14;
    u16 *unk_18; // ov94_Pokedex_Alphabetical
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} GTSApplicationState_sub3;

// video sources:
// https://www.youtube.com/watch?v=18h1r5AQ5ZQ
// https://www.youtube.com/watch?v=-MEPpSTuYEM
// https://www.youtube.com/watch?v=TrOswIZsocc
// https://www.youtube.com/watch?v=vH8U16wV7-E
// https://www.youtube.com/watch?v=aQpc0lr12vA
typedef struct GTSApplicationState {
    GTSPlayerData *unk_00;
    BgConfig *bgConfig;
    WiFiList *unk_08;
    int unk_0C;
    int unk_10;
    int screenId; // some kind of pointer
    int nextScreen;
    int previousScreen;
    int unk_20;
    int screenArgument;
    int depositReturnError;
    int currentScreenInstruction; // some kind of instruction pointer
    int nextScreenInstruction;
    u16 hasPlayerDescended;
    u16 isPokemonListed;
    u16 unk_38;
    u16 networkTimer;
    int commsErrorMessage;
    int unk_40; // dwcError
    int unk_44; // dwcErrorCode
    int unk_48; // dwcErrorType
    void *unk_4C;
    NNSFndHeapHandle unk_50;
    DWCInetControl dwcInetControlObject;
    ApplicationManager *appMan;
    PokemonSummary unk_B8;
    NpcTradeAnimationConfig tradeAnimationConfig;
    UnkStruct_0207AE68 *unk_100;
    int unk_104;
    u16 unk_108;
    u16 unk_10A;
    u16 unk_10C;
    u16 unk_10E;
    u16 selectedBoxId;
    u16 unk_112;
    BoxPokemon *unk_114;
    int unk_118;
    int unk_11C;
    TrainerInfo *receivingPokemonTrainer;
    GTSTradedPokemonLocation tradedPokemonLocation;
    GTSPokemonListing receivedListing;
    GTSPokemonListing unk_250[7];
    GTSPokemonListing selectedListing;
    GTSPokemonListing_sub2 unk_B70;
    GTSPokemonListing_sub3 unk_B74;
    GTSPokemonListing_sub3 unk_B7A;
    GTSPokemonListing_sub3 unk_B80;
    int unk_B88;
    StringTemplate *stringTemplate;
    MessageLoader *gtsMessageLoader;
    MessageLoader *unk_B94;
    MessageLoader *unk_B98;
    MessageLoader *unk_B9C;
    MessageLoader *unk_BA0;
    Strbuf *unk_BA4;
    Strbuf *unk_BA8;
    Strbuf *genericMessageBuffer;
    Strbuf *title;
    Strbuf *unk_BB4[10];
    Strbuf *shortErrorBuffer;
    int textPrinter;
    SpriteList *unk_BE4;
    G2dRenderer unk_BE8;
    SpriteResourceCollection *spriteResourceCollection[4];
    SpriteResource *spriteResource[3][4];
    SpriteResourcesHeader unk_DB4;
    SpriteResourcesHeader unk_DD8;
    SpriteResourcesHeader unk_DFC;
    Sprite *cursorSprite;
    Sprite *unk_E24;
    Sprite *unk_E28[30];
    Sprite *unk_EA0[30];
    Sprite *unk_F18[6];
    Sprite *unk_F30;
    Sprite *avatarSprites[8];
    Sprite *unk_F54[2];
    // this window provides a running instruction at the bottom of the screen
    // ex. https://www.youtube.com/watch?v=vH8U16wV7-E&t=94
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
    Pokemon *unk_1104;
    GTSApplicationState_sub2 *unk_1108;
    u16 deferredBoxPokemonCount;
    u16 deferredBoxId;
    u32 fadeBothScreens;
    void *unk_1114;
    void (*unk_1118)(void *param0);
    UnkStruct_ov94_02242AAC unk_111C;
    WorldExchangeTrainer worldExchangeTrainer;
    WorldExchangeTrainerError worldExchangeTrainerError;
    int unk_11B0;
    UnkStruct_ov61_0222C3B0 unk_11B4;

    // these are only used in GTSApplication_WFCInit_FatalErrorDisconnectMessage
    s16 wfcDisconnectMessageIndex;
    s16 wfcDisconnectMessageFrameDelay;

    s32 networkTimeoutCounter;
} GTSApplicationState;

#endif // POKEPLATINUM_STRUCT_GTS_APPLICATION_STATE_H

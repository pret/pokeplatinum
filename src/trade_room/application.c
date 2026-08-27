#include "trade_room/application.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_error.h"
#include "generated/game_records.h"
#include "generated/species.h"
#include "generated/species_data_params.h"

#include "struct_decls/wi_fi_list.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/trade_room.h"

#include "applications/pokemon_summary_screen/main.h"
#include "trade_room/comm.h"
#include "trade_room/helpers.h"

#include "bag.h"
#include "battle_frontier_save.h"
#include "bg_window.h"
#include "brightness_controller.h"
#include "char_transfer.h"
#include "character_sprite.h"
#include "charcode_util.h"
#include "chatot_cry.h"
#include "comm_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "item.h"
#include "journal.h"
#include "list_menu.h"
#include "math_util.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "pal_pad.h"
#include "party.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "render_window.h"
#include "rtc.h"
#include "save_catchrecords.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_chatot.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "system_vars.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_0202D778.h"
#include "unk_020363E8.h"
#include "unk_02038ED4.h"
#include "unk_02038F8C.h"
#include "unk_0203909C.h"
#include "unk_02092494.h"
#include "vars_flags.h"
#include "vram_transfer.h"
#include "wifi_list.h"

#include "constdata/const_020F410C.h"

enum TradeRoomMsg {
    TRADE_MSG_CHOOSE_POKEMON = 15,
    TRADE_MSG_MON_SELECTED = 16,
    TRADE_MSG_SUMMARY_OPTION = 17,
    TRADE_MSG_TRADE_OPTION = 18,
    TRADE_MSG_CANCEL_OPTION = 19,
    TRADE_MSG_COMMUNICATING = 20,
    TRADE_MSG_CONFIRM_TRADE = 21,
    TRADE_MSG_TRADE_CANCELED = 24,
    TRADE_MSG_CANCEL_TRADING = 25,
    TRADE_MSG_WAITING_FOR_FRIEND = 28,
    TRADE_MSG_FRIEND_WANTS_TO_TRADE = 29,
    TRADE_MSG_WOULD_GET_STUCK = 34,
    TRADE_MSG_BALL_CAPSULE_WARNING = 36,
    TRADE_MSG_YOUR_MON_UNTRADEABLE = 37,
    TRADE_MSG_PARTNER_MON_UNTRADEABLE = 38,
    TRADE_MSG_LEVEL_LABEL = 41,
    TRADE_MSG_ITEM_LABEL = 42,
    TRADE_MSG_QUIT = 50,
};

enum TradeRoomPalPadMsg {
    PALPAD_MSG_CANCEL = 11,
    PALPAD_MSG_REGISTER_FRIEND = 57,
    PALPAD_MSG_ROSTER_FULL = 58,
    PALPAD_MSG_ABANDON_REGISTRATION = 59,
    PALPAD_MSG_DELETE_FRIEND = 60,
};

enum TradeRoomSyncStatus {
    TRADE_STATUS_QUIT = 1,
    TRADE_STATUS_CHOSE_TRADE = 2,
    TRADE_STATUS_CONFIRMED = 3,
    TRADE_STATUS_DECLINED = 4,
};

enum TradeRoomMenuInputSentinel {
    MENU_INPUT_PENDING = 0xffffffff,
    MENU_INPUT_CANCELLED = 0xfffffffe,
};

enum TradeRoomMonActionChoice {
    MON_ACTION_SUMMARY = 0,
    MON_ACTION_TRADE = 1,
    MON_ACTION_CANCEL = 2,
};

enum TradeRoomPartnerMonActionChoice {
    PARTNER_MON_ACTION_SUMMARY = 0,
    PARTNER_MON_ACTION_CANCEL = 1,
};

enum TradeRoomYesNoChoice {
    YES_NO_CHOICE_YES = 0,
    YES_NO_CHOICE_NO = 0xfffffffe,
};

enum TradeRoomChecksumResult {
    TRADE_CHECKSUM_OK = 0,
    TRADE_CHECKSUM_YOUR_MON_INVALID = 1,
    TRADE_CHECKSUM_PARTNER_MON_INVALID = 2,
};

enum TradeRoomState {
    TRADE_STATE_FADE_IN = 0,
    TRADE_STATE_RUNNING = 1,
    TRADE_STATE_CLOSING = 2,
};

enum TradeRoomPhase {
    TRADE_PHASE_CONNECTING = 0,
    TRADE_PHASE_BROWSING = 1,
    TRADE_PHASE_CLOSING = 2,
    TRADE_PHASE_START_SUMMARY_TRANSITION = 3,
    TRADE_PHASE_WAIT_FADE_OUT_FOR_SUMMARY = 4,
    TRADE_PHASE_WAIT_SUMMARY_SCREEN = 5,
    TRADE_PHASE_FADE_IN_AFTER_SUMMARY = 6,
    TRADE_PHASE_WAIT_FADE_IN_AFTER_SUMMARY = 7,
};

enum TradeRoomConnectStep {
    TRADE_CONNECT_LOCK_SHAYMIN_FORM = 0,
    TRADE_CONNECT_WAIT_INITIAL_SYNC = 1,
    TRADE_CONNECT_WAIT_STAGGER_START = 2,
    TRADE_CONNECT_STAGGER_COUNTDOWN = 3,
    TRADE_CONNECT_INIT_SYNC_SAVE = 4,
    TRADE_CONNECT_SYNC_SAVE = 5,
    TRADE_CONNECT_START_SYNC_2 = 6,
    TRADE_CONNECT_WAIT_SYNC_2 = 7,
    TRADE_CONNECT_SEND_PARTY = 8,
    TRADE_CONNECT_WAIT_PARTY_RECEIVED = 9,
    TRADE_CONNECT_DISPLAY_NICKNAMES = 10,
    TRADE_CONNECT_CACHE_MON_DISPLAY_DATA = 11,
    TRADE_CONNECT_CREATE_PALPAD_OBJECT = 12,
    TRADE_CONNECT_WAIT_PALPAD_SENT = 13,
    TRADE_CONNECT_SEND_CHATOT_CRY = 14,
    TRADE_CONNECT_WAIT_CHATOT_CRY_AND_SHOW_ICONS = 15,
    TRADE_CONNECT_FADE_IN_MAIN_SCREEN = 16,
    TRADE_CONNECT_WAIT_MAIN_FADE_AND_SHOW_DETAILS = 17,
    TRADE_CONNECT_FADE_IN_SUB_SCREEN = 18,
    TRADE_CONNECT_WAIT_SUB_FADE_AND_FINISH = 19,
};

#define TRADE_SLOT_QUIT              (MAX_PARTY_SIZE * 2)
#define TRADE_FRIENDSHIP_RESET_VALUE 70

static void TradeRoom_LoadPartyIconGraphics(NNSG2dCharacterData *charData, int species, int form, int isEgg, int slotIdx, Sprite *sprite);
static void TradeRoom_PrintHeaderLabels(TradeRoom *tradeRoom);
static void TradeRoom_VBlankCallback(void *param);
static void TradeRoom_ConfigureVRAMBanks(void);
static void TradeRoom_InitBackgrounds(BgConfig *bgConfig);
static void TradeRoom_InitTransferSystems(void);
static void TradeRoom_InitState(TradeRoom *tradeRoom, ApplicationManager *appMan);
static void TradeRoom_FreeBackgrounds(BgConfig *bgConfig);
static void TradeRoom_CopyPartyGridTilemapToVRAM(BgConfig *bgConfig, int unused1, int unused2);
static void TradeRoom_LoadBgGraphics(TradeRoom *tradeRoom, NARC *narc);
static void TradeRoom_InitSpriteRendering(TradeRoom *tradeRoom, NARC *narc);
static void TradeRoom_CreateSprites(TradeRoom *tradeRoom);
static void TradeRoom_PollDPadDirection(u32 *direction);
static void TradeRoom_PlayTouchedMonCry(TradeRoom *tradeRoom);
static void TradeRoom_UpdateCursorGlowColor(u16 *angle);
static int TradeRoom_ResolveCursorMoveTarget(int currentSlot, int direction, TradeRoomMonDisplayData *displayData);
static void TradeRoom_MoveCursorSprite(int slot, Sprite *sprite, int cursorIdx);
static int TradeRoom_UpdateCursor(u32 *directionFlag, int *slotIdx, Sprite *sprite, TradeRoomMonDisplayData *displayData, int side);
static int TradeRoom_LoadMonPreviewSprite(int side, Pokemon *mon, u8 *destination, PokemonSpriteTemplate *psTemplate);
static void TradeRoom_RecordTradeInJournal(JournalEntry *journalEntry, Pokemon *mon);
static void TradeRoom_SendChatotCry(ChatotCry *chatotCryData);
static void TradeRoom_AddWaitDialHandle(TradeRoom *tradeRoom);
static void TradeRoom_HideWaitDial(TradeRoom *tradeRoom);
static BOOL TradeRoom_HasUsablePartyAfterTrade(TradeRoom *tradeRoom);
static int TradeRoom_ValidatePartyChecksums(TradeRoom *tradeRoom);
static void TradeRoom_ArmConnectionTimeout(TradeRoom *tradeRoom);
static void TradeRoom_CheckConnectionTimeout(TradeRoom *tradeRoom);
static void TradeRoom_SetPartyNicknames(StringTemplate *strTemplate, Party *party, int templateSlotBase);
static void TradeRoom_PrintPartyNicknames(Window *window, StringTemplate *strTemplate, MessageLoader *msgLoader, Party *party, int templateSlotBase);
static void TradeRoom_ShowMonDetailCard(Window *window, int side, Party *party, int slot, TradeRoom *tradeRoom);
static void TradeRoom_ExecuteTrade(Party *sender, Party *receiver, int senderSlot, int receiverSlot, TradeRoomArgs *trArgs);
static void TradeRoom_FreeSpriteRendering(TradeRoom *tradeRoom);
static void TradeRoom_DisplayPartyNicknames(TradeRoom *tradeRoom);
static void TradeRoom_FreePartyIconGraphics(TradeRoom *tradeRoom);
static void TradeRoom_RefreshFocusedMonDetails(TradeRoom *tradeRoom);
static void TradeRoom_HideMonDetailCard(Window *window, int side, TradeRoom *tradeRoom);
static void TradeRoom_CachePokemonDisplayData(Pokemon *mon, TradeRoomMonDisplayData *displayData);
static void TradeRoom_SetSpritePosition(Sprite *sprite, int x, int y);
static int TradeRoom_ResolveGenderIconState(TradeRoomMonDisplayData *displayData, Party *party, int slot, int genderValue);
static void TradeRoom_SendRibbonData(SaveData *saveData);
static int TradeRoom_ConnectAndSyncParties(TradeRoom *tradeRoom);
static int TradeRoom_UpdateMainLoop(TradeRoom *tradeRoom);
static void TradeRoom_LoadPartyIconSprites(Party *party, int templateSlotBase, TradeRoom *tradeRoom);
static int TradeRoom_HandleBrowseInput(TradeRoom *tradeRoom);
static int TradeRoom_HandleMutualQuitSync(TradeRoom *tradeRoom);
static int TradeRoom_ShowMonActionMenu(TradeRoom *tradeRoom);
static int TradeRoom_ShowPartnerMonActionMenu(TradeRoom *tradeRoom);
static int TradeRoom_HandleQuitConfirm(TradeRoom *tradeRoom);
static int TradeRoom_PromptQuitConfirm(TradeRoom *tradeRoom);
static int TradeRoom_HandleMonActionInput(TradeRoom *tradeRoom);
static int TradeRoom_AnnounceTradeChoice(TradeRoom *tradeRoom);
static int TradeRoom_HandleMutualTradeSync(TradeRoom *tradeRoom);
static int TradeRoom_HandleShowPartnerMonConfirm(TradeRoom *tradeRoom);
static int TradeRoom_WaitForNotificationDismiss(TradeRoom *tradeRoom);
static int TradeRoom_ShowNotification(TradeRoom *tradeRoom);
static int TradeRoom_PromptTradeConfirm(TradeRoom *tradeRoom);
static int TradeRoom_HandleTradeConfirm(TradeRoom *tradeRoom);
static int TradeRoom_HandleMutualTradeConfirmSync(TradeRoom *tradeRoom);
static int TradeRoom_CompleteTrade(TradeRoom *tradeRoom);
static int TradeRoom_PrepareMonSlideAnimation(TradeRoom *tradeRoom);
static int TradeRoom_UpdateSlideAnimation(TradeRoom *tradeRoom);
static int TradeRoom_HandleBallCapsuleWarningConfirm(TradeRoom *tradeRoom);
static int TradeRoom_WarnBallCapsuleDetach(TradeRoom *tradeRoom);
static void TradeRoom_RestoreFullPartyGrid(TradeRoom *tradeRoom);
static void TradeRoom_AnnounceTradeConfirmed(TradeRoom *tradeRoom);
static void TradeRoom_ClearAndPrintMessage(TradeRoom *tradeRoom, int windowIdx, int msgID);
static void TradeRoom_SetSlideAnimPath(VecFx32 path[], int startX, int startY, int endX, int endY);
static void TradeRoom_ApplySlideAnimStep(Sprite *iconSprite, Sprite *itemSprite, Sprite *capsuleSprite, int step, VecFx32 path[], TradeRoomMonDisplayData *displayData);
static void TradeRoom_ShowPartnerMonDetails(TradeRoom *tradeRoom, int slotIdx);
static void TradeRoom_ScrollBackground(TradeRoom *tradeRoom);
static void TradeRoom_PrintMonNickname(Window *window, Party *party, int slot, int unused, int xOrCenter);
static int TradeRoom_HandleRosterFullConfirm(TradeRoom *tradeRoom);
static int TradeRoom_HandleRegisterFriendConfirm(TradeRoom *tradeRoom);
static int TradeRoom_ProcessPendingFriendRegistration(TradeRoom *tradeRoom);
static int TradeRoom_BuildFriendListMenu(TradeRoom *tradeRoom);
static void TradeRoom_OpenMonSummary(TradeRoom *tradeRoom, int side);
static void TradeRoom_CreateNetworkObject(TrainerInfo *trainerInfo, PalPad *source, PalPad *destination);

static const int sSlotScreenPositions[][2] = {
    { 0, 32 },
    { 64, 32 },
    { 0, 72 },
    { 64, 72 },
    { 0, 112 },
    { 64, 112 },
    { 128, 32 },
    { 192, 32 },
    { 128, 72 },
    { 192, 72 },
    { 128, 112 },
    { 192, 112 },
    { 192, 160 }
};

static const int sDetailCardSpriteLayout[][3] = {
    { 63, 88, 0 },
    { 192, 88, 1 },
    { 16, 8, 6 },
    { 144, 8, 6 },
    { 99, 8, 22 },
    { 227, 8, 22 }
};

static const u8 sCursorMoveCandidates[][4][6] = {
    {
        { 4, 2, 12, 12 },
        { 2, 4, 12, 12 },
        { 7, 6, 1, 0 },
        { 1, 6, 7, 0 },
    },
    {
        { 5, 3, 12, 12 },
        { 3, 5, 12, 12 },
        { 0, 7, 6, 1 },
        { 6, 7, 0, 1 },
    },
    {
        { 0, 0, 0, 0 },
        { 4, 0, 0, 0 },
        { 9, 8, 7, 6 },
        { 3, 1 },
    },
    {
        { 1, 1, 1, 1 },
        { 5, 1, 1, 1 },
        { 2, 9, 8, 7 },
        { 8, 9, 6, 6 },
    },
    {
        { 2, 2, 2, 2 },
        { 0, 0, 0, 0 },
        { 11, 10, 9, 8, 7, 6 },
        { 5, 3, 1 },
    },
    {
        { 3, 3, 3, 3 },
        { 1, 1, 1, 1 },
        { 4, 4, 4, 4 },
        { 10, 8, 6 },
    },
    {
        { 10, 8, 12 },
        { 8, 10, 12 },
        { 1, 0 },
        { 7, 0, 1 },
    },
    {
        { 12 },
        { 9, 12 },
        { 6 },
        { 0 },
    },
    {
        { 6 },
        { 10, 6 },
        { 3, 2, 1, 0 },
        { 9, 7 },
    },
    {
        { 7 },
        { 11, 12 },
        { 8 },
        { 2, 0, 1 },
    },
    {
        { 8 },
        { 6 },
        { 5, 4, 3, 2, 1, 0 },
        { 11, 9, 7 },
    },
    {
        { 9 },
        { 12 },
        { 10 },
        { 4, 2, 0 },
    },
    {
        { 11, 9, 7, 6 },
        { 7, 6 },
        { 12 },
        { 12 },
    },
};

int TradeRoom_Init(ApplicationManager *appMan, int *unused)
{
    TradeRoom *tradeRoom;
    NARC *narc;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TRADE_ROOM, 0x50000 + 0x20000 + 2000);

    narc = NARC_ctor(NARC_INDEX_DATA__TRADELIST, HEAP_ID_TRADE_ROOM);
    tradeRoom = ApplicationManager_NewData(appMan, sizeof(TradeRoom), HEAP_ID_TRADE_ROOM);

    MI_CpuClearFast(tradeRoom, sizeof(TradeRoom));

    tradeRoom->bgConfig = BgConfig_New(HEAP_ID_TRADE_ROOM);
    tradeRoom->strTemplate = StringTemplate_New(12, (10 + 1) * 2, HEAP_ID_TRADE_ROOM);
    tradeRoom->strTemplate2 = StringTemplate_Default(HEAP_ID_TRADE_ROOM);
    tradeRoom->unread_180 = StringTemplate_Default(HEAP_ID_TRADE_ROOM);
    tradeRoom->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0354, HEAP_ID_TRADE_ROOM);
    tradeRoom->appMan = NULL;

    TradeRoom_InitState(tradeRoom, appMan);
    SetAutorepeat(4, 8);
    TradeRoom_ConfigureVRAMBanks();
    TradeRoom_InitBackgrounds(tradeRoom->bgConfig);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_TRADE_ROOM);
    TradeRoom_LoadBgGraphics(tradeRoom, narc);
    SetVBlankCallback(TradeRoom_VBlankCallback, tradeRoom);
    TradeRoom_InitTransferSystems();
    TradeRoom_InitSpriteRendering(tradeRoom, narc);
    TradeRoom_CreateSprites(tradeRoom);
    TradeRoom_InitWindows(tradeRoom->bgConfig, tradeRoom->windows, tradeRoom->args->options);

    tradeRoom->fieldSystem = tradeRoom->args->fieldSystem;

    TradeRoom_AttachToFieldSystem(tradeRoom->fieldSystem, tradeRoom);
    TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_COMMUNICATING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
    TradeRoom_RegisterCommHandlers(tradeRoom->fieldSystem);
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    CommManager_Dummy_02038A1C(26, tradeRoom->bgConfig);
    NetworkIcon_Init();

    if (IsNight() == FALSE) {
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, SEQ_PC_01_sseq, 1);
        Sound_AdjustVolumeForVoiceChat(1085);
    } else {
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, SEQ_PC_02_sseq, 1);
        Sound_AdjustVolumeForVoiceChat(1086);
    }

    NARC_dtor(narc);

    return 1;
}

static void TradeRoom_LoadPartyIconGraphics(NNSG2dCharacterData *charData, int species, int form, int isEgg, int slotIdx, Sprite *sprite)
{
    GX_LoadOBJ(charData->pRawData, ((4 * 32 + 18) + slotIdx * (4 * 4)) * 0x20, (4 * 4) * 0x20);
    Sprite_SetExplicitPaletteOffset(sprite, PokeIconPaletteIndex(species, form, isEgg) + 10);
}

static void TradeRoom_PrintHeaderLabels(TradeRoom *tradeRoom)
{
    String *ownName, *partnerName, *quitMsg;
    TrainerInfo *ownTrainerInfo, *partnerTrainerInfo;

    ownTrainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId());
    partnerTrainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    ownName = TrainerInfo_NameNewString(ownTrainerInfo, 26);
    partnerName = TrainerInfo_NameNewString(partnerTrainerInfo, 26);
    quitMsg = MessageLoader_GetNewString(tradeRoom->msgLoader, TRADE_MSG_QUIT);

    TradeRoom_PrintStringInWindow(&tradeRoom->windows[0], ownName, 10, TEXT_SPEED_INSTANT, 1, 1);
    TradeRoom_PrintStringInWindow(&tradeRoom->windows[1], partnerName, 10, TEXT_SPEED_INSTANT, 1, 1);
    TradeRoom_PrintStringInWindow(&tradeRoom->windows[6], quitMsg, 5, TEXT_SPEED_INSTANT, 1, 1);

    String_Free(quitMsg);
    String_Free(partnerName);
    String_Free(ownName);
}

static void TradeRoom_RestoreScreenAfterSummary(TradeRoom *tradeRoom)
{
    NARC *narc = NARC_ctor(NARC_INDEX_DATA__TRADELIST, HEAP_ID_TRADE_ROOM);

    TradeRoom_ConfigureVRAMBanks();
    TradeRoom_InitBackgrounds(tradeRoom->bgConfig);
    TradeRoom_LoadBgGraphics(tradeRoom, narc);
    TradeRoom_DisplayPartyNicknames(tradeRoom);
    TradeRoom_PrintHeaderLabels(tradeRoom);

    LoadMessageBoxGraphics(tradeRoom->bgConfig, BG_LAYER_MAIN_0, 512 - (9 + (18 + 12)), 10, Options_Frame(tradeRoom->args->options), HEAP_ID_TRADE_ROOM);
    LoadStandardWindowGraphics(tradeRoom->bgConfig, BG_LAYER_MAIN_0, 512 - 9, 11, 0, HEAP_ID_TRADE_ROOM);

    TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);

    Bg_ToggleLayer(BG_LAYER_SUB_0, 1);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 1);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    TradeRoom_InitTransferSystems();
    TradeRoom_InitSpriteRendering(tradeRoom, narc);
    TradeRoom_CreateSprites(tradeRoom);
    TradeRoom_LoadPartyIconSprites(tradeRoom->playerParty, 0, tradeRoom);
    TradeRoom_LoadPartyIconSprites(tradeRoom->partnerParty, MAX_PARTY_SIZE, tradeRoom);

    Sprite_SetDrawFlag(tradeRoom->cursorSprites[0], TRUE);
    Sprite_SetDrawFlag(tradeRoom->cursorSprites[1], TRUE);
    SetVBlankCallback(TradeRoom_VBlankCallback, tradeRoom);
    NARC_dtor(narc);
}

static void TradeRoom_DisplayPartyNicknames(TradeRoom *tradeRoom)
{
    TradeRoom_SetPartyNicknames(tradeRoom->strTemplate, tradeRoom->playerParty, 0);
    TradeRoom_SetPartyNicknames(tradeRoom->strTemplate, tradeRoom->partnerParty, MAX_PARTY_SIZE);
    TradeRoom_PrintPartyNicknames(&tradeRoom->windows[7], tradeRoom->strTemplate, tradeRoom->msgLoader, tradeRoom->playerParty, 0);
    TradeRoom_PrintPartyNicknames(&tradeRoom->windows[13], tradeRoom->strTemplate, tradeRoom->msgLoader, tradeRoom->partnerParty, MAX_PARTY_SIZE);
    TradeRoom_CopyPartyGridTilemapToVRAM(tradeRoom->bgConfig, Party_GetCurrentCount(tradeRoom->playerParty), Party_GetCurrentCount(tradeRoom->partnerParty));
}

int TradeRoom_Main(ApplicationManager *appMan, int *state)
{
    TradeRoom *tradeRoom = ApplicationManager_Data(appMan);
    int isDone = 0;

    switch (*state) {
    case TRADE_STATE_FADE_IN:
        if (IsScreenFadeDone()) {
            *state = TRADE_STATE_RUNNING;

            TradeRoom_PrintHeaderLabels(tradeRoom);
        }
        break;
    case TRADE_STATE_RUNNING:
        switch (tradeRoom->phase) {
        case TRADE_PHASE_CONNECTING:
            tradeRoom->phase = TradeRoom_ConnectAndSyncParties(tradeRoom);
            break;
        case TRADE_PHASE_BROWSING:
            tradeRoom->phase = TradeRoom_UpdateMainLoop(tradeRoom);
            TradeRoom_PlayTouchedMonCry(tradeRoom);
            break;
        case TRADE_PHASE_CLOSING:
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_TRADE_ROOM);
            *state = TRADE_STATE_CLOSING;
            break;
        case TRADE_PHASE_START_SUMMARY_TRANSITION:
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_TRADE_ROOM);
            tradeRoom->phase = TRADE_PHASE_WAIT_FADE_OUT_FOR_SUMMARY;
            break;
        case TRADE_PHASE_WAIT_FADE_OUT_FOR_SUMMARY:
            if (IsScreenFadeDone()) {
                TradeRoom_FreePartyIconGraphics(tradeRoom);
                TradeRoom_FreeSpriteRendering(tradeRoom);
                TradeRoom_FreeBackgrounds(tradeRoom->bgConfig);

                tradeRoom->subAppActive = 1;
                tradeRoom->phase = TRADE_PHASE_WAIT_SUMMARY_SCREEN;

                TradeRoom_OpenMonSummary(tradeRoom, tradeRoom->selectedSlot[0] / MAX_PARTY_SIZE);
            }
            break;
        case TRADE_PHASE_WAIT_SUMMARY_SCREEN:
            if (ApplicationManager_Exec(tradeRoom->appMan)) {
                ApplicationManager_Free(tradeRoom->appMan);
                TradeRoom_RestoreScreenAfterSummary(tradeRoom);

                tradeRoom->subAppActive = 0;
                tradeRoom->selectedSlot[0] = tradeRoom->summaryArgs.monIndex + tradeRoom->summarySide * MAX_PARTY_SIZE;

                TradeRoom_RefreshFocusedMonDetails(tradeRoom);
                TradeRoom_MoveCursorSprite(tradeRoom->selectedSlot[0], tradeRoom->cursorSprites[0], 0);
                NetworkIcon_Init();

                tradeRoom->phase = TRADE_PHASE_FADE_IN_AFTER_SUMMARY;
            }
            break;
        case TRADE_PHASE_FADE_IN_AFTER_SUMMARY:
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_TRADE_ROOM);
            tradeRoom->phase = TRADE_PHASE_WAIT_FADE_IN_AFTER_SUMMARY;
            break;
        case TRADE_PHASE_WAIT_FADE_IN_AFTER_SUMMARY:
            if (IsScreenFadeDone()) {
                tradeRoom->phase = TRADE_PHASE_BROWSING;
            }
            break;
        }
        break;
    case TRADE_STATE_CLOSING:
        if (IsScreenFadeDone()) {
            isDone = 1;
        }
        break;
    }

    if (!tradeRoom->subAppActive) {
        TradeRoom_ScrollBackground(tradeRoom);
        SpriteList_Update(tradeRoom->spriteList);
    }

    CommManager_Dummy_02038A1C(26, tradeRoom->bgConfig);

    return isDone;
}

static void TradeRoom_SetPartyNicknames(StringTemplate *strTemplate, Party *party, int templateSlotBase)
{
    for (int i = 0; i < Party_GetCurrentCount(party); i++) {
        StringTemplate_SetNickname(strTemplate, i + templateSlotBase, Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(party, i)));
    }
}

static void TradeRoom_PrintPartyNicknames(Window *window, StringTemplate *strTemplate, MessageLoader *msgLoader, Party *party, int templateSlotBase)
{
    for (int i = 0; i < Party_GetCurrentCount(party); i++) {
        String *str = MessageUtil_ExpandedString(strTemplate, msgLoader, 1 + templateSlotBase + i, HEAP_ID_TRADE_ROOM);

        TradeRoom_PrintStringInWindow(&window[i], str, 8, TEXT_SPEED_INSTANT, 1, 0);
        String_Free(str);
    }
}

static void TradeRoom_LoadPartyIconSprites(Party *party, int templateSlotBase, TradeRoom *tradeRoom)
{
    int i, slot;

    for (i = 0; i < Party_GetCurrentCount(party); i++) {
        slot = i + templateSlotBase;

        tradeRoom->iconGraphicsBuffers[slot] = Graphics_GetCharData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconSpriteIndex(tradeRoom->monDisplayData[slot].species, tradeRoom->monDisplayData[slot].isEgg, tradeRoom->monDisplayData[slot].form), 0, &tradeRoom->iconCharacterData[slot], HEAP_ID_TRADE_ROOM);

        DC_FlushRange(tradeRoom->iconCharacterData[slot]->pRawData, 0x20 * 4 * 4);

        TradeRoom_LoadPartyIconGraphics(tradeRoom->iconCharacterData[slot], tradeRoom->monDisplayData[slot].species, tradeRoom->monDisplayData[slot].form, tradeRoom->monDisplayData[slot].isEgg, slot, tradeRoom->iconSprites[slot]);
        Sprite_SetDrawFlag(tradeRoom->iconSprites[slot], TRUE);

        if (tradeRoom->monDisplayData[slot].heldItemType == 0) {
            Sprite_SetDrawFlag(tradeRoom->itemIconSprites[slot], FALSE);
        } else {
            Sprite_SetDrawFlag(tradeRoom->itemIconSprites[slot], TRUE);
            Sprite_SetAnim(tradeRoom->itemIconSprites[slot], 3 + tradeRoom->monDisplayData[slot].heldItemType - 1);
        }

        if (tradeRoom->monDisplayData[slot].ballCapsuleId == 0) {
            Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[slot], FALSE);
        } else {
            Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[slot], TRUE);
            Sprite_SetAnim(tradeRoom->capsuleIconSprites[slot], 21);
        }
    }

    for (; i < MAX_PARTY_SIZE; i++) {
        Sprite_SetDrawFlag(tradeRoom->iconSprites[i + templateSlotBase], FALSE);
        Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i + templateSlotBase], FALSE);
        Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i + templateSlotBase], FALSE);
    }
}

static int TradeRoom_ConnectAndSyncParties(TradeRoom *tradeRoom)
{
    TradeRoom_CheckConnectionTimeout(tradeRoom);

    switch (tradeRoom->connectStep) {
    case TRADE_CONNECT_LOCK_SHAYMIN_FORM:
        CommTiming_StartSync(80);
        ResetLock(RESET_LOCK_0x2);
        TradeRoom_AddWaitDialHandle(tradeRoom);

        int i, form, species;

        for (i = 0; i < Party_GetCurrentCount(tradeRoom->args->party); i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(tradeRoom->args->party, i);
            species = Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL);

            if (species == SPECIES_SHAYMIN) {
                form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

                if (form != SHAYMIN_FORM_LAND) {
                    Pokemon_SetShayminForm(mon, SHAYMIN_FORM_LAND);
                }
            }
        }

        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_WAIT_INITIAL_SYNC:
        if (CommTiming_IsSyncState(80)) {
            if (tradeRoom->args->tradeCount == 0) {
                tradeRoom->connectStep = TRADE_CONNECT_START_SYNC_2;
            } else {
                tradeRoom->connectStep = TRADE_CONNECT_WAIT_STAGGER_START;
            }

            if (CommSys_CurNetId() == 0) {
                TradeRoom_SendCommByte(CommSys_CurNetId(), TRADE_CMD_STAGGER_DELAY, LCRNG_RandMod(60) + 3);
            }

            TradeRoom_SendRibbonData(tradeRoom->saveData);
            TradeRoom_ArmConnectionTimeout(tradeRoom);
        }
        break;
    case TRADE_CONNECT_WAIT_STAGGER_START:
        if (tradeRoom->staggerCountdown != 0) {
            tradeRoom->connectStep++;
        }
        break;
    case TRADE_CONNECT_STAGGER_COUNTDOWN:
        tradeRoom->staggerCountdown--;

        if (tradeRoom->staggerCountdown == 0) {
            tradeRoom->connectStep = TRADE_CONNECT_INIT_SYNC_SAVE;
        }
        break;
    case TRADE_CONNECT_INIT_SYNC_SAVE:
        sub_02038ED4(&tradeRoom->syncSaveState);
        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_SYNC_SAVE:
        if (sub_02038EDC(tradeRoom->saveData, 2, &tradeRoom->syncSaveState)) {
            tradeRoom->connectStep++;
        }
        break;
    case TRADE_CONNECT_START_SYNC_2:
        sub_0203632C(1);
        CommTiming_StartSync(81);
        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_WAIT_SYNC_2:
        if (CommTiming_IsSyncState(81)) {
            tradeRoom->connectStep++;
        }
        break;
    case TRADE_CONNECT_SEND_PARTY:
        tradeRoom->partySendCount = 0;
        tradeRoom->commMilestone = 0;
        tradeRoom->partyReceiveCount = 0;

        if (CommSys_CurNetId() == 1) {
            TradeRoom_SendParty(CommSys_CurNetId(), tradeRoom->playerParty, tradeRoom->partySendCount);
            tradeRoom->partySendCount++;
        }

        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_WAIT_PARTY_RECEIVED:
        if (tradeRoom->commMilestone != 0) {
            tradeRoom->connectStep = TRADE_CONNECT_DISPLAY_NICKNAMES;
        }
        break;
    case TRADE_CONNECT_DISPLAY_NICKNAMES:
        tradeRoom->connectStep++;
        TradeRoom_DisplayPartyNicknames(tradeRoom);
        break;
    case TRADE_CONNECT_CACHE_MON_DISPLAY_DATA: {
        int i;

        for (i = 0; i < TRADE_SLOT_QUIT + 1; i++) {
            tradeRoom->monDisplayData[i].species = 0;
        }

        for (i = 0; i < Party_GetCurrentCount(tradeRoom->playerParty); i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(tradeRoom->playerParty, i);
            TradeRoom_CachePokemonDisplayData(mon, &tradeRoom->monDisplayData[i]);
        }

        for (i = 0; i < Party_GetCurrentCount(tradeRoom->partnerParty); i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(tradeRoom->partnerParty, i);
            TradeRoom_CachePokemonDisplayData(mon, &tradeRoom->monDisplayData[i + MAX_PARTY_SIZE]);
        }

        tradeRoom->monDisplayData[12].species = 1;
    }
        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_CREATE_PALPAD_OBJECT:
        TradeRoom_CreateNetworkObject(CommInfo_TrainerInfo(CommSys_CurNetId()), tradeRoom->palPad, &tradeRoom->palPadNetworkObject);
        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_WAIT_PALPAD_SENT:
        if (tradeRoom->commMilestone == TRADE_MILESTONE_PALPAD_RECEIVED) {
            tradeRoom->connectStep++;
        }
        break;
    case TRADE_CONNECT_SEND_CHATOT_CRY:
        TradeRoom_SendChatotCry(SaveData_GetChatotCry(tradeRoom->saveData));
        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_WAIT_CHATOT_CRY_AND_SHOW_ICONS:
        if (tradeRoom->commMilestone == TRADE_MILESTONE_CHATOT_CRY_RECEIVED) {
            tradeRoom->connectStep++;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
            TradeRoom_LoadPartyIconSprites(tradeRoom->playerParty, 0, tradeRoom);
            TradeRoom_LoadPartyIconSprites(tradeRoom->partnerParty, MAX_PARTY_SIZE, tradeRoom);

            for (int i = 0; i < 2; i++) {
                Sprite_SetDrawFlag(tradeRoom->cursorSprites[i], TRUE);
            }
        }
        break;
    case TRADE_CONNECT_FADE_IN_MAIN_SCREEN:
        BrightnessController_StartTransition(8, 0, -16, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, BRIGHTNESS_MAIN_SCREEN);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        tradeRoom->connectStep++;
        break;
    case TRADE_CONNECT_WAIT_MAIN_FADE_AND_SHOW_DETAILS:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(tradeRoom->playerParty, 0);

            tradeRoom->pendingPreviewLoadSide = TradeRoom_LoadMonPreviewSprite(0, mon, tradeRoom->previewSpritePixelBuf[0], &tradeRoom->previewSpriteTemplate[0]);
            TradeRoom_ShowMonDetailCard(tradeRoom->windows, 0, tradeRoom->playerParty, 0, tradeRoom);
            tradeRoom->connectStep++;
        }
        break;
    case TRADE_CONNECT_FADE_IN_SUB_SCREEN:
        BrightnessController_StartTransition(8, 0, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_OBJ, BRIGHTNESS_SUB_SCREEN);
        Bg_ToggleLayer(BG_LAYER_SUB_0, 1);
        Bg_ToggleLayer(BG_LAYER_SUB_1, 1);
        Bg_ToggleLayer(BG_LAYER_SUB_2, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

        tradeRoom->connectStep++;
        TradeRoom_HideWaitDial(tradeRoom);
        break;
    case TRADE_CONNECT_WAIT_SUB_FADE_AND_FINISH:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            Window_EraseMessageBox(&tradeRoom->windows[23], 0);
            Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
            TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
            ResetUnlock(RESET_LOCK_0x2);

            return TRADE_PHASE_BROWSING;
        }

        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static void TradeRoom_CachePokemonDisplayData(Pokemon *mon, TradeRoomMonDisplayData *displayData)
{
    int wasDecrypted, item;

    wasDecrypted = Pokemon_EnterDecryptionContext(mon);

    displayData->pokeBall = Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL);
    displayData->species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    displayData->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    displayData->isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
    displayData->gender = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
    displayData->ballCapsuleId = Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL);

    item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    Pokemon_ExitDecryptionContext(mon, wasDecrypted);

    if (displayData->species != 0) {
        displayData->iconShouldFlip = SpeciesData_GetFormValue(displayData->species, displayData->form, SPECIES_DATA_FLIP_SPRITE);
    }

    if (item != 0) {
        displayData->heldItemType = Item_IsMail(item) + 1;
    }
}

static void TradeRoom_ShowPartnerMonDetails(TradeRoom *tradeRoom, int slotIdx)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(tradeRoom->partnerParty, slotIdx % MAX_PARTY_SIZE);

    tradeRoom->pendingPreviewLoadSide = TradeRoom_LoadMonPreviewSprite(1, mon, tradeRoom->previewSpritePixelBuf[slotIdx / MAX_PARTY_SIZE], &tradeRoom->previewSpriteTemplate[slotIdx / MAX_PARTY_SIZE]);

    TradeRoom_ShowMonDetailCard(tradeRoom->windows, 1, tradeRoom->partnerParty, slotIdx % MAX_PARTY_SIZE, tradeRoom);
    Sprite_SetAnim(tradeRoom->detailCardSprites[3], tradeRoom->monDisplayData[slotIdx].pokeBall + 6 - 1);
}

static void TradeRoom_RefreshFocusedMonDetails(TradeRoom *tradeRoom)
{
    if (tradeRoom->selectedSlot[0] != TRADE_SLOT_QUIT) {
        if (tradeRoom->selectedSlot[0] < MAX_PARTY_SIZE) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(tradeRoom->playerParty, tradeRoom->selectedSlot[0]);

            tradeRoom->pendingPreviewLoadSide = TradeRoom_LoadMonPreviewSprite(0, mon, tradeRoom->previewSpritePixelBuf[tradeRoom->selectedSlot[0] / MAX_PARTY_SIZE], &tradeRoom->previewSpriteTemplate[tradeRoom->selectedSlot[0] / MAX_PARTY_SIZE]);

            TradeRoom_ShowMonDetailCard(tradeRoom->windows, 0, tradeRoom->playerParty, tradeRoom->selectedSlot[0], tradeRoom);
            TradeRoom_HideMonDetailCard(tradeRoom->windows, 1, tradeRoom);
            Sprite_SetDrawFlag(tradeRoom->detailCardSprites[3], FALSE);
        } else {
            TradeRoom_ShowPartnerMonDetails(tradeRoom, tradeRoom->selectedSlot[0]);
            TradeRoom_HideMonDetailCard(tradeRoom->windows, 0, tradeRoom);
            Sprite_SetDrawFlag(tradeRoom->detailCardSprites[2], FALSE);
        }
    }
}

static int TradeRoom_UpdateMainLoop(TradeRoom *tradeRoom)
{
    if (tradeRoom->subStepCallback != NULL) {
        tradeRoom->subStepResult = tradeRoom->subStepCallback(tradeRoom);
    }

    switch (tradeRoom->subStepResult) {
    case TRADE_PHASE_CONNECTING:
        break;
    case TRADE_PHASE_CLOSING:
        return TRADE_PHASE_CLOSING;
        break;
    case TRADE_PHASE_BROWSING:
        break;
    case TRADE_PHASE_START_SUMMARY_TRANSITION:
        return TRADE_PHASE_START_SUMMARY_TRANSITION;
        break;
    }

    if (TradeRoom_UpdateCursor(&tradeRoom->pendingDirection[0], &tradeRoom->selectedSlot[0], tradeRoom->cursorSprites[0], tradeRoom->monDisplayData, 0)) {
        TradeRoom_RefreshFocusedMonDetails(tradeRoom);
    }

    TradeRoom_UpdateCursor(&tradeRoom->pendingDirection[1], &tradeRoom->selectedSlot[1], tradeRoom->cursorSprites[1], tradeRoom->monDisplayData, 1);
    TradeRoom_UpdateCursorGlowColor(&tradeRoom->cursorGlowAngle);
    TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_CURSOR, tradeRoom->selectedSlot[0]);

    return TRADE_PHASE_BROWSING;
}

static void TradeRoom_FreeSpriteRendering(TradeRoom *tradeRoom)
{
    SpriteTransfer_ResetCharTransfer(tradeRoom->spriteResources[0][0]);
    SpriteTransfer_ResetCharTransfer(tradeRoom->spriteResources[1][0]);

    SpriteTransfer_ResetPlttTransfer(tradeRoom->spriteResources[0][1]);
    SpriteTransfer_ResetPlttTransfer(tradeRoom->spriteResources[1][1]);

    for (int i = 0; i < 4; i++) {
        SpriteResourceCollection_Delete(tradeRoom->spriteResourceCollections[i]);
    }

    SpriteList_Delete(tradeRoom->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void TradeRoom_FreePartyIconGraphics(TradeRoom *tradeRoom)
{
    for (int i = 0; i < Party_GetCurrentCount(tradeRoom->playerParty); i++) {
        Heap_Free(tradeRoom->iconGraphicsBuffers[i]);
    }

    for (int i = 0; i < Party_GetCurrentCount(tradeRoom->partnerParty); i++) {
        Heap_Free(tradeRoom->iconGraphicsBuffers[i + MAX_PARTY_SIZE]);
    }
}

int TradeRoom_Exit(ApplicationManager *appMan, int *unused)
{
    TradeRoom *tradeRoom = ApplicationManager_Data(appMan);
    TradeRoomArgs *trArgs = ApplicationManager_Args(appMan);

    trArgs->tradeCompleted = tradeRoom->didConfirmTrade;

    TradeRoom_FreePartyIconGraphics(tradeRoom);

    String_Free(tradeRoom->itemLabelStr);
    Heap_Free(tradeRoom->partnerParty);

    TradeRoom_FreeSpriteRendering(tradeRoom);
    TradeRoom_FreeWindows(tradeRoom->windows);
    TradeRoom_FreeBackgrounds(tradeRoom->bgConfig);

    Heap_FreeExplicit(HEAP_ID_TRADE_ROOM, tradeRoom->bgConfig);
    MessageLoader_Free(tradeRoom->msgLoader);
    StringTemplate_Free(tradeRoom->unread_180);
    StringTemplate_Free(tradeRoom->strTemplate2);
    StringTemplate_Free(tradeRoom->strTemplate);
    String_Free(tradeRoom->playerNameStr);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_TRADE_ROOM);

    return 1;
}

static void TradeRoom_VBlankCallback(void *param)
{
    TradeRoom *tradeRoom = (TradeRoom *)param;

    Bg_RunScheduledUpdates(tradeRoom->bgConfig);

    if (tradeRoom->pendingPreviewLoadSide) {
        int side = tradeRoom->pendingPreviewLoadSide - 1;

        GXS_LoadOBJ(tradeRoom->previewSpritePixelBuf[side], 0 + side * (0x20 * 10 * 10), 0x20 * 10 * 10);
        Graphics_LoadPalette(tradeRoom->previewSpriteTemplate[side].narcID, tradeRoom->previewSpriteTemplate[side].palette, 5, 0x20 * (2 + side), 32, HEAP_ID_TRADE_ROOM);

        tradeRoom->pendingPreviewLoadSide = 0;
    }

    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void TradeRoom_ConfigureVRAMBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);
}

static void TradeRoom_InitBackgrounds(BgConfig *bgConfig)
{
    GraphicsModes modes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&modes);

    BgTemplate mainBg0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainBg0Template, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate mainBg1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBg1Template, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate mainBg2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainBg2Template, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate mainBg3Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &mainBg3Template, 0);

    BgTemplate subBg0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subBg0Template, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate subBg1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBg1Template, 0);

    BgTemplate subBg2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &subBg2Template, 0);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_TRADE_ROOM);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_TRADE_ROOM);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_TRADE_ROOM);

    for (int i = 0; i < 4; i++) {
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_0 + i, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_0 + i, 3, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0 + i, 0, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_SUB_0 + i, 3, 0);
    }

    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 0);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void TradeRoom_InitState(TradeRoom *tradeRoom, ApplicationManager *appMan)
{
    TradeRoomArgs *trArgs = ApplicationManager_Args(appMan);

    tradeRoom->args = trArgs;
    tradeRoom->unk_6CC = 4;
    tradeRoom->subAppActive = 0;
    tradeRoom->yesNoMenuStep = 0;
    tradeRoom->unk_16C = MAX_PARTY_SIZE;
    tradeRoom->unk_170 = MAX_PARTY_SIZE;
    tradeRoom->selectedSlot[0] = 0;
    tradeRoom->selectedSlot[1] = MAX_PARTY_SIZE;
    tradeRoom->subStepResult = TRADE_PHASE_CONNECTING;
    tradeRoom->phase = TRADE_PHASE_CONNECTING;
    tradeRoom->connectStep = TRADE_CONNECT_LOCK_SHAYMIN_FORM;
    tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
    tradeRoom->partnerSyncStatus[0] = 0;
    tradeRoom->partnerSyncStatus[1] = 0;
    tradeRoom->didConfirmTrade = 0;
    tradeRoom->pendingPreviewLoadSide = 0;
    tradeRoom->lastSyncedValue = -1;
    tradeRoom->lastSyncedCmd = -1;
    tradeRoom->staggerCountdown = 0;
    tradeRoom->connectionTimeoutArmed = 0;
    tradeRoom->connectionTimeoutFrames = 0;
    tradeRoom->playerParty = trArgs->party;
    tradeRoom->palPad = trArgs->palPad;
    tradeRoom->saveData = trArgs->saveData;
    tradeRoom->partnerParty = Heap_Alloc(HEAP_ID_TRADE_ROOM, Party_SaveSize());

    Party_InitWithCapacity(tradeRoom->partnerParty, MAX_PARTY_SIZE);
    memset(tradeRoom->partnerParty, 0xff, Party_SaveSize());

    tradeRoom->playerNameStr = TrainerInfo_NameNewString(trArgs->trainerInfo, 26);
    tradeRoom->itemLabelStr = MessageLoader_GetNewString(tradeRoom->msgLoader, TRADE_MSG_ITEM_LABEL);

    WiFiHistory_FlagGeonetLinkInfo(trArgs->wiFiHistory);
}

static void TradeRoom_FreeBackgrounds(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void TradeRoom_LoadTilemapMember(NARC *narc, u32 narcMemberIdx, BgConfig *bgConfig, u32 bgLayer, u32 unused, u32 size, BOOL compressed, u32 heapID)
{
    void *rawMember = LoadMemberFromOpenNARC(narc, narcMemberIdx, compressed, heapID, 1);

    if (rawMember != NULL) {
        NNSG2dScreenData *screenData;

        if (NNS_G2dGetUnpackedScreenData(rawMember, &screenData)) {
            if (size == 0) {
                size = screenData->szByte;
            }

            if (Bg_GetTilemapBuffer(bgConfig, bgLayer) != NULL) {
                Bg_LoadTilemapBuffer(bgConfig, bgLayer, screenData->rawData, size);
            }
        }

        Heap_Free(rawMember);
    }
}

static void TradeRoom_CopyPartyGridTilemapToVRAM(BgConfig *bgConfig, int unused1, int unused2)
{
    Bg_CopyTilemapBufferRangeToVRAM(bgConfig, 2, Bg_GetTilemapBuffer(bgConfig, 2), 32 * 24 * 2, 0);
}

static void TradeRoom_LoadBgGraphics(TradeRoom *tradeRoom, NARC *narc)
{
    BgConfig *bgConfig = tradeRoom->bgConfig;

    Graphics_LoadPaletteFromOpenNARC(narc, 0, 4, 0, 16 * 9 * 2, HEAP_ID_TRADE_ROOM);
    Graphics_LoadPaletteFromOpenNARC(narc, 0, 0, 0, 16 * 9 * 2, HEAP_ID_TRADE_ROOM);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_TRADE_ROOM);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 1, bgConfig, 2, 0, 16 * 18 * 0x20, 1, HEAP_ID_TRADE_ROOM);

    TradeRoom_LoadTilemapMember(narc, 3, bgConfig, 2, 0, 32 * 24 * 2, 1, HEAP_ID_TRADE_ROOM);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 4, bgConfig, 3, 0, 32 * 24 * 2, 1, HEAP_ID_TRADE_ROOM);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(2), HEAP_ID_TRADE_ROOM);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(3), HEAP_ID_TRADE_ROOM);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, bgConfig, 5, 0, 16 * 4 * 0x20, 1, HEAP_ID_TRADE_ROOM);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 5, bgConfig, 5, 0, 32 * 24 * 2, 1, HEAP_ID_TRADE_ROOM);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 6, bgConfig, 6, 0, 32 * 24 * 2, 1, HEAP_ID_TRADE_ROOM);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(2), HEAP_ID_TRADE_ROOM);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(3), HEAP_ID_TRADE_ROOM);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
}

static void TradeRoom_InitTransferSystems(void)
{
    CharTransferTemplate ctTemplate = {
        20, 2048, 2048, HEAP_ID_TRADE_ROOM
    };

    CharTransfer_Init(&ctTemplate);

    PlttTransfer_Init(20, HEAP_ID_TRADE_ROOM);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void TradeRoom_InitSpriteRendering(TradeRoom *tradeRoom, NARC *narc)
{
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 127, 0, 32, 0, 127, 0, 32, 26);

    tradeRoom->spriteList = SpriteList_InitRendering(2 + 12 + 12 + 12 + 2 + 2 + 2 + 1, &tradeRoom->spriteRenderer, HEAP_ID_TRADE_ROOM);

    for (int i = 0; i < 4; i++) {
        tradeRoom->spriteResourceCollections[i] = SpriteResourceCollection_New(2, i, HEAP_ID_TRADE_ROOM);
    }

    tradeRoom->spriteResources[0][0] = SpriteResourceCollection_AddTilesFrom(tradeRoom->spriteResourceCollections[0], narc, 7, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[0][1] = SpriteResourceCollection_AddPaletteFrom(tradeRoom->spriteResourceCollections[1], narc, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 9, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[0][2] = SpriteResourceCollection_AddFrom(tradeRoom->spriteResourceCollections[2], narc, 8, 1, 0, 2, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[0][3] = SpriteResourceCollection_AddFrom(tradeRoom->spriteResourceCollections[3], narc, 9, 1, 0, 3, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[1][0] = SpriteResourceCollection_AddTilesFrom(tradeRoom->spriteResourceCollections[0], narc, 10, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[1][1] = SpriteResourceCollection_AddPaletteFrom(tradeRoom->spriteResourceCollections[1], narc, 0, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 10, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[1][2] = SpriteResourceCollection_AddFrom(tradeRoom->spriteResourceCollections[2], narc, 11, 1, 1, 2, HEAP_ID_TRADE_ROOM);
    tradeRoom->spriteResources[1][3] = SpriteResourceCollection_AddFrom(tradeRoom->spriteResourceCollections[3], narc, 12, 1, 1, 3, HEAP_ID_TRADE_ROOM);

    SpriteTransfer_RequestChar(tradeRoom->spriteResources[0][0]);
    SpriteTransfer_RequestChar(tradeRoom->spriteResources[1][0]);
    SpriteTransfer_RequestPlttWholeRange(tradeRoom->spriteResources[0][1]);
    SpriteTransfer_RequestPlttWholeRange(tradeRoom->spriteResources[1][1]);
    Graphics_LoadPalette(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), 1, 10 * 0x20, 0x20 * 4, HEAP_ID_TRADE_ROOM);
}

static int TradeRoom_LoadMonPreviewSprite(int side, Pokemon *mon, u8 *destination, PokemonSpriteTemplate *psTemplate)
{
    Pokemon_BuildSpriteTemplate(psTemplate, mon, 2);

    int personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
    enum Species species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    CharacterSprite_LoadPokemonSpriteRect(psTemplate->narcID, psTemplate->character, HEAP_ID_TRADE_ROOM, 0, 0, 10, 10, destination, personality, FALSE, FACE_FRONT, species);

    DC_FlushRange(destination, 0x20 * 10 * 10);

    return side + 1;
}

static void TradeRoom_PrintMonNickname(Window *window, Party *party, int slot, int unused, int xOrCenter)
{
    String *str = String_Init(20, HEAP_ID_TRADE_ROOM);

    Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, slot), MON_DATA_NICKNAME_STRING, str);
    Window_FillTilemap(window, 0);
    TradeRoom_PrintStringInWindow(window, str, unused, TEXT_SPEED_INSTANT, xOrCenter, 1);
    String_Free(str);
}

static int TradeRoom_ResolveGenderIconState(TradeRoomMonDisplayData *displayData, Party *party, int slot, int genderValue)
{
    if ((displayData->species == SPECIES_NIDORAN_F) || (displayData->species == SPECIES_NIDORAN_M)) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
        int hasNickname = Pokemon_GetValue(mon, MON_DATA_HAS_NICKNAME, NULL);

        if (hasNickname == FALSE) {
            return GENDER_NONE;
        }
    }

    return genderValue;
}

static void TradeRoom_ShowMonDetailCard(Window *window, int side, Party *party, int slot, TradeRoom *tradeRoom)
{
    String *str, *itemNameStr;
    u16 item, level;
    int yOffset;
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
    yOffset = Pokemon_SpriteYOffset(mon, 2);

    Sprite_SetDrawFlag(tradeRoom->detailCardSprites[side], TRUE);
    TradeRoom_SetSpritePosition(tradeRoom->detailCardSprites[side], sDetailCardSpriteLayout[side][0], sDetailCardSpriteLayout[side][1] + yOffset + 192);

    if (side == 0) {
        Sprite_SetFlipMode(tradeRoom->detailCardSprites[side], tradeRoom->monDisplayData[slot].iconShouldFlip);
    }

    Sprite_SetAnim(tradeRoom->detailCardSprites[2 + side], tradeRoom->monDisplayData[slot].pokeBall + 6 - 1);
    Sprite_SetDrawFlag(tradeRoom->detailCardSprites[2 + side], TRUE);
    TradeRoom_PrintMonNickname(&window[26 + side], party, slot, 9, 6);

    int genderIconState = tradeRoom->monDisplayData[side * MAX_PARTY_SIZE + slot].gender;

    genderIconState = TradeRoom_ResolveGenderIconState(&tradeRoom->monDisplayData[side * MAX_PARTY_SIZE + slot], party, slot, genderIconState);

    if (tradeRoom->monDisplayData[side * MAX_PARTY_SIZE + slot].isEgg) {
        genderIconState = GENDER_NONE;
    }

    switch (genderIconState) {
    case GENDER_NONE:
        Sprite_SetDrawFlag(tradeRoom->detailCardSprites[4 + side], FALSE);
        break;
    case GENDER_MALE:
        Sprite_SetDrawFlag(tradeRoom->detailCardSprites[4 + side], TRUE);
        Sprite_SetAnim(tradeRoom->detailCardSprites[4 + side], 22 + 1);
        break;
    case GENDER_FEMALE:
        Sprite_SetDrawFlag(tradeRoom->detailCardSprites[4 + side], TRUE);
        Sprite_SetAnim(tradeRoom->detailCardSprites[4 + side], 22);
        break;
    }

    if (!tradeRoom->monDisplayData[side * MAX_PARTY_SIZE + slot].isEgg) {
        str = String_Init(10, HEAP_ID_TRADE_ROOM);
        Window_FillTilemap(&window[28 + side], 0);
        MessageLoader_GetString(tradeRoom->msgLoader, TRADE_MSG_LEVEL_LABEL, str);
        TradeRoom_PrintStringInWindow(&window[28 + side], str, 9, TEXT_SPEED_NO_TRANSFER, 6, 0);

        level = Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, slot), MON_DATA_LEVEL, NULL);
        String_FormatInt(str, level, 3, 0, 1);
        TradeRoom_PrintStringInWindow(&window[28 + side], str, 9, TEXT_SPEED_INSTANT, 24 + 6, 0);
        String_Free(str);
    } else {
        Window_ClearAndCopyToVRAM(&window[28 + side]);
    }

    TradeRoom_PrintStringInWindow(&window[30 + side], tradeRoom->itemLabelStr, 7, TEXT_SPEED_INSTANT, 3, 0);

    item = Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, slot), MON_DATA_HELD_ITEM, NULL);
    Window_FillTilemap(&window[32 + side], 0);

    itemNameStr = String_Init(20, HEAP_ID_TRADE_ROOM);
    Item_LoadName(itemNameStr, item, HEAP_ID_TRADE_ROOM);
    TradeRoom_PrintStringInWindow(&window[32 + side], itemNameStr, 9, TEXT_SPEED_INSTANT, 3, 0);
    String_Free(itemNameStr);
}

static void TradeRoom_HideMonDetailCard(Window *window, int side, TradeRoom *tradeRoom)
{
    Sprite_SetDrawFlag(tradeRoom->detailCardSprites[side], FALSE);
    Sprite_SetDrawFlag(tradeRoom->detailCardSprites[2 + side], FALSE);
    Sprite_SetDrawFlag(tradeRoom->detailCardSprites[4 + side], FALSE);
    Window_ClearAndCopyToVRAM(&window[26 + side]);
    Window_ClearAndCopyToVRAM(&window[28 + side]);
    Window_ClearAndCopyToVRAM(&window[30 + side]);
    Window_ClearAndCopyToVRAM(&window[32 + side]);
}

static void TradeRoom_CreateSprites(TradeRoom *tradeRoom)
{
    SpriteResourcesHeader_Init(&tradeRoom->mainSpriteResourcesHeader, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 2, tradeRoom->spriteResourceCollections[0], tradeRoom->spriteResourceCollections[1], tradeRoom->spriteResourceCollections[2], tradeRoom->spriteResourceCollections[3], NULL, NULL);
    SpriteResourcesHeader_Init(&tradeRoom->subSpriteResourcesHeader, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, tradeRoom->spriteResourceCollections[0], tradeRoom->spriteResourceCollections[1], tradeRoom->spriteResourceCollections[2], tradeRoom->spriteResourceCollections[3], NULL, NULL);

    AffineSpriteListTemplate aslTemplate;

    aslTemplate.list = tradeRoom->spriteList;
    aslTemplate.resourceData = &tradeRoom->mainSpriteResourcesHeader;
    aslTemplate.position.x = FX32_CONST(32);
    aslTemplate.position.y = FX32_CONST(96);
    aslTemplate.position.z = 0;
    aslTemplate.affineScale.x = FX32_ONE;
    aslTemplate.affineScale.y = FX32_ONE;
    aslTemplate.affineScale.z = FX32_ONE;
    aslTemplate.affineZRotation = 0;
    aslTemplate.priority = 0;
    aslTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    aslTemplate.heapID = HEAP_ID_TRADE_ROOM;

    for (int i = 0; i < 2; i++) {
        aslTemplate.position.x = FX32_ONE * sSlotScreenPositions[i][0];
        aslTemplate.position.y = FX32_ONE * sSlotScreenPositions[i][1];
        tradeRoom->cursorSprites[i] = SpriteList_AddAffine(&aslTemplate);
        Sprite_SetAnimateFlag(tradeRoom->cursorSprites[i], 1);
        TradeRoom_MoveCursorSprite(tradeRoom->selectedSlot[i], tradeRoom->cursorSprites[i], i);
        Sprite_SetPriority(tradeRoom->cursorSprites[i], 100);
        Sprite_SetDrawFlag(tradeRoom->cursorSprites[i], FALSE);
    }

    for (int i = 0; i < TRADE_SLOT_QUIT; i++) {
        aslTemplate.position.x = FX32_ONE * (sSlotScreenPositions[i][0] + 16);
        aslTemplate.position.y = FX32_ONE * (sSlotScreenPositions[i][1] - 6);
        tradeRoom->iconSprites[i] = SpriteList_AddAffine(&aslTemplate);
        Sprite_SetAnimateFlag(tradeRoom->iconSprites[i], 1);
        Sprite_SetAnim(tradeRoom->iconSprites[i], 5 + i);
        Sprite_SetPriority(tradeRoom->iconSprites[i], 5);
        Sprite_SetDrawFlag(tradeRoom->iconSprites[i], FALSE);
    }

    for (int i = 0; i < TRADE_SLOT_QUIT; i++) {
        aslTemplate.position.x = FX32_ONE * (sSlotScreenPositions[i][0] + 16 + 20);
        aslTemplate.position.y = FX32_ONE * (sSlotScreenPositions[i][1] + 16);
        aslTemplate.priority = 0;
        tradeRoom->itemIconSprites[i] = SpriteList_AddAffine(&aslTemplate);
        Sprite_SetPriority(tradeRoom->itemIconSprites[i], 3);
        Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i], FALSE);
    }

    for (int i = 0; i < TRADE_SLOT_QUIT; i++) {
        aslTemplate.position.x = FX32_ONE * (sSlotScreenPositions[i][0] + 16 + 20 + 9);
        aslTemplate.position.y = FX32_ONE * (sSlotScreenPositions[i][1] + 16);
        aslTemplate.priority = 0;
        tradeRoom->capsuleIconSprites[i] = SpriteList_AddAffine(&aslTemplate);
        Sprite_SetPriority(tradeRoom->capsuleIconSprites[i], 3);
        Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i], FALSE);
    }

    aslTemplate.position.x = FX32_ONE * (128 - 4 * 8);
    aslTemplate.position.y = FX32_ONE * (8 * 8 + 2);
    tradeRoom->convergeIndicatorSprite = SpriteList_AddAffine(&aslTemplate);
    Sprite_SetAnimateFlag(tradeRoom->convergeIndicatorSprite, 1);
    Sprite_SetAnim(tradeRoom->convergeIndicatorSprite, 20);
    Sprite_SetDrawFlag(tradeRoom->convergeIndicatorSprite, FALSE);

    for (int i = 0; i < 6; i++) {
        aslTemplate.resourceData = &tradeRoom->subSpriteResourcesHeader;
        aslTemplate.position.x = FX32_ONE * sDetailCardSpriteLayout[i][0];
        aslTemplate.position.y = FX32_ONE * (sDetailCardSpriteLayout[i][1]) + (192 << FX32_SHIFT);
        aslTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        tradeRoom->detailCardSprites[i] = SpriteList_AddAffine(&aslTemplate);
        Sprite_SetDrawFlag(tradeRoom->detailCardSprites[i], FALSE);
        Sprite_SetAnimateFlag(tradeRoom->detailCardSprites[i], 0);
        Sprite_SetAnim(tradeRoom->detailCardSprites[i], sDetailCardSpriteLayout[i][2]);
    }
}

static void TradeRoom_PollDPadDirection(u32 *direction)
{
    int pressedCount = 0;
    int dir = 0;

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        dir = 1;
        pressedCount++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        dir = 2;
        pressedCount++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        dir = 3;
        pressedCount++;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        dir = 4;
        pressedCount++;
    }

    if (pressedCount) {
        *direction = dir;
    }
}

static const TouchScreenRect sMonCryTouchRect[] = {
    { 56, 136, 24, 104 },
    { 255, 0, 0, 0 }
};

static void TradeRoom_PlayTouchedMonCry(TradeRoom *tradeRoom)
{
    u16 species, form;
    int touchedRectIndex = -1;

    if (tradeRoom->selectedSlot[0] >= MAX_PARTY_SIZE) {
        return;
    }

    touchedRectIndex = TouchScreen_CheckRectanglePressed(sMonCryTouchRect);

    if (touchedRectIndex != 0xffffffff) {
        if (tradeRoom->monDisplayData[tradeRoom->selectedSlot[0]].isEgg) {
            return;
        }

        species = tradeRoom->monDisplayData[tradeRoom->selectedSlot[0]].species;
        form = tradeRoom->monDisplayData[tradeRoom->selectedSlot[0]].form;

        if (species == SPECIES_CHATOT) {
            Sound_PlayChatotCry(SaveData_GetChatotCry(tradeRoom->saveData), 0, 100, 0);
        } else {
            Sound_PlayPokemonCry(species, form);
        }

        Sprite_SetAnimateFlag(tradeRoom->detailCardSprites[touchedRectIndex], 1);
        Sprite_SetAnim(tradeRoom->detailCardSprites[touchedRectIndex], 4 + touchedRectIndex);
    }
}

static void TradeRoom_UpdateCursorGlowColor(u16 *angle)
{
    fx32 sinVal;
    GXRgb color;
    int green;

    *angle += 20;

    if (*angle > 360) {
        *angle = 0;
    }

    sinVal = CalcSineDegrees_Wraparound(*angle);
    green = 15 + (sinVal * 10) / FX32_ONE;
    color = GX_RGB(29, green, 0);

    GX_LoadOBJPltt((u16 *)&color, (16 + 13) * 2, 2);
}

static int TradeRoom_ResolveCursorMoveTarget(int currentSlot, int direction, TradeRoomMonDisplayData *displayData)
{
    int i, targetSlot = 0;

    for (i = 0; i < 6; i++) {
        if (displayData[sCursorMoveCandidates[currentSlot][direction][i]].species != 0) {
            targetSlot = sCursorMoveCandidates[currentSlot][direction][i];
            break;
        }
    }

    return targetSlot;
}

static const int sCursorZoneAnimFrames[][3] = {
    { 0, 1, 2 },
    { 17, 18, 19 }
};

static void TradeRoom_MoveCursorSprite(int slot, Sprite *sprite, int cursorIdx)
{
    VecFx32 pos;

    GF_ASSERT(slot < TRADE_SLOT_QUIT + 1);

    pos.x = FX32_ONE * sSlotScreenPositions[slot][0];
    pos.y = FX32_ONE * sSlotScreenPositions[slot][1];

    if (slot == TRADE_SLOT_QUIT) {
        Sprite_SetPosition(sprite, &pos);
        Sprite_SetAnim(sprite, sCursorZoneAnimFrames[cursorIdx][2]);
    } else {
        Sprite_SetPosition(sprite, &pos);

        if (slot < MAX_PARTY_SIZE) {
            Sprite_SetAnim(sprite, sCursorZoneAnimFrames[cursorIdx][0]);
        } else {
            Sprite_SetAnim(sprite, sCursorZoneAnimFrames[cursorIdx][1]);
        }
    }
}

static int TradeRoom_UpdateCursor(u32 *directionFlag, int *slotIdx, Sprite *sprite, TradeRoomMonDisplayData *displayData, int side)
{
    int direction = *directionFlag - 1;
    int targetSlot = 0;
    int didMove = 0;

    if (side == 0) {
        if (*directionFlag) {
            targetSlot = TradeRoom_ResolveCursorMoveTarget(*slotIdx, direction, displayData);
            TradeRoom_MoveCursorSprite(targetSlot, sprite, side);

            if (*slotIdx != targetSlot) {
                Sound_PlayEffect(SE_CONFIRM_sseq_3);
                *slotIdx = targetSlot;
                didMove = 1;
            }
        }

        *directionFlag = 0;
    } else {
        TradeRoom_MoveCursorSprite(*slotIdx, sprite, side);
    }

    return didMove;
}

void TradeRoom_SendCommByte(int unused, int cmd, int value)
{
    u8 byteValue = value;
    CommSys_SendData(cmd, &byteValue, 1);
}

void TradeRoom_SyncValueToPartner(TradeRoom *tradeRoom, int cmd, int value)
{
    if ((value != tradeRoom->lastSyncedValue) || (cmd != tradeRoom->lastSyncedCmd)) {
        TradeRoom_SendCommByte(CommSys_CurNetId(), cmd, value);
        tradeRoom->lastSyncedValue = value;
        tradeRoom->lastSyncedCmd = cmd;
    }
}

static void *TradeRoom_OffsetPartyPtr(Party *party, int index)
{
    u32 base = (u32)party;

    return (void *)(base + index * (236 * MAX_PARTY_SIZE + 4 * 2));
}

void TradeRoom_SendParty(int netId, Party *party, int index)
{
    if (CommSys_IsPlayerConnected(netId)) {
        CommSys_SendDataHuge(TRADE_CMD_SEND_PARTY, TradeRoom_OffsetPartyPtr(party, index), 236 * MAX_PARTY_SIZE + 4 * 2);
    }
}

static void TradeRoom_SendRibbonData(SaveData *saveData)
{
    u8 *ribbonData = SaveData_GetRibbons(saveData);

    CommSys_SendData(TRADE_CMD_SEND_RIBBONS, ribbonData, 14);
}

static void TradeRoom_CreateNetworkObject(TrainerInfo *trainerInfo, PalPad *source, PalPad *destination) // nearly identical to PalPad_CreateNetworkObject
{
    CharCode_Copy(destination->trainerName, TrainerInfo_Name(trainerInfo));

    destination->trainerId = TrainerInfo_ID(trainerInfo);
    destination->language = TrainerInfo_Language(trainerInfo);
    destination->gameCode = TrainerInfo_GameCode(trainerInfo);
    destination->gender = TrainerInfo_Gender(trainerInfo);

    for (int i = 0; i < 16; i++) {
        destination->associatedTrainerIds[i] = source[i].trainerId;
        destination->associatedTrainerGameCodes[i] = source[i].gameCode;
        destination->associatedTrainerLanguages[i] = source[i].language;
        destination->associatedTrainerGenders[i] = source[i].gender;
    }

    CommSys_SendDataHuge(TRADE_CMD_SEND_PALPAD, destination, sizeof(PalPad));
}

static void TradeRoom_SendChatotCry(ChatotCry *chatotCryData)
{
    CommSys_SendDataHuge(TRADE_CMD_SEND_CHATOT_CRY, chatotCryData, 1000);
}

static int TradeRoom_HandleBrowseInput(TradeRoom *tradeRoom)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        tradeRoom->selectedSlot[0] = TRADE_SLOT_QUIT;
        TradeRoom_RefreshFocusedMonDetails(tradeRoom);
        TradeRoom_MoveCursorSprite(tradeRoom->selectedSlot[0], tradeRoom->cursorSprites[0], 0);
    } else {
        TradeRoom_PollDPadDirection(&tradeRoom->pendingDirection[0]);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (tradeRoom->pendingDirection[0] == 0) {
                if (tradeRoom->selectedSlot[0] == TRADE_SLOT_QUIT) {
                    tradeRoom->subStepCallback = TradeRoom_PromptQuitConfirm;
                } else if (tradeRoom->selectedSlot[0] < MAX_PARTY_SIZE) {
                    tradeRoom->subStepCallback = TradeRoom_ShowMonActionMenu;
                } else if ((tradeRoom->selectedSlot[0] >= MAX_PARTY_SIZE) && (tradeRoom->selectedSlot[0] < TRADE_SLOT_QUIT)) {
                    tradeRoom->subStepCallback = TradeRoom_ShowPartnerMonActionMenu;
                }
            }
        }
    }

    return TRADE_PHASE_CONNECTING;
}

static const u8 visiblePages[] = {
    SUMMARY_PAGE_INFO,
    SUMMARY_PAGE_MEMO,
    SUMMARY_PAGE_SKILLS,
    SUMMARY_PAGE_CONDITION,
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_RIBBONS,
    SUMMARY_PAGE_EXIT,
    SUMMARY_PAGE_MAX,
};

static void TradeRoom_OpenMonSummary(TradeRoom *tradeRoom, int side)
{
    if (side == 0) {
        tradeRoom->summaryArgs.monData = tradeRoom->playerParty;
        tradeRoom->summaryArgs.monMax = Party_GetCurrentCount(tradeRoom->args->party);

        tradeRoom->summaryArgs.chatotCry = NULL;
        PokemonSummaryScreen_SetPlayerProfile(&tradeRoom->summaryArgs, CommInfo_TrainerInfo(CommSys_CurNetId()));
    } else {
        tradeRoom->summaryArgs.monData = tradeRoom->partnerParty;
        tradeRoom->summaryArgs.monMax = Party_GetCurrentCount(tradeRoom->partnerParty);
        tradeRoom->summaryArgs.chatotCry = (ChatotCry *)tradeRoom->chatotCryBuffer[CommSys_CurNetId() ^ 1];
        PokemonSummaryScreen_SetPlayerProfile(&tradeRoom->summaryArgs, CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1));
    }

    tradeRoom->summaryArgs.dataType = SUMMARY_DATA_PARTY_MON;
    tradeRoom->summaryArgs.monIndex = tradeRoom->selectedSlot[0] % MAX_PARTY_SIZE;
    tradeRoom->summaryArgs.mode = SUMMARY_MODE_LOCK_MOVES;
    tradeRoom->summaryArgs.move = 0;
    tradeRoom->summaryArgs.showContest = PokemonSummaryScreen_ShowContestData(tradeRoom->args->saveData);
    tradeRoom->summaryArgs.dexMode = tradeRoom->args->dexMode;
    tradeRoom->summaryArgs.options = tradeRoom->args->options;
    tradeRoom->summaryArgs.specialRibbons = SaveData_GetRibbons(tradeRoom->args->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&tradeRoom->summaryArgs, visiblePages);

    tradeRoom->appMan = ApplicationManager_New(&gPokemonSummaryScreenApp, &tradeRoom->summaryArgs, HEAP_ID_TRADE_ROOM);
    tradeRoom->summarySide = side;
}

static int TradeRoom_PromptQuitConfirm(TradeRoom *tradeRoom)
{
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_CANCEL_TRADING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);

    tradeRoom->subStepCallback = TradeRoom_HandleQuitConfirm;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleQuitConfirm(TradeRoom *tradeRoom)
{
    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_WAITING_FOR_FRIEND, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_QUIT);
        tradeRoom->subStepCallback = TradeRoom_HandleMutualQuitSync;
        tradeRoom->didConfirmTrade = 0;
        break;
    case YES_NO_CHOICE_NO:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_ShowNotification(TradeRoom *tradeRoom)
{
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[23], tradeRoom->notificationMsgId, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
    tradeRoom->subStepCallback = TradeRoom_WaitForNotificationDismiss;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_WaitForNotificationDismiss(TradeRoom *tradeRoom)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
        TradeRoom_RestoreFullPartyGrid(tradeRoom);
    }

    return TRADE_PHASE_CONNECTING;
}

static void TradeRoom_PrintPalPadMessage(TradeRoom *tradeRoom, int entryId)
{
    TradeRoom_PrintMessage(&tradeRoom->windows[23], entryId, FONT_MESSAGE, tradeRoom->palPadMsgLoader, tradeRoom->palPadStrTemplate);
}

static int TradeRoom_HandleAbandonRegistrationConfirm(TradeRoom *tradeRoom)
{
    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        tradeRoom->subStepCallback = TradeRoom_ProcessPendingFriendRegistration;
        break;
    case YES_NO_CHOICE_NO:
        TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_ROSTER_FULL);
        tradeRoom->subStepCallback = TradeRoom_HandleRosterFullConfirm;
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleDeleteFriendConfirm(TradeRoom *tradeRoom)
{
    TrainerInfo *trainerInfo;

    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        BattleFrontierSave_ClearFriendStatsAndShift(SaveData_GetBattleFrontier(tradeRoom->saveData), tradeRoom->friendToDeleteSlot);
        sub_0202AFD4(tradeRoom->wifiList, tradeRoom->friendToDeleteSlot);
        sub_02039298(tradeRoom->saveData, tradeRoom->registrationTargetNetId, 32 - 1, HEAP_ID_TRADE_ROOM, 0);
        tradeRoom->subStepCallback = TradeRoom_ProcessPendingFriendRegistration;
        break;
    case YES_NO_CHOICE_NO:
        trainerInfo = CommInfo_TrainerInfo(tradeRoom->registrationTargetNetId);
        StringTemplate_SetPlayerName(tradeRoom->palPadStrTemplate, 0, trainerInfo);
        TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_ABANDON_REGISTRATION);
        tradeRoom->subStepCallback = TradeRoom_HandleAbandonRegistrationConfirm;
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleFriendListMenuInput(TradeRoom *tradeRoom)
{
    int input;
    TrainerInfo *trainerInfo;

    input = ListMenu_ProcessInput(tradeRoom->friendListMenu);

    switch (input) {
    case MENU_INPUT_PENDING:
        return TRADE_PHASE_CONNECTING;
    case MENU_INPUT_CANCELLED:
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        trainerInfo = CommInfo_TrainerInfo(tradeRoom->registrationTargetNetId);
        StringTemplate_SetPlayerName(tradeRoom->palPadStrTemplate, 0, trainerInfo);
        TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_ABANDON_REGISTRATION);
        tradeRoom->subStepCallback = TradeRoom_HandleAbandonRegistrationConfirm;
        break;
    default:
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        tradeRoom->friendToDeleteSlot = input;

        TrainerInfo *trainerInfo = TrainerInfo_New(HEAP_ID_TRADE_ROOM);

        TrainerInfo_SetName(trainerInfo, sub_0202AEF0(tradeRoom->wifiList, input));
        StringTemplate_SetPlayerName(tradeRoom->palPadStrTemplate, 0, trainerInfo);
        Heap_Free(trainerInfo);

        TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_DELETE_FRIEND);
        tradeRoom->subStepCallback = TradeRoom_HandleDeleteFriendConfirm;
        break;
    }

    Window_EraseStandardFrame(&tradeRoom->friendListWindow, 0);
    Window_Remove(&tradeRoom->friendListWindow);
    ListMenu_Free(tradeRoom->friendListMenu, NULL, NULL);
    StringList_Free(tradeRoom->friendListChoices);

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_BuildFriendListMenu(TradeRoom *tradeRoom)
{
    int friendCount = WiFiList_GetValidFriendsCount(tradeRoom->wifiList);
    tradeRoom->friendListChoices = StringList_New(friendCount + 1, HEAP_ID_TRADE_ROOM);

    String *str = String_Init(100, HEAP_ID_TRADE_ROOM);

    for (int i = 0; i < MAX_FRIENDS; i++) {
        if (WiFiList_IsValidFriendData(tradeRoom->wifiList, i)) {
            String_CopyChars(str, sub_0202AEF0(tradeRoom->wifiList, i));
            StringList_AddFromString(tradeRoom->friendListChoices, str, i);
        }
    }

    StringList_AddFromMessageBank(tradeRoom->friendListChoices, tradeRoom->palPadMsgLoader, PALPAD_MSG_CANCEL, MENU_INPUT_CANCELLED);
    String_Free(str);

    tradeRoom->friendListMenu = TradeRoom_NewFriendListMenu(tradeRoom->friendListChoices, friendCount, &tradeRoom->friendListWindow, tradeRoom->bgConfig);
    tradeRoom->subStepCallback = TradeRoom_HandleFriendListMenuInput;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleRosterFullConfirm(TradeRoom *tradeRoom)
{
    TrainerInfo *trainerInfo;

    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        tradeRoom->subStepCallback = TradeRoom_BuildFriendListMenu;
        break;
    case YES_NO_CHOICE_NO:
        trainerInfo = CommInfo_TrainerInfo(tradeRoom->registrationTargetNetId);
        StringTemplate_SetPlayerName(tradeRoom->palPadStrTemplate, 0, trainerInfo);
        TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_ABANDON_REGISTRATION);
        tradeRoom->subStepCallback = TradeRoom_HandleAbandonRegistrationConfirm;
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleRegisterFriendConfirm(TradeRoom *tradeRoom)
{
    int i;

    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        tradeRoom->subStepCallback = TradeRoom_ProcessPendingFriendRegistration;

        for (i = 0; i < MAX_FRIENDS; i++) {
            if (!WiFiList_IsValidFriendData(tradeRoom->wifiList, i)) {
                sub_02039298(tradeRoom->saveData, tradeRoom->registrationTargetNetId, i, HEAP_ID_TRADE_ROOM, 0);
                break;
            }
        }

        if (i == 32) {
            TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_ROSTER_FULL);
            tradeRoom->subStepCallback = TradeRoom_HandleRosterFullConfirm;
            return TRADE_PHASE_CONNECTING;
        }

        break;
    case YES_NO_CHOICE_NO:
        tradeRoom->subStepCallback = TradeRoom_ProcessPendingFriendRegistration;
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_WaitForCancelSync(TradeRoom *unused)
{
    if (CommTiming_IsSyncState(19)) {
        return TRADE_PHASE_CLOSING;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_ProcessPendingFriendRegistration(TradeRoom *tradeRoom)
{
    TrainerInfo *trainerInfo;

    tradeRoom->registrationTargetNetId = -1;

    for (int i = 0; i < CommSys_ConnectedCount(); i++) {
        if (tradeRoom->pendingRegistrationFlags[i] == 2) {
            tradeRoom->registrationTargetNetId = i;
            tradeRoom->pendingRegistrationFlags[i] = 0;
            break;
        }
    }

    if (tradeRoom->registrationTargetNetId == -1) {
        MessageLoader_Free(tradeRoom->palPadMsgLoader);
        StringTemplate_Free(tradeRoom->palPadStrTemplate);
        CommTiming_StartSync(19);
        TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_WAITING_FOR_FRIEND, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_WaitForCancelSync;
        return TRADE_PHASE_CONNECTING;
    }

    if (Bag_CanRemoveItem(SaveData_GetBag(tradeRoom->saveData), ITEM_PAL_PAD, 1, HEAP_ID_TRADE_ROOM) == TRUE) {
        trainerInfo = CommInfo_TrainerInfo(tradeRoom->registrationTargetNetId);
        StringTemplate_SetPlayerName(tradeRoom->palPadStrTemplate, 0, trainerInfo);
        TradeRoom_PrintPalPadMessage(tradeRoom, PALPAD_MSG_REGISTER_FRIEND);
        tradeRoom->subStepCallback = TradeRoom_HandleRegisterFriendConfirm;
        return TRADE_PHASE_CONNECTING;
    }

    WiFiList *wifiList = SaveData_GetWiFiList(tradeRoom->saveData);

    for (int i = 0; i < MAX_FRIENDS; i++) {
        if (!WiFiList_IsValidFriendData(wifiList, i)) {
            sub_02039298(tradeRoom->saveData, tradeRoom->registrationTargetNetId, i, HEAP_ID_TRADE_ROOM, 0);
            break;
        }
    }

    tradeRoom->subStepCallback = TradeRoom_ProcessPendingFriendRegistration;
    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_CheckForFriendRegistration(TradeRoom *tradeRoom)
{
    if (0 == sub_020391DC(tradeRoom->saveData, tradeRoom->pendingRegistrationFlags, HEAP_ID_TRADE_ROOM)) {
        CommTiming_StartSync(19);
        TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_WAITING_FOR_FRIEND, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_WaitForCancelSync;
        return TRADE_PHASE_CONNECTING;
    }

    tradeRoom->palPadStrTemplate = StringTemplate_Default(HEAP_ID_TRADE_ROOM);
    tradeRoom->palPadMsgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0675, HEAP_ID_TRADE_ROOM);
    tradeRoom->wifiList = SaveData_GetWiFiList(tradeRoom->saveData);
    tradeRoom->subStepCallback = TradeRoom_ProcessPendingFriendRegistration;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleMutualQuitSync(TradeRoom *tradeRoom)
{
    if ((tradeRoom->partnerSyncStatus[0] != 0) && (tradeRoom->partnerSyncStatus[1] != 0)) {
        if ((tradeRoom->partnerSyncStatus[0] == TRADE_STATUS_QUIT) && (tradeRoom->partnerSyncStatus[1] == TRADE_STATUS_QUIT)) {
            tradeRoom->subStepCallback = TradeRoom_CheckForFriendRegistration;
        } else {
            tradeRoom->subStepCallback = TradeRoom_ShowNotification;
        }

        tradeRoom->partnerSyncStatus[0] = 0;
        tradeRoom->partnerSyncStatus[1] = 0;
        tradeRoom->notificationMsgId = TRADE_MSG_FRIEND_WANTS_TO_TRADE;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_ShowMonActionMenu(TradeRoom *tradeRoom)
{
    MenuTemplate menuTemplate;

    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 3;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = FALSE;

    StringTemplate_SetNickname(tradeRoom->strTemplate2, 0, Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(tradeRoom->playerParty, tradeRoom->selectedSlot[0])));
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[22], TRADE_MSG_MON_SELECTED, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate2);

    tradeRoom->actionMenuChoices = StringList_New(3, HEAP_ID_TRADE_ROOM);

    StringList_AddFromMessageBank(tradeRoom->actionMenuChoices, tradeRoom->msgLoader, TRADE_MSG_SUMMARY_OPTION, MON_ACTION_SUMMARY);
    StringList_AddFromMessageBank(tradeRoom->actionMenuChoices, tradeRoom->msgLoader, TRADE_MSG_TRADE_OPTION, MON_ACTION_TRADE);
    StringList_AddFromMessageBank(tradeRoom->actionMenuChoices, tradeRoom->msgLoader, TRADE_MSG_CANCEL_OPTION, MON_ACTION_CANCEL);

    menuTemplate.choices = tradeRoom->actionMenuChoices;
    menuTemplate.window = &tradeRoom->windows[24];

    TradeRoom_DrawActionMenuFrame(&tradeRoom->windows[24]);

    tradeRoom->actionMenu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, HEAP_ID_TRADE_ROOM, PAD_BUTTON_B);
    tradeRoom->subStepCallback = TradeRoom_HandleMonActionInput;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleMonActionInput(TradeRoom *tradeRoom)
{
    switch (Menu_ProcessInput(tradeRoom->actionMenu)) {
    case MON_ACTION_SUMMARY:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        Menu_Free(tradeRoom->actionMenu, NULL);
        StringList_Free(tradeRoom->actionMenuChoices);
        tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
        return TRADE_PHASE_START_SUMMARY_TRANSITION;
        break;
    case MON_ACTION_TRADE:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_COMMUNICATING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        Menu_Free(tradeRoom->actionMenu, NULL);
        StringList_Free(tradeRoom->actionMenuChoices);
        tradeRoom->subStepCallback = TradeRoom_AnnounceTradeChoice;
        break;
    case MON_ACTION_CANCEL:
    case MENU_INPUT_CANCELLED:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        Menu_Free(tradeRoom->actionMenu, NULL);
        StringList_Free(tradeRoom->actionMenuChoices);
        tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_AnnounceTradeChoice(TradeRoom *tradeRoom)
{
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_COMMUNICATING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
    TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_CHOSE_TRADE);

    tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeSync;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleMutualTradeSync(TradeRoom *tradeRoom)
{
    if ((tradeRoom->partnerSyncStatus[0] != 0) && (tradeRoom->partnerSyncStatus[1] != 0)) {
        if ((tradeRoom->partnerSyncStatus[0] == TRADE_STATUS_CHOSE_TRADE) && (tradeRoom->partnerSyncStatus[1] == TRADE_STATUS_CHOSE_TRADE)) {
            tradeRoom->subStepCallback = TradeRoom_PrepareMonSlideAnimation;
        } else {
            tradeRoom->subStepCallback = TradeRoom_ShowNotification;
        }

        tradeRoom->notificationMsgId = TRADE_MSG_TRADE_CANCELED;
        tradeRoom->partnerSyncStatus[0] = 0;
        tradeRoom->partnerSyncStatus[1] = 0;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_PrepareMonSlideAnimation(TradeRoom *tradeRoom)
{
    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        if (i != tradeRoom->selectedSlot[0]) {
            Sprite_SetDrawFlag(tradeRoom->iconSprites[i], FALSE);

            if (tradeRoom->monDisplayData[i].heldItemType) {
                Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i], FALSE);
            }

            if (tradeRoom->monDisplayData[i].ballCapsuleId) {
                Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i], FALSE);
            }
        }

        Window_ClearAndScheduleCopyToVRAM(&tradeRoom->windows[7 + i]);

        if (i != (tradeRoom->selectedSlot[1] - MAX_PARTY_SIZE)) {
            Sprite_SetDrawFlag(tradeRoom->iconSprites[i + MAX_PARTY_SIZE], FALSE);

            if (tradeRoom->monDisplayData[i + MAX_PARTY_SIZE].heldItemType) {
                Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i + MAX_PARTY_SIZE], FALSE);
            }

            if (tradeRoom->monDisplayData[i + MAX_PARTY_SIZE].ballCapsuleId) {
                Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i + MAX_PARTY_SIZE], FALSE);
            }
        }

        Window_ClearAndScheduleCopyToVRAM(&tradeRoom->windows[13 + i]);
    }

    Sprite_SetDrawFlag(tradeRoom->cursorSprites[0], FALSE);
    Sprite_SetDrawFlag(tradeRoom->cursorSprites[1], FALSE);

    TradeRoom_SetSlideAnimPath(tradeRoom->playerSlidePath, sSlotScreenPositions[tradeRoom->selectedSlot[0]][0] + 16, sSlotScreenPositions[tradeRoom->selectedSlot[0]][1] + -6, 6 * 8, 6 * 8);
    TradeRoom_SetSlideAnimPath(tradeRoom->partnerSlidePath, sSlotScreenPositions[tradeRoom->selectedSlot[1]][0] + 16, sSlotScreenPositions[tradeRoom->selectedSlot[1]][1] + -6, 22 * 8, 6 * 8);

    tradeRoom->slideAnimFrame = 0;
    tradeRoom->subStepCallback = TradeRoom_UpdateSlideAnimation;

    return TRADE_PHASE_CONNECTING;
}

static void TradeRoom_SetSlideAnimPath(VecFx32 path[], int startX, int startY, int endX, int endY)
{
    path[0].x = FX32_ONE * startX;
    path[0].y = FX32_ONE * startY;
    path[1].x = FX32_ONE * endX;
    path[1].y = FX32_ONE * endY;
}

static void TradeRoom_ApplySlideAnimStep(Sprite *iconSprite, Sprite *itemSprite, Sprite *capsuleSprite, int step, VecFx32 path[], TradeRoomMonDisplayData *displayData)
{
    VecFx32 iconPos, itemPos, capsulePos;

    iconPos.x = path[0].x + ((path[1].x - path[0].x) / 20) * step;
    iconPos.y = path[0].y + ((path[1].y - path[0].y) / 20) * step;

    Sprite_SetPosition(iconSprite, &iconPos);

    if (displayData->heldItemType) {
        itemPos.x = iconPos.x + 20 * FX32_ONE;
        itemPos.y = iconPos.y + (16 + 6) * FX32_ONE;
        Sprite_SetPosition(itemSprite, &itemPos);
    }

    if (displayData->ballCapsuleId) {
        capsulePos.x = iconPos.x + (20 + 8) * FX32_ONE;
        capsulePos.y = iconPos.y + (16 + 6) * FX32_ONE;
        Sprite_SetPosition(capsuleSprite, &capsulePos);
    }
}

static int TradeRoom_UpdateSlideAnimation(TradeRoom *tradeRoom)
{
    tradeRoom->slideAnimFrame++;

    TradeRoom_ApplySlideAnimStep(tradeRoom->iconSprites[tradeRoom->selectedSlot[0]], tradeRoom->itemIconSprites[tradeRoom->selectedSlot[0]], tradeRoom->capsuleIconSprites[tradeRoom->selectedSlot[0]], tradeRoom->slideAnimFrame, tradeRoom->playerSlidePath, &tradeRoom->monDisplayData[tradeRoom->selectedSlot[0]]);
    TradeRoom_ApplySlideAnimStep(tradeRoom->iconSprites[tradeRoom->selectedSlot[1]], tradeRoom->itemIconSprites[tradeRoom->selectedSlot[1]], tradeRoom->capsuleIconSprites[tradeRoom->selectedSlot[1]], tradeRoom->slideAnimFrame, tradeRoom->partnerSlidePath, &tradeRoom->monDisplayData[tradeRoom->selectedSlot[1]]);

    if (tradeRoom->slideAnimFrame == 20 + 1) {
        TradeRoom_PrintMonNickname(&tradeRoom->windows[19], tradeRoom->playerParty, tradeRoom->selectedSlot[0], 8, 1);
        TradeRoom_PrintMonNickname(&tradeRoom->windows[20], tradeRoom->partnerParty, tradeRoom->selectedSlot[1] - MAX_PARTY_SIZE, 8, 1);
        TradeRoom_ShowPartnerMonDetails(tradeRoom, tradeRoom->selectedSlot[1]);
        tradeRoom->subStepCallback = TradeRoom_PromptTradeConfirm;
        Sprite_SetDrawFlag(tradeRoom->convergeIndicatorSprite, TRUE);
    }

    return TRADE_PHASE_CONNECTING;
}

static void TradeRoom_RestoreFullPartyGrid(TradeRoom *tradeRoom)
{
    Window_ClearAndScheduleCopyToVRAM(&tradeRoom->windows[19]);
    Window_ClearAndScheduleCopyToVRAM(&tradeRoom->windows[20]);

    for (int i = 0; i < TRADE_SLOT_QUIT; i++) {
        if (tradeRoom->monDisplayData[i].species != 0) {
            TradeRoom_SetSpritePosition(tradeRoom->iconSprites[i], sSlotScreenPositions[i][0] + 16, sSlotScreenPositions[i][1] + -6);
            Sprite_SetDrawFlag(tradeRoom->iconSprites[i], TRUE);

            if (tradeRoom->monDisplayData[i].heldItemType) {
                TradeRoom_SetSpritePosition(tradeRoom->itemIconSprites[i], sSlotScreenPositions[i][0] + (16 + 20), sSlotScreenPositions[i][1] + 16);
                Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i], TRUE);
            }

            if (tradeRoom->monDisplayData[i].ballCapsuleId) {
                TradeRoom_SetSpritePosition(tradeRoom->capsuleIconSprites[i], sSlotScreenPositions[i][0] + (16 + 20 + 8), sSlotScreenPositions[i][1] + 16);
                Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i], TRUE);
            }

            Window_ScheduleCopyToVRAM(&tradeRoom->windows[7 + i]);
        }
    }

    Sprite_SetDrawFlag(tradeRoom->cursorSprites[0], TRUE);
    Sprite_SetDrawFlag(tradeRoom->cursorSprites[1], TRUE);
    TradeRoom_HideMonDetailCard(tradeRoom->windows, 1, tradeRoom);
    Sprite_SetDrawFlag(tradeRoom->detailCardSprites[3], FALSE);
    Sprite_SetDrawFlag(tradeRoom->convergeIndicatorSprite, FALSE);
}

static int TradeRoom_PromptTradeConfirm(TradeRoom *tradeRoom)
{
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    StringTemplate_SetNickname(tradeRoom->strTemplate2, 0, Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(tradeRoom->playerParty, tradeRoom->selectedSlot[0])));
    StringTemplate_SetNickname(tradeRoom->strTemplate2, 1, Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(tradeRoom->partnerParty, tradeRoom->selectedSlot[1] - MAX_PARTY_SIZE)));

    TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_CONFIRM_TRADE, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate2);
    tradeRoom->subStepCallback = TradeRoom_HandleTradeConfirm;

    return TRADE_PHASE_CONNECTING;
}

static void TradeRoom_AnnounceTradeConfirmed(TradeRoom *tradeRoom)
{
    TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_CONFIRMED);
    tradeRoom->didConfirmTrade = 1;
}

static void TradeRoom_ClearAndPrintMessage(TradeRoom *tradeRoom, int windowIdx, int msgID)
{
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[windowIdx], msgID, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
}

static int TradeRoom_HandleTradeConfirm(TradeRoom *tradeRoom)
{
    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        if (TradeRoom_HasUsablePartyAfterTrade(tradeRoom)) {
            switch (TradeRoom_ValidatePartyChecksums(tradeRoom)) {
            case TRADE_CHECKSUM_OK:
                if (tradeRoom->monDisplayData[tradeRoom->selectedSlot[0]].ballCapsuleId == 0) {
                    TradeRoom_AnnounceTradeConfirmed(tradeRoom);
                    TradeRoom_ClearAndPrintMessage(tradeRoom, 23, TRADE_MSG_COMMUNICATING);
                    tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
                } else {
                    tradeRoom->subStepCallback = TradeRoom_WarnBallCapsuleDetach;
                }

                break;
            case TRADE_CHECKSUM_YOUR_MON_INVALID:
                TradeRoom_ClearAndPrintMessage(tradeRoom, 23, TRADE_MSG_YOUR_MON_UNTRADEABLE);
                tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
                TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_DECLINED);
                break;
            case TRADE_CHECKSUM_PARTNER_MON_INVALID:
                TradeRoom_ClearAndPrintMessage(tradeRoom, 23, TRADE_MSG_PARTNER_MON_UNTRADEABLE);
                tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
                TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_DECLINED);
                break;
            }
        } else {
            tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
            TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_DECLINED);
        }

        break;
    case YES_NO_CHOICE_NO:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_COMMUNICATING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
        TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_DECLINED);
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_WarnBallCapsuleDetach(TradeRoom *tradeRoom)
{
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_BALL_CAPSULE_WARNING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate2);
    tradeRoom->subStepCallback = TradeRoom_HandleBallCapsuleWarningConfirm;
    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleBallCapsuleWarningConfirm(TradeRoom *tradeRoom)
{
    switch (TradeRoom_ProcessYesNoChoice(tradeRoom->bgConfig, &tradeRoom->yesNoMenu, &tradeRoom->yesNoMenuStep)) {
    case YES_NO_CHOICE_YES:
        TradeRoom_AnnounceTradeConfirmed(tradeRoom);
        TradeRoom_ClearAndPrintMessage(tradeRoom, 23, TRADE_MSG_COMMUNICATING);
        tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
        break;
    case YES_NO_CHOICE_NO:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[23], TRADE_MSG_COMMUNICATING, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_HandleMutualTradeConfirmSync;
        TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_SYNC_STATUS, TRADE_STATUS_DECLINED);
        break;
    default:
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleMutualTradeConfirmSync(TradeRoom *tradeRoom)
{
    if ((tradeRoom->partnerSyncStatus[0] != 0) && (tradeRoom->partnerSyncStatus[1] != 0)) {
        if ((tradeRoom->partnerSyncStatus[0] == TRADE_STATUS_CONFIRMED) && (tradeRoom->partnerSyncStatus[1] == TRADE_STATUS_CONFIRMED)) {
            tradeRoom->tradeCompletedCount++;
            tradeRoom->subStepCallback = TradeRoom_CompleteTrade;
        } else {
            tradeRoom->subStepCallback = TradeRoom_ShowNotification;
        }

        tradeRoom->partnerSyncStatus[0] = 0;
        tradeRoom->partnerSyncStatus[1] = 0;

        if (TradeRoom_HasUsablePartyAfterTrade(tradeRoom)) {
            tradeRoom->notificationMsgId = TRADE_MSG_TRADE_CANCELED;
        } else {
            tradeRoom->notificationMsgId = TRADE_MSG_WOULD_GET_STUCK;
        }
    }

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_CompleteTrade(TradeRoom *tradeRoom)
{
    CommInfo_SetTradeResult(tradeRoom->saveData, 1);
    TradeRoom_ExecuteTrade(tradeRoom->playerParty, tradeRoom->partnerParty, tradeRoom->selectedSlot[0], tradeRoom->selectedSlot[1] - MAX_PARTY_SIZE, tradeRoom->args);
    tradeRoom->subStepCallback = TradeRoom_ShowNotification;
    return 2;
}

static int TradeRoom_ShowPartnerMonActionMenu(TradeRoom *tradeRoom)
{
    MenuTemplate menuTemplate;

    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 2;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = FALSE;

    StringTemplate_SetNickname(tradeRoom->strTemplate2, 0, Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(tradeRoom->partnerParty, tradeRoom->selectedSlot[0] - MAX_PARTY_SIZE)));
    Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
    TradeRoom_PrintMessage(&tradeRoom->windows[22], TRADE_MSG_MON_SELECTED, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate2);

    tradeRoom->actionMenuChoices = StringList_New(2, HEAP_ID_TRADE_ROOM);

    StringList_AddFromMessageBank(tradeRoom->actionMenuChoices, tradeRoom->msgLoader, TRADE_MSG_SUMMARY_OPTION, PARTNER_MON_ACTION_SUMMARY);
    StringList_AddFromMessageBank(tradeRoom->actionMenuChoices, tradeRoom->msgLoader, TRADE_MSG_CANCEL_OPTION, PARTNER_MON_ACTION_CANCEL);

    menuTemplate.choices = tradeRoom->actionMenuChoices;
    menuTemplate.window = &tradeRoom->windows[25];

    TradeRoom_DrawActionMenuFrame(&tradeRoom->windows[25]);

    tradeRoom->actionMenu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, HEAP_ID_TRADE_ROOM, PAD_BUTTON_B);
    tradeRoom->subStepCallback = TradeRoom_HandleShowPartnerMonConfirm;

    return TRADE_PHASE_CONNECTING;
}

static int TradeRoom_HandleShowPartnerMonConfirm(TradeRoom *tradeRoom)
{
    switch (Menu_ProcessInput(tradeRoom->actionMenu)) {
    case PARTNER_MON_ACTION_SUMMARY:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
        Menu_Free(tradeRoom->actionMenu, NULL);
        StringList_Free(tradeRoom->actionMenuChoices);
        return TRADE_PHASE_START_SUMMARY_TRANSITION;
        break;

    case PARTNER_MON_ACTION_CANCEL:
    case MENU_INPUT_CANCELLED:
        Bg_FillTilemapRect(tradeRoom->bgConfig, 0, 0, 0, 0, 32, 24, 0);
        TradeRoom_PrintMessage(&tradeRoom->windows[21], TRADE_MSG_CHOOSE_POKEMON, FONT_MESSAGE, tradeRoom->msgLoader, tradeRoom->strTemplate);
        Menu_Free(tradeRoom->actionMenu, NULL);
        StringList_Free(tradeRoom->actionMenuChoices);
        tradeRoom->subStepCallback = TradeRoom_HandleBrowseInput;
        break;
    }

    return TRADE_PHASE_CONNECTING;
}

static void TradeRoom_ExecuteTrade(Party *sender, Party *receiver, int senderSlot, int receiverSlot, TradeRoomArgs *trArgs)
{
    Pokemon *sendingMon = Pokemon_New(HEAP_ID_TRADE_ROOM);
    Pokemon *receivingMon = Pokemon_New(HEAP_ID_TRADE_ROOM);

    Pokemon_Copy(Party_GetPokemonBySlotIndex(sender, senderSlot), sendingMon);
    Pokemon_Copy(Party_GetPokemonBySlotIndex(receiver, receiverSlot), receivingMon);

    if (Pokemon_GetValue(receivingMon, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
        if (Pokemon_GetValue(receivingMon, MON_DATA_FATEFUL_ENCOUNTER, NULL) || Pokemon_GetValue(receivingMon, MON_DATA_MET_LOCATION, NULL) == 86 && Pokemon_GetValue(receivingMon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 0) {
            VarsFlags *varsFlag = SaveData_GetVarsFlags(trArgs->saveData);

            if (SystemVars_GetArceusEventState(varsFlag) == 0) {
                SystemVars_SetArceusEventState(varsFlag, 1);
            }
        }
    }

    Pokemon_SetValue(receivingMon, MON_DATA_GENDER, NULL);

    if (Pokemon_GetValue(receivingMon, MON_DATA_IS_EGG, NULL) == 0) {
        u8 friendship = TRADE_FRIENDSHIP_RESET_VALUE;
        Pokemon_SetValue(receivingMon, MON_DATA_FRIENDSHIP, &friendship);
    }

    UpdateMonStatusAndTrainerInfo(receivingMon, CommInfo_TrainerInfo(CommSys_CurNetId()), 5, 0, HEAP_ID_FIELD2);
    Pokemon_ClearBallCapsuleData(receivingMon);
    Pokemon_Copy(sendingMon, trArgs->sendingMon);
    Pokemon_Copy(receivingMon, trArgs->receivingMon);
    TrainerInfo_Copy(CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1), trArgs->partnerTrainerInfoCopy);

    trArgs->receivingPartySlot = senderSlot;

    if (!Party_HasSpecies(sender, SPECIES_CHATOT)) {
        ChatotCry *chatotCry = SaveData_GetChatotCry(trArgs->saveData);
        ChatotCry_ResetStatus(chatotCry);
    }

    SaveData_UpdateCatchRecords(trArgs->saveData, receivingMon);
    Pokemon_Copy(receivingMon, Party_GetPokemonBySlotIndex(sender, senderSlot));
    Pokemon_Copy(sendingMon, Party_GetPokemonBySlotIndex(receiver, receiverSlot));
    TradeRoom_RecordTradeInJournal(trArgs->journalEntry, receivingMon);
    GameRecords_IncrementRecordValue(trArgs->records, RECORD_LOCAL_LINK_TRADES);
    Heap_Free(sendingMon);
    Heap_Free(receivingMon);
}

static void TradeRoom_RecordTradeInJournal(JournalEntry *journalEntry, Pokemon *mon)
{
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    u16 nickname[MON_NAME_LEN + 1];

    Pokemon_GetValue(mon, MON_DATA_NICKNAME, nickname);
    void *journalEntryOnlineEvent = JournalEntry_CreateEventGotPokemonFromTrade((u16 *)TrainerInfo_Name(trainerInfo), TrainerInfo_Gender(trainerInfo), nickname, Pokemon_GetGender(mon), 26);
    JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
}

static void TradeRoom_ScrollBackground(TradeRoom *tradeRoom)
{
    tradeRoom->bgScrollOffset += 2;
    Bg_SetOffset(tradeRoom->bgConfig, BG_LAYER_SUB_2, 0, tradeRoom->bgScrollOffset);
    Bg_SetOffset(tradeRoom->bgConfig, BG_LAYER_MAIN_3, 0, tradeRoom->bgScrollOffset);
}

static void TradeRoom_SetSpritePosition(Sprite *sprite, int x, int y)
{
    VecFx32 pos;

    pos.x = FX32_ONE * x;
    pos.y = FX32_ONE * y;

    Sprite_SetPosition(sprite, &pos);
}

static void TradeRoom_AddWaitDialHandle(TradeRoom *tradeRoom)
{
    tradeRoom->waitDialHandle = Window_AddWaitDial(&tradeRoom->windows[23], 512 - (9 + (18 + 12)));
}

static void TradeRoom_HideWaitDial(TradeRoom *tradeRoom)
{
    if (tradeRoom->waitDialHandle != NULL) {
        DestroyWaitDial(tradeRoom->waitDialHandle);
        tradeRoom->waitDialHandle = NULL;
    }
}

static BOOL TradeRoom_HasUsablePartyAfterTrade(TradeRoom *tradeRoom)
{
    int otherEggCount = 0;
    int partyCount = Party_GetCurrentCount(tradeRoom->playerParty);

    for (int i = 0; i < partyCount; i++) {
        if (i != tradeRoom->selectedSlot[0]) {
            otherEggCount += tradeRoom->monDisplayData[i].isEgg;
        }
    }

    if (otherEggCount == (partyCount - 1)) {
        return FALSE;
    }

    return TRUE;
}

static int TradeRoom_ValidatePartyChecksums(TradeRoom *tradeRoom)
{
    Pokemon *mon;
    int partyCount = Party_GetCurrentCount(tradeRoom->playerParty);

    for (int i = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(tradeRoom->playerParty, i);

        if (Pokemon_GetValue(mon, MON_DATA_CHECKSUM_FAILED, NULL)) {
            return TRADE_CHECKSUM_YOUR_MON_INVALID;
        }
    }

    partyCount = Party_GetCurrentCount(tradeRoom->partnerParty);

    for (int i = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(tradeRoom->partnerParty, i);

        if (Pokemon_GetValue(mon, MON_DATA_CHECKSUM_FAILED, NULL)) {
            return TRADE_CHECKSUM_PARTNER_MON_INVALID;
        }
    }

    return TRADE_CHECKSUM_OK;
}

static void TradeRoom_ArmConnectionTimeout(TradeRoom *tradeRoom)
{
    tradeRoom->connectionTimeoutArmed = 1;
    tradeRoom->connectionTimeoutFrames = 0;
}

static void TradeRoom_CheckConnectionTimeout(TradeRoom *tradeRoom)
{
    if (tradeRoom->connectionTimeoutArmed) {
        tradeRoom->connectionTimeoutFrames++;

        if (tradeRoom->connectionTimeoutFrames > (30 * 60)) {
            CommManager_SetCommError(COMM_ERROR_4);
        }
    }
}

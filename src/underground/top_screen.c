#include "underground/top_screen.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "struct_decls/struct_0205E884_decl.h"

#include "field/field_system.h"
#include "underground/manager.h"
#include "underground/struct_underground_top_screen_context_decl.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "field_message.h"
#include "graphics.h"
#include "gx_layers.h"
#include "math_util.h"
#include "narc.h"
#include "player_avatar.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0200679C.h"

#include "res/graphics/trap_effects/trap_effects.naix"
#include "res/graphics/underground_top_screen/underground_top_screen.naix"

#define MAX_QUEUE_SIZE 32

#define MAP_MIN_X (TILE_WIDTH_PIXELS * 7 + 4)
#define MAP_MIN_Y (TILE_HEIGHT_PIXELS + 1)

#define MAP_WIDTH  (TILE_WIDTH_PIXELS * 17 + 2)
#define MAP_HEIGHT (TILE_HEIGHT_PIXELS * 16)

#define TEMP_STRING_SIZE 80

#define UG_TOP_SCREEN_RESOURCE_ID 1000

enum TopScreenState {
    TOP_SCREEN_STATE_INIT = 0,
    TOP_SCREEN_STATE_INIT_SPRITES,
    TOP_SCREEN_STATE_FRAME_DELAY,
    TOP_SCREEN_STATE_TOGGLE_LAYERS,
    TOP_SCREEN_STATE_FRAME_DELAY_2,
    TOP_SCREEN_STATE_MAIN,
    TOP_SCREEN_STATE_FINISH_AFTER_TEXT,
    TOP_SCREEN_STATE_CLEANUP,
    TOP_SCREEN_STATE_EXIT,
};

enum MessageState {
    MESSAGE_STATE_FETCH_AND_PRINT = 0,
    MESSAGE_STATE_WAIT_FOR_PRINTER,
    MESSAGE_STATE_WAIT_FOR_NEW_MESSAGE,
};

typedef struct MessageQueue {
    String *queuedLines[MAX_QUEUE_SIZE];
    String *tempString;
    String *tempStringLines[2];
    int endIndex;
    int currentIndex;
    charcode_t tempStringChars[TEMP_STRING_SIZE];
} MessageQueue;

typedef struct PlayerCoordinates {
    int x;
    int z;
} PlayerCoordinates;

typedef struct PlayerMarkerData {
    int x;
    int z;
    int lifetime;
} PlayerMarkerData;

typedef struct OtherMarkerData {
    int x;
    int z;
    int animID;
    int prevAnimID;
} OtherMarkerData;

struct UndergroundTopScreenContext_t {
    int state;
    PlayerCoordinates playerCoords[MAX_CONNECTED_PLAYERS];
    PlayerMarkerData playerMarkers[MAX_CONNECTED_PLAYERS];
    OtherMarkerData otherMarkers[MAX_RADAR_BLIPS + 1];
    FieldSystem *parent;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *spriteResources[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResourcesHeader resourceData;
    Sprite *playerMarkerSprites[MAX_CONNECTED_PLAYERS];
    Sprite *otherMarkerSprites[MAX_RADAR_BLIPS + 1];
    Window window;
    int printerID;
    int messageState;
    int messageTimer;
    MessageQueue messageQueue;
};

static int positionsDummy[MAX_CONNECTED_PLAYERS][2];

static void UndergroundTopScreen_InitBackgrounds(BgConfig *bgConfig, Window *window);
static void UndergroundMap_InitSpriteResources(UndergroundTopScreenContext *ctx);
static void UndergroundMap_FetchPlayerPositions(PlayerAvatar *const playerAvatar, PlayerCoordinates playerCoords[], PlayerMarkerData markerData[]);
static void UndergroundMap_InitPlayerPositions(PlayerCoordinates playerCoords[], PlayerMarkerData markerData[]);
static void UndergroundMap_DrawPlayerMarkers(PlayerMarkerData markerData[], Sprite *sprites[]);
static void UndergroundTopScreen_FreeBackgrounds(BgConfig *bgConfig);
static void UndergroundTopScreen_HandleMessageQueue(BgConfig *unused, Window *window, int *printerID, int *state, int *timer, MessageQueue *queue);
static void MessageQueue_Init(MessageQueue *queue);
static void MessageQueue_Free(MessageQueue *queue);
static BOOL MessageQueue_TryEnqueue(MessageQueue *queue, String *message);
static String *MessageQueue_Dequeue(MessageQueue *queue);
static BOOL MessageQueue_IsEmpty(MessageQueue *queue);
static void UndergroundMap_DrawRadarAndBaseMarkers(OtherMarkerData markerData[], Sprite *sprites[]);
static void UndergroundMap_FetchRadarAndBaseInfo(OtherMarkerData markerData[]);

static UndergroundTopScreenContext *sUnused;

static void UndergroundTopScreen_Task(SysTask *sysTask, void *data)
{
    UndergroundTopScreenContext *ctx = data;
    BgConfig *bgConfig = ctx->bgConfig;

    sUnused = ctx;

    switch (ctx->state) {
    case TOP_SCREEN_STATE_INIT:
        UndergroundTopScreen_InitBackgrounds(bgConfig, &ctx->window);
        UndergroundMap_InitPlayerPositions(ctx->playerCoords, ctx->playerMarkers);
        MessageQueue_Init(&ctx->messageQueue);
        ctx->state++;
        break;
    case TOP_SCREEN_STATE_INIT_SPRITES:
        UndergroundMap_InitSpriteResources(ctx);
        SpriteResourcesHeader_Init(
            &ctx->resourceData,
            UG_TOP_SCREEN_RESOURCE_ID,
            UG_TOP_SCREEN_RESOURCE_ID,
            UG_TOP_SCREEN_RESOURCE_ID,
            UG_TOP_SCREEN_RESOURCE_ID,
            -1,
            -1,
            FALSE,
            0,
            ctx->spriteResourceCollection[SPRITE_RESOURCE_CHAR],
            ctx->spriteResourceCollection[SPRITE_RESOURCE_PLTT],
            ctx->spriteResourceCollection[SPRITE_RESOURCE_CELL],
            ctx->spriteResourceCollection[SPRITE_RESOURCE_ANIM],
            NULL,
            NULL);

        AffineSpriteListTemplate template;

        template.list = ctx->spriteList;
        template.resourceData = &ctx->resourceData;
        template.position.x = FX32_CONST(32);
        template.position.y = FX32_CONST(96) + (HW_LCD_HEIGHT << FX32_SHIFT);
        template.position.z = 0;
        template.affineScale.x = FX32_ONE;
        template.affineScale.y = FX32_ONE;
        template.affineScale.z = FX32_ONE;
        template.affineZRotation = 0;
        template.priority = 0;
        template.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        template.heapID = HEAP_ID_FIELD1;

        for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
            ctx->playerMarkerSprites[netID] = SpriteList_AddAffine(&template);
            Sprite_SetAnimateFlag(ctx->playerMarkerSprites[netID], TRUE);
            Sprite_SetDrawFlag(ctx->playerMarkerSprites[netID], FALSE);

            // 0 refers to the current player here, not the host
            // the relevant indices are swapped in UndergroundMap_FetchPlayerPositions below
            if (netID == 0) {
                Sprite_SetAnim(ctx->playerMarkerSprites[netID], MARKER_ANIM_CURRENT_PLAYER);
            }
        }

        for (int i = 0; i < MAX_RADAR_BLIPS + 1; i++) {
            ctx->otherMarkerSprites[i] = SpriteList_AddAffine(&template);
            Sprite_SetAnimateFlag(ctx->otherMarkerSprites[i], TRUE);
            Sprite_SetDrawFlag(ctx->otherMarkerSprites[i], FALSE);
            Sprite_SetAnim(ctx->otherMarkerSprites[i], MARKER_ANIM_PINK_DOT_UNUSED); // overwritten before it can be displayed
        }

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
        ctx->state++;
        break;
    case TOP_SCREEN_STATE_FRAME_DELAY:
        ctx->state++;
        break;
    case TOP_SCREEN_STATE_TOGGLE_LAYERS:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, TRUE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, TRUE);
        Bg_MaskPalette(BG_LAYER_SUB_0, 0);
        ctx->state++;
        break;
    case TOP_SCREEN_STATE_FRAME_DELAY_2:
        ctx->state++;
        break;
    case TOP_SCREEN_STATE_MAIN:
        UndergroundMap_FetchPlayerPositions(ctx->parent->playerAvatar, ctx->playerCoords, ctx->playerMarkers);
        UndergroundMap_DrawPlayerMarkers(ctx->playerMarkers, ctx->playerMarkerSprites);
        UndergroundMap_FetchRadarAndBaseInfo(ctx->otherMarkers);
        UndergroundMap_DrawRadarAndBaseMarkers(ctx->otherMarkers, ctx->otherMarkerSprites);
        UndergroundTopScreen_HandleMessageQueue(ctx->bgConfig, &ctx->window, &ctx->printerID, &ctx->messageState, &ctx->messageTimer, &ctx->messageQueue);
        SpriteList_Update(ctx->spriteList);
        break;
    case TOP_SCREEN_STATE_FINISH_AFTER_TEXT:
        if (FieldMessage_FinishedPrinting(ctx->printerID)) {
            ctx->state++;
        }
        break;
    case TOP_SCREEN_STATE_CLEANUP:
        SpriteTransfer_ResetCharTransfer(ctx->spriteResources[SPRITE_RESOURCE_CHAR]);
        SpriteTransfer_ResetPlttTransfer(ctx->spriteResources[SPRITE_RESOURCE_PLTT]);

        for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
            SpriteResourceCollection_Delete(ctx->spriteResourceCollection[resourceType]);
        }

        SpriteList_Delete(ctx->spriteList);
        Window_EraseMessageBox(&ctx->window, FALSE);
        Window_Remove(&ctx->window);
        Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_3);

        UndergroundTopScreen_FreeBackgrounds(bgConfig);
        MessageQueue_Free(&ctx->messageQueue);

        ctx->state++;
        break;
    case TOP_SCREEN_STATE_EXIT:
        ctx->parent->ugTopScreenCtx = NULL;
        SysTask_FinishAndFreeParam(sysTask);
        break;
    }
}

static void UndergroundMap_InitPlayerPositions(PlayerCoordinates playerCoords[], PlayerMarkerData markerData[])
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        playerCoords[netID].x = 0;
        playerCoords[netID].z = 0;
        markerData[netID].x = 0;
        markerData[netID].z = 0;
        markerData[netID].lifetime = 0;

        positionsDummy[netID][0] = LCRNG_Next() % 500 + 50;
        positionsDummy[netID][1] = LCRNG_Next() % 500 + 50;
    }
}

static void UndergroundMap_FetchPlayerPositions(PlayerAvatar *const playerAvatar, PlayerCoordinates playerCoords[], PlayerMarkerData markerData[])
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        playerCoords[netID].x = CommPlayer_GetXIfActive(netID);
        playerCoords[netID].z = CommPlayer_GetZIfActive(netID);
    }

    if (CommSys_IsInitialized()) {
        if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
            playerCoords[0].x = Player_GetXPos(playerAvatar);
            playerCoords[0].z = Player_GetZPos(playerAvatar);
        } else {
            int xTemp = playerCoords[0].x;
            int zTemp = playerCoords[0].z;
            playerCoords[0].x = playerCoords[CommSys_CurNetId()].x;
            playerCoords[0].z = playerCoords[CommSys_CurNetId()].z;
            playerCoords[CommSys_CurNetId()].x = xTemp;
            playerCoords[CommSys_CurNetId()].z = zTemp;
        }
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (!UndergroundMan_AreCoordinatesInSecretBase(playerCoords[netID].x, playerCoords[netID].z)) {
            markerData[netID].x = playerCoords[netID].x - UNDERGROUND_MAIN_AREA_START_X;
            markerData[netID].z = playerCoords[netID].z - UNDERGROUND_MAIN_AREA_START_Z;
            markerData[netID].lifetime = 60;
        } else {
            if (markerData[netID].lifetime != 0) {
                if (markerData[netID].x >= 0) {
                    markerData[netID].lifetime--;
                }
            }
        }
    }
}

static void UndergroundMap_DrawPlayerMarkers(PlayerMarkerData markerData[], Sprite *sprites[])
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (markerData[netID].lifetime != 0) {
            VecFx32 pos;

            pos.x = (MAP_MIN_X + markerData[netID].x * MAP_WIDTH / (UNDERGROUND_MAIN_AREA_WIDTH + 1)) * FX32_ONE;
            pos.y = (MAP_MIN_Y + markerData[netID].z * MAP_HEIGHT / (UNDERGROUND_MAIN_AREA_DEPTH + 1)) * FX32_ONE + (HW_LCD_HEIGHT << FX32_SHIFT);
            pos.z = FX32_ONE;

            Sprite_SetPosition(sprites[netID], &pos);
            Sprite_SetDrawFlag(sprites[netID], TRUE);
        } else {
            Sprite_SetDrawFlag(sprites[netID], FALSE);
        }
    }
}

static void UndergroundMap_FetchRadarAndBaseInfo(OtherMarkerData markerData[])
{
    for (int i = 0; i < MAX_RADAR_BLIPS + 1; i++) {
        int x = UndergroundMan_GetRadarItemXCoord(i);
        int z = UndergroundMan_GetRadarItemZCoord(i);
        int animID = UndergroundMan_GetRadarItemAnimID(i);

        if (!UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
            markerData[i].x = x - UNDERGROUND_MAIN_AREA_START_X;
            markerData[i].z = z - UNDERGROUND_MAIN_AREA_START_Z;
            markerData[i].animID = animID;
        } else {
            markerData[i].x = 0;
            markerData[i].z = 0;
            markerData[i].animID = 0;
        }
    }
}

static void UndergroundMap_DrawRadarAndBaseMarkers(OtherMarkerData markerData[], Sprite *sprites[])
{
    for (int i = 0; i < MAX_RADAR_BLIPS + 1; i++) {
        if (markerData[i].x != 0) {
            VecFx32 pos;

            pos.x = (MAP_MIN_X + markerData[i].x * MAP_WIDTH / (UNDERGROUND_MAIN_AREA_WIDTH + 1)) * FX32_ONE;
            pos.y = (MAP_MIN_Y + markerData[i].z * MAP_HEIGHT / (UNDERGROUND_MAIN_AREA_DEPTH + 1)) * FX32_ONE + (HW_LCD_HEIGHT << FX32_SHIFT);
            pos.z = FX32_ONE;

            Sprite_SetPosition(sprites[i], &pos);

            if (markerData[i].animID != markerData[i].prevAnimID) {
                if (markerData[i].animID != 0) {
                    Sprite_SetAnim(sprites[i], markerData[i].animID);
                    Sprite_SetDrawFlag(sprites[i], TRUE);
                } else {
                    Sprite_SetDrawFlag(sprites[i], FALSE);
                }
            }
        } else {
            Sprite_SetDrawFlag(sprites[i], FALSE);
        }

        markerData[i].prevAnimID = markerData[i].animID;
    }
}

UndergroundTopScreenContext *UndergroundTopScreen_StartTask(FieldSystem *fieldSystem)
{
    SysTask *sysTask = SysTask_StartAndAllocateParam(UndergroundTopScreen_Task, sizeof(UndergroundTopScreenContext), 4, HEAP_ID_FIELD1);
    UndergroundTopScreenContext *ctx = SysTask_GetParam(sysTask);

    ctx->parent = fieldSystem;
    ctx->bgConfig = fieldSystem->bgConfig;

    return ctx;
}

void UndergroundTopScreen_EndTask(UndergroundTopScreenContext *ctx)
{
    if (ctx->state == TOP_SCREEN_STATE_MAIN) {
        ctx->state = TOP_SCREEN_STATE_FINISH_AFTER_TEXT;
    } else {
        GF_ASSERT("FALSE");
    }
}

static void UndergroundTopScreen_FreeBackgrounds(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
}

static void UndergroundTopScreen_InitBackgrounds(BgConfig *bgConfig, Window *window)
{
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
    UndergroundTopScreen_FreeBackgrounds(bgConfig);

    BgTemplate sub0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &sub0Template, BG_TYPE_STATIC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);

    BgTemplate sub1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &sub1Template, BG_TYPE_STATIC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);

    BgTemplate sub3Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &sub3Template, BG_TYPE_STATIC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, FALSE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UNDERG_RADAR, HEAP_ID_FIELD1);

    Graphics_LoadPaletteFromOpenNARC(narc, background_tiles_NCLR, PAL_LOAD_SUB_BG, 0, PALETTE_SIZE_BYTES * 2, HEAP_ID_FIELD1);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, background_tiles_NCGR, bgConfig, BG_LAYER_SUB_0, 0, 32 * 5 * TILE_SIZE_4BPP, FALSE, HEAP_ID_FIELD1);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, background_NSCR, bgConfig, BG_LAYER_SUB_0, 0, SCREEN_WIDTH_TILES * SCREEN_HEIGHT_TILES * sizeof(u16), FALSE, HEAP_ID_FIELD1);

    NARC_dtor(narc);

    FieldMessage_LoadTextPalettes(PAL_LOAD_SUB_BG, FALSE);
    Bg_ClearTilesRange(BG_LAYER_SUB_3, TILE_SIZE_4BPP, 0, HEAP_ID_FIELD1);
    FieldMessage_AddWindow(bgConfig, window, BG_LAYER_SUB_3);
    Window_FillTilemap(window, 0);
    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, PAL_LOAD_SUB_BG, PLTT_OFFSET(10), PALETTE_SIZE_BYTES * 4, HEAP_ID_FIELD1);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);
}

static void UndergroundMap_InitSpriteResources(UndergroundTopScreenContext *ctx)
{
    ctx->spriteList = SpriteList_InitRendering(MAX_CONNECTED_PLAYERS + MAX_RADAR_BLIPS + 1, &ctx->g2dRenderer, HEAP_ID_FIELD1);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        ctx->spriteResourceCollection[resourceType] = SpriteResourceCollection_New(1, resourceType, HEAP_ID_FIELD1);
    }

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UNDERG_RADAR, HEAP_ID_FIELD1);

    ctx->spriteResources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(ctx->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, map_markers_NCGR, FALSE, 1000, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_FIELD1);
    ctx->spriteResources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(ctx->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, map_markers_NCLR, FALSE, 1000, NNS_G2D_VRAM_TYPE_2DSUB, 2, HEAP_ID_FIELD1);
    ctx->spriteResources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(ctx->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, map_markers_cell_NCER, FALSE, 1000, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
    ctx->spriteResources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(ctx->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, map_markers_anim_NANR, FALSE, 1000, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);

    NARC_dtor(narc);

    SpriteTransfer_RequestCharAtEnd(ctx->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpace(ctx->spriteResources[SPRITE_RESOURCE_PLTT]);
}

static void UndergroundTopScreen_HandleMessageQueue(BgConfig *unused, Window *window, int *printerID, int *state, int *timer, MessageQueue *queue)
{
    while (UndergroundMan_GetQueuedMessage(queue->tempString)) {
        MessageQueue_TryEnqueue(queue, queue->tempString);
    }

    switch (*state) {
    case MESSAGE_STATE_FETCH_AND_PRINT:
        String *message;
        if ((message = MessageQueue_Dequeue(queue)) != NULL) {
            *printerID = Text_AddPrinterWithParams(window, FONT_MESSAGE, message, 0, 16, TEXT_SPEED_FAST, NULL);
            *state = MESSAGE_STATE_WAIT_FOR_PRINTER;
        }
        break;
    case MESSAGE_STATE_WAIT_FOR_PRINTER:
        if (FieldMessage_FinishedPrinting(*printerID)) {
            *state = MESSAGE_STATE_WAIT_FOR_NEW_MESSAGE;
            *timer = 0;
        }
        break;
    case MESSAGE_STATE_WAIT_FOR_NEW_MESSAGE:
        if (!MessageQueue_IsEmpty(queue)) {
            Window_Scroll(window, SCROLL_DIRECTION_UP, 2, 0);
            Window_CopyToVRAM(window);

            if (++(*timer) >= 8) {
                *timer = 0;
                *state = MESSAGE_STATE_FETCH_AND_PRINT;
            }
        }
        break;
    }
}

static void MessageQueue_Init(MessageQueue *queue)
{
    for (int i = 0; i < MAX_QUEUE_SIZE; i++) {
        queue->queuedLines[i] = String_Init(50 * 2, HEAP_ID_FIELD1);
    }

    queue->endIndex = 0;
    queue->currentIndex = 0;
    queue->tempString = String_Init(50 * 2, HEAP_ID_FIELD1);

    for (int i = 0; i < (int)NELEMS(queue->tempStringLines); i++) {
        queue->tempStringLines[i] = String_Init(TEMP_STRING_SIZE, HEAP_ID_FIELD1);
    }
}

static void MessageQueue_Free(MessageQueue *queue)
{
    for (int i = 0; i < MAX_QUEUE_SIZE; i++) {
        String_Free(queue->queuedLines[i]);
    }

    String_Free(queue->tempString);

    for (int i = 0; i < (int)NELEMS(queue->tempStringLines); i++) {
        String_Free(queue->tempStringLines[i]);
    }
}

static int MessageQueue_SplitMessage(MessageQueue *queue, String *message)
{
    String_ToChars(message, queue->tempStringChars, TEMP_STRING_SIZE);

    int newlineCount = 0;
    int i = 0;
    int newlineIndex;

    while (queue->tempStringChars[i] != CHAR_EOS) {
        if (queue->tempStringChars[i] == CHAR_CR) {
            newlineCount++;
            newlineIndex = i;
        }

        i++;
    }

    GF_ASSERT(newlineCount < (int)NELEMS(queue->tempStringLines));

    if (newlineCount == 0) {
        String_Copy(queue->tempStringLines[0], message);
        return 1;
    } else {
        queue->tempStringChars[newlineIndex] = CHAR_EOS;
        String_CopyChars(queue->tempStringLines[0], queue->tempStringChars);
        String_CopyChars(queue->tempStringLines[1], &queue->tempStringChars[newlineIndex + 1]);
        return 2;
    }
}

static BOOL MessageQueue_TryEnqueue(MessageQueue *queue, String *message)
{
    int lineCount = MessageQueue_SplitMessage(queue, message);
    int index = queue->endIndex;

    for (int i = 0; i < lineCount; i++) {
        if (++index == MAX_QUEUE_SIZE) {
            index = 0;
        }

        if (index == queue->currentIndex) {
            return FALSE;
        }
    }

    for (int i = 0; i < lineCount; i++) {
        String_Copy(queue->queuedLines[queue->endIndex], queue->tempStringLines[i]);
        queue->endIndex++;

        if (queue->endIndex == MAX_QUEUE_SIZE) {
            queue->endIndex = 0;
        }
    }

    return TRUE;
}

static String *MessageQueue_Dequeue(MessageQueue *queue)
{
    if (queue->endIndex != queue->currentIndex) {
        int index = queue->currentIndex;

        if (++queue->currentIndex == MAX_QUEUE_SIZE) {
            queue->currentIndex = 0;
        }

        return queue->queuedLines[index];
    }

    return NULL;
}

static BOOL MessageQueue_IsEmpty(MessageQueue *queue)
{
    return queue->endIndex == queue->currentIndex;
}

#include "overlay005/save_info_window.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/window.h"
#include "constants/narc.h"
#include "generated/map_headers.h"

#include "struct_defs/pokedex.h"

#include "overlay005/ov5_021EA714.h"
#include "overlay005/save_info_window.h"
#include "overlay025/poketch_system.h"

#include "bg_window.h"
#include "field_overworld_state.h"
#include "font.h"
#include "location.h"
#include "map_header.h"
#include "message_util.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020366A0.h"

static void FieldSystem_SaveObjectsAndLocation(FieldSystem *fieldSystem);

static const int sSaveInfoLabels[] = {
    SAVE_INFO_LABEL_MAP_NAME,
    SAVE_INFO_LABEL_PLAYER_NAME,
    SAVE_INFO_LABEL_BADGE_COUNT,
    SAVE_INFO_LABEL_POKEDEX_COUNT,
    SAVE_INFO_LABEL_PLAY_TIME
};

static const int sSaveInfoValues[] = {
    SAVE_INFO_PLAYER_NAME,
    SAVE_INFO_BADGE_COUNT,
    SAVE_INFO_POKEDEX_COUNT,
    SAVE_INFO_PLAY_TIME
};

static void SaveInfo_SetValues(SaveInfo *saveInfo, const FieldSystem *fieldSystem)
{
    SaveData *saveData = fieldSystem->saveData;
    Location *curLocation = FieldOverworldState_GetPlayerLocation(SaveData_GetFieldOverworldState(saveData));
    Pokedex *pokedex = SaveData_GetPokedex(saveData);

    saveInfo->mapLabelTextID = MapHeader_GetMapLabelTextID(curLocation->mapId);

    if (Pokedex_IsObtained(pokedex)) {
        saveInfo->pokedexCount = Pokedex_CountSeen(pokedex);
    } else {
        saveInfo->pokedexCount = 0;
    }

    saveInfo->trainerInfo = SaveData_GetTrainerInfo(saveData);
    saveInfo->playTime = SaveData_GetPlayTime(saveData);
}

static void SaveInfoWindow_SetStrings(StringTemplate *strTemplate, const SaveInfo *saveInfo)
{
    StringTemplate_SetLocationName(strTemplate, 0, saveInfo->mapLabelTextID);
    StringTemplate_SetPlayerName(strTemplate, 1, saveInfo->trainerInfo);
    StringTemplate_SetNumber(strTemplate, 2, TrainerInfo_BadgeCount(saveInfo->trainerInfo), 1, PADDING_MODE_NONE, CHARSET_MODE_EN);

    int maxDigits, padding;

    if (saveInfo->pokedexCount >= 100) {
        maxDigits = 3;
        padding = PADDING_MODE_NONE;
    } else if (saveInfo->pokedexCount >= 10) {
        maxDigits = 3;
        padding = PADDING_MODE_SPACES;
    } else {
        maxDigits = 2;
        padding = PADDING_MODE_SPACES;
    }

    StringTemplate_SetNumber(strTemplate, 3, saveInfo->pokedexCount, maxDigits, padding, CHARSET_MODE_EN);

    int playTimeHours = PlayTime_GetHours(saveInfo->playTime);

    if (playTimeHours >= 100) {
        maxDigits = 3;
        padding = PADDING_MODE_NONE;
    } else if (playTimeHours >= 10) {
        maxDigits = 3;
        padding = PADDING_MODE_SPACES;
    } else {
        maxDigits = 2;
        padding = PADDING_MODE_SPACES;
    }

    StringTemplate_SetNumber(strTemplate, 4, playTimeHours, maxDigits, padding, CHARSET_MODE_EN);
    StringTemplate_SetNumber(strTemplate, 5, PlayTime_GetMinutes(saveInfo->playTime), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
}

static int SaveInfoWindow_Height(const SaveInfo *saveInfo)
{
    if (saveInfo->pokedexCount != 0) {
        return SAVE_INFO_WINDOW_HEIGHT;
    } else {
        return SAVE_INFO_WINDOW_HEIGHT - 2;
    }
}

static void SaveInfoWindow_PrintText(const SaveInfoWindow *saveInfoWin)
{
    int fontSpacing = Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_HEIGHT) + Font_GetAttribute(FONT_SYSTEM, FONTATTR_LINE_SPACING);
    int yOffset = 0;
    Strbuf *buf = MessageUtil_ExpandedStrbuf(saveInfoWin->strTemplate, saveInfoWin->msgLoader, sSaveInfoLabels[0], saveInfoWin->heapID);

    Text_AddPrinterWithParams(saveInfoWin->window, FONT_SYSTEM, buf, 0, yOffset, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(buf);

    int xOffset;

    for (int i = 1; i < NELEMS(sSaveInfoLabels); i++) {
        if (sSaveInfoLabels[i] == SAVE_INFO_LABEL_POKEDEX_COUNT && saveInfoWin->saveInfo.pokedexCount == 0) {
            continue;
        }

        yOffset += fontSpacing;
        buf = MessageLoader_GetNewStrbuf(saveInfoWin->msgLoader, sSaveInfoLabels[i]);

        Text_AddPrinterWithParams(saveInfoWin->window, FONT_SYSTEM, buf, 0, yOffset, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(buf);

        buf = MessageUtil_ExpandedStrbuf(saveInfoWin->strTemplate, saveInfoWin->msgLoader, sSaveInfoValues[i - 1], saveInfoWin->heapID);
        xOffset = SAVE_INFO_WINDOW_WIDTH * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, buf, Font_GetAttribute(FONT_SYSTEM, FONTATTR_LETTER_SPACING));

        Text_AddPrinterWithParams(saveInfoWin->window, FONT_SYSTEM, buf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(buf);
    }
}

void SaveInfoWindow_Draw(SaveInfoWindow *saveInfoWin)
{
    saveInfoWin->window = Heap_AllocFromHeap(saveInfoWin->heapID, sizeof(Window));

    Window_Add(saveInfoWin->bgConfig, saveInfoWin->window, saveInfoWin->bgLayer, 1, 1, saveInfoWin->width, saveInfoWin->height, FIELD_MESSAGE_PALETTE_INDEX, SAVE_INFO_MESSAGE_BASE_TILE);
    LoadStandardWindowGraphics(saveInfoWin->bgConfig, saveInfoWin->bgLayer, SAVE_INFO_WINDOW_BASE_TILE, FIELD_WINDOW_PALETTE_INDEX, STANDARD_WINDOW_SYSTEM, saveInfoWin->heapID);
    Window_FillTilemap(saveInfoWin->window, Font_GetAttribute(FONT_SYSTEM, FONTATTR_BG_COLOR));

    SaveInfoWindow_PrintText(saveInfoWin);
    Window_DrawStandardFrame(saveInfoWin->window, FALSE, SAVE_INFO_WINDOW_BASE_TILE, FIELD_WINDOW_PALETTE_INDEX);
}

void SaveInfoWindow_Erase(SaveInfoWindow *saveInfoWin)
{
    Window_EraseStandardFrame(saveInfoWin->window, FALSE);
    Window_Remove(saveInfoWin->window);
    Heap_FreeToHeap(saveInfoWin->window);
}

SaveInfoWindow *SaveInfoWindow_New(FieldSystem *fieldSystem, enum HeapId heapID, u8 bgLayer)
{
    SaveInfoWindow *saveInfoWin = Heap_AllocFromHeap(heapID, sizeof(SaveInfoWindow));

    saveInfoWin->fieldSystem = fieldSystem;
    saveInfoWin->heapID = heapID;
    saveInfoWin->bgLayer = bgLayer;
    saveInfoWin->bgConfig = fieldSystem->bgConfig;
    saveInfoWin->strTemplate = StringTemplate_Default(heapID);
    saveInfoWin->msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SAVE_INFO_WINDOW, heapID);

    SaveInfo_SetValues(&saveInfoWin->saveInfo, saveInfoWin->fieldSystem);
    SaveInfoWindow_SetStrings(saveInfoWin->strTemplate, &saveInfoWin->saveInfo);

    saveInfoWin->width = SAVE_INFO_WINDOW_WIDTH;
    saveInfoWin->height = SaveInfoWindow_Height(&saveInfoWin->saveInfo);

    return saveInfoWin;
}

void SaveInfoWindow_Free(SaveInfoWindow *saveInfoWin)
{
    MessageLoader_Free(saveInfoWin->msgLoader);
    StringTemplate_Free(saveInfoWin->strTemplate);
    Heap_FreeToHeap(saveInfoWin);
}

BOOL FieldSystem_Save(FieldSystem *fieldSystem)
{
    FieldSystem_SaveObjectsAndLocation(fieldSystem);
    return SaveData_Save(fieldSystem->saveData) == SAVE_RESULT_OK;
}

static void FieldSystem_SaveObjectsAndLocation(FieldSystem *fieldSystem)
{
    FieldSystem_SaveObjects(fieldSystem);
    ov5_021EA714(fieldSystem, POKETCH_EVENT_SAVE, 0);

    fieldSystem->location->x = Player_GetXPos(fieldSystem->playerAvatar);
    fieldSystem->location->z = Player_GetZPos(fieldSystem->playerAvatar);
    fieldSystem->location->warpId = WARP_ID_NONE;
    fieldSystem->location->faceDirection = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
}

void FieldSystem_SaveStateIfCommunicationOff(FieldSystem *fieldSystem)
{
    if (fieldSystem == NULL) {
        GF_ASSERT(0);
        return;
    }

    switch (fieldSystem->location->mapId) {
    case MAP_HEADER_UNION_ROOM:
    case MAP_HEADER_COMMUNICATION_CLUB_COLOSSEUM_2P:
    case MAP_HEADER_COMMUNICATION_CLUB_COLOSSEUM_4P:
        return;
    }

    if (sub_02038EB4() == TRUE) {
        return;
    }

    FieldSystem_SaveObjectsAndLocation(fieldSystem);
}

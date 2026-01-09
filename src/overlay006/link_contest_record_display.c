#include "overlay006/link_contest_record_display.h"

#include <nitro.h>
#include <string.h>

#include "constants/contests.h"

#include "field/field_system.h"

#include "bg_window.h"
#include "field_system.h"
#include "field_task.h"
#include "font.h"
#include "heap.h"
#include "link_contest_records.h"
#include "message.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/link_contest_records.h"

enum TextAlignment {
    TEXT_ALIGN_LEFT,
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_RIGHT
};

typedef struct LinkContestRecordMessage {
    u32 messageID;
    s16 offsetX;
    s16 offsetY;
} LinkContestRecordMessage;

typedef struct LinkContestRecordEnv {
    LinkContestRecord *linkContestRecord;
    int state;
} LinkContestRecordEnv;

static int CalcAlignedTextX(const String *string, enum Font font, enum TextAlignment textAlignment, int textX);
static BOOL FieldTask_ShowLinkContestRecords(FieldTask *fieldTask);

#define HEADER_X       120
#define HEADER_NAME_Y  0
#define HEADER_TITLE_Y 16

#define CONTEST_TYPES_X    8
#define FIRST_PLACE_COL_X  112
#define SECOND_PLACE_COL_X 152
#define THIRD_PLACE_COL_X  192
#define FOURTH_PLACE_COL_X 232

#define CONTEST_PLACES_Y 40
#define COOL_ROW_Y       56
#define BEAUTY_ROW_Y     72
#define CUTE_ROW_Y       88
#define SMART_ROW_Y      104
#define TOUGH_ROW_Y      120

static const LinkContestRecordMessage sRecordMessageContestTypes[CONTEST_TYPE_MAX] = {
    { LinkContestRecord_Text_Cool, CONTEST_TYPES_X, COOL_ROW_Y },
    { LinkContestRecord_Text_Beauty, CONTEST_TYPES_X, BEAUTY_ROW_Y },
    { LinkContestRecord_Text_Cute, CONTEST_TYPES_X, CUTE_ROW_Y },
    { LinkContestRecord_Text_Smart, CONTEST_TYPES_X, SMART_ROW_Y },
    { LinkContestRecord_Text_Tough, CONTEST_TYPES_X, TOUGH_ROW_Y }
};

static const LinkContestRecordMessage sRecordMessagePlaces[CONTEST_NUM_PARTICIPANTS] = {
    { LinkContestRecord_Text_First, FIRST_PLACE_COL_X, CONTEST_PLACES_Y },
    { LinkContestRecord_Text_Second, SECOND_PLACE_COL_X, CONTEST_PLACES_Y },
    { LinkContestRecord_Text_Third, THIRD_PLACE_COL_X, CONTEST_PLACES_Y },
    { LinkContestRecord_Text_Fourth, FOURTH_PLACE_COL_X, CONTEST_PLACES_Y }
};

static const LinkContestRecordMessage sRecordMessageRecords[CONTEST_TYPE_MAX][CONTEST_NUM_PARTICIPANTS] = {
    {
        { LinkContestRecord_Text_CoolFirstPlaces, FIRST_PLACE_COL_X, COOL_ROW_Y },
        { LinkContestRecord_Text_CoolSecondPlaces, SECOND_PLACE_COL_X, COOL_ROW_Y },
        { LinkContestRecord_Text_CoolThirdPlaces, THIRD_PLACE_COL_X, COOL_ROW_Y },
        { LinkContestRecord_Text_CoolFourthPlaces, FOURTH_PLACE_COL_X, COOL_ROW_Y },
    },
    {
        { LinkContestRecord_Text_BeautyFirstPlaces, FIRST_PLACE_COL_X, BEAUTY_ROW_Y },
        { LinkContestRecord_Text_BeautySecondPlaces, SECOND_PLACE_COL_X, BEAUTY_ROW_Y },
        { LinkContestRecord_Text_BeautyThirdPlaces, THIRD_PLACE_COL_X, BEAUTY_ROW_Y },
        { LinkContestRecord_Text_BeautyFourthPlaces, FOURTH_PLACE_COL_X, BEAUTY_ROW_Y },
    },
    {
        { LinkContestRecord_Text_CuteFirstPlaces, FIRST_PLACE_COL_X, CUTE_ROW_Y },
        { LinkContestRecord_Text_CuteSecondPlaces, SECOND_PLACE_COL_X, CUTE_ROW_Y },
        { LinkContestRecord_Text_CuteThirdPlaces, THIRD_PLACE_COL_X, CUTE_ROW_Y },
        { LinkContestRecord_Text_CuteFourthPlaces, FOURTH_PLACE_COL_X, CUTE_ROW_Y },
    },
    {
        { LinkContestRecord_Text_SmartFirstPlaces, FIRST_PLACE_COL_X, SMART_ROW_Y },
        { LinkContestRecord_Text_SmartSecondPlaces, SECOND_PLACE_COL_X, SMART_ROW_Y },
        { LinkContestRecord_Text_SmartThirdPlaces, THIRD_PLACE_COL_X, SMART_ROW_Y },
        { LinkContestRecord_Text_SmartFourthPlaces, FOURTH_PLACE_COL_X, SMART_ROW_Y },
    },
    {
        { LinkContestRecord_Text_ToughFirstPlaces, FIRST_PLACE_COL_X, TOUGH_ROW_Y },
        { LinkContestRecord_Text_ToughSecondPlaces, SECOND_PLACE_COL_X, TOUGH_ROW_Y },
        { LinkContestRecord_Text_ToughThirdPlaces, THIRD_PLACE_COL_X, TOUGH_ROW_Y },
        { LinkContestRecord_Text_ToughFourthPlaces, FOURTH_PLACE_COL_X, TOUGH_ROW_Y },
    },
};

void FieldTask_LinkContestRecordDisplayInit(FieldTask *fieldTask)
{
    LinkContestRecordEnv *recordWindowEnv = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(LinkContestRecordEnv));
    MI_CpuClear8(recordWindowEnv, sizeof(LinkContestRecordEnv));

    FieldTask_InitCall(fieldTask, FieldTask_ShowLinkContestRecords, recordWindowEnv);
}

static BOOL FieldTask_ShowLinkContestRecords(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    LinkContestRecordEnv *recordWindowEnv = FieldTask_GetEnv(fieldTask);

    switch (recordWindowEnv->state) {
    case 0:
        recordWindowEnv->linkContestRecord = LinkContestRecordDisplay_Show(fieldSystem);
        recordWindowEnv->state++;
        break;
    case 1:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            LinkContestRecordDisplay_Free(recordWindowEnv->linkContestRecord);
            recordWindowEnv->state++;
        }
        break;
    case 2:
        Heap_Free(recordWindowEnv);
        return TRUE;
    }

    return FALSE;
}

void *LinkContestRecordDisplay_Show(void *fieldSystem)
{
    int numPlacements;
    int i;
    int contestType;

    BgConfig *bgConfig = FieldSystem_GetBgConfig(fieldSystem);
    SaveData *saveData = FieldSystem_GetSaveData(fieldSystem);
    LinkContestRecord *linkContestRecord = Heap_Alloc(HEAP_ID_FIELD2, sizeof(LinkContestRecord));

    MI_CpuClear8(linkContestRecord, sizeof(LinkContestRecord));

    linkContestRecord->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LINK_CONTEST_RECORDS, HEAP_ID_FIELD2);
    linkContestRecord->stringTemplate = StringTemplate_Default(HEAP_ID_FIELD2);

    Window_Add(bgConfig, &linkContestRecord->window, 3, 1, 3, 30, 17, 12, (1 + 10));
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_3, 1, 11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&linkContestRecord->window, TRUE, 1, PLTT_11);
    Window_FillTilemap(&linkContestRecord->window, 15);

    String *linkContestRecordString = String_Init(100, HEAP_ID_FIELD2);
    String *message = MessageLoader_GetNewString(linkContestRecord->messageLoader, LinkContestRecord_Text_PlayerName);

    StringTemplate_SetPlayerName(linkContestRecord->stringTemplate, 0, SaveData_GetTrainerInfo(saveData));
    StringTemplate_Format(linkContestRecord->stringTemplate, linkContestRecordString, message);

    int textX = CalcAlignedTextX(linkContestRecordString, FONT_SYSTEM, TEXT_ALIGN_CENTER, HEADER_X);

    Text_AddPrinterWithParams(&linkContestRecord->window, FONT_SYSTEM, linkContestRecordString, textX, HEADER_NAME_Y, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(message);

    message = MessageLoader_GetNewString(linkContestRecord->messageLoader, LinkContestRecord_Text_LinkContestRecord);
    textX = CalcAlignedTextX(message, FONT_SYSTEM, TEXT_ALIGN_CENTER, HEADER_X);

    Text_AddPrinterWithParams(&linkContestRecord->window, FONT_SYSTEM, message, textX, HEADER_TITLE_Y, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(message);

    for (i = 0; i < CONTEST_TYPE_MAX; i++) {
        message = MessageLoader_GetNewString(linkContestRecord->messageLoader, sRecordMessageContestTypes[i].messageID);
        textX = CalcAlignedTextX(message, FONT_SYSTEM, TEXT_ALIGN_LEFT, sRecordMessageContestTypes[i].offsetX);
        Text_AddPrinterWithParams(&linkContestRecord->window, FONT_SYSTEM, message, textX, sRecordMessageContestTypes[i].offsetY, TEXT_SPEED_NO_TRANSFER, NULL);
        String_Free(message);
    }

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        message = MessageLoader_GetNewString(linkContestRecord->messageLoader, sRecordMessagePlaces[i].messageID);
        textX = CalcAlignedTextX(message, FONT_SYSTEM, TEXT_ALIGN_RIGHT, sRecordMessagePlaces[i].offsetX);
        Text_AddPrinterWithParams(&linkContestRecord->window, FONT_SYSTEM, message, textX, sRecordMessagePlaces[i].offsetY, TEXT_SPEED_NO_TRANSFER, NULL);
        String_Free(message);
    }

    for (contestType = 0; contestType < CONTEST_TYPE_MAX; contestType++) {
        for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
            numPlacements = LinkContestRecords_GetSavaData(saveData, contestType, i);
            message = MessageLoader_GetNewString(linkContestRecord->messageLoader, sRecordMessageRecords[contestType][i].messageID);
            StringTemplate_SetNumber(linkContestRecord->stringTemplate, 0, numPlacements, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
            StringTemplate_Format(linkContestRecord->stringTemplate, linkContestRecordString, message);
            textX = CalcAlignedTextX(linkContestRecordString, FONT_SYSTEM, TEXT_ALIGN_RIGHT, sRecordMessageRecords[contestType][i].offsetX);
            Text_AddPrinterWithParams(&linkContestRecord->window, FONT_SYSTEM, linkContestRecordString, textX, sRecordMessageRecords[contestType][i].offsetY, TEXT_SPEED_NO_TRANSFER, NULL);
            String_Free(message);
        }
    }

    String_Free(linkContestRecordString);
    Window_CopyToVRAM(&linkContestRecord->window);

    return linkContestRecord;
}

void LinkContestRecordDisplay_Free(LinkContestRecord *linkContestRecord)
{
    Window_EraseStandardFrame(&linkContestRecord->window, TRUE);
    Window_ClearAndCopyToVRAM(&linkContestRecord->window);
    Window_Remove(&linkContestRecord->window);
    MessageLoader_Free(linkContestRecord->messageLoader);
    StringTemplate_Free(linkContestRecord->stringTemplate);
    Heap_Free(linkContestRecord);
}

static int CalcAlignedTextX(const String *string, enum Font font, enum TextAlignment textAlignment, int textX)
{
    if (textAlignment == TEXT_ALIGN_LEFT) {
        return textX;
    }

    int stringWidth = Font_CalcStringWidth(font, string, 0);

    switch (textAlignment) {
    case TEXT_ALIGN_CENTER:
        return textX - stringWidth / 2;
    case TEXT_ALIGN_RIGHT:
        return textX - stringWidth;
    }

    GF_ASSERT(FALSE);
    return textX;
}

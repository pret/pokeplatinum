#include "overlay021/pokedex_text_manager.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020127E8.h"

#include "font.h"
#include "message.h"
#include "text.h"
#include "unk_02012744.h"

static BOOL FontExists(PokedexTextData *textData);
static PokedexTextData *NextEmptyText(PokedexTextManager *textMan);

PokedexTextManager *PokedexTextManager_New(const PokedexTextManagerTemplate *textManTemplate)
{
    PokedexTextManager *textMan = Heap_AllocFromHeap(textManTemplate->heapID, sizeof(PokedexTextManager));

    GF_ASSERT(textMan);
    memset(textMan, 0, sizeof(PokedexTextManager));

    textMan->unk_00 = sub_02012744(textManTemplate->numTextData, textManTemplate->heapID);
    textMan->textData = Heap_AllocFromHeap(textManTemplate->heapID, sizeof(PokedexTextData) * textManTemplate->numTextData);

    GF_ASSERT(textMan->textData);
    memset(textMan->textData, 0, sizeof(PokedexTextData) * textManTemplate->numTextData);

    textMan->numTextData = textManTemplate->numTextData;
    textMan->spriteList = textManTemplate->spriteList;
    textMan->bgConfig = textManTemplate->bgConfig;
    textMan->heapID = textManTemplate->heapID;

    return textMan;
}

void PokedexTextManager_Free(PokedexTextManager *textMan)
{
    GF_ASSERT(textMan);

    PokedexTextManager_FreeAllTextData(textMan);
    Heap_FreeToHeap(textMan->textData);
    sub_020127BC(textMan->unk_00);

    memset(textMan, 0, sizeof(PokedexTextManager));

    Heap_FreeToHeap(textMan);
}

PokedexTextData *PokedexTextManager_NextTextData(const PokedexDisplayBox *displayBox)
{
    int size = sub_02012898(displayBox->window, displayBox->vramType, displayBox->heapID);
    return PokedexTextManager_NextTextDataNew(displayBox, size);
}

PokedexTextData *PokedexTextManager_NextTextDataNew(const PokedexDisplayBox *displayBox, int size)
{
    UnkStruct_020127E8 v0;
    PokedexTextData *textData = NextEmptyText(displayBox->textMan);

    GF_ASSERT(textData);
    CharTransfer_AllocRange(size, TRUE, displayBox->vramType, &textData->allocation);

    v0.unk_00 = displayBox->textMan->unk_00;
    v0.unk_04 = displayBox->window;
    v0.unk_08 = displayBox->textMan->spriteList;
    v0.unk_0C = displayBox->paletteProxy;
    v0.unk_10 = displayBox->sprite;
    v0.unk_14 = textData->allocation.offset;
    v0.unk_18 = displayBox->x;
    v0.unk_1C = displayBox->y;
    v0.unk_20 = displayBox->spriteResourcePriority;
    v0.unk_24 = displayBox->spriteListPriority;
    v0.unk_28 = displayBox->vramType;
    v0.heapID = displayBox->heapID;

    textData->fontOAM = sub_020127E8(&v0);

    return textData;
}

void PokedexTextManager_FreeTextData(PokedexTextData *textData)
{
    sub_02012870(textData->fontOAM);
    CharTransfer_ClearRange(&textData->allocation);

    memset(textData, 0, sizeof(PokedexTextData));
}

void PokedexTextManager_FreeAllTextData(PokedexTextManager *textMan)
{
    for (int textIndex = 0; textIndex < textMan->numTextData; textIndex++) {
        if (FontExists(&textMan->textData[textIndex])) {
            PokedexTextManager_FreeTextData(&textMan->textData[textIndex]);
        }
    }
}

Window *PokedexTextManager_NewWindow(PokedexTextManager *textMan, int width, int height)
{
    Window *window = Window_New(textMan->heapID, 1);

    Window_Init(window);
    Window_AddToTopLeftCorner(textMan->bgConfig, window, width, height, 0, 0);

    return window;
}

void PokedexTextManager_FreeWindow(Window *window)
{
    Windows_Delete(window, 1);
}

u32 PokedexTextManager_DisplayMessage(PokedexTextManager *textMan, Window *window, u32 bankID, u32 entryID, int xOffset, int yOffset)
{
    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, textMan->heapID);
    GF_ASSERT(messageLoader);

    Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, entryID);
    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    u32 strWidth = Font_CalcStrbufWidth(FONT_SUBSCREEN, strbuf, 0);

    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);

    return strWidth;
}

void PokedexTextManager_DisplayMessageTopRight(PokedexTextManager *textMan, Window *window, u32 bankID, u32 entryID)
{
    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, bankID, textMan->heapID);
    GF_ASSERT(messageLoader);

    Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, entryID);
    int strBufWidth = Font_CalcStrbufWidth(FONT_SUBSCREEN, strbuf, 0);
    int xOffset = Window_GetWidth(window) * 8;
    xOffset = xOffset - strBufWidth;
    xOffset /= 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);
}

void PokedexTextManager_DisplayStrbuf(PokedexTextManager *textMan, Window *window, Strbuf *strbuf, int xOffset, int yOffset)
{
    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
}

static BOOL FontExists(PokedexTextData *textData)
{
    if (textData->fontOAM) {
        return TRUE;
    }

    return FALSE;
}

static PokedexTextData *NextEmptyText(PokedexTextManager *textMan)
{
    for (int textIndex = 0; textIndex < textMan->numTextData; textIndex++) {
        if (FontExists(&textMan->textData[textIndex]) == FALSE) {
            return &textMan->textData[textIndex];
        }
    }

    return NULL;
}

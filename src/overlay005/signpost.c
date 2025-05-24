#include "overlay005/signpost.h"

#include <nitro.h>
#include <string.h>

#include "generated/signpost_commands.h"

#include "field/field_system.h"

#include "bg_window.h"
#include "field_message.h"
#include "heap.h"

static void Signpost_Draw(FieldSystem *fieldSystem);
static void Signpost_Remove(FieldSystem *fieldSystem);
static BOOL Signpost_ScrollIn(FieldSystem *fieldSystem);
static BOOL Signpost_ScrollOut(FieldSystem *fieldSystem);

void *Signpost_Init(enum HeapId heapID)
{
    void *signpost = Heap_AllocFromHeap(heapID, sizeof(Signpost));

    memset(signpost, 0, sizeof(Signpost));
    return signpost;
}

void Signpost_Free(Signpost *signpost)
{
    if (signpost->active != FALSE) {
        Window_Remove(&signpost->window);
    }

    Heap_FreeToHeap(signpost);
}

void Signpost_SetTypeAndNARCMemberIdx(Signpost *signpost, u16 type, u16 NARCMemberIdx)
{
    signpost->type = type;
    signpost->NARCMemberIdx = NARCMemberIdx;
}

void Signpost_SetCommand(Signpost *signpost, u8 command)
{
    signpost->command = command;
}

Window *Signpost_GetWindow(Signpost *signpost)
{
    return &signpost->window;
}

u8 Signpost_GetType(Signpost *signpost)
{
    return signpost->type;
}

BOOL Signpost_IsDone(Signpost *signpost)
{
    if (signpost->command == SIGNPOST_CMD_DO_NOTHING) {
        return TRUE;
    }

    return FALSE;
}

void Signpost_DoCurrentCommand(FieldSystem *fieldSystem)
{
    Signpost *signpost = fieldSystem->signpost;

    switch (signpost->command) {
    case SIGNPOST_CMD_DO_NOTHING:
        break;
    case SIGNPOST_CMD_DRAW:
        Signpost_Draw(fieldSystem);
        signpost->command = SIGNPOST_CMD_DO_NOTHING;
        break;
    case SIGNPOST_CMD_SCROLL_OUT:
        if (Signpost_ScrollOut(fieldSystem) == TRUE) {
            signpost->command = SIGNPOST_CMD_DO_NOTHING;
        }
        break;
    case SIGNPOST_CMD_SCROLL_IN:
        if (Signpost_ScrollIn(fieldSystem) == TRUE) {
            signpost->command = SIGNPOST_CMD_DO_NOTHING;
        }
        break;
    case SIGNPOST_CMD_REMOVE:
        Signpost_Remove(fieldSystem);
        signpost->command = SIGNPOST_CMD_DO_NOTHING;
        break;
    }
}

void Signpost_DoCommand(FieldSystem *fieldSystem, u8 command)
{
    Signpost_SetCommand(fieldSystem->signpost, command);
    Signpost_DoCurrentCommand(fieldSystem);
}

static void Signpost_Draw(FieldSystem *fieldSystem)
{
    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, -48);

    if (fieldSystem->signpost->active == FALSE) {
        FieldMessage_AddSignpostWindow(fieldSystem->bgConfig, &fieldSystem->signpost->window, fieldSystem->signpost->type, BG_LAYER_MAIN_3);
        fieldSystem->signpost->active = TRUE;
    }

    FieldMessage_LoadAndDrawSignpost(&fieldSystem->signpost->window, fieldSystem->signpost->type, fieldSystem->signpost->NARCMemberIdx);
}

static void Signpost_Remove(FieldSystem *fieldSystem)
{
    if (fieldSystem->signpost->active == FALSE) {
        return;
    }

    Window_Remove(&fieldSystem->signpost->window);
    Bg_FillTilemapRect(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 0, 0, 18, 32, 6, 16);
    Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    fieldSystem->signpost->active = FALSE;
}

static BOOL Signpost_ScrollIn(FieldSystem *fieldSystem)
{
    int offset = Bg_GetYOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3);

    if (offset == 0) {
        return TRUE;
    }

    if (!(offset > -48 && offset < 0)) {
        Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, -48);
    }

    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_ADD_Y, 16);

    return FALSE;
}

static BOOL Signpost_ScrollOut(FieldSystem *fieldSystem)
{
    int offset = Bg_GetYOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3);

    if (offset == -48) {
        Bg_FillTilemapRect(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 0, 0, 18, 32, 6, 16);
        Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
        Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);
        return TRUE;
    }

    if (!(offset > -48 && offset < 0)) {
        Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);
    }

    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SUB_Y, 16);

    return FALSE;
}

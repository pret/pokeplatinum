#include "overlay005/signpost.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/struct_signpost_decl.h"

#include "bg_window.h"
#include "field_message.h"
#include "heap.h"

struct Signpost_t {
    Window window;
    u16 NARCMemberIdx;
    u8 type;
    u8 unk_13_0 : 7;
    u8 active : 1;
};

static void Signpost_AddLoadAndDraw(FieldSystem *fieldSystem);
static void Signpost_Remove(FieldSystem *fieldSystem);
static BOOL ov5_021E1C70(FieldSystem *fieldSystem);
static BOOL ov5_021E1CB0(FieldSystem *fieldSystem);

void *Signpost_Init(u32 heapID)
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

void ov5_021E1B40(Signpost *signpost, u8 param1)
{
    signpost->unk_13_0 = param1;
}

Window *Signpost_GetWindow(Signpost *signpost)
{
    return &signpost->window;
}

u8 Signpost_GetType(Signpost *signpost)
{
    return signpost->type;
}

BOOL ov5_021E1B58(Signpost *signpost)
{
    if (signpost->unk_13_0 == 0) {
        return TRUE;
    }

    return FALSE;
}

void ov5_021E1B68(FieldSystem *fieldSystem)
{
    Signpost *signpost = fieldSystem->signpost;

    switch (signpost->unk_13_0) {
    case 0:
        break;
    case 1:
        Signpost_AddLoadAndDraw(fieldSystem);
        signpost->unk_13_0 = 0;
        break;
    case 2:
        if (ov5_021E1CB0(fieldSystem) == TRUE) {
            signpost->unk_13_0 = 0;
        }
        break;
    case 3:
        if (ov5_021E1C70(fieldSystem) == TRUE) {
            signpost->unk_13_0 = 0;
        }
        break;
    case 4:
        Signpost_Remove(fieldSystem);
        signpost->unk_13_0 = 0;
        break;
    }
}

void ov5_021E1BCC(FieldSystem *fieldSystem, u8 param1)
{
    ov5_021E1B40(fieldSystem->signpost, param1);
    ov5_021E1B68(fieldSystem);
}

static void Signpost_AddLoadAndDraw(FieldSystem *fieldSystem)
{
    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 3, -48);

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
    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 3, 0);

    fieldSystem->signpost->active = FALSE;
}

static BOOL ov5_021E1C70(FieldSystem *fieldSystem)
{
    int offset = Bg_GetYOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3);

    if (offset == 0) {
        return TRUE;
    }

    if (!(offset > -48 && offset < 0)) {
        Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 3, -48);
    }

    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 4, 16);

    return FALSE;
}

static BOOL ov5_021E1CB0(FieldSystem *fieldSystem)
{
    int offset = Bg_GetYOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3);

    if (offset == -48) {
        Bg_FillTilemapRect(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 0, 0, 18, 32, 6, 16);
        Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
        Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 3, 0);
        return TRUE;
    }

    if (!(offset > -48 && offset < 0)) {
        Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 3, 0);
    }

    Bg_SetOffset(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 5, 16);

    return FALSE;
}

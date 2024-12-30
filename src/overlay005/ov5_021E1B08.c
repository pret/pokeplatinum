#include "overlay005/ov5_021E1B08.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/struct_ov5_021E1B20_decl.h"

#include "bg_window.h"
#include "field_message.h"
#include "heap.h"

struct UnkStruct_ov5_021E1B20_t {
    Window unk_00;
    u16 unk_10;
    u8 unk_12;
    u8 unk_13_0 : 7;
    u8 unk_13_7 : 1;
};

static void ov5_021E1BE0(FieldSystem *fieldSystem);
static void ov5_021E1C1C(FieldSystem *fieldSystem);
static BOOL ov5_021E1C70(FieldSystem *fieldSystem);
static BOOL ov5_021E1CB0(FieldSystem *fieldSystem);

void *ov5_021E1B08(u32 param0)
{
    void *v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov5_021E1B20));

    memset(v0, 0, sizeof(UnkStruct_ov5_021E1B20));
    return v0;
}

void ov5_021E1B20(UnkStruct_ov5_021E1B20 *param0)
{
    if (param0->unk_13_7 != 0) {
        Window_Remove(&param0->unk_00);
    }

    Heap_FreeToHeap(param0);
}

void ov5_021E1B38(UnkStruct_ov5_021E1B20 *param0, u16 param1, u16 param2)
{
    param0->unk_12 = param1;
    param0->unk_10 = param2;
}

void ov5_021E1B40(UnkStruct_ov5_021E1B20 *param0, u8 param1)
{
    param0->unk_13_0 = param1;
}

Window *ov5_021E1B50(UnkStruct_ov5_021E1B20 *param0)
{
    return &param0->unk_00;
}

u8 ov5_021E1B54(UnkStruct_ov5_021E1B20 *param0)
{
    return param0->unk_12;
}

BOOL ov5_021E1B58(UnkStruct_ov5_021E1B20 *param0)
{
    if (param0->unk_13_0 == 0) {
        return 1;
    }

    return 0;
}

void ov5_021E1B68(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021E1B20 *v0 = fieldSystem->unk_64;

    switch (v0->unk_13_0) {
    case 0:
        break;
    case 1:
        ov5_021E1BE0(fieldSystem);
        v0->unk_13_0 = 0;
        break;
    case 2:
        if (ov5_021E1CB0(fieldSystem) == 1) {
            v0->unk_13_0 = 0;
        }
        break;
    case 3:
        if (ov5_021E1C70(fieldSystem) == 1) {
            v0->unk_13_0 = 0;
        }
        break;
    case 4:
        ov5_021E1C1C(fieldSystem);
        v0->unk_13_0 = 0;
        break;
    }
}

void ov5_021E1BCC(FieldSystem *fieldSystem, u8 param1)
{
    ov5_021E1B40(fieldSystem->unk_64, param1);
    ov5_021E1B68(fieldSystem);
}

static void ov5_021E1BE0(FieldSystem *fieldSystem)
{
    Bg_SetOffset(fieldSystem->bgConfig, 3, 3, -48);

    if (fieldSystem->unk_64->unk_13_7 == 0) {
        FieldMessage_AddSignpostWindow(fieldSystem->bgConfig, &fieldSystem->unk_64->unk_00, fieldSystem->unk_64->unk_12, 3);
        fieldSystem->unk_64->unk_13_7 = 1;
    }

    FieldMessage_LoadAndDrawSignpost(&fieldSystem->unk_64->unk_00, fieldSystem->unk_64->unk_12, fieldSystem->unk_64->unk_10);
}

static void ov5_021E1C1C(FieldSystem *fieldSystem)
{
    if (fieldSystem->unk_64->unk_13_7 == 0) {
        return;
    }

    Window_Remove(&fieldSystem->unk_64->unk_00);
    Bg_FillTilemapRect(fieldSystem->bgConfig, 3, 0, 0, 18, 32, 6, 16);
    Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
    Bg_SetOffset(fieldSystem->bgConfig, 3, 3, 0);

    fieldSystem->unk_64->unk_13_7 = 0;
}

static BOOL ov5_021E1C70(FieldSystem *fieldSystem)
{
    int v0 = Bg_GetYOffset(fieldSystem->bgConfig, 3);

    if (v0 == 0) {
        return 1;
    }

    if (!((v0 > -48) && (v0 < 0))) {
        Bg_SetOffset(fieldSystem->bgConfig, 3, 3, -48);
    }

    Bg_SetOffset(fieldSystem->bgConfig, 3, 4, 16);

    return 0;
}

static BOOL ov5_021E1CB0(FieldSystem *fieldSystem)
{
    int v0 = Bg_GetYOffset(fieldSystem->bgConfig, 3);

    if (v0 == -48) {
        Bg_FillTilemapRect(fieldSystem->bgConfig, 3, 0, 0, 18, 32, 6, 16);
        Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
        Bg_SetOffset(fieldSystem->bgConfig, 3, 3, 0);
        return 1;
    }

    if (!((v0 > -48) && (v0 < 0))) {
        Bg_SetOffset(fieldSystem->bgConfig, 3, 3, 0);
    }

    Bg_SetOffset(fieldSystem->bgConfig, 3, 5, 16);

    return 0;
}

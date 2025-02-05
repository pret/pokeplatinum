#include "overlay005/ov5_021D5EB8.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/struct_ov5_021D57D8_decl.h"

#include "bg_window.h"
#include "buffer_manager.h"
#include "camera.h"
#include "cell_actor.h"
#include "enums.h"
#include "fx_util.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math.h"
#include "narc.h"
#include "render_oam.h"
#include "render_view.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"

typedef struct UnkStruct_ov5_021D5EF8_t {
    UnkStruct_ov5_021D6594 *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    SysTask *unk_14;
} UnkStruct_ov5_021D5EF8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_ov5_021F8D90;

typedef struct {
    SpriteResource *unk_00[4];
    CellActorInitParamsEx unk_10;
    CellActorResourceData unk_40;
} UnkStruct_ov5_021D6690;

typedef struct {
    char *unk_00;
    char *unk_04;
    char *unk_08;
    NNSG2dScreenData *unk_0C;
    NNSG2dCharacterData *unk_10;
    NNSG2dPaletteData *unk_14;
} UnkStruct_ov5_021D6D84;

typedef struct UnkStruct_ov5_021D6FA8_tag {
    UnkStruct_ov5_021D6594 *unk_00;
    CellActor *unk_04;
    void *unk_08;
    s32 unk_0C[10];
    struct UnkStruct_ov5_021D6FA8_tag *unk_34;
    struct UnkStruct_ov5_021D6FA8_tag *unk_38;
} UnkStruct_ov5_021D6FA8;

typedef struct {
    UnkStruct_ov5_021D6594 *unk_00;
    void *unk_04;
    const UnkStruct_ov5_021D6690 *unk_08;
    UnkStruct_ov5_021D6FA8 unk_0C;
    UnkStruct_ov5_021D6FA8 unk_48[48];
    SysTask *unk_B88;
    VecFx32 unk_B8C;
    void *unk_B98;
    BOOL unk_B9C;
    u16 unk_BA0;
    u16 unk_BA2;
    u16 unk_BA4;
    u16 unk_BA6;
} UnkStruct_ov5_021DB4B8;

typedef void (*UnkFuncPtr_ov5_021D69B8)(SysTask *, void *);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
    UnkStruct_ov5_021DB4B8 *unk_08;
    UnkStruct_ov5_021D6690 *unk_0C;
    u16 unk_10;
    u16 unk_12;
    SysTask *unk_14;
    UnkFuncPtr_ov5_021D69B8 unk_18;
} UnkStruct_ov5_021D69B8;

typedef void (*UnkFuncPtr_ov5_021D6FF0)(UnkStruct_ov5_021D6FA8 *);

typedef struct {
    SpriteResourceCollection *unk_00[4];
    SpriteResourceTable *unk_10;
    NNSG2dRendererInstance unk_14;
    NNSG2dRenderSurface unk_C0;
    CellActorCollection *unk_130;
    SysTask *unk_134;
} UnkStruct_ov5_021D61D0;

typedef struct UnkStruct_ov5_021D6594_t {
    UnkStruct_ov5_021D69B8 *unk_00;
    const UnkStruct_ov5_021F8D90 *unk_04;
    UnkStruct_ov5_021D61D0 unk_08;
    FieldSystem *fieldSystem;
    NARC *unk_144;
} UnkStruct_ov5_021D6594;

typedef void (*UnkFuncPtr_ov5_021D7210)(UnkStruct_ov5_021DB4B8 *, int);

typedef struct {
    UnkStruct_ov5_021DB4B8 *unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    s16 unk_12;
    s32 unk_14;
    UnkFuncPtr_ov5_021D7210 unk_18;
} UnkStruct_ov5_021D7210;

typedef void (*UnkFuncPtr_ov5_021D7210_1)(UnkStruct_ov5_021DB4B8 *, int);

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov5_021D64FC;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    s16 unk_0C;
    s16 unk_0E;
} UnkStruct_ov5_021D6538;

typedef struct {
    UnkStruct_ov5_021D57D8 *unk_00;
    UnkStruct_ov5_021D64FC unk_04;
    UnkStruct_ov5_021D64FC unk_18;
    UnkStruct_ov5_021D64FC unk_2C;
    UnkStruct_ov5_021D64FC unk_40;
    UnkStruct_ov5_021D64FC unk_54;
} UnkStruct_ov5_021D7308;

typedef struct {
    UnkStruct_ov5_021D57D8 *unk_00;
    char unk_04[32];
    s32 unk_24;
    s32 unk_28;
    s16 unk_2C;
    s16 unk_2E;
} UnkStruct_ov5_021D7480;

typedef struct {
    UnkStruct_ov5_021D7210 unk_00;
    UnkStruct_ov5_021D7480 unk_1C;
    UnkStruct_ov5_021D7308 unk_4C;
    s32 unk_B4[10];
} UnkStruct_ov5_021D9984;

typedef struct {
    UnkStruct_ov5_021D7210 unk_00;
    s32 unk_1C[10];
} UnkStruct_ov5_021DA8A0;

typedef struct {
    UnkStruct_ov5_021D7480 unk_00;
    UnkStruct_ov5_021D7308 unk_30;
    s32 unk_98[10];
} UnkStruct_ov5_021D84D4;

typedef struct {
    UnkStruct_ov5_021D64FC unk_00;
    s16 unk_14;
    s16 unk_16;
    u16 unk_18;
    u16 unk_1A;
} UnkStruct_ov5_021DAC68;

typedef struct {
    UnkStruct_ov5_021D64FC unk_00;
    UnkStruct_ov5_021D7480 unk_14;
    UnkStruct_ov5_021D7308 unk_44;
    fx32 unk_AC;
    fx32 unk_B0;
    u16 unk_B4;
    u16 unk_B6;
} UnkStruct_ov5_021DB144;

typedef struct {
    UnkStruct_ov5_021D64FC unk_00;
    UnkStruct_ov5_021D7480 unk_14;
    UnkStruct_ov5_021D7308 unk_44;
} UnkStruct_ov5_021D879C;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    UnkStruct_ov5_021D6538 unk_04;
    HBlankSystem *unk_14;
    HBlankTask *unk_18;
    BufferManager *bufferManagers[2];
    SysTask *unk_24;
    u32 unk_28;
    u16 unk_2C[4][192];
} UnkStruct_ov5_021DB614;

typedef struct {
    UnkStruct_ov5_021DB614 unk_00;
} UnkStruct_ov5_021DB04C;

static void ov5_021D5FE4(SysTask *param0, void *param1);
static void ov5_021D60B4(SysTask *param0, void *param1);
static int ov5_021D6178(int param0, int param1);
static void ov5_021DB4B8(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021DB4E4(UnkStruct_ov5_021DB4B8 *param0);
static void ov5_021D64E4(int param0, int param1);
static void ov5_021D64FC(UnkStruct_ov5_021D64FC *param0, int param1, int param2, int param3);
static BOOL ov5_021D650C(UnkStruct_ov5_021D64FC *param0);
static void ov5_021D6538(UnkStruct_ov5_021D6538 *param0, fx32 param1, fx32 param2, int param3);
static BOOL ov5_021D6548(UnkStruct_ov5_021D6538 *param0);
static void ov5_021D6594(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2);
static void ov5_021D6A2C(UnkStruct_ov5_021D6594 *param0, int param1);
static void ov5_021D6690(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2);
static SpriteResource *ov5_021D65C0(SpriteResourceTable *param0, int param1, int param2, SpriteResourceCollection *param3, NARC *param4, u32 param5);
static void ov5_021D61D0(UnkStruct_ov5_021D61D0 *param0);
static void ov5_021D6290(SpriteResourceTable *param0, int param1, int param2);
static void ov5_021D62BC(UnkStruct_ov5_021D61D0 *param0);
static void ov5_021D6284(SysTask *param0, void *param1);
static void ov5_021D630C(CellActor *param0, VecFx32 *param1);
static void ov5_021D6FA8(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D6FD8(UnkStruct_ov5_021D6FA8 *param0);
static UnkStruct_ov5_021D6FA8 *ov5_021D6F00(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D6F4C(CellActorResourceData *param0, UnkStruct_ov5_021D6594 *param1, UnkStruct_ov5_021D6690 *param2, int param3, int param4);
static BOOL ov5_021D6A48(UnkStruct_ov5_021D6594 *param0, UnkStruct_ov5_021D69B8 *param1);
static void ov5_021D6FF0(UnkStruct_ov5_021D6FA8 *param0, UnkFuncPtr_ov5_021D6FF0 param1);
static void ov5_021D700C(UnkStruct_ov5_021DB4B8 *param0);
static VecFx32 ov5_021D7010(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D7028(fx32 *param0, fx32 *param1, UnkStruct_ov5_021DB4B8 *param2);
static void ov5_021D717C(UnkStruct_ov5_021DB4B8 *param0, int *param1, int *param2);
static void ov5_021D71B4(UnkStruct_ov5_021DB4B8 *param0, fx32 *param1, fx32 *param2);
static void ov5_021D6EC8(UnkStruct_ov5_021D6FA8 *param0, int param1);
static void ov5_021D6EF0(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D7210(UnkStruct_ov5_021D7210 *param0, UnkStruct_ov5_021DB4B8 *param1, s32 param2, s32 param3, s32 param4, s32 param5, s32 param6, s32 param7, s32 param8, UnkFuncPtr_ov5_021D7210_1 param9);
static void ov5_021D7238(UnkStruct_ov5_021D7210 *param0, s32 param1, s32 param2, s32 param3, s32 param4);
static int ov5_021D7244(UnkStruct_ov5_021D7210 *param0);
static void ov5_021D7308(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, UnkStruct_ov5_021D57D8 *param2, int param3, int param4, GXRgb param5, int param6, u32 param7);
static int ov5_021D735C(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, u32 param2);
static void ov5_021D7384(UnkStruct_ov5_021D57D8 *param0, int param1, int param2, GXRgb param3);
static void ov5_021D73B0(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D57D8 *param1, int param2, int param3, GXRgb param4, int param5);
static BOOL ov5_021D7434(UnkStruct_ov5_021D7308 *param0);
static void ov5_021D7480(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D749C(UnkStruct_ov5_021D7480 *param0, int param1, BOOL param2);
static int ov5_021D74B8(UnkStruct_ov5_021D7480 *param0);
static int ov5_021D74F4(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D74D4(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D7534(UnkStruct_ov5_021D7480 *param0);
static void ov5_021D7568(UnkStruct_ov5_021DB4B8 *param0, UnkFuncPtr_ov5_021D7210_1 param1, int param2, int param3, int param4, UnkFuncPtr_ov5_021D6FF0 param5);
static UnkStruct_ov5_021D6FA8 *ov5_021D75E4(UnkStruct_ov5_021DB4B8 *param0);
static BOOL ov5_021D66D0(UnkStruct_ov5_021D6594 *param0, int param1);
static BOOL ov5_021D6730(UnkStruct_ov5_021D6594 *param0, int param1);
static BOOL ov5_021D676C(UnkStruct_ov5_021D6594 *param0, int param1, int param2, u32 param3);
static void ov5_021D6868(UnkStruct_ov5_021D6594 *param0, int param1, u32 param2);
static void ov5_021D6890(UnkStruct_ov5_021D6594 *param0, int param1);
static void ov5_021D68B8(UnkStruct_ov5_021D6594 *param0, int param1);
static void ov5_021D69B8(UnkStruct_ov5_021D69B8 *param0);
static void ov5_021D6A84(SysTask *param0, void *param1);
static BOOL ov5_021D6B60(UnkStruct_ov5_021D6594 *param0, UnkStruct_ov5_021D69B8 *param1);
static BOOL ov5_021D6BC4(UnkStruct_ov5_021D69B8 *param0);
static void ov5_021D6BFC(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2);
static void ov5_021D6C30(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2);
static void ov5_021D6C64(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2);
static void ov5_021D6CA0(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2);
static void ov5_021D6CDC(UnkStruct_ov5_021D6594 *param0, UnkStruct_ov5_021D69B8 *param1);
static void ov5_021D6D34(UnkStruct_ov5_021DB4B8 *param0);
static void ov5_021D6D64(UnkStruct_ov5_021DB4B8 *param0);
static void ov5_021D6D84(UnkStruct_ov5_021D6594 *param0, int param1);
static void ov5_021D6DCC(UnkStruct_ov5_021D6594 *param0, int param1);
static void ov5_021D6E20(UnkStruct_ov5_021D6594 *param0, int param1);
static void ov5_021D7604(SysTask *param0, void *param1);
static void ov5_021D7658(SysTask *param0, void *param1);
static void ov5_021D79F0(SysTask *param0, void *param1);
static void ov5_021D7E54(SysTask *param0, void *param1);
static void ov5_021D823C(SysTask *param0, void *param1);
static void ov5_021D84D4(SysTask *param0, void *param1);
static void ov5_021D8638(SysTask *param0, void *param1);
static void ov5_021D879C(SysTask *param0, void *param1);
static void ov5_021D8948(SysTask *param0, void *param1);
static void ov5_021D8D08(SysTask *param0, void *param1);
static void ov5_021D8FF8(SysTask *param0, void *param1);
static void ov5_021D9464(SysTask *param0, void *param1);
static void ov5_021D97E8(SysTask *param0, void *param1);
static void ov5_021D9FF8(SysTask *param0, void *param1);
static void ov5_021D9F0C(SysTask *param0, void *param1);
static void ov5_021DA244(SysTask *param0, void *param1);
static void ov5_021DA748(SysTask *param0, void *param1);
static void ov5_021DA8A0(SysTask *param0, void *param1);
static void ov5_021DAB78(SysTask *param0, void *param1);
static void ov5_021DAC68(SysTask *param0, void *param1);
static void ov5_021DAD38(SysTask *param0, void *param1);
static void ov5_021DAEC0(SysTask *param0, void *param1);
static void ov5_021DB04C(SysTask *param0, void *param1);
static void ov5_021DB144(SysTask *param0, void *param1);
static void ov5_021DB3A8(SysTask *param0, void *param1);
static void ov5_021DB3C4(SysTask *param0, void *param1);
static void ov5_021DB3E0(SysTask *param0, void *param1);
static void ov5_021DB40C(SysTask *param0, void *param1);
static void ov5_021DB438(SysTask *param0, void *param1);
static void ov5_021DB460(SysTask *param0, void *param1);
static void ov5_021DB48C(SysTask *param0, void *param1);
static void ov5_021D78A4(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D7C40(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D8098(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D8B88(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D92C4(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D9690(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021DA0A8(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021DA5A0(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021DA9DC(UnkStruct_ov5_021DB4B8 *param0, int param1);
static void ov5_021D7960(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D7E20(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D81BC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D8C90(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D93DC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D97C0(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021DA1A8(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021DA6BC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021DAADC(UnkStruct_ov5_021D6FA8 *param0);
static void ov5_021D9984(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static BOOL ov5_021D9A0C(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static void ov5_021D9A58(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static void ov5_021D9AEC(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static void ov5_021D9B28(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static BOOL ov5_021D9B68(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static void ov5_021D9BC0(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static void ov5_021D9BEC(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1);
static void ov5_021D9C20(SysTask *param0, void *param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov5_021D9DFC(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D84D4 *param1, u32 param2, u32 param3, GXRgb param4, u32 param5, u32 param6);
static void ov5_021DB614(UnkStruct_ov5_021DB614 *param0, HBlankSystem *param1);
static void ov5_021DB690(UnkStruct_ov5_021DB614 *param0);
static void ov5_021DB6E0(UnkStruct_ov5_021DB614 *param0, fx32 param1, fx32 param2, int param3, int param4, int param5);
static BOOL ov5_021DB700(UnkStruct_ov5_021DB614 *param0);
static void ov5_021DB72C(HBlankTask *param0, void *param1);
static void ov5_021DB78C(SysTask *param0, void *param1);
static void ov5_021DB7A4(UnkStruct_ov5_021DB614 *param0);
static void ov5_021DB7B8(SysTask *param0, void *param1);
static void ov5_021DB7F8(SysTask *param0, void *param1);
static void ov5_021DB500(UnkStruct_ov5_021DB614 *param0);
static void ov5_021DB7CC(UnkStruct_ov5_021DB614 *param0);
static void ov5_021DB588(fx32 param0, int param1, int param2, int param3, int *param4, int *param5);

UnkStruct_ov5_021D5EF8 *ov5_021D5EB8(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021D5EF8 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D5EF8));
    memset(v0, 0, sizeof(UnkStruct_ov5_021D5EF8));

    v0->unk_00 = ov5_021D6364(fieldSystem);
    v0->unk_04 = 0;
    v0->unk_08 = 0;
    v0->unk_0C = 6;
    v0->unk_14 = NULL;
    v0->unk_10 = 31;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return v0;
}

void ov5_021D5EF8(UnkStruct_ov5_021D5EF8 *param0)
{
    if (param0->unk_14) {
        SysTask_Done(param0->unk_14);
    }

    ov5_021D63A4(&param0->unk_00);
    memset(param0, 0, sizeof(UnkStruct_ov5_021D5EF8));
    Heap_FreeToHeap(param0);

    param0 = NULL;
}

void ov5_021D5F24(UnkStruct_ov5_021D5EF8 *param0, int param1)
{
    BOOL v0;

    GF_ASSERT(param0->unk_0C == 6);
    GF_ASSERT(param1 < 31);

    if (param0->unk_04 == param1) {
        return;
    }

    v0 = ov5_021D6418(param0->unk_00, 8, param0->unk_04);
    GF_ASSERT(v0);

    v0 = ov5_021D6418(param0->unk_00, 0, param1);
    GF_ASSERT(v0);

    v0 = ov5_021D6418(param0->unk_00, 3, param1);
    GF_ASSERT(v0);

    param0->unk_04 = param1;
}

BOOL ov5_021D5F7C(UnkStruct_ov5_021D5EF8 *param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < 31);

    if (param0->unk_0C != 6) {
        param0->unk_10 = param1;
        return 1;
    }

    if (param0->unk_04 == param1) {
        return 1;
    }

    GF_ASSERT(param0->unk_14 == NULL);
    param0->unk_08 = param1;

    v0 = ov5_021D6178(param0->unk_04, param0->unk_08);

    if (v0 == 0) {
        param0->unk_0C = 0;
        param0->unk_14 = SysTask_Start(ov5_021D5FE4, param0, 0);
    } else {
        param0->unk_0C = 0;
        param0->unk_14 = SysTask_Start(ov5_021D60B4, param0, 0);
    }

    return 1;
}

u32 ov5_021D5FE0(UnkStruct_ov5_021D5EF8 *param0)
{
    return param0->unk_04;
}

static void ov5_021D5FE4(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D5EF8 *v0 = param1;
    BOOL v1;

    switch (v0->unk_0C) {
    case 0:
        v1 = ov5_021D6418(v0->unk_00, 5, v0->unk_04);
        GF_ASSERT(v1);
        v0->unk_0C++;
        break;
    case 1:
        v1 = ov5_021D64D0(v0->unk_00, v0->unk_04);

        if (v1 != 3) {
            v1 = ov5_021D6418(v0->unk_00, 8, v0->unk_04);
            GF_ASSERT(v1);
            v0->unk_0C++;
        }
        break;
    case 2:
        v1 = ov5_021D6418(v0->unk_00, 1, v0->unk_08);
        GF_ASSERT(v1);
        v0->unk_0C++;
        break;
    case 3:
        v1 = ov5_021D64D0(v0->unk_00, v0->unk_08);

        if (v1 != 1) {
            v0->unk_0C++;
        }
        break;
    case 4:
        v1 = ov5_021D6418(v0->unk_00, 2, v0->unk_08);
        GF_ASSERT(v1);

        v0->unk_0C++;
        v0->unk_04 = v0->unk_08;
        v0->unk_08 = 0;
        break;
    case 5:
        v0->unk_0C = 6;
        v0->unk_14 = NULL;

        SysTask_Done(param0);

        if (v0->unk_10 != 31) {
            ov5_021D5F7C(v0, v0->unk_10);
            v0->unk_10 = 31;
        }
        break;
    default:
        break;
    }
}

static void ov5_021D60B4(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D5EF8 *v0 = param1;
    BOOL v1;

    switch (v0->unk_0C) {
    case 0:
        v1 = ov5_021D6418(v0->unk_00, 1, v0->unk_08);
        GF_ASSERT(v1);
        v0->unk_0C++;
        break;
    case 1:
        v1 = ov5_021D64D0(v0->unk_00, v0->unk_08);

        if (v1 != 1) {
            v0->unk_0C++;
        }
        break;
    case 2:
        v1 = ov5_021D6418(v0->unk_00, 7, v0->unk_04);
        GF_ASSERT(v1);
        v1 = ov5_021D6418(v0->unk_00, 4, v0->unk_08);
        GF_ASSERT(v1);
        v0->unk_0C++;
        break;
    case 3:
        v1 = ov5_021D64D0(v0->unk_00, v0->unk_04);

        if (v1 != 3) {
            v1 = ov5_021D6418(v0->unk_00, 8, v0->unk_04);
            GF_ASSERT(v1);
            v0->unk_0C++;
        }
        break;
    case 4:
        v0->unk_04 = v0->unk_08;
        v0->unk_08 = 0;
        v0->unk_0C = 6;
        v0->unk_14 = NULL;

        SysTask_Done(param0);

        if (v0->unk_10 != 31) {
            ov5_021D5F7C(v0, v0->unk_10);
            v0->unk_10 = 31;
        }
        break;
    default:
        break;
    }
}

static int ov5_021D6178(int param0, int param1)
{
    int v0 = 0;

    switch (param0) {
    case 5:
        if ((param1 == 6) || (param1 == 21) || (param1 == 7)) {
            v0 = 1;
        }
        break;
    case 6:
        if ((param1 == 5) || (param1 == 21) || (param1 == 7)) {
            v0 = 1;
        }
        break;
    case 21:
        if ((param1 == 5) || (param1 == 6) || (param1 == 7)) {
            v0 = 1;
        }
        break;
    case 7:
        if ((param1 == 5) || (param1 == 21) || (param1 == 6)) {
            v0 = 1;
        }
        break;
    default:
        break;
    }

    return v0;
}

static const int Unk_ov5_021F8CDC[4] = {
    -4,
    -6,
    -8,
    -10
};

static const int Unk_ov5_021F8CEC[4] = {
    0x2,
    0x4,
    0x2,
    0x4
};

static const char Unk_ov5_021F8E14[32] = {
    0x38,
    0x30,
    0x28,
    0x20,
    0x18,
    0x10,
    0x8,
    0x0,
    0x8,
    0x8,
    0x8,
    0x10,
    0x18,
    0x20,
    0x28,
    0x30,
    0x38,
    0x40,
    0x44,
    0x48,
    0x4C,
    0x50,
    0x54,
    0x58,
    0x5C,
    0x60,
    0x64,
    0x68,
    0x6C,
    0x70,
    0x74,
    0x78
};

static u8 Unk_ov5_02201D38[64] = {
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    -0x2,
    -0x2,
    -0x1,
    -0x1,
    0x0,
    0x0,
    -0x1,
    -0x1,
    0x0,
    0x0
};

static const UnkStruct_ov5_021F8D90 Unk_ov5_021F8D90[11] = {
    { 0x15, 0x24, 0x26 },
    { 0x25, 0x24, 0x26 },
    { 0x9, 0x8, 0xA },
    { 0x2A, 0x2C, 0x2B },
    { 0x1E, 0x1D, 0x1F },
    { 0x2E, 0x2D, 0x2F },
    { 0x33, 0x2D, 0x2F },
    { 0x34, 0x35, 0x36 },
    { 0x31, 0x30, 0x32 },
    { 0x37, 0x38, 0x39 },
    { 0x3A, 0x3B, 0x3C }
};

static UnkStruct_ov5_021D69B8 Unk_ov5_02201D78[31] = {
    { 0xffff, 0xffff, sizeof(u32), NULL, NULL, 0x0, 0x0, NULL, ov5_021D7604 },
    { 0xffff, 0x5, sizeof(UnkStruct_ov5_021DAC68), NULL, NULL, 0x0, 0x0, NULL, ov5_021DAC68 },
    { 0x0, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D7658 },
    { 0x5, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D9FF8 },
    { 0x5, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D9F0C },
    { 0x3, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D79F0 },
    { 0x1, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D7E54 },
    { 0x9, 0x0, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D8FF8 },
    { 0xffff, 0x6, sizeof(UnkStruct_ov5_021D879C), NULL, NULL, 0x0, 0x0, NULL, ov5_021D879C },
    { 0x6, 0x3, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021DA244 },
    { 0x2, 0x1, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D8D08 },
    { 0x4, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D9464 },
    { 0x7, 0xffff, sizeof(UnkStruct_ov5_021DA8A0), NULL, NULL, 0x0, 0x0, NULL, ov5_021DA8A0 },
    { 0xffff, 0x8, sizeof(UnkStruct_ov5_021D879C), NULL, NULL, 0x0, 0x0, NULL, ov5_021DAB78 },
    { 0xffff, 0x6, sizeof(UnkStruct_ov5_021D879C), NULL, NULL, 0x0, 0x0, NULL, ov5_021DAEC0 },
    { 0xffff, 0x6, sizeof(UnkStruct_ov5_021D879C), NULL, NULL, 0x0, 0x0, NULL, ov5_021DAD38 },
    { 0xffff, 0x7, sizeof(UnkStruct_ov5_021DB04C), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB04C },
    { 0xffff, 0x4, (sizeof(int) * 10), NULL, NULL, 0x0, 0x0, NULL, ov5_021DA748 },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021D84D4 },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021D8638 },
    { 0xffff, 0x2, (sizeof(int) * 10), NULL, NULL, 0x0, 0x0, NULL, ov5_021D97E8 },
    { 0x1, 0x0, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D823C },
    { 0x2, 0xffff, sizeof(UnkStruct_ov5_021D9984), NULL, NULL, 0x0, 0x0, NULL, ov5_021D8948 },
    { 0xffff, 0x9, sizeof(UnkStruct_ov5_021DB144), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB144 },
    { 0xffff, 0xA, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB3A8 },
    { 0xffff, 0xA, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB3C4 },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB3E0 },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB40C },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB438 },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB460 },
    { 0xffff, 0xffff, sizeof(UnkStruct_ov5_021D84D4), NULL, NULL, 0x0, 0x0, NULL, ov5_021DB48C }
};

static void ov5_021D61D0(UnkStruct_ov5_021D61D0 *param0)
{
    NNSG2dViewRect v0;
    int v1;
    int v2;

    InitRenderer(&param0->unk_14, -FX32_ONE);

    v0.posTopLeft.x = 0;
    v0.posTopLeft.y = 0;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    RenderOam_InitSurface(&param0->unk_C0, &v0, NNS_G2D_SURFACETYPE_MAIN2D, &param0->unk_14);

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_00[v1] = SpriteResourceCollection_New(31, v1, 4);
    }

    v2 = SpriteResourceTable_Size();
    param0->unk_10 = Heap_AllocFromHeap(4, v2 * 4);

    ov5_021D6290(param0->unk_10, 0, 63);
    ov5_021D6290(param0->unk_10, 1, 64);
    ov5_021D6290(param0->unk_10, 2, 61);
    ov5_021D6290(param0->unk_10, 3, 62);

    {
        CellActorCollectionParams v3;

        v3.maxElements = 96;
        v3.renderer = &param0->unk_14;
        v3.heapID = 4;

        param0->unk_130 = CellActorCollection_New(&v3);
        param0->unk_134 = SysTask_Start(ov5_021D6284, param0, 10);
    }
}

static void ov5_021D6284(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D61D0 *v0 = param1;
    CellActorCollection_Update(v0->unk_130);
}

static void ov5_021D6290(SpriteResourceTable *param0, int param1, int param2)
{
    SpriteResourceTable *v0;
    void *v1;

    v0 = SpriteResourceTable_GetArrayElement(param0, param1);
    v1 = LoadMemberFromNARC(65, param2, 0, 4, 1);

    SpriteResourceTable_LoadFromBinary(v1, v0, 4);
    Heap_FreeToHeap(v1);
}

static void ov5_021D62BC(UnkStruct_ov5_021D61D0 *param0)
{
    int v0;
    SpriteResourceTable *v1;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = SpriteResourceTable_GetArrayElement(param0->unk_10, v0);

        SpriteResourceTable_Clear(v1);
        SpriteResourceCollection_Delete(param0->unk_00[v0]);
    }

    Heap_FreeToHeap(param0->unk_10);
    param0->unk_10 = NULL;

    CellActorCollection_Delete(param0->unk_130);
    param0->unk_130 = NULL;

    SysTask_Done(param0->unk_134);
    param0->unk_134 = NULL;
}

static void ov5_021D630C(CellActor *param0, VecFx32 *param1)
{
    if (param1->x > ((255 << FX32_SHIFT) + 64 * FX32_ONE)) {
        param1->x %= ((255 << FX32_SHIFT) + 64 * FX32_ONE);
    } else {
        if (param1->x < (-64 * FX32_ONE)) {
            param1->x += ((255 << FX32_SHIFT) + 64 * FX32_ONE);
        }
    }

    if (param1->y > ((192 << FX32_SHIFT) + 64 * FX32_ONE)) {
        param1->y %= ((192 << FX32_SHIFT) + 64 * FX32_ONE);
    } else {
        if (param1->y < (-64 * FX32_ONE)) {
            param1->y += ((192 << FX32_SHIFT) + 64 * FX32_ONE);
        }
    }

    CellActor_SetPosition(param0, param1);
}

UnkStruct_ov5_021D6594 *ov5_021D6364(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021D6594 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D6594));
    v0->fieldSystem = fieldSystem;

    ov5_021D61D0(&v0->unk_08);

    v0->unk_00 = Unk_ov5_02201D78;
    v0->unk_04 = Unk_ov5_021F8D90;
    v0->unk_144 = NARC_ctor(NARC_INDEX_DATA__WEATHER_SYS, 4);

    return v0;
}

void ov5_021D63A4(UnkStruct_ov5_021D6594 **param0)
{
    int v0;

    if (*param0 != NULL) {
        for (v0 = 0; v0 < 31; v0++) {
            ov5_021D68B8(*param0, v0);
        }

        ov5_021D57FC((*param0)->fieldSystem->unk_48, 1, 0, 0, 0, 0);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        ov5_021D62BC(&(*param0)->unk_08);

        NARC_dtor((*param0)->unk_144);
        Heap_FreeToHeapExplicit(4, *param0);

        *param0 = NULL;
    }
}

BOOL ov5_021D6418(UnkStruct_ov5_021D6594 *param0, int param1, int param2)
{
    BOOL v0 = 1;

    if (param2 > 31) {
        return 0;
    }

    switch (param1) {
    case 0:
        v0 = ov5_021D66D0(param0, param2);
        break;
    case 1:
        v0 = ov5_021D6730(param0, param2);
        break;
    case 2:
        v0 = ov5_021D676C(param0, param2, 0, 1);
        break;
    case 3:
        v0 = ov5_021D676C(param0, param2, 2, 1);
        break;
    case 4:
        if (ov5_021D57EC(param0->fieldSystem->unk_48) == 1) {
            v0 = ov5_021D676C(param0, param2, 0, 2);
        } else {
            v0 = ov5_021D676C(param0, param2, 0, 1);
        }
        break;
    case 5:
        ov5_021D6868(param0, param2, 1);
        break;
    case 6:
        ov5_021D6890(param0, param2);
        break;
    case 7:
        ov5_021D6868(param0, param2, 0);
        break;
    case 8:
        ov5_021D68B8(param0, param2);
        break;
    default:
        break;
    }

    return v0;
}

int ov5_021D64D0(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D69B8 *v0;

    if (param1 >= 31) {
        return 0;
    }

    v0 = param0->unk_00 + param1;

    return v0->unk_10;
}

static void ov5_021D64E4(int param0, int param1)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, param0, param1);
}

static void ov5_021D64FC(UnkStruct_ov5_021D64FC *param0, int param1, int param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

static BOOL ov5_021D650C(UnkStruct_ov5_021D64FC *param0)
{
    int v0;

    v0 = param0->unk_08 * param0->unk_0C;
    v0 = v0 / param0->unk_10;

    param0->unk_00 = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_10) {
        param0->unk_0C++;
        return 0;
    }

    param0->unk_0C = param0->unk_10;
    return 1;
}

static void ov5_021D6538(UnkStruct_ov5_021D6538 *param0, fx32 param1, fx32 param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0E = param3;
    param0->unk_0C = 0;
}

static BOOL ov5_021D6548(UnkStruct_ov5_021D6538 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_08, param0->unk_0C);
    v0 = FX_Div(v0, param0->unk_0E);

    param0->unk_00 = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_0E) {
        param0->unk_0C++;
        return 0;
    }

    param0->unk_0C = param0->unk_0E;
    return 1;
}

static void ov5_021D6594(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2)
{
    ov5_021D6BFC(param0, param1, param2);
    ov5_021D6C30(param0, param1, param2);
    ov5_021D6C64(param0, param1, param2);
    ov5_021D6CA0(param0, param1, param2);
}

static SpriteResource *ov5_021D65C0(SpriteResourceTable *param0, int param1, int param2, SpriteResourceCollection *param3, NARC *param4, u32 param5)
{
    SpriteResourceTable *v0;
    SpriteResource *v1;
    int v2;
    BOOL v3;
    int v4;
    int v5;
    int v6;

    v0 = SpriteResourceTable_GetArrayElement(param0, param1);
    v2 = SpriteResourceTable_GetNARCEntryMemberIndex(v0, param2);
    v3 = SpriteResourceTable_IsNARCEntryCompressed(v0, param2);
    v4 = SpriteResourceTable_GetEntryVRAMType(v0, param2);
    v5 = SpriteResourceTable_GetPaletteIndex(v0, param2);
    v6 = SpriteResourceTable_GetEntryID(v0, param2);

    switch (param1) {
    case 0:
        v1 = SpriteResourceCollection_AddTilesFromEx(param3, param4, v2, v3, v6, v4, 4, param5);
        break;
    case 1:
        v1 = SpriteResourceCollection_AddPaletteFromEx(param3, param4, v2, v3, v6, v4, v5, 4, param5);
        break;
    case 2:
        v1 = SpriteResourceCollection_AddFrom(param3, param4, v2, v3, v6, 2, 4);
        break;
    case 3:
        v1 = SpriteResourceCollection_AddFrom(param3, param4, v2, v3, v6, 3, 4);
        break;
    }

    return v1;
}

static void ov5_021D6690(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2)
{
    int v0;

    if (param1 != 0xffff) {
        if (param2->unk_00[0]) {
            SpriteTransfer_ResetCharTransfer(param2->unk_00[0]);
        }

        if (param2->unk_00[1]) {
            SpriteTransfer_ResetPlttTransfer(param2->unk_00[1]);
        }

        for (v0 = 0; v0 < 4; v0++) {
            if (param2->unk_00[v0]) {
                SpriteResourceCollection_Remove(param0->unk_08.unk_00[v0], param2->unk_00[v0]);
            }
        }
    }
}

static BOOL ov5_021D66D0(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D69B8 *v0 = param0->unk_00 + param1;
    BOOL v1;

    if (v0->unk_08 == NULL) {
        v1 = ov5_021D6B60(param0, v0);

        if (v1 == 0) {
            return 0;
        }

        v1 = ov5_021D6A48(param0, v0);

        if (v1 == 0) {
            Heap_FreeToHeap(v0->unk_08);
            v0->unk_08 = NULL;
            return 0;
        }

        v0->unk_08->unk_08 = v0->unk_0C;

        if (v0->unk_00 != 0xffff) {
            ov5_021D6D34(v0->unk_08);
        }

        ov5_021D6A2C(param0, v0->unk_02);

        v0->unk_10 = 2;
    }

    return 1;
}

static BOOL ov5_021D6730(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D69B8 *v0 = param0->unk_00 + param1;

    if (v0->unk_08) {
        return 1;
    }

    if (ov5_021D6B60(param0, v0) == 0) {
        return 0;
    }

    v0->unk_14 = SysTask_Start(ov5_021D6A84, v0, 1);
    v0->unk_10 = 1;
    v0->unk_12 = 0;

    return 1;
}

static BOOL ov5_021D676C(UnkStruct_ov5_021D6594 *param0, int param1, int param2, u32 param3)
{
    UnkStruct_ov5_021D69B8 *v0 = param0->unk_00 + param1;

    if (v0->unk_00 != 0xffff) {
        if (v0->unk_0C == NULL) {
            return 0;
        }
    }

    if (v0->unk_08 == NULL) {
        return 0;
    }

    if (v0->unk_10 != 2) {
        return 0;
    }

    v0->unk_08->unk_B88 = SysTask_Start(v0->unk_18, v0->unk_08, 4);

    if (v0->unk_08->unk_B88 == NULL) {
        return 0;
    }

    v0->unk_10 = 3;
    v0->unk_08->unk_BA2 = param2;
    v0->unk_08->unk_BA6 = 0;
    v0->unk_08->unk_0C.unk_34 = &v0->unk_08->unk_0C;
    v0->unk_08->unk_0C.unk_38 = &v0->unk_08->unk_0C;
    v0->unk_08->unk_BA4 = param3;
    v0->unk_08->unk_B9C = 0;
    v0->unk_08->unk_B8C = *(NNS_G3dGlbGetCameraTarget());

    if (v0->unk_04 > 0) {
        v0->unk_08->unk_B98 = Heap_AllocFromHeap(4, v0->unk_04);
        memset(v0->unk_08->unk_B98, 0, v0->unk_04);
    } else {
        v0->unk_08->unk_B98 = NULL;
    }

    if (v0->unk_02 != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        G2_SetBG2Priority(1);
        G2_SetBG0Priority(2);
    }

    return 1;
}

static void ov5_021D6868(UnkStruct_ov5_021D6594 *param0, int param1, u32 param2)
{
    UnkStruct_ov5_021D69B8 *v0 = param0->unk_00 + param1;

    if (v0->unk_10 == 3) {
        v0->unk_08->unk_BA6 = 5;
        v0->unk_08->unk_BA4 = param2;
    }
}

static void ov5_021D6890(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D69B8 *v0 = param0->unk_00 + param1;

    if (ov5_021D64D0(param0, param1) == 3) {
        v0->unk_08->unk_BA2 = 5;
        v0->unk_18(NULL, v0->unk_08);
    }
}

static void ov5_021D68B8(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D69B8 *v0 = param0->unk_00 + param1;

    if (v0->unk_02 != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        G2_SetBG2Priority(3);
        G2_SetBG0Priority(1);
        G2_BlendNone();
    }

    if (v0->unk_0C != NULL) {
        ov5_021D6690(param0, v0->unk_00, v0->unk_0C);
        Heap_FreeToHeapExplicit(4, v0->unk_0C);
        v0->unk_0C = NULL;

        if (v0->unk_14 != NULL) {
            SysTask_Done(v0->unk_14);
            v0->unk_14 = NULL;
        }
    }

    if (v0->unk_08 != NULL) {
        ov5_021D6FD8(&v0->unk_08->unk_0C);

        if (v0->unk_00 != 0xffff) {
            ov5_021D6D64(v0->unk_08);
        }

        if (v0->unk_08->unk_B9C == 1) {
            ov5_021DB4E4(v0->unk_08);
        }

        if (v0->unk_08->unk_B98 != NULL) {
            Heap_FreeToHeapExplicit(4, v0->unk_08->unk_B98);
            v0->unk_08->unk_B98 = NULL;
        }

        if (v0->unk_10 == 1) {
            if (v0->unk_14) {
                SysTask_Done(v0->unk_14);
            }
        } else {
            if (v0->unk_10 == 3) {
                SysTask_Done(v0->unk_08->unk_B88);
            }
        }

        Heap_FreeToHeapExplicit(4, v0->unk_08);
        v0->unk_08 = NULL;
    }

    ov5_021D57FC(param0->fieldSystem->unk_48, 1, 0, 0, 0, 0);
}

static void ov5_021D69B8(UnkStruct_ov5_021D69B8 *param0)
{
    if (param0->unk_02 != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        G2_SetBG2Priority(3);
        G2_SetBG0Priority(1);
        G2_BlendNone();
    }

    if (param0->unk_08 != NULL) {
        ov5_021D6FD8(&param0->unk_08->unk_0C);

        if (param0->unk_08->unk_B9C == 1) {
            ov5_021DB4E4(param0->unk_08);
        }

        if (param0->unk_10 == 3) {
            SysTask_Done(param0->unk_08->unk_B88);
            param0->unk_10 = 2;
        }
    }
}

static void ov5_021D6A2C(UnkStruct_ov5_021D6594 *param0, int param1)
{
    ov5_021D6D84(param0, param1);
    ov5_021D6DCC(param0, param1);
    ov5_021D6E20(param0, param1);
}

static BOOL ov5_021D6A48(UnkStruct_ov5_021D6594 *param0, UnkStruct_ov5_021D69B8 *param1)
{
    BOOL v0;

    if (param1->unk_00 != 0xffff) {
        if (param1->unk_0C == NULL) {
            v0 = ov5_021D6BC4(param1);

            if (v0 == 0) {
                return 0;
            }

            ov5_021D6594(param0, param1->unk_00, param1->unk_0C);
            ov5_021D6CDC(param0, param1);
        }
    }

    return 1;
}

static void ov5_021D6A84(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021D69B8 *v0 = param1;
    UnkStruct_ov5_021D6594 *v1 = v0->unk_08->unk_00;
    BOOL v2;

    switch (v0->unk_12) {
    case 0:
        v2 = ov5_021D6BC4(v0);
        GF_ASSERT(v2);
        v0->unk_12++;
        break;
    case 1:
        ov5_021D6BFC(v1, v0->unk_00, v0->unk_0C);
        v0->unk_12++;
        break;
    case 2:
        ov5_021D6D84(v1, v0->unk_02);
        v0->unk_12++;
        break;
    case 3:
        ov5_021D6C30(v1, v0->unk_00, v0->unk_0C);
        v0->unk_12++;
        break;
    case 4:
        ov5_021D6DCC(v1, v0->unk_02);
        v0->unk_12++;
        break;
    case 5:
        ov5_021D6C64(v1, v0->unk_00, v0->unk_0C);
        v0->unk_12++;
        break;
    case 6:
        ov5_021D6E20(v1, v0->unk_02);
        v0->unk_12++;
        break;
    case 7:
        ov5_021D6CA0(v1, v0->unk_00, v0->unk_0C);
        v0->unk_12++;
        break;
    case 8:
        ov5_021D6CDC(v1, v0);
        v0->unk_08->unk_08 = v0->unk_0C;

        if (v0->unk_00 != 0xffff) {
            ov5_021D6D34(v0->unk_08);
        }

        v0->unk_10 = 2;
        v0->unk_12 = 0;
        v0->unk_14 = NULL;
        SysTask_Done(param0);
        break;
    }
}

static BOOL ov5_021D6B60(UnkStruct_ov5_021D6594 *param0, UnkStruct_ov5_021D69B8 *param1)
{
    if (param1->unk_08) {
        return 1;
    }

    param1->unk_08 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DB4B8));

    if (param1->unk_08 == NULL) {
        return 0;
    }

    memset(param1->unk_08, 0, sizeof(UnkStruct_ov5_021DB4B8));

    param1->unk_08->unk_00 = param0;
    param1->unk_08->unk_BA2 = 0;
    param1->unk_08->unk_BA6 = 0;
    param1->unk_08->unk_0C.unk_34 = &param1->unk_08->unk_0C;
    param1->unk_08->unk_0C.unk_38 = &param1->unk_08->unk_0C;
    param1->unk_08->unk_B98 = NULL;
    param1->unk_08->unk_04 = param1;

    return 1;
}

static BOOL ov5_021D6BC4(UnkStruct_ov5_021D69B8 *param0)
{
    if (param0->unk_00 != 0xffff) {
        if (param0->unk_0C) {
            return 1;
        }

        param0->unk_0C = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D6690));

        if (param0->unk_0C == NULL) {
            return 0;
        }

        memset(param0->unk_0C, 0, sizeof(UnkStruct_ov5_021D6690));
    }

    return 1;
}

static void ov5_021D6BFC(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2)
{
    if (param1 != 0xffff) {
        param2->unk_00[2] = ov5_021D65C0(param0->unk_08.unk_10, 2, param1, param0->unk_08.unk_00[2], param0->unk_144, 0);
    }
}

static void ov5_021D6C30(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2)
{
    if (param1 != 0xffff) {
        param2->unk_00[3] = ov5_021D65C0(param0->unk_08.unk_10, 3, param1, param0->unk_08.unk_00[3], param0->unk_144, 0);
    }
}

static void ov5_021D6C64(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2)
{
    if (param1 != 0xffff) {
        param2->unk_00[0] = ov5_021D65C0(param0->unk_08.unk_10, 0, param1, param0->unk_08.unk_00[0], param0->unk_144, 1);

        SpriteTransfer_RequestCharAtEnd(param2->unk_00[0]);
        SpriteResource_ReleaseData(param2->unk_00[0]);
    }
}

static void ov5_021D6CA0(UnkStruct_ov5_021D6594 *param0, int param1, UnkStruct_ov5_021D6690 *param2)
{
    if (param1 != 0xffff) {
        param2->unk_00[1] = ov5_021D65C0(param0->unk_08.unk_10, 1, param1, param0->unk_08.unk_00[1], param0->unk_144, 1);

        SpriteTransfer_RequestPlttFreeSpace(param2->unk_00[1]);
        SpriteResource_ReleaseData(param2->unk_00[1]);
    }
}

static void ov5_021D6CDC(UnkStruct_ov5_021D6594 *param0, UnkStruct_ov5_021D69B8 *param1)
{
    if (param1->unk_00 != 0xffff) {
        ov5_021D6F4C(&param1->unk_0C->unk_40, param0, param1->unk_0C, 0, 1);
        memset(&param1->unk_0C->unk_10, 0, sizeof(CellActorInitParamsEx));
        param1->unk_0C->unk_10.collection = param0->unk_08.unk_130;
        param1->unk_0C->unk_10.resourceData = &param1->unk_0C->unk_40;
        param1->unk_0C->unk_10.affineScale.x = FX32_ONE;
        param1->unk_0C->unk_10.affineScale.y = FX32_ONE;
        param1->unk_0C->unk_10.affineScale.z = FX32_ONE;
        param1->unk_0C->unk_10.vramType = 1;
    }
}

static void ov5_021D6D34(UnkStruct_ov5_021DB4B8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 48; v0++) {
        param0->unk_48[v0].unk_04 = CellActorCollection_AddEx(&param0->unk_08->unk_10);
        CellActor_SetDrawFlag(param0->unk_48[v0].unk_04, 0);
        GF_ASSERT(param0->unk_48[v0].unk_04);
    }
}

static void ov5_021D6D64(UnkStruct_ov5_021DB4B8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 48; v0++) {
        if (param0->unk_48[v0].unk_04) {
            CellActor_Delete(param0->unk_48[v0].unk_04);
            param0->unk_48[v0].unk_04 = NULL;
        }
    }
}

static void ov5_021D6D84(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D6D84 v0;

    if (param1 != 0xffff) {
        v0.unk_00 = NARC_AllocAndReadWholeMember(param0->unk_144, param0->unk_04[param1].unk_00, 4);

        NNS_G2dGetUnpackedPaletteData(v0.unk_00, &v0.unk_14);

        Bg_LoadPalette(2, v0.unk_14->pRawData, 32, 32 * 6);
        Heap_FreeToHeap(v0.unk_00);

        v0.unk_00 = NULL;
    }
}

static void ov5_021D6DCC(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D6D84 v0;

    if (param1 != 0xffff) {
        v0.unk_04 = NARC_AllocAndReadWholeMember(param0->unk_144, param0->unk_04[param1].unk_04, 4);

        NNS_G2dGetUnpackedCharacterData(v0.unk_04, &v0.unk_10);

        Bg_LoadTiles(param0->fieldSystem->bgConfig, 2, v0.unk_10->pRawData, v0.unk_10->szByte, 0);
        Heap_FreeToHeap(v0.unk_04);

        v0.unk_04 = NULL;
    }
}

static void ov5_021D6E20(UnkStruct_ov5_021D6594 *param0, int param1)
{
    UnkStruct_ov5_021D6D84 v0;

    if (param1 != 0xffff) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        v0.unk_08 = NARC_AllocAndReadWholeMember(param0->unk_144, param0->unk_04[param1].unk_08, 4);
        GF_ASSERT(v0.unk_08);

        NNS_G2dGetUnpackedScreenData(v0.unk_08, &v0.unk_0C);

        Bg_CopyTilemapBufferRangeToVRAM(param0->fieldSystem->bgConfig, 2, (void *)v0.unk_0C->rawData, v0.unk_0C->szByte, 0);
        Bg_LoadTilemapBuffer(param0->fieldSystem->bgConfig, 2, (void *)v0.unk_0C->rawData, v0.unk_0C->szByte);
        Bg_ChangeTilemapRectPalette(param0->fieldSystem->bgConfig, 2, 0, 0, 32, 32, 6);
        Bg_CopyTilemapBufferToVRAM(param0->fieldSystem->bgConfig, 2);
        Heap_FreeToHeap(v0.unk_08);

        v0.unk_08 = NULL;
    }
}

static void ov5_021D6EC8(UnkStruct_ov5_021D6FA8 *param0, int param1)
{
    GF_ASSERT(param0->unk_08 == NULL);
    GF_ASSERT(param1 > 0);
    GF_ASSERT(param1 <= (sizeof(s32) * 10));

    param0->unk_08 = param0->unk_0C;
}

static void ov5_021D6EF0(UnkStruct_ov5_021D6FA8 *param0)
{
    param0->unk_08 = NULL;
    memset(param0->unk_0C, 0, (sizeof(s32) * 10));
}

static UnkStruct_ov5_021D6FA8 *ov5_021D6F00(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    UnkStruct_ov5_021D6FA8 *v0;
    UnkStruct_ov5_021D6594 *v1 = (UnkStruct_ov5_021D6594 *)param0->unk_00;

    v0 = ov5_021D75E4(param0);

    if (v0 == NULL) {
        return NULL;
    }

    v0->unk_00 = v1;
    v0->unk_34 = &param0->unk_0C;
    v0->unk_38 = param0->unk_0C.unk_38;

    param0->unk_0C.unk_38->unk_34 = v0;
    param0->unk_0C.unk_38 = v0;

    ov5_021D6EC8(v0, param1);

    if (v0->unk_08 == NULL) {
        return NULL;
    }

    GF_ASSERT(v0->unk_04);
    CellActor_SetDrawFlag(v0->unk_04, 1);

    return v0;
}

static void ov5_021D6F4C(CellActorResourceData *param0, UnkStruct_ov5_021D6594 *param1, UnkStruct_ov5_021D6690 *param2, int param3, int param4)
{
    int v0[4];
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        v0[v1] = SpriteResource_GetID(param2->unk_00[v1]);
    }

    SpriteResourcesHeader_Init(param0, v0[0], v0[1], v0[2], v0[3], 0xffffffff, 0xffffffff, param3, param4, param1->unk_08.unk_00[0], param1->unk_08.unk_00[1], param1->unk_08.unk_00[2], param1->unk_08.unk_00[3], NULL, NULL);
}

static void ov5_021D6FA8(UnkStruct_ov5_021D6FA8 *param0)
{
    CellActor *v0;

    param0->unk_38->unk_34 = param0->unk_34;
    param0->unk_34->unk_38 = param0->unk_38;

    CellActor_SetDrawFlag(param0->unk_04, 0);
    ov5_021D6EF0(param0);

    v0 = param0->unk_04;
    memset(param0, 0, sizeof(UnkStruct_ov5_021D6FA8));

    param0->unk_04 = v0;
}

static void ov5_021D6FD8(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0;
    UnkStruct_ov5_021D6FA8 *v1;

    v0 = param0->unk_34;

    while (v0 != param0) {
        v1 = v0->unk_34;
        ov5_021D6FA8(v0);
        v0 = v1;
    }
}

static void ov5_021D6FF0(UnkStruct_ov5_021D6FA8 *param0, UnkFuncPtr_ov5_021D6FF0 param1)
{
    UnkStruct_ov5_021D6FA8 *v0;
    UnkStruct_ov5_021D6FA8 *v1;

    v0 = param0->unk_34;
    v1 = v0->unk_34;

    while (v0 != param0) {
        param1(v0);

        v0 = v1;
        v1 = v0->unk_34;
    }
}

static void ov5_021D700C(UnkStruct_ov5_021DB4B8 *param0)
{
    return;
}

static VecFx32 ov5_021D7010(UnkStruct_ov5_021D6FA8 *param0)
{
    const VecFx32 *v0 = CellActor_GetPosition(param0->unk_04);
    return *v0;
}

static void ov5_021D7028(fx32 *param0, fx32 *param1, UnkStruct_ov5_021DB4B8 *param2)
{
    VecFx32 v0;
    fx32 v1, v2;
    fx32 v3, v4;
    fx32 v5, v6;
    int v7;
    fx32 v8;

    v0 = *(NNS_G3dGlbGetCameraTarget());
    v5 = (v0.x - param2->unk_B8C.x);
    v6 = (v0.z - param2->unk_B8C.z);
    v8 = FX_Div(FX32_CONST(4), FX32_CONST(3));

    CalcLinearFov(Camera_GetFOV(param2->unk_00->fieldSystem->camera), Camera_GetDistance(param2->unk_00->fieldSystem->camera), v8, &v3, &v4);
    v3 = FX_Div(v3, 256 * FX32_ONE);

    if (v6 <= 0) {
        v4 = FX_Div(v4, 0xbe8d0);
    } else {
        v4 = FX_Div(v4, 0xbe811);
    }

    v7 = FX32_ONE;

    if (v5 < 0) {
        v7 = -FX32_ONE;
        v5 = FX_Mul(v5, -FX32_ONE);
    }

    v1 = FX_Div(v5, v3);

    if (v7 < 0) {
        v1 = FX_Mul(v1, v7);
    }

    v7 = FX32_ONE;

    if (v6 < 0) {
        v7 = -FX32_ONE;
        v6 = FX_Mul(v6, -FX32_ONE);
    }

    v2 = FX_Div(v6, v4);

    if (v7 < 0) {
        v2 = FX_Mul(v2, v7);
    }

    if ((v1 + v2) != 0) {
        param2->unk_B8C = v0;
    }

    *param0 = v1;
    *param1 = v2;
}

static void ov5_021D717C(UnkStruct_ov5_021DB4B8 *param0, int *param1, int *param2)
{
    fx32 v0, v1;

    ov5_021D71B4(param0, &v0, &v1);

    if (param1 != NULL) {
        *param1 = v0 >> FX32_SHIFT;

        if (*param1 < 0) {
            *param1 += FX32_ONE;
        }
    }

    if (param2 != NULL) {
        *param2 = v1 >> FX32_SHIFT;

        if (*param2 < 0) {
            *param2 += 1;
        }
    }
}

static void ov5_021D71B4(UnkStruct_ov5_021DB4B8 *param0, fx32 *param1, fx32 *param2)
{
    UnkStruct_ov5_021D6FA8 *v0;
    fx32 v1, v2;
    VecFx32 v3;

    ov5_021D7028(&v1, &v2, param0);

    v0 = param0->unk_0C.unk_34;

    while (v0 != &param0->unk_0C) {
        v3 = ov5_021D7010(v0);

        v3.x -= v1;
        v3.y -= v2;

        ov5_021D630C(v0->unk_04, &v3);

        v0 = v0->unk_34;
    }

    if (param1 != NULL) {
        *param1 = v1;
    }

    if (param2 != NULL) {
        *param2 = v2;
    }
}

static void ov5_021D7210(UnkStruct_ov5_021D7210 *param0, UnkStruct_ov5_021DB4B8 *param1, s32 param2, s32 param3, s32 param4, s32 param5, s32 param6, s32 param7, s32 param8, UnkFuncPtr_ov5_021D7210_1 param9)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_06 = 0;
    param0->unk_08 = param3;
    param0->unk_0A = 0;
    param0->unk_0C = param4;
    param0->unk_0E = param5;
    param0->unk_10 = param6;
    param0->unk_12 = param7;
    param0->unk_14 = param8;
    param0->unk_18 = param9;
}

static void ov5_021D7238(UnkStruct_ov5_021D7210 *param0, s32 param1, s32 param2, s32 param3, s32 param4)
{
    param0->unk_0C = param1;
    param0->unk_0E = param2;
    param0->unk_10 = param3;
    param0->unk_14 = param4;
}

static int ov5_021D7244(UnkStruct_ov5_021D7210 *param0)
{
    int v0;
    int v1 = 0;

    if (param0->unk_10 == 0) {
        v1 |= 1;
    } else {
        if (param0->unk_10 > 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }

        if (((param0->unk_08 >= param0->unk_0E) && (v0 == 0)) || ((param0->unk_08 <= param0->unk_0E) && (v0 == 1))) {
            v1 |= 1;
            param0->unk_08 = param0->unk_0E;
        }
    }

    if (param0->unk_14 == 0) {
        v1 |= 2;
    } else {
        if (param0->unk_14 > 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }

        if (((param0->unk_04 >= param0->unk_0C) && (v0 == 0)) || ((param0->unk_04 <= param0->unk_0C) && (v0 == 1))) {
            v1 |= 2;
            param0->unk_04 = param0->unk_0C;
        }
    }

    (param0->unk_06)--;

    if (param0->unk_06 <= 0) {
        param0->unk_18(param0->unk_00, param0->unk_04);
        param0->unk_06 = param0->unk_08;

        if ((v1 & 1) == 0) {
            param0->unk_08 += param0->unk_10;
        }

        if ((v1 & 2) == 0) {
            (param0->unk_0A)++;

            if (param0->unk_0A >= param0->unk_12) {
                param0->unk_0A = 0;
                param0->unk_04 += param0->unk_14;
            }
        }
    }

    return v1;
}

static void ov5_021D7308(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, UnkStruct_ov5_021D57D8 *param2, int param3, int param4, GXRgb param5, int param6, u32 param7)
{
    param1->unk_00 = param2;

    if (param7 != 0) {
        if (param7 == 1) {
            ov5_021D7384(param2, param3, param4, param5);
            ov5_021D7480(param1);
            ov5_021D749C(param1, param6, 1);
        } else if (param7 == 2) {
            ov5_021D73B0(param0, param2, param3, param4, param5, param6 * 127);
        }
    }
}

static int ov5_021D735C(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D7480 *param1, u32 param2)
{
    BOOL v0;
    int v1 = 1;

    if (param2 != 0) {
        if (param2 == 1) {
            v1 = ov5_021D74B8(param1);
        } else if (param2 == 2) {
            v0 = ov5_021D7434(param0);

            if (v0 == 0) {
                v1 = 0;
            }
        }
    }

    return v1;
}

static void ov5_021D7384(UnkStruct_ov5_021D57D8 *param0, int param1, int param2, GXRgb param3)
{
    ov5_021D57FC(param0, 0xffffffff, 1, GX_FOGBLEND_COLOR_ALPHA, param1, param2);
    ov5_021D5834(param0, 0xffffffff, param3, 31);
}

static void ov5_021D73B0(UnkStruct_ov5_021D7308 *param0, UnkStruct_ov5_021D57D8 *param1, int param2, int param3, GXRgb param4, int param5)
{
    int v0;
    int v1;
    GXRgb v2;

    v0 = ov5_021D57F0(param1);
    v1 = ov5_021D57F4(param1);
    v2 = ov5_021D57F8(param1);

    param0->unk_00 = param1;

    ov5_021D64FC(&param0->unk_04, v1, param3, param5);
    ov5_021D64FC(&param0->unk_18, (((v2) >> GX_RGB_R_SHIFT) & 0x1f), (((param4) >> GX_RGB_R_SHIFT) & 0x1f), param5);
    ov5_021D64FC(&param0->unk_2C, (((v2) >> GX_RGB_G_SHIFT) & 0x1f), (((param4) >> GX_RGB_G_SHIFT) & 0x1f), param5);
    ov5_021D64FC(&param0->unk_40, (((v2) >> GX_RGB_B_SHIFT) & 0x1f), (((param4) >> GX_RGB_B_SHIFT) & 0x1f), param5);
    ov5_021D64FC(&param0->unk_54, v0, param2, param5);
}

static BOOL ov5_021D7434(UnkStruct_ov5_021D7308 *param0)
{
    BOOL v0;

    v0 = ov5_021D650C(&param0->unk_04);

    ov5_021D650C(&param0->unk_18);
    ov5_021D650C(&param0->unk_2C);
    ov5_021D650C(&param0->unk_40);
    ov5_021D650C(&param0->unk_54);
    ov5_021D7384(param0->unk_00, param0->unk_54.unk_00, param0->unk_04.unk_00, GX_RGB(param0->unk_18.unk_00, param0->unk_2C.unk_00, param0->unk_40.unk_00));

    return v0;
}

static void ov5_021D7480(UnkStruct_ov5_021D7480 *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_04[v0] = 0;
    }

    ov5_021D585C(param0->unk_00, param0->unk_04);
}

static void ov5_021D749C(UnkStruct_ov5_021D7480 *param0, int param1, BOOL param2)
{
    param0->unk_24 = 127;
    param0->unk_28 = 0;
    param0->unk_2C = param1;

    if (param2 == 1) {
        param0->unk_2E = 1;
    } else {
        param0->unk_2E = -1;
    }
}

static int ov5_021D74B8(UnkStruct_ov5_021D7480 *param0)
{
    int v0;

    v0 = ov5_021D74F4(param0);

    if (param0->unk_28 == 0) {
        ov5_021D585C(param0->unk_00, param0->unk_04);
    }

    return v0;
}

static void ov5_021D74D4(UnkStruct_ov5_021D7480 *param0)
{
    int v0;
    int v1;

    param0->unk_24 = 1;
    param0->unk_28 = 0;
    param0->unk_2C = 0;
    param0->unk_2E = 1;

    ov5_021D7534(param0);
    ov5_021D585C(param0->unk_00, param0->unk_04);
}

static int ov5_021D74F4(UnkStruct_ov5_021D7480 *param0)
{
    int v0 = 0;

    if (param0->unk_2E == 0) {
        v0 = 1;
    } else {
        if (param0->unk_24 <= 0) {
            v0 = 1;
        } else {
            param0->unk_28++;

            if (param0->unk_28 >= param0->unk_2C) {
                param0->unk_28 = 0;
                ov5_021D7534(param0);
                param0->unk_24--;

                if (param0->unk_24 <= 0) {
                    v0 = 1;
                }
            }
        }
    }

    return v0;
}

static void ov5_021D7534(UnkStruct_ov5_021D7480 *param0)
{
    int v0;
    int v1;
    int v2;

    if (param0->unk_2E < 0) {
        v2 = 127 - param0->unk_24;
    } else {
        v2 = param0->unk_24;
    }

    v1 = v2 / 4;

    for (v0 = 31; v0 > v1; v0--) {
        param0->unk_04[v0] = ((v0 - v1) * 4);

        if (param0->unk_04[v0] > 127) {
            param0->unk_04[v0] = 127;
        }
    }
}

static void ov5_021D7568(UnkStruct_ov5_021DB4B8 *param0, UnkFuncPtr_ov5_021D7210_1 param1, int param2, int param3, int param4, UnkFuncPtr_ov5_021D6FF0 param5)
{
    int v0, v1;
    int v2;
    UnkStruct_ov5_021D6FA8 *v3;
    UnkStruct_ov5_021D6FA8 *v4;

    param1(param0, param2);

    v2 = 0;
    v3 = param0->unk_0C.unk_34;
    v4 = v3->unk_34;

    for (v0 = 0; v0 < param2; v0++) {
        if (v3 == &param0->unk_0C) {
            break;
        }

        for (v1 = 0; v1 < v2; v1++) {
            param5(v3);

            if (v3->unk_08 == NULL) {
                break;
            }
        }

        v3 = v4;
        v4 = v3->unk_34;

        if (v0 >= param3) {
            if ((v0 % param3) == 0) {
                v2 += param4;
            }
        }
    }
}

static UnkStruct_ov5_021D6FA8 *ov5_021D75E4(UnkStruct_ov5_021DB4B8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 48; v0++) {
        if (param0->unk_48[v0].unk_00 == NULL) {
            return &param0->unk_48[v0];
        }
    }

    return NULL;
}

static void ov5_021D7604(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;

    switch (v0->unk_BA2) {
    case 0:
        v0->unk_BA2 = 1;
        break;
    case 1:
        v0->unk_BA2 = 3;
        break;
    case 2:
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v0->unk_BA2 = 5;
        break;
    case 5: {
        UnkStruct_ov5_021D69B8 *v1 = v0->unk_04;
        ov5_021D69B8(v1);
    } break;
    default:
        break;
    }
}

static void ov5_021D7658(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D9984 *v2;
    int v3;
    int v4;

    v2 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 8, 4, 0, -1, 1, 1, ov5_021D78A4);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + 0x300, GX_RGB(26, 26, 26), 1, v0->unk_BA4);

        v2->unk_B4[0] = 0;

        ov5_021DB4B8(v0, 1593);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 4, 0, 4, 0, -1, 1, 1, ov5_021D78A4);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_1C.unk_00, 3, 0x6F6F + 0x300, GX_RGB(26, 26, 26));

            ov5_021D74D4(&v2->unk_1C);
        }

        ov5_021D7568(v0, ov5_021D78A4, 20, 10, 1, ov5_021D7960);
        ov5_021DB4B8(v0, 1593);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D78A4(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 8, 1, -1);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, 0);
            }

            v2->unk_B4[0] = 0;
            v0->unk_BA2 = 4;

            ov5_021DB4E4(v0);
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D7960);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);
    }
}

static void ov5_021D78A4(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    s32 *v3;
    int v4;
    VecFx32 v5;
    u32 v6;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v3 = (s32 *)v1->unk_08;
        v6 = MTRNG_Next();

        v3[0] = 0;
        v4 = v6 % 3;

        SpriteActor_SetAnimFrame(v1->unk_04, v4);

        v2 = (v6 % 20);
        v3[2] = 10 * (v4 + 1) + v2;

        if (v4 == 2) {
            v3[2] += 10;
        }

        v2 /= -5;
        v3[4] = -5 * (v4 + 1) + v2;

        if (v4 == 2) {
            v3[4] += -5;
        }

        v3[3] = 0;
        v3[1] = 1 + (v6 % 3);

        v5.x = (0 + (v4 * 15) + (v6 % 270)) << FX32_SHIFT;
        v5.y = -96 << FX32_SHIFT;
        v5.z = 0;

        ov5_021D630C(v1->unk_04, &v5);
    }
}

static void ov5_021D7960(UnkStruct_ov5_021D6FA8 *param0)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1 = param0;
    s32 *v2 = (s32 *)v1->unk_08;
    VecFx32 v3;

    v3 = ov5_021D7010(v1);

    switch (v2[3]) {
    case 0:
        v3.x += (v2[4] * 2) << FX32_SHIFT;
        v3.y += (v2[2] * 2) << FX32_SHIFT;

        v2[0] += 2;

        if (v2[0] > v2[1]) {
            if ((MTRNG_Next() % 10) < 7) {
                v2[3] = 2;
            } else {
                v2[3] = 1;
                v2[0] = 4;
                SpriteActor_SetAnimFrame(v1->unk_04, 3);
            }
        }

        ov5_021D630C(v1->unk_04, &v3);
        break;
    case 1:
        if (v2[0]-- <= 0) {
            v2[3] = 2;
        }
        break;
    case 2:
        ov5_021D6FA8(v1);
        break;
    }
}

static void ov5_021D79F0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    int v2;
    UnkStruct_ov5_021D9984 *v3 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;
    int v4;
    int v5;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v3->unk_00, v0, 1, 24, 1, 14, -5, 1, 0, ov5_021D7C40);
        v3->unk_B4[1] = 0;

        ov5_021D7308(&v3->unk_4C, &v3->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + 0x300, GX_RGB(26, 26, 26), 1, v0->unk_BA4);
        v3->unk_B4[0] = 16;

        v0->unk_BA2 = 1;
        break;
    case 1:
        v4 = ov5_021D7244(&v3->unk_00);

        if (v3->unk_B4[0] > 0) {
            v3->unk_B4[0]--;
        } else {
            v5 = ov5_021D735C(&v3->unk_4C, &v3->unk_1C, v0->unk_BA4);

            if ((v5 == 1) && (v4 == 3)) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v3->unk_00, v0, 1, 14, 1, 14, -5, 1, 0, ov5_021D7C40);

        v3->unk_B4[1] = 0;
        v3->unk_B4[2] = 0;

        if (v0->unk_BA4 != 0) {
            v3->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v3->unk_1C.unk_00, 3, 0x6F6F + 0x300, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v3->unk_1C);
        }

        ov5_021D7568(v0, ov5_021D7C40, 20, 2, 24, ov5_021D7E20);

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v3->unk_00.unk_06-- <= 0) {
            ov5_021D7C40(v0, v3->unk_00.unk_04);
            v3->unk_00.unk_06 = v3->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v3->unk_00, 0, 24, 5, -1);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v3->unk_1C, 2, 0);
            }

            v3->unk_B4[0] = 32;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v4 = ov5_021D7244(&v3->unk_00);

        if (v3->unk_B4[0] > 0) {
            v3->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v5 = ov5_021D74B8(&v3->unk_1C);
            } else {
                v5 = 1;
            }

            if ((v5 == 1) && (v4 == 3)) {
                v3->unk_B4[2] = 1;

                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v3->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v6 = v0->unk_04;
            ov5_021D69B8(v6);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D7E20);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);
    }
}

static void ov5_021D7C40(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    int v1;
    UnkStruct_ov5_021D6FA8 *v2;
    UnkStruct_ov5_021D9984 *v3;
    s32 *v4;
    int v5;
    VecFx32 v6;

    v3 = (UnkStruct_ov5_021D9984 *)param0->unk_B98;

    if (v3->unk_B4[1] == 1) {
        param1 *= 2;
    }

    for (v0 = 0; v0 < param1; v0++) {
        v2 = ov5_021D6F00(param0, sizeof(s32) * 10);

        if (v2 == NULL) {
            break;
        }

        v4 = (s32 *)v2->unk_08;
        v5 = MTRNG_Next() % 4;

        SpriteActor_SetAnimFrame(v2->unk_04, v5);

        v4[4] = 10;
        v4[5] = 0;
        v4[6] = 0;
        v4[8] = 0;

        v1 = MTRNG_Next();

        v4[9] = 4 + (v1 % 60);

        if ((v1 % 2) == 0) {
            v4[1] = 1;
        } else {
            v4[1] = -1;
        }

        v4[2] = 4 + (MTRNG_Next() % 2);
        v4[3] = 1 + (MTRNG_Next() % 2);
        v4[0] = (s32)&v3->unk_B4[1];
        v4[7] = (s32)&v3->unk_B4[2];

        v6.x = (-32 + (MTRNG_Next() % 414)) << FX32_SHIFT;

        if ((v3->unk_B4[1] == 1) && (v0 >= (param1 / 2))) {
            v6.y = (-40 - (MTRNG_Next() % 20)) << FX32_SHIFT;
        } else {
            v6.y = (-8 - (MTRNG_Next() % 20)) << FX32_SHIFT;
        }

        ov5_021D630C(v2->unk_04, &v6);
    }
}

static void ov5_021D7D54(UnkStruct_ov5_021D6FA8 *param0, s32 *param1)
{
    VecFx32 v0;
    s32 *v1;

    v0 = ov5_021D7010(param0);

    if ((param1[5] & 0xffff) >= param1[2]) {
        v0.x += param1[1] << FX32_SHIFT;

        param1[4]++;
        param1[5] &= 0xffff0000;

        if (param1[4] < 10) {
            param1[2]--;
        } else {
            param1[2]++;
        }

        if (param1[4] >= 20) {
            param1[4] = 0;
            param1[1] *= -1;
        }
    }

    if ((param1[5] >> 16) >= param1[3]) {
        v0.y += FX32_ONE;
        param1[5] &= 0xffff;
    }

    ov5_021D630C(param0->unk_04, &v0);

    v0.x >>= FX32_SHIFT;
    v0.y >>= FX32_SHIFT;

    param1[6] = (param1[6] + 1) % 100;
    param1[5]++;
    param1[5] += 0x10000;

    if (((v0.y < -284) && (v0.y > -296)) || ((v0.y > 212) && (v0.y < 232))) {
        v1 = (s32 *)(param1[0]);
        *v1 = 1;
        ov5_021D6FA8(param0);
    }
}

static void ov5_021D7E20(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    s32 *v2 = (s32 *)v1[7];

    switch (v1[8]) {
    case 0:
        if (*v2 == 1) {
            v1[8]++;
        }
        break;
    case 1:
        v1[9]--;

        if (v1[9] < 0) {
            ov5_021D6FA8(v0);
            return;
        }
        break;
    }

    ov5_021D7D54(v0, v1);
}

static void ov5_021D7E54(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D9984 *v2;
    int v3;
    int v4;

    v2 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 30, 6, 3, -5, 2, 1, ov5_021D8098);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + -0x200, GX_RGB(24, 24, 24), 2, v0->unk_BA4);

        v2->unk_B4[0] = 8;
        v2->unk_B4[1] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 6, 3, 6, 3, -5, 2, 1, ov5_021D8098);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_1C.unk_00, 3, 0x6F6F + -0x200, GX_RGB(24, 24, 24));
            ov5_021D74D4(&v2->unk_1C);
        }

        v2->unk_B4[1] = 0;
        ov5_021D7568(v0, ov5_021D8098, 20, 2, 3, ov5_021D81BC);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D8098(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 30, 5, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, 0);
            }

            v2->unk_B4[0] = 0;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D81BC);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);
    }
}

static void ov5_021D8098(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    UnkStruct_ov5_021D9984 *v3;
    s32 *v4;
    int v5[4] = { 16, 32, 16, 10 };
    int v6[4] = { 2, 2, 2, 2 };
    int v7;

    v3 = (UnkStruct_ov5_021D9984 *)param0->unk_B98;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v4 = (s32 *)v1->unk_08;
        v3->unk_B4[1]++;

        if (v3->unk_B4[1] >= (200 * 4)) {
            v3->unk_B4[1] = 0;
        }

        v2 = (v3->unk_B4[1] / 200);

        v4[5] = v5[v2];
        v4[0] = 0;
        v4[1] = 4 + (MTRNG_Next() % (46 - 4));

        v7 = (v4[1] - 4) / (((46 - 4) / 3) + 1);
        SpriteActor_SetAnimFrame(v1->unk_04, v7);

        v4[4] = -1 * (v7 + 1);
        v4[2] = v6[v2] * (v7 + 1);
        v4[3] = 0;

        {
            VecFx32 v8 = ov5_021D7010(v1);

            v8.x = -20 + (v7 * 20) + (MTRNG_Next() % 420);
            v8.y = -8;
            v8.z = 0;
            v8.x <<= FX32_SHIFT;
            v8.y <<= FX32_SHIFT;

            ov5_021D630C(v1->unk_04, &v8);
        }
    }
}

static void ov5_021D81BC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 v2 = ov5_021D7010(v0);

    switch (v1[3]) {
    case 0:

        v2.x += v1[4] << FX32_SHIFT;
        v2.y += v1[2] << FX32_SHIFT;

        if (v1[0]++ > v1[1]) {
            v1[3] = 1;
        }

        if ((v1[0] % v1[5]) == 0) {
            v1[4]--;

            if (v1[2] > 1) {
                v1[2]--;
            }
        }

        ov5_021D630C(v0->unk_04, &v2);
        break;
    case 1:
        ov5_021D6FA8(v0);
        break;
    }
}

static void ov5_021D823C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D9984 *v2;
    int v3;
    int v4;

    v2 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 30, 6, 3, -5, 2, 1, ov5_021D8098);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F, GX_RGB(24, 24, 24), 2, v0->unk_BA4);

        v2->unk_B4[0] = 8;
        v2->unk_B4[1] = 0;
        v2->unk_B4[2] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;

            if (v2->unk_B4[0] == 0) {
                (void)0;
            }
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 6, 3, 6, 3, -5, 2, 1, ov5_021D8098);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_1C.unk_00, 3, 0x6F6F, GX_RGB(24, 24, 24));

            ov5_021D74D4(&v2->unk_1C);
        }

        v2->unk_B4[1] = 0;
        v2->unk_B4[2] = 0;

        ov5_021D7568(v0, ov5_021D8098, 20, 2, 3, ov5_021D81BC);

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D8098(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 30, 5, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, 0);
            }

            v2->unk_B4[0] = 0;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;

            if (v2->unk_B4[0] == 0) {
                (void)0;
            }
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D81BC);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);

        v2->unk_B4[2] = (v2->unk_B4[2] + 6) % 256;
        G2_SetBG2Offset(v2->unk_B4[2], -v2->unk_B4[2]);
    }
}

static void ov5_021D84D4(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D84D4 *v2;
    int v3;

    v2 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7308(&v2->unk_30, &v2->unk_00, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + 0x200, GX_RGB(26, 26, 26), 2, v0->unk_BA4);
        v2->unk_98[0] = 16;

        v0->unk_BA2 = 1;
        break;
    case 1:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            v3 = ov5_021D735C(&v2->unk_30, &v2->unk_00, v0->unk_BA4);

            if (v3 == 1) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v2->unk_00.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_00.unk_00, 3, 0x6F6F + 0x200, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v2->unk_00);
        }

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_00, 2, 0);
            }

            v2->unk_98[0] = 16;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v3 = ov5_021D74B8(&v2->unk_00);
            } else {
                v3 = 1;
            }

            if (v3 == 1) {
                v0->unk_BA2 = 5;
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_00.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

static void ov5_021D8638(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D84D4 *v2;
    int v3;

    v2 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7308(&v2->unk_30, &v2->unk_00, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + -0x9E0, GX_RGB(26, 26, 26), 2, v0->unk_BA4);
        v2->unk_98[0] = 16;
        v0->unk_BA2 = 1;
        break;
    case 1:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            v3 = ov5_021D735C(&v2->unk_30, &v2->unk_00, v0->unk_BA4);

            if (v3 == 1) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v2->unk_00.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_00.unk_00, 3, 0x6F6F + -0x9E0, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v2->unk_00);
        }

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_00, 2, 0);
            }

            v2->unk_98[0] = 16;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (v2->unk_98[0] > 0) {
            v2->unk_98[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v3 = ov5_021D74B8(&v2->unk_00);
            } else {
                v3 = 1;
            }

            if (v3 == 1) {
                v0->unk_BA2 = 5;
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_00.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

static void ov5_021D879C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D879C *v1;
    int v2;
    BOOL v3;

    v1 = (UnkStruct_ov5_021D879C *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7308(&v1->unk_44, &v1->unk_14, v0->unk_00->fieldSystem->unk_48, 5, 0x6F6F + 0xAA0, GX_RGB(31, 31, 31), 2, v0->unk_BA4);
        ov5_021D64FC(&v1->unk_00, 0, 16, 30);
        ov5_021D64E4(0, 16);
        G2_SetBG2Priority(3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v2 = ov5_021D74B8(&v1->unk_14);
        v3 = ov5_021D650C(&v1->unk_00);

        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v1->unk_14.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v1->unk_14.unk_00, 5, 0x6F6F + 0xAA0, GX_RGB(31, 31, 31));
            ov5_021D74D4(&v1->unk_14);
        }

        ov5_021D64E4(16, 16 - 16);
        G2_SetBG2Priority(3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, 0);
            }

            ov5_021D64FC(&v1->unk_00, 16, 0, 30);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (v0->unk_BA4 != 0) {
            v2 = ov5_021D74B8(&v1->unk_14);
        } else {
            v2 = 1;
        }

        v3 = ov5_021D650C(&v1->unk_00);
        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v1->unk_14.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }

        break;
    default:
        break;
    }
}

static void ov5_021D8948(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D9984 *v2;
    int v3;
    int v4;

    v2 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 15, 8, 1, -2, 4, 2, ov5_021D8B88);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 28399, GX_RGB(26, 20, 5), 1, v0->unk_BA4);
        v2->unk_B4[0] = 0;
        v2->unk_B4[1] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 8, 1, 8, 1, -2, 4, 2, ov5_021D8B88);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_1C.unk_00, 3, 28399, GX_RGB(26, 20, 5));
            ov5_021D74D4(&v2->unk_1C);
        }

        v2->unk_B4[1] = 0;
        ov5_021D7568(v0, ov5_021D8B88, 24, 2, 2, ov5_021D8C90);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D8B88(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 15, 2, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, 0);
            }

            v2->unk_B4[0] = 31;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v4 = ov5_021D74B8(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D8C90);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);
    }
}

static void ov5_021D8B88(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    int v3;
    UnkStruct_ov5_021D9984 *v4;
    s32 *v5;
    int v6;
    static const int v7[8] = { -3, -5, -5, -4, -5, -6, -10, -6 };
    static const int v8[8] = { 2, 2, 2, 4, 4, 2, 2, 2 };

    v4 = (UnkStruct_ov5_021D9984 *)param0->unk_B98;
    v4->unk_B4[1] = (v4->unk_B4[1] + 1) % (40 * 8);
    v2 = v4->unk_B4[1] / 40;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v5 = v1->unk_08;

        v5[0] = 0;
        v5[1] = 15 + (MTRNG_Next() % (35 - 15));

        v6 = 3 - ((v5[1] - 15) / (((35 - 15) / 4) + 1));

        v5[2] = (v8[v2]) * (v6 + 1);
        v5[4] = (v7[v2]) * (v6 + 1);
        v5[3] = 0;
        v5[5] = v7[v2];

        v3 = MTRNG_Next() % 1000;

        if (v3 == 777) {
            v6 = 4;
            v5[2] += v5[2] / 2;
        }

        SpriteActor_SetAnimFrame(v1->unk_04, v6);

        {
            VecFx32 v9;

            v9 = ov5_021D7010(v1);
            v9.x = 262 + (MTRNG_Next() % 24);
            v9.x <<= FX32_SHIFT;
            v9.y = -64 + (MTRNG_Next() % 192);
            v9.y <<= FX32_SHIFT;

            ov5_021D630C(v1->unk_04, &v9);
        }
    }
}

static void ov5_021D8C90(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 v2 = ov5_021D7010(v0);

    switch (v1[3]) {
    case 0:
        v2.x += v1[4] << FX32_SHIFT;
        v2.y += v1[2] << FX32_SHIFT;

        if ((v1[0] % 5) == 0) {
            v1[4] += v1[5];
        }

        if (v1[0]++ > v1[1]) {
            v1[3] = 1;
        }

        ov5_021D630C(v0->unk_04, &v2);
        break;
    case 1:
        ov5_021D6FA8(v0);
        break;
    }
}

static void ov5_021D8D08(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    int v2;
    int v3, v4;
    UnkStruct_ov5_021D9984 *v5;
    int v6;
    int v7;
    static const int v8[8] = { -3, -5, -5, -3, -5, -6, -10, -6 };
    static const int v9[8] = { 2, 2, 2, 4, 4, 2, 2, 2 };

    v5 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v5->unk_00, v0, 1, 15, 8, 1, -2, 4, 2, ov5_021D8B88);
        ov5_021D7308(&v5->unk_4C, &v5->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 28399, GX_RGB(26, 20, 5), 1, v0->unk_BA4);
        v5->unk_B4[0] = 0;
        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;
        v5->unk_B4[3] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            v7 = ov5_021D735C(&v5->unk_4C, &v5->unk_1C, v0->unk_BA4);

            if ((v7 == 1) && (v6 == 3)) {
                v0->unk_BA2 = 3;
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        ov5_021D7210(&v5->unk_00, v0, 8, 1, 8, 1, -2, 4, 2, ov5_021D8B88);

        if (v0->unk_BA4 != 0) {
            v5->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v5->unk_1C.unk_00, 3, 28399, GX_RGB(26, 20, 5));
            ov5_021D74D4(&v5->unk_1C);
        }

        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;
        v5->unk_B4[3] = 0;

        ov5_021D7568(v0, ov5_021D8B88, 24, 2, 2, ov5_021D8C90);
        v0->unk_BA2 = 3;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        break;
    case 3:
        if (v5->unk_00.unk_06-- <= 0) {
            v2 = v5->unk_B4[1] / 40;
            v5->unk_B4[3] = v8[v2];

            if (v5->unk_B4[3] <= -6) {
                ov5_021D8B88(v0, v5->unk_00.unk_04 * 2);
            } else {
                ov5_021D8B88(v0, v5->unk_00.unk_04);
            }

            v5->unk_00.unk_06 = v5->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v5->unk_00, 0, 15, 2, -3);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v5->unk_1C, 1, 0);
            }

            v5->unk_B4[0] = 31;
            v0->unk_BA2 = 4;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v7 = ov5_021D74B8(&v5->unk_1C);
            } else {
                v7;
            }

            if ((v7 == 1) && (v6 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v5->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v10 = v0->unk_04;
            ov5_021D69B8(v10);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D8C90);
        ov5_021D717C(v0, &v3, &v4);
        ov5_021D700C(v0);

        v5->unk_B4[2] = (v5->unk_B4[2] + 6) % 256;
        G2_SetBG2Offset(v5->unk_B4[2] * 2 - v3, -v5->unk_B4[2] + v4);
    }
}

static void ov5_021D8FF8(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    int v2;
    int v3, v4;
    UnkStruct_ov5_021D9984 *v5;
    int v6;
    int v7;

    v5 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v5->unk_00, v0, 1, 30, 10, 1, -4, 2, 3, ov5_021D92C4);
        ov5_021D7308(&v5->unk_4C, &v5->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + -0x400, GX_RGB(24, 24, 24), 1, v0->unk_BA4);
        v5->unk_B4[0] = 16;
        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            v7 = ov5_021D735C(&v5->unk_4C, &v5->unk_1C, v0->unk_BA4);

            if ((v7 == 1) && (v6 == 3)) {
                v0->unk_BA2 = 3;
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        ov5_021D7210(&v5->unk_00, v0, 10, 1, 10, 1, -4, 2, 3, ov5_021D92C4);

        if (v0->unk_BA4 != 0) {
            v5->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v5->unk_1C.unk_00, 3, 0x6F6F + -0x400, GX_RGB(24, 24, 24));
            ov5_021D74D4(&v5->unk_1C);
        }

        v5->unk_B4[1] = 0;
        v5->unk_B4[2] = 0;

        ov5_021D7568(v0, ov5_021D92C4, 20, 2, 2, ov5_021D93DC);
        v0->unk_BA2 = 3;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        break;
    case 3:
        if (v5->unk_00.unk_06-- <= 0) {
            v2 = v5->unk_B4[1] / 512;
            v2 = Unk_ov5_021F8CDC[v2];

            if (v2 <= -8) {
                ov5_021D92C4(v0, v5->unk_00.unk_04 * 2);
            } else {
                ov5_021D92C4(v0, v5->unk_00.unk_04);
            }

            v5->unk_00.unk_06 = v5->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v5->unk_00, 0, 12, 4, -4);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v5->unk_1C, 1, 0);
            }

            v5->unk_B4[0] = 20;
            v0->unk_BA2 = 4;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        v6 = ov5_021D7244(&v5->unk_00);

        if (v5->unk_B4[0] > 0) {
            v5->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v7 = ov5_021D74B8(&v5->unk_1C);
            } else {
                v7 = 1;
            }

            if ((v7 == 1) && (v6 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v5->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v8 = v0->unk_04;
            ov5_021D69B8(v8);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D93DC);
        ov5_021D700C(v0);
        v5->unk_B4[2] = (v5->unk_B4[2] + 12) % 256;
        G2_SetBG2Offset(v5->unk_B4[2] * 2, -v5->unk_B4[2]);
    }
}

static void ov5_021D92C4(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    UnkStruct_ov5_021D9984 *v3;
    s32 *v4;
    int v5;

    v3 = (UnkStruct_ov5_021D9984 *)param0->unk_B98;
    v3->unk_B4[1]++;

    if (v3->unk_B4[1] >= (512 * 4)) {
        v3->unk_B4[1] = 0;
    }

    v2 = (v3->unk_B4[1] / 512);

    for (v0 = 0; v0 < param1 * 4; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v4 = (s32 *)v1->unk_08;

        v4[0] = 0;
        v4[1] = 18 + (MTRNG_Next() % (24 - 18));
        v5 = MTRNG_Next() % 4;

        SpriteActor_SetAnimFrame(v1->unk_04, v5);

        v4[4] = Unk_ov5_021F8CDC[v2] * ((v5) + 1);
        v4[2] = Unk_ov5_021F8CEC[v2] * ((v5) + 1);
        v4[3] = 0;

        if (v5 == 3) {
            v4[4] += Unk_ov5_021F8CDC[v2];
            v4[2] += Unk_ov5_021F8CEC[v2];
        }

        v4[5] = Unk_ov5_021F8CDC[v2];

        {
            VecFx32 v6 = ov5_021D7010(v1);

            v6.x = 256 + (MTRNG_Next() % 24);
            v6.y = -32 + (MTRNG_Next() % 168);
            v6.x <<= FX32_SHIFT;
            v6.y <<= FX32_SHIFT;
            v6.z = 0;

            ov5_021D630C(v1->unk_04, &v6);
        }
    }
}

static void ov5_021D93DC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 v2 = ov5_021D7010(v0);

    switch (v1[3]) {
    case 0:
        v2.x += v1[4] << FX32_SHIFT;
        v2.y += v1[2] << FX32_SHIFT;

        if (v1[0]++ > v1[1]) {
            v1[3] = 1;
        }

        if ((v1[0] % 4) == 0) {
            v1[4] += v1[5];

            if (v1[2] > 1) {
                v1[2]--;
            }
        }

        ov5_021D630C(v0->unk_04, &v2);
        break;
    case 1:
        ov5_021D6FA8(v0);
        break;
    }
}

static void ov5_021D9464(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D9984 *v2;
    int v3;
    int v4;

    v2 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 2, 16, 20, 2, -2, 4, 2, ov5_021D9690);
        ov5_021D7308(&v2->unk_4C, &v2->unk_1C, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + 0x200, GX_RGB(26, 26, 26), 1, v0->unk_BA4);
        v2->unk_B4[0] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 20, 2, 20, 2, -2, 4, 2, ov5_021D9690);

        if (v0->unk_BA4 != 0) {
            v2->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v2->unk_1C.unk_00, 3, 0x6F6F + 0x200, GX_RGB(26, 26, 26));
            ov5_021D74D4(&v2->unk_1C);
        }

        ov5_021D7568(v0, ov5_021D9690, 20, 10, 1, ov5_021D97C0);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021D9690(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 16, 6, -10);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v2->unk_1C, 1, 0);
            }

            v2->unk_B4[0] = 20;
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v2->unk_B4[0] > 0) {
            v2->unk_B4[0]--;
        } else {
            v4 = ov5_021D735C(&v2->unk_4C, &v2->unk_1C, v0->unk_BA4);

            if ((v4 == 1) && (v3 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v2->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v5 = v0->unk_04;
            ov5_021D69B8(v5);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021D97C0);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);
    }
}

static void ov5_021D9690(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    int v3;
    int v4;
    int v5;
    VecFx32 v6;
    s32 *v7;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v7 = (s32 *)v1->unk_08;

        v7[0] = 0;
        v7[1] = 7 + (MTRNG_Next() % 5);

        v2 = MTRNG_Next() % 1000;

        if ((v2 % 2) == 0) {
            v7[2] = 1;
        } else {
            v7[2] = -1;
        }

        v7[3] = 1;
        v7[4] = 3 + (MTRNG_Next() % 6);
        v7[5] = 4 + (MTRNG_Next() % 5);

        v5 = MTRNG_Next() % 0x14;

        {
            v6 = ov5_021D7010(v1);
            v6.x = -64 + (MTRNG_Next() % 384);
            v6.y = -8 + (MTRNG_Next() % 256);
            v6.x <<= FX32_SHIFT;
            v6.y <<= FX32_SHIFT;
            v6.z = 0;

            ov5_021D630C(v1->unk_04, &v6);

            v6.x >>= FX32_SHIFT;
            v6.y >>= FX32_SHIFT;
        }

        v3 = 50 - (v6.x / 3);
        v2 = 206 - (v6.x / 3);

        if (v2 < 0) {
            v2 *= -1;
            v4 = v3 - (MTRNG_Next() % v2);
        } else {
            v4 = v3 + (MTRNG_Next() % v2);
        }

        if ((v3 <= v6.y) && (v4 >= v6.y)) {
            v7[1] *= 2;
        } else {
            v5 = MTRNG_Next() % 4;
        }

        SpriteActor_SetAnimFrame(v1->unk_04, v5);
    }
}

static void ov5_021D97C0(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    int v1;
    s32 *v2 = (s32 *)v0->unk_08;
    VecFx32 v3 = ov5_021D7010(v0);

    v2[0]++;

    if ((v2[0] % v2[4]) == 0) {
        v3.x += v2[2] << FX32_SHIFT;
    }

    if ((v2[0] % v2[5]) == 0) {
        v3.y += v2[3] << FX32_SHIFT;
    }

    if (v2[0] >= v2[1]) {
        ov5_021D6FA8(v0);
        return;
    }
}

static void ov5_021D97E8(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    s32 *v2;

    v2 = (s32 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        v2[0] = 0;
        v2[1] = 0;

        ov5_021D64E4(0, 16);
        G2_SetBG2Offset(0, 32);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->unk_BA2 = 1;
        break;
    case 1:
        v2[0]++;

        if (v2[0] >= 10) {
            v2[0] = 0;
            v2[1]++;

            ov5_021D64E4(v2[1], 16);

            if (v2[1] >= 10) {
                v2[2] = 10 + (MTRNG_Next() % 20);
                v2[3] = 5 + (MTRNG_Next() % 3);
                v2[4] = 1;
                v0->unk_BA2 = 3;
            }
        }
        break;
    case 2:
        v2[0] = 0;
        v2[1] = 10;

        G2_SetBG2Offset(0, 32);
        ov5_021D64E4(v2[1], 16);

        v2[2] = 10 + (MTRNG_Next() % 20);
        v2[3] = 5 + (MTRNG_Next() % 3);
        v2[4] = 1;

        v0->unk_BA2 = 3;
        break;
    case 3:
        v2[0]++;

        if (v2[0] >= v2[2]) {
            v2[0] = 0;

            if (v2[4] == 1) {
                v2[1]--;

                if (v2[1] <= v2[3]) {
                    v2[2] = 10 + (MTRNG_Next() % 15);
                    v2[3] = 7 + (MTRNG_Next() % 3);
                    v2[4] = 0;
                }
            } else {
                v2[1]++;

                if (v2[1] >= v2[3]) {
                    v2[2] = 10 + (MTRNG_Next() % 20);
                    v2[3] = 5 + (MTRNG_Next() % 3);
                    v2[4] = 1;
                }
            }
        }

        ov5_021D64E4(v2[1], 16);

        if (v0->unk_BA6 == 5) {
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v2[0]++;

        if (v2[0] >= 10) {
            v2[0] = 0;
            v2[1]--;

            ov5_021D64E4(v2[1], 16);

            if (v2[1] <= 0) {
                v0->unk_BA2 = 5;
            }
        }
        break;
    case 5: {
        UnkStruct_ov5_021D69B8 *v3 = v0->unk_04;
        ov5_021D69B8(v3);
    } break;
    default:
        break;
    }
}

static void ov5_021D9984(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    ov5_021D7210(&param1->unk_00, param0, 1, 15, 10, 0, -3, 2, 1, ov5_021DA0A8);
    ov5_021D7308(&param1->unk_4C, &param1->unk_1C, param0->unk_00->fieldSystem->unk_48, 3, 0x6F6F, GX_RGB(26, 26, 26), 1, param0->unk_BA4);

    param1->unk_B4[0] = 0;
    param1->unk_B4[1] = 0;
    param1->unk_B4[2] = 0;

    ov5_021DB4B8(param0, 1595);
}

static BOOL ov5_021D9A0C(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    int v0;
    int v1;

    v0 = ov5_021D7244(&param1->unk_00);

    if (param1->unk_B4[0] > 0) {
        param1->unk_B4[0]--;
    } else {
        v1 = ov5_021D735C(&param1->unk_4C, &param1->unk_1C, param0->unk_BA4);

        if ((v1 == 1) && (v0 == 3)) {
            return 1;
        }
    }

    return 0;
}

static void ov5_021D9A58(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    ov5_021D7210(&param1->unk_00, param0, 10, 0, 10, 0, -3, 2, 1, ov5_021DA0A8);

    if (param0->unk_BA4 != 0) {
        param1->unk_1C.unk_00 = param0->unk_00->fieldSystem->unk_48;
        ov5_021D7384(param1->unk_1C.unk_00, 3, 0x6F6F, GX_RGB(26, 26, 26));
        ov5_021D74D4(&param1->unk_1C);
    }

    param1->unk_B4[1] = 0;
    param1->unk_B4[2] = 0;

    ov5_021D7568(param0, ov5_021DA0A8, 20, 5, 1, ov5_021DA1A8);
    ov5_021DB4B8(param0, 1595);
}

static void ov5_021D9AEC(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    param1->unk_B4[2] = (param1->unk_B4[2] + 1) % (60 * 5);

    if (param1->unk_00.unk_06-- <= 0) {
        ov5_021DA0A8(param0, param1->unk_00.unk_04);
        param1->unk_00.unk_06 = param1->unk_00.unk_08;
    }
}

static void ov5_021D9B28(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    ov5_021D7238(&param1->unk_00, 0, 15, 3, -3);

    if (param0->unk_BA4 != 0) {
        ov5_021D749C(&param1->unk_1C, 1, 0);
    }

    param1->unk_B4[0] = 0;
    ov5_021DB4E4(param0);
}

static BOOL ov5_021D9B68(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    int v0;
    int v1;

    v0 = ov5_021D7244(&param1->unk_00);

    if (param1->unk_B4[0] > 0) {
        param1->unk_B4[0]--;
    } else {
        if (param0->unk_BA4 != 0) {
            v1 = ov5_021D74B8(&param1->unk_1C);
        } else {
            v1 = 1;
        }

        if ((v1 == 1) && (v0 == 3)) {
            if (param0->unk_0C.unk_34 == &param0->unk_0C) {
                return 1;
            }
        }
    }

    return 0;
}

static void ov5_021D9BC0(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    if (param0->unk_BA4 != 0) {
        ov5_021D57FC(param1->unk_1C.unk_00, 1, 0, 0, 0, 0);
    }

    {
        UnkStruct_ov5_021D69B8 *v0 = param0->unk_04;
        ov5_021D69B8(v0);
    }
}

static void ov5_021D9BEC(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D9984 *param1)
{
    if ((param0->unk_BA2 != 5) && (param0->unk_BA2 != 0)) {
        ov5_021D6FF0(&param0->unk_0C, ov5_021DA1A8);
        ov5_021D717C(param0, NULL, NULL);
        ov5_021D700C(param0);
    }
}

static void ov5_021D9C20(SysTask *param0, void *param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021D84D4 *v2;
    int v3;

    v2 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        if (v0->unk_BA4 != 0) {
            ov5_021D7384(v0->unk_00->fieldSystem->unk_48, 5, 28591, (GX_RGB(0, 0, 0)));
            ov5_021D585C(v0->unk_00->fieldSystem->unk_48, Unk_ov5_021F8E14);
            ov5_021D64E4(param2, 16 - param2);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

            v2->unk_98[0] = param4;
            v2->unk_98[1] = 0;
        }

        v0->unk_BA2 = 1;
        break;
    case 1:
        v0->unk_BA2 = 3;
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            ov5_021D7384(v0->unk_00->fieldSystem->unk_48, 5, 28591, (GX_RGB(0, 0, 0)));
            ov5_021D585C(v0->unk_00->fieldSystem->unk_48, Unk_ov5_021F8E14);
            ov5_021D64E4(param2, 16 - param2);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            v2->unk_98[0] = param4;
            v2->unk_98[1] = 0;
        }

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_98[1] == 0) {
            v2->unk_98[0] -= param3;

            if (v2->unk_98[0] <= 0) {
                v2->unk_98[1] = 1;
            }
        } else if (v2->unk_98[1] == 1) {
            v2->unk_98[0]++;

            if (v2->unk_98[0] >= param5) {
                v2->unk_98[1] = 2;
            }
        } else {
            v2->unk_98[0]--;

            if (v2->unk_98[0] <= 0) {
                v2->unk_98[1] = 1;
            }
        }

        ov5_021D64E4((param2 + ((v2->unk_98[0]) / 128)), 16 - (param2 + ((v2->unk_98[0]) / 128)));

        if (v0->unk_BA6 == 5) {
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        ov5_021D64E4(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        v0->unk_BA2 = 5;
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v0->unk_00->fieldSystem->unk_48, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

static void ov5_021D9DFC(UnkStruct_ov5_021DB4B8 *param0, UnkStruct_ov5_021D84D4 *param1, u32 param2, u32 param3, GXRgb param4, u32 param5, u32 param6)
{
    int v0;
    int v1;

    switch (param0->unk_BA2) {
    case 0:
        ov5_021D7308(&param1->unk_30, &param1->unk_00, param0->unk_00->fieldSystem->unk_48, param2, param3, param4, param5, param0->unk_BA4);
        param0->unk_BA2 = 1;
        break;
    case 1:
        v1 = ov5_021D735C(&param1->unk_30, &param1->unk_00, param0->unk_BA4);

        if (v1 == 1) {
            param0->unk_BA2 = 3;
        }
        break;
    case 2:
        if (param0->unk_BA4 != 0) {
            param1->unk_00.unk_00 = param0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(param1->unk_00.unk_00, param2, param3, param4);
            ov5_021D74D4(&param1->unk_00);
        }

        param0->unk_BA2 = 3;
        break;
    case 3:
        if (param0->unk_BA6 == 5) {
            if (param0->unk_BA4 != 0) {
                ov5_021D749C(&param1->unk_00, param6, 0);
            }

            param0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (param0->unk_BA4 != 0) {
            v1 = ov5_021D74B8(&param1->unk_00);
        } else {
            v1 = 1;
        }

        if (v1 == 1) {
            param0->unk_BA2 = 5;
        }
        break;
    case 5:
        if (param0->unk_BA4 != 0) {
            ov5_021D57FC(param1->unk_00.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v2 = param0->unk_04;
            ov5_021D69B8(v2);
        }
        break;
    default:
        break;
    }
}

static void ov5_021D9F0C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D9984 *v1;

    v1 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D9984(v0, v1);
        ov5_021D6418(v0->unk_00, 0, 17);
        ov5_021D6418(v0->unk_00, 3, 17);

        v0->unk_BA2 = 1;
        break;
    case 1:
        if (ov5_021D9A0C(v0, v1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        ov5_021D9A58(v0, v1);
        ov5_021D6418(v0->unk_00, 0, 17);
        ov5_021D6418(v0->unk_00, 3, 17);

        v0->unk_BA2 = 3;
        break;
    case 3:
        ov5_021D9AEC(v0, v1);

        if (v0->unk_BA6 == 5) {
            ov5_021D9B28(v0, v1);
            ov5_021D6418(v0->unk_00, 5, 17);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (ov5_021D9B68(v0, v1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        ov5_021D9BC0(v0, v1);
        ov5_021D6418(v0->unk_00, 8, 17);
        break;
    default:
        break;
    }

    ov5_021D9BEC(v0, v1);
}

static void ov5_021D9FF8(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D9984 *v1;

    v1 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D9984(v0, v1);
        v0->unk_BA2 = 1;
        break;
    case 1:
        if (ov5_021D9A0C(v0, v1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        ov5_021D9A58(v0, v1);
        v0->unk_BA2 = 3;
        break;
    case 3:
        ov5_021D9AEC(v0, v1);

        if (v0->unk_BA6 == 5) {
            ov5_021D9B28(v0, v1);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (ov5_021D9B68(v0, v1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        ov5_021D9BC0(v0, v1);
        break;
    default:
        break;
    }

    ov5_021D9BEC(v0, v1);
}

static void ov5_021DA0A8(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    int v2;
    s32 *v3;
    UnkStruct_ov5_021D9984 *v4;
    int v5;
    int v6;
    static const int v7[5] = { 1, 1, 2, 1, 3 };
    u32 v8;

    v4 = (UnkStruct_ov5_021D9984 *)param0->unk_B98;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v3 = (s32 *)v1->unk_08;
        v8 = MTRNG_Next();

        v3[0] = 0;
        v6 = v8 % 3;

        SpriteActor_SetAnimFrame(v1->unk_04, v6);

        v3[4] = -24 * (v6 + 1);
        v3[2] = 24 * (v6 + 1);
        v3[4] *= v7[v4->unk_B4[2] / 60];
        v3[2] *= v7[v4->unk_B4[2] / 60];
        v3[3] = 0;
        v3[1] = 0 + (v8 % 4);
        v3[1] /= v7[v4->unk_B4[2] / 60];

        {
            VecFx32 v9 = ov5_021D7010(v1);

            v9.x = 0 + (v8 % 512);
            v9.y = -80 + (v8 % 48);
            v9.z = 0;
            v9.x <<= FX32_SHIFT;
            v9.y <<= FX32_SHIFT;

            ov5_021D630C(v1->unk_04, &v9);
        }
    }
}

static void ov5_021DA1A8(UnkStruct_ov5_021D6FA8 *param0)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v2 = (s32 *)v1->unk_08;
    VecFx32 v3 = ov5_021D7010(v1);

    switch (v2[3]) {
    case 0:
        v3.x += (v2[4] * 2) << FX32_SHIFT;
        v3.y += (v2[2] * 2) << FX32_SHIFT;
        v2[0] += 2;

        if (v2[0] > v2[1]) {
            if ((MTRNG_Next() % 10) < 5) {
                v2[3] = 2;
            } else {
                v2[3] = 1;
                v2[0] = 4;
                SpriteActor_SetAnimFrame(v1->unk_04, 3);
            }
        }

        ov5_021D630C(v1->unk_04, &v3);
        break;
    case 1:
        if (v2[0]-- <= 0) {
            v2[3] = 2;
        }
        break;
    case 2:
        ov5_021D6FA8(v1);
        break;
    }
}

static void ov5_021DA244(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    int v2;
    int v3, v4;
    short v5, v6;
    UnkStruct_ov5_021D9984 *v7;
    int v8;
    int v9;

    v7 = (UnkStruct_ov5_021D9984 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v7->unk_00, v0, 1, 12, 1, 6, -1, 4, 0, ov5_021DA5A0);

        v7->unk_B4[1] = 0;
        v7->unk_B4[2] = 0;
        v7->unk_B4[4] = 0;
        v7->unk_B4[5] = 0;

        ov5_021D7308(&v7->unk_4C, &v7->unk_1C, v0->unk_00->fieldSystem->unk_48, 3 + 0, 0x6F6F + -0x40, GX_RGB(20, 20, 14), 1, v0->unk_BA4);

        v7->unk_B4[0] = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v8 = ov5_021D7244(&v7->unk_00);

        if (v7->unk_B4[0] > 0) {
            v7->unk_B4[0]--;
        } else {
            v9 = ov5_021D735C(&v7->unk_4C, &v7->unk_1C, v0->unk_BA4);

            if ((v9 == 1) && (v8 == 3)) {
                v0->unk_BA2 = 3;
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        }

        break;
    case 2:
        ov5_021D7210(&v7->unk_00, v0, 1, 6, 1, 6, -1, 4, 0, ov5_021DA5A0);

        v7->unk_B4[1] = 0;
        v7->unk_B4[2] = 0;
        v7->unk_B4[4] = 0;
        v7->unk_B4[5] = 0;

        if (v0->unk_BA4 != 0) {
            v7->unk_1C.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v7->unk_1C.unk_00, 3, 0x6F6F + -0x40, GX_RGB(20, 20, 14));
            ov5_021D74D4(&v7->unk_1C);
        }

        ov5_021D7568(v0, ov5_021DA5A0, 20, 2, 16, ov5_021DA6BC);
        v0->unk_BA2 = 3;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        break;
    case 3:
        if (v7->unk_00.unk_06-- <= 0) {
            ov5_021DA5A0(v0, v7->unk_00.unk_04);
            v7->unk_00.unk_06 = v7->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v7->unk_00, 0, 12, 1, -1);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v7->unk_1C, 1, 0);
            }

            v7->unk_B4[0] = 9;
            v0->unk_BA2 = 4;
            v7->unk_B4[5] = 1;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        v8 = ov5_021D7244(&v7->unk_00);

        if (v7->unk_B4[0] > 0) {
            v7->unk_B4[0]--;
        } else {
            if (v0->unk_BA4 != 0) {
                v9 = ov5_021D74B8(&v7->unk_1C);
            } else {
                v9 = 1;
            }

            if ((v9 == 1) && (v8 == 3)) {
                if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                    v0->unk_BA2 = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v7->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v10 = v0->unk_04;
            ov5_021D69B8(v10);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021DA6BC);
        ov5_021D717C(v0, &v3, &v4);
        ov5_021D700C(v0);

        v5 = v7->unk_B4[2] >> 16;
        v6 = v7->unk_B4[2] & 0xffff;
        v5 += v3;
        v6 -= v4 * 5;

        if (v5 < 0) {
            v5 += 256;
        } else {
            if (v5 >= 256) {
                v5 -= 256;
            }
        }

        if (v6 < 0) {
            v6 += 2048;
        }

        v7->unk_B4[4] += 2;

        if (v7->unk_B4[4] > 60) {
            v7->unk_B4[4] = 0;

            v5 = (v5 + 32) % 256;
        }

        v6 = (v6 + 2) % 2048;
        G2_SetBG2Offset(v5, -v6 / 5);

        v7->unk_B4[2] = v5 << 16;
        v7->unk_B4[2] |= v6 & 0xffff;
    }
}

static void ov5_021DA5A0(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    int v1;
    UnkStruct_ov5_021D6FA8 *v2;
    UnkStruct_ov5_021D9984 *v3;
    int v4;
    s32 *v5;

    v3 = param0->unk_B98;

    if (v3->unk_B4[1] == 1) {
        param1 *= 2;
    }

    for (v0 = 0; v0 < param1; v0++) {
        v2 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v2 == NULL) {
            break;
        }

        v5 = (s32 *)v2->unk_08;
        v4 = MTRNG_Next() % 4;

        SpriteActor_SetAnimFrame(v2->unk_04, v4);

        v5[4] = 10;
        v5[5] = 0;

        v1 = MTRNG_Next();

        if ((v1 % 2) == 0) {
            v5[1] = 1;
        } else {
            v5[1] = -1;
        }

        v5[3] = 1 + (MTRNG_Next() % 1);
        v5[0] = (s32)&v3->unk_B4[1];
        v5[6] = (s32)&v3->unk_B4[5];
        v5[7] = 10 + (MTRNG_Next() % 20);

        {
            VecFx32 v6 = ov5_021D7010(v2);

            v6.x = -32 + (MTRNG_Next() % 414);

            if ((v3->unk_B4[1] == 1) && (v0 >= (param1 / 2))) {
                v6.y = -40 - (MTRNG_Next() % 20);
            } else {
                v6.y = -8 - (MTRNG_Next() % 20);
            }

            v6.x <<= FX32_SHIFT;
            v6.y <<= FX32_SHIFT;
            v6.z = 0;

            ov5_021D630C(v2->unk_04, &v6);
        }
    }
}

static void ov5_021DA6BC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 v2 = ov5_021D7010(v0);
    BOOL v3 = 0;

    if (v1[5] >= v1[3]) {
        v2.y += FX32_ONE;
        v1[5] = 0;

        ov5_021D630C(v0->unk_04, &v2);
    }

    v1[5]++;
    v2.y >>= FX32_SHIFT;

    if (*((s32 *)v1[6]) == 1) {
        v1[7]--;

        if (v1[7] <= 0) {
            v3 = 1;
        }
    }

    if (((v2.y < -284) && (v2.y > -296)) || ((v2.y > 212) && (v2.y < 232))) {
        v3 = 1;
    }

    if (v3 == 1) {
        *((s32 *)v1[0]) = 1;
        ov5_021D6FA8(v0);
        return;
    }
}

static void ov5_021DA748(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    s32 *v1;
    int v2;
    int v3;

    v1 = (s32 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
    case 1:
    case 2:
        v1[0] = 0;
        v1[4] = 0;
        v1[1] = 0;

        ov5_021D64E4(0, 31);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v1[4] >= 0) {
            v1[4]--;
        } else {
            switch (v1[1]) {
            case 0:
                v1[1] = 1;
                v1[5] = 0;
                v1[6] = 200 + (MTRNG_Next() % 480);
                v1[7] = 0;

                if ((MTRNG_Next() % 3) != 0) {
                    v1[2] = 36;

                    Sound_PlayEffect(1597);
                } else {
                    v1[2] = 200;

                    Sound_PlayEffect(1596);
                }
                break;
            case 1:
                v1[5]++;
                v1[7] += v1[6];

                if (v1[5] >= 2) {
                    v1[1] = 2;
                }

                ov5_021D64E4(v1[7] / 100, 31);
                break;
            case 2:
                v1[7] -= v1[2];

                if (v1[7] <= 0) {
                    v1[1] = 0;
                    v1[7] = 0;

                    if (v1[2] == 200) {
                        v1[4] = (MTRNG_Next() % 15);
                    } else {
                        v1[4] = ((v1[6] * 50) / 100) + (MTRNG_Next() % 120);
                    }
                }

                ov5_021D64E4(v1[7] / 100, 31);
                break;
            }
        }

        if (v0->unk_BA6 == 5) {
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v0->unk_BA2 = 5;
        break;
    case 5: {
        UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
        ov5_021D69B8(v4);
    } break;
    default:
        break;
    }
}

static void ov5_021DA8A0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    int v1;
    UnkStruct_ov5_021DA8A0 *v2;
    int v3;

    v2 = (UnkStruct_ov5_021DA8A0 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7210(&v2->unk_00, v0, 1, 35, 4, 15, -2, 5, 1, ov5_021DA9DC);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v3 == 3) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        ov5_021D7210(&v2->unk_00, v0, 1, 4, 15, 15, -2, 5, 1, ov5_021DA9DC);
        ov5_021D7568(v0, ov5_021DA9DC, 16, 2, 1, ov5_021DAADC);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v2->unk_00.unk_06-- <= 0) {
            ov5_021DA9DC(v0, v2->unk_00.unk_04);
            v2->unk_00.unk_06 = v2->unk_00.unk_08;
        }

        if (v0->unk_BA6 == 5) {
            ov5_021D7238(&v2->unk_00, 0, 35, 2, -3);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v3 = ov5_021D7244(&v2->unk_00);

        if (v3 == 3) {
            if (v0->unk_0C.unk_34 == &v0->unk_0C) {
                v0->unk_BA2 = 5;
            }
        }
        break;
    case 5: {
        UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
        ov5_021D69B8(v4);
    } break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        ov5_021D6FF0(&v0->unk_0C, ov5_021DAADC);
        ov5_021D717C(v0, NULL, NULL);
        ov5_021D700C(v0);
    }
}

static void ov5_021DA9DC(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021D6FA8 *v1;
    s32 *v2;
    int v3;
    int v4;
    VecFx32 v5;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov5_021D6F00(param0, sizeof(s32) * 8);

        if (v1 == NULL) {
            break;
        }

        v2 = (s32 *)v1->unk_08;
        v4 = MTRNG_Next() % 0xe;

        SpriteActor_SetAnimFrame(v1->unk_04, v4);

        v3 = v4 / 4;
        v3++;

        v2[0] = 8 + (MTRNG_Next() % 25);
        v2[0] *= v3;
        v2[1] = 16 / v3;
        v2[2] = 0;
        v2[3] = MTRNG_Next() % 2;
        v2[4] = 1;

        switch (v3) {
        case 1:
        case 2:
            v5.x = -128 + (MTRNG_Next() % 512);
            v5.y = 8 + (MTRNG_Next() % 192);
            break;
        case 3:
            v5.x = -128 + (MTRNG_Next() % 512);
            v5.y = 64 + (MTRNG_Next() % 128);
            break;
        case 4:
            v5.x = -128 + (MTRNG_Next() % 512);
            v5.y = 160 + (MTRNG_Next() % 32);
            break;
        }

        v5.z = 0;
        v5.x <<= FX32_SHIFT;
        v5.y <<= FX32_SHIFT;

        ov5_021D630C(v1->unk_04, &v5);
    }
}

static void ov5_021DAADC(UnkStruct_ov5_021D6FA8 *param0)
{
    UnkStruct_ov5_021D6FA8 *v0 = (UnkStruct_ov5_021D6FA8 *)param0;
    s32 *v1 = (s32 *)v0->unk_08;
    VecFx32 v2 = ov5_021D7010(v0);

    v1[2] += v1[1];

    if (v1[0] > 0) {
        v1[0]--;
        v2.y -= (v1[2] / 100) << FX32_SHIFT;
    } else {
        v2.y -= (v1[2] / 50) << FX32_SHIFT;
    }

    v1[4]--;

    if (v1[4] <= 0) {
        v1[4] = 1;

        if (v1[3] == 0) {
            v2.x += 2 << FX32_SHIFT;
            v1[3] = 1;
        } else {
            v2.x -= 2 << FX32_SHIFT;
            v1[3] = 0;
        }
    }

    ov5_021D630C(v0->unk_04, &v2);

    if ((v2.y >> FX32_SHIFT) <= -16) {
        ov5_021D6FA8(v0);
    }
}

static void ov5_021DAB78(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D879C *v1;
    BOOL v2;
    BOOL v3;

    v1 = (UnkStruct_ov5_021D879C *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D64FC(&v1->unk_00, 0, 16, 8);
        ov5_021D64E4(0, 16);

        G2_SetBG2Priority(3);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = 1;
        v2 = ov5_021D650C(&v1->unk_00);

        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        ov5_021D64E4(16, 16 - 16);
        G2_SetBG2Priority(3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            ov5_021D64FC(&v1->unk_00, 16, 0, 8);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v2 = ov5_021D650C(&v1->unk_00);
        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);
        v3 = 1;

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5: {
        UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
        ov5_021D69B8(v4);
    } break;
    default:
        break;
    }
}

static void ov5_021DAC68(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021DAC68 *v1;
    BOOL v2;

    v1 = (UnkStruct_ov5_021DAC68 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D64FC(&v1->unk_00, 0, 4, 8);
        ov5_021D64E4(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v2 = ov5_021D650C(&v1->unk_00);
        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if (v2) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        ov5_021D64E4(4, 16 - 4);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            ov5_021D64FC(&v1->unk_00, 4, 0, 8);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v2 = ov5_021D650C(&v1->unk_00);
        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if (v2) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5: {
        UnkStruct_ov5_021D69B8 *v3 = v0->unk_04;
        ov5_021D69B8(v3);
    } break;
    default:
        break;
    }
}

static void ov5_021DAD38(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D879C *v1;
    int v2;
    BOOL v3;

    v1 = (UnkStruct_ov5_021D879C *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7308(&v1->unk_44, &v1->unk_14, v0->unk_00->fieldSystem->unk_48, 7, 30287, (GX_RGB(0, 0, 0)), 1, v0->unk_BA4);
        ov5_021D64FC(&v1->unk_00, 0, 9, 30);
        ov5_021D64E4(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v2 = ov5_021D74B8(&v1->unk_14);
        v3 = ov5_021D650C(&v1->unk_00);

        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v1->unk_14.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v1->unk_14.unk_00, 7, 30287, (GX_RGB(0, 0, 0)));
            ov5_021D74D4(&v1->unk_14);
        }

        ov5_021D64E4(9, 16 - 9);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, 0);
            }

            ov5_021D64FC(&v1->unk_00, 9, 0, 30);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (v0->unk_BA4 != 0) {
            v2 = ov5_021D74B8(&v1->unk_14);
        } else {
            v2 = 1;
        }

        v3 = ov5_021D650C(&v1->unk_00);
        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v1->unk_14.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

static void ov5_021DAEC0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D879C *v1;
    int v2;
    BOOL v3;

    v1 = (UnkStruct_ov5_021D879C *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D7308(&v1->unk_44, &v1->unk_14, v0->unk_00->fieldSystem->unk_48, 6, 30037, (GX_RGB(31, 31, 31)), 1, v0->unk_BA4);
        ov5_021D64FC(&v1->unk_00, 0, 9, 30);
        ov5_021D64E4(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 1;
        break;
    case 1:
        v2 = ov5_021D74B8(&v1->unk_14);
        v3 = ov5_021D650C(&v1->unk_00);

        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        if (v0->unk_BA4 != 0) {
            v1->unk_14.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v1->unk_14.unk_00, 6, 30037, (GX_RGB(31, 31, 31)));
            ov5_021D74D4(&v1->unk_14);
        }

        ov5_021D64E4(9, 16 - 9);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, 0);
            }

            ov5_021D64FC(&v1->unk_00, 9, 0, 30);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        if (v0->unk_BA4 != 0) {
            v2 = ov5_021D74B8(&v1->unk_14);
        } else {
            v2 = 1;
        }

        v3 = ov5_021D650C(&v1->unk_00);
        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == 1) && (v3 == 1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v1->unk_14.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

static void ov5_021DB04C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021DB04C *v1;
    UnkStruct_ov5_021D6594 *v2 = v0->unk_00;
    FieldSystem *fieldSystem = v2->fieldSystem;

    v1 = (UnkStruct_ov5_021DB04C *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021DB614(&v1->unk_00, fieldSystem->unk_04->hBlankSystem);
        ov5_021DB6E0(&v1->unk_00, (FX32_CONST(256)), (FX32_CONST(32)), 128, 84, 30);
        v0->unk_BA2 = 1;
        break;
    case 1:
        if (ov5_021DB700(&v1->unk_00) == 1) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            ov5_021DB7A4(&v1->unk_00);
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            ov5_021DB614(&v1->unk_00, fieldSystem->unk_04->hBlankSystem);
            ov5_021DB6E0(&v1->unk_00, (FX32_CONST(32)), (FX32_CONST(256)), 128, 84, 30);
            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov5_021DB700(&v1->unk_00) == 1) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        ov5_021DB690(&v1->unk_00);
        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }
}

static void ov5_021DB144(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021DB144 *v1;
    BOOL v2;
    BOOL v3;

    v1 = (UnkStruct_ov5_021DB144 *)v0->unk_B98;

    switch (v0->unk_BA2) {
    case 0:
        ov5_021D64FC(&v1->unk_00, 0, 7, 8);
        ov5_021D64E4(0, 16);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        ov5_021D7308(&v1->unk_44, &v1->unk_14, v0->unk_00->fieldSystem->unk_48, 3, 0x6F6F + -1600, (GX_RGB(31, 31, 31)), 1, v0->unk_BA4);

        v1->unk_AC = 0;
        v1->unk_B0 = 0;
        v1->unk_B4 = 0;
        v0->unk_BA2 = 1;
        break;
    case 1:
        v3 = ov5_021D735C(&v1->unk_44, &v1->unk_14, v0->unk_BA4);
        v2 = ov5_021D650C(&v1->unk_00);

        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == v3) && (v2 == 1)) {
            v0->unk_BA2 = 3;
        }
        break;
    case 2:
        ov5_021D64E4(7, 16 - 7);

        if (v0->unk_BA4 != 0) {
            v1->unk_14.unk_00 = v0->unk_00->fieldSystem->unk_48;
            ov5_021D7384(v1->unk_14.unk_00, 3, 0x6F6F + -1600, (GX_RGB(31, 31, 31)));
            ov5_021D74D4(&v1->unk_14);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        v1->unk_AC = 0;
        v1->unk_B0 = 0;
        v1->unk_B4 = 0;
        v0->unk_BA2 = 3;
        break;
    case 3:
        if (v0->unk_BA6 == 5) {
            ov5_021D64FC(&v1->unk_00, 7, 0, 8);

            if (v0->unk_BA4 != 0) {
                ov5_021D749C(&v1->unk_14, 1, 0);
            }

            v0->unk_BA2 = 4;
        }
        break;
    case 4:
        v2 = ov5_021D650C(&v1->unk_00);
        v3 = ov5_021D74B8(&v1->unk_14);

        ov5_021D64E4(v1->unk_00.unk_00, 16 - v1->unk_00.unk_00);

        if ((v2 == v3) && (v2 == 1)) {
            v0->unk_BA2 = 5;
        }
        break;
    case 5:
        if (v0->unk_BA4 != 0) {
            ov5_021D57FC(v1->unk_14.unk_00, 1, 0, 0, 0, 0);
        }

        {
            UnkStruct_ov5_021D69B8 *v4 = v0->unk_04;
            ov5_021D69B8(v4);
        }
        break;
    default:
        break;
    }

    if ((v0->unk_BA2 != 5) && (v0->unk_BA2 != 0)) {
        int v5;
        fx32 v6, v7;

        ov5_021D71B4(v0, &v6, &v7);

        if (v7 < 0) {
            v7 = FX_Mul(v7, FX32_CONST(0.75));
        } else {
            v7 = FX_Mul(v7, FX32_CONST(0.75));
        }

        v1->unk_AC += v6;
        v1->unk_B0 += v7;
        v1->unk_B4++;

        if (v1->unk_B4 >= (8 * 64)) {
            v1->unk_B4 = 0;
        }

        v5 = Unk_ov5_02201D38[v1->unk_B4 / 8];

        Bg_ScheduleScroll(v0->unk_00->fieldSystem->bgConfig, 2, 0, (v1->unk_AC >> FX32_SHIFT) + v5);
        Bg_ScheduleScroll(v0->unk_00->fieldSystem->bgConfig, 2, 3, (v1->unk_B0 >> FX32_SHIFT));
    }
}

static void ov5_021DB3A8(SysTask *param0, void *param1)
{
    ov5_021D9C20(param0, param1, 4, 4, (10 * 128), (2 * 128));
}

static void ov5_021DB3C4(SysTask *param0, void *param1)
{
    ov5_021D9C20(param0, param1, 6, 1, (8 * 128), (2 * 128));
}

static void ov5_021DB3E0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D84D4 *v1;

    v1 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    ov5_021D9DFC(v0, v1, 3, 26095, (GX_RGB(2, 2, 6)), 0, 0);
}

static void ov5_021DB40C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D84D4 *v1;

    v1 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    ov5_021D9DFC(v0, v1, 2, 26415, (GX_RGB(13, 25, 30)), 0, 0);
}

static void ov5_021DB438(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D84D4 *v1;

    v1 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    ov5_021D9DFC(v0, v1, 2, 26415, (GX_RGB(20, 0, 0)), 0, 0);
}

static void ov5_021DB460(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D84D4 *v1;

    v1 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    ov5_021D9DFC(v0, v1, 2, 26415, (GX_RGB(0, 0, 20)), 0, 0);
}

static void ov5_021DB48C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB4B8 *v0 = (UnkStruct_ov5_021DB4B8 *)param1;
    UnkStruct_ov5_021D84D4 *v1;

    v1 = (UnkStruct_ov5_021D84D4 *)v0->unk_B98;

    ov5_021D9DFC(v0, v1, 1, 19311, (GX_RGB(1, 1, 1)), 0, 0);
}

static void ov5_021DB4B8(UnkStruct_ov5_021DB4B8 *param0, int param1)
{
    GF_ASSERT(param0->unk_B9C == 0);
    param0->unk_B9C = 1;
    param0->unk_BA0 = param1;

    Sound_PlayEffect(param1);
}

static void ov5_021DB4E4(UnkStruct_ov5_021DB4B8 *param0)
{
    Sound_StopEffect(param0->unk_BA0, 0);
    param0->unk_B9C = 0;
}

static void ov5_021DB500(UnkStruct_ov5_021DB614 *param0)
{
    int v0;
    int v1;
    int v2;
    u16 *v3;
    u16 *v4;

    v3 = BufferManager_GetWriteBuffer(param0->bufferManagers[0]);
    v4 = BufferManager_GetWriteBuffer(param0->bufferManagers[1]);

    for (v0 = 0; v0 < 192; v0++) {
        if (v0 <= param0->unk_02) {
            ov5_021DB588(param0->unk_04.unk_00, param0->unk_00, param0->unk_02, v0, &v1, &v2);
        } else {
            if (v0 <= (param0->unk_02 * 2)) {
                v1 = v3[(param0->unk_02 * 2) - v0];
                v2 = v4[(param0->unk_02 * 2) - v0];
            } else {
                ov5_021DB588(param0->unk_04.unk_00, param0->unk_00, param0->unk_02, v0, &v1, &v2);
            }
        }

        v3[v0] = v1;
        v4[v0] = v2;
    }
}

static void ov5_021DB588(fx32 param0, int param1, int param2, int param3, int *param4, int *param5)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;

    v0 = param0;
    v1 = param3 - param2;

    if (v1 < 0) {
        v1 = -v1;
    }

    if (v1 >= v0) {
        *param4 = 0;
        *param5 = 0;
    } else {
        v1 <<= FX32_SHIFT;
        v2 = FX_Sqrt(FX_Mul(v0, v0) - FX_Mul(v1, v1));
        v2 >>= FX32_SHIFT;

        *param4 = param1 - v2;

        if (*param4 < 0) {
            *param4 = 0;
        }

        *param5 = *param4 + (v2 * 2);

        if (*param5 > 255) {
            *param5 = 255;
        }
    }
}

static void ov5_021DB614(UnkStruct_ov5_021DB614 *param0, HBlankSystem *param1)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_ov5_021DB614));

    param0->bufferManagers[0] = BufferManager_New(4, param0->unk_2C[0], param0->unk_2C[1]);
    param0->bufferManagers[1] = BufferManager_New(4, param0->unk_2C[2], param0->unk_2C[3]);

    for (v0 = 0; v0 < 192; v0++) {
        param0->unk_2C[2][v0] = 255;
        param0->unk_2C[3][v0] = 255;
    }

    param0->unk_14 = param1;
    SysTask_ExecuteAfterVBlank(ov5_021DB7F8, param0, 120);
    param0->unk_24 = SysTask_ExecuteAfterVBlank(ov5_021DB78C, param0, 1024);
    param0->unk_28 = 0;
}

static void ov5_021DB690(UnkStruct_ov5_021DB614 *param0)
{
    int v0 = GX_GetVisibleWnd();

    GX_SetVisibleWnd(v0 & (~GX_WNDMASK_W1));
    HBlankTask_Delete(param0->unk_18);

    SysTask_Done(param0->unk_24);
    BufferManager_Delete(param0->bufferManagers[0]);
    BufferManager_Delete(param0->bufferManagers[1]);

    memset(param0, 0, sizeof(UnkStruct_ov5_021DB614));
}

static void ov5_021DB6E0(UnkStruct_ov5_021DB614 *param0, fx32 param1, fx32 param2, int param3, int param4, int param5)
{
    ov5_021D6538(&param0->unk_04, param1, param2, param5);

    param0->unk_00 = param3;
    param0->unk_02 = param4;
    param0->unk_28 = 1;

    ov5_021DB500(param0);
}

static BOOL ov5_021DB700(UnkStruct_ov5_021DB614 *param0)
{
    BOOL v0;

    if (param0->unk_28 == 0) {
        ov5_021DB7CC(param0);

        return 1;
    }

    v0 = ov5_021D6548(&param0->unk_04);
    ov5_021DB500(param0);

    if (v0 == 1) {
        param0->unk_28 = 0;
    }

    return v0;
}

static void ov5_021DB72C(HBlankTask *param0, void *param1)
{
    UnkStruct_ov5_021DB614 *v0 = param1;
    const u16 *v1[2];
    int v2;
    int v3;

    v2 = GX_GetVCount();

    for (v3 = 0; v3 < 2; v3++) {
        v1[v3] = BufferManager_GetReadBuffer(v0->bufferManagers[v3]);
    }

    if (v2 < 192) {
        v2++;

        if (v2 >= 192) {
            v2 -= 192;
        }

        if (GX_IsHBlank()) {
            G2_SetWnd1Position(v1[0][v2], 0, v1[1][v2], 192);
        }
    }
}

static void ov5_021DB78C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB614 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        BufferManager_SwapBuffers(v0->bufferManagers[v1]);
    }
}

static void ov5_021DB7A4(UnkStruct_ov5_021DB614 *param0)
{
    SysTask_ExecuteAfterVBlank(ov5_021DB7B8, param0, 128);
}

static void ov5_021DB7B8(SysTask *param0, void *param1)
{
    ov5_021DB690(param1);
    SysTask_Done(param0);
}

static void ov5_021DB7CC(UnkStruct_ov5_021DB614 *param0)
{
    const u16 *v0;
    u16 *v1;
    int v2;

    for (v2 = 0; v2 < 2; v2++) {
        v0 = BufferManager_GetReadBuffer(param0->bufferManagers[v2]);
        v1 = BufferManager_GetWriteBuffer(param0->bufferManagers[v2]);

        memcpy(v1, v0, sizeof(u16) * 192);
    }
}

static void ov5_021DB7F8(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DB614 *v0 = param1;
    GXWndPlane v1 = G2_GetWndOutsidePlane();
    int v2 = GX_GetVisibleWnd();

    G2_SetWnd1InsidePlane((GX_BLEND_ALL), 1);
    G2_SetWndOutsidePlane((GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v1.effect);
    G2_SetWnd1Position(0, 0, 255, 192);
    GX_SetVisibleWnd(v2 | GX_WNDMASK_W1);

    v0->unk_18 = HBlankSystem_StartTask(v0->unk_14, ov5_021DB72C, v0);

    SysTask_Done(param0);
}

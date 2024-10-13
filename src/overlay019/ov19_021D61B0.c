#include "overlay019/ov19_021D61B0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay019/funcptr_ov19_021D79B8.h"
#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D79F8.h"
#include "overlay019/ov19_021D8B54.h"
#include "overlay019/ov19_021DA270.h"
#include "overlay019/ov19_021DA814.h"
#include "overlay019/ov19_021DA92C.h"
#include "overlay019/ov19_021DB2FC.h"
#include "overlay019/ov19_021DB8E4.h"
#include "overlay019/ov19_021DC5F0.h"
#include "overlay019/ov19_021DCF88.h"
#include "overlay019/ov19_021DE3E8.h"
#include "overlay019/ov19_021DEC04.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021D8318.h"
#include "overlay019/struct_ov19_021D8E00.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DA8D8.h"
#include "overlay019/struct_ov19_021DA9E0.h"
#include "overlay019/struct_ov19_021DB6F0.h"
#include "overlay019/struct_ov19_021DBA9C.h"
#include "overlay019/struct_ov19_021DC680.h"
#include "overlay019/struct_ov19_021DCF88_decl.h"
#include "overlay019/struct_ov19_021DE3E8_decl.h"
#include "overlay019/struct_ov19_021DEC04_decl.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "enums.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

struct UnkStruct_ov19_021D61B0_t {
    SysTask *unk_00;
    SysTask *unk_04;
    SysTask *unk_08[4];
    CellActorCollection *unk_18;
    UnkStruct_0200C738 unk_1C;
    NNSG2dImagePaletteProxy unk_1A8;
    UnkStruct_02007768 *unk_1BC;
    BGL *unk_1C0;
    const UnkStruct_ov19_021D4DF0 *unk_1C4;
    UnkStruct_ov19_021DA384 unk_1C8;
    UnkStruct_ov19_021D8318 unk_494;
    UnkStruct_ov19_021D8E00 unk_5E24;
    UnkStruct_ov19_021DA8D8 unk_65BC;
    UnkStruct_ov19_021DA9E0 unk_6604;
    UnkStruct_ov19_021DB6F0 unk_6658;
    UnkStruct_ov19_021DBA9C unk_6690;
    UnkStruct_ov19_021DC680 unk_B290;
    UnkStruct_ov19_021DCF88 *unk_B408;
    UnkStruct_ov19_021DE3E8 *unk_B40C;
    UnkStruct_ov19_021DEC04 *unk_B410;
    const UnkStruct_ov19_021D5DF8 *unk_B414;
};

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    UnkStruct_ov19_021D61B0 *unk_0C;
    void *unk_10;
} UnkStruct_ov19_021D6640;

static void ov19_021D6474(SysTask *param0, void *param1);
static void ov19_021D6640(UnkStruct_ov19_021D6640 *param0);
static void ov19_021D6664(SysTask *param0, void *param1);
static void ov19_021D6694(SysTask *param0, void *param1);
static void ov19_021D671C(SysTask *param0, void *param1);
static void ov19_021D6780(SysTask *param0, void *param1);
static void ov19_021D67DC(SysTask *param0, void *param1);
static void ov19_021D6824(SysTask *param0, void *param1);
static void ov19_021D68E4(SysTask *param0, void *param1);
static void ov19_021D6940(SysTask *param0, void *param1);
static void ov19_021D69BC(SysTask *param0, void *param1);
static void ov19_021D6A1C(SysTask *param0, void *param1);
static void ov19_021D6A38(SysTask *param0, void *param1);
static void ov19_021D6A74(SysTask *param0, void *param1);
static void ov19_021D6AB0(SysTask *param0, void *param1);
static void ov19_021D6AEC(SysTask *param0, void *param1);
static void ov19_021D6B1C(SysTask *param0, void *param1);
static void ov19_021D6B6C(SysTask *param0, void *param1);
static void ov19_021D6BA8(SysTask *param0, void *param1);
static void ov19_021D6BF0(SysTask *param0, void *param1);
static void ov19_021D6C38(SysTask *param0, void *param1);
static void ov19_021D6C74(SysTask *param0, void *param1);
static void ov19_021D6CB0(SysTask *param0, void *param1);
static void ov19_021D6CF8(SysTask *param0, void *param1);
static void ov19_021D6D40(SysTask *param0, void *param1);
static void ov19_021D6D88(SysTask *param0, void *param1);
static void ov19_021D6DF8(SysTask *param0, void *param1);
static void ov19_021D6E48(SysTask *param0, void *param1);
static void ov19_021D6E70(SysTask *param0, void *param1);
static void ov19_021D6EA4(SysTask *param0, void *param1);
static void ov19_021D6EC0(SysTask *param0, void *param1);
static void ov19_021D6EDC(SysTask *param0, void *param1);
static void ov19_021D6F0C(SysTask *param0, void *param1);
static void ov19_021D6F3C(SysTask *param0, void *param1);
static void ov19_021D6F78(SysTask *param0, void *param1);
static void ov19_021D6FB0(SysTask *param0, void *param1);
static void ov19_021D6FEC(SysTask *param0, void *param1);
static void ov19_021D7028(SysTask *param0, void *param1);
static void ov19_021D70E8(SysTask *param0, void *param1);
static void ov19_021D7138(SysTask *param0, void *param1);
static void ov19_021D71BC(SysTask *param0, void *param1);
static void ov19_021D71F8(SysTask *param0, void *param1);
static void ov19_021D7248(SysTask *param0, void *param1);
static void ov19_021D7278(SysTask *param0, void *param1);
static void ov19_021D72E8(SysTask *param0, void *param1);
static void ov19_021D7324(SysTask *param0, void *param1);
static void ov19_021D7340(SysTask *param0, void *param1);
static void ov19_021D735C(SysTask *param0, void *param1);
static void ov19_021D7380(SysTask *param0, void *param1);
static void ov19_021D7398(SysTask *param0, void *param1);
static void ov19_021D73B0(SysTask *param0, void *param1);
static void ov19_021D73EC(SysTask *param0, void *param1);
static void ov19_021D7408(SysTask *param0, void *param1);
static void ov19_021D7424(SysTask *param0, void *param1);
static void ov19_021D7460(SysTask *param0, void *param1);
static void ov19_021D74B4(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D75CC(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2);
static void ov19_021D76FC(void);
static void ov19_021D7774(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2);
static int ov19_021D77A4(u32 param0, u32 param1);
static void ov19_021D7970(void);
static void ov19_021D797C(void);

BOOL ov19_021D61B0(UnkStruct_ov19_021D61B0 **param0, const UnkStruct_ov19_021D4DF0 *param1, const UnkStruct_ov19_021D5DF8 *param2)
{
    UnkStruct_ov19_021D61B0 *v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021D61B0));

    if (v0 != NULL) {
        v0->unk_1C4 = param1;
        v0->unk_1C0 = sub_02018340(10);

        if (v0->unk_1C0 != NULL) {
            u32 v1;
            BOOL v2 = 1;
            NARC *v3;

            v3 = NARC_ctor(NARC_INDEX_GRAPHIC__BOX, 10);

            SetMainCallback(NULL, NULL);
            DisableHBlank();
            GXLayers_DisableEngineALayers();
            GXLayers_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);
            GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_64K);
            GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
            NNS_G2dInitOamManagerModule();

            sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 10);
            v0->unk_18 = sub_020095C4(128, &v0->unk_1C, 10);
            sub_0200964C(&(v0->unk_1C), 0, (384 << FX32_SHIFT));

            NNS_G2dInitImagePaletteProxy(&(v0->unk_1A8));

            sub_0200716C(v3, 26, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 10, &(v0->unk_1A8));
            Font_UseImmediateGlyphAccess(FONT_SYSTEM, 10);

            v0->unk_1BC = sub_0200762C(10);

            for (v1 = 0; v1 < 4; v1++) {
                v0->unk_08[v1] = NULL;
            }

            ov19_021D7970();
            *param0 = v0;

            v2 &= ov19_021DA270(&(v0->unk_1C8), v0, v0->unk_1C4, v0->unk_18, v3);
            v2 &= ov19_021D79F8(&(v0->unk_494), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18);
            v2 &= ov19_021D8B54(&(v0->unk_5E24), v0, v0->unk_1C4, v0->unk_18, v3);
            v2 &= ov19_021DA814(&(v0->unk_65BC), v0, v0->unk_1C4, v0->unk_18, v3);
            v2 &= ov19_021DA92C(&(v0->unk_6604), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, ov19_021D5DE8(param2), v3);
            v2 &= ov19_021DB2FC(&(v0->unk_6658), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, ov19_021D5DE8(param2), ov19_021D5DF0(param2), ov19_021D5DF8(param2), v3);
            v2 &= ov19_021DB8E4(&(v0->unk_6690), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, v3);
            v2 &= ov19_021DC5F0(&(v0->unk_B290), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, v3);
            v2 &= ov19_021DCF88(&(v0->unk_B408), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18);
            v2 &= ov19_021DE3E8(&(v0->unk_B40C), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18);
            v2 &= ov19_021DEC04(&(v0->unk_B410), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, ov19_021D5DE8(param2), v3);

            v0->unk_B414 = param2;
            v0->unk_00 = SysTask_Start(ov19_021D6474, v0, 2);
            v0->unk_04 = ov19_021D77C8(ov19_021D6664, v0, 1);

            NARC_dtor(v3);

            return v2;
        }
    }

    return 0;
}

static void ov19_021D6474(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0 = (UnkStruct_ov19_021D61B0 *)param1;

    ov19_021D797C();

    G3X_Reset();
    G3X_ResetMtxStack();
    NNS_G2dSetupSoftwareSpriteCamera();

    sub_02007768(v0->unk_1BC);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

void ov19_021D64A0(UnkStruct_ov19_021D61B0 *param0)
{
    SetMainCallback(NULL, NULL);
    SysTask_Done(param0->unk_00);
    SysTask_Done(param0->unk_04);

    ov19_021DECAC(param0->unk_B410);
    ov19_021DE440(param0->unk_B40C);
    ov19_021DD078(param0->unk_B408);
    ov19_021DC680(&(param0->unk_B290));
    ov19_021DBAD0(&(param0->unk_6690));
    ov19_021DB370(&(param0->unk_6658));
    ov19_021DA9E0(&(param0->unk_6604));
    ov19_021DA8D8(&(param0->unk_65BC));
    ov19_021D8E84(&(param0->unk_5E24));
    ov19_021D7A74(&(param0->unk_494));
    ov19_021DA384(&(param0->unk_1C8));

    CellActorCollection_Delete(param0->unk_18);
    sub_02019044(param0->unk_1C0, 3);
    sub_02019044(param0->unk_1C0, 2);
    sub_02019044(param0->unk_1C0, 1);
    sub_02019044(param0->unk_1C0, 4);
    sub_02007B6C(param0->unk_1BC);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);
    Heap_FreeToHeap(param0->unk_1C0);
    Heap_FreeToHeap(param0);
    sub_0200A878();
}

void ov19_021D6594(UnkStruct_ov19_021D61B0 *param0, u32 param1)
{
    static const struct {
        SysTaskFunc unk_00;
        u32 unk_04;
    } v0[] = {
        { ov19_021D6694, 0 },
        { ov19_021D671C, 0 },
        { ov19_021D6780, 0 },
        { ov19_021D67DC, 0 },
        { ov19_021D6824, 0 },
        { ov19_021D68E4, 0 },
        { ov19_021D6940, 0 },
        { ov19_021D69BC, 0 },
        { ov19_021D6A1C, 0 },
        { ov19_021D6A38, 0 },
        { ov19_021D6A74, 0 },
        { ov19_021D6AB0, 0 },
        { ov19_021D6AEC, 0 },
        { ov19_021D6B1C, 0 },
        { ov19_021D6B6C, 0 },
        { ov19_021D6BA8, 0 },
        { ov19_021D6BF0, 0 },
        { ov19_021D6C38, 0 },
        { ov19_021D6C74, 0 },
        { ov19_021D6CB0, 0 },
        { ov19_021D6CF8, 0 },
        { ov19_021D6D40, 0 },
        { ov19_021D6D88, 0 },
        { ov19_021D6DF8, 0 },
        { ov19_021D6E48, 0 },
        { ov19_021D6E70, 0 },
        { ov19_021D6EA4, 0 },
        { ov19_021D6EC0, 0 },
        { ov19_021D6EDC, 0 },
        { ov19_021D6F0C, 0 },
        { ov19_021D6F3C, 0 },
        { ov19_021D6F78, 0 },
        { ov19_021D6FB0, 0 },
        { ov19_021D6FEC, 0 },
        { ov19_021D7028, 0 },
        { ov19_021D70E8, 0 },
        { ov19_021D7138, 0 },
        { ov19_021D71BC, 0 },
        { ov19_021D71F8, 0 },
        { ov19_021D7248, 0 },
        { ov19_021D7278, 0 },
        { ov19_021D72E8, 0 },
        { ov19_021D7324, 0 },
        { ov19_021D7340, 0 },
        { ov19_021D735C, 0 },
        { ov19_021D7380, 0 },
        { ov19_021D7398, 0 },
        { ov19_021D73B0, 0 },
        { ov19_021D73EC, 0 },
        { ov19_021D7408, 0 },
        { ov19_021D7424, 0 },
        { ov19_021D7460, 0 },
    };

    if (param1 < NELEMS(v0)) {
        UnkStruct_ov19_021D6640 *v1;
        u32 v2;

        for (v2 = 0; v2 < 4; v2++) {
            if (param0->unk_08[v2] == NULL) {
                v1 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021D6640) + v0[param1].unk_04);

                if (v1 != NULL) {
                    v1->unk_00 = param1;
                    v1->unk_04 = v2;
                    v1->unk_06 = 0;
                    v1->unk_0C = param0;
                    v1->unk_10 = ((u8 *)(v1) + v0[param1].unk_04);

                    param0->unk_08[v2] = SysTask_Start(v0[param1].unk_00, v1, 1);
                } else {
                    GF_ASSERT(0);
                }

                break;
            }
        }
    } else {
        GF_ASSERT(0);
    }
}

BOOL ov19_021D6600(UnkStruct_ov19_021D61B0 *param0, u32 param1)
{
    UnkStruct_ov19_021D6640 *v0;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_08[v1] != NULL) {
            v0 = SysTask_GetParam(param0->unk_08[v1]);

            if (v0->unk_00 == param1) {
                return 0;
            }
        }
    }

    return 1;
}

BOOL ov19_021D6628(UnkStruct_ov19_021D61B0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_08[v0] != NULL) {
            return 0;
        }
    }

    return 1;
}

static void ov19_021D6640(UnkStruct_ov19_021D6640 *param0)
{
    UnkStruct_ov19_021D61B0 *v0 = param0->unk_0C;

    SysTask_Done(v0->unk_08[param0->unk_04]);
    v0->unk_08[param0->unk_04] = NULL;
    Heap_FreeToHeap(param0);
}

static void ov19_021D6664(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0 = (UnkStruct_ov19_021D61B0 *)param1;

    ov19_021DAA80(&v0->unk_6604);

    CellActorCollection_Update(v0->unk_18);
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov19_021D6694(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0: {
        NARC *v3 = NARC_ctor(NARC_INDEX_GRAPHIC__BOX, 10);

        ov19_021D74B4(v0, v1);
        ov19_021D75CC(v0, v1, v3);
        ov19_021D7774(v0, v1, v3);
        NARC_dtor(v3);
    }

        if (ov19_021D5E08(v1) != 4) {
            ov19_021DAA90(&v0->unk_6604);
            v2->unk_06++;
        } else {
            ov19_021D6640(v2);
        }
        break;
    case 1:
        if (ov19_021DAAC4(&v0->unk_6604)) {
            ov19_021DAF98(&(v0->unk_6604));
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D671C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        Sound_PlayEffect(1549);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 0x6, 0xa);
        sub_0200F174(0, 1, 1, 0x0, 8, 1, 10);
        v2->unk_06++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6780(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 0x6, 0xa);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 10);
        v2->unk_06++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D67DC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 10);
        v2->unk_06++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6824(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021DE9B8(v0->unk_B40C);
        v2->unk_06++;
    case 1:
        if (ov19_021DE9E4(v0->unk_B40C) == 0) {
            break;
        }

        v2->unk_06++;
    case 2: {
        int v3 = ov19_021D77A4(v0->unk_494.unk_00, v1->unk_40.unk_00);

        ov19_021D7B4C(&v0->unk_494, &v1->unk_40, v3, 1);
        ov19_021D7D70(&v0->unk_494, &v1->unk_40, v3);
        Sound_PlayEffect(1500);
        v2->unk_06++;
    }
    case 3:
        if (ov19_021D7E1C(&v0->unk_494) == 0) {
            break;
        }

        ov19_021DE7A0(v0->unk_B40C);
        v2->unk_06++;
    case 4:
        if (ov19_021DE800(v0->unk_B40C) == 0) {
            break;
        }

        ov19_021D6640(v2);
        break;
    }
}

static void ov19_021D68E4(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        Sound_PlayEffect(1500);
        ov19_021D8F60(&(v0->unk_5E24));
        ov19_021DE7A0(v0->unk_B40C);
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D9074(&(v0->unk_5E24))
            && ov19_021DE800(v0->unk_B40C)) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6940(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    if (ov19_021D5E08(v1) != 4) {
        switch (v2->unk_06) {
        case 0:
            ov19_021DAFF8(&(v0->unk_6604));
            v2->unk_06++;
            break;
        case 1:
            if (ov19_021DB220(&(v0->unk_6604))) {
                ov19_021D6640(v2);
            }
            break;
        }
    } else {
        switch (v2->unk_06) {
        case 0:
            ov19_021DEE34(v0->unk_B410);
            v2->unk_06++;
            break;
        case 1:
            if (ov19_021DEE84(v0->unk_B410)) {
                ov19_021D6640(v2);
            }
            break;
        }
    }
}

static void ov19_021D69BC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    if (ov19_021D5E38(v1) == 2) {
        ov19_021D9A64(&v0->unk_5E24);
    } else {
        switch (ov19_021D5E10(v1)) {
        case 0:
            ov19_021D8A24(&v0->unk_494);
            break;
        case 1:
            ov19_021DCC14(&v0->unk_B290);
            break;
        }
    }

    ov19_021DB224(&v0->unk_6604);
    ov19_021D6640(v2);
}

static void ov19_021D6A1C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    ov19_021DB078(&(v0->unk_6604));
    ov19_021D6640(v2);
}

static void ov19_021D6A38(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9230(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D9278(&(v0->unk_5E24))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6A74(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9368(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D939C(&(v0->unk_5E24))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6AB0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D94B4(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D9530(&(v0->unk_5E24))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6AEC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9900(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        ov19_021D6640(v2);
        break;
    }
}

static void ov19_021D6B1C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021DCAC0(&(v0->unk_B290));
        v2->unk_06++;
        break;
    case 1:
        ov19_021DC834(&(v0->unk_B290));
        v2->unk_06++;
        break;
    case 2:
        if (ov19_021DC95C(&(v0->unk_B290))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6B6C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9938(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D995C(&(v0->unk_5E24))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6BA8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D8860(&(v0->unk_494), ov19_021D5E24(v1));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D8898(&(v0->unk_494))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6BF0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021DCAFC(&(v0->unk_B290), ov19_021D5E2C(v1));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021DCB20(&(v0->unk_B290))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6C38(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021DC29C(&(v0->unk_6690));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021DC364(&(v0->unk_6690))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6C74(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021DC3F4(&(v0->unk_6690));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021DC43C(&(v0->unk_6690))) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6CB0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9B34(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D9B64(&(v0->unk_5E24))) {
            ov19_021DB2B0(&(v0->unk_6604));
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6CF8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9BD4(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D9C04(&(v0->unk_5E24))) {
            ov19_021DB2B0(&(v0->unk_6604));
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6D40(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9C74(&(v0->unk_5E24));
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021D9CA0(&(v0->unk_5E24))) {
            ov19_021DB2B0(&(v0->unk_6604));
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6D88(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;
    u32 v3;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;
    v3 = ov19_021D5E74(v1);

    if (ov19_021D5E38(v1) == 2) {
        ov19_021D9AB0(&v0->unk_5E24, v3);
    } else {
        switch (ov19_021D5E10(v1)) {
        case 1:
            ov19_021DCBDC(&v0->unk_B290, ov19_021D5E2C(v1), v3);
            break;
        case 0:
            ov19_021D8988(&v0->unk_494, ov19_021D5E24(v1), v3);
            break;
        }
    }

    ov19_021D6640(v2);
}

static void ov19_021D6DF8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;
    u32 v3;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        ov19_021D9D10(&v0->unk_5E24);
        ov19_021DEB18(v0->unk_B40C);
        v2->unk_06++;
        break;
    case 1:
        if (ov19_021DEB60(v0->unk_B40C)) {
            ov19_021D9D28(&v0->unk_5E24);
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D6E48(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DB448(&(v0->unk_6658), ov19_021D5E94(v2));
    ov19_021D6640(v1);
}

static void ov19_021D6E70(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DB448(&(v0->unk_6658), ov19_021D5E94(v2));
    ov19_021DB57C(&(v0->unk_6658), &(v2->unk_74));
    ov19_021D6640(v1);
}

static void ov19_021D6EA4(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;

    ov19_021DB6F0(&(v0->unk_6658));
    ov19_021D6640(v1);
}

static void ov19_021D6EC0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;

    ov19_021DB724(&(v0->unk_6658));
    ov19_021D6640(v1);
}

static void ov19_021D6EDC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    Sound_PlayEffect(1500);
    ov19_021DB748(&(v0->unk_6658), &(v2->unk_74));
    ov19_021D6640(v1);
}

static void ov19_021D6F0C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    Sound_PlayEffect(1501);
    ov19_021DB790(&(v0->unk_6658), &(v2->unk_74));
    ov19_021D6640(v1);
}

static void ov19_021D6F3C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DBB48(&(v0->unk_6690));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DBB68(&(v0->unk_6690))) {
            ov19_021D6640(v1);
        }
    }
}

static void ov19_021D6F78(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        Sound_PlayEffect(1501);
        ov19_021DBB70(&(v0->unk_6690));
        v1->unk_06++;
        break;
    case 1:
        ov19_021D6640(v1);
    }
}

static void ov19_021D6FB0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DBB94(&(v0->unk_6690));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DBBA0(&(v0->unk_6690))) {
            ov19_021D6640(v1);
        }
    }
}

static void ov19_021D6FEC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021D8350(&(v0->unk_494));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021D8370(&(v0->unk_494))) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D7028(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        Sound_PlayEffect(1501);
        ov19_021D9690(&(v0->unk_5E24));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021D9704(&(v0->unk_5E24))) {
            switch (ov19_021D5E10(v2)) {
            case 3:
                ov19_021DA8FC(&(v0->unk_65BC), 1);
                break;
            case 4:
                ov19_021DA8FC(&(v0->unk_65BC), 2);
                break;
            }

            v1->unk_08 = 0;
            v1->unk_06++;
        }
        break;
    case 2:
        if (++(v1->unk_08) >= 6) {
            ov19_021D97FC(&(v0->unk_5E24));
            ov19_021DA8FC(&(v0->unk_65BC), 0);
            v1->unk_06++;
        }
        break;
    case 3:
        if (ov19_021D9858(&(v0->unk_5E24))) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D70E8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        Sound_PlayEffect(1587);
        ov19_021D99F4(&(v0->unk_5E24));
        ov19_021DC6C8(&(v0->unk_B290));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DC6F8(&(v0->unk_B290))) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D7138(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DE9B8(v0->unk_B40C);
        v1->unk_06++;
    case 1:
        if (ov19_021DE9E4(v0->unk_B40C) == 0) {
            break;
        }

        v1->unk_06++;
    case 2:
        Sound_PlayEffect(1588);
        ov19_021DC768(&(v0->unk_B290));
        v1->unk_06++;
        break;
    case 3:
        if (ov19_021DC788(&(v0->unk_B290))) {
            ov19_021D9A2C(&(v0->unk_5E24));
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D71BC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DC834(&(v0->unk_B290));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DC95C(&(v0->unk_B290))) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D71F8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        if (ov19_021D5E10(v2) == 1) {
            ov19_021DC96C(&v0->unk_B290);
            v1->unk_06++;
            break;
        }

        ov19_021D6640(v1);
        break;
    case 1:
        if (ov19_021DCA08(&v0->unk_B290)) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D7248(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D8938(&v0->unk_494);
    ov19_021DCBA0(&v0->unk_B290);
    ov19_021D9A8C(&v0->unk_5E24);
    ov19_021D6640(v1);
}

static void ov19_021D7278(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DD378(v0->unk_B408);
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DD45C(v0->unk_B408)) {
            if (v2->unk_9C.unk_00 == 0) {
                ov19_021D6640(v1);
            } else {
                ov19_021DD714(v0->unk_B408);
                v1->unk_06++;
            }
        }
        break;
    case 2:
        if (ov19_021DD740(v0->unk_B408)) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D72E8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DD768(v0->unk_B408);
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DD820(v0->unk_B408)) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D7324(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DE2F4(v0->unk_B408);
    ov19_021D6640(v1);
}

static void ov19_021D7340(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D9AEC(&(v0->unk_5E24));
    ov19_021D6640(v1);
}

static void ov19_021D735C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D9B10(&(v0->unk_5E24));
    ov19_021D8A6C(&(v0->unk_494));
    ov19_021D6640(v1);
}

static void ov19_021D7380(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D8B14(&(v0->unk_494));
    ov19_021D6640(v1);
}

static void ov19_021D7398(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D8A6C(&(v0->unk_494));
    ov19_021D6640(v1);
}

static void ov19_021D73B0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021D9230(&(v0->unk_5E24));
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021D9278(&(v0->unk_5E24))) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D73EC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DEDDC(v0->unk_B410, 0);
    ov19_021D6640(v1);
}

static void ov19_021D7408(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DEDDC(v0->unk_B410, 1);
    ov19_021D6640(v1);
}

static void ov19_021D7424(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    UnkStruct_ov19_021D6640 *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->unk_06) {
    case 0:
        ov19_021DEE88(v0->unk_B410);
        v1->unk_06++;
        break;
    case 1:
        if (ov19_021DEEA8(v0->unk_B410)) {
            ov19_021D6640(v1);
        }
        break;
    }
}

static void ov19_021D7460(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    UnkStruct_ov19_021D6640 *v2;

    v2 = (UnkStruct_ov19_021D6640 *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->unk_06) {
    case 0:
        Sound_PlayEffect(1550);
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 10);
        v2->unk_06++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            ov19_021D6640(v2);
        }
        break;
    }
}

static void ov19_021D74B4(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };

    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };

    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        0,
        0,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v3 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xe000),
        (GX_BG_CHARBASE_0x18000),
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v4 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xe800),
        (GX_BG_CHARBASE_0x00000),
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v5 = {
        0,
        0,
        0x1000,
        0,
        3,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xf000),
        (GX_BG_CHARBASE_0x10000),
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v6 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xf000),
        (GX_BG_CHARBASE_0x10000),
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v7 = {
        0,
        0,
        0x0,
        0,
        3,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xd000),
        (GX_BG_CHARBASE_0x00000),
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v8 = {
        0,
        0,
        0x0,
        0,
        3,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xe000),
        (GX_BG_CHARBASE_0x00000),
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v9 = {
        0,
        0,
        0x0,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0xf800),
        (GX_BG_CHARBASE_0x00000),
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v10 = {
        0,
        0,
        0x0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    static const UnkStruct_ov97_0222DB78 v11 = {
        0,
        0,
        0x0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };

    GXLayers_SetBanks(&v0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);

    sub_02018368(&v1);
    sub_020183C4(param0->unk_1C0, 1, &v3, 0);
    sub_020183C4(param0->unk_1C0, 2, &v4, 0);
    sub_020183C4(param0->unk_1C0, 3, &v5, 0);

    if (ov19_021D5E08(param1) != 4) {
        sub_020183C4(param0->unk_1C0, 4, &v6, 0);
        sub_020183C4(param0->unk_1C0, 5, &v7, 0);
        sub_020183C4(param0->unk_1C0, 6, &v8, 0);
        sub_020183C4(param0->unk_1C0, 7, &v9, 0);
    } else {
        sub_020183C4(param0->unk_1C0, 4, &v6, 0);
        sub_020183C4(param0->unk_1C0, 5, &v10, 0);
        sub_020183C4(param0->unk_1C0, 6, &v11, 0);
        sub_020183C4(param0->unk_1C0, 7, &v9, 0);
    }

    ov19_021D76FC();
}

static void ov19_021D75CC(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2)
{
    sub_020070E8(param2, 4, param0->unk_1C0, 1, 0, 0, 1, 10);
    sub_02019CB8(param0->unk_1C0, 1, 0x0, 0, 0, 32, 32, 17);
    sub_02019448(param0->unk_1C0, 1);
    sub_020070E8(param2, 1, param0->unk_1C0, 2, 0, 0, 1, 10);
    sub_02007130(param2, 5, 0, 0, 0x20 * 7, 10);

    if (ov19_021D5E08(param1) != 4) {
        sub_0200710C(param2, 0, param0->unk_1C0, 2, 0, 0, 1, 10);
    }

    ov19_021D7A9C(&param0->unk_494);
    ov19_021D7B4C(&param0->unk_494, &param1->unk_40, 0, 1);
    ov19_021DAADC(&(param0->unk_6604));
    ov19_021DB3C4(&(param0->unk_6658));
    ov19_021DBA9C(&(param0->unk_6690));
    ov19_021DD114(param0->unk_B408, param2);
    ov19_021DECE8(param0->unk_B410, param2);

    if (ov19_021D5E10(param1) == 1) {
        ov19_021DC6A0(&(param0->unk_B290));
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GX_DispOn();
}

static void ov19_021D76FC(void)
{
    NNS_G3dInit();
    G3X_InitMtxStack();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov19_021D7774(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2)
{
    ov19_021D8C1C(&param0->unk_5E24, param2);
    ov19_021DA864(&param0->unk_65BC, param2);
    ov19_021DE584(param0->unk_B40C);
}

static int ov19_021D77A4(u32 param0, u32 param1)
{
    int v0, v1;

    if (param1 > param0) {
        v0 = param1 - param0;
        v1 = param0 + (18 - param1);
    } else {
        v0 = param1 + (18 - param0);
        v1 = param0 - param1;
    }

    return (v0 >= v1) ? -1 : 1;
}

SysTask *ov19_021D77C8(SysTaskFunc param0, void *param1, u32 param2)
{
    return SysTask_ExecuteOnVBlank(param0, param1, param2);
}

NNSG2dImagePaletteProxy *ov19_021D77D0(UnkStruct_ov19_021D61B0 *param0)
{
    return &(param0->unk_1A8);
}

UnkStruct_ov19_021DA384 *ov19_021D77D8(UnkStruct_ov19_021D61B0 *param0)
{
    return &(param0->unk_1C8);
}

UnkStruct_ov19_021D8318 *ov19_021D77E0(UnkStruct_ov19_021D61B0 *param0)
{
    return &(param0->unk_494);
}

UnkStruct_ov19_021DC680 *ov19_021D77E8(UnkStruct_ov19_021D61B0 *param0)
{
    return &(param0->unk_B290);
}

UnkStruct_ov19_021D8E00 *ov19_021D77F4(UnkStruct_ov19_021D61B0 *param0)
{
    return &(param0->unk_5E24);
}

UnkStruct_ov19_021DE3E8 *ov19_021D7800(UnkStruct_ov19_021D61B0 *param0)
{
    return param0->unk_B40C;
}

UnkStruct_ov19_021DBA9C *ov19_021D780C(UnkStruct_ov19_021D61B0 *param0)
{
    return &(param0->unk_6690);
}

UnkStruct_02007768 *ov19_021D7818(UnkStruct_ov19_021D61B0 *param0)
{
    return param0->unk_1BC;
}

int ov19_021D7820(UnkStruct_ov19_021D61B0 *param0)
{
    if (ov19_021D5E08(param0->unk_1C4) != 4) {
        return 0;
    } else {
        return -44;
    }
}

void ov19_021D783C(CellActorResourceData *param0, NNSG2dImageProxy *param1, NNSG2dImagePaletteProxy *param2, NNSG2dCellDataBank *param3, NNSG2dCellAnimBankData *param4, u32 param5)
{
    param0->imageProxy = param1;
    param0->paletteProxy = param2;
    param0->cellBank = param3;
    param0->cellAnimBank = param4;
    param0->priority = param5;
    param0->charData = NULL;
    param0->multiCellBank = NULL;
    param0->multiCellAnimBank = NULL;
    param0->isVRamTransfer = 0;
}

CellActor *ov19_021D785C(CellActorCollection *param0, CellActorResourceData *param1, u32 param2, u32 param3, u32 param4, int param5)
{
    CellActorInitParams v0;
    CellActor *v1;

    v0.collection = param0;
    v0.resourceData = param1;
    v0.position.x = param2 * FX32_ONE;
    v0.position.y = param3 * FX32_ONE;
    v0.position.z = 0;
    v0.priority = param4;
    v0.vramType = param5;
    v0.heapID = 10;

    {
        OSIntrMode v2 = OS_DisableInterrupts();

        v1 = CellActorCollection_Add(&v0);
        OS_RestoreInterrupts(v2);
    }

    if (v1) {
        CellActor_SetAnimateFlag(v1, 1);
        CellActor_SetAnimSpeed(v1, (FX32_ONE * (2 / 2)));
    }

    return v1;
}

void ov19_021D78AC(CellActor *param0, u32 param1)
{
    OSIntrMode v0 = OS_DisableInterrupts();

    CellActor_SetPriority(param0, param1);
    OS_RestoreInterrupts(v0);
}

void ov19_021D78C8(const u16 *param0, u16 *param1, u32 param2, u16 param3, u32 param4)
{
    int v0, v1, v2;
    int v3, v4, v5;
    int v6;

    v3 = (param3 & 0x1f) << 8;
    v4 = ((param3 >> 5) & 0x1f) << 8;
    v5 = ((param3 >> 10) & 0x1f) << 8;

    while (param2--) {
        v0 = ((*param0) & 0x1f) << 8;
        v1 = (((*param0) >> 5) & 0x1f) << 8;
        v2 = (((*param0) >> 10) & 0x1f) << 8;

        v0 += (((v3 - v0) / 16) * param4);
        v1 += (((v4 - v1) / 16) * param4);
        v2 += (((v5 - v2) / 16) * param4);

        v0 = (v0 >> 8) & 0x1f;
        v1 = (v1 >> 8) & 0x1f;
        v2 = (v2 >> 8) & 0x1f;

        *param1 = ((v2 << 10) | (v1 << 5) | v0);

        param0++;
        param1++;
    }
}

const UnkStruct_ov19_021D5DF8 *ov19_021D7964(UnkStruct_ov19_021D61B0 *param0)
{
    return param0->unk_B414;
}

static u32 Unk_ov19_021E05EC = 0;

static struct {
    UnkFuncPtr_ov19_021D79B8 unk_00;
    void *unk_04;
    void *unk_08;
} Unk_ov19_021E05F0[32];

static void ov19_021D7970(void)
{
    Unk_ov19_021E05EC = 0;
}

static void ov19_021D797C(void)
{
    if (Unk_ov19_021E05EC) {
        u32 i;

        for (i = 0; i < Unk_ov19_021E05EC; i++) {
            Heap_FreeToHeap(Unk_ov19_021E05F0[i].unk_08);

            if (Unk_ov19_021E05F0[i].unk_00) {
                Unk_ov19_021E05F0[i].unk_00(Unk_ov19_021E05F0[i].unk_04);
            }
        }

        Unk_ov19_021E05EC = 0;
    }
}

void ov19_021D79B8(void *param0, UnkFuncPtr_ov19_021D79B8 param1, void *param2)
{
    GF_ASSERT(Unk_ov19_021E05EC < 32);

    Unk_ov19_021E05F0[Unk_ov19_021E05EC].unk_08 = param0;
    Unk_ov19_021E05F0[Unk_ov19_021E05EC].unk_00 = param1;
    Unk_ov19_021E05F0[Unk_ov19_021E05EC].unk_04 = param2;
    Unk_ov19_021E05EC++;
}

#include "overlay079/ov79_021D20F4.h"

#include <nitro.h>
#include <string.h>

#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay079/struct_ov79_021D0E1C.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "communication_system.h"
#include "gx_layers.h"
#include "render_oam.h"
#include "unk_0200C6E4.h"
#include "unk_020393C8.h"
#include "unk_02098FFC.h"
#include "vram_transfer.h"

void ov79_021D20F4(UnkStruct_ov79_021D0E1C *param0);
void ov79_021D21CC(UnkStruct_ov79_021D0E1C *param0);
void ov79_021D21F8(UnkStruct_ov79_021D0E1C *param0);

void ov79_021D20F4(UnkStruct_ov79_021D0E1C *param0)
{
    VramTransfer_New(32, param0->unk_00);

    param0->unk_1B8 = sub_0200C6E4(param0->unk_00);
    param0->unk_1BC = sub_0200C704(param0->unk_1B8);

    {
        UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        UnkStruct_ov104_022412F4 v1 = {
            3,
            1024,
            1024,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        sub_0200C73C(param0->unk_1B8, &v0, &v1, 32);
        sub_0200C7C0(param0->unk_1B8, param0->unk_1BC, 3 + 5 + 6);

        RenderOam_ClearMain(param0->unk_00);
        RenderOam_ClearSub(param0->unk_00);
    }

    {
        UnkStruct_ov7_0224F2EC v2 = {
            "data/porucase_chr.resdat",
            "data/porucase_pal.resdat",
            "data/porucase_cell.resdat",
            "data/porucase_canm.resdat",
            NULL,
            NULL,
            "data/porucase_celact.cldat"
        };

        sub_0200C8F0(param0->unk_1B8, param0->unk_1BC, &v2);
    }

    param0->unk_1F8 = sub_02098FFC(param0->unk_00, 1, 1, (NNS_G2D_VRAM_TYPE_2DMAIN), 0);

    if (CommSys_IsInitialized()) {
        sub_02039734();
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov79_021D21CC(UnkStruct_ov79_021D0E1C *param0)
{
    sub_0209903C(param0->unk_1F8);
    sub_0200C8B0(param0->unk_1B8, param0->unk_1BC);
    sub_0200C8D4(param0->unk_1B8);
    VramTransfer_Free();
}

void ov79_021D21F8(UnkStruct_ov79_021D0E1C *param0)
{
    sub_0200C7EC(param0->unk_1BC);
    sub_02099160(param0->unk_1F8);
}

void ov79_021D2214(UnkStruct_ov79_021D0E1C *param0, BOOL param1)
{
    if (param1 == 0) {
        CellActor_SetExplicitPalette(param0->unk_1C0[0], 0);
        CellActor_SetAnimateFlag(param0->unk_1C0[1], 1);
        CellActor_SetAnimateFlag(param0->unk_1C0[2], 1);
    } else {
        CellActor_SetExplicitPalette(param0->unk_1C0[0], 9);
        CellActor_SetAnimateFlag(param0->unk_1C0[1], 0);
        CellActor_SetAnimateFlag(param0->unk_1C0[2], 0);
    }
}

#include <nitro.h>
#include <string.h>

#include "overlay080/struct_ov80_021D2A08.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "gx_layers.h"
#include "sprite_renderer.h"
#include "sprite_resource.h"
#include "unk_0201DBEC.h"

void ov80_021D2A08(UnkStruct_ov80_021D2A08 *param0);
void ov80_021D2AC0(UnkStruct_ov80_021D2A08 *param0);
void ov80_021D2AE0(UnkStruct_ov80_021D2A08 *param0);
void ov80_021D2AEC(UnkStruct_ov80_021D2A08 *param0);

void ov80_021D2A08(UnkStruct_ov80_021D2A08 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    VRAMTransferManager_New(32, param0->unk_04);

    param0->unk_D8 = SpriteRenderer_Create(param0->unk_04);
    param0->unk_DC = SpriteRenderer_CreateGfxHandler(param0->unk_D8);

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
            5,
            1024,
            1024,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        SpriteRenderer_CreateOamCharPlttManagers(param0->unk_D8, &v0, &v1, 32);
        SpriteRenderer_CreateCellActorList(param0->unk_D8, param0->unk_DC, (1 + 1 + 1 + 5 + 20));
    }

    {
        SpriteResourceDataPath v2 = {
            "data/tmapn_chr.resdat",
            "data/tmapn_pal.resdat",
            "data/tmapn_cell.resdat",
            "data/tmapn_canm.resdat",
            NULL,
            NULL,
            "data/tmapn_celact.cldat"
        };

        SpriteRenderer_LoadSpriteResourceData(param0->unk_D8, param0->unk_DC, &v2);
    }
}

void ov80_021D2AC0(UnkStruct_ov80_021D2A08 *param0)
{
    SpriteRenderer_DeleteGfxHandler(param0->unk_D8, param0->unk_DC);
    SpriteRenderer_Free(param0->unk_D8);
    VRAMTransferManager_Destroy();
}

void ov80_021D2AE0(UnkStruct_ov80_021D2A08 *param0)
{
    SpriteGfxHandler_UpdateCellActorCollection(param0->unk_DC);
}

void ov80_021D2AEC(UnkStruct_ov80_021D2A08 *param0)
{
    OAMManager_ApplyAndResetBuffers();
}

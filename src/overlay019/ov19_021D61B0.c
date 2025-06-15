#include "overlay019/ov19_021D61B0.h"

#include <nitro.h>
#include <string.h>

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

#include "bg_window.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"

struct UnkStruct_ov19_021D61B0_t {
    SysTask *unk_00;
    SysTask *unk_04;
    SysTask *unk_08[4];
    SpriteList *unk_18;
    G2dRenderer unk_1C;
    NNSG2dImagePaletteProxy unk_1A8;
    PokemonSpriteManager *unk_1BC;
    BgConfig *unk_1C0;
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
    enum BoxGraphicsFunctions function;
    u16 unk_04;
    u16 state;
    u16 unk_08;
    u16 unk_0A;
    UnkStruct_ov19_021D61B0 *unk_0C;
    void *unk_10;
} BoxTaskParams;

static void ov19_021D6474(SysTask *param0, void *param1);
static void BoxTaskParams_Free(BoxTaskParams *params);
static void ov19_021D6664(SysTask *param0, void *param1);
static void ov19_021D6694(SysTask *param0, void *param1);
static void BoxGraphics_ScreenFadeBothToBlackLogIn(SysTask *task, void *param1);
static void BoxGraphics_ScreenFadeBothToBlack1(SysTask *task, void *param1);
static void BoxGraphics_ScreenFadeBothToBlack2(SysTask *task, void *param1);
static void BoxGraphics_ChangeToNewBox(SysTask *param0, void *param1);
static void BoxGraphics_MoveCursor(SysTask *param0, void *param1);
static void BoxGraphics_PreviewMon(SysTask *param0, void *param1);
static void ov19_021D69BC(SysTask *param0, void *param1);
static void ov19_021D6A1C(SysTask *param0, void *param1);
static void BoxGraphics_PickUpMonIntoCursor(SysTask *param0, void *param1);
static void BoxGraphics_PlaceMonDownFromCursor(SysTask *param0, void *param1);
static void ov19_021D6AB0(SysTask *param0, void *param1);
static void ov19_021D6AEC(SysTask *param0, void *param1);
static void ov19_021D6B1C(SysTask *param0, void *param1);
static void BoxGraphics_PlayReleaseCursorMonAnimation(SysTask *task, void *param1);
static void BoxGraphics_PlayReleaseBoxMonAnimation(SysTask *task, void *param1);
static void BoxGraphics_PlayReleasePartyMonAnimation(SysTask *task, void *param1);
static void ov19_021D6C38(SysTask *param0, void *param1);
static void ov19_021D6C74(SysTask *param0, void *param1);
static void ov19_021D6CB0(SysTask *param0, void *param1);
static void ov19_021D6CF8(SysTask *param0, void *param1);
static void ov19_021D6D40(SysTask *param0, void *param1);
static void ov19_021D6D88(SysTask *param0, void *param1);
static void BoxGraphics_ItemShrinkToNothing(SysTask *param0, void *param1);
static void BoxGraphics_DisplayBoxMessage(SysTask *task, void *param1);
static void BoxGraphics_ShowMenu(SysTask *param0, void *param1);
static void BoxGraphics_CloseMessageBox(SysTask *task, void *param1);
static void ov19_021D6EC0(SysTask *param0, void *param1);
static void BoxGraphics_UpdateMenuCursor(SysTask *param0, void *param1);
static void ov19_021D6F0C(SysTask *param0, void *param1);
static void BoxGraphics_ShowBoxSelectionPopup(SysTask *param0, void *param1);
static void BoxGraphics_ScrollBoxSelectionPopup(SysTask *param0, void *param1);
static void ov19_021D6FB0(SysTask *param0, void *param1);
static void BoxGraphics_TransitionWallpaper(SysTask *param0, void *param1);
static void ov19_021D7028(SysTask *param0, void *param1);
static void BoxGraphics_OpenPartyPopup(SysTask *param0, void *param1);
static void ov19_021D7138(SysTask *param0, void *param1);
static void BoxGraphics_PlayAdjustPartyAnimation(SysTask *task, void *param1);
static void ov19_021D71F8(SysTask *param0, void *param1);
static void ov19_021D7248(SysTask *param0, void *param1);
static void ov19_021D7278(SysTask *param0, void *param1);
static void ov19_021D72E8(SysTask *param0, void *param1);
static void ov19_021D7324(SysTask *param0, void *param1);
static void ov19_021D7340(SysTask *param0, void *param1);
static void BoxGraphics_StartDrawMultiSelect(SysTask *param0, void *param1);
static void ov19_021D7380(SysTask *param0, void *param1);
static void BoxGraphics_ApplyMultiSelectMonShadingTask(SysTask *param0, void *param1);
static void ov19_021D73B0(SysTask *param0, void *param1);
static void ov19_021D73EC(SysTask *param0, void *param1);
static void ov19_021D7408(SysTask *param0, void *param1);
static void ov19_021D7424(SysTask *param0, void *param1);
static void BoxGraphics_ScreenFadeBothToBlackLogOff(SysTask *task, void *param1);
static void ov19_021D74B4(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D75CC(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2);
static void ov19_021D76FC(void);
static void ov19_021D7774(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2);
static int BoxGraphics_GetBoxMoveDirection(u32 param0, u32 param1);
static void ov19_021D7970(void);
static void ov19_021D797C(void);

static const struct {
    SysTaskFunc sysTaskFunc;
    u32 unk_04;
} sBoxGraphicsTaskHandlers[] = {
    [FUNC_ov19_021D6694] = { ov19_021D6694, 0 },
    [FUNC_BoxGraphics_ScreenFadeBothToBlack0] = { BoxGraphics_ScreenFadeBothToBlackLogIn, 0 },
    [FUNC_BoxGraphics_ScreenFadeBothToBlack1] = { BoxGraphics_ScreenFadeBothToBlack1, 0 },
    [FUNC_BoxGraphics_ScreenFadeBothToBlack2] = { BoxGraphics_ScreenFadeBothToBlack2, 0 },
    [FUNC_BoxGraphics_ChangeToNewBox] = { BoxGraphics_ChangeToNewBox, 0 },
    [FUNC_BoxGraphics_MoveCursor] = { BoxGraphics_MoveCursor, 0 },
    [FUNC_BoxGraphics_PreviewMon] = { BoxGraphics_PreviewMon, 0 },
    [FUNC_ov19_021D69BC] = { ov19_021D69BC, 0 },
    [FUNC_ov19_021D6A1C] = { ov19_021D6A1C, 0 },
    [FUNC_BoxGraphics_PickUpMonIntoCursor] = { BoxGraphics_PickUpMonIntoCursor, 0 },
    [FUNC_BoxGraphics_PlaceMonDownFromCursor] = { BoxGraphics_PlaceMonDownFromCursor, 0 },
    [FUNC_ov19_021D6AB0] = { ov19_021D6AB0, 0 },
    [FUNC_ov19_021D6AEC] = { ov19_021D6AEC, 0 },
    [FUNC_ov19_021D6B1C] = { ov19_021D6B1C, 0 },
    [FUNC_BoxGraphics_PlayReleaseCursorMonAnimation] = { BoxGraphics_PlayReleaseCursorMonAnimation, 0 },
    [FUNC_BoxGraphics_PlayReleaseBoxMonAnimation] = { BoxGraphics_PlayReleaseBoxMonAnimation, 0 },
    [FUNC_BoxGraphics_PlayReleasePartyMonAnimation] = { BoxGraphics_PlayReleasePartyMonAnimation, 0 },
    [FUNC_ov19_021D6C38] = { ov19_021D6C38, 0 },
    [FUNC_ov19_021D6C74] = { ov19_021D6C74, 0 },
    [FUNC_ov19_021D6CB0] = { ov19_021D6CB0, 0 },
    [FUNC_ov19_021D6CF8] = { ov19_021D6CF8, 0 },
    [FUNC_ov19_021D6D40] = { ov19_021D6D40, 0 },
    [FUNC_ov19_021D6D88] = { ov19_021D6D88, 0 },
    [FUNC_BoxGraphics_ItemShrinkToNothing] = { BoxGraphics_ItemShrinkToNothing, 0 },
    [FUNC_BoxGraphics_DisplayBoxMessage] = { BoxGraphics_DisplayBoxMessage, 0 },
    [FUNC_BoxGraphics_ShowMenu] = { BoxGraphics_ShowMenu, 0 },
    [FUNC_BoxGraphics_CloseMessageBox] = { BoxGraphics_CloseMessageBox, 0 },
    [FUNC_ov19_021D6EC0] = { ov19_021D6EC0, 0 },
    [FUNC_BoxGraphics_UpdateMenuCursor] = { BoxGraphics_UpdateMenuCursor, 0 },
    [FUNC_ov19_021D6F0C] = { ov19_021D6F0C, 0 },
    [FUNC_BoxGraphics_ShowBoxSelectionPopup] = { BoxGraphics_ShowBoxSelectionPopup, 0 },
    [FUNC_BoxGraphics_ScrollBoxSelectionPopup] = { BoxGraphics_ScrollBoxSelectionPopup, 0 },
    [FUNC_ov19_021D6FB0] = { ov19_021D6FB0, 0 },
    [FUNC_BoxGraphics_TransitionWallpaper] = { BoxGraphics_TransitionWallpaper, 0 },
    [FUNC_ov19_021D7028] = { ov19_021D7028, 0 },
    [FUNC_BoxGraphics_OpenPartyPopup] = { BoxGraphics_OpenPartyPopup, 0 },
    [FUNC_ov19_021D7138] = { ov19_021D7138, 0 },
    [FUNC_BoxGraphics_PlayAdjustPartyAnimation] = { BoxGraphics_PlayAdjustPartyAnimation, 0 },
    [FUNC_ov19_021D71F8] = { ov19_021D71F8, 0 },
    [FUNC_ov19_021D7248] = { ov19_021D7248, 0 },
    [FUNC_ov19_021D7278] = { ov19_021D7278, 0 },
    [FUNC_ov19_021D72E8] = { ov19_021D72E8, 0 },
    [FUNC_ov19_021D7324] = { ov19_021D7324, 0 },
    [FUNC_ov19_021D7340] = { ov19_021D7340, 0 },
    [FUNC_BoxGraphics_StartDrawMultiSelect] = { BoxGraphics_StartDrawMultiSelect, 0 },
    [FUNC_ov19_021D7380] = { ov19_021D7380, 0 },
    [FUNC_BoxGraphics_ApplyMultiSelectMonShadingTask] = { BoxGraphics_ApplyMultiSelectMonShadingTask, 0 },
    [FUNC_ov19_021D73B0] = { ov19_021D73B0, 0 },
    [FUNC_ov19_021D73EC] = { ov19_021D73EC, 0 },
    [FUNC_ov19_021D7408] = { ov19_021D7408, 0 },
    [FUNC_ov19_021D7424] = { ov19_021D7424, 0 },
    [FUNC_BoxGraphics_ScreenFadeBothToBlackLogOff] = { BoxGraphics_ScreenFadeBothToBlackLogOff, 0 },
};

BOOL BoxGraphics_Load(UnkStruct_ov19_021D61B0 **param0, const UnkStruct_ov19_021D4DF0 *param1, const UnkStruct_ov19_021D5DF8 *param2)
{
    UnkStruct_ov19_021D61B0 *v0 = Heap_AllocFromHeap(HEAP_ID_BOX_GRAPHICS, sizeof(UnkStruct_ov19_021D61B0));

    if (v0 != NULL) {
        v0->unk_1C4 = param1;
        v0->unk_1C0 = BgConfig_New(HEAP_ID_BOX_GRAPHICS);

        if (v0->unk_1C0 != NULL) {
            u32 v1;
            BOOL v2 = TRUE;
            NARC *boxGraphicsNarc;

            boxGraphicsNarc = NARC_ctor(NARC_INDEX_GRAPHIC__BOX, HEAP_ID_BOX_GRAPHICS);

            SetVBlankCallback(NULL, NULL);
            DisableHBlank();
            GXLayers_DisableEngineALayers();
            GXLayers_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);
            GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_64K);
            GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
            NNS_G2dInitOamManagerModule();

            RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 10);
            v0->unk_18 = SpriteList_InitRendering(128, &v0->unk_1C, HEAP_ID_BOX_GRAPHICS);
            SetSubScreenViewRect(&(v0->unk_1C), 0, (384 << FX32_SHIFT));

            NNS_G2dInitImagePaletteProxy(&(v0->unk_1A8));

            Graphics_LoadPartialPaletteFromOpenNARC(boxGraphicsNarc, 26, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 10, &(v0->unk_1A8));
            Font_UseImmediateGlyphAccess(FONT_SYSTEM, 10);

            v0->unk_1BC = PokemonSpriteManager_New(HEAP_ID_BOX_GRAPHICS);

            for (v1 = 0; v1 < 4; v1++) {
                v0->unk_08[v1] = NULL;
            }

            ov19_021D7970();
            *param0 = v0;

            v2 &= ov19_021DA270(&(v0->unk_1C8), v0, v0->unk_1C4, v0->unk_18, boxGraphicsNarc);
            v2 &= ov19_021D79F8(&(v0->unk_494), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18);
            v2 &= ov19_021D8B54(&(v0->unk_5E24), v0, v0->unk_1C4, v0->unk_18, boxGraphicsNarc);
            v2 &= ov19_021DA814(&(v0->unk_65BC), v0, v0->unk_1C4, v0->unk_18, boxGraphicsNarc);
            v2 &= ov19_021DA92C(&(v0->unk_6604), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, ov19_GetBoxMessagesLoader(param2), boxGraphicsNarc);
            v2 &= ov19_021DB2FC(&(v0->unk_6658), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, ov19_GetBoxMessagesLoader(param2), ov19_GetMessageVariableBuffer(param2), ov19_GetOptionsFrame(param2), boxGraphicsNarc);
            v2 &= ov19_021DB8E4(&(v0->unk_6690), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, boxGraphicsNarc);
            v2 &= ov19_021DC5F0(&(v0->unk_B290), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, boxGraphicsNarc);
            v2 &= ov19_021DCF88(&(v0->unk_B408), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18);
            v2 &= ov19_021DE3E8(&(v0->unk_B40C), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18);
            v2 &= ov19_021DEC04(&(v0->unk_B410), v0, v0->unk_1C4, v0->unk_1C0, v0->unk_18, ov19_GetBoxMessagesLoader(param2), boxGraphicsNarc);

            v0->unk_B414 = param2;
            v0->unk_00 = SysTask_Start(ov19_021D6474, v0, 2);
            v0->unk_04 = ov19_021D77C8(ov19_021D6664, v0, 1);

            NARC_dtor(boxGraphicsNarc);

            return v2;
        }
    }

    return FALSE;
}

static void ov19_021D6474(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0 = (UnkStruct_ov19_021D61B0 *)param1;

    ov19_021D797C();

    G3X_Reset();
    G3X_ResetMtxStack();
    NNS_G2dSetupSoftwareSpriteCamera();

    PokemonSpriteManager_DrawSprites(v0->unk_1BC);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

void BoxGraphics_Free(UnkStruct_ov19_021D61B0 *param0)
{
    SetVBlankCallback(NULL, NULL);
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

    SpriteList_Delete(param0->unk_18);
    Bg_FreeTilemapBuffer(param0->unk_1C0, 3);
    Bg_FreeTilemapBuffer(param0->unk_1C0, 2);
    Bg_FreeTilemapBuffer(param0->unk_1C0, 1);
    Bg_FreeTilemapBuffer(param0->unk_1C0, 4);
    PokemonSpriteManager_Free(param0->unk_1BC);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);
    Heap_FreeToHeap(param0->unk_1C0);
    Heap_FreeToHeap(param0);
    RenderOam_Free();
}

void ov19_BoxTaskHandler(UnkStruct_ov19_021D61B0 *param0, enum BoxGraphicsFunctions function)
{
    if (function < NELEMS(sBoxGraphicsTaskHandlers)) {
        BoxTaskParams *taskParams;

        for (u32 i = 0; i < 4; i++) {
            if (param0->unk_08[i] == NULL) {
                taskParams = Heap_AllocFromHeap(HEAP_ID_BOX_GRAPHICS, sizeof(BoxTaskParams) + sBoxGraphicsTaskHandlers[function].unk_04);

                if (taskParams != NULL) {
                    taskParams->function = function;
                    taskParams->unk_04 = i;
                    taskParams->state = 0;
                    taskParams->unk_0C = param0;
                    taskParams->unk_10 = ((u8 *)(taskParams) + sBoxGraphicsTaskHandlers[function].unk_04);

                    param0->unk_08[i] = SysTask_Start(sBoxGraphicsTaskHandlers[function].sysTaskFunc, taskParams, 1);
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

BOOL ov19_IsSysTaskDone(UnkStruct_ov19_021D61B0 *param0, enum BoxGraphicsFunctions function)
{
    BoxTaskParams *params;

    for (int i = 0; i < 4; i++) {
        if (param0->unk_08[i] != NULL) {
            params = SysTask_GetParam(param0->unk_08[i]);

            if (params->function == function) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

BOOL ov19_CheckAllTasksDone(UnkStruct_ov19_021D61B0 *param0)
{
    for (int i = 0; i < 4; i++) {
        if (param0->unk_08[i] != NULL) {
            return FALSE;
        }
    }

    return TRUE;
}

static void BoxTaskParams_Free(BoxTaskParams *params)
{
    UnkStruct_ov19_021D61B0 *v0 = params->unk_0C;

    SysTask_Done(v0->unk_08[params->unk_04]);
    v0->unk_08[params->unk_04] = NULL;
    Heap_FreeToHeap(params);
}

static void ov19_021D6664(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0 = (UnkStruct_ov19_021D61B0 *)param1;

    ov19_021DAA80(&v0->unk_6604);

    SpriteList_Update(v0->unk_18);
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov19_021D6694(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v1 = v0->unk_1C4;

    switch (params->state) {
    case 0: {
        NARC *boxGraphicsNarc = NARC_ctor(NARC_INDEX_GRAPHIC__BOX, HEAP_ID_BOX_GRAPHICS);

        ov19_021D74B4(v0, v1);
        ov19_021D75CC(v0, v1, boxGraphicsNarc);
        ov19_021D7774(v0, v1, boxGraphicsNarc);
        NARC_dtor(boxGraphicsNarc);
    }

        if (ov19_GetBoxMode(v1) != PC_MODE_COMPARE) {
            ov19_021DAA90(&v0->unk_6604);
            params->state++;
        } else {
            BoxTaskParams_Free(params);
        }
        break;
    case 1:
        if (ov19_021DAAC4(&v0->unk_6604)) {
            ov19_021DAF98(&(v0->unk_6604));
            BoxTaskParams_Free(params);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeBothToBlackLogIn(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 0x6, 0xa);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 8, 1, HEAP_ID_BOX_GRAPHICS);
        v2->state++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeBothToBlack1(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 0x6, 0xa);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_BOX_GRAPHICS);
        v2->state++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeBothToBlack2(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_BOX_GRAPHICS);
        v2->state++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_ChangeToNewBox(SysTask *param0, void *taskParams)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *params = (BoxTaskParams *)taskParams;
    v0 = params->unk_0C;
    v1 = v0->unk_1C4;

    switch (params->state) {
    case 0:
        ov19_021DE9B8(v0->unk_B40C);
        params->state++;
    case 1:
        if (ov19_021DE9E4(v0->unk_B40C) == FALSE) {
            break;
        }

        params->state++;
    case 2: {
        int boxChangeDirection = BoxGraphics_GetBoxMoveDirection(v0->unk_494.boxID, v1->customization.boxID);

        ov19_021D7B4C(&v0->unk_494, &v1->customization, boxChangeDirection, TRUE);
        ov19_021D7D70(&v0->unk_494, &v1->customization, boxChangeDirection);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        params->state++;
    }
    case 3:
        if (ov19_021D7E1C(&v0->unk_494) == 0) {
            break;
        }

        ov19_021DE7A0(v0->unk_B40C);
        params->state++;
    case 4:
        if (ov19_021DE800(v0->unk_B40C) == 0) {
            break;
        }

        BoxTaskParams_Free(params);
        break;
    }
}

static void BoxGraphics_MoveCursor(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov19_021D8F60(&(v0->unk_5E24));
        ov19_021DE7A0(v0->unk_B40C);
        v2->state++;
        break;
    case 1:
        if (ov19_021D9074(&(v0->unk_5E24))
            && ov19_021DE800(v0->unk_B40C)) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_PreviewMon(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    if (ov19_GetBoxMode(v1) != PC_MODE_COMPARE) {
        switch (v2->state) {
        case 0:
            ov19_021DAFF8(&(v0->unk_6604));
            v2->state++;
            break;
        case 1:
            if (ov19_021DB220(&(v0->unk_6604))) {
                BoxTaskParams_Free(v2);
            }
            break;
        }
    } else {
        switch (v2->state) {
        case 0:
            ov19_021DEE34(v0->unk_B410);
            v2->state++;
            break;
        case 1:
            if (ov19_021DEE84(v0->unk_B410)) {
                BoxTaskParams_Free(v2);
            }
            break;
        }
    }
}

static void ov19_021D69BC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    if (ov19_GetPreviewMonSource(v1) == PREVIEW_MON_IN_CURSOR) {
        ov19_021D9A64(&v0->unk_5E24);
    } else {
        switch (ov19_GetCursorLocation(v1)) {
        case CURSOR_IN_BOX:
            ov19_021D8A24(&v0->unk_494);
            break;
        case CURSOR_IN_PARTY:
            ov19_021DCC14(&v0->unk_B290);
            break;
        }
    }

    ov19_021DB224(&v0->unk_6604);
    BoxTaskParams_Free(v2);
}

static void ov19_021D6A1C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    ov19_021DB078(&(v0->unk_6604));
    BoxTaskParams_Free(v2);
}

static void BoxGraphics_PickUpMonIntoCursor(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v1 = v0->unk_1C4;

    switch (params->state) {
    case 0:
        ov19_021D9230(&(v0->unk_5E24));
        params->state++;
        break;
    case 1:
        if (ov19_021D9278(&(v0->unk_5E24))) {
            BoxTaskParams_Free(params);
        }
        break;
    }
}

static void BoxGraphics_PlaceMonDownFromCursor(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9368(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        if (ov19_021D939C(&(v0->unk_5E24))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6AB0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D94B4(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        if (ov19_021D9530(&(v0->unk_5E24))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6AEC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9900(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        BoxTaskParams_Free(v2);
        break;
    }
}

static void ov19_021D6B1C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021DCAC0(&(v0->unk_B290));
        v2->state++;
        break;
    case 1:
        ov19_021DC834(&(v0->unk_B290));
        v2->state++;
        break;
    case 2:
        if (ov19_021DC95C(&(v0->unk_B290))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_PlayReleaseCursorMonAnimation(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9938(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        if (ov19_021D995C(&(v0->unk_5E24))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_PlayReleaseBoxMonAnimation(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D8860(&(v0->unk_494), ov19_GetCursorBoxPosition(v1));
        v2->state++;
        break;
    case 1:
        if (ov19_021D8898(&(v0->unk_494))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_PlayReleasePartyMonAnimation(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021DCAFC(&(v0->unk_B290), ov19_GetCursorPartyPosition(v1));
        v2->state++;
        break;
    case 1:
        if (ov19_021DCB20(&(v0->unk_B290))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6C38(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021DC29C(&(v0->unk_6690));
        v2->state++;
        break;
    case 1:
        if (ov19_021DC364(&(v0->unk_6690))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6C74(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021DC3F4(&(v0->unk_6690));
        v2->state++;
        break;
    case 1:
        if (ov19_021DC43C(&(v0->unk_6690))) {
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6CB0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9B34(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        if (ov19_021D9B64(&(v0->unk_5E24))) {
            ov19_021DB2B0(&(v0->unk_6604));
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6CF8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9BD4(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        if (ov19_021D9C04(&(v0->unk_5E24))) {
            ov19_021DB2B0(&(v0->unk_6604));
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6D40(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9C74(&(v0->unk_5E24));
        v2->state++;
        break;
    case 1:
        if (ov19_021D9CA0(&(v0->unk_5E24))) {
            ov19_021DB2B0(&(v0->unk_6604));
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void ov19_021D6D88(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2;
    u32 item;

    v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;
    item = ov19_GetPreviewedMonHeldItem(v1);

    if (ov19_GetPreviewMonSource(v1) == PREVIEW_MON_IN_CURSOR) {
        ov19_021D9AB0(&v0->unk_5E24, item);
    } else {
        switch (ov19_GetCursorLocation(v1)) {
        case CURSOR_IN_PARTY:
            ov19_021DCBDC(&v0->unk_B290, ov19_GetCursorPartyPosition(v1), item);
            break;
        case CURSOR_IN_BOX:
            ov19_021D8988(&v0->unk_494, ov19_GetCursorBoxPosition(v1), item);
            break;
        }
    }

    BoxTaskParams_Free(v2);
}

static void BoxGraphics_ItemShrinkToNothing(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *v2;
    u32 v3;

    v2 = (BoxTaskParams *)param1;
    v0 = v2->unk_0C;
    v1 = v0->unk_1C4;

    switch (v2->state) {
    case 0:
        ov19_021D9D10(&v0->unk_5E24);
        ov19_021DEB18(v0->unk_B40C);
        v2->state++;
        break;
    case 1:
        if (ov19_021DEB60(v0->unk_B40C)) {
            ov19_021D9D28(&v0->unk_5E24);
            BoxTaskParams_Free(v2);
        }
        break;
    }
}

static void BoxGraphics_DisplayBoxMessage(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *params;
    const UnkStruct_ov19_021D4DF0 *v2;

    params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DB448(&(v0->unk_6658), ov19_GetBoxMessageID(v2));
    BoxTaskParams_Free(params);
}

static void BoxGraphics_ShowMenu(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DB448(&(v0->unk_6658), ov19_GetBoxMessageID(v2));
    ov19_021DB57C(&(v0->unk_6658), &(v2->boxMenu));
    BoxTaskParams_Free(v1);
}

static void BoxGraphics_CloseMessageBox(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;

    ov19_021DB6F0(&(v0->unk_6658));
    BoxTaskParams_Free(v1);
}

static void ov19_021D6EC0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;

    ov19_021DB724(&(v0->unk_6658));
    BoxTaskParams_Free(v1);
}

static void BoxGraphics_UpdateMenuCursor(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    Sound_PlayEffect(SEQ_SE_CONFIRM);
    BoxGraphics_DrawMenuCursorBox(&(v0->unk_6658), &(v2->boxMenu));
    BoxTaskParams_Free(v1);
}

static void ov19_021D6F0C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
    ov19_021DB790(&(v0->unk_6658), &(v2->boxMenu));
    BoxTaskParams_Free(v1);
}

static void BoxGraphics_ShowBoxSelectionPopup(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *params;
    const UnkStruct_ov19_021D4DF0 *v2;

    params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v2 = v0->unk_1C4;

    switch (params->state) {
    case 0:
        ov19_021DBB48(&(v0->unk_6690));
        params->state++;
        break;
    case 1:
        if (ov19_021DBB68(&(v0->unk_6690))) {
            BoxTaskParams_Free(params);
        }
    }
}

static void BoxGraphics_ScrollBoxSelectionPopup(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov19_021DBB70(&(v0->unk_6690));
        v1->state++;
        break;
    case 1:
        BoxTaskParams_Free(v1);
    }
}

static void ov19_021D6FB0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        ov19_021DBB94(&(v0->unk_6690));
        v1->state++;
        break;
    case 1:
        if (ov19_021DBBA0(&(v0->unk_6690))) {
            BoxTaskParams_Free(v1);
        }
    }
}

static void BoxGraphics_TransitionWallpaper(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *params;
    const UnkStruct_ov19_021D4DF0 *v2;

    params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v2 = v0->unk_1C4;

    switch (params->state) {
    case 0:
        ov19_021D8350(&(v0->unk_494));
        params->state++;
        break;
    case 1:
        if (ov19_021D8370(&(v0->unk_494))) {
            BoxTaskParams_Free(params);
        }
        break;
    }
}

static void ov19_021D7028(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov19_021D9690(&(v0->unk_5E24));
        v1->state++;
        break;
    case 1:
        if (ov19_021D9704(&(v0->unk_5E24))) {
            switch (ov19_GetCursorLocation(v2)) {
            case CURSOR_ON_PARTY_BUTTON:
                ov19_021DA8FC(&(v0->unk_65BC), 1);
                break;
            case CURSOR_ON_CLOSE_BUTTON:
                ov19_021DA8FC(&(v0->unk_65BC), 2);
                break;
            }

            v1->unk_08 = 0;
            v1->state++;
        }
        break;
    case 2:
        if (++(v1->unk_08) >= 6) {
            ov19_021D97FC(&(v0->unk_5E24));
            ov19_021DA8FC(&(v0->unk_65BC), 0);
            v1->state++;
        }
        break;
    case 3:
        if (ov19_021D9858(&(v0->unk_5E24))) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void BoxGraphics_OpenPartyPopup(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_OPEN7);
        ov19_021D99F4(&(v0->unk_5E24));
        ov19_021DC6C8(&(v0->unk_B290));
        v1->state++;
        break;
    case 1:
        if (ov19_021DC6F8(&(v0->unk_B290))) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void ov19_021D7138(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        ov19_021DE9B8(v0->unk_B40C);
        v1->state++;
    case 1:
        if (ov19_021DE9E4(v0->unk_B40C) == 0) {
            break;
        }

        v1->state++;
    case 2:
        Sound_PlayEffect(SEQ_SE_DP_CLOSE7);
        ov19_021DC768(&(v0->unk_B290));
        v1->state++;
        break;
    case 3:
        if (ov19_021DC788(&(v0->unk_B290))) {
            ov19_021D9A2C(&(v0->unk_5E24));
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void BoxGraphics_PlayAdjustPartyAnimation(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *params;
    const UnkStruct_ov19_021D4DF0 *v2;

    params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v2 = v0->unk_1C4;

    switch (params->state) {
    case 0:
        ov19_021DC834(&(v0->unk_B290));
        params->state++;
        break;
    case 1:
        if (ov19_021DC95C(&(v0->unk_B290))) {
            BoxTaskParams_Free(params);
        }
        break;
    }
}

static void ov19_021D71F8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        if (ov19_GetCursorLocation(v2) == CURSOR_IN_PARTY) {
            ov19_021DC96C(&v0->unk_B290);
            v1->state++;
            break;
        }

        BoxTaskParams_Free(v1);
        break;
    case 1:
        if (ov19_021DCA08(&v0->unk_B290)) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void ov19_021D7248(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D8938(&v0->unk_494);
    ov19_021DCBA0(&v0->unk_B290);
    ov19_021D9A8C(&v0->unk_5E24);
    BoxTaskParams_Free(v1);
}

static void ov19_021D7278(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        ov19_021DD378(v0->unk_B408);
        v1->state++;
        break;
    case 1:
        if (ov19_021DD45C(v0->unk_B408)) {
            if (v2->unk_9C.unk_00 == 0) {
                BoxTaskParams_Free(v1);
            } else {
                ov19_021DD714(v0->unk_B408);
                v1->state++;
            }
        }
        break;
    case 2:
        if (ov19_021DD740(v0->unk_B408)) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void ov19_021D72E8(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        ov19_021DD768(v0->unk_B408);
        v1->state++;
        break;
    case 1:
        if (ov19_021DD820(v0->unk_B408)) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void ov19_021D7324(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DE2F4(v0->unk_B408);
    BoxTaskParams_Free(v1);
}

static void ov19_021D7340(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D9AEC(&(v0->unk_5E24));
    BoxTaskParams_Free(v1);
}

static void BoxGraphics_StartDrawMultiSelect(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    BoxGraphics_OpenMultiSelectCursor(&(v0->unk_5E24));
    BoxGraphics_ApplyMultiSelectMonShading(&(v0->unk_494));
    BoxTaskParams_Free(v1);
}

static void ov19_021D7380(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021D8B14(&(v0->unk_494));
    BoxTaskParams_Free(v1);
}

static void BoxGraphics_ApplyMultiSelectMonShadingTask(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    BoxGraphics_ApplyMultiSelectMonShading(&(v0->unk_494));
    BoxTaskParams_Free(v1);
}

static void ov19_021D73B0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        ov19_021D9230(&(v0->unk_5E24));
        v1->state++;
        break;
    case 1:
        if (ov19_021D9278(&(v0->unk_5E24))) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void ov19_021D73EC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DEDDC(v0->unk_B410, 0);
    BoxTaskParams_Free(v1);
}

static void ov19_021D7408(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    ov19_021DEDDC(v0->unk_B410, 1);
    BoxTaskParams_Free(v1);
}

static void ov19_021D7424(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    BoxTaskParams *v1;
    const UnkStruct_ov19_021D4DF0 *v2;

    v1 = (BoxTaskParams *)param1;
    v0 = v1->unk_0C;
    v2 = v0->unk_1C4;

    switch (v1->state) {
    case 0:
        ov19_021DEE88(v0->unk_B410);
        v1->state++;
        break;
    case 1:
        if (ov19_021DEEA8(v0->unk_B410)) {
            BoxTaskParams_Free(v1);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeBothToBlackLogOff(SysTask *task, void *param1)
{
    UnkStruct_ov19_021D61B0 *v0;
    const UnkStruct_ov19_021D4DF0 *v1;
    BoxTaskParams *params = (BoxTaskParams *)param1;
    v0 = params->unk_0C;
    v1 = v0->unk_1C4;

    switch (params->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_BOX_GRAPHICS);
        params->state++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            BoxTaskParams_Free(params);
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

    static const GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };

    static const BgTemplate v2 = {
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

    static const BgTemplate v3 = {
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

    static const BgTemplate v4 = {
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

    static const BgTemplate v5 = {
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

    static const BgTemplate v6 = {
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

    static const BgTemplate v7 = {
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

    static const BgTemplate v8 = {
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

    static const BgTemplate v9 = {
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

    static const BgTemplate v10 = {
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

    static const BgTemplate v11 = {
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

    SetAllGraphicsModes(&v1);
    Bg_InitFromTemplate(param0->unk_1C0, 1, &v3, 0);
    Bg_InitFromTemplate(param0->unk_1C0, 2, &v4, 0);
    Bg_InitFromTemplate(param0->unk_1C0, 3, &v5, 0);

    if (ov19_GetBoxMode(param1) != PC_MODE_COMPARE) {
        Bg_InitFromTemplate(param0->unk_1C0, 4, &v6, 0);
        Bg_InitFromTemplate(param0->unk_1C0, 5, &v7, 0);
        Bg_InitFromTemplate(param0->unk_1C0, 6, &v8, 0);
        Bg_InitFromTemplate(param0->unk_1C0, 7, &v9, 0);
    } else {
        Bg_InitFromTemplate(param0->unk_1C0, 4, &v6, 0);
        Bg_InitFromTemplate(param0->unk_1C0, 5, &v10, 0);
        Bg_InitFromTemplate(param0->unk_1C0, 6, &v11, 0);
        Bg_InitFromTemplate(param0->unk_1C0, 7, &v9, 0);
    }

    ov19_021D76FC();
}

static void ov19_021D75CC(UnkStruct_ov19_021D61B0 *param0, const UnkStruct_ov19_021D4DF0 *param1, NARC *param2)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param2, 4, param0->unk_1C0, 1, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);
    Bg_FillTilemapRect(param0->unk_1C0, 1, 0x0, 0, 0, 32, 32, 17);
    Bg_CopyTilemapBufferToVRAM(param0->unk_1C0, 1);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param2, 1, param0->unk_1C0, 2, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);
    Graphics_LoadPaletteFromOpenNARC(param2, 5, 0, 0, 0x20 * 7, HEAP_ID_BOX_GRAPHICS);

    if (ov19_GetBoxMode(param1) != PC_MODE_COMPARE) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param2, 0, param0->unk_1C0, 2, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);
    }

    ov19_021D7A9C(&param0->unk_494);
    ov19_021D7B4C(&param0->unk_494, &param1->customization, 0, TRUE);
    ov19_021DAADC(&(param0->unk_6604));
    ov19_021DB3C4(&(param0->unk_6658));
    ov19_021DBA9C(&(param0->unk_6690));
    ov19_021DD114(param0->unk_B408, param2);
    ov19_021DECE8(param0->unk_B410, param2);

    if (ov19_GetCursorLocation(param1) == CURSOR_IN_PARTY) {
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

static int BoxGraphics_GetBoxMoveDirection(u32 sourceBoxID, u32 destBoxID)
{
    int distanceRight, distanceLeft;

    if (destBoxID > sourceBoxID) {
        distanceRight = destBoxID - sourceBoxID;
        distanceLeft = sourceBoxID + (MAX_PC_BOXES - destBoxID);
    } else {
        distanceRight = destBoxID + (MAX_PC_BOXES - sourceBoxID);
        distanceLeft = sourceBoxID - destBoxID;
    }

    return (distanceRight >= distanceLeft) ? -1 : 1;
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

PokemonSpriteManager *ov19_021D7818(UnkStruct_ov19_021D61B0 *param0)
{
    return param0->unk_1BC;
}

int ov19_021D7820(UnkStruct_ov19_021D61B0 *param0)
{
    if (ov19_GetBoxMode(param0->unk_1C4) != PC_MODE_COMPARE) {
        return 0;
    } else {
        return -44;
    }
}

void ov19_021D783C(SpriteResourcesHeader *param0, NNSG2dImageProxy *param1, NNSG2dImagePaletteProxy *param2, NNSG2dCellDataBank *param3, NNSG2dCellAnimBankData *param4, u32 param5)
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

Sprite *ov19_021D785C(SpriteList *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3, u32 param4, int param5)
{
    SpriteListTemplate v0;
    Sprite *v1;

    v0.list = param0;
    v0.resourceData = param1;
    v0.position.x = param2 * FX32_ONE;
    v0.position.y = param3 * FX32_ONE;
    v0.position.z = 0;
    v0.priority = param4;
    v0.vramType = param5;
    v0.heapID = HEAP_ID_BOX_GRAPHICS;

    {
        OSIntrMode v2 = OS_DisableInterrupts();

        v1 = SpriteList_Add(&v0);
        OS_RestoreInterrupts(v2);
    }

    if (v1) {
        Sprite_SetAnimateFlag(v1, 1);
        Sprite_SetAnimSpeed(v1, (FX32_ONE * (2 / 2)));
    }

    return v1;
}

void BoxGraphics_SetSpritePriority(Sprite *sprite, u32 priority)
{
    OSIntrMode mode = OS_DisableInterrupts();

    Sprite_SetPriority(sprite, priority);
    OS_RestoreInterrupts(mode);
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

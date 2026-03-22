#include "unk_0209B6F8.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "functypes/funcptr_0209B988.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/struct_ov104_0222E8C8.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D3B0.h"
#include "overlay104/struct_ov104_0223D3B0_sub1.h"
#include "overlay104/struct_ov104_0223D8F0.h"

#include "game_overlay.h"
#include "heap.h"
#include "overlay_manager.h"
#include "system.h"

#include "constdata/const_020F8BE0.h"

FS_EXTERN_OVERLAY(overlay63);
FS_EXTERN_OVERLAY(overlay104);
FS_EXTERN_OVERLAY(battle_factory_app);

typedef struct UnkStruct_0209B75C_t {
    UnkStruct_ov104_02230BE4 *unk_00;
    ApplicationManager *appMan;
    void *unk_08;
    UnkFuncPtr_0209B988 unk_0C;
    u8 unk_10;
    FrontierScriptManager *unk_14;
    FrontierGraphics *graphics;
    u8 unk_1C;
    u8 isGraphicsInitialized;
    u8 unk_1E;
    u16 unk_20;
    u8 unk_22;
    UnkStruct_ov104_0223C688 unk_24[24];
    UnkStruct_ov104_0223C634 unk_6C[32];
    UnkStruct_ov104_0223D8F0 unk_78C[32];
    UnkStruct_ov104_0223D3B0 unk_98C;
} UnkStruct_0209B75C;

static BOOL sub_0209B6F8(ApplicationManager *appMan, int *state);
int sub_0209B75C(ApplicationManager *appMan, int *param1);
int sub_0209B8A4(ApplicationManager *appMan, int *param1);
static void InitFrontierGraphics(UnkStruct_0209B75C *param0);
static void FreeFrontierGraphics(UnkStruct_0209B75C *param0);
static void LoadBattleFrontierOverlays(void);
static void UnloadBattleFrontierOverlays(void);
static void sub_0209B8E8(UnkStruct_0209B75C *param0);

const ApplicationManagerTemplate Unk_020F8BE0 = {
    sub_0209B6F8,
    sub_0209B75C,
    sub_0209B8A4,
    0xffffffff
};

static BOOL sub_0209B6F8(ApplicationManager *appMan, int *state)
{

    LoadBattleFrontierOverlays();

    UnkStruct_0209B75C *v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_0209B75C), HEAP_ID_FIELD2);
    MI_CpuClear8(v0, sizeof(UnkStruct_0209B75C));

    sub_0209B8E8(v0);
    sub_0209B9EC(v0);

    v0->unk_00 = ApplicationManager_Args(appMan);
    GF_ASSERT(v0->unk_00 != NULL);

    v0->unk_14 = FrontierScriptManager_New(v0, HEAP_ID_FIELD2, v0->unk_00->sceneID);
    FrontierScriptManager_Load(v0->unk_14, v0->unk_00->sceneID, 0);

    InitFrontierGraphics(v0);

    return TRUE;
}

int sub_0209B75C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209B75C *v0 = ApplicationManager_Data(appMan);
    int v1;

    switch (*param1) {
    case 0:
        *param1 = 1;
        break;
    case 1:
        if (v0->unk_22 == 1) {
            *param1 = 2;
            break;
        }

        if (v0->isGraphicsInitialized == 0) {
            break;
        }

        if (v0->unk_1E == 1) {
            *param1 = 5;
            break;
        }

        if (ov104_0222E6A8(v0->unk_14) == 1) {
            if (gSystem.pressedKeys & PAD_BUTTON_B) {
                *param1 = 2;
            }
        }

        if (v0->appMan != NULL) {
            *param1 = 3;
        }
        break;
    case 2:
        return 1;
    case 3:
        ov104_0223C634(v0->graphics);
        FreeFrontierGraphics(v0);
        UnloadBattleFrontierOverlays();
        *param1 = 4;
        break;
    case 4:
        if (ApplicationManager_Exec(v0->appMan) == 1) {
            ApplicationManager_Free(v0->appMan);
            LoadBattleFrontierOverlays();

            if (v0->unk_0C != NULL) {
                v0->unk_0C(v0->unk_08);
            }

            if ((v0->unk_08 != NULL) && (v0->unk_10 == 1)) {
                Heap_Free(v0->unk_08);
            }

            v0->appMan = NULL;
            v0->unk_0C = NULL;
            v0->unk_08 = NULL;

            InitFrontierGraphics(v0);
            ov104_0223C688(v0->graphics);
            *param1 = 1;
        }
        break;
    case 5:
        FreeFrontierGraphics(v0);
        sub_0209B8E8(v0);
        *param1 = 6;
        break;
    case 6:
        InitFrontierGraphics(v0);

        if (v0->unk_20 == 0xffff) {
            FrontierScriptManager_UpdateMessageLoader(v0->unk_14, v0->unk_00->sceneID, HEAP_ID_FIELD2);
        } else {
            UnkStruct_ov104_0222E8C8 *v2;

            v2 = ov104_0222E8C8(v0->unk_14, HEAP_ID_FIELD2);
            FrontierScriptManager_Free(v0->unk_14);

            v0->unk_14 = FrontierScriptManager_New(v0, HEAP_ID_FIELD2, v0->unk_00->sceneID);
            FrontierScriptManager_Load(v0->unk_14, v0->unk_00->sceneID, v0->unk_20);
            ov104_0222E8E8(v0->unk_14, v2);
        }

        v0->unk_1E = 0;
        *param1 = 1;
        break;
    }

    return 0;
}

int sub_0209B8A4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209B75C *v0 = ApplicationManager_Data(appMan);

    FrontierScriptManager_Free(v0->unk_14);

    FreeFrontierGraphics(v0);
    ApplicationManager_FreeData(appMan);
    UnloadBattleFrontierOverlays();

    return 1;
}

static void InitFrontierGraphics(UnkStruct_0209B75C *param0)
{
    param0->graphics = FrontierGraphics_New(param0);
    param0->isGraphicsInitialized = TRUE;
}

static void FreeFrontierGraphics(UnkStruct_0209B75C *param0)
{
    FrontierGraphics_Free(param0->graphics);
    param0->isGraphicsInitialized = FALSE;
}

static void sub_0209B8E8(UnkStruct_0209B75C *param0)
{
    int v0;

    for (v0 = 0; v0 < 24; v0++) {
        param0->unk_24[v0].unk_00 = 0xffff;
    }

    MI_CpuClear8(param0->unk_6C, sizeof(UnkStruct_ov104_0223C634) * 32);

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_6C[v0].unk_08.unk_04 = 0xffff;
    }
}

static void LoadBattleFrontierOverlays(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    Overlay_LoadByID(FS_OVERLAY_ID(battle_factory_app), OVERLAY_LOAD_ASYNC);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay63), OVERLAY_LOAD_ASYNC);
}

static void UnloadBattleFrontierOverlays(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));
    Overlay_UnloadByID(FS_OVERLAY_ID(battle_factory_app));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));
}

UnkStruct_ov104_02230BE4 *sub_0209B970(UnkStruct_0209B75C *param0)
{
    return param0->unk_00;
}

FrontierGraphics *sub_0209B974(UnkStruct_0209B75C *param0)
{
    return param0->graphics;
}

void *sub_0209B978(UnkStruct_0209B75C *param0)
{
    return param0->unk_00->unk_00;
}

void sub_0209B980(UnkStruct_0209B75C *param0, void *param1)
{
    param0->unk_00->unk_00 = param1;
}

void sub_0209B988(UnkStruct_0209B75C *param0, const ApplicationManagerTemplate *param1, void *param2, int param3, UnkFuncPtr_0209B988 param4)
{
    GF_ASSERT(param0->appMan == NULL);
    param0->appMan = ApplicationManager_New(param1, param2, HEAP_ID_FIELD2);
    param0->unk_08 = param2;
    param0->unk_10 = param3;
    param0->unk_0C = param4;
}

void sub_0209B9B4(UnkStruct_0209B75C *param0)
{
    param0->unk_22 = 1;
}

void sub_0209B9BC(UnkStruct_0209B75C *param0, u16 param1, u16 param2)
{
    param0->unk_00->sceneID = param1;
    param0->unk_1E = 1;
    param0->unk_20 = param2;
}

UnkStruct_ov104_0223C688 *sub_0209B9CC(UnkStruct_0209B75C *param0)
{
    return param0->unk_24;
}

UnkStruct_ov104_0223C634 *sub_0209B9D0(UnkStruct_0209B75C *param0)
{
    return param0->unk_6C;
}

UnkStruct_ov104_0223C634 *sub_0209B9D4(UnkStruct_0209B75C *param0, int param1)
{
    return &param0->unk_6C[param1];
}

UnkStruct_ov104_0223D3B0 *sub_0209B9E0(UnkStruct_0209B75C *param0)
{
    return &param0->unk_98C;
}

void sub_0209B9EC(UnkStruct_0209B75C *param0)
{
    int v0;

    MI_CpuClear8(&param0->unk_98C, sizeof(UnkStruct_ov104_0223D3B0_sub1));

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_98C.unk_00[v0] = 0xffff;
    }
}

#include "battle_frontier.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "constants/heap.h"

#include "field/field_system.h"
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

#include "field_system.h"
#include "game_overlay.h"
#include "heap.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "system.h"

FS_EXTERN_OVERLAY(overlay63);
FS_EXTERN_OVERLAY(overlay104);
FS_EXTERN_OVERLAY(battle_factory_app);

typedef struct BattleFrontier {
    FieldFrontierDTO *fieldData;
    ApplicationManager *appMan;
    void *unk_08;
    UnkFuncPtr_0209B988 unk_0C;
    u8 unk_10;
    FrontierScriptManager *scriptMan;
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
} BattleFrontier;

static BOOL BattleFrontier_Init(ApplicationManager *appMan, int *state);
int BattleFrontier_Main(ApplicationManager *appMan, int *state);
int BattleFrontier_Exit(ApplicationManager *appMan, int *state);
static void InitFrontierGraphics(BattleFrontier *frontier);
static void FreeFrontierGraphics(BattleFrontier *frontier);
static void LoadBattleFrontierOverlays(void);
static void UnloadBattleFrontierOverlays(void);
static void sub_0209B8E8(BattleFrontier *frontier);

const ApplicationManagerTemplate gBattleFrontierAppTemplate = {
    BattleFrontier_Init,
    BattleFrontier_Main,
    BattleFrontier_Exit,
    FS_OVERLAY_ID_NONE
};

static BOOL BattleFrontier_Init(ApplicationManager *appMan, int *state)
{
    LoadBattleFrontierOverlays();

    BattleFrontier *frontier = ApplicationManager_NewData(appMan, sizeof(BattleFrontier), HEAP_ID_FIELD2);
    MI_CpuClear8(frontier, sizeof(BattleFrontier));

    sub_0209B8E8(frontier);
    sub_0209B9EC(frontier);

    frontier->fieldData = ApplicationManager_Args(appMan);
    GF_ASSERT(frontier->fieldData != NULL);

    frontier->scriptMan = FrontierScriptManager_New(frontier, HEAP_ID_FIELD2, frontier->fieldData->sceneID);
    FrontierScriptManager_Load(frontier->scriptMan, frontier->fieldData->sceneID, 0);

    InitFrontierGraphics(frontier);

    return TRUE;
}

int BattleFrontier_Main(ApplicationManager *appMan, int *state)
{
    BattleFrontier *frontier = ApplicationManager_Data(appMan);

    switch (*state) {
    case 0:
        *state = 1;
        break;
    case 1:
        if (frontier->unk_22 == 1) {
            *state = 2;
            break;
        }

        if (!frontier->isGraphicsInitialized) {
            break;
        }

        if (frontier->unk_1E == 1) {
            *state = 5;
            break;
        }

        if (FrontierScriptManager_RunScript(frontier->scriptMan) == TRUE) {
            if (JOY_NEW(PAD_BUTTON_B)) {
                *state = 2;
            }
        }

        if (frontier->appMan != NULL) {
            *state = 3;
        }
        break;
    case 2:
        return TRUE;
    case 3:
        ov104_0223C634(frontier->graphics);
        FreeFrontierGraphics(frontier);
        UnloadBattleFrontierOverlays();
        *state = 4;
        break;
    case 4:
        if (ApplicationManager_Exec(frontier->appMan) == TRUE) {
            ApplicationManager_Free(frontier->appMan);
            LoadBattleFrontierOverlays();

            if (frontier->unk_0C != NULL) {
                frontier->unk_0C(frontier->unk_08);
            }

            if (frontier->unk_08 != NULL && frontier->unk_10 == 1) {
                Heap_Free(frontier->unk_08);
            }

            frontier->appMan = NULL;
            frontier->unk_0C = NULL;
            frontier->unk_08 = NULL;

            InitFrontierGraphics(frontier);
            ov104_0223C688(frontier->graphics);
            *state = 1;
        }
        break;
    case 5:
        FreeFrontierGraphics(frontier);
        sub_0209B8E8(frontier);
        *state = 6;
        break;
    case 6:
        InitFrontierGraphics(frontier);

        if (frontier->unk_20 == 0xffff) {
            FrontierScriptManager_UpdateMessageLoader(frontier->scriptMan, frontier->fieldData->sceneID, HEAP_ID_FIELD2);
        } else {
            UnkStruct_ov104_0222E8C8 *v2;

            v2 = ov104_0222E8C8(frontier->scriptMan, HEAP_ID_FIELD2);
            FrontierScriptManager_Free(frontier->scriptMan);

            frontier->scriptMan = FrontierScriptManager_New(frontier, HEAP_ID_FIELD2, frontier->fieldData->sceneID);
            FrontierScriptManager_Load(frontier->scriptMan, frontier->fieldData->sceneID, frontier->unk_20);
            ov104_0222E8E8(frontier->scriptMan, v2);
        }

        frontier->unk_1E = 0;
        *state = 1;
        break;
    }

    return FALSE;
}

int BattleFrontier_Exit(ApplicationManager *appMan, int *state)
{
    BattleFrontier *frontier = ApplicationManager_Data(appMan);

    FrontierScriptManager_Free(frontier->scriptMan);

    FreeFrontierGraphics(frontier);
    ApplicationManager_FreeData(appMan);
    UnloadBattleFrontierOverlays();

    return TRUE;
}

static void InitFrontierGraphics(BattleFrontier *frontier)
{
    frontier->graphics = FrontierGraphics_New(frontier);
    frontier->isGraphicsInitialized = TRUE;
}

static void FreeFrontierGraphics(BattleFrontier *frontier)
{
    FrontierGraphics_Free(frontier->graphics);
    frontier->isGraphicsInitialized = FALSE;
}

static void sub_0209B8E8(BattleFrontier *frontier)
{
    for (int v0 = 0; v0 < 24; v0++) {
        frontier->unk_24[v0].unk_00 = 0xffff;
    }

    MI_CpuClear8(frontier->unk_6C, sizeof(UnkStruct_ov104_0223C634) * 32);

    for (int v0 = 0; v0 < 32; v0++) {
        frontier->unk_6C[v0].unk_08.unk_04 = 0xffff;
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

FieldFrontierDTO *BattleFrontier_GetFieldData(BattleFrontier *frontier)
{
    return frontier->fieldData;
}

FrontierGraphics *BattleFrontier_GetGraphics(BattleFrontier *frontier)
{
    return frontier->graphics;
}

void *sub_0209B978(BattleFrontier *frontier)
{
    return frontier->fieldData->unk_00;
}

void sub_0209B980(BattleFrontier *frontier, void *param1)
{
    frontier->fieldData->unk_00 = param1;
}

void sub_0209B988(BattleFrontier *frontier, const ApplicationManagerTemplate *param1, void *param2, int param3, UnkFuncPtr_0209B988 param4)
{
    GF_ASSERT(frontier->appMan == NULL);
    frontier->appMan = ApplicationManager_New(param1, param2, HEAP_ID_FIELD2);
    frontier->unk_08 = param2;
    frontier->unk_10 = param3;
    frontier->unk_0C = param4;
}

void sub_0209B9B4(BattleFrontier *frontier)
{
    frontier->unk_22 = 1;
}

void sub_0209B9BC(BattleFrontier *frontier, u16 sceneID, u16 param2)
{
    frontier->fieldData->sceneID = sceneID;
    frontier->unk_1E = 1;
    frontier->unk_20 = param2;
}

UnkStruct_ov104_0223C688 *sub_0209B9CC(BattleFrontier *frontier)
{
    return frontier->unk_24;
}

UnkStruct_ov104_0223C634 *sub_0209B9D0(BattleFrontier *frontier)
{
    return frontier->unk_6C;
}

UnkStruct_ov104_0223C634 *sub_0209B9D4(BattleFrontier *frontier, int param1)
{
    return &frontier->unk_6C[param1];
}

UnkStruct_ov104_0223D3B0 *sub_0209B9E0(BattleFrontier *frontier)
{
    return &frontier->unk_98C;
}

void sub_0209B9EC(BattleFrontier *frontier)
{
    MI_CpuClear8(&frontier->unk_98C, sizeof(UnkStruct_ov104_0223D3B0_sub1));

    for (int v0 = 0; v0 < 8; v0++) {
        frontier->unk_98C.unk_00[v0] = 0xffff;
    }
}

FieldFrontierDTO *sub_0209BA18(FieldSystem *fieldSystem, void *param1)
{
    FieldFrontierDTO *fieldData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(FieldFrontierDTO));

    MI_CpuClear8(fieldData, sizeof(FieldFrontierDTO));

    fieldData->unk_00 = param1;
    fieldData->options = SaveData_GetOptions(fieldSystem->saveData);
    fieldData->saveData = fieldSystem->saveData;
    fieldData->journalEntry = fieldSystem->journalEntry;
    fieldData->bagCursor = fieldSystem->bagCursor;
    fieldData->subscreenCursorOn = fieldSystem->battleSubscreenCursorOn;
    fieldData->unk_14 = 0;
    fieldData->unk_18 = 0;
    fieldData->mapHeaderID = fieldSystem->location->mapId;
    fieldData->sceneID = FRONTIER_SCENE_14;
    fieldData->fieldSystem = fieldSystem;

    FieldSystem_StartChildProcess(fieldSystem, &gBattleFrontierAppTemplate, fieldData);

    return fieldData;
}

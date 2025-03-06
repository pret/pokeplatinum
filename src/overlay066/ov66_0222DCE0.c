#include "overlay066/ov66_0222DCE0.h"

#include <nitro.h>
#include <ppwlobby/ppw_lobby.h>
#include <string.h>

#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02230C44.h"
#include "overlay066/struct_ov66_0222DCE0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_02230C90_decl.h"

#include "game_overlay.h"
#include "heap.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_02099550.h"

FS_EXTERN_OVERLAY(overlay63);

typedef struct {
    SaveData *unk_00;
    UnkStruct_ov66_0222DFF8 *unk_04;
    UnkStruct_ov66_02230C90 *unk_08;
    SysTask *unk_0C;
} UnkStruct_ov66_0222DD90;

static void ov66_0222DDDC(SysTask *param0, void *param1);

int ov66_0222DCE0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov66_0222DD90 *v0;
    UnkStruct_ov66_0222DCE0 *v1;

    {
        FS_EXTERN_OVERLAY(overlay63);
        Overlay_LoadByID(FS_OVERLAY_ID(overlay63), 2);
        sub_02099550();
        sub_020995B4();
    }

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_104, 0x5000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov66_0222DD90), 104);
    memset(v0, 0, sizeof(UnkStruct_ov66_0222DD90));

    v1 = OverlayManager_Args(param0);

    v0->unk_00 = v1->unk_04;
    v0->unk_04 = ov66_0222DDF0(v0->unk_00, 104);
    v0->unk_08 = ov66_02230C44(v1->unk_08, v1->unk_04, v1->unk_00, v0->unk_04, 104);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    v0->unk_0C = SysTask_ExecuteAfterVBlank(ov66_0222DDDC, v0, 0);

    ov66_02230CAC(v0->unk_08);

    return 1;
}

int ov66_0222DD6C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov66_0222DD90 *v0;
    int v1;

    v0 = OverlayManager_Data(param0);
    v1 = ov66_02230CB8(v0->unk_08);

    ov66_0222DF58(v0->unk_04);

    if (v1 == 1) {
        return 1;
    }

    return 0;
}

int ov66_0222DD90(OverlayManager *param0, int *param1)
{
    UnkStruct_ov66_0222DD90 *v0 = OverlayManager_Data(param0);

    SysTask_Done(v0->unk_0C);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    ov66_02230C90(v0->unk_08);
    ov66_0222DEEC(v0->unk_04);

    OverlayManager_FreeData(param0);
    Heap_Destroy(HEAP_ID_104);

    {
        FS_EXTERN_OVERLAY(overlay63);
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay63));
        sub_020995C4();
        sub_02099560();
    }

    return 1;
}

static void ov66_0222DDDC(SysTask *param0, void *param1)
{
    UnkStruct_ov66_0222DD90 *v0 = param1;

    ov66_02230CE8(v0->unk_08);
    ov66_0222DFF4(v0->unk_04);
}

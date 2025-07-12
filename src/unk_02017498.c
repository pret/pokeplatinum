#include "unk_02017498.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02017498.h"

#include "overlay061/ov61_0222BF44.h"

#include "gx_layers.h"
#include "heap.h"
#include "overlay_manager.h"
#include "sound.h"
#include "system.h"
#include "unk_02033200.h"
#include "unk_020393C8.h"
#include "unk_0208BA78.h"
#include "unk_02099550.h"

static NNSFndHeapHandle Unk_021BF678;

static void sub_0201767C(UnkStruct_02017498 *param0);
static void sub_020176B4(UnkStruct_02017498 *param0);
static void *sub_020176DC(DWCAllocType param0, u32 param1, int param2);
static void sub_02017704(DWCAllocType param0, void *param1, u32 param2);

static const ApplicationManagerTemplate Unk_020E5664 = {
    ov61_0222BF44,
    ov61_0222C0F8,
    ov61_0222C160,
    0xffffffff,
};

int sub_02017498(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02017498 *v0;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_116, (0x20000 + 0x8000));

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_02017498), HEAP_ID_116);
    MI_CpuClear8(v0, sizeof(UnkStruct_02017498));
    v0->unk_00 = ApplicationManager_Args(appMan);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_11, SEQ_WIFILOBBY, 1);

    return 1;
}

int sub_02017524(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02017498 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        sub_0201767C(v0);
        *param1 = 1;
        break;
    case 1:
        if (WirelessDriver_IsReady()) {
            Unk_021BF678 = v0->unk_1C;

            DWC_SetMemFunc(sub_020176DC, sub_02017704);

            v0->unk_88 = 1;
            (*param1)++;
        }
        break;
    case 2:
        v0->appMan = ApplicationManager_New(&Unk_020E5664, v0, HEAP_ID_116);
        (*param1)++;
        break;
    case 3:
        if (ApplicationManager_Exec(v0->appMan) == 1) {
            ApplicationManager_Free(v0->appMan);

            if (v0->unk_8C == 1) {
                v0->unk_10 = 1;
                (*param1)++;
            } else {
                *param1 = 8;
            }
        }
        break;
    case 4: {
        const ApplicationManagerTemplate *v1;

        v1 = sub_0208BE5C(v0->unk_00->unk_0C);
        v0->appMan = ApplicationManager_New(v1, v0->unk_00->fieldSystem, HEAP_ID_116);
        (*param1)++;
    } break;
    case 5:
        if (ApplicationManager_Exec(v0->appMan) == 1) {
            ApplicationManager_Free(v0->appMan);
            (*param1)++;
        }
        break;
    case 6:
        v0->appMan = ApplicationManager_New(&Unk_020E5664, v0, HEAP_ID_116);
        (*param1)++;
        break;
    case 7:
        if (ApplicationManager_Exec(v0->appMan) == 1) {
            ApplicationManager_Free(v0->appMan);
            v0->unk_10 = 0;
            (*param1)++;
        }
        break;
    case 8:
        return 1;
    }

    if ((v0->unk_88 == 1) && (v0->unk_10 == 1) && (v0->unk_8C == 1)) {
        DWC_UpdateConnection();
        SetNetworkIconStrength(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    }

    return 0;
}

int sub_02017658(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02017498 *v0 = ApplicationManager_Data(appMan);

    sub_020176B4(v0);
    Heap_Free(v0->unk_00);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_116);

    return 1;
}

static void sub_0201767C(UnkStruct_02017498 *param0)
{
    if (param0->unk_88 == 0) {
        param0->unk_18 = Heap_AllocFromHeap(HEAP_ID_116, 0x20000 + 32);
        param0->unk_1C = NNS_FndCreateExpHeap((void *)(((u32)param0->unk_18 + 31) / 32 * 32), 0x20000);

        sub_02099550();
        Overlay_LoadHttpOverlay();
        WirelessDriver_Init();
    }
}

static void sub_020176B4(UnkStruct_02017498 *param0)
{
    if (param0->unk_88 == 1) {
        NNS_FndDestroyExpHeap(param0->unk_1C);

        Heap_Free(param0->unk_18);
        Overlay_UnloadHttpOverlay();
        sub_02099560();
        WirelessDriver_Shutdown();

        param0->unk_88 = 0;
    }
}

static void *sub_020176DC(DWCAllocType param0, u32 param1, int param2)
{
#pragma unused(param0)
    void *v0;
    OSIntrMode v1;

    v1 = OS_DisableInterrupts();
    v0 = NNS_FndAllocFromExpHeapEx(Unk_021BF678, param1, param2);

    OS_RestoreInterrupts(v1);

    if (v0 == NULL) {
        (void)0;
    }

    return v0;
}

static void sub_02017704(DWCAllocType param0, void *param1, u32 param2)
{
#pragma unused(param0, param2)
    OSIntrMode v0;

    if (!param1) {
        return;
    }

    v0 = OS_DisableInterrupts();
    NNS_FndFreeToExpHeap(Unk_021BF678, param1);
    OS_RestoreInterrupts(v0);
}

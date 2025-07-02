#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "struct_defs/struct_0208C06C.h"

#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"

#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "savedata_misc.h"
#include "sound.h"
#include "system.h"
#include "unk_0208B284.h"
#include "unk_0208BA78.h"

#include "constdata/const_020F3050.h"
#include "constdata/const_020F3060.h"

FS_EXTERN_OVERLAY(overlay62);

static int sub_0208BF38(ApplicationManager *appMan, int *param1);
static int sub_0208BF44(ApplicationManager *appMan, int *param1);
static int sub_0208BEBC(ApplicationManager *appMan, int *param1, int param2);
static int sub_0208BF50(ApplicationManager *appMan, int *param1);
static int sub_0208BF6C(ApplicationManager *appMan, int *param1);

const ApplicationManagerTemplate Unk_020F3050 = {
    sub_0208BF38,
    sub_0208BF50,
    sub_0208BF6C,
    FS_OVERLAY_ID(overlay62)
};

const ApplicationManagerTemplate Unk_020F3060 = {
    sub_0208BF44,
    sub_0208BF50,
    sub_0208BF6C,
    FS_OVERLAY_ID(overlay62)
};

static int sub_0208BEBC(ApplicationManager *appMan, int *param1, int param2)
{
    UnkStruct_0208C06C *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_102, 0x55000);
    v0 = sub_0208BA78(appMan);
    ov62_02230060(v0);
    Sound_SetPlayerVolume(1, (127 / 3));

    if (param2 != 0) {
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, SEQ_PL_WIFITOWER, 1);
    }

    if (param2 == 0) {
        {
            MiscSaveBlock *v1 = SaveData_MiscSaveBlock(v0->saveData);

            MiscSaveBlock_VsRecorderColor(v1, &v0->unk_14.unk_48);

            if (v0->unk_14.unk_48 >= 7) {
                v0->unk_14.unk_48 = 0;
            }

            v0->unk_14.unk_44 = ov62_022316A0(v0);
        }
    } else {
        v0->unk_14.unk_44 = 0x7fdd;
    }

    ov62_0222F2C0(v0);

    return 1;
}

static int sub_0208BF38(ApplicationManager *appMan, int *param1)
{
    return sub_0208BEBC(appMan, param1, 0);
}

static int sub_0208BF44(ApplicationManager *appMan, int *param1)
{
    return sub_0208BEBC(appMan, param1, 1);
}

static int sub_0208BF50(ApplicationManager *appMan, int *param1)
{
    BOOL v0 = 0;
    UnkStruct_0208C06C *v1 = sub_0208BA78(appMan);

    v1->unk_10 = param1;
    v0 = ov62_0222F910(v1, param1);

    return (v0) ? 1 : 0;
}

static int sub_0208BF6C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0208C06C *v0 = sub_0208BA78(appMan);

    switch (*param1) {
    case 0:
        ov62_0223069C(v0);
        (*param1)++;
        break;
    case 1:
        ov62_0223066C(v0);
        ov62_02230B74(v0);
        ov62_0223113C(v0);
        (*param1)++;
        break;
    case 2: {
        if (sub_0208B988(v0->unk_6F0) == 0) {
            (*param1)++;
        }
    } break;
    case 3: {
        if (sub_0208B988(v0->unk_6F4) == 0) {
            (*param1)++;
        }
    } break;
    default:
        ov62_0222F514(v0);
        Heap_Destroy(HEAP_ID_102);
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay62));
        gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
        GXLayers_SwapDisplay();

        return 1;
    }

    return 0;
}

#include "unk_0208BA78.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "generated/journal_online_events.h"

#include "struct_defs/struct_0208BA84.h"
#include "struct_defs/struct_0208C06C.h"

#include "field/field_system.h"
#include "overlay062/ov62_02248408.h"

#include "bag.h"
#include "field_battle_data_transfer.h"
#include "game_overlay.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "sound.h"
#include "system_flags.h"
#include "unk_0202F1D4.h"
#include "unk_020553DC.h"
#include "unk_0208C010.h"
#include "unk_02099550.h"
#include "vars_flags.h"

#include "constdata/const_020EA358.h"
#include "constdata/const_020F2FCC.h"
#include "constdata/const_020F3050.h"
#include "constdata/const_020F3060.h"

FS_EXTERN_OVERLAY(overlay61);
FS_EXTERN_OVERLAY(overlay62);

typedef struct {
    int unk_00;
    int unk_04;
    ApplicationManager *appMan;
    SaveData *saveData;
    FieldBattleDTO *unk_10;
    UnkStruct_0208C06C *unk_14;
    UnkStruct_0208BA84 unk_18;
    FieldSystem *fieldSystem;
} UnkStruct_0208BC3C;

static void sub_0208BAAC(ApplicationManager *appMan, int param1);
static int sub_0208BB6C(ApplicationManager *appMan, int *param1);
static int sub_0208BB78(ApplicationManager *appMan, int *param1);
static int sub_0208BB84(ApplicationManager *appMan, int *param1);
static int sub_0208BB90(ApplicationManager *appMan, int *param1);
static int sub_0208BB9C(ApplicationManager *appMan, int *param1);
static int sub_0208BBA8(ApplicationManager *appMan, int *param1);
static int sub_0208BBB4(ApplicationManager *appMan, int *param1);
static int sub_0208BBC0(ApplicationManager *appMan, int *param1);
static int sub_0208BC08(ApplicationManager *appMan, int *param1);
static BOOL sub_0208BC3C(UnkStruct_0208BC3C *param0, int heapID);
static BOOL sub_0208BC8C(UnkStruct_0208BC3C *param0, int heapID);
static BOOL sub_0208BE80(int param0);

UnkStruct_0208C06C *sub_0208BA78(ApplicationManager *appMan) {
    UnkStruct_0208C06C *v0;
    UnkStruct_0208BC3C *v1 = ApplicationManager_Args(appMan);

    return v1->unk_14;
}

void sub_0208BA84(UnkStruct_0208BA84 *param0, BOOL param1, int param2) {
    param0->unk_00 = param1;
    param0->unk_04 = param2;
}

static void sub_0208BA8C(SaveData *saveData, int param1, u32 param2) {
    JournalEntry *journalEntry = SaveData_GetJournal(saveData);
    void *journalEntryOnlineEvent = JournalEntry_CreateEventMisc(param1, param2);

    JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
}

static void sub_0208BAAC(ApplicationManager *appMan, int param1) {
    UnkStruct_0208BC3C *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_119, 0x10000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_0208BC3C), HEAP_ID_119);
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_0208BC3C));

    v0->fieldSystem = ApplicationManager_Args(appMan);
    v0->saveData = v0->fieldSystem->saveData;
    v0->unk_14 = Heap_AllocFromHeap(HEAP_ID_119, sizeof(UnkStruct_0208C06C));

    MI_CpuFill8(v0->unk_14, 0, sizeof(UnkStruct_0208C06C));

    v0->unk_14->unk_868 = &v0->unk_18;
    v0->unk_14->saveData = v0->saveData;
    v0->unk_14->unk_00 = param1;
    v0->unk_14->unk_81C[v0->unk_14->unk_534.unk_1A4] = sub_0208C034(v0->unk_14, v0->unk_14->unk_00);

    int eventType;

    switch (param1) {
    case 2:
        eventType = ONLINE_EVENT_WATCHED_BATTLE_VIDEOS;
        break;
    case 3:
        eventType = ONLINE_EVENT_CHECKED_RANKINGS;
        break;
    case 4:
        eventType = ONLINE_EVENT_CHECKED_RANKINGS;
        break;
    case 5:
        eventType = ONLINE_EVENT_CHECKED_DRESS_UP_DATA;
        break;
    case 6:
        eventType = ONLINE_EVENT_CHECKED_BOX_DATA;
        break;
    default:
        return;
    }

    sub_0208BA8C(v0->saveData, 119, eventType);
}

static int sub_0208BB6C(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 0);
    return 1;
}

static int sub_0208BB78(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 1);
    return 1;
}

static int sub_0208BB84(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 2);
    return 1;
}

static int sub_0208BB90(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 3);
    return 1;
}

static int sub_0208BB9C(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 4);
    return 1;
}

static int sub_0208BBA8(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 5);
    return 1;
}

static int sub_0208BBB4(ApplicationManager *appMan, int *param1) {
    sub_0208BAAC(appMan, 6);
    return 1;
}

static int sub_0208BBC0(ApplicationManager *appMan, int *param1) {
    BOOL v0;
    UnkStruct_0208BC3C *v1 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        v0 = sub_0208BC3C(v1, HEAP_ID_119);

        if (v0) {
            if (v1->unk_18.unk_00 == 1) {
                *param1 = 1;
                v1->unk_00 = 0;
            } else {
                return 1;
            }
        }
        break;
    case 1:
        v0 = sub_0208BC8C(v1, HEAP_ID_119);

        if (v0) {
            *param1 = 0;
            v1->unk_00 = 0;
        }
        break;
    }

    return 0;
}

static int sub_0208BC08(ApplicationManager *appMan, int *param1) {
    UnkStruct_0208BC3C *v0 = ApplicationManager_Data(appMan);

    if (sub_0202F250() == 1) {
        sub_0202F22C();
    }

    Heap_Free(v0->unk_14);
    ApplicationManager_FreeData(appMan);
    Sound_SetPlayerVolume(1, 127);
    Heap_Destroy(HEAP_ID_119);

    return 1;
}

static BOOL sub_0208BC3C(UnkStruct_0208BC3C *param0, int heapID) {
    switch (param0->unk_00) {
    case 0:
        if (param0->unk_14->unk_00 == 0) {
            param0->appMan = ApplicationManager_New(&Unk_020F3050, param0, heapID);
        } else {
            param0->appMan = ApplicationManager_New(&Unk_020F3060, param0, heapID);
        }

        param0->unk_00++;
        break;
    default:
        if (ApplicationManager_Exec(param0->appMan) == 0) {
            break;
        }

        ApplicationManager_Free(param0->appMan);
        return 1;
    }

    return 0;
}

static BOOL sub_0208BC8C(UnkStruct_0208BC3C *param0, int heapID) {
    switch (param0->unk_00) {
    case 0:
        if (param0->unk_14->unk_00 != 0) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay61));
            sub_020995C4();
        }

        param0->unk_00++;
        break;
    case 1: {
        int v0;

        param0->unk_10 = FieldBattleDTO_New(heapID, 0x0);

        if (sub_0202F250() == 0) {
            sub_0202F298(param0->saveData, heapID, &v0, param0->unk_10, param0->unk_14->unk_86C);
        } else {
            sub_0202FAFC(param0->unk_10, param0->saveData);
            v0 = 1;
        }

        param0->unk_10->bagCursor = BagCursor_New(heapID);
        param0->unk_10->records = SaveData_GetGameRecords(param0->saveData);

        if (Overlay_LoadByID(FS_OVERLAY_ID(overlay62), 2) == 1) {
            ov62_02248408(sub_0202F264(), param0->unk_10, heapID);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay62));
        }

        param0->unk_14->unk_874 = 1;

        if (v0 != 1) {
            Heap_Free(param0->unk_10->bagCursor);
            FieldBattleDTO_Free(param0->unk_10);
            param0->unk_00 = 0;
            return 1;
        } else {
            param0->unk_00++;
        }
    } break;
    case 2: {
        Sound_SetPlayerVolume(1, 127);
        sub_02005464(1);

        if (sub_0208BE80(param0->unk_10->trainer[1].header.trainerType) == 1) {
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_FRONTIER_BRAIN, 1);
        } else {
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
        }
    }
        param0->appMan = ApplicationManager_New(&gBattleApplicationTemplate, param0->unk_10, heapID);
        param0->unk_00++;
        break;
    default:
        if (ApplicationManager_Exec(param0->appMan) == 0) {
            break;
        }

        param0->unk_14->unk_874 = param0->unk_10->unk_19C;

        if (param0->unk_14->unk_00 != 0) {
            if (param0->unk_14->unk_874 == 0) {
                *param0->unk_14->unk_878 = 1;
            }
        }

        Heap_Free(param0->unk_10->bagCursor);
        FieldBattleDTO_Free(param0->unk_10);
        ApplicationManager_Free(param0->appMan);

        {
            u16 bgmID;

            sub_02005464(0);
            Sound_SetScene(SOUND_SCENE_NONE);

            bgmID = Sound_GetOverrideBGM(param0->fieldSystem, param0->fieldSystem->location->mapId);

            Sound_SetFieldBGM(Sound_GetBGMByMapID(param0->fieldSystem, param0->fieldSystem->location->mapId));
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, bgmID, 1);
        }

        param0->unk_00 = 0;

        if (param0->unk_14->unk_00 != 0) {
            sub_020995B4();
            Overlay_LoadByID(FS_OVERLAY_ID(overlay61), 2);
        }

        return 1;
    }

    return 0;
}

const ApplicationManagerTemplate Unk_020F2FCC = {
    sub_0208BB6C,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const ApplicationManagerTemplate Unk_020F302C = {
    sub_0208BB78,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const ApplicationManagerTemplate Unk_020F301C = {
    sub_0208BB84,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const ApplicationManagerTemplate Unk_020F300C = {
    sub_0208BB90,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const ApplicationManagerTemplate Unk_020F2FFC = {
    sub_0208BB9C,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const ApplicationManagerTemplate Unk_020F2FEC = {
    sub_0208BBA8,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const ApplicationManagerTemplate Unk_020F2FDC = {
    sub_0208BBB4,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

static const ApplicationManagerTemplate *Unk_02100CF0[] = {
    &Unk_020F2FCC,
    &Unk_020F302C,
    &Unk_020F301C,
    &Unk_020F300C,
    &Unk_020F2FFC,
    &Unk_020F2FEC,
    &Unk_020F2FDC,
};

const ApplicationManagerTemplate *sub_0208BE5C(int param0) {
    const ApplicationManagerTemplate *v0 = Unk_02100CF0[param0];
    return v0;
}

BOOL sub_0208BE68(UnkStruct_0208C06C *param0) {
    VarsFlags *v0 = SaveData_GetVarsFlags(param0->saveData);
    return SystemFlag_HandleFirstArrivalToZone(v0, HANDLE_FLAG_CHECK, FIRST_ARRIVAL_BATTLE_PARK);
}

static BOOL sub_0208BE80(int param0) {
    int v0;
    const int v1[] = {
        97,
        99,
        100,
        101,
        102,
    };

    for (v0 = 0; v0 < NELEMS(v1); v0++) {
        if (param0 == v1[v0]) {
            return 1;
        }
    }

    return 0;
}

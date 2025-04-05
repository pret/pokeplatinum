#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay082/ov82_0223B140.h"
#include "overlay082/struct_ov82_0223B164.h"

#include "bag.h"
#include "field_system.h"
#include "heap.h"
#include "journal.h"
#include "poffin.h"
#include "save_player.h"
#include "savedata.h"

FS_EXTERN_OVERLAY(overlay82);

static UnkStruct_ov82_0223B164 *sub_02099604(int param0, SaveData *saveData, int heapID, JournalEntry *journalEntry)
{
    UnkStruct_ov82_0223B164 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov82_0223B164));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov82_0223B164));

    v0->saveData = saveData;
    v0->poffinCase = SaveData_GetPoffinCase(saveData);
    v0->trainerInfo = SaveData_GetTrainerInfo(saveData);
    v0->bag = SaveData_GetBag(saveData);
    v0->options = SaveData_GetOptions(saveData);
    v0->journalEntry = journalEntry;
    v0->unk_20 = 0;
    v0->unk_04 = param0;

    return v0;
}

static void sub_0209964C(FieldSystem *fieldSystem, UnkStruct_ov82_0223B164 *param1)
{
    FS_EXTERN_OVERLAY(overlay82);

    {
        OverlayManagerTemplate v0 = {
            ov82_0223B164,
            ov82_0223B1D4,
            ov82_0223B24C,
            FS_OVERLAY_ID(overlay82)
        };

        FieldSystem_StartChildProcess(fieldSystem, &v0, param1);
    }
}

UnkStruct_ov82_0223B164 *sub_02099674(FieldSystem *fieldSystem, int param1, int heapID)
{
    UnkStruct_ov82_0223B164 *v0 = sub_02099604(param1, FieldSystem_GetSaveData(fieldSystem), heapID, fieldSystem->journalEntry);
    sub_0209964C(fieldSystem, v0);

    return v0;
}

UnkStruct_ov82_0223B164 *sub_020996A0(FieldSystem *fieldSystem, int heapID, BOOL param2)
{
    UnkStruct_ov82_0223B164 *v0 = sub_02099604(1, FieldSystem_GetSaveData(fieldSystem), heapID, fieldSystem->journalEntry);
    v0->unk_20 = 1;
    v0->unk_24 = param2;

    sub_0209964C(fieldSystem, v0);

    return v0;
}

#include "unk_02038FFC.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202B370_decl.h"

#include "heap.h"
#include "savedata.h"
#include "unk_0202ACE0.h"
#include "unk_02099550.h"

int sub_02038FFC(int heapID)
{
    int v0;
    u8 *v1;
    u8 *v2;

    sub_02099550();
    sub_020995B4();

    v1 = Heap_AllocFromHeap(heapID, DWC_INIT_WORK_SIZE + 32);
    v2 = (u8 *)(((u32)v1 + 31) / 32 * 32);
    v0 = DWC_Init(v2);

    Heap_FreeToHeap(v1);
    sub_02099560();
    sub_020995C4();

    return v0;
}

void sub_02039034(WiFiList *param0)
{
    DWCUserData *v0 = WiFiList_GetUserData(param0);

    if (!DWC_CheckUserData(v0)) {
        DWC_CreateUserData(v0, 'ADAJ');
        DWC_ClearDirtyFlag(v0);
    }
}

int WiFiList_GetUserGsProfileId(WiFiList *param0)
{
    DWCUserData *v0 = WiFiList_GetUserData(param0);
    DWCFriendData v1;

    DWC_CreateExchangeToken(v0, &v1);
    return DWC_GetGsProfileId(v0, &v1);
}

BOOL sub_02039074(SaveData *saveData)
{
    WiFiList *v0 = SaveData_GetWiFiList(saveData);
    DWCUserData *v1 = WiFiList_GetUserData(v0);

    if (DWC_CheckHasProfile(v1)
        && DWC_CheckValidConsole(v1)) {
        return 1;
    }

    return 0;
}

#include "unk_02038FFC.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/wi_fi_list.h"

#include "heap.h"
#include "savedata.h"
#include "wifi_list.h"
#include "wifi_overlays.h"

int sub_02038FFC(enum HeapID heapID)
{
    Overlay_LoadWFCOverlay();
    Overlay_LoadHttpOverlay();

    u8 *v1 = Heap_Alloc(heapID, DWC_INIT_WORK_SIZE + 32);
    u8 *v2 = (u8 *)(((u32)v1 + 31) / 32 * 32);
    int v0 = DWC_Init(v2);

    Heap_Free(v1);
    Overlay_UnloadWFCOverlay();
    Overlay_UnloadHttpOverlay();

    return v0;
}

void sub_02039034(WiFiList *param0)
{
    DWCUserData *userData = WiFiList_GetUserData(param0);

    if (!DWC_CheckUserData(userData)) {
        DWC_CreateUserData(userData, 'ADAJ');
        DWC_ClearDirtyFlag(userData);
    }
}

int WiFiList_GetUserGsProfileId(WiFiList *wifiList)
{
    DWCUserData *userData = WiFiList_GetUserData(wifiList);
    DWCFriendData friendData;

    DWC_CreateExchangeToken(userData, &friendData);
    return DWC_GetGsProfileId(userData, &friendData);
}

BOOL WiFiList_HasValidLogin(SaveData *saveData)
{
    WiFiList *wiFiList = SaveData_GetWiFiList(saveData);
    DWCUserData *userData = WiFiList_GetUserData(wiFiList);

    if (DWC_CheckHasProfile(userData) && DWC_CheckValidConsole(userData)) {
        return TRUE;
    }

    return FALSE;
}

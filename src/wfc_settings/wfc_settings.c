#include "wfc_settings/wfc_settings.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "unk_02033200.h"

void WFCSettings_StartApplication(enum HeapID heapID)
{
    WirelessDriver_Init();

    OS_InitTick();
    OS_InitAlarm();

    OSIntrMode intrMode = OS_DisableInterrupts();
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    void *dwcUtilityWorkObj = Heap_Alloc(heapID, DWC_UTILITY_WORK_SIZE);

    DWC_StartUtility(dwcUtilityWorkObj, DWC_LANGUAGE_ENGLISH, DWC_UTILITY_TOP_MENU_COMMON);

    Heap_Free(dwcUtilityWorkObj);

    OS_RestoreInterrupts(intrMode);
    OS_EnableIrq();
}

#include "error_handling.h"

#include <nitro.h>
#include <string.h>

#include "comm_manager.h"
#include "error_message_reset.h"

void ErrorHandling_AssertFail(void);

void ErrorHandling_AssertFail(void)
{
    if (CommManager_IsInitialized() && (OS_GetProcMode() != OS_PROCMODE_IRQ)) {
        ErrorMessageReset_PrintErrorAndReset();
    }
}

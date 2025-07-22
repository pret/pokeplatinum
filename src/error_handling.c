#include "error_handling.h"

#include <nitro.h>
#include <string.h>

#include "error_message_reset.h"
#include "unk_020366A0.h"

void ErrorHandling_AssertFail(void);

void ErrorHandling_AssertFail(void) {
    if (CommMan_IsInitialized() && (OS_GetProcMode() != OS_PROCMODE_IRQ)) {
        ErrorMessageReset_PrintErrorAndReset();
    }
}

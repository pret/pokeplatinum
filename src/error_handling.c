#include <nitro.h>
#include <string.h>

#include "error_handling.h"
#include "unk_020366A0.h"
#include "error_message_reset.h"

void ErrorHandling_AssertFail(void);

void ErrorHandling_AssertFail (void)
{
    if (sub_02036780() && (OS_GetProcMode() != OS_PROCMODE_IRQ)) {
        ErrorMessageReset_PrintErrorAndReset();
    }
}

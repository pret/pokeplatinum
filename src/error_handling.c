#include "error_handling.h"

#include <nitro.h>
#include <string.h>

#include "comm_manager.h"
#include "error_message_reset.h"

#ifdef SDK_PORT
#include "port/sim_config_prj.h"
#ifdef SDK_BUILD_LINUX
#include <signal.h>
#endif
#endif

void ErrorHandling_AssertFail(void);

void ErrorHandling_AssertFail(void)
{
#ifdef SDK_PORT
    SIM_Config_prj_type * myConfig = SIM_Config_prj_GetConfig();
    if(!(myConfig->enableAsserts)) {
        return;
    }
    if(myConfig->breakDebuggerOnGfAssert) {
#ifdef SDK_BUILD_LINUX
        raise(SIGTRAP);
#endif
#ifdef SDK_BUILD_WIN64
        __debugbreak();
#endif
    }
#endif

    if (CommManager_IsInitialized() && (OS_GetProcMode() != OS_PROCMODE_IRQ)) {
        ErrorMessageReset_PrintErrorAndReset();
    }
}

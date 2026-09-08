#include "cutscenes/end_credits/strings.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

#include "res/text/bank/end_credits.h"

enum EndCreditsStringsState {
    END_CREDITS_STRINGS_STATE_PRINTING = 0,
    END_CREDITS_STRINGS_STATE_ALL_PRINTED,
    END_CREDITS_STRINGS_STATE_ALL_ERASED
};

static const struct {
    u16 messageID;
    u16 yOffset;
    u16 centered;
} sEndCreditStringProps[] = {
    { .messageID = pl_msg_00000548_00000, .yOffset = 0, .centered = TRUE },
    { .messageID = pl_msg_00000548_00001, .yOffset = 16, .centered = TRUE },
    { .messageID = pl_msg_00000548_00002, .yOffset = 146, .centered = FALSE },
    { .messageID = pl_msg_00000548_00003, .yOffset = 167, .centered = FALSE },
    { .messageID = pl_msg_00000548_00004, .yOffset = 297, .centered = FALSE },
    { .messageID = pl_msg_00000548_00005, .yOffset = 318, .centered = FALSE },
    { .messageID = pl_msg_00000548_00006, .yOffset = 448, .centered = FALSE },
    { .messageID = pl_msg_00000548_00007, .yOffset = 469, .centered = FALSE },
    { .messageID = pl_msg_00000548_00008, .yOffset = 525, .centered = FALSE },
    { .messageID = pl_msg_00000548_00009, .yOffset = 546, .centered = FALSE },
    { .messageID = pl_msg_00000548_00010, .yOffset = 602, .centered = FALSE },
    { .messageID = pl_msg_00000548_00011, .yOffset = 623, .centered = FALSE },
    { .messageID = pl_msg_00000548_00012, .yOffset = 679, .centered = FALSE },
    { .messageID = pl_msg_00000548_00013, .yOffset = 700, .centered = FALSE },
    { .messageID = pl_msg_00000548_00014, .yOffset = 721, .centered = FALSE },
    { .messageID = pl_msg_00000548_00015, .yOffset = 742, .centered = FALSE },
    { .messageID = pl_msg_00000548_00016, .yOffset = 763, .centered = FALSE },
    { .messageID = pl_msg_00000548_00017, .yOffset = 784, .centered = FALSE },
    { .messageID = pl_msg_00000548_00018, .yOffset = 805, .centered = FALSE },
    { .messageID = pl_msg_00000548_00019, .yOffset = 826, .centered = FALSE },
    { .messageID = pl_msg_00000548_00020, .yOffset = 847, .centered = FALSE },
    { .messageID = pl_msg_00000548_00021, .yOffset = 868, .centered = FALSE },
    { .messageID = pl_msg_00000548_00022, .yOffset = 889, .centered = FALSE },
    { .messageID = pl_msg_00000548_00023, .yOffset = 910, .centered = FALSE },
    { .messageID = pl_msg_00000548_00024, .yOffset = 931, .centered = FALSE },
    { .messageID = pl_msg_00000548_00025, .yOffset = 952, .centered = FALSE },
    { .messageID = pl_msg_00000548_00026, .yOffset = 973, .centered = FALSE },
    { .messageID = pl_msg_00000548_00027, .yOffset = 994, .centered = FALSE },
    { .messageID = pl_msg_00000548_00028, .yOffset = 1124, .centered = FALSE },
    { .messageID = pl_msg_00000548_00029, .yOffset = 1140, .centered = FALSE },
    { .messageID = pl_msg_00000548_00030, .yOffset = 1156, .centered = FALSE },
    { .messageID = pl_msg_00000548_00031, .yOffset = 1177, .centered = FALSE },
    { .messageID = pl_msg_00000548_00032, .yOffset = 1198, .centered = FALSE },
    { .messageID = pl_msg_00000548_00033, .yOffset = 1219, .centered = FALSE },
    { .messageID = pl_msg_00000548_00034, .yOffset = 1240, .centered = FALSE },
    { .messageID = pl_msg_00000548_00035, .yOffset = 1261, .centered = FALSE },
    { .messageID = pl_msg_00000548_00036, .yOffset = 1282, .centered = FALSE },
    { .messageID = pl_msg_00000548_00037, .yOffset = 1303, .centered = FALSE },
    { .messageID = pl_msg_00000548_00038, .yOffset = 1324, .centered = FALSE },
    { .messageID = pl_msg_00000548_00039, .yOffset = 1345, .centered = FALSE },
    { .messageID = pl_msg_00000548_00040, .yOffset = 1366, .centered = FALSE },
    { .messageID = pl_msg_00000548_00041, .yOffset = 1387, .centered = FALSE },
    { .messageID = pl_msg_00000548_00042, .yOffset = 1408, .centered = FALSE },
    { .messageID = pl_msg_00000548_00043, .yOffset = 1429, .centered = FALSE },
    { .messageID = pl_msg_00000548_00044, .yOffset = 1485, .centered = FALSE },
    { .messageID = pl_msg_00000548_00045, .yOffset = 1506, .centered = FALSE },
    { .messageID = pl_msg_00000548_00046, .yOffset = 1562, .centered = FALSE },
    { .messageID = pl_msg_00000548_00047, .yOffset = 1583, .centered = FALSE },
    { .messageID = pl_msg_00000548_00048, .yOffset = 1713, .centered = FALSE },
    { .messageID = pl_msg_00000548_00049, .yOffset = 1734, .centered = FALSE },
    { .messageID = pl_msg_00000548_00050, .yOffset = 1755, .centered = FALSE },
    { .messageID = pl_msg_00000548_00051, .yOffset = 1776, .centered = FALSE },
    { .messageID = pl_msg_00000548_00052, .yOffset = 1797, .centered = FALSE },
    { .messageID = pl_msg_00000548_00053, .yOffset = 1853, .centered = FALSE },
    { .messageID = pl_msg_00000548_00054, .yOffset = 1874, .centered = FALSE },
    { .messageID = pl_msg_00000548_00055, .yOffset = 1930, .centered = FALSE },
    { .messageID = pl_msg_00000548_00056, .yOffset = 1951, .centered = FALSE },
    { .messageID = pl_msg_00000548_00057, .yOffset = 2081, .centered = FALSE },
    { .messageID = pl_msg_00000548_00058, .yOffset = 2102, .centered = FALSE },
    { .messageID = pl_msg_00000548_00059, .yOffset = 2123, .centered = FALSE },
    { .messageID = pl_msg_00000548_00060, .yOffset = 2144, .centered = FALSE },
    { .messageID = pl_msg_00000548_00061, .yOffset = 2165, .centered = FALSE },
    { .messageID = pl_msg_00000548_00062, .yOffset = 2186, .centered = FALSE },
    { .messageID = pl_msg_00000548_00063, .yOffset = 2207, .centered = FALSE },
    { .messageID = pl_msg_00000548_00064, .yOffset = 2228, .centered = FALSE },
    { .messageID = pl_msg_00000548_00065, .yOffset = 2249, .centered = FALSE },
    { .messageID = pl_msg_00000548_00066, .yOffset = 2270, .centered = FALSE },
    { .messageID = pl_msg_00000548_00067, .yOffset = 2291, .centered = FALSE },
    { .messageID = pl_msg_00000548_00068, .yOffset = 2312, .centered = FALSE },
    { .messageID = pl_msg_00000548_00069, .yOffset = 2368, .centered = FALSE },
    { .messageID = pl_msg_00000548_00070, .yOffset = 2389, .centered = FALSE },
    { .messageID = pl_msg_00000548_00071, .yOffset = 2410, .centered = FALSE },
    { .messageID = pl_msg_00000548_00072, .yOffset = 2431, .centered = FALSE },
    { .messageID = pl_msg_00000548_00073, .yOffset = 2452, .centered = FALSE },
    { .messageID = pl_msg_00000548_00074, .yOffset = 2473, .centered = FALSE },
    { .messageID = pl_msg_00000548_00075, .yOffset = 2529, .centered = FALSE },
    { .messageID = pl_msg_00000548_00076, .yOffset = 2550, .centered = FALSE },
    { .messageID = pl_msg_00000548_00077, .yOffset = 2571, .centered = FALSE },
    { .messageID = pl_msg_00000548_00078, .yOffset = 2592, .centered = FALSE },
    { .messageID = pl_msg_00000548_00079, .yOffset = 2613, .centered = FALSE },
    { .messageID = pl_msg_00000548_00080, .yOffset = 2669, .centered = FALSE },
    { .messageID = pl_msg_00000548_00081, .yOffset = 2690, .centered = FALSE },
    { .messageID = pl_msg_00000548_00082, .yOffset = 2711, .centered = FALSE },
    { .messageID = pl_msg_00000548_00083, .yOffset = 2732, .centered = FALSE },
    { .messageID = pl_msg_00000548_00084, .yOffset = 2753, .centered = FALSE },
    { .messageID = pl_msg_00000548_00085, .yOffset = 2774, .centered = FALSE },
    { .messageID = pl_msg_00000548_00086, .yOffset = 2795, .centered = FALSE },
    { .messageID = pl_msg_00000548_00087, .yOffset = 2816, .centered = FALSE },
    { .messageID = pl_msg_00000548_00088, .yOffset = 2872, .centered = FALSE },
    { .messageID = pl_msg_00000548_00089, .yOffset = 2893, .centered = FALSE },
    { .messageID = pl_msg_00000548_00090, .yOffset = 2914, .centered = FALSE },
    { .messageID = pl_msg_00000548_00091, .yOffset = 2970, .centered = FALSE },
    { .messageID = pl_msg_00000548_00092, .yOffset = 2991, .centered = FALSE },
    { .messageID = pl_msg_00000548_00093, .yOffset = 3012, .centered = FALSE },
    { .messageID = pl_msg_00000548_00094, .yOffset = 3033, .centered = FALSE },
    { .messageID = pl_msg_00000548_00095, .yOffset = 3054, .centered = FALSE },
    { .messageID = pl_msg_00000548_00096, .yOffset = 3184, .centered = FALSE },
    { .messageID = pl_msg_00000548_00097, .yOffset = 3205, .centered = FALSE },
    { .messageID = pl_msg_00000548_00098, .yOffset = 3226, .centered = FALSE },
    { .messageID = pl_msg_00000548_00099, .yOffset = 3247, .centered = FALSE },
    { .messageID = pl_msg_00000548_00100, .yOffset = 3268, .centered = FALSE },
    { .messageID = pl_msg_00000548_00101, .yOffset = 3324, .centered = FALSE },
    { .messageID = pl_msg_00000548_00102, .yOffset = 3345, .centered = FALSE },
    { .messageID = pl_msg_00000548_00103, .yOffset = 3366, .centered = FALSE },
    { .messageID = pl_msg_00000548_00104, .yOffset = 3387, .centered = FALSE },
    { .messageID = pl_msg_00000548_00105, .yOffset = 3408, .centered = FALSE },
    { .messageID = pl_msg_00000548_00106, .yOffset = 3429, .centered = FALSE },
    { .messageID = pl_msg_00000548_00107, .yOffset = 3450, .centered = FALSE },
    { .messageID = pl_msg_00000548_00108, .yOffset = 3471, .centered = FALSE },
    { .messageID = pl_msg_00000548_00109, .yOffset = 3527, .centered = FALSE },
    { .messageID = pl_msg_00000548_00110, .yOffset = 3548, .centered = FALSE },
    { .messageID = pl_msg_00000548_00111, .yOffset = 3678, .centered = FALSE },
    { .messageID = pl_msg_00000548_00112, .yOffset = 3710, .centered = FALSE },
    { .messageID = pl_msg_00000548_00113, .yOffset = 3731, .centered = FALSE },
    { .messageID = pl_msg_00000548_00114, .yOffset = 3752, .centered = FALSE },
    { .messageID = pl_msg_00000548_00115, .yOffset = 3784, .centered = FALSE },
    { .messageID = pl_msg_00000548_00116, .yOffset = 3805, .centered = FALSE },
    { .messageID = pl_msg_00000548_00117, .yOffset = 3826, .centered = FALSE },
    { .messageID = pl_msg_00000548_00118, .yOffset = 3847, .centered = FALSE },
    { .messageID = pl_msg_00000548_00119, .yOffset = 3977, .centered = FALSE },
    { .messageID = pl_msg_00000548_00120, .yOffset = 3998, .centered = FALSE },
    { .messageID = pl_msg_00000548_00121, .yOffset = 4019, .centered = FALSE },
    { .messageID = pl_msg_00000548_00122, .yOffset = 4040, .centered = FALSE },
    { .messageID = pl_msg_00000548_00123, .yOffset = 4061, .centered = FALSE },
    { .messageID = pl_msg_00000548_00124, .yOffset = 4082, .centered = FALSE },
    { .messageID = pl_msg_00000548_00125, .yOffset = 4138, .centered = FALSE },
    { .messageID = pl_msg_00000548_00126, .yOffset = 4159, .centered = FALSE },
    { .messageID = pl_msg_00000548_00127, .yOffset = 4289, .centered = FALSE },
    { .messageID = pl_msg_00000548_00128, .yOffset = 4310, .centered = FALSE },
    { .messageID = pl_msg_00000548_00129, .yOffset = 4331, .centered = FALSE },
    { .messageID = pl_msg_00000548_00130, .yOffset = 4352, .centered = FALSE },
    { .messageID = pl_msg_00000548_00131, .yOffset = 4408, .centered = FALSE },
    { .messageID = pl_msg_00000548_00132, .yOffset = 4429, .centered = FALSE },
    { .messageID = pl_msg_00000548_00133, .yOffset = 4485, .centered = FALSE },
    { .messageID = pl_msg_00000548_00134, .yOffset = 4506, .centered = FALSE },
    { .messageID = pl_msg_00000548_00135, .yOffset = 4527, .centered = FALSE },
    { .messageID = pl_msg_00000548_00136, .yOffset = 4548, .centered = FALSE },
    { .messageID = pl_msg_00000548_00137, .yOffset = 4604, .centered = FALSE },
    { .messageID = pl_msg_00000548_00138, .yOffset = 4625, .centered = FALSE },
    { .messageID = pl_msg_00000548_00139, .yOffset = 4646, .centered = FALSE },
    { .messageID = pl_msg_00000548_00140, .yOffset = 4667, .centered = FALSE },
    { .messageID = pl_msg_00000548_00141, .yOffset = 4797, .centered = FALSE },
    { .messageID = pl_msg_00000548_00142, .yOffset = 4818, .centered = FALSE },
    { .messageID = pl_msg_00000548_00143, .yOffset = 4839, .centered = FALSE },
    { .messageID = pl_msg_00000548_00144, .yOffset = 4860, .centered = FALSE },
    { .messageID = pl_msg_00000548_00145, .yOffset = 4916, .centered = FALSE },
    { .messageID = pl_msg_00000548_00146, .yOffset = 4937, .centered = FALSE },
    { .messageID = pl_msg_00000548_00147, .yOffset = 4958, .centered = FALSE },
    { .messageID = pl_msg_00000548_00148, .yOffset = 4979, .centered = FALSE },
    { .messageID = pl_msg_00000548_00149, .yOffset = 5000, .centered = FALSE },
    { .messageID = pl_msg_00000548_00150, .yOffset = 5021, .centered = FALSE },
    { .messageID = pl_msg_00000548_00151, .yOffset = 5042, .centered = FALSE },
    { .messageID = pl_msg_00000548_00152, .yOffset = 5063, .centered = FALSE },
    { .messageID = pl_msg_00000548_00153, .yOffset = 5084, .centered = FALSE },
    { .messageID = pl_msg_00000548_00154, .yOffset = 5105, .centered = FALSE },
    { .messageID = pl_msg_00000548_00155, .yOffset = 5126, .centered = FALSE },
    { .messageID = pl_msg_00000548_00156, .yOffset = 5147, .centered = FALSE },
    { .messageID = pl_msg_00000548_00157, .yOffset = 5168, .centered = FALSE },
    { .messageID = pl_msg_00000548_00158, .yOffset = 5189, .centered = FALSE },
    { .messageID = pl_msg_00000548_00159, .yOffset = 5210, .centered = FALSE },
    { .messageID = pl_msg_00000548_00160, .yOffset = 5266, .centered = FALSE },
    { .messageID = pl_msg_00000548_00161, .yOffset = 5287, .centered = FALSE },
    { .messageID = pl_msg_00000548_00162, .yOffset = 5308, .centered = FALSE },
    { .messageID = pl_msg_00000548_00163, .yOffset = 5329, .centered = FALSE },
    { .messageID = pl_msg_00000548_00164, .yOffset = 5350, .centered = FALSE },
    { .messageID = pl_msg_00000548_00165, .yOffset = 5371, .centered = FALSE },
    { .messageID = pl_msg_00000548_00166, .yOffset = 5392, .centered = FALSE },
    { .messageID = pl_msg_00000548_00167, .yOffset = 5413, .centered = FALSE },
    { .messageID = pl_msg_00000548_00168, .yOffset = 5434, .centered = FALSE },
    { .messageID = pl_msg_00000548_00169, .yOffset = 5564, .centered = FALSE },
    { .messageID = pl_msg_00000548_00170, .yOffset = 5585, .centered = FALSE },
    { .messageID = pl_msg_00000548_00171, .yOffset = 5606, .centered = FALSE },
    { .messageID = pl_msg_00000548_00172, .yOffset = 5627, .centered = FALSE },
    { .messageID = pl_msg_00000548_00173, .yOffset = 5648, .centered = FALSE },
    { .messageID = pl_msg_00000548_00174, .yOffset = 5669, .centered = FALSE },
    { .messageID = pl_msg_00000548_00175, .yOffset = 5690, .centered = FALSE },
    { .messageID = pl_msg_00000548_00176, .yOffset = 5711, .centered = FALSE },
    { .messageID = pl_msg_00000548_00177, .yOffset = 5732, .centered = FALSE },
    { .messageID = pl_msg_00000548_00178, .yOffset = 5753, .centered = FALSE },
    { .messageID = pl_msg_00000548_00179, .yOffset = 5774, .centered = FALSE },
    { .messageID = pl_msg_00000548_00180, .yOffset = 5795, .centered = FALSE },
    { .messageID = pl_msg_00000548_00181, .yOffset = 5816, .centered = FALSE },
    { .messageID = pl_msg_00000548_00182, .yOffset = 5837, .centered = FALSE },
    { .messageID = pl_msg_00000548_00183, .yOffset = 5858, .centered = FALSE },
    { .messageID = pl_msg_00000548_00184, .yOffset = 5879, .centered = FALSE },
    { .messageID = pl_msg_00000548_00185, .yOffset = 5900, .centered = FALSE },
    { .messageID = pl_msg_00000548_00186, .yOffset = 5921, .centered = FALSE },
    { .messageID = pl_msg_00000548_00187, .yOffset = 5942, .centered = FALSE },
    { .messageID = pl_msg_00000548_00188, .yOffset = 5963, .centered = FALSE },
    { .messageID = pl_msg_00000548_00189, .yOffset = 5984, .centered = FALSE },
    { .messageID = pl_msg_00000548_00190, .yOffset = 6005, .centered = FALSE },
    { .messageID = pl_msg_00000548_00191, .yOffset = 6026, .centered = FALSE },
    { .messageID = pl_msg_00000548_00192, .yOffset = 6047, .centered = FALSE },
    { .messageID = pl_msg_00000548_00193, .yOffset = 6068, .centered = FALSE },
    { .messageID = pl_msg_00000548_00194, .yOffset = 6089, .centered = FALSE },
    { .messageID = pl_msg_00000548_00195, .yOffset = 6110, .centered = FALSE },
    { .messageID = pl_msg_00000548_00196, .yOffset = 6131, .centered = FALSE },
    { .messageID = pl_msg_00000548_00197, .yOffset = 6152, .centered = FALSE },
    { .messageID = pl_msg_00000548_00198, .yOffset = 6173, .centered = FALSE },
    { .messageID = pl_msg_00000548_00199, .yOffset = 6194, .centered = FALSE },
    { .messageID = pl_msg_00000548_00200, .yOffset = 6215, .centered = FALSE },
    { .messageID = pl_msg_00000548_00201, .yOffset = 6236, .centered = FALSE },
    { .messageID = pl_msg_00000548_00202, .yOffset = 6257, .centered = FALSE },
    { .messageID = pl_msg_00000548_00203, .yOffset = 6278, .centered = FALSE },
    { .messageID = pl_msg_00000548_00204, .yOffset = 6299, .centered = FALSE },
    { .messageID = pl_msg_00000548_00205, .yOffset = 6320, .centered = FALSE },
    { .messageID = pl_msg_00000548_00206, .yOffset = 6341, .centered = FALSE },
    { .messageID = pl_msg_00000548_00207, .yOffset = 6362, .centered = FALSE },
    { .messageID = pl_msg_00000548_00208, .yOffset = 6383, .centered = FALSE },
    { .messageID = pl_msg_00000548_00209, .yOffset = 6404, .centered = FALSE },
    { .messageID = pl_msg_00000548_00210, .yOffset = 6425, .centered = FALSE },
    { .messageID = pl_msg_00000548_00211, .yOffset = 6446, .centered = FALSE },
    { .messageID = pl_msg_00000548_00212, .yOffset = 6576, .centered = FALSE },
    { .messageID = pl_msg_00000548_00213, .yOffset = 6597, .centered = FALSE },
    { .messageID = pl_msg_00000548_00214, .yOffset = 6618, .centered = FALSE },
    { .messageID = pl_msg_00000548_00215, .yOffset = 6639, .centered = FALSE },
    { .messageID = pl_msg_00000548_00216, .yOffset = 6660, .centered = FALSE },
    { .messageID = pl_msg_00000548_00217, .yOffset = 6790, .centered = FALSE },
    { .messageID = pl_msg_00000548_00218, .yOffset = 6811, .centered = FALSE },
    { .messageID = pl_msg_00000548_00219, .yOffset = 6832, .centered = FALSE },
    { .messageID = pl_msg_00000548_00220, .yOffset = 6853, .centered = FALSE },
    { .messageID = pl_msg_00000548_00221, .yOffset = 6983, .centered = FALSE },
    { .messageID = pl_msg_00000548_00222, .yOffset = 7004, .centered = FALSE },
    { .messageID = pl_msg_00000548_00223, .yOffset = 7025, .centered = FALSE },
    { .messageID = pl_msg_00000548_00224, .yOffset = 7046, .centered = FALSE },
    { .messageID = pl_msg_00000548_00225, .yOffset = 7176, .centered = FALSE },
    { .messageID = pl_msg_00000548_00226, .yOffset = 7197, .centered = FALSE },
    { .messageID = pl_msg_00000548_00227, .yOffset = 7218, .centered = FALSE },
    { .messageID = pl_msg_00000548_00228, .yOffset = 7239, .centered = FALSE },
    { .messageID = pl_msg_00000548_00229, .yOffset = 7260, .centered = FALSE },
    { .messageID = pl_msg_00000548_00230, .yOffset = 7390, .centered = FALSE },
    { .messageID = pl_msg_00000548_00231, .yOffset = 7411, .centered = FALSE },
    { .messageID = pl_msg_00000548_00232, .yOffset = 7467, .centered = FALSE },
    { .messageID = pl_msg_00000548_00233, .yOffset = 7488, .centered = FALSE },
    { .messageID = pl_msg_00000548_00234, .yOffset = 7544, .centered = FALSE },
    { .messageID = pl_msg_00000548_00235, .yOffset = 7565, .centered = FALSE },
    { .messageID = pl_msg_00000548_00236, .yOffset = 7581, .centered = FALSE }
};

static void EndCreditsStrings_VBlankCallback(SysTask *sysTask, void *pManager);

EndCreditsStringsManager *EndCreditsStrings_CreateManager(BgConfig *bgConfig, int startTopY, int bgLayer, int palette, MessageLoader *messageLoader)
{
    EndCreditsStringsManager *manager = Heap_Alloc(HEAP_ID_END_CREDITS, sizeof(EndCreditsStringsManager));

    if (manager) {
        manager->bgConfig = bgConfig;
        manager->topY = startTopY;
        manager->bottomY = startTopY + 192;
        manager->bgLayer = bgLayer;
        manager->messageLoader = messageLoader;
        manager->entryToDraw = 0;
        manager->entryToErase = 0;
        manager->unused_14 = 0;
        manager->reloadWindow = 0;
        manager->state = END_CREDITS_STRINGS_STATE_PRINTING;
        manager->string = String_Init(256, HEAP_ID_END_CREDITS);
        manager->window = Window_New(HEAP_ID_END_CREDITS, 1);

        Window_Add(bgConfig, manager->window, bgLayer, 0, 0, 32, 32, palette, 0);
        Window_FillTilemap(manager->window, 0x0);
        Window_PutToTilemap(manager->window);
        Window_CopyToVRAM(manager->window);

        manager->window2 = Window_New(HEAP_ID_END_CREDITS, 1);
        Window_Add(bgConfig, manager->window2, bgLayer, 0, 0, 32, 2, palette, 0);
        manager->sysTask = SysTask_ExecuteAfterVBlank(EndCreditsStrings_VBlankCallback, manager, 0);
    }

    return manager;
}

void EndCreditsStrings_FreeManager(EndCreditsStringsManager *manager)
{
    if (manager->sysTask) {
        SysTask_Done(manager->sysTask);
    }

    String_Free(manager->string);
    Window_Remove(manager->window);
    Window_Remove(manager->window2);
    Heap_Free(manager->window);
    Heap_Free(manager->window2);
    Heap_Free(manager);
}

BOOL EndCreditsStrings_ScrollCredits(EndCreditsStringsManager *manager, int scrollSpeed)
{
    if (manager->state == END_CREDITS_STRINGS_STATE_ALL_ERASED) {
        return TRUE;
    } else {
        int nextBottomY = manager->bottomY + scrollSpeed;

        if (manager->state == END_CREDITS_STRINGS_STATE_PRINTING) {
            if (nextBottomY >= sEndCreditStringProps[manager->entryToDraw].yOffset) {
                int xOffset, yOffset;

                MessageLoader_GetString(manager->messageLoader, sEndCreditStringProps[manager->entryToDraw].messageID, manager->string);

                if (sEndCreditStringProps[manager->entryToDraw].centered) {
                    xOffset = (256 - Font_CalcStringWidth(FONT_SYSTEM, manager->string, 0)) / 2;
                } else {
                    xOffset = 32;
                }

                yOffset = sEndCreditStringProps[manager->entryToDraw].yOffset & 0xff;
                Text_AddPrinterWithParamsAndColor(manager->window, FONT_SYSTEM, manager->string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

                if (yOffset > (256 - 16)) {
                    Window_FillTilemap(manager->window2, 0x0);
                    Text_AddPrinterWithParamsAndColor(manager->window2, FONT_SYSTEM, manager->string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

                    yOffset = 16 - (yOffset - (256 - 16));
                    Window_BlitBitmapRect(manager->window, manager->window2->pixels, 0, yOffset, manager->window2->width * 8, manager->window2->height * 8, 0, 0, TILE_SIZE_4BPP * 8, (16 - yOffset));
                }

                manager->reloadWindow = TRUE;

                if (++(manager->entryToDraw) >= (NELEMS(sEndCreditStringProps) - 1)) {
                    manager->state = END_CREDITS_STRINGS_STATE_ALL_PRINTED;
                }
            }
        }

        manager->bottomY = nextBottomY;

        if (manager->topY > (sEndCreditStringProps[manager->entryToErase].yOffset + 16)) {
            int yOffset = sEndCreditStringProps[manager->entryToErase].yOffset & 0xff;

            if (yOffset <= (256 - 16)) {
                Window_FillRectWithColor(manager->window, 0x0, 0, yOffset, TILE_SIZE_4BPP * 8, 16);
            } else {
                int height1, height2;

                height1 = 16 - (yOffset - (256 - 16));
                height2 = 16 - height1;

                Window_FillRectWithColor(manager->window, 0x0, 0, yOffset, TILE_SIZE_4BPP * 8, height1);
                Window_FillRectWithColor(manager->window, 0x0, 0, 0, TILE_SIZE_4BPP * 8, height2);
            }

            manager->reloadWindow = TRUE;

            if (++(manager->entryToErase) >= NELEMS(sEndCreditStringProps)) {
                manager->state = END_CREDITS_STRINGS_STATE_ALL_ERASED;
            }
        }

        manager->topY += scrollSpeed;

        return FALSE;
    }
}

static void EndCreditsStrings_VBlankCallback(SysTask *sysTask, void *pManager)
{
    EndCreditsStringsManager *manager = pManager;

    if (manager->reloadWindow) {
        Window_LoadTiles(manager->window);
        manager->reloadWindow = FALSE;
    }

    int yPos = manager->topY & 255;
    Bg_SetOffset(manager->bgConfig, manager->bgLayer, BG_OFFSET_UPDATE_SET_Y, yPos);
}

int EndCreditsStrings_GetLastMessageID(void)
{
    return sEndCreditStringProps[NELEMS(sEndCreditStringProps) - 1].messageID;
}

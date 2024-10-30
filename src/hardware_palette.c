#include "hardware_palette.h"

#include <nitro.h>
#include <string.h>

u16 *GetHardwareMainBgPaletteAddress(void)
{
    return (u16 *)HW_BG_PLTT;
}

u32 GetHardwareMainBgPaletteSize(void)
{
    return HW_BG_PLTT_SIZE;
}

u16 *GetHardwareSubBgPaletteAddress(void)
{
    return (u16 *)HW_DB_BG_PLTT;
}

u32 GetHardwareSubBgPaletteSize(void)
{
    return HW_DB_BG_PLTT_SIZE;
}

u16 *GetHardwareMainObjPaletteAddress(void)
{
    return (u16 *)HW_OBJ_PLTT;
}

u16 *GetHardwareSubObjPaletteAddress(void)
{
    return (u16 *)HW_DB_OBJ_PLTT;
}

#ifndef POKEPLATINUM_HARDWARE_PALETTE_H
#define POKEPLATINUM_HARDWARE_PALETTE_H

u16 *GetHardwareMainBgPaletteAddress(void);
u32 GetHardwareMainBgPaletteSize(void);
u16 *GetHardwareSubBgPaletteAddress(void);
u32 GetHardwareSubBgPaletteSize(void);
u16 *GetHardwareMainObjPaletteAddress(void);
u16 *GetHardwareSubObjPaletteAddress(void);

#endif // POKEPLATINUM_HARDWARE_PALETTE_H

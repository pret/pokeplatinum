#ifndef _ROM_HEADER_H_
#define _ROM_HEADER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nitro/fs.h>

typedef struct {
    char title_name[12];
    u32 game_code;
    u16 maker_code;
    u8 machine_code;
    u8 rom_type;
    u8 rom_size;
    u8 reserved_A[9];
    u8 soft_version;
    u8 comp_arm9_boot_area : 1;
    u8 comp_arm7_boot_area : 1;
    u8 inspectCard : 1;
    u8 disableClearMemoryPad : 1;
    u8 :     0;
    u32 main_rom_offset;
    void * main_entry_address;
    void * main_ram_address;
    u32 main_size;
    u32 sub_rom_offset;
    void * sub_entry_address;
    void * sub_ram_address;
    u32 sub_size;
    u32 fnt_offset;
    u32 fnt_size;
    u32 fat_offset;
    u32 fat_size;
    u32 main_ovt_offset;
    u32 main_ovt_size;
    u32 sub_ovt_offset;
    u32 sub_ovt_size;
    u8 reserved_A2[32];
    u32 own_size;
    u8 reserved_B[60];
    u8 nintendo_logo[0x9c];
    u16 nintendo_logo_crc16;
    u16 header_crc16;
    u8 reserved_C[32];
} RomHeader;

#define GetRomHeaderAddr() ((RomHeader *)HW_ROM_HEADER_BUF)

#ifdef __cplusplus
}
#endif

#endif

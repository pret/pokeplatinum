#ifndef POKEPLATINUM_PALETTE_H
#define POKEPLATINUM_PALETTE_H

typedef struct {
    u16 unk_00_0 : 5;
    u16 unk_00_5 : 5;
    u16 unk_00_10 : 5;
    u16 unk_00_15 : 1;
} UnkStruct_0200393C;

typedef struct {
    u16 unk_00;
    u16 unk_02_0 : 6;
    u16 unk_02_6 : 5;
    u16 unk_02_11 : 5;
    u16 unk_04_0 : 15;
    u16 unk_04_15 : 1;
    u16 unk_06_0 : 4;
    u16 unk_06_4 : 6;
    u16 : 6;
} UnkStruct_0200330C;

typedef struct {
    u16 *unk_00;
    u16 *unk_04;
    u32 unk_08;
    UnkStruct_0200330C unk_0C;
} UnkStruct_020032D0;

typedef struct PaletteData {
    UnkStruct_020032D0 unk_00[14];
    u16 unk_118_0 : 2;
    u16 unk_118_2 : 14;
    u16 unk_11A_0 : 14;
    u16 unk_11A_14 : 1;
    u16 unk_11A_15 : 1;
    u8 unk_11C;
    u8 unk_11D[3];
} PaletteData;

PaletteData *sub_02002F38(int param0);
void sub_02002F54(PaletteData *param0);
void sub_02002F5C(PaletteData *param0, int param1, void *param2, void *param3, u32 param4);
void sub_02002F70(PaletteData *param0, int param1, u32 param2, u32 param3);
void sub_02002FA0(PaletteData *param0, int param1);
void sub_02002FBC(PaletteData *param0, const void *param1, int param2, u16 param3, u16 param4);
void sub_02002FEC(PaletteData *param0, u32 bankID, u32 memberIndex, u32 param3, int param4, u32 param5, u16 param6, u16 param7);
void PaletteSys_LoadPalette(PaletteData *param0, u32 bankID, u32 memberIndex, u32 param3, int param4, u32 param5, u16 param6);
void sub_02003070(PaletteData *param0, int param1, u16 param2, u32 param3);
void sub_020030E4(u32 param0, u32 param1, u32 param2, u32 param3, u16 param4, void *param5);
void sub_02003120(PaletteData *param0, int param1, u16 param2, int param3, u16 param4, u16 param5);
u16 *sub_02003164(PaletteData *param0, int param1);
u16 *sub_0200316C(PaletteData *param0, int param1);
u8 sub_02003178(PaletteData *param0, u16 param1, u16 param2, s8 param3, u8 param4, u8 param5, u16 param6);
void sub_02003694(PaletteData *param0);
u16 sub_0200384C(PaletteData *param0);
void sub_02003858(PaletteData *param0, int param1);
void sub_0200387C(PaletteData *param0, u8 param1);
void sub_020038B0(PaletteData *param0, int param1, int param2, u16 param3, u16 param4, u16 param5);
u16 sub_02003910(PaletteData *param0, int param1, int param2, u16 param3);
void sub_0200393C(const u16 *param0, u16 *param1, u16 param2, u8 param3, u16 param4);
void sub_020039B0(PaletteData *param0, int param1, u16 param2, u16 param3, u8 param4, u16 param5);
void sub_020039F8(const u16 *param0, u16 *param1, u16 param2, u8 param3, u16 param4);
void sub_02003A2C(PaletteData *param0, int param1, u16 param2, u8 param3, u16 param4);
void sub_02003A8C(u16 *param0, int param1, int param2, int param3, int param4);
void sub_02003B08(PaletteData *param0, u32 param1, u32 param2, u32 param3, int param4, u32 param5, u16 param6, int param7, int param8, int param9);

#endif // POKEPLATINUM_PALETTE_H

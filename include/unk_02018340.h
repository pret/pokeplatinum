#ifndef POKEPLATINUM_UNK_02018340_H
#define POKEPLATINUM_UNK_02018340_H

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0201AE08.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include <nitro/fx/fx.h>

BGL * sub_02018340(u32 param0);
u32 sub_02018364(BGL * param0);
void sub_02018368(const UnkStruct_ov84_0223BA5C * param0);
void sub_020183A0(const UnkStruct_ov84_0223BA5C * param0, u8 param1);
void sub_020183C4(BGL * param0, u8 param1, const UnkStruct_ov97_0222DB78 * param2, u8 param3);
void sub_02018898(BGL * param0, u8 param1, u8 param2, u8 param3);
void sub_02019044(BGL * param0, u8 param1);
void BGL_SetPriority(u8 param0, u8 param1);
void sub_02019120(u8 param0, u8 param1);
void sub_02019184(BGL * param0, u8 param1, u8 param2, int param3);
int sub_020192EC(BGL * param0, u32 param1);
int sub_020192F8(BGL * param0, u32 param1);
void sub_02019348(BGL * param0, u8 param1, const MtxFx22 * param2, int param3, int param4);
void sub_02019410(const void * param0, void * param1, u32 param2);
void sub_02019448(BGL * param0, u8 param1);
void sub_02019460(BGL * param0, u8 param1, const void * param2, u32 param3, u32 param4);
void sub_02019574(BGL * param0, u8 param1, const void * param2, u32 param3);
void sub_0201958C(BGL * param0, u8 param1, const void * param2, u32 param3, u32 param4);
void sub_02019690(u8 param0, u32 param1, u32 param2, u32 param3);
void sub_020196C0(BGL * param0, u32 param1, u32 param2, u32 param3, u32 param4);
void sub_0201972C(u8 param0, void * param1, u16 param2, u16 param3);
void sub_0201975C(u8 param0, u16 param1);
void sub_020198C0(BGL * param0, u8 param1, const void * param2, u8 param3, u8 param4, u8 param5, u8 param6);
void sub_020198E8(BGL * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void * param6, u8 param7, u8 param8, u8 param9, u8 param10);
void sub_02019964(BGL * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void * param6, u8 param7, u8 param8, u8 param9, u8 param10);
void sub_02019CB8(BGL * param0, u8 param1, u16 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7);
void sub_02019E2C(BGL * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6);
void sub_02019EBC(BGL * param0, u8 param1);
void sub_02019EE0(BGL * param0, u8 param1, u16 param2);
void sub_02019F04(BGL * param0, u8 param1, u16 param2);
void * sub_02019F28(u8 param0);
void sub_02019F80(const u8 * param0, u32 param1, u8 * param2, u8 param3);
void * sub_02019FC0(const u8 * param0, u32 param1, u8 param2, u32 param3);
void * sub_02019FE4(BGL * param0, u8 param1);
int sub_02019FF0(BGL * param0, u8 param1);
u16 sub_02019FFC(BGL * param0, u8 param1);
u8 sub_0201A008(BGL * param0, u8 param1);
void sub_0201A1E4(const UnkStruct_0201AE08 * param0, const UnkStruct_0201AE08 * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8);
void sub_0201A424(const UnkStruct_0201AE08 * param0, const UnkStruct_0201AE08 * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8);
void sub_0201A60C(const UnkStruct_0201AE08 * param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5);
void sub_0201A6D0(const UnkStruct_0201AE08 * param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5);
Window * sub_0201A778(u32 param0, u8 param1);
void Window_Init(Window * param0);
u8 sub_0201A7CC(Window * param0);
void BGL_AddWindow(BGL * param0, Window * param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7, u16 param8);
void BGL_AddFramelessWindow(BGL * param0, Window * param1, u8 param2, u8 param3, u16 param4, u8 param5);
void sub_0201A8D4(BGL * param0, Window * param1, const UnkStruct_ov61_0222C884 * param2);
void BGL_DeleteWindow(Window * param0);
void sub_0201A928(Window * param0, u8 param1);
void sub_0201A954(Window * param0);
void sub_0201A9A4(Window * param0);
void sub_0201A9F4(Window * param0);
void sub_0201AA10(Window * param0, u32 param1, u32 param2);
void sub_0201AA3C(Window * param0);
void sub_0201ACCC(Window * param0);
void sub_0201ACF4(Window * param0);
void sub_0201AD10(Window * param0);
void BGL_FillWindow(Window * param0, u8 param1);
void sub_0201ADDC(Window * param0, void * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9);
void sub_0201AE08(Window * param0, void * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9, u16 param10);
void BGL_WindowColor(Window * param0, u8 param1, u16 param2, u16 param3, u16 param4, u16 param5);
void sub_0201AED0(Window * param0, const u8 * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6);
void sub_0201C04C(Window * param0, u8 param1, u8 param2, u8 param3);
BGL * sub_0201C28C(Window * param0);
u8 sub_0201C290(Window * param0);
u8 sub_0201C294(Window * param0);
u8 sub_0201C298(Window * param0);
u8 sub_0201C29C(Window * param0);
u8 sub_0201C2A0(Window * param0);
u16 sub_0201C2A4(Window * param0);
void sub_0201C2AC(Window * param0, u8 param1);
void sub_0201C2B0(Window * param0, u8 param1);
void sub_0201C2B4(Window * param0, u8 param1);
void sub_0201C2B8(BGL * param0);
void sub_0201C3C0(BGL * param0, u8 param1);
void sub_0201C63C(BGL * param0, u8 param1, u8 param2, int param3);
void sub_0201C660(BGL * param0, u8 param1, u8 param2, u16 param3);
void sub_0201C6A8(BGL * param0, u8 param1, u8 param2, fx32 param3);
void sub_0201C718(BGL * param0, u8 param1, u8 param2, int param3);
u8 sub_0201C784(BGL * param0, u8 param1, u16 param2, u16 param3, u16 * param4);

#endif // POKEPLATINUM_UNK_02018340_H

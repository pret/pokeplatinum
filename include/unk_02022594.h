#ifndef POKEPLATINUM_UNK_02022594_H
#define POKEPLATINUM_UNK_02022594_H

#include "struct_defs/union_02022594_020225E0.h"

int sub_02022644(const UnkUnion_02022594 * param0);
int sub_02022664(const UnkUnion_02022594 * param0);
int sub_02022684(const UnkUnion_020225E0 * param0);
int sub_020226DC(const UnkUnion_020225E0 * param0);
BOOL sub_02022734(const UnkUnion_020225E0 * param0);
BOOL sub_02022760(const UnkUnion_020225E0 * param0);
BOOL sub_0202278C(void);

/**
 * @brief Check if the touch screen is tapped.
 * 
 * @return TRUE if the touch screen is tapped, FALSE otherwise.
 */
BOOL TouchScreen_Tapped(void);
BOOL sub_020227A4(u32 * param0, u32 * param1);
BOOL sub_020227C0(u32 * param0, u32 * param1);
int sub_020227DC(const UnkUnion_020225E0 * param0, u32 param1, u32 param2);
BOOL sub_02022830(const UnkUnion_020225E0 * param0, u32 param1, u32 param2);

#endif // POKEPLATINUM_UNK_02022594_H

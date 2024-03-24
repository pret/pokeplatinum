#ifndef POKEPLATINUM_POFFIN_H
#define POKEPLATINUM_POFFIN_H

#include "struct_defs/struct_0202A93C.h"
#include "struct_decls/struct_0202AB28_decl.h"
#include "savedata.h"

typedef enum {
    POFFIN_ATTRIBUTEID_FLAVOR,
    POFFIN_ATTRIBUTEID_SPICINESS,
    POFFIN_ATTRIBUTEID_DRYNESS,
    POFFIN_ATTRIBUTEID_SWEETNESS,
    POFFIN_ATTRIBUTEID_BITTERNESS,
    POFFIN_ATTRIBUTEID_SOURNESS,
    POFFIN_ATTRIBUTEID_06,
    POFFIN_ATTRIBUTEID_NUM
} PoffinAttributeID;

int Poffin_sizeof(void);
BOOL sub_0202A914(Poffin * poffin);
void Poffin_clear(Poffin * poffin);
Poffin * Poffin_malloc(int heapID);
void Poffin_copy(Poffin * src, Poffin * dest);
u8 Poffin_GetAttribute(Poffin * poffin, PoffinAttributeID attributeID);
int sub_0202A9E4(Poffin * poffin, u8 * param1, u8 param2, BOOL isFoul);
void Poffin_StoreAttributesToArray(Poffin * poffin, u8 * dest);
u8 Poffin_CalcLevel(Poffin * poffin);
UnkStruct_0202AB28 * Poffin_GetSavedataBlock(SaveData * savedata);
int Poffin_SaveSize(void);
void Poffin_Init(UnkStruct_0202AB28 * param0);
u16 sub_0202AB54(UnkStruct_0202AB28 * param0);
u16 sub_0202AB74(UnkStruct_0202AB28 * param0, Poffin * param1);
BOOL sub_0202AB98(UnkStruct_0202AB28 * param0, u16 param1);
void sub_0202ABD4(UnkStruct_0202AB28 * param0);
void sub_0202AC54(UnkStruct_0202AB28 * param0, u16 param1, Poffin * param2);
Poffin * sub_0202AC70(UnkStruct_0202AB28 * param0, u16 param1, int param2);
u16 sub_0202AC98(UnkStruct_0202AB28 * param0);
u16 sub_0202ACC0(UnkStruct_0202AB28 * param0);

#endif // POKEPLATINUM_POFFIN_H

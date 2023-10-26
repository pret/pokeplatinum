#ifndef POKEPLATINUM_BERRY_DATA_H
#define POKEPLATINUM_BERRY_DATA_H

#include "struct_decls/struct_02006C24_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_berry_data_decl.h"

#define FIRMNESS_VERY_SOFT     1
#define FIRMNESS_SOFT          2
#define FIRMNESS_HARD          3
#define FIRMNESS_VERY_HARD     4
#define FIRMNESS_SUPER_HARD    5

/*
 * Constructs a new NARC which contains an open FSFile to the berry data archive.
 *
 * @param heapID:       ID of the heap to alloc from
 *
 * @returns: Pointer to the newly-allocated NARC
 */
NARC * BerryData_NARC_ctor(u32 heapID);

BerryData * sub_020973A8(NARC * param0, u32 param1, u32 param2);

/*
 * Closes the wrapped FSFile and returns the NARC allocation to the heap from whence it came.
 *
 * @param narc:    Pointer to the NARC
 */
void BerryData_NARC_dtor(NARC * narc);

/*
 * Creates a new buffer large enough to hold the data of the specified 
 * NARC member in 'nuts_data.narc', then reads the data.
 *
 * @param index:          Index of the NARC member within 'nuts_data.narc' which contains the berry's data
 * @param heapID:         ID of the heap to alloc from
 *
 * @returns: Pointer to the allocated buffer which contains the data that was read.
 */
BerryData * BerryData_LoadDataByNarcMemberIndex(u32 index, u32 heapID);

/*
 * Creates a new buffer large enough to hold the data of the
 * specified berry, then reads the data from nuts_data.narc
 *
 * @param itemID:         Item ID of the berry for which to read the data
 * @param heapID:         ID of the heap to alloc from
 *
 * @returns: Pointer to the allocated buffer which contains the data that was read.
 */
BerryData * BerryData_LoadDataByItemID(u32 itemID, u32 heapID);

/*
 * Retrieves the value of the specified attribute from a BerryData buffer
 *
 * @param berryData:      Pointer to the buffer holding the berry data
 * @param attributeID:    ID of the attribute to retrieve the value for
 *
 * @returns: The value of the specified attribute
 */
u32 BerryData_GetAttribute(BerryData * berryData, u32 attributeID);

/*
 * Creates a new string buffer large enough to hold the 
 * name of the specified berry, then reads the string.
 *
 * @param index:          Index of the NARC member within 'nuts_data.narc' which contains the berry's data
 * @param heapID:         ID of the heap to alloc from
 *
 * @returns: Pointer to the allocated buffer which contains the string that was read.
 */
Strbuf* BerryData_AllocAndGetName(u16 index, u32 heapID);

/*
 * Creates a new string buffer large enough to hold the 
 * description of the specified berry, then reads the string.
 *
 * @param index:          Index of the NARC member within 'nuts_data.narc' which contains the berry's data
 * @param heapID:         ID of the heap to alloc from
 *
 * @returns: Pointer to the allocated buffer which contains the string that was read.
 */
Strbuf* BerryData_AllocAndGetDescription(u16 index, u16 heapID);

#endif // POKEPLATINUM_BERRY_DATA_H

#ifndef POKEPLATINUM_UNK_0200AC5C_H
#define POKEPLATINUM_UNK_0200AC5C_H

#include "struct_decls/unk_0200AC5C.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "strbuf.h"

enum MessageFormatterType {
    FORMATTER_STORE_MESSAGE_DATA,
    FORMATTER_STORE_NARC_HANDLE
};

/**
 * @brief Load message data out of the given NARC.
 * 
 * @param narcID 
 * @param dataID 
 * @param heapID 
 * @return Loaded message data.
 */
UnkStruct_0200AC5C* sub_0200AC5C(u32 narcID, u32 dataID, u32 heapID);

/**
 * @brief Free allocated message data.
 * 
 * @param messageData
 */
void sub_0200AC64(UnkStruct_0200AC5C *messageData);

/**
 * @brief Get a given message out of the message data structure.
 * 
 * @param messageData 
 * @param msgID 
 * @param dst Destination buffer for the extracted string.
 */
void sub_0200AC6C(const UnkStruct_0200AC5C *messageData, u32 msgID, charcode_t *dst);

/**
 * @brief Get a given message from the specified NARC.
 * 
 * @param narcID 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @param dst Destination buffer for the extracted string.
 */
void sub_0200ACF0(u32 narcID, u32 dataID, u32 msgID, u32 heapID, charcode_t *dst);

/**
 * @brief Get a given message out of the message data structure as a Strbuf.
 * 
 * @param messageData 
 * @param msgID 
 * @param strbuf Destination for the extracted string.
 */
void sub_0200ADAC(const UnkStruct_0200AC5C *messageData, u32 msgID, Strbuf *strbuf);

/**
 * @brief Get a given message out of the message data structure as a Strbuf.
 * A new Strbuf will be allocated and returned.
 * 
 * @param messageData 
 * @param msgID 
 * @param heapID 
 * @return The newly-allocated Strbuf.
 */
Strbuf* sub_0200AE5C(const UnkStruct_0200AC5C *messageData, u32 msgID, u32 heapID);

/**
 * @brief Load the given NARC and get a string out from the loaded NARC.
 * 
 * @param narcID 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @param dst Destination for the extracted string.
 */
void sub_0200AF20(u32 narcID, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst);

/**
 * @brief Gets a string from the specified message data NARC.
 * 
 * @param narc 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @param dst Destination for the extracted string.
 */
void sub_0200AF48(NARC *narc, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst);

/**
 * @brief Get a given message out of the specified NARC as a Strbuf.
 * A new Strbuf will be allocated and returned.
 * 
 * @param narcID 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @return The newly-allocated Strbuf.
 */
Strbuf* sub_0200B010(u32 narcID, u32 dataID, u32 msgID, u32 heapID);

/**
 * @brief Get a given message out of the specified NARC as a Strbuf.
 * A new Strbuf will be allocated and returned.
 * 
 * @param narc 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @return The newly-allocated Strbuf.
 */
Strbuf* sub_0200B044(NARC *narc, u32 dataID, u32 msgID, u32 heapID);

/**
 * @brief Return the number of messages referenced by a data header.
 * 
 * @param data
 * @return u32 
 */
u32 sub_0200B120(const UnkStruct_0200AC5C *data);

/**
 * @brief Return the number of messages referenced by a data header stored
 * within a given NARC.
 * 
 * @param narcID 
 * @param dataID
 * @return u32 
 */
u32 sub_0200B124(u32 narcID, u32 dataID);

/**
 * @brief Initialize and return a new UnkStruct_0200B144 according to the given
 * load type.
 * 
 * @param loadType If FORMATTER_STORE_MESSAGE_DATA, store message data in the struct.
 *                 Otherwise, store a handle to the NARC from which to pull data.
 * @param narcID 
 * @param dataID 
 * @param heapID 
 * @return UnkStruct_0200B144* 
 */
UnkStruct_0200B144* sub_0200B144(enum MessageFormatterType loadType, u32 narcID, u32 dataID, u32 heapID);

/**
 * @brief Free a UnkStruct_0200B144 back to its owning heap.
 * 
 * @param formatter
 */
void sub_0200B190(UnkStruct_0200B144 *formatter);

/**
 * @brief Load a message string with the given ID into a previously-alloc'd
 * Strbuf.
 * 
 * @param formatter 
 * @param msgID 
 * @param dst 
 */
void sub_0200B1B8(const UnkStruct_0200B144 *formatter, u32 msgID, Strbuf *dst);

/**
 * @brief Load a message string with the given ID and return a new Strbuf
 * to contain it.
 * 
 * @param formatter 
 * @param msgID 
 * @return Strbuf* 
 */
Strbuf* sub_0200B1EC(const UnkStruct_0200B144 *formatter, u32 msgID);

/**
 * @brief Return the number of messages managed by the given formatter.
 * 
 * @param formatter 
 * @return u32 
 */
u32 sub_0200B218(const UnkStruct_0200B144 *formatter);

/**
 * @brief Load a message string with the given ID into a destination buffer.
 * 
 * @param formatter 
 * @param msgID 
 * @param dst 
 */
void sub_0200B240(const UnkStruct_0200B144 *formatter, u32 msgID, charcode_t *dst);

/**
 * @brief Load the name of a given species into a destination buffer.
 * 
 * @param param0 
 * @param param1 
 * @param param2 
 */
void sub_0200B274(u32 species, u32 heapID, charcode_t *dst);

#endif // POKEPLATINUM_UNK_0200AC5C_H

#ifndef POKEPLATINUM_MESSAGE_DATA_H
#define POKEPLATINUM_MESSAGE_DATA_H

#include "struct_decls/message_data.h"
#include "struct_decls/message_formatter.h"
#include "struct_decls/narc.h"
#include "struct_decls/strbuf.h"

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
MessageData* MessageData_Load(u32 narcID, u32 dataID, u32 heapID);

/**
 * @brief Free allocated message data.
 * 
 * @param messageData
 */
void MessageData_Free(MessageData *messageData);

/**
 * @brief Get a given message out of the message data structure.
 * 
 * @param messageData 
 * @param msgID 
 * @param dst Destination buffer for the extracted string.
 */
void MessageData_Get(const MessageData *messageData, u32 msgID, charcode_t *dst);

/**
 * @brief Get a given message from the specified NARC.
 * 
 * @param narcID 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @param dst Destination buffer for the extracted string.
 */
void MessageData_GetFromNARC(u32 narcID, u32 dataID, u32 msgID, u32 heapID, charcode_t *dst);

/**
 * @brief Get a given message out of the message data structure as a Strbuf.
 * 
 * @param messageData 
 * @param msgID 
 * @param strbuf Destination for the extracted string.
 */
void MessageData_GetStrbuf(const MessageData *messageData, u32 msgID, Strbuf *strbuf);

/**
 * @brief Get a given message out of the message data structure as a Strbuf.
 * A new Strbuf will be allocated and returned.
 * 
 * @param messageData 
 * @param msgID 
 * @param heapID 
 * @return The newly-allocated Strbuf.
 */
Strbuf* MessageData_AllocStrbuf(const MessageData *messageData, u32 msgID, u32 heapID);

/**
 * @brief Load the given NARC and get a string out from the loaded NARC.
 * 
 * @param narcID 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @param dst Destination for the extracted string.
 */
void MessageData_GetStrbufFromNARC(u32 narcID, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst);

/**
 * @brief Gets a string from the specified message data NARC.
 * 
 * @param narc 
 * @param dataID 
 * @param msgID 
 * @param heapID 
 * @param dst Destination for the extracted string.
 */
void MessageData_GetStrbufFromNARCHandle(NARC *narc, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst);

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
Strbuf* MessageData_AllocStrbufFromNARC(u32 narcID, u32 dataID, u32 msgID, u32 heapID);

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
Strbuf* MessageData_AllocStrbufFromNARCHandle(NARC *narc, u32 dataID, u32 msgID, u32 heapID);

/**
 * @brief Return the number of messages referenced by a data header.
 * 
 * @param data
 * @return u32 
 */
u32 MessageData_MessageCount(const MessageData *data);

/**
 * @brief Return the number of messages referenced by a data header stored
 * within a given NARC.
 * 
 * @param narcID 
 * @param dataID
 * @return u32 
 */
u32 MessageData_MessageCountFromNARC(u32 narcID, u32 dataID);

/**
 * @brief Initialize and return a new MessageFormatter according to the given
 * load type.
 * 
 * @param loadType If FORMATTER_STORE_MESSAGE_DATA, store message data in the struct.
 *                 Otherwise, store a handle to the NARC from which to pull data.
 * @param narcID 
 * @param dataID 
 * @param heapID 
 * @return MessageFormatter* 
 */
MessageFormatter* MessageFormatter_Init(enum MessageFormatterType loadType, u32 narcID, u32 dataID, u32 heapID);

/**
 * @brief Free a MessageFormatter back to its owning heap.
 * 
 * @param formatter
 */
void MessageFormatter_Free(MessageFormatter *formatter);

/**
 * @brief Load a message string with the given ID into a previously-alloc'd
 * Strbuf.
 * 
 * @param formatter 
 * @param msgID 
 * @param dst 
 */
void MessageFormatter_LoadStrbuf(const MessageFormatter *formatter, u32 msgID, Strbuf *dst);

/**
 * @brief Load a message string with the given ID and return a new Strbuf
 * to contain it.
 * 
 * @param formatter 
 * @param msgID 
 * @return Strbuf* 
 */
Strbuf* MessageFormatter_AllocStrbuf(const MessageFormatter *formatter, u32 msgID);

/**
 * @brief Return the number of messages managed by the given formatter.
 * 
 * @param formatter 
 * @return u32 
 */
u32 MessageFormatter_MessageCount(const MessageFormatter *formatter);

/**
 * @brief Load a message string with the given ID into a destination buffer.
 * 
 * @param formatter 
 * @param msgID 
 * @param dst 
 */
void MessageFormatter_LoadString(const MessageFormatter *formatter, u32 msgID, charcode_t *dst);

/**
 * @brief Load the name of a given species into a destination buffer.
 * 
 * @param param0 
 * @param param1 
 * @param param2 
 */
void MessageFormatter_LoadSpeciesName(u32 species, u32 heapID, charcode_t *dst);

#endif // POKEPLATINUM_MESSAGE_DATA_H

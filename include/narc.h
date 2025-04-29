#ifndef POKEPLATINUM_NARC_H
#define POKEPLATINUM_NARC_H

#include "constants/narc.h"

/*
 * The NARC struct wraps NitroSDK type FSFile and manages the important
 * offsets to the FATB and the FIMG chunks within the file.
 *
 * FATB defines the regions within the FIMG to which the data are allocated.
 */
typedef struct NARC {
    FSFile file;
    u32 fatbStart;
    u32 fimgStart;
    u16 numFiles;
} NARC;

/*
 * Reads the entire content of an archive member into an existing buffer
 *
 * @param dest:           Pointer to destination buffer, should be large enough to hold the data
 * @param narcID:      Index of NARC to read
 * @param memebrIndex:    Index of FAT member within the NARC
 */
void NARC_ReadWholeMemberByIndexPair(void *dest, enum NarcID narcID, int memberIndex);

/*
 * Creates a new buffer large enough to hold the content of the archive member, then reads its data.
 * The AllocAtEnd variant is preferred for very short-lived buffers.
 *
 * @param narcID:      Index of NARC to read
 * @param memberIndex:    Index of FAT member within the NARC
 * @param heapID:         ID of the heap to alloc from
 *
 * @returns: Pointer to the allocated buffer which contains the data that was read.
 */
void *NARC_AllocAndReadWholeMemberByIndexPair(enum NarcID narcID, int memberIndex, int heapID);
void *NARC_AllocAtEndAndReadWholeMemberByIndexPair(enum NarcID narcID, int memberIndex, int heapID);

/*
 * Reads a portion of an archive member into an existing buffer
 *
 * @param dest:           Pointer to destination buffer, should be large enough to hold the data
 * @param narcID:      Index of NARC to read
 * @param memberIndex:    Index of FAT member within the NARC
 * @param offset:         Byte offset to start reading, relative to start of member, up to the end of member
 * @param bytesToRead:    Number of bytes to read, up to the total bytesToRead of member minus offset
 */
void NARC_ReadFromMemberByIndexPair(void *dest, enum NarcID narcID, int memberIndex, int offset, int bytesToRead);

/*
 * Creates a new buffer large enough to hold the size of the data to read, then reads the specified data slice.
 * The AllocAtEnd variant is preferred for very short-lived buffers.
 *
 * @param narcID:      Index of NARC to read
 * @param memberIndex:    Index of FAT member within the NARC
 * @param heapID:         ID of the heap to alloc from
 * @param offset:         Byte offset to start reading, relative to start of member, up to the end of member
 * @param bytesToRead:    Number of bytes to read, up to the total bytesToRead of member minus offset
 *
 * @returns: Pointer to the allocated buffer which contains the data that was read.
 */
void *NARC_AllocAndReadFromMemberByIndexPair(enum NarcID narcID, int memberIndex, int heapID, int offset, int bytesToRead);
void *NARC_AllocAtEndAndReadFromMemberByIndexPair(enum NarcID narcID, int memberIndex, int heapID, int offset, int bytesToRead);

/*
 * Gets the size of a NARC member. Useful when managing the read buffer yourself and the NARC has variable
 * sized members.
 *
 * @param narcID:      Index of NARC to read
 * @param memberIndex:    Index of FAT member within the NARC
 *
 * @returns: Size in bytes of the member
 */
u32 NARC_GetMemberSizeByIndexPair(enum NarcID narcID, int memberIndex);

/*
 * Constructs a new NARC which contains an open FSFile to the corresponding archive.
 * Useful to reduce overhead when reading from the same NARC multiple times.
 *
 * @param narcID:    Index of NARC to open
 * @param heapID:       ID of the heap to alloc from
 *
 * @returns: Pointer to the newly-allocated NARC
 */
NARC *NARC_ctor(enum NarcID narcID, u32 heapID);

/*
 * Closes the wrapped FSFile and returns the NARC allocation to the heap from whence it came.
 *
 * @param narc:    Pointer to the NARC
 */
void NARC_dtor(NARC *narc);

/*
 * Creates a new buffer large enough to hold the content of the archive member, then reads its data.
 *
 * @param narc:           Pointer to the NARC
 * @param memberIndex:    Index of FAT member within the NARC
 * @param heapID:         ID of the heap to alloc from
 *
 * @returns: Pointer to the allocated buffer which contains the data that was read.
 */
void *NARC_AllocAndReadWholeMember(NARC *narc, u32 memberIndex, u32 heapID);

/*
 * Reads NARC member to preallocated buffer dest, which should be large enough to hold the data.
 *
 * @param narc:           Pointer to the NARC
 * @param memberIndex:    Index of FAT member within the NARC
 * @param dest:           Pointer to the destination buffer
 */
void NARC_ReadWholeMember(NARC *narc, u32 memberIndex, void *dest);

/*
 * Gets the size of a NARC member. Useful when managing the read buffer yourself and the NARC has variable
 * sized members.
 *
 * @param narc:           Pointer to the NARC
 * @param memberIndex:    Index of FAT member within the NARC
 *
 * @returns: Size in bytes of the member
 */
u32 NARC_GetMemberSize(NARC *narc, u32 memberIndex);

/*
 * Reads a portion of an archive member into an existing buffer
 *
 * @param narc:           Pointer to the NARC
 * @param memberIndex:    Index of FAT member within the NARC
 * @param offset:         Byte offset to start reading, relative to start of member, up to the end of member
 * @param bytesToRead:    Number of bytes to read, up to the total bytesToRead of member minus offset
 * @param dest:           Pointer to destination buffer, should be large enough to hold the data
 */
void NARC_ReadFromMember(NARC *narc, u32 memberIndex, u32 offset, u32 bytesToRead, void *dest);

/*
 * Reads a portion of the archive file from the current cursor into an existing buffer
 *
 * @param narc:           Pointer to the NARC
 * @param bytesToRead:    Number of bytes to read, up to the total bytesToRead of member minus offset
 * @param dest:           Pointer to destination buffer, should be large enough to hold the data
 */
void NARC_ReadFile(NARC *narc, u32 bytesToRead, void *dest);

void NARC_Seek(NARC *narc, u32 offset);

/*
 * Gets the total number of archive members
 *
 * @param narc: Pointer to the NARC
 *
 * @returns: Number of archive members
 */
u16 NARC_GetFileCount(NARC *narc);

#endif // POKEPLATINUM_NARC_H

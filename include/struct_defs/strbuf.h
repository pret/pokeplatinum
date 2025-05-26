#ifndef POKEPLATINUM_STRUCT_STRBUF_H
#define POKEPLATINUM_STRUCT_STRBUF_H

#include "charcode.h"

/**
 * Managed string buffer.
 */
typedef struct Strbuf {
    /// Maximum allocated size of the buffer.
    u16 maxSize;

    /// Size of the buffer, at present; the length of the underlying string.
    u16 size;

    /// Integrity value specified at allocation time.
    u32 integrity;

    /// The underlying character buffer.
    ///
    /// UB: This is meant to be a flexible array, but is purposely defined
    /// incorrectly in order to match the original byte-code. The correct
    /// definition method would be as `data[]`.
    charcode_t data[1];
} Strbuf;

typedef struct Strbuf Strbuf;

#endif // POKEPLATINUM_STRUCT_STRBUF_H

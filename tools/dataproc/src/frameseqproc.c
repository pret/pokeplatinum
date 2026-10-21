#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

// A sheet's dictionary indices must fit in a u8.
#define MAX_SHEET_FRAMES (UINT8_MAX + 1)

static const char *seqFile = NULL;

enum { B_FRAME_SEQ };

static Driver driver = {
    .depfile = "frame_seq.d",

    .options = (Option[]) {
        POSITIONAL("SEQ_JSON", &seqFile, "Billboard frame sequence. Writes OUTDIR/<stem>.bin."),
        { 0 },
    },

    // Named here only until main() applies the input's stem.
    .outputs = {
        .binaryFiles = (BinaryFile[]) {
            [B_FRAME_SEQ] = { .filename = "frame_seq.bin" },
            { 0 },
        },
    },
};

// Textures are sorted with strcmp; frame 10 comes before frame 2.
static u8 TextureIndex(unsigned frame, unsigned sheetFrames)
{
    char name[8], other[8];
    snprintf(name, sizeof(name), "%u", frame);

    unsigned index = 0;
    for (unsigned i = 1; i <= sheetFrames; i++) {
        snprintf(other, sizeof(other), "%u", i);
        if (strcmp(other, name) < 0) index++;
    }

    return (u8)index;
}

// Layout read by BillboardGfxSequence_SetData:
//
//   u32 count
//   u16 startFrame[count]
//   u8  textureIdx[count]
//   u8  plttIdx[count]
static void ProcSequence(dp_node root)
{
    const unsigned sheetFrames = dp_uint_in_at(root, ".sheet_frames", 1, UINT8_MAX);
    const dp_node  keys        = dp_at(root, ".keys");
    const size_t   count       = dp_arr_len(keys);
    if (sheetFrames == 0 || dp_type_of(keys) != DP_ARRAY) return; // error is already staged

    if (count == 0) {
        dp_error(keys, "frame sequence has no keys");
        return;
    }

    u16 *startFrame = Zalloc(count, sizeof(*startFrame));
    u8  *textureIdx = Zalloc(count, sizeof(*textureIdx));
    u8  *plttIdx    = Zalloc(count, sizeof(*plttIdx));

    for (dp_each(key, i, keys)) {
        const dp_node start = dp_at(key, ".start");
        startFrame[i]       = dp_u16(start);

        // Don't double-check against 0
        if (dp_type_of(start) == DP_INT && dp_int(start) == startFrame[i]) {
            if (i == 0 && startFrame[i] != 0) {
                dp_error(start, "the first key must start at frame 0");
            } else if (i > 0 && startFrame[i] <= startFrame[i - 1]) {
                dp_error(start, "key must start after the previous key's start (%u)", startFrame[i - 1]);
            }
        }

        textureIdx[i] = TextureIndex(dp_uint_in_at(key, ".frame", 1, sheetFrames), sheetFrames);
        plttIdx[i]    = dp_u8(dp_try(key, ".palette"));
    }

    const u32 n = count;
    BinaryFile_Write(B_FRAME_SEQ, &n, sizeof(n));
    BinaryFile_Write(B_FRAME_SEQ, startFrame, count * sizeof(*startFrame));
    BinaryFile_Write(B_FRAME_SEQ, textureIdx, count * sizeof(*textureIdx));
    BinaryFile_Write(B_FRAME_SEQ, plttIdx, count * sizeof(*plttIdx));

    free(startFrame);
    free(textureIdx);
    free(plttIdx);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    const char *base = strrchr(seqFile, '/');
    base             = base ? base + 1 : seqFile;
    if (!String_EndsWith(base, ".json")) CLI_Fail("'%s' is not a .json file", seqFile);

    char *output = Driver_Keep(String_Format("%.*s.bin", (int)(strlen(base) - strlen(".json")), base));
    driver.outputs.binaryFiles[B_FRAME_SEQ].filename = output;

    dp_file *seq = Driver_Load("%s", seqFile);
    ProcSequence(dp_root(seq));
    Driver_Close(seq);

    return Driver_Finish(&driver);
}

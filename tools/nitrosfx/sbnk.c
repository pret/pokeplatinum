#include "sbnk.h"

#include "util.h"

enum InstrumentsType {
    INSTRUMENT_NULL = 0, // Null (empty)
    INSTRUMENT_SINGLE, // PCM
    INSTRUMENT_PSG1, // PSG
    INSTRUMENT_PSG2, // White Noise
    INSTRUMENT_PSG3, // Direct PCM
    INSTRUMENT_ZEROED, // Null (0s)
    INSTRUMENT_DRUMS = 16, // Drum Set
    INSTRUMENT_KEYSPLIT, // Key Split
};

const uint8_t instrumentsTypeValues[] = {
    INSTRUMENT_NULL,
    INSTRUMENT_SINGLE,
    INSTRUMENT_PSG1,
    INSTRUMENT_PSG2,
    INSTRUMENT_PSG3,
    INSTRUMENT_DRUMS,
    INSTRUMENT_KEYSPLIT,
};

const char *instrumentsTypeStrings[] = {
    "NULL",
    "Single",
    "PSG1",
    "PSG2",
    "PSG3",
    "ZERO",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "Drums",
    "Keysplit",
};
const char *sameAddressString = "SameAsAbove";

struct SbnkChunk_DATA
{
    uint32_t chunkID;
    uint32_t size;
    uint32_t padding[8];
    uint32_t count;
    //uint8_t *instruments;
};

struct InstrumentStream {
    struct InstrumentStream *next;
    uint8_t *data;
    uint32_t size;
    uint8_t instrumentsType;
    uint16_t headerIndex;
    uint16_t address;
};

struct SbnkPackage {
    struct InstrumentStream *head;
    struct InstrumentStream *tail;
    uint32_t count;
    uint32_t size;
};

int InstrumentAddressCmp_q(const void *i1, const void *i2)
{
    const struct InstrumentStream *a = (struct InstrumentStream*)i1;
    const struct InstrumentStream *b = (struct InstrumentStream*)i2;
    int diff = (a->address > b->address) - (a->address < b->address);
    if (diff == 0)
    {
        // maintain order of null and shared pointers
        diff = (a->headerIndex > b->headerIndex) - (a->headerIndex < b->headerIndex);
    }
    return diff;
}

static void PackSbnkFile(struct SbnkPackage *sbnkPackage, uint8_t *data, const uint32_t size, uint8_t instrumentsType, uint16_t headerIndex)
{
    struct InstrumentStream *instrument = malloc(sizeof(struct InstrumentStream));
    instrument->next = NULL;
    instrument->data = data;
    instrument->size = size;
    instrument->instrumentsType = instrumentsType;
    instrument->headerIndex = headerIndex;
    instrument->address = sbnkPackage->size;

    sbnkPackage->size += size;

    if (sbnkPackage->count == 0) {
        sbnkPackage->head = instrument;
        sbnkPackage->tail = instrument;
        sbnkPackage->count = 1;
        return;
    }

    sbnkPackage->tail->next = instrument;
    sbnkPackage->tail = sbnkPackage->tail->next;
    sbnkPackage->count++;
}

uint8_t *TxtToSbnk(FILE *txt, uint32_t *sbnkSize)
{
    struct SbnkPackage *sbnkPackage = calloc(1, sizeof(struct DataPackage));
    const char delimiter[3] = ", ";
    char line[1024];
    char *s;
    uint8_t *instrumentData;
    uint8_t instrumentType = INSTRUMENT_NULL;
    uint16_t headerIndex = 0;
    while (fgets(line, 1024, txt))
    {
        // ignore comments
        line[strcspn(line, ";")] = 0;
        line[strcspn(line, "\r")] = 0;
        if (strlen(line) == 0)
        {
            continue;
        }

        if (line[0] == '\t')
        {
            // sub definitions
            // don't pack, just add to last one
            int push = sbnkPackage->tail->size;
            instrumentData = malloc(12 + push);
            for (int i = 0; i < push; i++)
            {
                instrumentData[i] = sbnkPackage->tail->data[i];
            }
            s = strtok(line, delimiter);
            if (s == NULL)
            {
                FATAL_ERROR("Read error in section %d, NULL\n", sbnkPackage->count);
            }
            WriteU16_LE(instrumentData + push, strtod(s, NULL));
            for (int i = 0; i < 2; i++)
            {
                s = strtok(NULL, delimiter);
                if (s == NULL)
                {
                    FATAL_ERROR("Read error in section %d, NULL\n", sbnkPackage->count);
                }
                WriteU16_LE(instrumentData + (i * 2 + 2 + push), strtod(s, NULL));
            }
            for (int i = 0; i < 6; i++)
            {
                s = strtok(NULL, delimiter);
                if (s == NULL)
                {
                    FATAL_ERROR("Read error in section %d, NULL\n", sbnkPackage->count);
                }
                instrumentData[6 + i + push] = strtod(s, NULL);
            }
            free(sbnkPackage->tail->data);
            sbnkPackage->tail->data = instrumentData;
            sbnkPackage->tail->size += 12;
            sbnkPackage->size += 12;
        }
        else
        {
            s = strtok(line, delimiter);
            if (s == NULL)
            {
                continue;
            }
            headerIndex = strtod(s, NULL);
            if (strcmp("Unused", s) == 0)
            {
                // byte stream
                // This is probably for padding to 4
                continue;
            }
            else
            {
                s = strtok(NULL, delimiter);
                if (s == NULL)
                {
                    continue;
                }

                // identify instrument
                if (strcmp(sameAddressString, s) == 0)
                {
                    PackSbnkFile(sbnkPackage, NULL, 0, instrumentType, headerIndex);
                    continue;
                }
                if (strcmp(instrumentsTypeStrings[INSTRUMENT_NULL], s) == 0)
                {
                    PackSbnkFile(sbnkPackage, NULL, 0, INSTRUMENT_NULL, headerIndex);
                    continue;
                }
                bool typeMatch = false;
                for (int i = 1; i < 7; i++)
                {
                    if (strcmp(instrumentsTypeStrings[instrumentsTypeValues[i]], s) == 0)
                    {
                        instrumentType = instrumentsTypeValues[i];
                        typeMatch = true;
                        break;
                    }
                }
                if (typeMatch == false)
                {
                    FATAL_ERROR("Unrecognized intrument type %s\n", s);
                }

                // collect instrument values
                if (instrumentType < INSTRUMENT_DRUMS)
                {
                    instrumentData = malloc(10);
                    for (int i = 0; i < 2; i++)
                    {
                        s = strtok(NULL, delimiter);
                        if (s == NULL)
                        {
                            FATAL_ERROR("Read error in section %d, PSG\n", sbnkPackage->count);
                        }
                        WriteU16_LE(instrumentData + (i * 2), strtod(s, NULL));
                    }
                    for (int i = 0; i < 6; i++)
                    {
                        s = strtok(NULL, delimiter);
                        if (s == NULL)
                        {
                            FATAL_ERROR("Read error in section %d, PSG\n", sbnkPackage->count);
                        }
                        instrumentData[4 + i] = strtod(s, NULL);
                    }
                    PackSbnkFile(sbnkPackage, instrumentData, 10, instrumentType, headerIndex);
                }
                else if (instrumentType == INSTRUMENT_DRUMS)
                {
                    instrumentData = malloc(2);
                    for (int i = 0; i < 2; i++)
                    {
                        s = strtok(NULL, delimiter);
                        if (s == NULL)
                        {
                            FATAL_ERROR("Read error in section %d, DRUMS\n", sbnkPackage->count);
                        }
                        instrumentData[i] = strtod(s, NULL);
                    }
                    PackSbnkFile(sbnkPackage, instrumentData, 2, instrumentType, headerIndex);
                }
                else if (instrumentType == INSTRUMENT_KEYSPLIT)
                {
                    instrumentData = malloc(8);
                    for (int i = 0; i < 8; i++)
                    {
                        s = strtok(NULL, delimiter);
                        if (s == NULL)
                        {
                            FATAL_ERROR("Read error in section %d, KEYSPLIT\n", sbnkPackage->count);
                        }
                        instrumentData[i] = strtod(s, NULL);
                    }
                    PackSbnkFile(sbnkPackage, instrumentData, 8, instrumentType, headerIndex);
                }
            }
        }
    }

    // add header and index table size
    uint32_t headerSize = sizeof(struct NitroChunk) + sizeof(struct SbnkChunk_DATA) + sbnkPackage->count * 0x04;
    *sbnkSize = sbnkPackage->size + headerSize;

    // pad to 0x04 byte alignment
    int pad = (4 - *sbnkSize) % 4;
    *sbnkSize += pad;

    // write sbnk
    uint8_t *sbnk = malloc(*sbnkSize);

    WriteNitroChunk(sbnk, "SBNK", *sbnkSize);
    struct SbnkChunk_DATA *sbnkData = (struct SbnkChunk_DATA*)(sbnk + sizeof(struct NitroChunk));
    memcpy(&sbnkData->chunkID, "DATA", 4);
    WriteU32_LE(&sbnkData->size, *sbnkSize - sizeof(struct NitroChunk));
    for (int i = 0; i < 8; i++) sbnkData->padding[i] = 0;
    WriteU32_LE(&sbnkData->count, sbnkPackage->count); // number of instruments
    uint8_t *sbnkPos = (uint8_t*)sbnkData + sizeof(struct SbnkChunk_DATA);

    // write indexing table
    struct InstrumentStream *bnk;
    for (int i = 0; i < sbnkPackage->count; i++)
    {
        bnk = sbnkPackage->head;
        while (bnk->headerIndex != i)
        {
            bnk = bnk->next;
        }
        if (bnk->instrumentsType == INSTRUMENT_NULL) // check for NULL
        {
            WriteU32_LE(sbnkPos, 0);
            sbnkPos += 4;
            bnk = bnk->next;
        }
        else
        {
            *sbnkPos++ = bnk->instrumentsType;
            WriteU16_LE(sbnkPos, headerSize + bnk->address);
            sbnkPos += 2;
            *sbnkPos++ = 0;
            bnk = bnk->next;
            while ((bnk != NULL) && (bnk->size == 0)) // check for "same as above"
            {
                *sbnkPos++ = bnk->instrumentsType;
                WriteU16_LE(sbnkPos, headerSize + bnk->address);
                sbnkPos += 2;
                *sbnkPos++ = 0;
                bnk = bnk->next;
                i++;
            }
        }
    }

    // write file stream
    bnk = sbnkPackage->head;
    struct InstrumentStream *bnkF;
    for (int i = 0; i < sbnkPackage->count; i++)
    {
        if (bnk->data != NULL)
        {
            memcpy(sbnkPos, bnk->data, bnk->size);
            sbnkPos += bnk->size;
            free(bnk->data);
        }
        bnkF = bnk;
        bnk = bnk->next;
        free(bnkF);
    }

    for (int i = 0; i < pad; i++) *sbnkPos++ = 0;
    free(sbnkPackage);

    return sbnk;
}

void SbnkToTxt(uint8_t *sbnk, uint32_t sbnkSize, FILE *txt)
{
    struct SbnkChunk_DATA *sbnkData = (struct SbnkChunk_DATA*)(sbnk + sizeof(struct NitroChunk));
    uint32_t numInstruments = ReadU32_LE(&sbnkData->count);
    uint8_t *sbnkPos = sbnk + sizeof(struct NitroChunk) + sizeof(struct SbnkChunk_DATA);

    // collect data elements
    struct InstrumentStream *instrumentStream = malloc(sizeof(struct InstrumentStream) * numInstruments);
    for (int i = 0; i < numInstruments; i++)
    {
        instrumentStream[i].headerIndex = i;
        instrumentStream[i].instrumentsType = *sbnkPos++;
        instrumentStream[i].address = ReadU16_LE(sbnkPos);
        sbnkPos += 3;
    }

    // sort by addresses
    qsort(instrumentStream, numInstruments, sizeof(struct InstrumentStream), InstrumentAddressCmp_q);


    // write data stream
    uint16_t lastAddress = 0;
    for (int i = 0; i < numInstruments; i++)
    {
        uint8_t headerIndex = instrumentStream[i].headerIndex;
        uint16_t address = instrumentStream[i].address;
        uint8_t instrumentType = instrumentStream[i].instrumentsType;

        // check for NULL
        if (instrumentType == INSTRUMENT_NULL)
        {
            fprintf(txt, "%d, %s\r\n", headerIndex, instrumentsTypeStrings[INSTRUMENT_NULL]);
            continue;
        }

        // check for reused address
        if (address == lastAddress)
        {
            fprintf(txt, "%d, %s\r\n", headerIndex, sameAddressString);
            continue;
        }
        lastAddress = address;

        // print standard types
        uint8_t *end = (i == numInstruments - 1) ? sbnk + sbnkSize - 4 : sbnk + instrumentStream[i + 1].address; // subtract 4 to account for potential padding

        // read data depending upon instrument type
        sbnkPos = sbnk + address;
        if (instrumentType < INSTRUMENT_ZEROED)
        {
            fprintf(txt, "%d, %s, %d, %d, %d, %d, %d, %d, %d, %d\r\n",
                headerIndex,
                instrumentsTypeStrings[instrumentType],
                ReadU16_LE(sbnkPos),
                ReadU16_LE(sbnkPos + 2),
                sbnkPos[4],
                sbnkPos[5],
                sbnkPos[6],
                sbnkPos[7],
                sbnkPos[8],
                sbnkPos[9]);
            sbnkPos += 10;
        }
        else if (instrumentType == INSTRUMENT_DRUMS)
        {
            fprintf(txt, "%d, %s, %d, %d\r\n",
                headerIndex,
                instrumentsTypeStrings[instrumentType],
                sbnkPos[0],
                sbnkPos[1]);
            sbnkPos += 2;
        }
        else if (instrumentType == INSTRUMENT_KEYSPLIT)
        {
            fprintf(txt, "%d, %s, %d, %d, %d, %d, %d, %d, %d, %d\r\n",
                headerIndex,
                instrumentsTypeStrings[instrumentType],
                sbnkPos[0],
                sbnkPos[1],
                sbnkPos[2],
                sbnkPos[3],
                sbnkPos[4],
                sbnkPos[5],
                sbnkPos[6],
                sbnkPos[7]);
            sbnkPos += 8;
        }
        else
        {
            FATAL_ERROR("Unrecognized intrument type %d\n", instrumentType);
        }

        // check for extra lines
        while (sbnkPos < end)
        {
            fprintf(txt, "\t%d, %d, %d, %d, %d, %d, %d, %d, %d\r\n",
                ReadU16_LE(sbnkPos),
                ReadU16_LE(sbnkPos + 2),
                ReadU16_LE(sbnkPos + 4),
                sbnkPos[6],
                sbnkPos[7],
                sbnkPos[8],
                sbnkPos[9],
                sbnkPos[10],
                sbnkPos[11]);
            sbnkPos += 12;
        }
    }

    free(instrumentStream);
}

void ConvertTxtToSbnk(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    for (int i = 3; i < argc; i++)
    {
        FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
    }

    // open input file
    FILE *txtFile = fopen(inputPath,"r");
    if (txtFile == NULL) FATAL_ERROR("Could not open INPUT FILE “%s”: %s\n", inputPath, strerror(errno));

    uint32_t sbnkSize;
    uint8_t *sbnk = TxtToSbnk(txtFile, &sbnkSize);
    fclose(txtFile);

    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(sbnk, 1, sbnkSize, outFile);
    free(sbnk);
    fclose(outFile);
}

void ConvertSbnkToTxt(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    for (int i = 3; i < argc; i++)
    {
        FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
    }

    // open input file
    uint32_t sbnkSize;
    uint8_t *sbnk = ReadWholeFile(inputPath, &sbnkSize);
    if (sbnkSize < (sizeof(struct NitroChunk) + sizeof(struct SbnkChunk_DATA))) FATAL_ERROR("File %s is not a valid sbnk file\n", inputPath);
    if (memcmp(sbnk, "SBNK", 4) != 0) FATAL_ERROR("File %s is not a valid sbnk file\n", inputPath);

    // Write to file
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    SbnkToTxt(sbnk, sbnkSize, outFile);
    free(sbnk);
    fclose(outFile);
}
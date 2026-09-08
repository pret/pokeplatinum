#include "swar.h"
#include "swav.h"

#include "util.h"

#define SWAV_HEADLESS_OFFSET 0x18

struct SwarChunk_DATA
{
    uint32_t chunkID;
    uint32_t size;
    uint32_t padding[8];
    uint32_t count;
    //uint8_t *headerless SWAVs;
};

#define SWAR_DATA_ADDRESS(SWAR) (SWAR + sizeof(struct NitroChunk))
#define SWAR_TABLE_ADDRESS(SWAR) (SWAR_DATA_ADDRESS(SWAR) + sizeof(struct SwarChunk_DATA))

static void PackSwav(struct DataPackage *swarPackage, uint8_t *swav, const uint32_t swavSize)
{
    struct DataFile *file = malloc(sizeof(struct DataFile));
    file->next = NULL;
    file->data = swav + SWAV_HEADLESS_OFFSET; // SWAV is stored headless
    file->size = swavSize - SWAV_HEADLESS_OFFSET;

    // Each file adds a U32 to the indexing table
    swarPackage->size += sizeof(uint32_t) + file->size;

    if (swarPackage->count == 0) {
        swarPackage->head = file;
        swarPackage->tail = file;
        swarPackage->count = 1;
        return;
    }

    swarPackage->tail->next = file;
    swarPackage->tail = file;
    swarPackage->count++;
}

static uint8_t *SwarPackageToSwar(struct DataPackage *swarPackage)
{
    uint8_t *swar = malloc(swarPackage->size);
    WriteNitroChunk(swar, "SWAR", swarPackage->size);

    struct SwarChunk_DATA *dataChunk = (struct SwarChunk_DATA*)SWAR_DATA_ADDRESS(swar);
    memcpy(&dataChunk->chunkID, "DATA", 4);
    WriteU32_LE(&dataChunk->size, swarPackage->size - sizeof(struct NitroChunk));
    for (int i = 0; i < 8; i++)
    {
        dataChunk->padding[i] = 0;
    }
    WriteU32_LE(&dataChunk->count, swarPackage->count);

    // write indexing table
    uint8_t *swarAddress = SWAR_TABLE_ADDRESS(swar);
    uint32_t swavPointer = sizeof(struct NitroChunk) + sizeof(struct SwarChunk_DATA) + swarPackage->count * sizeof(uint32_t);
    struct DataFile *swav = swarPackage->head;
    for (int i = 0; i < swarPackage->count; i++)
    {
        WriteU32_LE(swarAddress, swavPointer);
        swarAddress += 4;
        swavPointer += swav->size;
        swav = swav->next;
    }

    // write file stream
    swav = swarPackage->head;
    for (int i = 0; i < swarPackage->count; i++)
    {
        memcpy(swarAddress, swav->data, swav->size);
        swarAddress += swav->size;
        swav = swav->next;
    }

    return swar;
}

static struct DataPackage *InitSwarPackage()
{
    struct DataPackage *swarPackage = calloc(1, sizeof(struct DataPackage));
    if (swarPackage == NULL) FATAL_ERROR("could not allocate memory for SWAR package\n");
    swarPackage->size = sizeof(struct NitroChunk) + sizeof(struct SwarChunk_DATA);

    return swarPackage;
}

// Also frees contained SWAVs
static void FreeSwarPackage(struct DataPackage *swarPackage)
{
    struct DataFile *swav = swarPackage->head;
    for (int i = 0; i < swarPackage->count; i++)
    {
        free(swav->data - SWAV_HEADLESS_OFFSET); // get beginning of swav file
        struct DataFile *swavF = swav;
        swav = swav->next;
        free(swavF);
    }
    free(swarPackage);
}

void ConvertSwavToSwar(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    for (int i = 3; i < argc; i++)
    {
        FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
    }

    uint32_t swavSize;
    uint8_t *swav = ReadWholeFile(inputPath, &swavSize);
    if (swavSize < (sizeof(struct NitroChunk) + sizeof(struct SwavChunk_DATA))) FATAL_ERROR("File %s is not a valid swav file\n", inputPath);
    if (memcmp(swav, "SWAV", 4) != 0) FATAL_ERROR("File %s is not a valid swav file\n", inputPath);

    struct DataPackage *swarPackage = InitSwarPackage();
    PackSwav(swarPackage, swav, swavSize);

    uint8_t *swar = SwarPackageToSwar(swarPackage);
    
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(swar, 1, swarPackage->size, outFile);
    FreeSwarPackage(swarPackage);
    fclose(outFile);
    free(swar);
}

void ConvertSwarToSwav(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    int swavIndex = 0;
    for (int i = 3; i < argc; i++)
    {
        if (strcmp(argv[i], "-index") == 0)
        {
            if (i + 1 >= argc) FATAL_ERROR("Usage: \"-index #\"\n");
            if (!ParseNumber(argv[++i], NULL, 10, &swavIndex)) FATAL_ERROR("Failed to parse SWAV index.\n");
            if (swavIndex < 0) FATAL_ERROR("SWAV index must be non-negative\n");
        }
        else
        {
            FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
        }
    }

    // open input file
    uint32_t swarSize;
    uint8_t *swar = ReadWholeFile(inputPath, &swarSize);
    if (swarSize < (sizeof(struct NitroChunk) + sizeof(struct SwarChunk_DATA))) FATAL_ERROR("File %s is not a valid swar file\n", inputPath);
    if (memcmp(swar, "SWAR", 4) != 0) FATAL_ERROR("File %s is not a valid swar file\n", inputPath);

    struct SwarChunk_DATA *swarData = (struct SwarChunk_DATA*)SWAR_DATA_ADDRESS(swar);
    uint32_t numSwavs = ReadU32_LE(&swarData->count);

    if (numSwavs == 0) FATAL_ERROR("%s is an empty archive\n", inputPath);
    if (numSwavs <= swavIndex) FATAL_ERROR("SWAV index must be less than swav quantity, %d\n", numSwavs);
    uint8_t *swarAddress = SWAR_TABLE_ADDRESS(swar) + swavIndex * sizeof(uint32_t);
    uint8_t *swavAddress = swar + ReadU32_LE(swarAddress);
    uint32_t swavSize;
    if (numSwavs == swavIndex + 1) // last or only entry
    {
        swavSize = swarSize - ReadU32_LE(swarAddress) + sizeof(struct NitroChunk) + 0x08;
    }
    else
    {
        swavSize = ReadU32_LE(swarAddress + sizeof(uint32_t)) - ReadU32_LE(swarAddress) + sizeof(struct NitroChunk) + 0x08;
    }

    uint8_t *swav = malloc(swavSize);
    WriteNitroChunk(swav, "SWAV", swavSize);
    memcpy(swav + sizeof(struct NitroChunk), "DATA", 4);
    WriteU32_LE(swav + sizeof(struct NitroChunk) + 0x04, swavSize - sizeof(struct NitroChunk));
    memcpy(swav + sizeof(struct NitroChunk) + 0x08, swavAddress, swavSize - sizeof(struct NitroChunk) - 0x08);
    free(swar);

    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(swav, 1, swavSize, outFile);
    fclose(outFile);
    free(swav);
}

// TODO:
// - make dir travel a function so it can be made recursive for subfolders
// - add naix functionality
// - - will require more robust input parsing
void ConvertPathToSwar(int argc, char **argv)
{
    char *orderPath = NULL;
    if (argc > 3)
    {
        orderPath = argv[3];
    }
    char *inputPath = argv[1];
    char *outputPath = argv[2];
    bool naix = false;

    DIR *dir = opendir(inputPath);
    if (dir == NULL) FATAL_ERROR("could not open DIRECTORY “%s”: %s\n", inputPath, strerror(errno));

    // collect file names
    struct StrVec *fileNames = StrVec_New(5000); // arbitary allocation
    struct dirent *ent = NULL;
    while ((ent = readdir(dir)) != NULL) {
        if (strcmp(ent->d_name, ".") == 0)  continue;
        if (strcmp(ent->d_name, "..") == 0) continue;

        char *name = JoinPaths(inputPath, ent->d_name);
        struct stat stbuf = { 0 };
        if (stat(name, &stbuf) == -1) FATAL_ERROR("could not access FILE “%s”: %s\n", name, strerror(errno));

        if (S_ISDIR(stbuf.st_mode))
        {
            /* handle a directory */
            continue; // worry about nesting later
        }
        else {
            /* handle a file */
            char *fileExtension = GetFileExtension(name);
            if ((fileExtension != NULL) && ((strcmp("swav", fileExtension) == 0) || (strcmp("wav", fileExtension) == 0))) // only collect swav or wav files
            {
                fileNames->s[fileNames->count++] = name;
            }
        }
    }
    closedir(dir);

    // sort file names
    // use order file if provided
    struct StrVec *sortedNames = StrVec_New(fileNames->count);
    int numSorted = 0;
    char *orderMap = calloc(1, sizeof(char) * fileNames->count);
    if (orderPath != NULL)
    {
        char line[1024];
        FILE *orderFile = fopen(orderPath,"r");
        if (orderFile == NULL) {
            FATAL_ERROR("Could not open ORDER FILE “%s”: %s\n", orderPath, strerror(errno));
        }
        while (fgets(line, 1024, orderFile))
        {
            line[strcspn(line, "\r")] = 0;
            char *orderName = JoinPaths(inputPath, line);
            int i;
            for (i = 0; i < fileNames->count; i++)
            {
                if (strcmp(fileNames->s[i], orderName) == 0)
                {
                    break;
                }
            }
            if (i == fileNames->count)
            {
                FATAL_ERROR("%s is in ORDER FILE but not directory\n", line);
            }
            // check for duplicates
            if (orderMap[i] != 0)
            {
                FATAL_ERROR("%s is in ORDER FILE multiple times\n", line);
            }
            orderMap[i] = 1;
            sortedNames->s[numSorted++] = fileNames->s[i];
            sortedNames->count = numSorted;
            free(orderName);
        }
        fclose(orderFile);
    }
    for (int i = 0; i < fileNames->count; i++)
    {
        if (orderMap[i] == 0)
        {
            sortedNames->s[sortedNames->count++] = fileNames->s[i];
        }
    }
    free(orderMap);
    free(fileNames);
    // sort any remaining
    qsort(sortedNames->s + numSorted, sortedNames->count - numSorted, sizeof(char *), strcmp_q);

    // output naix file
    if (naix)
    {
        printf("TODO: naix output");
    }

    // pack swav files
    struct DataPackage *swarPackage = InitSwarPackage();
    uint32_t swavSize;
    for (int i = 0; i < sortedNames->count; i++)
    {
        uint8_t *swavFile = ReadWholeFile(sortedNames->s[i], &swavSize);
        if (memcmp(swavFile, "SWAV", 4) != 0)
        {
            if ((memcmp(swavFile, "RIFF", 4) == 0) && (memcmp(swavFile + 8, "WAVE", 4) == 0))
            {
                uint8_t *newSwav = WavToSwav(swavFile, swavSize, &swavSize, SWAV_IMA_ADPCM);
                free(swavFile);
                swavFile = newSwav;
            }
            else FATAL_ERROR("%s not a valid swav or wav file\n", sortedNames->s[i]);
        }
        free(sortedNames->s[i]);

        PackSwav(swarPackage, swavFile, swavSize);
    }
    free(sortedNames);

    uint8_t *swar = SwarPackageToSwar(swarPackage);
    
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(swar, 1, swarPackage->size, outFile);
    FreeSwarPackage(swarPackage);
    fclose(outFile);
    free(swar);
}

void ConvertSwarToPath(int argc, char **argv)
{
    char *orderPath = NULL;
    if (argc > 3)
    {
        orderPath = argv[3];
    }
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // open input file
    uint32_t swarSize;
    uint8_t *swar = ReadWholeFile(inputPath, &swarSize);
    if (swarSize < (sizeof(struct NitroChunk) + sizeof(struct SwarChunk_DATA))) FATAL_ERROR("File %s is not a valid swar file\n", inputPath);
    if (memcmp(swar, "SWAR", 4) != 0) FATAL_ERROR("File %s is not a valid swar file\n", inputPath);

    struct SwarChunk_DATA *swarData = (struct SwarChunk_DATA*)(swar + sizeof(struct NitroChunk));
    uint32_t numSwavs = ReadU32_LE(&swarData->count);

    // generate list of output file names
    struct StrVec *fileNames = StrVec_New(5000); // arbitary allocation
    if (orderPath != NULL)
    {
        char line[1024];
        FILE *orderFile = fopen(orderPath,"r");
        if (orderFile == NULL) {
            FATAL_ERROR("Could not open ORDER FILE “%s”: %s\n", orderPath, strerror(errno));
        }
        while (fgets(line, 1024, orderFile))
        {
            line[strcspn(line, "\r")] = 0;
            // check for file extension
            char *fileExtension = GetFileExtension(line);
            if (fileExtension == NULL)
            {
                FATAL_ERROR("%s is an invalid file name\n", line);
            }
            if (strcmp("swav", fileExtension) != 0)
            {
                FATAL_ERROR("%s does not have .swav extension\n", line);
            }

            char *orderName = JoinPaths(outputPath, line);

            // check for duplicates
            for (int i = 0; i < fileNames->count; i++)
            {
                if (strcmp(fileNames->s[i], orderName) == 0)
                {
                    FATAL_ERROR("%s is in ORDER FILE multiple times\n", line);
                }
            }

            fileNames->s[fileNames->count++] = orderName;
        }
        fclose(orderFile);
    }
    if (fileNames->count > numSwavs) FATAL_ERROR("Too many files in ORDER FILE %s\n", orderPath);
    // remaining files are named numerically
    for (int i = fileNames->count; i < numSwavs; i++)
    {
        char *numName = malloc(8);
        snprintf(numName, 9, "%03d.swav", i);
        // could collide with poorly named order files, but that feels like a user error
        // don't feel like checking for that now
        fileNames->s[fileNames->count++] = JoinPaths(outputPath, numName);
        free(numName);
    }

    // write SWAVs to output directory
    uint32_t pointerAddress = 0x3C;
    uint8_t swavHeader[] =
    {
        'S',  'W',  'A',  'V',  0xFF, 0xFE, 0x00, 0x01,  0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00,
        'D',  'A',  'T',  'A',  0x00, 0x00, 0x00, 0x00
    };
    for (int i = 0; i < numSwavs; i++)
    {
        FILE *outFile = fopen(fileNames->s[i], "wb");
        if (outFile == NULL)
            FATAL_ERROR("Failed to open \"%s\" for writing.\n", fileNames->s[i]);
        free(fileNames->s[i]);

        // calc filesize
        uint32_t swavAddress = ReadU32_LE(swar + pointerAddress);
        pointerAddress += 4;
        uint32_t swavSize = ReadU32_LE(swar + pointerAddress) - swavAddress;
        if (i == numSwavs - 1)
        {
            swavSize = swarSize - swavAddress;
        }
        WriteU32_LE(swavHeader + 0x08, swavSize + 0x18);
        WriteU32_LE(swavHeader + 0x14, swavSize + 0x08);

        // write to file
        fwrite(swavHeader, 1, 0x18, outFile);
        fwrite(swar + swavAddress, 1, swavSize, outFile);
        fclose(outFile);
    }
    free(fileNames);
    free(swar);
}

void ConvertWavToSwar(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    uint8_t encodeType = SWAV_IMA_ADPCM;
    for (int i = 3; i < argc; i++)
    {
        if (strcmp(argv[i], "-pcm8") == 0)
        {
            encodeType = SWAV_SIGNED_PCM8;
        }
        else if (strcmp(argv[i], "-pcm16") == 0)
        {
            encodeType = SWAV_SIGNED_PCM16;
        }
        else if (strcmp(argv[i], "-adpcm") == 0)
        {
            encodeType = SWAV_IMA_ADPCM;
        }
        else
        {
            FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
        }
    }

    // pack swav file
    uint32_t wavSize;
    uint8_t *wav = ReadWholeFile(inputPath, &wavSize);
    if (wavSize < (sizeof(struct WavChunk_RIFF) + sizeof(struct WavChunk_fmt) + sizeof(struct WavChunk_data))) FATAL_ERROR("File %s is not a valid wav file\n", inputPath);
    struct WavChunk_RIFF *riff = (struct WavChunk_RIFF*)wav;
    if (memcmp(&riff->chunkID, "RIFF", 4) != 0) FATAL_ERROR("%s is not a RIFF file.\n", inputPath);
    if (memcmp(&riff->formType, "WAVE", 4) != 0) FATAL_ERROR("%s does not have WAVE form type.\n", inputPath);

    uint32_t swavSize;
    uint8_t *swav = WavToSwav(wav, wavSize, &swavSize, encodeType);
    free(wav);

    struct DataPackage *swarPackage = InitSwarPackage();
    PackSwav(swarPackage, swav, swavSize);
    uint8_t *swar = SwarPackageToSwar(swarPackage);
    
    // write swar to file
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(swar, 1, swarPackage->size, outFile);
    FreeSwarPackage(swarPackage);
    fclose(outFile);
    free(swar);
}

void ConvertSwarToWav(int argc, char **argv)
{
    if (argc < 3) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];

    // optional args
    int swavIndex = 0;
    bool pcm16 = true;
    for (int i = 3; i < argc; i++)
    {
        if (strcmp(argv[i], "-index") == 0)
        {
            if (i + 1 >= argc) FATAL_ERROR("Usage: \"-index #\"\n");
            if (!ParseNumber(argv[++i], NULL, 10, &swavIndex)) FATAL_ERROR("Failed to parse SWAV index.\n");
            if (swavIndex < 0) FATAL_ERROR("SWAV index must be non-negative\n");
        }
        else if (strcmp(argv[i], "-pcm16") == 0)
        {
            pcm16 = true;
        }
        else if (strcmp(argv[i], "-same") == 0)
        {
            pcm16 = false;
        }
        else
        {
            FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
        }
    }

    // open input file
    uint32_t swarSize;
    uint8_t *swar = ReadWholeFile(inputPath, &swarSize);
    if (swarSize < (sizeof(struct NitroChunk) + sizeof(struct SwarChunk_DATA))) FATAL_ERROR("File %s is not a valid swar file\n", inputPath);
    if (memcmp(swar, "SWAR", 4) != 0) FATAL_ERROR("File %s is not a valid swar file\n", inputPath);

    struct SwarChunk_DATA *swarData = (struct SwarChunk_DATA*)SWAR_DATA_ADDRESS(swar);
    uint32_t numSwavs = ReadU32_LE(&swarData->count);

    if (numSwavs == 0) FATAL_ERROR("%s is an empty archive\n", inputPath);
    if (numSwavs <= swavIndex) FATAL_ERROR("SWAV index must be less than swav quantity, %d\n", numSwavs);
    uint8_t *swarAddress = SWAR_TABLE_ADDRESS(swar) + swavIndex * sizeof(uint32_t);
    uint8_t *swavAddress = swar + ReadU32_LE(swarAddress);
    uint32_t swavSize;
    if (numSwavs == swavIndex + 1) // last or only entry
    {
        swavSize = swarSize - ReadU32_LE(swarAddress) + sizeof(struct NitroChunk) + 0x08;
    }
    else
    {
        swavSize = ReadU32_LE(swarAddress + sizeof(uint32_t)) - ReadU32_LE(swarAddress) + sizeof(struct NitroChunk) + 0x08;
    }

    uint8_t *swav = malloc(swavSize);
    WriteNitroChunk(swav, "SWAV", swavSize);
    memcpy(swav + sizeof(struct NitroChunk), "DATA", 4);
    WriteU32_LE(swav + sizeof(struct NitroChunk) + 0x04, swavSize - sizeof(struct NitroChunk));
    memcpy(swav + sizeof(struct NitroChunk) + 0x08, swavAddress, swavSize - sizeof(struct NitroChunk) - 0x08);
    free(swar);

    uint32_t wavSize;
    uint8_t *wav = SwavToWav(swav, swavSize, &wavSize, pcm16);
    free(swav);

    // write wav to file
    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL) FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(wav, 1, wavSize, outFile);
    free(wav);
    fclose(outFile);
}

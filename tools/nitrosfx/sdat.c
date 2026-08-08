#include "sdat.h"

#include <assert.h>

#include "cJSON.h"
#include "util.h"

char *jsonStrings[] = {
    "seqInfo",
    "seqarcInfo",
    "bankInfo",
    "wavarcInfo",
    "playerInfo",
    "groupInfo",
    "streamPlayerInfo", // "player2Info"
    "strmInfo"
};

struct InfoStream {
    struct InfoStream *next;
    uint32_t size;
    char *name;
    char *fname;
    void *info;
};

struct InfoPackage {
    struct InfoStream *head;
    struct InfoStream *tail;
    uint32_t count;
    uint32_t size;
};

static void PackInfo(struct InfoPackage *package, void *info, const uint32_t size, char *name, char *fname)
{
    struct InfoStream *stream = malloc(sizeof(struct InfoStream));
    if (stream == NULL) FATAL_ERROR("Failed to allocate memory for stream\n");
    stream->next = NULL;
    stream->info = info;
    stream->size = size;
    stream->name = name;
    stream->fname = fname;

    package->size += size;

    if (package->count == 0) {
        package->head = stream;
        package->tail = stream;
        package->count = 1;
        return;
    }

    package->tail->next = stream;
    package->tail = stream;
    package->count++;
}

struct SseqInfo {
    uint32_t fileID;
    uint16_t bankID;
    uint8_t volume;
    uint8_t channelPriority;
    uint8_t playerPriority;
    uint8_t playerID;
    uint16_t padding;
};

struct SsarInfo {
    uint32_t fileID;
};

struct SbnkInfo {
    uint32_t fileID;
    short swar0;
    short swar1;
    short swar2;
    short swar3;
};

struct SwarInfo {
    uint32_t fileID;
};

struct PlayerInfo {
    uint16_t maxSseq;
    uint16_t channels;
    uint32_t heapSize;
};

enum FileType {
    SSEQ = 0,
    SBNK,
    SWAR,
    SSAR,
};

static char *sFileTypeStrings[] = {
    "sseq",
    "sbnk",
    "swar",
    "ssar",
};

struct GroupEntry {
    uint8_t fileType;
    uint8_t load;
    uint16_t padding;
    uint32_t entryID;
};

struct GroupInfo {
    uint32_t count;
    struct GroupEntry *groupEntry;
};

struct StreamPlayerInfo {
    uint8_t numChannels;
    uint8_t left_channel;
    uint8_t right_channel;
    uint8_t padding0;
    uint32_t padding1;
    uint64_t padding2;
    uint64_t padding3;
};

struct StreamInfo {
    uint32_t fileID;
    uint8_t volume;
    uint8_t priority;
    uint8_t streamPlayerID;
    uint8_t padding0;
    uint32_t padding1;
};

struct FileStream {
    struct FileStream *next;
    uint8_t *data;
    uint32_t size;
    char *fileName;
};

struct FilePackage {
    struct FileStream *head;
    struct FileStream *tail;
    uint32_t count;
    uint32_t size;
};

// Packs new files. Returns fileID
static uint32_t PackFile(struct FilePackage *package, uint8_t *data, const uint32_t size, char *fileName)
{
    struct FileStream *stream = malloc(sizeof(struct FileStream));
    if (stream == NULL) FATAL_ERROR("Failed to allocate memory for stream\n");
    stream->next = NULL;
    stream->data = data;
    stream->size = size;
    stream->fileName = fileName;

    if (package->count == 0) {
        package->head = stream;
        package->tail = stream;
        package->count = 1;
        package->size = size + PADDINGSIZE(size, 0x20);
        return 0;
    }

    uint32_t fileID = 0;
    for (struct FileStream *prePacked = package->head; prePacked != NULL; prePacked = prePacked->next)
    {
        if (strcmp(fileName, prePacked->fileName) == 0)
        {
            free(stream);
            free(fileName);
            return fileID;
        }
        fileID++;
    }
    package->tail->next = stream;
    package->tail = stream;
    package->count++;
    package->size += size + PADDINGSIZE(size, 0x20);
    return fileID;
}

enum DataTypes {
    SEQ = 0,
    SEQARC,
    BANK,
    WAVARC,
    PLAYER,
    GROUP,
    STRMPLAYER,
    STRM,
    NUM_DATATYPES
};

static uint16_t GetJsonIndex_U16(cJSON *infoArray, char *name)
{
    uint16_t i = 0;
    for (cJSON *item = cJSON_GetArrayItem(infoArray, 0); item != NULL; item = item->next)
    {
        if (strcmp(name, cJSON_GetObjectItemCaseSensitive(item, "name")->valuestring) == 0)
        {
            return i;
        }
        i++;
    }
    FATAL_ERROR("%s not present in %s\n", name, infoArray->string);
    return i;
}

static short GetJsonIndex_S16(cJSON *infoArray, char *name)
{
    if (strcmp(name, "") == 0)
    {
        return 0xFFFF;
    }

    short i = 0;
    for (cJSON *item = cJSON_GetArrayItem(infoArray, 0); item != NULL; item = item->next)
    {
        if (strcmp(name, cJSON_GetObjectItemCaseSensitive(item, "name")->valuestring) == 0)
        {
            return i;
        }
        i++;
    }
    FATAL_ERROR("%s not present in %s\n", name, infoArray->string);
    return i;
}

static char *GetInfoName(struct InfoPackage *package, uint32_t index)
{
    if (package->count == 0 || index >= package->count) return NULL;

    struct InfoStream *info = package->head;
    for (int i = 0; i < index; i++) info = info->next;
    return info->name;
}

static inline bool is_wordchar(int c) {
    return (c >= '0' && c <= '9')
        || (c >= 'A' && c <= 'Z')
        || (c >= 'a' && c <= 'z')
        || c == '_';
}

static char *strrstem(const void *_s, int c) {
    assert(_s);

    const unsigned char *s = _s;
    const unsigned char *p = NULL;

    while (*s) {
        if (*s == c) p = s;
        s++;
    }

    if (p == NULL) p = s;

    return (char *)p;
}

static char *guardify(const char *name, size_t size) {
    assert(name);

    char *guard = malloc(size + 1);
    if (guard != NULL) {
        for (size_t i = 0; i < size; i++) {
            guard[i] = is_wordchar(name[i]) ? name[i] : '_';
        }

        guard[size] = 0;
    }

    return guard;
}

static char *guardify_nhits(const char *name, size_t size, size_t nhits) {
    assert(name);
    char *base = guardify(name, size);
    if (base == NULL || nhits == 0) return base;

    size = snprintf(NULL, 0, "%s_%zu", base, nhits);
    char *suffixed = malloc(size + 1);

    if (suffixed != NULL) {
        snprintf(suffixed, size + 1, "%s_%zu", base, nhits);
    }

    free(base);
    return suffixed;
}

static size_t name_nhits(struct InfoPackage *pack, char *s, size_t max_i) {
    size_t count = 0;
    struct InfoStream *j = pack->head;
    for (size_t i = 0; i < max_i; i++) {
        if (j == NULL) break;
        if ((j->name != NULL) && (strcmp(j->name, s) == 0)) count++;
        j = j->next;
    }

    return count;
}

static size_t fname_nhits(struct InfoPackage *pack, char *s, size_t max_i) {
    size_t count = 0;
    struct InfoStream *j = pack->head;
    for (size_t i = 0; i < max_i; i++) {
        if (j == NULL) break;
        if ((j->fname != NULL) && (strcmp(j->fname, s) == 0)) count++;
        j = j->next;
    }

    return count;
}

enum Naix {
    NAIX_NONE = 0,
    NAIX_FNAME,
    NAIX_SYMB,
};

static void WriteNaix(const char *fname, struct InfoPackage **files, enum Naix naix) {
    if (naix == NAIX_NONE) return;
    assert(fname);
    assert(files);

    char *guard = NULL;
    FILE *fnaix = NULL;
    char  *pdot = strrstem(fname, '.');
    size_t size = pdot - fname;
    char  *name = malloc(size + 6);
    if (name == NULL) goto erralloc;

    memcpy(name, fname, size);
    memcpy(name + size, ".naix", 6);
    guard = guardify(name, size + 5);
    if (guard == NULL) goto erralloc;

    fnaix = fopen(name, "wb");
    if (fnaix == NULL) goto cleanup;

    fprintf(fnaix, "/*\n");
    fprintf(fnaix, " * This file was generated by nitrosfx for '%s'\n", fname);
    fprintf(fnaix, " * DO NOT MODIFY IT; MANUAL EDITS WILL BE LOST\n");
    fprintf(fnaix, " */\n");
    fprintf(fnaix, "\n");
    fprintf(fnaix, "#ifndef %s\n", guard);
    fprintf(fnaix, "#define %s\n", guard);
    fprintf(fnaix, "\n");

    for (size_t d = 0; d < NUM_DATATYPES; d++) {
        size_t i = 0;
        for (struct InfoStream *j = files[d]->head; j != NULL; j = j->next) {
            if (j->size) {
                size_t nhits = 0;
                char *defn = NULL;
                if (naix == NAIX_FNAME) {
                    nhits = fname_nhits(files[d], j->fname, i);
                    defn = guardify_nhits(j->fname, strlen(j->fname), nhits);
                }
                else if (naix == NAIX_SYMB) {
                    nhits = name_nhits(files[d], j->name, i);
                    defn = guardify_nhits(j->name, strlen(j->name), nhits);
                }
                if (defn == NULL) { free(defn); goto erralloc; }

                fprintf(fnaix, "#define %s %zu\n", defn, i);
                free(defn);
            }
            i++;
        }
    }

    //fprintf(fnaix, "\n");
    //fprintf(fnaix, "#define %.*s_COUNT %zu\n", (int)strlen(guard) - 5, guard, files->size);

    fprintf(fnaix, "\n");
    fprintf(fnaix, "#endif /* %s */\n", guard);
    goto cleanup;

erralloc:
    FATAL_ERROR("alloc failure writing index file: %s\n", strerror(errno));

cleanup:
    free(name);
    free(guard);
}

// TODO: make variable checking more robust
// Check that json file type is correct before using
void ConvertPathToSdat(int argc, char **argv)
{
    // process args
    if (argc < 4) FATAL_ERROR("Insufficient arguments\n");
    char *inputPath = argv[1];
    char *outputPath = argv[2];
    char *orderPath = argv[3];
    bool symb = false;
    enum Naix naix = NAIX_NONE;

    // optional args
    for (int i = 4; i < argc; i++)
    {
        if (strcmp(argv[i], "-symb") == 0)
        {
            symb = true;
        }
        else if (strcmp(argv[i], "-naix") == 0)
        {
            naix = NAIX_FNAME;
        }
        else if (strcmp(argv[i], "-snaix") == 0)
        {
            naix = NAIX_SYMB;
        }
        else
        {
            FATAL_ERROR("Unrecognized argument: \"%s\"\n", argv[i]);
        }
    }

    // get files from json
    uint32_t jsonLength;
    char *jsonString = (char*)ReadWholeFile(orderPath, &jsonLength);

    cJSON *json = cJSON_Parse(jsonString);
    if (json == NULL)
    {
        const char *errorPtr = cJSON_GetErrorPtr();
        FATAL_ERROR("Error in line \"%s\"\n", errorPtr);
    }

    cJSON **jsonFields = malloc(sizeof(cJSON*) * NUM_DATATYPES);
    if (jsonFields == NULL) FATAL_ERROR("Failed to allocate memory for jsonFields\n");
    struct InfoPackage **infoPackages = malloc(sizeof(struct InfoPackage*) * NUM_DATATYPES);
    if (infoPackages == NULL) FATAL_ERROR("Failed to allocate memory for infoPackages\n");
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        jsonFields[i] = cJSON_GetObjectItemCaseSensitive(json, jsonStrings[i]);
        infoPackages[i] = calloc(1, sizeof(struct InfoPackage));
        if (infoPackages[i] == NULL) FATAL_ERROR("Failed to allocate memory for infoPackages %d\n", i);
    }
    struct FilePackage *filePackage = calloc(1, sizeof(struct FilePackage));
    if (filePackage == NULL) FATAL_ERROR("Failed to allocate memory for filePackage\n");

    // define block sizes
    uint32_t *symbSize = calloc(1, sizeof(uint32_t) * NUM_DATATYPES);
    if (symbSize == NULL) FATAL_ERROR("Failed to allocate memory for symbSize\n");

    // collect data from json file
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        for (cJSON *jFile = cJSON_GetArrayItem(jsonFields[i], 0); jFile != NULL; jFile = jFile->next)
        {
            cJSON *name = cJSON_GetObjectItemCaseSensitive(jFile, "name");
            if (strcmp("", name->valuestring) == 0)
            {
                PackInfo(infoPackages[i], NULL, 0, name->valuestring, NULL);
                symbSize[i] += 4;
            }
            else
            {
                char *fName;
                char *inFPath;
                uint32_t inputFileSize;
                uint8_t *inputFile;
                symbSize[i] += 5 + strlen(name->valuestring);
                switch (i)
                {
                    case SEQ:
                        fName = cJSON_GetObjectItemCaseSensitive(jFile, "fileName")->valuestring;
                        inFPath = JoinPaths(inputPath, fName);
                        inputFile = ReadWholeFile(inFPath, &inputFileSize);
                        if (memcmp(inputFile, "SSEQ", 4) != 0)
                        {
                            FATAL_ERROR("%s not a valid sseq file\n", inFPath);
                        }
                        
                        struct SseqInfo *sseqInfo = malloc(sizeof(struct SseqInfo));
                        if (sseqInfo == NULL) FATAL_ERROR("Failed to allocate memory for sseqInfo\n");
                        sseqInfo->fileID = PackFile(filePackage, inputFile, inputFileSize, inFPath);
                        sseqInfo->bankID = GetJsonIndex_U16(jsonFields[BANK], cJSON_GetObjectItemCaseSensitive(jFile, "bank")->valuestring);
                        sseqInfo->volume = cJSON_GetObjectItemCaseSensitive(jFile, "volume")->valueint;
                        sseqInfo->channelPriority = cJSON_GetObjectItemCaseSensitive(jFile, "channelPriority")->valueint;
                        sseqInfo->playerPriority = cJSON_GetObjectItemCaseSensitive(jFile, "playerPriority")->valueint;
                        sseqInfo->playerID = GetJsonIndex_U16(jsonFields[PLAYER], cJSON_GetObjectItemCaseSensitive(jFile, "player")->valuestring);
                        sseqInfo->padding = 0;
                        PackInfo(infoPackages[i], sseqInfo, sizeof(struct SseqInfo), name->valuestring, fName);
                        break;
                    case SEQARC:
                        fName = cJSON_GetObjectItemCaseSensitive(jFile, "fileName")->valuestring;
                        inFPath = JoinPaths(inputPath, fName);
                        inputFile = ReadWholeFile(inFPath, &inputFileSize);
                        if (memcmp(inputFile, "SSAR", 4) != 0)
                        {
                            FATAL_ERROR("%s not a valid swar file\n", inFPath);
                        }

                        struct SsarInfo *ssarInfo = malloc(sizeof(struct SsarInfo));
                        if (ssarInfo == NULL) FATAL_ERROR("Failed to allocate memory for ssarInfo\n");
                        ssarInfo->fileID = PackFile(filePackage, inputFile, inputFileSize, inFPath);
                        PackInfo(infoPackages[i], ssarInfo, sizeof(struct SsarInfo), name->valuestring, fName);
                        break;
                    case BANK:
                        fName = cJSON_GetObjectItemCaseSensitive(jFile, "fileName")->valuestring;
                        inFPath = JoinPaths(inputPath, fName);
                        inputFile = ReadWholeFile(inFPath, &inputFileSize);
                        if (memcmp(inputFile, "SBNK", 4) != 0)
                        {
                            FATAL_ERROR("%s not a valid sbnk file\n", inFPath);
                        }

                        struct SbnkInfo *sbnkInfo = malloc(sizeof(struct SbnkInfo));
                        if (sbnkInfo == NULL) FATAL_ERROR("Failed to allocate memory for sbnkInfo\n");
                        sbnkInfo->fileID = PackFile(filePackage, inputFile, inputFileSize, inFPath);
                        cJSON *wa = cJSON_GetObjectItemCaseSensitive(jFile, "waves");
                        sbnkInfo->swar0 = GetJsonIndex_S16(jsonFields[WAVARC], cJSON_GetArrayItem(wa, 0)->valuestring);
                        sbnkInfo->swar1 = GetJsonIndex_S16(jsonFields[WAVARC], cJSON_GetArrayItem(wa, 1)->valuestring);
                        sbnkInfo->swar2 = GetJsonIndex_S16(jsonFields[WAVARC], cJSON_GetArrayItem(wa, 2)->valuestring);
                        sbnkInfo->swar3 = GetJsonIndex_S16(jsonFields[WAVARC], cJSON_GetArrayItem(wa, 3)->valuestring);
                        PackInfo(infoPackages[i], sbnkInfo, sizeof(struct SbnkInfo), name->valuestring, fName);
                        break;
                    case WAVARC:
                        fName = cJSON_GetObjectItemCaseSensitive(jFile, "fileName")->valuestring;
                        inFPath = JoinPaths(inputPath, fName);
                        inputFile = ReadWholeFile(inFPath, &inputFileSize);
                        if (memcmp(inputFile, "SWAR", 4) != 0)
                        {
                            FATAL_ERROR("%s not a valid swar file\n", inFPath);
                        }

                        struct SwarInfo *swarInfo = malloc(sizeof(struct SwarInfo));
                        if (swarInfo == NULL) FATAL_ERROR("Failed to allocate memory for swarInfo\n");
                        swarInfo->fileID = PackFile(filePackage, inputFile, inputFileSize, inFPath);
                        PackInfo(infoPackages[i], swarInfo, sizeof(struct SwarInfo), name->valuestring, fName);
                        break;
                    case PLAYER:
                        struct PlayerInfo *playerInfo = malloc(sizeof(struct PlayerInfo));
                        if (playerInfo == NULL) FATAL_ERROR("Failed to allocate memory for playerInfo\n");
                        playerInfo->maxSseq = cJSON_GetObjectItemCaseSensitive(jFile, "maxSequences")->valueint;
                        playerInfo->channels = cJSON_GetObjectItemCaseSensitive(jFile, "channels")->valueint;
                        playerInfo->heapSize = cJSON_GetObjectItemCaseSensitive(jFile, "heapSize")->valueint;
                        PackInfo(infoPackages[i], playerInfo, sizeof(struct PlayerInfo), name->valuestring, name->valuestring);
                        break;
                    case GROUP:
                        struct GroupInfo *groupInfo = malloc(sizeof(struct GroupInfo));
                        if (groupInfo == NULL) FATAL_ERROR("Failed to allocate memory for groupInfo\n");
                        cJSON *subGroups = cJSON_GetObjectItemCaseSensitive(jFile, "subGroups");
                        groupInfo->count = cJSON_GetArraySize(subGroups);
                        groupInfo->groupEntry = malloc(sizeof(struct GroupEntry) * groupInfo->count);
                        int subgroupI = 0;
                        for (cJSON *subGroup = cJSON_GetArrayItem(subGroups, 0); subGroup != NULL; subGroup = subGroup->next)
                        {
                            char *fileType = cJSON_GetObjectItemCaseSensitive(subGroup, "fileType")->valuestring;
                            int f;
                            for (f = 0; f < 4; f++)
                            {
                                if (strcmp(fileType, sFileTypeStrings[f]) == 0)
                                {
                                    groupInfo->groupEntry[subgroupI].fileType = f;
                                    break;
                                }
                            }
                            if (f == 4)
                            {
                                FATAL_ERROR("\"%s\" is not a valid file type\n", fileType);
                            }
                            groupInfo->groupEntry[subgroupI].load = cJSON_GetObjectItemCaseSensitive(subGroup, "load")->valueint;
                            groupInfo->groupEntry[subgroupI].padding = 0;
                            groupInfo->groupEntry[subgroupI].entryID = cJSON_GetObjectItemCaseSensitive(subGroup, "entryID")->valueint;
                            subgroupI++;
                        }
                        PackInfo(infoPackages[i], groupInfo, 4 + sizeof(struct GroupEntry) * groupInfo->count, name->valuestring, name->valuestring);
                        break;
                    case STRMPLAYER: // TODO
                        struct StreamPlayerInfo *streamPlayerInfo = malloc(sizeof(struct StreamPlayerInfo));
                        if (streamPlayerInfo == NULL) FATAL_ERROR("Failed to allocate memory for streamPlayerInfo\n");
                        streamPlayerInfo->numChannels = 0;
                        streamPlayerInfo->left_channel = 0;
                        streamPlayerInfo->right_channel = 0;
                        streamPlayerInfo->padding0 = 0;
                        streamPlayerInfo->padding1 = 0;
                        streamPlayerInfo->padding2 = 0;
                        streamPlayerInfo->padding3 = 0;
                        PackInfo(infoPackages[i], streamPlayerInfo, sizeof(struct StreamPlayerInfo), name->valuestring, name->valuestring);
                        break;
                    case STRM: // TODO
                        struct StreamInfo *streamInfo = malloc(sizeof(struct StreamInfo));
                        if (streamInfo == NULL) FATAL_ERROR("Failed to allocate memory for streamInfo\n");
                        streamInfo->fileID = 0;
                        streamInfo->volume = 0;
                        streamInfo->priority = 0;
                        streamInfo->streamPlayerID = 0;
                        streamInfo->padding0 = 0;
                        streamInfo->padding1 = 0;
                        PackInfo(infoPackages[i], streamInfo, sizeof(struct StreamInfo), name->valuestring, name->valuestring);
                        break;
                }
            }
        }
    }
    free(jsonFields);

    WriteNaix(outputPath, infoPackages, naix);

    // write header
    uint8_t sdatHeader[0x40] =
    {
        'S',  'D',  'A',  'T',  0xFF, 0xFE, 0x00, 0x01,  0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    };
    uint32_t symbBlockSize = 0x40 + 0x04 * NUM_DATATYPES;
    uint32_t infoBlockSize = 0x40 + 0x04 * NUM_DATATYPES;
    uint32_t fatBlockSize = 0x0C + 0x10 * filePackage->count;
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        symbBlockSize += symbSize[i];
        infoBlockSize += infoPackages[i]->size + 4 * infoPackages[i]->count;
    }
    // add padding to each block;
    uint8_t symbPad = PADDINGSIZE(symbBlockSize, 0x04);
    symbBlockSize += symbPad;
    uint8_t infoPad = PADDINGSIZE(infoBlockSize, 0x04);
    infoBlockSize += infoPad;

    uint32_t offset = 0x0E;
    if (symb)
    {
        WriteU16_LE(sdatHeader + offset, 4);
        WriteU32_LE(sdatHeader + offset+2, 0x40);
        WriteU32_LE(sdatHeader + offset+6, symbBlockSize);
        offset = 0x18;
    }
    else
    {
        WriteU16_LE(sdatHeader + offset, 3);
        offset = 0x10;
        symbBlockSize = 0;
    }
    WriteU32_LE(sdatHeader + offset, 0x40 + symbBlockSize);
    WriteU32_LE(sdatHeader + offset+4, infoBlockSize);
    WriteU32_LE(sdatHeader + offset+8, 0x40 + symbBlockSize + infoBlockSize);
    WriteU32_LE(sdatHeader + offset+12, fatBlockSize);
    uint32_t fileOffset = 0x40 + symbBlockSize + infoBlockSize + fatBlockSize;
    WriteU32_LE(sdatHeader + offset+16, fileOffset);
    filePackage->size += PADDINGSIZE(fileOffset, 0x20);
    WriteU32_LE(sdatHeader + offset+20, filePackage->size);
    uint32_t sdatSize = fileOffset + filePackage->size;
    WriteU32_LE(sdatHeader + 0x08, sdatSize);

    FILE *outFile = fopen(outputPath, "wb");
    if (outFile == NULL)
        FATAL_ERROR("Failed to open \"%s\" for writing.\n", outputPath);
    fwrite(sdatHeader, 1, 0x40, outFile);

    uint8_t u32Buffer[4] = {0, 0, 0, 0};
    // write SYMB block
    if (symb)
    {
        uint8_t symbHeader[0x40] =
        {
            'S',  'Y',  'M',  'B',  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        };
        WriteU32_LE(symbHeader + 0x04, symbBlockSize);
        // name table addresses
        offset = 0x40;
        for (int i = 0; i < NUM_DATATYPES; i++)
        {
            WriteU32_LE(symbHeader + (0x08 + 4*i), offset);
            offset += 4 + infoPackages[i]->count * 4;
        }
        fwrite(symbHeader, 1, 0x40, outFile);

        // name tables
        for (int i = 0; i < NUM_DATATYPES; i++)
        {
            WriteU32_LE(u32Buffer, infoPackages[i]->count);
            fwrite(u32Buffer, 1, 4, outFile);
            for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
            {
                if (strcmp(j->name, "") == 0)
                {
                    WriteU32_LE(u32Buffer, 0);
                }
                else
                {
                    WriteU32_LE(u32Buffer, offset);
                    offset += strlen(j->name) + 1;
                }
                fwrite(u32Buffer, 1, 4, outFile);
            }
        }
        // names
        for (int i = 0; i < NUM_DATATYPES; i++)
        {
            for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
            {
                if (strcmp(j->name, "") != 0)
                {
                    fwrite(j->name, 1, strlen(j->name) + 1, outFile);
                }
            }
        }
        WriteU32_LE(u32Buffer, 0);
        fwrite(u32Buffer, 1, symbPad, outFile);
    }

    // INFO block
    uint8_t infoHeader[0x40] =
    {
        'I',  'N',  'F',  'O',  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    };
    WriteU32_LE(infoHeader + 0x04, infoBlockSize);
    // info table addresses
    offset = 0x40;
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        WriteU32_LE(infoHeader + (0x08 + 4*i), offset);
        offset += 4 + infoPackages[i]->count * 4 + infoPackages[i]->size;
    }
    fwrite(infoHeader, 1, 0x40, outFile);
    // info tables + info
    offset = 0x40;
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        WriteU32_LE(u32Buffer, infoPackages[i]->count);
        fwrite(u32Buffer, 1, 4, outFile);
        offset += 4 + 4 * infoPackages[i]->count;
        int dataIndex = 0;
        for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
        {
            if (strcmp(j->name, "") == 0)
            {
                WriteU32_LE(u32Buffer, 0);
            }
            else
            {
                WriteU32_LE(u32Buffer, offset);
                offset += j->size;
            }
            fwrite(u32Buffer, 1, 4, outFile);
            dataIndex++;
        }
        for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
        {
            if (strcmp(j->name, "") != 0)
            {
                if (i == GROUP)
                {
                    struct GroupInfo *groupInfo = j->info;
                    fwrite(&(groupInfo->count), 1, 4, outFile);
                    fwrite(groupInfo->groupEntry, 1, sizeof(struct GroupEntry) * groupInfo->count, outFile);
                    free(groupInfo->groupEntry);
                }
                else
                {
                    fwrite(j->info, 1, j->size, outFile);
                }
                free(j->info);
            }
        }
        free(infoPackages[i]);
    }
    free(infoPackages);
    WriteU32_LE(u32Buffer, 0);
    fwrite(u32Buffer, 1, infoPad, outFile);

    // FAT block
    uint8_t fatHeader[0x0C] =
    {
        'F',  'A',  'T',  ' ',  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00
    };
    WriteU32_LE(fatHeader + 0x04, 0x0C + filePackage->count * 0x10);
    WriteU32_LE(fatHeader + 0x08, filePackage->count);
    fwrite(fatHeader, 1, 0x0C, outFile);

    fileOffset += 0x0C;
    offset = fileOffset;
    uint8_t *fileEntry = calloc(1, 0x10);
    if (fileEntry == NULL) FATAL_ERROR("Failed to allocate memory for fileEntry\n");
    for (struct FileStream *fileStream = filePackage->head; fileStream != NULL; fileStream = fileStream->next)
    {
        WriteU32_LE(fileEntry, offset);
        WriteU32_LE(fileEntry + 0x04, fileStream->size);
        fwrite(fileEntry, 1, 0x10, outFile);

        offset += fileStream->size + PADDINGSIZE(fileStream->size, 0x20);
        free(fileStream->fileName);
    }
    free(fileEntry);

    // FILE block
    uint8_t fileHeader[0x0C] =
    {
        'F',  'I',  'L',  'E',  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00
    };
    WriteU32_LE(fileHeader + 0x04, filePackage->size);
    WriteU32_LE(fileHeader + 0x08, filePackage->count);
    fwrite(fileHeader, 1, 0x0C, outFile);

    uint8_t *padding = calloc(1, 0x20);
    if (padding == NULL) FATAL_ERROR("Failed to allocate memory for padding\n");
    uint16_t paddingSize = PADDINGSIZE(fileOffset, 0x20);
    if (paddingSize > 0)
    {
        fwrite(padding, 1, paddingSize, outFile);
    }

    for (struct FileStream *fileStream = filePackage->head; fileStream != NULL; fileStream = fileStream->next)
    {
        fwrite(fileStream->data, 1, fileStream->size, outFile);
        free(fileStream->data);

        paddingSize = PADDINGSIZE(fileStream->size, 0x20);
        if (paddingSize > 0)
        {
            fwrite(padding, 1, paddingSize, outFile);
        }
    }
    free(padding);
    free(filePackage);

    fclose(outFile);
}

// TODO:
//      -d flag for dumping in editable formats
void ConvertSdatToPath(int argc, char **argv)
{
    // process args
    if (argc < 4)
    {
        FATAL_ERROR("Insufficient arguments\n");
    }
    char *inputPath = argv[1];
    char *outputPath = argv[2];
    char *orderPath = argv[3];

    // open input file
    uint32_t sdatSize;
    uint8_t *sdatFile = ReadWholeFile(inputPath, &sdatSize);
    if (sdatSize < sizeof(struct NitroChunk)) FATAL_ERROR("File %s is not a valid sdat file\n", inputPath);
    if (memcmp(sdatFile, "SDAT", 4) != 0) FATAL_ERROR("File %s is not a valid swav file\n", inputPath);

    bool symb = false;
    if (4 == ReadU16_LE(sdatFile + 0x0E))
    {
        symb = true;
    }

    struct InfoPackage **infoPackages = malloc(sizeof(struct InfoPackage*) * NUM_DATATYPES); // TODO: free this and its entries
    if (infoPackages == NULL) FATAL_ERROR("Failed to allocate memory for infoPackages\n");
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        infoPackages[i] = calloc(1, sizeof(struct InfoPackage));
        if (infoPackages[i] == NULL) FATAL_ERROR("Failed to allocate memory for infoPackages %d\n", i);
    }

    // Read info block
    uint32_t offset = ReadU32_LE(sdatFile + (0x10 + 8 * symb)) + 0x40;
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        uint32_t count = ReadU32_LE(sdatFile + offset);
        offset += 4;
        for (uint32_t j = 0; j < count; j++)
        {
            // Storing info address in size
            PackInfo(infoPackages[i], NULL, ReadU32_LE(sdatFile + offset), NULL, NULL);
            offset += 4;
        }
        for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
        {
            if (j->size) // info only present if address nonzero
            {
                switch (i)
                {
                    case SEQ:
                        struct SseqInfo *sseqInfo = malloc(sizeof(struct SseqInfo));
                        if (sseqInfo == NULL) FATAL_ERROR("Failed to allocate memory for sseqInfo\n");
                        sseqInfo->fileID = ReadU32_LE(sdatFile + offset);
                        sseqInfo->bankID = ReadU16_LE(sdatFile + offset + 4);
                        sseqInfo->volume = sdatFile[offset + 6];
                        sseqInfo->channelPriority = sdatFile[offset + 7];
                        sseqInfo->playerPriority = sdatFile[offset + 8];
                        sseqInfo->playerID = sdatFile[offset + 9];
                        offset += sizeof(struct SseqInfo);

                        j->info = sseqInfo;
                        break;
                    case SEQARC:
                        struct SsarInfo *ssarInfo = malloc(sizeof(struct SsarInfo));
                        if (ssarInfo == NULL) FATAL_ERROR("Failed to allocate memory for ssarInfo\n");
                        ssarInfo->fileID = ReadU32_LE(sdatFile + offset);
                        offset += sizeof(struct SsarInfo);

                        j->info = ssarInfo;
                        break;
                    case BANK:
                        struct SbnkInfo *sbnkInfo = malloc(sizeof(struct SbnkInfo));
                        if (sbnkInfo == NULL) FATAL_ERROR("Failed to allocate memory for sbnkInfo\n");
                        sbnkInfo->fileID = ReadU32_LE(sdatFile + offset);
                        sbnkInfo->swar0 = ReadU16_LE(sdatFile + offset + 4);
                        sbnkInfo->swar1 = ReadU16_LE(sdatFile + offset + 6);
                        sbnkInfo->swar2 = ReadU16_LE(sdatFile + offset + 8);
                        sbnkInfo->swar3 = ReadU16_LE(sdatFile + offset + 10);
                        offset += sizeof(struct SbnkInfo);

                        j->info = sbnkInfo;
                        break;
                    case WAVARC:
                        struct SwarInfo *swarInfo = malloc(sizeof(struct SwarInfo));
                        if (swarInfo == NULL) FATAL_ERROR("Failed to allocate memory for swarInfo\n");
                        swarInfo->fileID = ReadU32_LE(sdatFile + offset);
                        offset += sizeof(struct SwarInfo);

                        j->info = swarInfo;
                        break;
                    case PLAYER:
                        struct PlayerInfo *playerInfo = malloc(sizeof(struct PlayerInfo));
                        if (playerInfo == NULL) FATAL_ERROR("Failed to allocate memory for playerInfo\n");
                        playerInfo->maxSseq = ReadU16_LE(sdatFile + offset);
                        playerInfo->channels = ReadU16_LE(sdatFile + offset + 2);
                        playerInfo->heapSize = ReadU32_LE(sdatFile + offset + 4);
                        offset += sizeof(struct PlayerInfo);

                        j->info = playerInfo;
                        break;
                    case GROUP:
                        struct GroupInfo *groupInfo = malloc(sizeof(struct GroupInfo));
                        if (groupInfo == NULL) FATAL_ERROR("Failed to allocate memory for groupInfo\n");
                        groupInfo->count = ReadU32_LE(sdatFile + offset);
                        offset += 4;
                        groupInfo->groupEntry = malloc(sizeof(struct GroupEntry) * groupInfo->count);
                        for (int subgroupI = 0; subgroupI < groupInfo->count; subgroupI++)
                        {
                            groupInfo->groupEntry[subgroupI].fileType = sdatFile[offset];
                            groupInfo->groupEntry[subgroupI].load = sdatFile[offset + 1];
                            groupInfo->groupEntry[subgroupI].entryID = ReadU32_LE(sdatFile + offset + 4);
                            offset += sizeof(struct GroupEntry);
                        }

                        j->info = groupInfo;
                        break;
                    case STRMPLAYER: // TODO
                        struct StreamPlayerInfo *streamPlayerInfo = malloc(sizeof(struct StreamPlayerInfo));
                        if (streamPlayerInfo == NULL) FATAL_ERROR("Failed to allocate memory for streamPlayerInfo\n");
                        streamPlayerInfo->numChannels = 0;
                        streamPlayerInfo->left_channel = 0;
                        streamPlayerInfo->right_channel = 0;
                        offset += sizeof(struct StreamPlayerInfo);

                        j->info = streamPlayerInfo;
                        break;
                    case STRM: // TODO
                        struct StreamInfo *streamInfo = malloc(sizeof(struct StreamInfo));
                        if (streamInfo == NULL) FATAL_ERROR("Failed to allocate memory for streamInfo\n");
                        streamInfo->fileID = 0;
                        streamInfo->volume = 0;
                        streamInfo->priority = 0;
                        streamInfo->streamPlayerID = 0;
                        offset += sizeof(struct StreamInfo);

                        j->info = streamInfo;
                        break;
                }
            }
        }
    }

    // Read symb block
    uint32_t fileCount = ReadU32_LE(sdatFile + ReadU32_LE(sdatFile + (0x18 + 8 * symb)) + 0x08);
    char **fileNames = calloc(1, sizeof(char*) * fileCount);
    if (fileNames == NULL) FATAL_ERROR("Failed to allocate memory for fileNames\n");
    if (symb)
    {
        offset = 0x80;
        for (int i = 0; i < NUM_DATATYPES; i++)
        {
            offset += 4 + infoPackages[i]->count * 4;
        }

        for (int i = 0; i < NUM_DATATYPES; i++)
        {
            for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
            {
                if (j->size)
                {
                    char *buffer = malloc(30); // arbitrary size
                    if (buffer == NULL) FATAL_ERROR("Failed to allocate memory for info buffer\n");
                    strcpy(buffer, (char*)sdatFile + offset);
                    j->name = buffer;
                    offset += strlen(buffer) + 1;

                    if (i < PLAYER) // only first 4 have files
                    {
                        // abuse the fact that the fist entry in all file structs if fileID
                        uint32_t fileID = *((uint32_t*)j->info);
                        if (fileNames[fileID] == NULL)
                        {
                            fileNames[fileID] = j->name;
                        }
                    }
                }
            }
        }
    }
    // TODO: figure out names when symb=false

    // Read FILE block
    offset = ReadU32_LE(sdatFile + (0x20 + 8 * symb)) + 0x0C;
    offset += PADDINGSIZE(offset, 0x20);
    for (int i = 0; i < fileCount; i++)
    {
        if (fileNames[i] == NULL)
        {
            fileNames[i] = malloc(30);
            if (fileNames[i] == NULL) FATAL_ERROR("Failed to allocate memory for fileNames %d\n", i);
            snprintf(fileNames[i], 30, "%04d", i);
        }
        char *extendedName = malloc(35);
        if (extendedName == NULL) FATAL_ERROR("Failed to allocate memory for extended fileNames\n");
        if (memcmp(sdatFile + offset, "SSEQ", 4) == 0)
        {
            snprintf(extendedName, 35, "%s.sseq", fileNames[i]);
        }
        else if (memcmp(sdatFile + offset, "SSAR", 4) == 0)
        {
            snprintf(extendedName, 35, "%s.ssar", fileNames[i]);
        }
        else if (memcmp(sdatFile + offset, "SBNK", 4) == 0)
        {
            snprintf(extendedName, 35, "%s.sbnk", fileNames[i]);
        }
        else if (memcmp(sdatFile + offset, "SWAR", 4) == 0)
        {
            snprintf(extendedName, 35, "%s.swar", fileNames[i]);
        }
        else
        {
            FATAL_ERROR("File %d is unrecognized type\n", i);
        }
        fileNames[i] = extendedName;
        char *fileName = JoinPaths(outputPath, fileNames[i]);

        FILE *outFile = fopen(fileName, "wb");
        if (outFile == NULL)
        {
            FATAL_ERROR("Failed to open \"%s\" for writing.\n", fileName);
        }
        free(fileName);

        uint32_t fileSize = ReadU32_LE(sdatFile + offset + 8);
        fwrite(sdatFile + offset, 1, fileSize, outFile);
        fclose(outFile);
        offset += fileSize + PADDINGSIZE(fileSize, 0x20);
    }
    free(sdatFile);

    // create json
    cJSON *json = cJSON_CreateObject();
    for (int i = 0; i < NUM_DATATYPES; i++)
    {
        // define json category
        cJSON *dataType = cJSON_AddArrayToObject(json, jsonStrings[i]);
        for (struct InfoStream *j = infoPackages[i]->head; j != NULL; j = j->next)
        {
            cJSON *item = cJSON_CreateObject();
            if (j->size)
            {
                cJSON_AddStringToObject(item, "name", j->name);
                switch (i)
                {
                    case SEQ:
                        struct SseqInfo *sseqInfo = j->info;
                        cJSON_AddStringToObject(item, "fileName", fileNames[sseqInfo->fileID]);
                        cJSON_AddStringToObject(item, "bank", GetInfoName(infoPackages[BANK], sseqInfo->bankID));
                        cJSON_AddNumberToObject(item, "volume", sseqInfo->volume);
                        cJSON_AddNumberToObject(item, "channelPriority", sseqInfo->channelPriority);
                        cJSON_AddNumberToObject(item, "playerPriority", sseqInfo->playerPriority);
                        cJSON_AddStringToObject(item, "player", GetInfoName(infoPackages[PLAYER], sseqInfo->playerID));
                        break;
                    case SEQARC:
                        struct SsarInfo *ssarInfo = j->info;
                        cJSON_AddStringToObject(item, "fileName", fileNames[ssarInfo->fileID]);
                        break;
                    case BANK:
                        struct SbnkInfo *sbnkInfo = j->info;
                        cJSON_AddStringToObject(item, "fileName", fileNames[sbnkInfo->fileID]);
                        char *swarNames[4] = {"", "", "", ""};
                        char *swarName = GetInfoName(infoPackages[WAVARC], sbnkInfo->swar0);
                        if (swarName != NULL)
                        {
                            swarNames[0] = swarName;
                        }
                        swarName = GetInfoName(infoPackages[WAVARC], sbnkInfo->swar1);
                        if (swarName != NULL)
                        {
                            swarNames[1] = swarName;
                        }
                        swarName = GetInfoName(infoPackages[WAVARC], sbnkInfo->swar2);
                        if (swarName != NULL)
                        {
                            swarNames[2] = swarName;
                        }
                        swarName = GetInfoName(infoPackages[WAVARC], sbnkInfo->swar3);
                        if (swarName != NULL)
                        {
                            swarNames[3] = swarName;
                        }
                        cJSON *swarArray = cJSON_CreateStringArray((const char *const*)swarNames, 4);
                        cJSON_AddItemToObject(item, "waves", swarArray);
                        break;
                    case WAVARC:
                        struct SwarInfo *swarInfo = j->info;
                        cJSON_AddStringToObject(item, "fileName", fileNames[swarInfo->fileID]);
                        break;
                    case PLAYER:
                        struct PlayerInfo *playerInfo = j->info;
                        cJSON_AddNumberToObject(item, "maxSequences", playerInfo->maxSseq);
                        cJSON_AddNumberToObject(item, "channels", playerInfo->channels); // TODO: separate bitflag?
                        cJSON_AddNumberToObject(item, "heapSize", playerInfo->heapSize);
                        break;
                    case GROUP:
                        struct GroupInfo *groupInfo = j->info;
                        cJSON *groupArray = cJSON_AddArrayToObject(item, "subGroups");
                        for (int groupI = 0; groupI < groupInfo->count; groupI++)
                        {
                            cJSON *groupEntry = cJSON_CreateObject();
                            cJSON_AddStringToObject(groupEntry, "fileType", sFileTypeStrings[groupInfo->groupEntry[groupI].fileType]);
                            cJSON_AddNumberToObject(groupEntry, "load", groupInfo->groupEntry[groupI].load); // TODO: separate bitflag?
                            cJSON_AddNumberToObject(groupEntry, "entryID", groupInfo->groupEntry[groupI].entryID);
                            cJSON_AddItemToArray(groupArray, groupEntry);
                        }
                        break;
                    case STRMPLAYER: // TODO
                        struct StreamPlayerInfo *streamPlayerInfo = j->info;
                        cJSON_AddNumberToObject(item, "numChannels", streamPlayerInfo->numChannels);
                        cJSON_AddNumberToObject(item, "leftChannel", streamPlayerInfo->left_channel);
                        cJSON_AddNumberToObject(item, "RightChannel", streamPlayerInfo->right_channel);
                        break;
                    case STRM: // TODO
                        struct StreamInfo *streamInfo = j->info;
                        cJSON_AddStringToObject(item, "fileName", fileNames[streamInfo->fileID]);
                        cJSON_AddNumberToObject(item, "volume", streamInfo->volume);
                        cJSON_AddNumberToObject(item, "priority", streamInfo->priority);
                        cJSON_AddStringToObject(item, "streamPlayer", GetInfoName(infoPackages[STRMPLAYER], streamInfo->streamPlayerID));
                        break;
                }
                free(j->info);
            }
            else
            {
                cJSON_AddStringToObject(item, "name", "");
            }
            cJSON_AddItemToArray(dataType, item);
        }
    }

    // Write json file
    FILE *jsonFile = fopen(orderPath, "w");
    if (jsonFile == NULL)
    {
        FATAL_ERROR("Failed to open \"%s\" for writing.\n", orderPath);
    }
    char *jsonString = cJSON_Print(json);
    cJSON_Delete(json);
    if (fputs(jsonString, jsonFile) == EOF)
    {
        FATAL_ERROR("Failed to write to \"%s\".\n", orderPath);
    }
    fclose(jsonFile);
    free(infoPackages);
} 

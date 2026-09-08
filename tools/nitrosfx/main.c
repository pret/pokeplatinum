#include "util.h"
#include "sbnk.h"
#include "sdat.h"
#include "sseq.h"
#include "swav.h"
#include "swar.h"

struct CommandHandler
{
    const char *inputFileExtension;
    const char *outputFileExtension;
    void(*function)(int argc, char **argv);
};

static const char *const main_help =
"Usage: nitrosfx INPUT_PATH OUTPUT_PATH [options...]\n"
"\n"
"Help options:\n"
"\t\"-h\"\t\tProgram help text\n"
"\t\"-h-sseq\"\tSSEQ conversion help text\n"
"\t\"-h-swav\"\tSWAV conversion help text\n"
"\t\"-h-sbnk\"\tSBNK conversion help text\n"
"\t\"-h-swar\"\tSWAR conversion help text\n"
"\t\"-h-sdat\"\tSDAT conversion help text\n";

static const char *const sseq_help =
"Usage: nitrosfx INPUT_PATH OUTPUT_PATH\n"
"\n"
"Files are identified by file extension\n"
"Possible extensions:\n"
"\tsseq\t->\tmid\n"
"\tmid\t->\tsseq\n";

static const char *const swav_help =
"Usage: nitrosfx INPUT_PATH OUTPUT_PATH [options...]\n"
"\n"
"Input and Output file types are identified by file extension\n"
"Possible extensions:\n"
"\tswav\t->\twav\t[-pcm16 (default), -same]\n"
"\twav\t->\tswav\t[-adpcm (default), -pcm8, -pcm16]\n"
"\tswav\t->\tswar\n"
"\tswar\t->\tswav\t[-index # (default=0)]\n"
"Options:\n"
"\t-same\t\toutput wav in same encoding as input\n"
"\t-adpcm\t\t4-bit IMA-ADPCM encoding\n"
"\t-pcm8\t\t8-bit PCM encoding\n"
"\t-pcm16\t\t16-bit PCM encoding\n"
"\t-index #\tExtracts wave of index #\n";

static const char *const sbnk_help =
"Usage: nitrosfx INPUT_PATH OUTPUT_PATH\n"
"\n"
"Files are identified by file extension\n"
"Possible extensions:\n"
"\tsbnk\t->\ttxt\n"
"\ttxt\t->\tsbnk\n";

static const char *const swar_help =
"Usage: nitrosfx INPUT_PATH OUTPUT_PATH [options...]\n"
"\n"
"Input and Output file types are identified by file extension\n"
"Possible extensions:\n"
"\tswar\t->\tswav\t[-index # (default=0)]\n"
"\tswav\t->\tswar\n"
"\tswar\t->\twav\t[-index # (default=0), -pcm16 (default), -same]\n"
"\twav\t->\tswar\t[-adpcm (default), -pcm8, -pcm16]\n"
"\tswar\t->\t[dir]\t[-swav (default), -wav, -pcm16 (default), -same]\n"
"\t[dir]\t->\tswar\t[-order ORDER_PATH]\n"
"Options:\n"
"\t-index\t\tExtracts wave of index #\n"
"\t-same\t\toutput wav in same encoding as input\n"
"\t-adpcm\t\t4-bit IMA-ADPCM encoding\n"
"\t-pcm8\t\t8-bit encoding\n"
"\t-pcm16\t\t16-bit encoding\n"
"\t-swav\t\tOutput swav files\n"
"\t-wav\t\tOutput wav files\n"
"\t-order PATH\tOrder input files based upon file name specified in a txt file\n"
"\t\t\tUnnamed files will be sorted alphabetically\n";

static const char *const sdat_help =
"Usage: nitrosfx INPUT_PATH OUTPUT_PATH JSON_PATH [options...]\n"
"\n"
"Input and Output file types are identified by file extension\n"
"Possible extensions:\n"
"\tsdat\t\t->\t[dir] + json\t[-nitro (default), -edit, -nedit]\n"
"\t[dir] + json\t->\tsdat\t\t[-symb, -naix NAIX_PATH]\n"
"Options:\n"
"\t-nitro\t\tFiles in OUTPUT_PATH will be in nitro formats\n"
"\t-edit\t\tFiles in OUTPUT_PATH will be in standard formats\n"
"\t-nedit\t\tFiles in OUTPUT_PATH will be in standard formats,\n"
"\t\t\tbut the json's paths will be to their nitro format\n"
"\t-symb\t\tsdat will contain the optional SYMB chunk\n"
"\t-naix\t\tFiles in OUTPUT_PATH will be in nitro formats\n"
"Passed directory must contain all files within the sdat file.\n"
"json file must contain path to all files relative to the passed directory.\n"
"Files must be in the json to be in the sdat\n";

// TODO: add -h to main and all converters
int main(int argc, char **argv)
{
    for (int i = 1; i < argc; i++)
    {
        if (strcmp(argv[i], "-h") == 0)
        {
            FATAL_ERROR("%s", main_help);
        }
        else if (strcmp(argv[i], "-h-sseq") == 0)
        {
            FATAL_ERROR("%s", sseq_help);
        }
        else if (strcmp(argv[i], "-h-swav") == 0)
        {
            FATAL_ERROR("%s", swav_help);
        }
        else if (strcmp(argv[i], "-h-sbnk") == 0)
        {
            FATAL_ERROR("%s", sbnk_help);
        }
        else if (strcmp(argv[i], "-h-swar") == 0)
        {
            FATAL_ERROR("%s", swar_help);
        }
        else if (strcmp(argv[i], "-h-sdat") == 0)
        {
            FATAL_ERROR("%s", sdat_help);
        }
    }
    if (argc < 3) FATAL_ERROR("%s", main_help);

    struct CommandHandler handlers[] =
    {
        {"mid",  "sseq", ConvertMidiToSseq},
        {"sseq",  "mid", ConvertSseqToMidi},
        {"wav",  "swav", ConvertWavToSwav},
        {"swav",  "wav", ConvertSwavToWav},
        {"txt",  "sbnk", ConvertTxtToSbnk},
        {"sbnk",  "txt", ConvertSbnkToTxt},
        {"swav", "swar", ConvertSwavToSwar},
        {"swar", "swav", ConvertSwarToSwav},
        {"wav", "swar",  ConvertWavToSwar},
        {"swar", "wav",  ConvertSwarToWav},
        {NULL,   "swar", ConvertPathToSwar}, // multiple swav from dir
        {"swar",   NULL, ConvertSwarToPath}, // multiple swav to dir
        {NULL,   "sdat", ConvertPathToSdat}, // directory + json to sdat
        {"sdat",   NULL, ConvertSdatToPath}, // sdat to directory + json
    };

    char *inputPath = argv[1];
    char *outputPath = argv[2];
    char *inputFileExtension = GetFileExtension(inputPath);
    char *outputFileExtension = GetFileExtension(outputPath);

    // single-depth directories will not have extensions
    if (inputFileExtension == NULL) inputFileExtension = "/";
    if (outputFileExtension == NULL) outputFileExtension = "/";

    for (int i = 0; handlers[i].function != NULL; i++)
    {
        if (((handlers[i].inputFileExtension == NULL) || (strcmp(handlers[i].inputFileExtension, inputFileExtension) == 0)) &&
            ((handlers[i].outputFileExtension == NULL) || (strcmp(handlers[i].outputFileExtension, outputFileExtension) == 0)))
        {
            handlers[i].function(argc, argv);
            return 0;
        }
    }

    FATAL_ERROR("Don't know how to convert \"%s\" to \"%s\".\n", inputPath, outputPath);
}

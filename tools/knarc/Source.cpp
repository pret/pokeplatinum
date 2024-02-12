#include <cstring>
#include <filesystem>
#include <iostream>
#include <sstream>
#include <string>

#include "util.h"
#include "Narc.h"

bool debug = false;
bool pack_no_fnt = true;
bool output_header = false;
bool orderInputs = false;
fs::path knarcorder_path;
fs::path knarcignore_path;
fs::path knarckeep_path;

void PrintError(NarcError error)
{
    std::cout << get_error_string(error) << std::endl;
}

static inline void usage() {
    std::cout << "OVERVIEW: Knarc" << std::endl << std::endl;
    std::cout << "USAGE: knarc <command> [<args>] [<files>]" << std::endl << std::endl;
    std::cout << "COMMANDS:" << std::endl;
    std::cout << "\tpack\tPack a NARC file" << std::endl;
    std::cout << "\tunpack\tUnpack a NARC file" << std::endl;
    std::cout << "\thelp\tDisplay this text" << std::endl;
    std::cout << "OPTIONS:" << std::endl;
    std::cout << "\t-o <path>\tPath to output file/directory" << std::endl;
    std::cout << "\t-ko <path>\tPath to .knarcorder file" << std::endl;
    std::cout << "\t-ki <path>\tPath to .knarcignore file" << std::endl;
    std::cout << "\t-kk <path>\tPath to .knarckeep file" << std::endl;
    std::cout << "\t-n\t\tBuild the filename table (default: discards filenames)" << std::endl;
    std::cout << "\t-s\t\tSort files lexicographically" << std::endl;
    std::cout << "\t-D/--debug\tPrint additional debug messages" << std::endl;
    std::cout << "\t-i\t\tOutput a .naix header" << std::endl;
}


int main(int argc, char* argv[])
{
    std::vector<std::string> args = get_arguments(argc, argv);

    if (args.empty())
    {
        usage();
        return 0;
    }

    enum Command {
        None,
        Pack,
        Unpack,
    };
    std::string subcommand = args[0];
    Command mode = Command::None;
    if (subcommand == "pack")
    {
        mode = Command::Pack;
    }
    else if (subcommand == "unpack")
    {
        mode = Command::Unpack;
    }
    else if (subcommand == "help")
    {
        usage();
        return 0;
    }
    else {
        usage();
        std::cerr << "ERROR: Invalid subcommand '" << subcommand << "'" << std::endl;
        return 1;
    }

    fs::path outputPath = "";
    std::vector<fs::path> inputPaths;

    for(int i = 1; i < args.size(); i++) {
        std::string arg = args[i];
        if (arg == "-o")
        {
            if (i == args.size() - 1)
            {
                std::cerr << "ERROR: No output path specified" << std::endl;
                return 1;
            }

            if (!outputPath.empty()) {
                std::cerr << "ERROR: Multiple output paths specified" << std::endl;
                return 1;
            }
            outputPath = args[++i];
        }
        else if (arg == "-ko")
        {
            knarcorder_path = fs::path(args[++i]);
        }
        else if (arg == "-ki")
        {
            knarcignore_path = fs::path(args[++i]);
        }
        else if (arg == "-kk")
        {
            knarckeep_path = fs::path(args[++i]);
        }
        else if (arg == "-D" || arg == "--debug")
        {
            debug = true;
        }
        else if (arg == "-h" || arg == "--help")
        {
            usage();
            return 0;
        }
        else if (arg == "-n")
        {
            pack_no_fnt = false;
        }
        else if (arg == "-i")
        {
            output_header = true;
        }
        else if (arg == "-s")
        {
            orderInputs = true;
        }
        else if (arg[0] == '-')
        {
            usage();
            std::cerr << "ERROR: Unrecognized argument: '" << arg << "'" << std::endl;
            return 1;
        }
        else {
            inputPaths.emplace_back(arg);
        }
    }

    if (inputPaths.empty()) {
        std::cerr << "ERROR: No inputs specified" << std::endl;
        return 1;
    }
    if (outputPath.empty()) {
        std::cerr << "ERROR: No output specified" << std::endl;
        return 1;
    }

    Narc narc;

    if (mode == Command::Pack)
    {
        if (!narc.Pack(outputPath, inputPaths))
        {
            PrintError(narc.GetError());

            return 1;
        }
    }
    else if (mode == Command::Unpack)
    {
        if (!fs::is_directory(outputPath))
        {
            std::cerr << "ERROR: Invalid output directory '" << subcommand << "'" << std::endl;
        }
        if (!narc.Unpack(outputPath, inputPaths))
        {
            PrintError(narc.GetError());

            return 1;
        }
    }
    else
    {
        usage();
        std::cerr << "ERROR: Invalid subcommand '" << subcommand << "'" << std::endl;
        return 1;
    }
}

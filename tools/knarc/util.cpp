#include <iomanip>
#include <fstream>
#include <sstream>
#include <vector>

const std::string WHITESPACE = " \n\r\t\f\v";
 
std::string ltrim(const std::string &s)
{
    size_t start = s.find_first_not_of(WHITESPACE);
    return (start == std::string::npos) ? "" : s.substr(start);
}
 
std::string rtrim(const std::string &s)
{
    size_t end = s.find_last_not_of(WHITESPACE);
    return (end == std::string::npos) ? "" : s.substr(0, end + 1);
}
 
std::string trim(const std::string &s) {
    return rtrim(ltrim(s));
}

/**
 * @brief gets list of arguments from argv, expanding any response files found
 * 
 * @param argc 
 * @param argv 
 * @return list of arguments
 */
std::vector<std::string> get_arguments(int argc, char* argv[])
{
    std::vector<std::string> args;
    for(int i = 1; i < argc; i++) {
        std::string arg = argv[i];
        if (arg[0] == '@') {
            // Response file
            std::ifstream response_file;
            response_file.open(arg.substr(1));
            std::stringstream response_text;
            response_text << response_file.rdbuf();
            while (!response_text.eof()) {
                std::string response_arg;
                response_text >> std::quoted(response_arg);
                if (!trim(response_arg).empty()) {
                    args.emplace_back(trim(response_arg));
                }
            }
        }
        else
        {
            args.emplace_back(arg);
        }
    }
    return args;
}

#include "Narc.h"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <fstream>
#include <iomanip>
#include <ios>
#include <iostream>
#include <map>
#include <memory>
#include <regex>
#include <sstream>
#include <stack>
#include <string>
#include <vector>

#include "fnmatch.h"

#if (__cplusplus < 201703L)
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
#else
#include <filesystem>
namespace fs = std::filesystem;
#endif

using namespace std;

extern bool debug;
extern bool pack_no_fnt;
extern bool output_header;
extern bool orderInputs;
extern fs::path knarcorder_path;
extern fs::path knarcignore_path;
extern fs::path knarckeep_path;

std::string get_error_string(NarcError error)
{
    switch (error) {
    case NarcError::None:                               return "ERROR: No error???";
    case NarcError::InvalidInputFile:                   return "ERROR: Invalid input file";
    case NarcError::InvalidHeaderId:                    return "ERROR: Invalid header ID";
    case NarcError::InvalidByteOrderMark:               return "ERROR: Invalid byte order mark";
    case NarcError::InvalidVersion:                     return "ERROR: Invalid NARC version";
    case NarcError::InvalidHeaderSize:                  return "ERROR: Invalid header size";
    case NarcError::InvalidChunkCount:                  return "ERROR: Invalid chunk count";
    case NarcError::InvalidFileAllocationTableId:       return "ERROR: Invalid file allocation table ID";
    case NarcError::InvalidFileAllocationTableReserved: return "ERROR: Invalid file allocation table reserved section";
    case NarcError::InvalidFileNameTableId:             return "ERROR: Invalid file name table ID";
    case NarcError::InvalidFileNameTableEntryId:        return "ERROR: Invalid file name table entry ID";
    case NarcError::InvalidFileImagesId:                return "ERROR: Invalid file images ID";
    case NarcError::InvalidOutputFile:                  return "ERROR: Invalid output file";
    default:                                            return "ERROR: Unknown error???";
    }
}

void Narc::AlignDword(ofstream& ofs, uint8_t paddingChar)
{
    if ((ofs.tellp() % 4) != 0) {
        for (int i = 4 - (ofs.tellp() % 4); i-- > 0;) {
            ofs.write(reinterpret_cast<char *>(&paddingChar), sizeof(uint8_t));
        }
    }
}

bool Narc::Cleanup(ifstream& ifs, const NarcError& e)
{
    ifs.close();

    error = e;

    return false;
}

bool Narc::Cleanup(ofstream& ofs, const NarcError& e)
{
    ofs.close();

    error = e;

    return false;
}

std::vector<fs::path> read_knarcorder_file(fs::path file)
{
    std::vector<fs::path> ordered_files;
    std::ifstream order_file(knarcorder_path);
    if (order_file) {
        if (debug) {
            cerr << "DEBUG: knarcorder file exists" << endl;
        }
        // read the filenames in the order file and add the corresponding directory entries to the ordered files vector
        std::string filename;
        while (std::getline(order_file, filename)) {
            fs::path file_path = file.parent_path() / filename;
            if (fs::exists(file_path)) {
                if (debug) {
                    cerr << "DEBUG: knarcorder file: " << file_path << endl;
                }
                ordered_files.push_back(file_path);
            }
        }
    }
    return ordered_files;
}

std::vector<fs::path> Narc::KnarcInputIterator(const std::vector<fs::path>& paths, bool recursive, bool lexSort) const
{
    std::vector<fs::path> ordered_files;
    std::vector<fs::path> unordered_files;

    if (!knarcorder_path.empty()) {
        ordered_files = read_knarcorder_file(knarcorder_path);
    }

    for (fs::path path : paths) {
        if (fs::is_directory(path)) {
            // open the order file
            if (fs::exists(path / ".knarcorder")) {
                knarcorder_path = path / ".knarcorder";
                std::vector<fs::path> paths = read_knarcorder_file(knarcorder_path);
                for (fs::path path : paths) {
                    if (std::find(ordered_files.begin(), ordered_files.end(), path) == ordered_files.end()) {
                        ordered_files.push_back(path);
                    }
                }
            }

            // if recursive flag is set, search for knarcorder files in subdirectories and process them recursively
            if (recursive) {
                for (auto& entry : fs::directory_iterator(path)) {
                    if (entry.is_directory()) {
                        std::vector<fs::path> sub;
                        sub.emplace_back(entry.path());
                        std::vector<fs::path> subdirectory_files = KnarcInputIterator(sub, true, lexSort);
                        ordered_files.insert(
                            ordered_files.end(), subdirectory_files.begin(), subdirectory_files.end());
                    }
                }
            }

            // add the remaining files in alphabetical order
            for (auto& entry : fs::directory_iterator(path)) {
                if (entry.is_regular_file() && entry.path().filename() != ".knarcorder") {
                    if (std::find(ordered_files.begin(), ordered_files.end(), entry) == ordered_files.end()) {
                        unordered_files.push_back(entry);
                    }
                }
            }
        } else {
            if (std::find(ordered_files.begin(), ordered_files.end(), path) == ordered_files.end()) {
                unordered_files.push_back(path);
            }
        }
    }

    if (lexSort) {
        std::sort(unordered_files.begin(), unordered_files.end(), [](const fs::path& a, const fs::path& b) {
            // I fucking hate C++
            string aStr = a.filename().string();
            string bStr = b.filename().string();

            for (size_t i = 0; i < aStr.size(); ++i) {
                aStr[i] = tolower(aStr[i]);
            }

            for (size_t i = 0; i < bStr.size(); ++i) {
                bStr[i] = tolower(bStr[i]);
            }
            // std::transform(aStr.begin(), aStr.end(), aStr.begin(), ::tolower);
            // std::transform(bStr.begin(), bStr.end(), bStr.begin(), ::tolower);

            return aStr < bStr;
        });
    }
    ordered_files.insert(ordered_files.end(), unordered_files.begin(), unordered_files.end());

    return ordered_files;
}

vector<fs::path> Narc::InputIterator(const std::vector<fs::path>& paths, bool recursive, bool lexSort) const
{
    vector<fs::path> v;

    for (fs::path path : paths) {
        if (fs::is_directory(path)) {
            for (const auto& de : fs::directory_iterator(path)) {
                v.push_back(de.path());
            }
        } else {
            v.push_back(path);
        }
    }

    if (lexSort) {
        std::sort(v.begin(), v.end(), [](const fs::path& a, const fs::path& b) {
            // I fucking hate C++
            string aStr = a.filename().string();
            string bStr = b.filename().string();

            for (size_t i = 0; i < aStr.size(); ++i) {
                aStr[i] = tolower(aStr[i]);
            }

            for (size_t i = 0; i < bStr.size(); ++i) {
                bStr[i] = tolower(bStr[i]);
            }
            // std::transform(aStr.begin(), aStr.end(), aStr.begin(), ::tolower);
            // std::transform(bStr.begin(), bStr.end(), bStr.begin(), ::tolower);

            return aStr < bStr;
        });
    }

    if (recursive) {
        size_t vSize = v.size();

        for (fs::path path : v) {
            if (is_directory(path)) {
                std::vector<fs::path> sub;
                sub.emplace_back(path);
                std::vector<fs::path> temp = InputIterator(sub, true, lexSort);

                v.insert(v.end(), temp.begin(), temp.end());
            }
        }
    }

    return v;
}

NarcError Narc::GetError() const
{
    return error;
}

class WildcardVector : public vector<string>
{
    public:
    WildcardVector(fs::path fp)
    {
        fstream infile;
        if (!fs::exists(fp)) return;
        infile.open(fp, ios_base::in);
        string line;
        while (getline(infile, line)) {
            if (!line.empty()) {
                // strip CR
                size_t i = 0;
                for (i = line.size() - 1; line[i] == '\r'; i--)
                    ;
                if (i < line.size() - 1)
                    line.erase(i + 1);
                push_back(line);
            }
        }
    }
    bool matches(string fp)
    {
        for (string& pattern : *this) {
            if (fnmatch(pattern.c_str(), fp.c_str(), FNM_PERIOD) == 0)
                return true;
        }
        return false;
    }
};

bool Narc::Pack(const fs::path& outputPath, const std::vector<fs::path>& inputPaths)
{
    ofstream ofs(outputPath, ios::binary);

    if (!ofs.good()) { return Cleanup(ofs, NarcError::InvalidOutputFile); }

    ofstream ofhs;
    string stem;
    string stem_upper;
    // Pikalax 29 May 2021
    // Output an includable header that enumerates the NARC contents
    if (output_header) {
        fs::path naixfname = outputPath;
        naixfname.replace_extension(".naix");

        ofhs.open(naixfname);
        if (!ofhs.good()) {
            ofhs.close();
            return Cleanup(ofs, NarcError::InvalidOutputFile);
        }

        stem = outputPath.stem().string();
        stem_upper = stem;
        for (char& c : stem_upper) { c = toupper(c); }
        // std::transform(stem_upper.begin(), stem_upper.end(), stem_upper.begin(), ::toupper);

        ofhs << "/*\n"
                " * THIS FILE WAS AUTOMATICALLY\n"
                " *  GENERATED BY tools/knarc\n"
                " *      DO NOT MODIFY!!!\n"
                " */\n"
                "\n"
                "#ifndef NARC_" << stem_upper << "_NAIX_\n"
                "#define NARC_" << stem_upper << "_NAIX_\n"
                "\n"
                "enum {\n";
    }
    vector<FileAllocationTableEntry> fatEntries;
    uint16_t directoryCounter = 1;

    WildcardVector ignore_patterns(knarcignore_path);
    ignore_patterns.push_back(".*ignore");
    ignore_patterns.push_back(".*keep");
    ignore_patterns.push_back(".*order");
    WildcardVector keep_patterns(knarckeep_path);

    int memberNo = 0;
    for (const auto& path : KnarcInputIterator(inputPaths, true, orderInputs)) {
        if (is_directory(path)) {
            ++directoryCounter;
        } else if (keep_patterns.matches(path.filename().string()) || !ignore_patterns.matches(path.filename().string())) {
            if (debug) {
                std::cerr << "DEBUG: adding file " << path << endl;
            }
            if (output_header) {
                string path_stem = path.filename().string();
                std::replace(path_stem.begin(), path_stem.end(), '.', '_');
                ofhs << "\tNARC_" << stem << "_" << path_stem << " = " << (memberNo++) << ",\n";
            }
            fatEntries.push_back(FileAllocationTableEntry{
                .Start = 0x0,
                .End = 0x0,
            });

            if (fatEntries.size() > 1) {
                fatEntries.back().Start = fatEntries.rbegin()[1].End;

                if ((fatEntries.rbegin()[1].End % 4) != 0) {
                    fatEntries.back().Start += 4 - (fatEntries.rbegin()[1].End % 4);
                }
            }

            fatEntries.back().End = fatEntries.back().Start + static_cast<uint32_t>(file_size(path));
        }
    }
    if (output_header) {
        ofhs << "};\n\n#endif //NARC_" << stem_upper << "_NAIX_\n";
        ofhs.close();
    }

    FileAllocationTable fat{
        .Id = 0x46415442,  // BTAF
        .ChunkSize = static_cast<uint32_t>(sizeof(FileAllocationTable) + ((uint32_t)fatEntries.size() * sizeof(FileAllocationTableEntry))),
        .FileCount = static_cast<uint16_t>(fatEntries.size()),
        .Reserved = 0x0
    };

    map<fs::path, string> subTables;
    vector<fs::path> paths;

    directoryCounter = 0;

    for (const auto& path : KnarcInputIterator(inputPaths, true, orderInputs)) {
        if (!subTables.count(path.parent_path()) && (keep_patterns.matches(path.filename().string()) || !ignore_patterns.matches(path.filename().string()))) {
            subTables.insert({ path.parent_path(), "" });
            paths.push_back(path.parent_path());
        }

        if (is_directory(path)) {
            ++directoryCounter;

            subTables[path.parent_path()] += static_cast<uint8_t>(0x80 + path.filename().string().size());
            subTables[path.parent_path()] += path.filename().string();
            subTables[path.parent_path()] += (0xF000 + directoryCounter) & 0xFF;
            subTables[path.parent_path()] += (0xF000 + directoryCounter) >> 8;
        } else if (keep_patterns.matches(path.filename().string()) || !ignore_patterns.matches(path.filename().string())) {
            subTables[path.parent_path()] += static_cast<uint8_t>(path.filename().string().size());
            subTables[path.parent_path()] += path.filename().string();
        }
    }

    for (auto& subTable : subTables) {
        subTable.second += '\0';
    }

    vector<FileNameTableEntry> fntEntries;

    if (!pack_no_fnt) {
        fntEntries.push_back(
            {
                .Offset = static_cast<uint32_t>((directoryCounter + 1) * sizeof(FileNameTableEntry)),
                .FirstFileId = 0x0,
                .Utility = static_cast<uint16_t>(directoryCounter + 1),
            });

        for (uint16_t i = 0; i < directoryCounter; ++i) {
            fntEntries.push_back(
                {
                    .Offset = static_cast<uint32_t>(fntEntries.back().Offset + subTables[paths[i]].size()),
                    .FirstFileId = fntEntries.back().FirstFileId,
                    .Utility = 0x0,
                });

            for (size_t j = 0; j < (subTables[paths[i]].size() - 1); ++j) {
                if (static_cast<uint8_t>(subTables[paths[i]][j]) <= 0x7F) {
                    j += static_cast<uint8_t>(subTables[paths[i]][j]);
                    ++fntEntries.back().FirstFileId;
                } else if (static_cast<uint8_t>(subTables[paths[i]][j]) <= 0xFF) {
                    j += static_cast<uint8_t>(subTables[paths[i]][j]) - 0x80 + 0x2;
                }
            }

            fntEntries.back().Utility = 0xF000 + (find(paths.begin(), paths.end(), paths[i + 1].parent_path()) - paths.begin());
        }
    } else {
        fntEntries.push_back(
            {
                .Offset = 0x4,
                .FirstFileId = 0x0,
                .Utility = 0x1,
            });
    }

    FileNameTable fnt{
        .Id = 0x464E5442,  // BTNF
        .ChunkSize = static_cast<uint32_t>(sizeof(FileNameTable) + (fntEntries.size() * sizeof(FileNameTableEntry)))
    };

    if (!pack_no_fnt) {
        for (const auto& subTable : subTables) {
            fnt.ChunkSize += subTable.second.size();
        }
    }

    if ((fnt.ChunkSize % 4) != 0) {
        fnt.ChunkSize += 4 - (fnt.ChunkSize % 4);
    }

    FileImages fi{
        .Id = 0x46494D47,  // GMIF
        .ChunkSize = static_cast<uint32_t>(sizeof(FileImages) + (fatEntries.empty() ? 0 : fatEntries.back().End))
    };

    if ((fi.ChunkSize % 4) != 0) {
        fi.ChunkSize += 4 - (fi.ChunkSize % 4);
    }

    Header header{
        .Id = 0x4352414E,  // NARC
        .ByteOrderMark = 0xFFFE,
        .Version = 0x100,
        .FileSize = static_cast<uint32_t>(sizeof(Header) + fat.ChunkSize + fnt.ChunkSize + fi.ChunkSize),
        .ChunkSize = sizeof(Header),
        .ChunkCount = 0x3
    };

    ofs.write(reinterpret_cast<char *>(&header), sizeof(Header));
    ofs.write(reinterpret_cast<char *>(&fat), sizeof(FileAllocationTable));

    for (auto& entry : fatEntries) {
        ofs.write(reinterpret_cast<char *>(&entry), sizeof(FileAllocationTableEntry));
    }

    ofs.write(reinterpret_cast<char *>(&fnt), sizeof(FileNameTable));

    for (auto& entry : fntEntries) {
        ofs.write(reinterpret_cast<char *>(&entry), sizeof(FileNameTableEntry));
    }

    if (!pack_no_fnt) {
        for (const auto& path : paths) {
            ofs << subTables[path];
        }
    }

    AlignDword(ofs, 0xFF);

    ofs.write(reinterpret_cast<char *>(&fi), sizeof(FileImages));

    for (const auto& path : KnarcInputIterator(inputPaths, true, orderInputs)) {
        if (is_directory(path)) {
            continue;
        }

        if (!(keep_patterns.matches(path.filename().string()) || !ignore_patterns.matches(path.filename().string()))) {
            continue;
        }

        ifstream ifs(path, ios::binary | ios::ate);

        if (!ifs.good()) {
            ifs.close();

            return Cleanup(ofs, NarcError::InvalidInputFile);
        }

        streampos length = ifs.tellg();
        unique_ptr<char[]> buffer = make_unique<char[]>(static_cast<unsigned int>(length));

        ifs.seekg(0);
        ifs.read(buffer.get(), length);
        ifs.close();

        ofs.write(buffer.get(), length);

        AlignDword(ofs, 0xFF);
    }

    ofs.close();

    return error == NarcError::None ? true : false;
}

bool Narc::Unpack(const fs::path& outputPath, const std::vector<fs::path>& inputPaths)
{
    for (fs::path path : inputPaths) {

        ifstream ifs(path, ios::binary);

        if (!ifs.good()) { return Cleanup(ifs, NarcError::InvalidInputFile); }

        Header header;
        ifs.read(reinterpret_cast<char *>(&header), sizeof(Header));

        if (header.Id != 0x4352414E) { return Cleanup(ifs, NarcError::InvalidHeaderId); }
        if (header.ByteOrderMark != 0xFFFE) { return Cleanup(ifs, NarcError::InvalidByteOrderMark); }
        if ((header.Version != 0x0100) && (header.Version != 0x0000)) { return Cleanup(ifs, NarcError::InvalidVersion); }
        if (header.ChunkSize != 0x10) { return Cleanup(ifs, NarcError::InvalidHeaderSize); }
        if (header.ChunkCount != 0x3) { return Cleanup(ifs, NarcError::InvalidChunkCount); }

        FileAllocationTable fat;
        ifs.read(reinterpret_cast<char *>(&fat), sizeof(FileAllocationTable));

        if (fat.Id != 0x46415442) { return Cleanup(ifs, NarcError::InvalidFileAllocationTableId); }
        if (fat.Reserved != 0x0) { return Cleanup(ifs, NarcError::InvalidFileAllocationTableReserved); }

        unique_ptr<FileAllocationTableEntry[]> fatEntries = make_unique<FileAllocationTableEntry[]>(fat.FileCount);

        for (uint16_t i = 0; i < fat.FileCount; ++i) {
            ifs.read(reinterpret_cast<char *>(&fatEntries.get()[i]), sizeof(FileAllocationTableEntry));
        }

        FileNameTable fnt;
        vector<FileNameTableEntry> FileNameTableEntries;
        ifs.read(reinterpret_cast<char *>(&fnt), sizeof(FileNameTable));

        if (fnt.Id != 0x464E5442) { return Cleanup(ifs, NarcError::InvalidFileNameTableId); }

        vector<FileNameTableEntry> fntEntries;

        do {
            fntEntries.push_back(FileNameTableEntry());

            ifs.read(reinterpret_cast<char *>(&fntEntries.back().Offset), sizeof(uint32_t));
            ifs.read(reinterpret_cast<char *>(&fntEntries.back().FirstFileId), sizeof(uint16_t));
            ifs.read(reinterpret_cast<char *>(&fntEntries.back().Utility), sizeof(uint16_t));
        } while (static_cast<uint32_t>(ifs.tellg()) < (header.ChunkSize + fat.ChunkSize + sizeof(FileNameTable) + fntEntries[0].Offset));

        unique_ptr<string[]> fileNames = make_unique<string[]>(0xFFFF);

        for (size_t i = 0; i < fntEntries.size(); ++i) {
            ifs.seekg(static_cast<uint64_t>(header.ChunkSize) + fat.ChunkSize + sizeof(FileNameTable) + fntEntries[i].Offset);

            uint16_t fileId = 0x0000;

            for (uint8_t length = 0x80; length != 0x00; ifs.read(reinterpret_cast<char *>(&length), sizeof(uint8_t))) {
                if (length <= 0x7F) {
                    for (uint8_t j = 0; j < length; ++j) {
                        uint8_t c;
                        ifs.read(reinterpret_cast<char *>(&c), sizeof(uint8_t));

                        fileNames.get()[fntEntries[i].FirstFileId + fileId] += c;
                    }

                    ++fileId;
                } else if (length == 0x80) {
                    // Reserved
                } else if (length <= 0xFF) {
                    length -= 0x80;
                    string directoryName;

                    for (uint8_t j = 0; j < length; ++j) {
                        uint8_t c;
                        ifs.read(reinterpret_cast<char *>(&c), sizeof(uint8_t));

                        directoryName += c;
                    }

                    uint16_t directoryId;
                    ifs.read(reinterpret_cast<char *>(&directoryId), sizeof(uint16_t));

                    fileNames.get()[directoryId] = directoryName;
                } else {
                    return Cleanup(ifs, NarcError::InvalidFileNameTableEntryId);
                }
            }
        }

        if ((ifs.tellg() % 4) != 0) {
            ifs.seekg(4 - (ifs.tellg() % 4), ios::cur);
        }

        FileImages fi;
        ifs.read(reinterpret_cast<char *>(&fi), sizeof(FileImages));

        if (fi.Id != 0x46494D47) { return Cleanup(ifs, NarcError::InvalidFileImagesId); }

        fs::create_directory(outputPath);
        fs::current_path(outputPath);

        if (fnt.ChunkSize == 0x10) {
            for (uint16_t i = 0; i < fat.FileCount; ++i) {
                ifs.seekg(static_cast<uint64_t>(header.ChunkSize) + fat.ChunkSize + fnt.ChunkSize + 8 + fatEntries.get()[i].Start);

                unique_ptr<char[]> buffer = make_unique<char[]>(fatEntries.get()[i].End - fatEntries.get()[i].Start);
                ifs.read(buffer.get(), fatEntries.get()[i].End - fatEntries.get()[i].Start);

                ostringstream oss;
                oss << path.stem().string() << "_" << setfill('0') << setw(8) << i << ".bin";

                ofstream ofs(oss.str(), ios::binary);

                if (!ofs.good()) {
                    ofs.close();

                    return Cleanup(ifs, NarcError::InvalidOutputFile);
                }

                ofs.write(buffer.get(), fatEntries.get()[i].End - fatEntries.get()[i].Start);
                ofs.close();
            }
        } else {
            fs::path absolutePath = fs::absolute(fs::current_path());

            for (size_t i = 0; i < fntEntries.size(); ++i) {
                fs::current_path(absolutePath);
                stack<string> directories;

                for (uint16_t j = fntEntries[i].Utility; j > 0xF000; j = fntEntries[j - 0xF000].Utility) {
                    directories.push(fileNames.get()[j]);
                }

                for (; !directories.empty(); directories.pop()) {
                    fs::create_directory(directories.top());
                    fs::current_path(directories.top());
                }

                if (fntEntries[i].Utility >= 0xF000) {
                    fs::create_directory(fileNames.get()[0xF000 + i]);
                    fs::current_path(fileNames.get()[0xF000 + i]);
                }

                ifs.seekg(static_cast<uint64_t>(header.ChunkSize) + fat.ChunkSize + sizeof(FileNameTable) + fntEntries[i].Offset);

                uint16_t fileId = 0x0000;

                for (uint8_t length = 0x80; length != 0x00; ifs.read(reinterpret_cast<char *>(&length), sizeof(uint8_t))) {
                    if (length <= 0x7F) {
                        streampos savedPosition = ifs.tellg();

                        ifs.seekg(static_cast<uint64_t>(header.ChunkSize) + fat.ChunkSize + fnt.ChunkSize + 8 + fatEntries.get()[fntEntries[i].FirstFileId + fileId].Start);

                        unique_ptr<char[]> buffer = make_unique<char[]>(fatEntries.get()[fntEntries[i].FirstFileId + fileId].End - fatEntries.get()[fntEntries[i].FirstFileId + fileId].Start);
                        ifs.read(buffer.get(), fatEntries.get()[fntEntries[i].FirstFileId + fileId].End - fatEntries.get()[fntEntries[i].FirstFileId + fileId].Start);

                        ofstream ofs(fileNames.get()[fntEntries[i].FirstFileId + fileId], ios::binary);

                        if (!ofs.good()) {
                            ofs.close();

                            return Cleanup(ifs, NarcError::InvalidOutputFile);
                        }

                        ofs.write(buffer.get(), fatEntries.get()[fntEntries[i].FirstFileId + fileId].End - fatEntries.get()[fntEntries[i].FirstFileId + fileId].Start);
                        ofs.close();

                        ifs.seekg(savedPosition);
                        ifs.seekg(length, ios::cur);

                        ++fileId;
                    } else if (length == 0x80) {
                        // Reserved
                    } else if (length <= 0xFF) {
                        ifs.seekg(static_cast<uint64_t>(length) - 0x80 + 0x2, ios::cur);
                    } else {
                        return Cleanup(ifs, NarcError::InvalidFileNameTableEntryId);
                    }
                }
            }
        }

        ifs.close();
        if (error != NarcError::None) return false;
    }
    return error == NarcError::None ? true : false;
}

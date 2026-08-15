# [nitrosfx](https://github.com/h2o-DS/nitrosfx.git)
Nintendo DS Sound File Converter\
v0.1

Command line tool for unpacking and creating SDAT sound archives for the Nintendo DS.

Support for the following file conversions are currently supported:
| **Nitro Format** | **Standard Formattion** |
|------------------|-------------------------|
|SSEQ|MID|
|SBNK|TXT|
|SWAV,SWAR|WAV|

Support for the following file types are TBD: SSAR, STRM

## Build
`make`

## Usage
`nitrosfx INPUT_PATH OUTPUT_PATH [options...]`

## Acknowledgments

Information on the Nitro sound file types informed by [Nitro Studio 2](https://github.com/Gota7/NitroStudio2)

Tool design inspired by [nitrogfx](https://github.com/red031000/nitrogfx) and [nitroarc](https://codeberg.org/lhearachel/nitroarc)

JSON implementation is from [CJSON](https://github.com/DaveGamble/cJSON) under the MIT License\
(Files `cJSON.c` and `cJSON.h`)

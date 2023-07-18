#!/usr/bin/env python3

import os
import platform
import re

BUILD_DIRECTORY  = os.environ["MESON_BUILD_ROOT"]
SOURCE_DIRECTORY = os.environ["MESON_SOURCE_ROOT"]
COMPILER_RULE_PATTERN = r'rule c_COMPILER[\r\n]+(?:\s\w+ =.+[\r\n]+){4}'


def add_compiler_rules(fileString: str) -> str:
    rule = re.search(COMPILER_RULE_PATTERN, fileString).group(0)
    fileString = fileString.replace(rule, rule + rule.replace('sp2p2', 'sp2').replace('c_COMPILER', 'c_COMPILER_NitroSDK'))
    fileString = re.sub(r'(build lib/external/NitroSDK.+?c_COMPILER\b)', r'\1_NitroSDK', fileString)
    return fileString


def backslash_to_forward_slash(fileString: str) -> str:
    return fileString.replace('\\\\', '/')


def fix_static_libs(fileString: str) -> str:
    '''Replace single quotes around linked libraries with double quotes'''
    return fileString.replace("'lib", '"lib').replace(".a'", '.a"')


def is_wsl_accessing_windows() -> bool:
    return ("microsoft" in platform.uname()[2].lower() and os.path.realpath(os.path.abspath(__file__)).startswith("/mnt/"))


def main():
    BUILD_NINJA         = f'{BUILD_DIRECTORY}/build.ninja'
    COMPILE_COMMANDS    = f'{BUILD_DIRECTORY}/compile_commands.json'

    with open(BUILD_NINJA, 'r') as build_ninja_in, open(COMPILE_COMMANDS, 'r') as compile_commands_in:
        build_ninja_string = build_ninja_in.read()
        compile_commands_string = compile_commands_in.read()
    
    # build.ninja edits
    build_ninja_string = add_compiler_rules(build_ninja_string)
    build_ninja_string = backslash_to_forward_slash(build_ninja_string)
    build_ninja_string = fix_static_libs(build_ninja_string)
    build_ninja_string = nasm_to_asm(build_ninja_string)
    build_ninja_string = silence_static_linking_warnings(build_ninja_string)

    # compile_commands.json edits
    compile_commands_string = backslash_to_forward_slash(compile_commands_string)

    # For WSL accessing Windows, paths to PCH input files must be relative
    if is_wsl_accessing_windows():
        build_ninja_string = relativize_pch_paths(build_ninja_string)
        compile_commands_string = relativize_pch_paths(compile_commands_string)

    with open(BUILD_NINJA, 'w') as build_ninja_out, open(COMPILE_COMMANDS, 'w') as compile_commands_out:
        build_ninja_out.write(build_ninja_string)
        compile_commands_out.write(compile_commands_string)


def nasm_to_asm(fileString: str) -> str:
    return fileString.replace('Nasm', 'ASM')


def rename_objects(fileString: str) -> str:
    '''Remove filepaths from object names'''
    return re.sub(r'(?:src|asm)_(?:overlay\d+_)*(\w+\.[cs]\.[do])', r'\1', fileString)


def relativize_pch_paths(fileString: str) -> str:
    '''Make paths to headers to be precompiled relative (for WSL)'''
    return re.sub(r'c_PCH [\w/]+?lib', r'c_PCH ../lib', fileString)


def silence_static_linking_warnings(fileString: str) -> str:
    return re.sub(r'mwldarm\.exe(")* \$LINK_ARGS', r'mwldarm.exe\1 $LINK_ARGS -w nocmdline', fileString)


if __name__ == '__main__':
    main()
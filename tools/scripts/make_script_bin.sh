#!/usr/bin/env bash

help() {
    echo "Syntax: ./make_script_bin.sh [OPTIONS] FILE..."
    echo "options:"
    echo "  -h | --help         print this help message and exit"
    echo "  -i | --include      append an include directory for the assembler"
    echo "  -a | --assembler    path to the assembler executable"
    echo "  -o | --objcopy      path to the objcopy executable for data extraction"
    echo "  -d | --out-dir      directory for output files (default: current directory)"
    echo "  -m | --mwrap        if set, will treat the assembler as mwrap"
}

INCLUDE_ARGS=()
SCRIPT_FILES=()
AS=""
OBJCOPY="arm-none-eabi-objcopy"
MWRAP=false
OUTDIR="."

while [[ $# -gt 0 ]] ; do
    case $1 in 
        -h|--help)
            help
            exit 0
            ;;
        -i|--include)
            INCLUDE_ARGS+=("-i" "$2")
            shift
            shift
            ;;
        -a|--assembler)
            AS="$2"
            shift
            shift
            ;;
        -o|--objcopy)
            OBJCOPY="$2"
            shift
            shift
            ;;
        -d|--out-dir)
            OUTDIR="$2"
            shift
            shift
            ;;
        -m|--mwrap)
            MWRAP=true
            shift
            ;;
        *)
            SCRIPT_FILES+=("$1")
            shift
            ;;
    esac
done

MWRAP_ARG=""
if $MWRAP ; then
    MWRAP_ARG=" mwasmarm"
fi

for script_file in "${SCRIPT_FILES[@]}" ; do
    script_dir=${script_file%/*}
    script_fname=${script_file##*/}
    script_noext=${script_fname%.*}

    # Target output files
    script_obj="$OUTDIR/$script_noext.o"
    script_bin="$OUTDIR/$script_noext.bin"

    # Convert + clean-up
    $AS$MWRAP_ARG ${INCLUDE_ARGS[@]} -gccinc -o $script_obj $script_file
    $OBJCOPY -O binary --file-alignment 4 $script_obj $script_bin
    rm $script_obj
done

#!/usr/bin/env python3

import pathlib
import sys
import codecs

homedir = pathlib.Path(__file__).resolve().parent.parent.parent
input_file = sys.argv[1]
output_file_c = sys.argv[2]
output_file_h = sys.argv[3]

with open(input_file,'r') as inp:
    mapping = dict()
    for l in inp.readlines()[:3000]:
        if l.startswith("//") or l.strip() == "":
            continue
        splat = l.split("=")
        bin = int(splat[0],base=16)
        char = splat[1].removesuffix("\n").replace("\\","\\\\")
        mapping[bin] = char


charmap_len = max(mapping.keys()) + 1

array_inner = []
for k,v in mapping.items():
    line = f"case {hex(k)}: return \"{v}\";"
    array_inner.append(line)


# language=c
h_file = f"""
#ifndef CHARMAP_H
#define CHARMAP_H
#ifdef LOGGING_ENABLED
#include "charcode.h"
const char* resolve_charmap(charcode_t id);
#endif
#endif
"""
# language=c
c_file = f"""
#ifdef LOGGING_ENABLED
#include "charmap.h"
const char* resolve_charmap(const charcode_t id) {{
    switch(id) {{
        {"\n".join(array_inner)}
        default: return NULL;
    }}
}};
#endif
"""

with open(output_file_h,'w') as oh:
    oh.write(h_file)

with open(output_file_c,'w') as oc:
    oc.write(c_file)
